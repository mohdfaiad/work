
set xact_abort on;
go
begin tran;

/*
 * Trigger-based system to synchronize data with podb
 *
 * This sql was autogenerated by 2013-12-11_00_generate_sync_triggers.pl
 * Do not make direct changes to this sql file; modify the sql generator
 * instead.
 *
 * + Rolled out to Petland Fairless Hills server Fri Dec 20, 2013, at ~11:45 PST.
 * + Rolled back on Petland Fairless Hills server shortly after due to
 *   ARITHABORT issue (see below).
 
Tables:
    Model - IDModel (int)
    Inventory - StoreID (int), ModelID (int)
    Invoice - IDPreSale (int)
    InventoryMov - IDInventoryMov (int)
    Pessoa - IDPessoa (int)
    Store - IDStore (int)
    Barcode - IDBarcode (char(20))    

Design ideas for recording changes:
    A) Add a ChangedOn column to every table that is synced.
       Then when you export changed data, reset ChangedOn to null.
       Unfortunately wont work out of hte box for deletes.
        -- alter table Model add ChangedOn datetimeoffset null;
        -- create index Model_ChangedOn on Model (ChangedOn) where ChangedOn is not null;
    B) Single-table sync
        -- TableKeyNames varchar(max) not null,
        -- If pipe delimited, must escape pipes for keys that might have them.
        -- TableKeyValues varchar(max) not null,    
    C) Multiple-table sync (see code below).
    D) Trigger could write a metadata language, e.g.:
       DELETE FROM <table> where firstPK = 34243 and SecondPK = 'efiwfes'

There are two options for reading the changes table and generating queries:
    A) perl on the podb side (easy)
    B) mssql SP (difficult)

 */



create table SyncBatches (
    IDSyncBatch int not null identity(0,1) primary key,
    SynchronizedOn datetimeoffset not null default current_timestamp
);

-- The special 0-value batch indicates that it has not been exported yet.
-- Since it's so important to the table, I'm including it inline here with
-- the table definition.
set identity_insert SyncBatches on;
insert into SyncBatches (IDSyncBatch, SynchronizedOn)
    values (0, '1010-10-10 10:10:10');
set identity_insert SyncBatches off;

-- tinyint goes from 0 to 255, that should be enough for the tables we want.
create table SyncTables (
    IDSyncTable tinyint primary key,
    TableName varchar(max) not null
);

-- We don't use a "change type" to indicate whether it's 
-- an insert, update, or delete, because one could easily
-- have all three within a single update window, and only
-- the most recent one matters, so we determine which type
-- it is programatically by comparing with podb.
create table SyncChanges (
    IDSyncChange int not null identity(1,1) primary key,
    
    -- Change to enum or table reference?
    IDSyncTable tinyint not null references SyncTables(IDSyncTable),
    
    -- Alternative to separate key table, pipe delimited.
    KeyValues varchar(max) not null,
    
    -- When it was most *recently* changed. Sync will not be fast
    -- enough for seconds to matter, and this only takes 4 bytes,
    -- so we'll go with the small type. 
    ChangedOn smalldatetime not null,
    
    -- 0 means it hasn't been exported yet.
    IDSyncBatch int not null
        references SyncBatches(IDSyncBatch)
        default 0
);

-- This was originally a functional index with "where IDSyncBatch = 0"; however,
-- that resulted in this error: "MERGE failed because the following SET options
-- have incorrect settings: 'ARITHABORT'." since MainRetail turns off the
-- ARITHABORT setting.
create index SyncChanges_TableAndBatch on SyncChanges (IdSyncTable, IDSyncBatch);


go




if object_id(N'SyncBarcode') is not null drop trigger SyncBarcode;
if object_id(N'SyncEstado') is not null drop trigger SyncEstado;
if object_id(N'SyncInventoryMov') is not null drop trigger SyncInventoryMov;
if object_id(N'SyncInvoice') is not null drop trigger SyncInvoice;
if object_id(N'SyncModel') is not null drop trigger SyncModel;
if object_id(N'SyncPessoa') is not null drop trigger SyncPessoa;
if object_id(N'SyncStore') is not null drop trigger SyncStore;
go

delete from SyncTables;
insert into SyncTables values
    (1, 'Barcode'),
    (2, 'Estado'),
    (3, 'InventoryMov'),
    (4, 'Invoice'),
    (5, 'Model'),
    (6, 'Pessoa'),
    (7, 'Store');
go


create trigger SyncBarcode on Barcode for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Barcode'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDBarcode as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDBarcode as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncEstado on Estado for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Estado'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDEstado as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDEstado as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncInventoryMov on InventoryMov for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'InventoryMov'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDInventoryMov as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDInventoryMov as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncInvoice on Invoice for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Invoice'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDPreSale as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDPreSale as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncModel on Model for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Model'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDModel as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDModel as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncPessoa on Pessoa for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Pessoa'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDPessoa as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDPessoa as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

create trigger SyncStore on Store for insert, update, delete as
    set nocount on;
    
    declare @IDSyncTable tinyint = (
        select IDSyncTable from SyncTables where TableName = 'Store'
    );
    
    declare @KeyValueSets table (KeyValues varchar(max));
    -- We don't care whether it was deleted, inserted, or updated.
    -- Union is needed to remove the dupes, and the sort is to help
    -- ensure reproducible operation (processing keys in the same order)
    insert into @KeyValueSets
        select cast(KeyValues as varchar(max))
        from (
            -- Composite pks will join with a pipe.
            select cast(IDStore as varchar(max))
            as KeyValues from deleted
            union
            select cast(IDStore as varchar(max))
            as KeyValues from inserted
        ) keys
        order by KeyValues;

    merge SyncChanges as target
		using (
		    select @IDSyncTable, KeyValues, current_timestamp
            from @KeyValueSets
        )
        as source (
            IDSyncTable, KeyValues,  ChangedOn
        )
		on (
		    target.IDSyncTable = source.IDSyncTable
			and target.KeyValues = source.KeyValues
			and target.IDSyncBatch = 0
	    )
		when matched then
			update set ChangedOn = source.ChangedOn
		when not matched then
			insert (IDSyncTable, KeyValues, ChangedOn)
			values (
				source.IDSyncTable,
				source.KeyValues,
				source.ChangedOn
			);
		--output (IDSyncChange) into @InsertedIDSyncChanges(IDSyncChange);
go

commit tran;
