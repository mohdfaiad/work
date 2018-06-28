unit uDateTimeFunctions;

interface

uses Sysutils, uMsgBox;


Type
   TEnglishShortMonth   = array[1..12] of String;
   TEnglishLongMonth    = array[1..12] of String;
   TEnglishShortDay     = array[1..7] of String;
   TEnglishLongDay      = array[1..7] of String;

   TPortuguesShortMonth = array[1..12] of String;
   TPortuguesLongMonth  = array[1..12] of String;
   TPortuguesShortDay   = array[1..7] of String;
   TPortuguesLongDay    = array[1..7] of String;

   TEspanholShortMonth  = array[1..12] of String;
   TEspanholLongMonth   = array[1..12] of String;
   TEspanholShortDay    = array[1..7] of String;
   TEspanholLongDay     = array[1..7] of String;


Const
  L_ENGLISH    = 1;
  L_PORTUGUESE = 2;
  L_SPANISH    = 3;


  AEnglishShortMonth : TEnglishShortMonth = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
  AEnglishLongMonth  : TEnglishLongMonth  = ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
  AEnglishShortDay   : TEnglishShortDay   = ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
  AEnglishLongDay    : TEnglishLongDay    = ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');


  APortuguesShortMonth : TPortuguesShortMonth = ('Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez');
  APortuguesLongMonth  : TPortuguesLongMonth  = ('Janeiro', 'Fevereiro', 'Mar�o', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');
  APortuguesShortDay   : TPortuguesShortDay   = ('Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'S�b');
  APortuguesLongDay    : TPortuguesLongDay    = ('Domingo', 'Segunda-feira', 'Ter�a-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 's�bado');

  AEspanholShortMonth : TEspanholShortMonth = ('Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic');
  AEspanholLongMonth  : TEspanholLongMonth  = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
  AEspanholShortDay   : TEspanholShortDay   = ('Dom', 'Lun', 'Mar', 'Mi�', 'Jue', 'Vie', 'S�b');
  AEspanholLongDay    : TEspanholLongDay    = ('Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves', 'Viernes', 'S�bado');


// Datas
function MyStrToDate(DateStr : String) : TDateTime;
function TestDate(DateStr : String) : Boolean;
function ShowPeriodo(DataIni, DataFim : String) : String;
function FirstDateMonth : TDateTime;
function LastDateMonth  : TDateTime;
function InicioDoMes(MyDate: TDateTime): TDateTime;
function InicioMes(MyDate: TDateTime): TDateTime;
function FimMes(MyDate: TDateTime): TDateTime;
function InicioSemana(MyDate: TDateTime): TDateTime;
function FimSemana(MyDate: TDateTime): TDateTime;
function GetPrimeiroDomingo(Ano: Integer): TDateTime;
function ValidTwoDates(DataIni, DataFim: String):Boolean;
function WeekDayName(dDate:TDateTime):String;
function DateTimeToMinutes(MyDateTime: TDateTime): Integer;
function AddMinutes(MyDateTime: TDateTime; MyMinutes:Integer): TDateTime;
function AddHours(MyDateTime: TDateTime; MyHour:Integer): TDateTime;
function AddMonth(MyDate: TDateTime): TDateTime;
procedure ChangeLocalSetings(Lang:Integer);
function MyFormatDate(fDate:TDateTime):String;
function MyFormatDateEng(sDate, WinFormat:String):TDateTime;
function MyFormatDateTime(fDate:TDateTime):String;
function BuildDate(Day, Month, Year : String) : TDateTime;
function ConvertDateYearMonthDay(sDate : String) : TDateTime;
function MonthNumber(Month:String):Integer;
function TestMonth(IniDate:TDateTime; EndDate:TDateTime):Boolean;
//function AjustaVencimento(Vencimento: TDateTime): TDateTime;

implementation

uses DateUtils;

function MonthNumber(Month:String):Integer;
var
 i : integer;
begin
    Result := 1;

    for i:=1 to 12 do
      if LongMonthNames[i] = Month then
          begin
          Result := i;
          Break;
          end;
end;

function MyFormatDateTime(fDate : TDateTime):String;
var
  DateFormat : String;
begin
   DateFormat := ShortDateFormat;
   try
     ShortDateFormat := 'mm/dd/yyyy';
     Result := FormatDateTime('mm/dd/yyyy hh:nn:ss', fDate);
   finally
     ShortDateFormat := DateFormat;
   end;
end;

function MyFormatDateEng(sDate, WinFormat:String):TDateTime;
var
  DateFormat : String;
begin
   DateFormat := ShortDateFormat;
   ShortDateFormat := WinFormat;
   Result := StrToDateTime(sDate);
   ShortDateFormat := DateFormat;
   Result := StrToDateTime(FormatDateTime('ddddd', Result));
end;


function MyFormatDate(fDate:TDateTime):String;
var
  DateFormat : String;
begin
   DateFormat := ShortDateFormat;
   ShortDateFormat := 'mm/dd/yyyy';
   Result := FormatDateTime('mm/dd/yyyy', fDate);
   ShortDateFormat := DateFormat;
end;

function TestMonth(IniDate:TDateTime; EndDate:TDateTime):Boolean;
begin
  Result := (MonthsBetween(IniDate, EndDate)=0);
end;

function AddHours(MyDateTime: TDateTime; MyHour:Integer): TDateTime;
begin
 Result := IncHour(MyDateTime, MyHour);
end;

function AddMinutes(MyDateTime: TDateTime; MyMinutes:Integer): TDateTime;
begin
 Result := IncMinute(MyDateTime, MyMinutes);
end;


function DateTimeToMinutes(MyDateTime: TDateTime): Integer;
var Hours, Minutes, Seconds, MSec: Word;
begin
 DecodeTime(MyDateTime, Hours, Minutes, Seconds, MSec);
 if (Seconds > 30) then
 begin
   // round the minutes up by one
   Inc(Minutes);
 end;
 // and calculate the total minutes
 Result := Hours * 60 + Minutes;
end;


procedure ChangeLocalSetings(Lang:Integer);
var
  i : Integer;
begin

   Case Lang of
      L_ENGLISH :
          begin
          for i:=1 to 12 do
             begin
             ShortMonthNames[i] := AEnglishShortMonth[i];
             LongMonthNames[i]  := AEnglishLongMonth[i];
             end;
          for i:=1 to 7 do
             begin
             ShortDayNames[i] := AEnglishShortDay[i];
             LongDayNames[i]  := AEnglishLongDay[i];
             end;
          end;
      L_PORTUGUESE :
          begin
          for i:=1 to 12 do
             begin
             ShortMonthNames[i] := APortuguesShortMonth[i];
             LongMonthNames[i]  := APortuguesLongMonth[i];
             end;
          for i:=1 to 7 do
             begin
             ShortDayNames[i] := APortuguesShortDay[i];
             LongDayNames[i]  := APortuguesLongDay[i];
             end;
          end;
      L_SPANISH :
          begin
          for i:=1 to 12 do
             begin
             ShortMonthNames[i] := AEspanholShortMonth[i];
             LongMonthNames[i]  := AEspanholLongMonth[i];
             end;
          for i:=1 to 7 do
             begin
             ShortDayNames[i] := AEspanholShortDay[i];
             LongDayNames[i]  := AEspanholLongDay[i];
             end;
          end;
   end;

end;

function  MyStrToDate(DateStr : String) : TDateTime;
begin
   try
      Result := StrToDate(DateStr);
   except
      Result := Date;
   end;
end;

function  TestDate(DateStr : String) : Boolean;
begin
  if DateStr = '' then
    begin
     Result := False;
     Exit;
    end;

   try
      StrToDate(DateStr);
      Result := True;
   except
      Result := False;
   end;
end;

function ShowPeriodo(DataIni, DataFim : String) : String;
begin
  Result := 'Per�odo de ' + DataIni + ' a ' + DataFim;
end;

function ConvertDateYearMonthDay(sDate : String) : TDateTime;
var
  sDay, sMonth, sYear : String;
begin
  sYear  := Copy(sDate, 1, 4);
  sMonth := Copy(sDate, 6, 2);
  sDay   := Copy(sDate, 9, 2);

  Result := BuildDate(sDay, sMonth, sYear);
end;

function BuildDate(Day, Month, Year : String) : TDateTime;
begin
  Result := EncodeDate(StrToInt(Year), StrToInt(Month), StrToInt(Day));
end;

function FirstDateMonth : TDateTime;
var
  Day, Month, year : Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function LastDateMonth : TDateTime;
var
  Day, Month, year : Word;
begin
  DecodeDate(Date, Year, Month, Day);
  if Month = 12 then
     Result := EncodeDate(Year+1, 1, 1) - 1
  else
     Result := EncodeDate(Year, Month+1, 1) - 1;
end;

function InicioDoMes(MyDate: TDateTime): TDateTime;
var
  Year, Month, Day: word;
begin
  DecodeDate(MyDate, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;


function InicioMes(MyDate: TDateTime): TDateTime;
var
  Year, Month, Day: word;
begin
  DecodeDate(Date(), Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function AddMonth(MyDate: TDateTime): TDateTime;
var
  Year, Month, Day: word;
begin
  DecodeDate(MyDate, Year, Month, Day);

  if Month = 12 then
    begin
      Month := 1;
      Year := Year + 1;
    end
  else
    Month := Month + 1;

  Result := EncodeDate(Year, Month, 1) -1;

end;

function FimMes(MyDate: TDateTime): TDateTime;
var
  Year, Month, Day: word;
begin
  DecodeDate(Date(), Year, Month, Day);

  if Month = 12 then
    begin
      Month := 1;
      Year := Year + 1;
    end
  else
    Month := Month + 1;

  Result := EncodeDate(Year, Month, 1) -1;

end;

function InicioSemana(MyDate: TDateTime): TDateTime;
begin
  Result := MyDate - DayOfWeek(MyDate);
end;

function FimSemana(MyDate: TDateTime): TDateTime;
begin
  Result := MyDate - DayOfWeek(MyDate) + 6;
end;

function GetPrimeiroDomingo(Ano: Integer): TDateTime;
begin
  Result := EncodeDate(Ano, 1, 1)
               + (8 - DayOfWeek(EncodeDate(Ano, 1, 1)));
end;

function ValidTwoDates(DataIni, DataFim: String):Boolean;
begin
// Validar a date
Result := True;
  if NOT TestDate(DataIni) then
    begin
      MsgBox('Invalid Start Date!', vbOkOnly + vbCritical);
      Result := False;
      Exit;
    end;

  if NOT TestDate(DataFim) then
    begin
      MsgBox('Invalid Final Date!', vbOkOnly + vbCritical);
      Result := False;
      Exit;
    end;

  if StrToDate(DataFim) <  StrToDate(DataIni) then
    begin
      MsgBox('Final Date is smaller than Inicial Date!', vbOkOnly + vbCritical);
      Result := False;
      Exit;
    end;

end;

function WeekDayName(dDate:TDateTime):String;
var
  days: array[1..7] of string;
begin
  days[1] := 'Sunday';
  days[2] := 'Monday';
  days[3] := 'Tuesday';
  days[4] := 'Wednesday';
  days[5] := 'Thursday';
  days[6] := 'Friday';
  days[7] := 'Saturday';

  result  := days[DayOfWeek(dDate)]
end;



end.