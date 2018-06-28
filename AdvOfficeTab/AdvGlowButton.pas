{***************************************************************************}
{ TAdvGlowButton component                                                  }
{ for Delphi & C++Builder                                                   }
{ version 1.7                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright � 2006 - 2007                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

unit AdvGlowButton;

{$R ADVGLOWBUTTONDB.RES}

{$I TMSDEFS.INC}

{$T-}

interface

uses
  Classes, Windows, Forms, Dialogs, Controls, Graphics, Messages, ExtCtrls,
  SysUtils, Math, Menus, DB, ImgList, AdvGDIP, GDIPicture, ActnList,
  AdvHintInfo, AdvStyleIF, ActiveX;

const
  DropDownSectWidth = 13;

  MAJ_VER = 1; // Major version nr.
  MIN_VER = 7; // Minor version nr.
  REL_VER = 1; // Release nr.
  BLD_VER = 0; // Build nr.

  // version history
  // 1.0.5.1 : Fixed issue with width & height initialization
  // 1.0.5.2 : Improved fade painting
  // 1.1.0.0 : New separate dropdown button hot & down effect
  //         : Silver, Blue, Black styles added
  // 1.2.0.0 : New DropDownSplit property added
  // 1.2.0.1 : Fixed issue with ModalResult <> mrNone
  // 1.2.0.2 : Fixed issue with Action handling Checked state
  // 1.2.0.3 : Fixed issue with disabled painting
  // 1.2.0.4 : Fixed issue with key handling
  // 1.3.0.0 : Added new property FocusType
  //         : Added new ShortCutHint, ShortCutHintPos & methods ShowShortCutHint, HideShortCutHint
  // 1.3.0.1 : Fixed issue with font and aaNone
  // 1.3.0.2 : Fixed issue with hot & down border painting
  // 1.3.1.0 : New : exposed OnMouseEnter, OnMouseLeave
  //         : Fixed issue with Down property for bsCheck style
  // 1.3.1.1 : Fixed issue with Down property for buttons with GroupIndex > 0
  // 1.3.1.2 : Improved transitioning from transparent to hot
  // 1.3.1.3 : Fixed issue with actionlinks & bsCheck type
  // 1.3.2.0 : New styler interface added
  // 1.3.3.0 : New public property DroppedDown added
  // 1.3.4.0 : New TAdvCustomGlowButton.ParentFont added
  //         : TButtonLayout blGlyphLeftAdjusted and blGlyphRightAdjusted added
  // 1.3.5.0 : New borderless display possible by setting BorderStyle = bsNone
  // 1.4.0.0 : Improved : seamlessly works with TrueType & non TrueType fonts
  //         : New : Spacing property added
  //         : New : WordWrap property added
  //         : New : AutoSize property added
  //         : New : MarginVert property added
  //         : New : MarginHorz property added
  //         : New : Rounded property added
  //         : New : DropDownDirection property added
  //         : New : HotImages, HotPicture property added
  // 1.4.5.0 : New : PopupMenu property added
  //         : New : OnDrawButton event added
  //         : New : TButtonLayout blGlyphTopAdjusted and blGlyphBottomAdjusted added
  // 1.4.6.0 : New : support for Office 2007 silver style added
  // 1.4.6.1 : Fixed : issue with Win98 resource leak
  // 1.5.0.0 : New : support for Unicode text via public property WideCaption
  //         : Improved : text drawing in aaNone AntiAlias mode
  // 1.5.0.1 : Fix for use with fonts that are not installed
  // 1.6.0.0 : New : support for Trimming added
  // 1.6.0.1 : Fixed : issue with Action images
  // 1.7.0.0 : New : Repeat functionality added with repeat initial delay & frequency setting
  //         : Improved wordwrap drawing  with no text aliasing
  //         : New : support for using \n newline specifier in property inspector
  // 1.7.0.1 : Fixed : drawing issue with Delphi 2007
  // 1.7.1.0 : New : F4 key to open attached dropdown menu



type
  TAdvCustomGlowButton = class;
  TAdvGlowButton = class;

  TGlowState = (gsHover, gsPush, gsNone);
  TAdvButtonStyle = (bsButton, bsCheck);
  TAdvButtonState = (absUp, absDisabled, absDown, absDropDown, absExclusive);
  TButtonLayout = (blGlyphLeft, blGlyphTop, blGlyphRight, blGlyphBottom,
                   blGlyphLeftAdjusted, blGlyphRightAdjusted,
                   blGlyphTopAdjusted, blGlyphBottomAdjusted);

  TDropDownPosition = (dpRight, dpBottom);
  TDropDownDirection = (ddDown, ddRight);
  TGDIPGradient = (ggRadial, ggVertical, ggDiagonalForward, ggDiagonalBackward);

  TFocusType = (ftBorder, ftHot, ftHotBorder, ftNone);

  TShortCutHintPos = (shpLeft, shpTop, shpRight, shpBottom);

  TButtonPosition = (bpStandalone, bpLeft, bpMiddle, bpRight);

  TGlowButtonState = (gsNormal, gsHot, gsDown);

  TButtonSizeState = (bsGlyph, bsLabel, bsLarge);

  TGlowButtonDrawEvent = procedure(Sender: TObject; Canvas: TCanvas; Rect: TRect; State: TGlowButtonState) of object;
  TSetButtonSizeEvent = procedure(Sender: TObject; var W, H: Integer) of object;

  TWinCtrl = class(TWinControl)
  public
    procedure PaintCtrls(DC: HDC; First: TControl);
  end;

{$IFDEF DELPHI6_LVL}
  TAdvGlowButtonActionLink = class(TControlActionLink)
  protected
    FImageIndex: Integer;
    FClient: TAdvCustomGlowButton; //TAdvGlowButton;
    procedure AssignClient(AClient: TObject); override;
    function IsCheckedLinked: Boolean; override;
    function IsGroupIndexLinked: Boolean; override;
    procedure SetGroupIndex(Value: Integer); override;
    procedure SetChecked(Value: Boolean); override;
    function IsImageIndexLinked: Boolean; override;
    procedure SetImageIndex(Value: Integer); override;
  end;
{$ENDIF}

  TShortCutHintWindow = class(THintWindow)
  private
    procedure WMEraseBkGnd(var Message: TWMEraseBkGnd); message WM_ERASEBKGND;
  protected
    procedure Paint; override;
    procedure CreateParams(var Params:TCreateParams);override;
  end;

  TGlowButtonAppearance = class(TPersistent)
  private
    FOnChange: TNotifyEvent;
    FBorderColor: TColor;
    FBorderColorHot: TColor;
    FBorderColorDown: TColor;
    FColor: TColor;
    FColorTo: TColor;
    FColorDown: TColor;
    FColorDownTo: TColor;
    FColorHot: TColor;
    FColorHotTo: TColor;
    FColorCheckedTo: TColor;
    FBorderColorDisabled: TColor;
    FBorderColorChecked: TColor;
    FColorDisabled: TColor;
    FColorDisabledTo: TColor;
    FColorChecked: TColor;
    FColorMirror: TColor;
    FColorMirrorTo: TColor;
    FColorMirrorHot: TColor;
    FColorMirrorHotTo: TColor;
    FColorMirrorDown: TColor;
    FColorMirrorDownTo: TColor;
    FGradientDown: TGDIPGradient;
    FGradientMirror: TGDIPGradient;
    FGradientMirrorHot: TGDIPGradient;
    FGradient: TGDIPGradient;
    FGradientMirrorDown: TGDIPGradient;
    FGradientHot: TGDIPGradient;
    FColorMirrorDisabledTo: TColor;
    FColorMirrorDisabled: TColor;
    FColorMirrorCheckedTo: TColor;
    FColorMirrorChecked: TColor;
    FGradientChecked: TGDIPGradient;
    FGradientDisabled: TGDIPGradient;
    FGradientMirrorChecked: TGDIPGradient;
    FGradientMirrorDisabled: TGDIPGradient;
  protected
    procedure Changed;
  public
    constructor Create;
    procedure Assign(Source: TPersistent); override;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  published
    property BorderColor: TColor read FBorderColor write FBorderColor default clSilver;
    property BorderColorHot: TColor read FBorderColorHot write FBorderColorHot default clBlue;
    property BorderColorDown: TColor read FBorderColorDown write FBorderColorDown default clNavy;
    property BorderColorChecked: TColor read FBorderColorChecked write FBorderColorChecked default clBlue;
    property BorderColorDisabled: TColor read FBorderColorDisabled write FBorderColorDisabled default clGray;
    property Color: TColor read FColor write FColor default clWhite;
    property ColorTo: TColor read FColorTo write FColorTo default clWhite;
    property ColorChecked: TColor read FColorChecked write FColorChecked;
    property ColorCheckedTo: TColor read FColorCheckedTo write FColorCheckedTo;
    property ColorDisabled: TColor read FColorDisabled write FColorDisabled;
    property ColorDisabledTo: TColor read FColorDisabledTo write FColorDisabledTo;
    property ColorDown: TColor read FColorDown write FColorDown;
    property ColorDownTo: TColor read FColorDownTo write FColorDownTo;
    property ColorHot: TColor read FColorHot write FColorHot;
    property ColorHotTo: TColor read FColorHotTo write FColorHotTo;
    property ColorMirror: TColor read FColorMirror write FColorMirror default clSilver;
    property ColorMirrorTo: TColor read FColorMirrorTo write FColorMirrorTo default clWhite;
    property ColorMirrorHot: TColor read FColorMirrorHot write FColorMirrorHot;
    property ColorMirrorHotTo: TColor read FColorMirrorHotTo write FColorMirrorHotTo;
    property ColorMirrorDown: TColor read FColorMirrorDown write FColorMirrorDown;
    property ColorMirrorDownTo: TColor read FColorMirrorDownTo write FColorMirrorDownTo;
    property ColorMirrorChecked: TColor read FColorMirrorChecked write FColorMirrorChecked;
    property ColorMirrorCheckedTo: TColor read FColorMirrorCheckedTo write FColorMirrorCheckedTo;
    property ColorMirrorDisabled: TColor read FColorMirrorDisabled write FColorMirrorDisabled;
    property ColorMirrorDisabledTo: TColor read FColorMirrorDisabledTo write FColorMirrorDisabledTo;
    property Gradient: TGDIPGradient read FGradient write FGradient default ggVertical;
    property GradientMirror: TGDIPGradient read FGradientMirror write FGradientMirror default ggVertical;
    property GradientHot: TGDIPGradient read FGradientHot write FGradientHot default ggRadial;
    property GradientMirrorHot: TGDIPGradient read FGradientMirrorHot write FGradientMirrorHot default ggRadial;
    property GradientDown: TGDIPGradient read FGradientDown write FGradientDown default ggRadial;
    property GradientMirrorDown: TGDIPGradient read FGradientMirrorDown write FGradientMirrorDown default ggRadial;
    property GradientChecked: TGDIPGradient read FGradientChecked write FGradientChecked default ggRadial;
    property GradientMirrorChecked: TGDIPGradient read FGradientMirrorChecked write FGradientMirrorChecked default ggVertical;
    property GradientDisabled: TGDIPGradient read FGradientDisabled write FGradientDisabled default ggRadial;
    property GradientMirrorDisabled: TGDIPGradient read FGradientMirrorDisabled write FGradientMirrorDisabled default ggRadial;
  end;

  TAdvCustomGlowButton = class(TCustomControl, ITMSStyle)
  private
    FHot: Boolean;
    FActive: Boolean;
    FDown: Boolean;
    FLeftDown: Boolean;
    FMouseDown: Boolean;
    FTimer: TTimer;
    FStepHover: Integer;
    FStepPush: Integer;
    FTimeInc: Integer;
    FGlowState: TGlowState;
    FImages: TImageList;
    FImageIndex: TImageIndex;
    FState: TAdvButtonState;
    FMouseInControl: Boolean;
    FMouseEnter: Boolean;
    FDownChecked: Boolean;
    FInitialDown: Boolean;
    FDragging: Boolean;
    FStyle: TAdvButtonStyle;
    FGroupIndex: Integer;
    FAllowAllUp: Boolean;
    FTransparent: Boolean;
    FLayout: TButtonLayout;
    FDropDownButton: Boolean;
    FDropDownSplit: Boolean;
    FDropDownDirection: TDropDownDirection;
    FDropDownMenu: TPopupMenu;
    FOnDropDown: TNotifyEvent;
    FDropDownPosition: TDropDownPosition;
    FAppearance: TGlowButtonAppearance;
    FDisabledImages: TImageList;
    FInternalImages: TImageList;
    FHotImages: TImageList;
    FIPicture: TGDIPPicture;
    FIDisabledPicture: TGDIPPicture;
    FIHotPicture: TGDIPPicture;
    FShowCaption: Boolean;
    FAntiAlias: TAntiAlias;
    FModalResult: TModalResult;
    FDefault: boolean;
    FCancel: Boolean;
    FInButton: Boolean;
    FBorderStyle: TBorderStyle;
    FButtonPosition: TButtonPosition;
    FOfficeHint: TAdvHintInfo;
    FCheckLinked: Boolean;
    FFocusType: TFocusType;
    FShortCutHint: TShortCutHintWindow;
    FShortCutHintPos: TShortCutHintPos;
    FShortCutHintText: string;
    FShowDisabled: Boolean;
    FOnInternalKeyDown: TKeyEvent;
    FOnMouseLeave: TNotifyEvent;
    FOnMouseEnter: TNotifyEvent;
    FDroppedDown: Boolean;
    FOverlappedText: Boolean;
    FSpacing: Integer;
    FAutoSize: Boolean;
    FWordWrap: Boolean;
    FDoAutoSize: Boolean;
    FFirstPaint: Boolean;
    FMarginVert: integer;
    FMarginHorz: integer;
    FRounded: Boolean;
    FOnDrawButton: TGlowButtonDrawEvent;
    FWideCaption: widestring;
    FTrimming: TStringTrimming;
    FRepeatTimer: TTimer;
    FInitRepeatPause: Integer;
    FRepeatPause: Integer;
    FRepeatClick: Boolean;
    FOnInternalClick: TNotifyEvent;
    FButtonSizeState: TButtonSizeState;
    FMaxButtonSizeState: TButtonSizeState;
    FOnSetButtonSize: TSetButtonSizeEvent;
    FOldLayout: TButtonLayout;
    FOldDropDownPosition: TDropDownPosition;
    FMinButtonSizeState: TButtonSizeState;
    FParentForm: TCustomForm;
    procedure SetOfficeHint(const Value: TAdvHintInfo);
    procedure SetButtonPosition(const Value: TButtonPosition);
    procedure SetBorderStyle(const Value: TBorderStyle);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    procedure SetDefault(const Value: boolean);
    procedure SetAntiAlias(const Value: TAntiAlias);
    procedure SetShowCaption(const Value: Boolean);
    procedure SetDisabledPicture(const Value: TGDIPPicture);
    procedure SetHotPicture(const Value: TGDIPPicture);
    procedure SetPicture(const Value: TGDIPPicture);
    procedure SetTransparent(const Value: Boolean);
    procedure UpdateExclusive;
    procedure UpdateTracking;
    procedure SetImageIndex(const Value: TImageIndex);
    procedure SetImages(const Value: TImageList);
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMFocusChanged(var Message: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure WMGetDlgCode(var Message: TMessage); message WM_GETDLGCODE;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
    procedure CMMouseEnter(var Msg: TMessage); message CM_MOUSEENTER;
    procedure WMSetText(var Message: TWMSetText); message WM_SETTEXT;
    procedure WMEraseBkGnd(var Message: TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure WMPaint(var Msg: TWMPaint); message WM_PAINT;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
{$IFNDEF TMSDOTNET}
    procedure CMButtonPressed(var Message: TMessage); message CM_BUTTONPRESSED;
{$ENDIF}
    procedure WMLButtonUp(var Msg:TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMLDblClk(var Msg: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    procedure TimerProc(Sender: TObject);
    procedure OnAppearanceChanged(Sender: TObject);
    procedure SetDown(Value: Boolean);
    procedure SetStyle(const Value: TAdvButtonStyle);
    procedure SetGroupIndex(const Value: Integer);
    procedure SetAllowAllUp(const Value: Boolean);
    procedure SetLayout(const Value: TButtonLayout);
    procedure SetDropDownButton(const Value: Boolean);
    procedure PopupBtnDown;
    procedure SetDropDownPosition(const Value: TDropDownPosition);
    procedure SetDropDownDirection(const Value: TDropDownDirection);
    procedure SetAppearance(const Value: TGlowButtonAppearance);
    procedure SetDisabledImages(const Value: TImageList);
    procedure PictureChanged(Sender: TObject);
    procedure DoDropDown;
    procedure SetSpacing(const Value: integer);
    procedure SetAutoSizeEx(const Value: boolean);
    procedure SetShowDisabled(const Value: boolean);
    procedure SetWordWrap(const Value: boolean);
    procedure SetMarginVert(const Value: integer);
    procedure SetMarginHorz(const Value: integer);
    procedure SetRounded(const Value: boolean);
    procedure SetTrimming(const Value: TStringTrimming);
    procedure PerformResize;
    function IsFontStored: Boolean;
    procedure SetButtonSizeState(const Value: TButtonSizeState);
    procedure SetMaxButtonSizeState(const Value: TButtonSizeState);
    procedure SetMinButtonSizeState(const Value: TButtonSizeState);
//    procedure SetCaption(const Value: string);
//    function GetCaption: string;
  protected
    FDefaultPicDrawing: Boolean;
    FDefaultCaptionDrawing: Boolean;
    FCustomizerCreated: Boolean;
    FCommandID: Integer;
    procedure TimerExpired(Sender: TObject); virtual;    
    procedure DrawGlyphCaption; virtual;
    procedure GetToolImage(bmp: TBitmap); virtual;
    procedure SetDroppedDown(Value: Boolean);
    procedure CreateParams(var Params:TCreateParams); override;
    procedure Paint; override;
    procedure Loaded; override;
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
{$IFDEF DELPHI6_LVL}
    function GetActionLinkClass: TControlActionLinkClass; override;
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
{$ENDIF}
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    property GlowState: TGlowState read FGlowState write FGlowState;
{$IFDEF TMSDOTNET}
    procedure ButtonPressed(Group: Integer; Button: TAdvGlowButton);
{$ENDIF}
    property Down: Boolean read FDownChecked write SetDown default False;
    property Style: TAdvButtonStyle read FStyle write SetStyle default bsButton;
    property State: TAdvButtonState read FState write FState;
    property GroupIndex: Integer read FGroupIndex write SetGroupIndex default 0;
    property AllowAllUp: Boolean read FAllowAllUp write SetAllowAllUp default False;
    property Layout: TButtonLayout read FLayout write SetLayout default blGlyphLeft;
    property DroppedDown: Boolean read FDroppedDown;
    property DropDownButton: Boolean read FDropDownButton write SetDropDownButton default False;
    property DropDownDirection: TDropDownDirection read FDropDownDirection write SetDropDownDirection default ddDown;
    property DropDownPosition: TDropDownPosition read FDropDownPosition write SetDropDownPosition default dpRight;
    property DropDownSplit: Boolean read FDropDownSplit write FDropDownSplit default true;
    property DropDownMenu: TPopupMenu read FDropDownMenu write FDropDownMenu;
    property OnDropDown: TNotifyEvent read FOnDropDown write FOnDropDown;
    function GetVersionNr: Integer; virtual;
    function IsMenuButton: Boolean; virtual;
    procedure InternalClick;
    property CheckLinked: Boolean read FCheckLinked write FCheckLinked;
    property OnInternalKeyDown: TKeyEvent read FOnInternalKeyDown write FOnInternalKeyDown; // Used by AdvToolBar
    property OnInternalClick: TNotifyEvent read FOnInternalClick write FOnInternalClick; // Used by AdvToolBar
    property OverlappedText: boolean read FOverlappedText write FOverlappedText;
    property DoAutoSize: boolean read FDoAutoSize write FDoAutoSize;
    property ButtonSizeState: TButtonSizeState read FButtonSizeState write SetButtonSizeState; // Used by AdvToolBar
    property MaxButtonSizeState: TButtonSizeState read FMaxButtonSizeState write SetMaxButtonSizeState default bsLarge;
    property MinButtonSizeState: TButtonSizeState read FMinButtonSizeState write SetMinButtonSizeState default bsGlyph;
    property OnSetButtonSize: TSetButtonSizeEvent read FOnSetButtonSize write FOnSetButtonSize; // Used by AdvToolBar
    function GetButtonSize(BtnSizeState: TButtonSizeState): TSize;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure CreateWnd; override;
    procedure Click; override;
    property Appearance: TGlowButtonAppearance read FAppearance write SetAppearance;
    procedure ShowShortCutHint;
    procedure HideShortCutHint;
    procedure SetComponentStyle(AStyle: TTMSStyle);
    property WideCaption: widestring read FWideCaption write FWideCaption;
  published
    property Align;
    property Action;
    property Anchors;
    property AntiAlias: TAntiAlias read FAntiAlias write SetAntiAlias default aaClearType;
    property AutoSize: boolean read FAutoSize write SetAutoSizeEx default false;
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsSingle;
    property Cancel: Boolean read FCancel write FCancel default False;
    //property Caption: string read GetCaption write SetCaption;
    property Caption;
    property Constraints;
    property Default: boolean read FDefault write SetDefault default False;
    property Font stored IsFontStored;
    property ImageIndex: TImageIndex read FImageIndex write SetImageIndex default -1;
    property Images: TImageList read FImages write SetImages;
    property DisabledImages: TImageList read FDisabledImages write SetDisabledImages;
    property DisabledPicture: TGDIPPicture read FIDisabledPicture write SetDisabledPicture;
    property DragMode;
    property DragKind;
    property FocusType: TFocusType read FFocusType write FFocusType default ftBorder;
    property HotImages: TImageList read FHotImages write FHotImages;
    property HotPicture: TGDIPPicture read FIHotPicture write SetHotPicture;
    property MarginVert: integer read FMarginVert write SetMarginVert default 2;
    property MarginHorz: integer read FMarginHorz write SetMarginHorz default 2;
    property ModalResult: TModalResult read FModalResult write FModalResult default 0;
    property OfficeHint: TAdvHintInfo read FOfficeHint write SetOfficeHint;
    property ParentFont default true;
    property Picture: TGDIPPicture read FIPicture write SetPicture;
    property PopupMenu;
    property Position: TButtonPosition read FButtonPosition write SetButtonPosition default bpStandalone;
    property InitRepeatPause: Integer read FInitRepeatPause write FInitRepeatPause default 400;
    property RepeatPause: Integer read FRepeatPause write FRepeatPause default 100;
    property RepeatClick: boolean read FRepeatClick write FRepeatClick default false;
    property Rounded: Boolean read FRounded write SetRounded default true;
    property ShortCutHint: string read FShortCutHintText write FShortCutHintText;
    property ShortCutHintPos: TShortCutHintPos read FShortCutHintPos write FShortCutHintPos default shpTop;
    property ShowCaption: Boolean read FShowCaption write SetShowCaption default true;
    property ShowDisabled: Boolean read FShowDisabled write SetShowDisabled default true;
    property Spacing: Integer read FSpacing write SetSpacing default 2;
    property Transparent: Boolean read FTransparent write SetTransparent default false;
    property Trimming: TStringTrimming read FTrimming write SetTrimming default StringTrimmingNone;
    property Version: string read GetVersion write SetVersion stored False;
    property WordWrap: boolean read FWordWrap write SetWordWrap default true;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnStartDock;
    property OnStartDrag;

    property OnMouseDown;
    property OnMouseUp;
    property OnMouseMove;
    property OnKeyDown;
    property OnKeyUp;
    property OnKeyPress;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
    property OnDrawButton: TGlowButtonDrawEvent read FOnDrawButton write FOnDrawButton;
  end;

  TAdvGlowButton = class(TAdvCustomGlowButton)
  private
  protected
  public
    property State;
    property DroppedDown;
  published
    property AllowAllUp;
    property Appearance;
    property Down;
    property Enabled;
    property GroupIndex;
    property Layout;
    property Style;
    property MaxButtonSizeState;
    property MinButtonSizeState;
    property DropDownButton;
    property DropDownPosition;
    property DropDownDirection;
    property DropDownSplit;
    property DropDownMenu;
    property OnDropDown;
  end;

  //---- DB aware version
  TDBGlowButtonType = (dbCustom, dbFirst, dbPrior, dbNext, dbLast, dbInsert, dbAppend,
                   dbDelete, dbEdit, dbPost, dbCancel, dbRefresh);

  TDBBDisableControl = (drBOF, drEOF, drReadonly, drNotEditing, drEditing, drEmpty, drEvent);
  TDBBDisableControls = set of TDBBDisableControl;

  TBeforeActionEvent = procedure (Sender: TObject; var DoAction: Boolean) of object;
  TAfterActionEvent = procedure (Sender: TObject; var ShowException: Boolean) of object;
  TGetConfirmEvent = procedure (Sender: TObject; var Question: string; var Buttons: TMsgDlgButtons; var HelpCtx: Longint) of object;
  TGetEnabledEvent = procedure (Sender: TObject; var Enabled: Boolean) of object;

  TDBGlowButtonDataLink = class(TDataLink)
  private
    FOnEditingChanged: TNotifyEvent;
    FOnDataSetChanged: TNotifyEvent;
    FOnActiveChanged: TNotifyEvent;
  protected
    procedure EditingChanged; override;
    procedure DataSetChanged; override;
    procedure ActiveChanged; override;
  public
    constructor Create;
    property OnEditingChanged: TNotifyEvent
      read FOnEditingChanged write FOnEditingChanged;
    property OnDataSetChanged: TNotifyEvent
      read FOnDataSetChanged write FOnDataSetChanged;
    property OnActiveChanged: TNotifyEvent
      read FOnActiveChanged write FOnActiveChanged;
  end;

  TDBAdvGlowButton = class(TAdvCustomGlowButton)
  private
    FDataLink: TDBGlowButtonDataLink;
    FAutoDisable: Boolean;
    FDisableControls: TDBBDisableControls;
    FOnAfterAction: TAfterActionEvent;
    FOnBeforeAction: TBeforeActionEvent;
    FDBButtonType: TDBGlowButtonType;
    FOnGetConfirm: TGetConfirmEvent;
    FOnGetEnabled: TGetEnabledEvent;
    FOnEnabledChanged: TNotifyEvent;
    FConfirmAction: Boolean;
    FConfirmActionString: String;
    FInProcUpdateEnabled: Boolean;
    procedure CMEnabledChanged(var Message: TMessage);  message CM_ENABLEDCHANGED;
    procedure OnDataSetEvents(Sender: TObject);

    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetDBButtonType(const Value: TDBGlowButtonType);
    procedure SetConfirmActionString(const Value: String);
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure Loaded; override;
    procedure CalcDisableReasons;
    procedure DoBeforeAction(var DoAction: Boolean); virtual;
    procedure DoGetQuestion(var Question: string; var Buttons: TMsgDlgButtons; var HelpCtx: Longint); virtual;
    function DoConfirmAction: Boolean; virtual;
    procedure DoAction; virtual;
    procedure UpdateEnabled; virtual;
    procedure LoadGlyph; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Click; override;
  published
    property Action;
    property Appearance;
    property Layout;
    property Constraints;
    property AutoDisable: Boolean read FAutoDisable write FAutoDisable;
    property ConfirmAction: Boolean read FConfirmAction write FConfirmAction;
    property ConfirmActionString: String read FConfirmActionString write SetConfirmActionString;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DBButtonType: TDBGlowButtonType read FDBButtonType write SetDBButtonType;
    property DisableControl: TDBBDisableControls read FDisableControls write FDisableControls;
    property Enabled;

    property OnBeforeAction: TBeforeActionEvent read FOnBeforeAction write FOnBeforeAction;
    property OnAfterAction: TAfterActionEvent read FOnAfterAction write FOnAfterAction;
    property OnGetConfirm: TGetConfirmEvent read FOnGetConfirm write FOnGetConfirm;
    property OnGetEnabled: TGetEnabledEvent read FOnGetEnabled write FOnGetEnabled;
    property OnEnabledChanged: TNotifyEvent read FOnEnabledChanged write FOnEnabledChanged;
  end;


implementation

uses
  {$IFDEF DELPHI6_LVL}
  VDBConsts
  {$ELSE}
  DBConsts
  {$ENDIF}
  ;

const
  GDIP_NOWRAP = 4096;

type
  TButtonDisplay = (bdNone, bdButton, bdDropDown);

//------------------------------------------------------------------------------

function ColorToARGB(Color: TColor): ARGB;
var
  c: TColor;
begin
  c := ColorToRGB(Color);
  Result := ARGB( $FF000000 or ((DWORD(c) and $FF) shl 16) or ((DWORD(c) and $FF00) or ((DWORD(c) and $ff0000) shr 16)));
end;

//------------------------------------------------------------------------------

procedure DrawGradient(Canvas: TCanvas; FromColor, ToColor: TColor; Steps: Integer; R: TRect; Direction: Boolean);
var
  diffr, startr, endr: Integer;
  diffg, startg, endg: Integer;
  diffb, startb, endb: Integer;
  rstepr, rstepg, rstepb, rstepw: Real;
  i, stepw: Word;

begin
  if Steps = 0 then
    Steps := 1;

  FromColor := ColorToRGB(FromColor);
  ToColor := ColorToRGB(ToColor);

  startr := (FromColor and $0000FF);
  startg := (FromColor and $00FF00) shr 8;
  startb := (FromColor and $FF0000) shr 16;
  endr := (ToColor and $0000FF);
  endg := (ToColor and $00FF00) shr 8;
  endb := (ToColor and $FF0000) shr 16;

  diffr := endr - startr;
  diffg := endg - startg;
  diffb := endb - startb;

  rstepr := diffr / steps;
  rstepg := diffg / steps;
  rstepb := diffb / steps;

  if Direction then
    rstepw := (R.Right - R.Left) / Steps
  else
    rstepw := (R.Bottom - R.Top) / Steps;

  with Canvas do
  begin
    for i := 0 to steps - 1 do
    begin
      endr := startr + Round(rstepr * i);
      endg := startg + Round(rstepg * i);
      endb := startb + Round(rstepb * i);
      stepw := Round(i * rstepw);
      Pen.Color := endr + (endg shl 8) + (endb shl 16);
      Brush.Color := Pen.Color;
      if Direction then
        Rectangle(R.Left + stepw, R.Top, R.Left + stepw + Round(rstepw) + 1, R.Bottom)
      else
        Rectangle(R.Left, R.Top + stepw, R.Right, R.Top + stepw + Round(rstepw) + 1);
    end;
  end;
end;

//------------------------------------------------------------------------------

function BrightnessColor(Col: TColor; Brightness: integer): TColor; overload;
var
  r1,g1,b1: Integer;
begin
  Col := ColorToRGB(Col);
  r1 := GetRValue(Col);
  g1 := GetGValue(Col);
  b1 := GetBValue(Col);

  if r1 = 0 then
    r1 := Max(0,Brightness)
  else
    r1 := Round( Min(100,(100 + Brightness))/100 * r1 );

  if g1 = 0 then
    g1 := Max(0,Brightness)
  else
    g1 := Round( Min(100,(100 + Brightness))/100 * g1 );

  if b1 = 0 then
    b1 := Max(0,Brightness)
  else
    b1 := Round( Min(100,(100 + Brightness))/100 * b1 );

  Result := RGB(r1,g1,b1);
end;

//------------------------------------------------------------------------------

function BrightnessColor(Col: TColor; BR,BG,BB: integer): TColor; overload;
var
  r1,g1,b1: Integer;
begin
  Col := Longint(ColorToRGB(Col));
  r1 := GetRValue(Col);
  g1 := GetGValue(Col);
  b1 := GetBValue(Col);

  if r1 = 0 then
    r1 := Max(0,BR)
  else
    r1 := Round( Min(100,(100 + BR))/100 * r1 );

  if g1 = 0 then
    g1 := Max(0,BG)
  else
    g1 := Round( Min(100,(100 + BG))/100 * g1 );

  if b1 = 0 then
    b1 := Max(0,BB)
  else
    b1 := Round( Min(100,(100 + BB))/100 * b1 );

  Result := RGB(r1,g1,b1);
end;

//------------------------------------------------------------------------------

function BlendColor(Col1,Col2:TColor; BlendFactor:Integer): TColor;
var
  r1,g1,b1: Integer;
  r2,g2,b2: Integer;

begin
  if BlendFactor >= 100 then
  begin
    Result := Col1;
    Exit;
  end;
  if BlendFactor <= 0 then
  begin
    Result := Col2;
    Exit;
  end;

  Col1 := Longint(ColorToRGB(Col1));
  r1 := GetRValue(Col1);
  g1 := GetGValue(Col1);
  b1 := GetBValue(Col1);

  Col2 := Longint(ColorToRGB(Col2));
  r2 := GetRValue(Col2);
  g2 := GetGValue(Col2);
  b2 := GetBValue(Col2);

  r1 := Round( BlendFactor/100 * r1 + (1 - BlendFactor/100) * r2);
  g1 := Round( BlendFactor/100 * g1 + (1 - BlendFactor/100) * g2);
  b1 := Round( BlendFactor/100 * b1 + (1 - BlendFactor/100) * b2);

  Result := RGB(r1,g1,b1);
end;


//------------------------------------------------------------------------------

procedure DrawOpenRoundRectMiddle(graphics: TGPGraphics; PC: TColor; X,Y,Width,Height,Radius: integer;Hot:boolean);
var
  path:TGPGraphicsPath;
  gppen:TGPPen;

begin
  path := TGPGraphicsPath.Create;

  gppen := tgppen.Create(ColorToARGB(PC),1);
  path.AddLine(X-1, Y + height, X + width, Y + height);
  graphics.DrawPath(gppen, path);
  path.Free;

  path := TGPGraphicsPath.Create;
  path.AddLine(X-1, Y, X + width, Y);
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;

  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(BrightnessColor(PC,-5)),1);
  path.AddLine(X + Width, Y, X + width, Y + Height);
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;

  if hot then
  begin
    path := TGPGraphicsPath.Create;
    gppen := tgppen.Create(ColorToARGB(BrightnessColor(PC,-5)),1);
    path.AddLine(X  , Y, X    , Y + Height);
    graphics.DrawPath(gppen, path);
    gppen.Free;
    path.Free;
  end
  else
  begin
    path := TGPGraphicsPath.Create;
    // 3D color effect
    gppen := tgppen.Create(ColorToARGB(BrightnessColor(clwhite,-10)),1);
    path.AddLine(X, Y + 2, X, Y + Height - 2);
    graphics.DrawPath(gppen, path);
    gppen.Free;
    path.Free;
  end;
end;


//------------------------------------------------------------------------------

procedure DrawOpenRoundRectLeft(graphics: TGPGraphics; PC:TColor; X,Y,Width,Height,Radius: integer);
var
  path:TGPGraphicsPath;
  gppen:TGPPen;
begin
  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(PC),1);
  path.AddLine(X + width , Y + height, X + radius, Y + height);
  path.AddArc(X, Y + height - (radius*2), radius*2, radius*2, 90, 90);
  path.AddLine(X, Y + height - (radius*2), X, Y + radius);
  path.AddArc(X, Y, radius*2, radius*2, 180, 90);
  path.AddLine(X + radius, Y, X + width, Y);
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;

  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(BrightnessColor(PC,-5)),1);
  path.AddLine(X + Width , Y, X + width , Y + Height);
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;

end;

procedure DrawOpenRoundRectRight(graphics: TGPGraphics; PC: TColor; X,Y,Width,Height,Radius: integer;Hot: boolean);
var
  path:TGPGraphicsPath;
  gppen:TGPPen;
begin
  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(PC),1);
  path.AddLine(X, Y, X + width - (radius *2), Y);
  path.AddArc(X + width - (radius*2), Y, radius*2, radius*2, 270, 90);
  path.AddLine(X + width, Y + radius, X + width, Y + height - (radius*2));
  path.AddArc(X + width - (radius*2), Y + height - (radius*2), radius*2, radius*2,0,90);
  path.AddLine(X + width , Y + height, X, Y + height);
  graphics.DrawPath(gppen, path);
  gppen.Free;

  path.Free;


  if hot then
  begin
    path := TGPGraphicsPath.Create;
    gppen := tgppen.Create(ColorToARGB(BrightnessColor(PC,-5)),1);
    path.AddLine(X  , Y, X    , Y + Height);
    graphics.DrawPath(gppen, path);
    gppen.Free;
    path.Free;
  end
  else
  begin
    path := TGPGraphicsPath.Create;
    // 3D color effect
    gppen := tgppen.Create(ColorToARGB(BrightnessColor(clwhite,-10)),1);
    path.AddLine(X, Y + 2, X, Y + Height - 2);
    graphics.DrawPath(gppen, path);
    gppen.Free;
    path.Free;
  end;
end;

//------------------------------------------------------------------------------

procedure DrawDottedRoundRect(graphics: TGPGraphics; PC: TColor; X,Y,Width,Height,Radius: integer);
var
  path:TGPGraphicsPath;
  gppen:TGPPen;
begin
  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(PC),1);
  gppen.SetDashStyle(DashStyleDot);
  path.AddLine(X + radius, Y, X + width - (radius*2), Y);
  path.AddArc(X + width - (radius*2), Y, radius*2, radius*2, 270, 90);
  path.AddLine(X + width, Y + radius, X + width, Y + height - (radius*2));
  path.AddArc(X + width - (radius*2), Y + height - (radius*2), radius*2, radius*2,0,90);
  path.AddLine(X + width - (radius*2), Y + height, X + radius, Y + height);
  path.AddArc(X, Y + height - (radius*2), radius*2, radius*2, 90, 90);
  path.AddLine(X, Y + height - (radius*2), X, Y + radius);
  path.AddArc(X, Y, radius*2, radius*2, 180, 90);
  path.CloseFigure;
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;
end;


//------------------------------------------------------------------------------

procedure DrawRoundRect(graphics: TGPGraphics; PC: TColor; X,Y,Width,Height,Radius: integer);
var
  path:TGPGraphicsPath;
  gppen:TGPPen;
begin
  path := TGPGraphicsPath.Create;
  gppen := tgppen.Create(ColorToARGB(PC),1);
  path.AddLine(X + radius, Y, X + width - (radius*2), Y);
  path.AddArc(X + width - (radius*2), Y, radius*2, radius*2, 270, 90);
  path.AddLine(X + width, Y + radius, X + width, Y + height - (radius*2));
  path.AddArc(X + width - (radius*2), Y + height - (radius*2), radius*2, radius*2,0,90);
  path.AddLine(X + width - (radius*2), Y + height, X + radius, Y + height);
  path.AddArc(X, Y + height - (radius*2), radius*2, radius*2, 90, 90);
  path.AddLine(X, Y + height - (radius*2), X, Y + radius);
  path.AddArc(X, Y, radius*2, radius*2, 180, 90);
  path.CloseFigure;
  graphics.DrawPath(gppen, path);
  gppen.Free;
  path.Free;
end;

procedure DrawArrow(Canvas: TCanvas; ArP: TPoint; ArClr, ArShad: TColor; Down:boolean);
begin
  if Down then
  begin
    Canvas.Pen.Color := ArClr;
    Canvas.MoveTo(ArP.X, ArP.Y);
    Canvas.LineTo(ArP.X + 5, ArP.Y);
    Canvas.MoveTo(ArP.X + 1, ArP.Y + 1);
    Canvas.LineTo(ArP.X + 4, ArP.Y + 1);
    Canvas.Pixels[ArP.X + 2, ArP.Y + 2] := ArClr;
    Canvas.Pixels[ArP.X, ArP.Y + 1] := ArShad;
    Canvas.Pixels[ArP.X + 4, ArP.Y + 1] := ArShad;
    Canvas.Pixels[ArP.X + 1, ArP.Y + 2] := ArShad;
    Canvas.Pixels[ArP.X + 3, ArP.Y + 2] := ArShad;
    Canvas.Pixels[ArP.X + 2, ArP.Y + 3] := ArShad;
  end
  else
  begin
    Canvas.Pen.Color := ArClr;
    Canvas.MoveTo(ArP.X, ArP.Y);
    Canvas.LineTo(ArP.X, ArP.Y + 5);
    Canvas.MoveTo(ArP.X + 1, ArP.Y + 1);
    Canvas.LineTo(ArP.X + 1, ArP.Y + 4);
    Canvas.Pixels[ArP.X + 2, ArP.Y + 2] := ArClr;
    Canvas.Pixels[ArP.X + 2, ArP.Y + 1] := ArShad;
    Canvas.Pixels[ArP.X + 1, ArP.Y + 4] := ArShad;
    Canvas.Pixels[ArP.X + 2, ArP.Y + 1] := ArShad;
    Canvas.Pixels[ArP.X + 3, ArP.Y + 2] := ArShad;
    Canvas.Pixels[ArP.X + 3, ArP.Y + 2] := ArShad;
  end;
end;

procedure DrawButtonBackground(Canvas: TCanvas; Graphics: TGPGraphics; R: TRect; CF,CT: TColor; Gradient: TGDIPGradient; Upper: boolean);
var
  path: TGPGraphicsPath;
  pthGrBrush: TGPPathGradientBrush;
  linGrBrush: TGPLinearGradientBrush;
  solGrBrush: TGPSolidBrush;
  
  w,h,w2,h2: Integer;
  colors : array[0..0] of TGPColor;
  count: Integer;

begin
  w := r.Right - r.Left;
  h := r.Bottom - r.Top;

  h2 := h div 2;
  w2 := w div 2;

  {
  // draw background
  if Upper then
    Canvas.Brush.Color := CF
  else
    Canvas.Brush.Color := CT;
  Canvas.FillRect(rect(r.Left , r.Top, r.Right , r.Bottom));
  }

  if Upper then
    solGrBrush := TGPSolidBrush.Create(ColorToARGB(CF))
  else
    solGrBrush := TGPSolidBrush.Create(ColorToARGB(CT));

  Graphics.FillRectangle(solGrBrush, MakeRect(r.Left , r.Top, r.Right , r.Bottom));

  solGrBrush.Free;

  // Create a path that consists of a single ellipse.
  path := TGPGraphicsPath.Create;

  if Upper then        // take borders in account
    path.AddEllipse(r.Left, r.Top - h2 + 2, r.Right , r.Bottom)
  else
    path.AddEllipse(r.Left, r.Top, r.Right , r.Bottom);

  pthGrBrush := nil;
  linGrBrush := nil;

  case Gradient of
  ggRadial: pthGrBrush := TGPPathGradientBrush.Create(path);
  ggVertical: linGrBrush := TGPLinearGradientBrush.Create(MakeRect(r.Left,r.Top,w,h),ColorToARGB(CF),ColorToARGB(CT), LinearGradientModeVertical);
  ggDiagonalForward: linGrBrush := TGPLinearGradientBrush.Create(MakeRect(r.Left,r.Top,w,h),ColorToARGB(CF),ColorToARGB(CT), LinearGradientModeForwardDiagonal);
  ggDiagonalBackward: linGrBrush := TGPLinearGradientBrush.Create(MakeRect(r.Left,r.Top,w,h),ColorToARGB(CF),ColorToARGB(CT), LinearGradientModeBackwardDiagonal);
  end;

  if Gradient = ggRadial then
  begin
    if Upper then
      pthGrBrush.SetCenterPoint(MakePoint(r.Left + w2, r.Top))
    else
      pthGrBrush.SetCenterPoint(MakePoint(r.Left + w2, r.Bottom));

    // Set the color at the center point to blue.
    if Upper then
    begin
      pthGrBrush.SetCenterColor(ColorToARGB(CT));
      colors[0] := ColorToARGB(CF);
    end
    else
    begin
      pthGrBrush.SetCenterColor(ColorToARGB(CF));
      colors[0] := ColorToARGB(CT);
    end;

    count := 1;
    pthGrBrush.SetSurroundColors(@colors, count);
    graphics.FillRectangle(pthGrBrush, r.Left, r.Top, r.Right, r.Bottom);
    pthGrBrush.Free;
  end
  else
  begin
    graphics.FillRectangle(linGrBrush, r.Left, r.Top, r.Right, r.Bottom);
    linGrBrush.Free;
  end;

  path.Free;
end;

//------------------------------------------------------------------------------

procedure DrawStretchPicture(graphics : TGPGraphics; Canvas: TCanvas; R: TRect; Pic: TGDIPPicture);
var
  Img: TGPImage;
  pstm: IStream;
  hGlobal: THandle;
  pcbWrite: Longint;
  ms: TMemoryStream;
  bmp: TBitmap;
begin
  ms := TMemoryStream.Create;
  Pic.SaveToStream(ms);
  hGlobal := GlobalAlloc(GMEM_MOVEABLE, ms.Size);
  if (hGlobal = 0) then
  begin
    ms.Free;
    raise Exception.Create('Could not allocate memory for image');
  end;

  try
    pstm := nil;

    // Create IStream* from global memory
    CreateStreamOnHGlobal(hGlobal, TRUE, pstm);
    pstm.Write(ms.Memory, ms.Size,@pcbWrite);

    Img := TGPImage.Create(pstm);
    if Img.GetFormat = ifBMP then
    begin // use this alternative for easy bitmap auto transparent drawing
      bmp := TBitmap.Create;
      ms.Position := 0;
      bmp.LoadFromStream(ms);
      bmp.TransparentMode := tmAuto;
      bmp.Transparent := true;
      Canvas.StretchDraw(R, bmp);
      bmp.Free;
    end
    else
    begin
      graphics.DrawImageRect(Img, R.Left, R.Top, R.Right - R.Left, R.Bottom - R.Top);
    end;

    Img.Free;
    ms.Free;
  finally
    GlobalFree(hGlobal);
  end;
end;

//------------------------------------------------------------------------------

function DrawVistaButton(Canvas: TCanvas; r: TRect; CFU, CTU, CFB, CTB, PC: TColor;
   GradientU, GradientB: TGDIPGradient; Caption:string; WideCaption: widestring; DrawCaption: Boolean; AFont: TFont;
   Images: TImageList; ImageIndex: Integer; EnabledImage: Boolean; Layout: TButtonLayout;
   DropDownButton: Boolean; DrawDwLine: Boolean; Enabled: Boolean; Focus: Boolean; DropDownPos: TDropDownPosition;
   Picture: TGDIPPicture; ForcePicSize: TSize; AntiAlias: TAntiAlias; DrawPic: Boolean; Glyph: TBitmap; ButtonDisplay: TButtonDisplay; Transparent, Hot: boolean;
   ButtonPosition: TButtonPosition; DropDownSplit, DrawBorder, OverlapText, WordWrap, AutoSize, Rounded, DropDir: Boolean; Spacing: integer;
   Trimming: TStringTrimming): TSize;
var
  graphics : TGPGraphics;
  path: TGPGraphicsPath;
  pthGrBrush: TGPPathGradientBrush;
  linGrBrush: TGPLinearGradientBrush;
  count: Integer;
  w,h,h2,h2d: Integer;
  colors : array[0..0] of TGPColor;
  fontFamily: TGPFontFamily;
  font: TGPFont;
  rectf: TGPRectF;
  stringFormat: TGPStringFormat;
  solidBrush: TGPSolidBrush;
  x1,y1,x2,y2: single;
  fs: integer;
  sizerect: TGPRectF;
  ImgX, ImgY, ImgW, ImgH: Integer;
  BtnR, DwR: TRect;
  BR1,BR2: TRect;
  DR1,DR2: TRect;
  AP: TPoint;
  szRect: TRect;
  tm: TTextMetric;
  ttf: boolean;
  Radius: integer;
  uformat,wwformat: Cardinal;
  tdrect: TRect;
  th, px, py: integer;
begin
  BtnR := R;

  if Rounded then
    Radius := 3
  else
    Radius := 0;  

  if DropDownPos = dpRight then
  begin
    DwR := Rect(BtnR.Right - DropDownSectWidth, BtnR.Top, BtnR.Right, BtnR.Bottom);
    if DropDownButton then
      BtnR.Right := DwR.Left;
  end
  else // DropDownPos = doBottom
  begin
    DwR := Rect(BtnR.Left, BtnR.Bottom - DropDownSectWidth, BtnR.Right, BtnR.Bottom);
    if DropDownButton then
      BtnR.Bottom := DwR.Top;
  end;

  w := r.Right - r.Left;
  h := r.Bottom - r.Top;

  h2 := h div 2;

  // Create GDI+ canvas
  graphics := TGPGraphics.Create(Canvas.Handle);

  if not Transparent then
  begin

    if DropDownButton and (DrawDwLine) and DropDownSplit then
    begin
      if DropDownPos = dpRight then
      begin
        DR1 := Rect(r.Right - 12, r.Top + h2 - 1, r.Right, r.Bottom);
        DR2 := Rect(r.Right - 12, r.Top, r.Right, r.Bottom - h2);
        BR1 := Rect(r.Left, r.Top + h2 - 1, r.Right - 12, r.Bottom);
        BR2 := Rect(r.Left, r.Top, r.Right - 12, r.Bottom - h2);
      end
      else
      begin
        DR1 := Rect(r.Left, r.Bottom - 6, r.Right, r.Bottom);
        DR2 := Rect(r.Left, r.Bottom - 12, r.Right, r.Bottom - 6);

        DR2 := Rect(r.Left, r.Bottom - 12, r.Right, r.Bottom);

        h2d := (r.Bottom - r.Top - 12) div 2;
        BR1 := Rect(r.Left, r.Top + h2d - 1, r.Right, r.Bottom - 12);
        BR2 := Rect(r.Left, r.Top, r.Right, r.Bottom - 12 - h2d);
      end;

      if ButtonDisplay = bdDropDown then
      begin
        DrawButtonBackground(Canvas, Graphics, BR1, CTB, CFB, GradientB, False);
        DrawButtonBackground(Canvas, Graphics, BR2, CFU, CTU, GradientU, True);

        DrawButtonBackground(Canvas, Graphics, DR2, BrightnessColor(CFU,-10), BrightnessColor(CTU,-10), GradientU, True);
        if (DropDownPos = dpRight) then
          DrawButtonBackground(Canvas, Graphics, DR1, BrightnessColor(CTB,-10), BrightnessColor(CFB,-10), GradientB, False);
      end
      else
      begin
        DrawButtonBackground(Canvas, Graphics, BR1, BrightnessColor(CTB,-10), BrightnessColor(CFB,-10), GradientB, False);
        DrawButtonBackground(Canvas, Graphics, BR2, BrightnessColor(CFU,-10), BrightnessColor(CTU,-10), GradientU, True);

        DrawButtonBackground(Canvas, Graphics, DR2, CFU, CTU, ggRadial, True);
        if DropDownPos = dpRight then
          DrawButtonBackground(Canvas, Graphics, DR1, CTB, CFB, GradientB, False);
      end;
    end
    else
    begin
      DrawButtonBackground(Canvas, Graphics, Rect(r.left, r.Top + h2 - 1, r.Right, r.Bottom), CTB, CFB, GradientB, False);
      DrawButtonBackground(Canvas, Graphics, Rect(r.Left, r.Top, r.Right, r.Bottom - h2), CFU, CTU, GradientU, True);
    end;

  end;

  graphics.SetSmoothingMode(SmoothingModeAntiAlias);

  if not Transparent and DrawBorder then
  begin
    case ButtonPosition of
    bpStandalone: DrawRoundRect(Graphics, PC, r.Left, r.Top, r.Right - 1, r.Bottom - 1, Radius);
    bpLeft: DrawOpenRoundRectLeft(Graphics, PC, r.Left, r.Top, r.Right - 1, r.Bottom - 1, Radius);
    bpRight: DrawOpenRoundRectRight(Graphics, PC, r.Left, r.Top, r.Right - 1, r.Bottom - 1, Radius, Hot);
    bpMiddle: DrawOpenRoundRectMiddle(Graphics, PC, r.Left, r.Top, r.Right - 1, r.Bottom - 1, Radius, Hot);
    end;
  end;

  if Focus then // Draw focus line
  begin
    graphics.SetSmoothingMode(SmoothingModeAntiAlias);
    DrawRoundRect(graphics, $E4AD89,r.Left + 1,r.Top + 1, r.Right - 3, r.Bottom - 3, Radius);
    graphics.SetSmoothingMode(SmoothingModeAntiAlias);
    DrawDottedRoundRect(graphics, clGray,r.Left + 2,r.Top + 2, r.Right - 5, r.Bottom - 5, Radius);
  end;

  fontFamily := TGPFontFamily.Create(AFont.Name);

  fs := 0;

  ImgX := 0;
  ImgY := 0;
  ImgH := 0;
  ImgW := 0;

  if (fsBold in AFont.Style) then
    fs := fs + 1;
  if (fsItalic in AFont.Style) then
    fs := fs + 2;
  if (fsUnderline in AFont.Style) then
    fs := fs + 4;

  if Assigned(Glyph) and not Glyph.Empty and (Glyph.Width > 1) and (Glyph.Height > 1) then
  begin
    ImgW := Glyph.Width;
    ImgH := Glyph.Height;

    if (ForcePicSize.CX > 0) and (ForcePicSize.CY > 0) then
    begin
      ImgW := ForcePicSize.CX;
      ImgH := ForcePicSize.CY;
    end;
  end
  else if Assigned(Picture) and not Picture.Empty then
  begin
    Picture.GetImageSizes;
    ImgW := Picture.Width;
    ImgH := Picture.Height;
    if (ForcePicSize.CX > 0) and (ForcePicSize.CY > 0) then
    begin
      ImgW := ForcePicSize.CX;
      ImgH := ForcePicSize.CY;
    end;
  end
  else
  begin
    if (ImageIndex > -1) and Assigned(Images) then
    begin
      ImgW := Images.Width;
      ImgH := Images.Height;
    {end
    else if Assigned(ToolImage) and not (ToolImage.Empty) and (ToolImage.Width > 1) then
    begin
      ImgW := ToolImage.Width;
      ImgH := ToolImage.Height; }
    end;
  end;

  if DrawCaption and ((Caption <> '') or (WideCaption <> '')) then
    if (ImgW > 0) then
      ImgW := ImgW + Spacing;

  Result.cx := ImgW;
  Result.cy := ImgH;

  if (Caption <> '') or (WideCaption <> '') then
  begin
    if pos('\n',caption) > 0 then
    begin
      if (ForcePicSize.cx > 0) and (ForcePicSize.cy > 0) then
        Caption := stringreplace(caption, '\n', ' ', [rfReplaceAll, rfIgnoreCase])
      else
        Caption := stringreplace(caption, '\n', #10#13, [rfReplaceAll, rfIgnoreCase]);
    end;

    Canvas.Font.Name := AFont.Name;

    ttf := false;

    GetTextMetrics(Canvas.Handle, tm);

    if ((tm.tmPitchAndFamily AND TMPF_VECTOR) = TMPF_VECTOR) then
    begin
      if not ((tm.tmPitchAndFamily AND TMPF_DEVICE) = TMPF_DEVICE) then
      begin
        ttf := true;
      end
    end;

    if Screen.Fonts.IndexOf(AFont.Name) = -1 then
      ttf := false;

    font := TGPFont.Create(fontFamily, AFont.Size , fs, UnitPoint);

    w := BtnR.Right - BtnR.Left;
    h := BtnR.Bottom - BtnR.Top;

    x1 := r.Left;
    y1 := r.Top;
    x2 := w;
    y2 := h;

    if AutoSize then
    begin
      x2 := 4096;
      y2 := 4096;
    end;

    rectf := MakeRect(x1,y1,x2,y2);

    if WordWrap then
      stringFormat := TGPStringFormat.Create(0)
    else
      stringFormat := TGPStringFormat.Create(GDIP_NOWRAP);

    if Enabled then
      solidBrush := TGPSolidBrush.Create(ColorToARGB(AFont.Color))
    else
      solidBrush := TGPSolidBrush.Create(ColorToARGB(clGray));

    // Center-justify each line of text.
   // stringFormat.SetAlignment(StringAlignmentCenter);
    case Layout of
      blGlyphLeftAdjusted: stringFormat.SetAlignment(StringAlignmentNear);
      blGlyphRightAdjusted: stringFormat.SetAlignment(StringAlignmentFar);
      else stringFormat.SetAlignment(StringAlignmentCenter);
    end;

    // Center the block of text (top to bottom) in the rectangle.

    case Layout of
      blGlyphTopAdjusted: stringFormat.SetLineAlignment(StringAlignmentNear);
      blGlyphBottomAdjusted: stringFormat.SetLineAlignment(StringAlignmentFar);
      else stringFormat.SetLineAlignment(StringAlignmentCenter);
    end;

    stringFormat.SetHotkeyPrefix(HotkeyPrefixShow);
    stringFormat.SetTrimming(Trimming);

    case AntiAlias of
    aaClearType:graphics.SetTextRenderingHint(TextRenderingHintClearTypeGridFit);
    aaAntiAlias:graphics.SetTextRenderingHint(TextRenderingHintAntiAlias);
    end;

    if (AntiAlias = aaNone) or not ttf then
    begin
      Canvas.Font.Assign(AFont);
      szRect.Left := round(rectf.X);
      szRect.Top := round(rectf.Y);

      szRect.Right := szRect.Left + 2;
      szRect.Bottom := DrawText(Canvas.Handle,PChar(Caption),Length(Caption), szrect, DT_CALCRECT or DT_LEFT or DT_SINGLELINE{ or DT_VCENTER});

      sizeRect.Width := szRect.Right - szRect.Left;
      sizeRect.Height := szRect.Bottom - szRect.Top;

      case Layout of
        blGlyphLeft:
        begin
          sizeRect.X := (w - (szRect.Right - szRect.Left) - ImgW) div 2;
          sizeRect.Y := szRect.Top;
          Result.cx := ImgW + Spacing + round(sizerect.Width);
          Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
        end;
        blGlyphLeftAdjusted:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := ImgW + Spacing + round(sizerect.Width);
          Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
        end;
        blGlyphTop:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := (h - (szRect.Bottom - szRect.Top) - ImgH - 2) div 2;
          Result.cx := Max(ImgW + Spacing, Spacing + round(sizerect.Width));
          Result.cy := ImgH + Spacing + round(sizerect.Height);
        end;
        blGlyphTopAdjusted:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := Max(ImgW + Spacing, Spacing + round(sizerect.Width));
          Result.cy := ImgH + Spacing + round(sizerect.Height);
        end;
        blGlyphRight:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := ImgW + Spacing + round(sizerect.Width);
          Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
        end;
        blGlyphRightAdjusted:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := ImgW + Spacing + round(sizerect.Width);
          Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
        end;
        blGlyphBottom:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := Max(ImgW + Spacing, Spacing + round(sizerect.Width));
          Result.cy := ImgH + Spacing + round(sizerect.Height);
        end;
        blGlyphBottomAdjusted:
        begin
          sizeRect.X := szRect.Left;
          sizeRect.Y := szRect.Top;
          Result.cx := Max(ImgW + Spacing, Spacing + round(sizerect.Width));
          Result.cy := ImgH + Spacing + round(sizerect.Height);
        end;
      end;
      //Result.cx := ImgW + Spacing + round(sizerect.Width);
      //Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
    end
    else
    begin
      if Caption <> '' then
        graphics.MeasureString(Caption, Length(Caption), font, rectf, stringFormat, sizerect)
      else
        graphics.MeasureString(WideCaption, Length(WideCaption), font, rectf, stringFormat, sizerect);

      case Layout of
        blGlyphLeft, blGlyphLeftAdjusted, blGlyphRight, blGlyphRightAdjusted:
        begin
          Result.cx := ImgW + Spacing + round(sizerect.Width);
          Result.cy := Max(ImgH + Spacing, Spacing + round(sizerect.Height));
        end;
        blGlyphTop, blGlyphTopAdjusted, blGlyphBottom, blGlyphBottomAdjusted:
        begin
          Result.cx := Max(ImgW + Spacing, Spacing + round(sizerect.Width));
          Result.cy := ImgH + Spacing + round(sizerect.Height);
        end;
      end;
    end;

    if not AutoSize then
    begin
      if not WordWrap then
      begin
        x2 := w;
        y2 := h;
        rectf := MakeRect(x1,y1,x2,y2);
      end;

//      if (ImgW > 0) then
      begin
        case Layout of
          blGlyphLeft:
          begin
            if (AntiAlias = aaNone) or not ttf then
            begin
              x1 := sizeRect.X + ImgW;
              x2 := w - 2 - ImgW;
              ImgX := round(sizeRect.X);
            end
            else
            begin
              x1 := r.Left + 2 + ImgW;
              x2 := w - 2 - ImgW;
              ImgX := round(sizerect.X - ImgW div 2);
            end;
            if ImgX < 2 then ImgX := 2;
            ImgY := r.Top + Max(0, (h - ImgH) div 2);
          end;
          blGlyphLeftAdjusted:
          begin
            x1 := r.Left + 2 + ImgW;
            x2 := w - 2 - ImgW;

            ImgX := round(sizerect.X - ImgW div 2);
            if ImgX < 2 then ImgX := 2;
            ImgY := r.Top + Max(0, (h - ImgH) div 2);
          end;
          blGlyphTop:
          begin
            if (AntiAlias = aaNone) or not ttf then
            begin
              y1 := r.Top + ImgH;
 //             y1 := sizeRect.Y + ImgH;
              y2 := h - 2 - ImgH;

              ImgX := r.Left + Max(0, (w - ImgW) div 2);
//              ImgY := round(sizeRect.Y);
              ImgY := round(y2 - sizerect.Height);
              ImgY := Max(0, ImgY div 2);
              ImgY := round(y1) - ImgH + ImgY - 4;
            end
            else
            begin
              y1 := r.Top + ImgH;
              y2 := h - 2 - ImgH;
              ImgX := r.Left + Max(0, (w - ImgW) div 2);
              ImgY := round(y2 - sizerect.Height);
              ImgY := Max(0, ImgY div 2);
              ImgY := round(y1) - ImgH + ImgY;
            end;
            if ImgY < 2 then ImgY := 2;
          end;
          blGlyphTopAdjusted:
          begin
            y1 := r.Top{ + 2} + ImgH;
            y2 := h - 2 - ImgH;

            ImgX := r.Left + Max(0, (w - ImgW) div 2);
            if Layout = blGlyphTopAdjusted then
              ImgY := 0 //force to top margin
            else
              ImgY := round(y2 - sizerect.Height);
            ImgY := Max(0, ImgY div 2);
            ImgY := round(y1) - ImgH + ImgY; //round(sizerect.Height) - ImgY - 4;
            if ImgY < 2 then ImgY := 2;
          end;
          blGlyphRight, blGlyphRightAdjusted:
          begin
            x1 := 2;
            x2 := w - 4 - ImgW;
            if Layout = blGlyphRightAdjusted then
              ImgX := w - ImgW - 2
            else
            begin

               ImgX := round(X2 - sizerect.width);
               ImgX := Max(0, ImgX div 2);
               ImgX := ImgX + round(sizerect.width) + 4;
               if ImgX > (w - ImgW) then
                 ImgX := w - ImgW - 2;
            end;
            ImgY := r.Top + Max(0, (h - ImgH) div 2);
          end;
          blGlyphBottom:
          begin
            if (AntiAlias = aaNone) or not ttf then
            begin
              y1 := 2;
              y2 := h - 2 - ImgH;

              ImgX := r.Left + Max(0, (w - ImgW) div 2);
              ImgY := round(y2 - sizerect.Height);
              ImgY := Max(0, ImgY div 2);
              ImgY := round(sizerect.Height + 5) + ImgY;
              if ImgY > (h - ImgH) then ImgY := h - ImgH - 2;
            end
            else
            begin
              y1 := 2;
              y2 := h - 2 - ImgH;

              ImgX := r.Left + Max(0, (w - ImgW) div 2);
              ImgY := round(y2 - sizerect.Height);
              ImgY := Max(0, ImgY div 2);
              ImgY := round(sizerect.Height + 2) + ImgY;
              if ImgY > (h - ImgH) then ImgY := h - ImgH - 2;
            end;
          end;
          blGlyphBottomAdjusted:
          begin
            if (AntiAlias = aaNone) or not ttf then
            begin
              y1 := 2;
              y2 := h - 4 - ImgH;

              ImgX := r.Left + Max(0, (w - ImgW) div 2);
              ImgY := (h - ImgH - 2);
            end
            else
            begin
              y1 := 2;
              y2 := h - 2 - ImgH;

              ImgX := r.Left + Max(0, (w - ImgW) div 2);
              if Layout = blGlyphBottomAdjusted then
                ImgY := h; //force to bottom margin

              ImgY := Max(0, ImgY div 2);
              ImgY := round(sizerect.Height + 2) + ImgY;
              if ImgY > (h - ImgH) then ImgY := h - ImgH - 2;
            end;
          end;
        end;
      end;

      if OverlapText then
        rectf := MakeRect(r.Left, r.Top, r.Right, r.Bottom)
      else
        rectf := MakeRect(x1, y1, x2, y2);

      if DrawPic and OverlapText then
      begin
        if Assigned(Glyph) and not Glyph.Empty and (Glyph.Width > 1) and (Glyph.Height > 1) then
          Canvas.Draw(ImgX, ImgY, Glyph);
      end;

      if DrawCaption then
      begin
        if (AntiAlias = aaNone) or not ttf then
        begin
          szRect.Left := round(rectf.X);
          szRect.Top := round(rectf.Y);
          szRect.Right := szRect.Left + round(rectf.Width);
          szRect.Bottom := szRect.Top + round(rectf.Height);
          Canvas.Brush.Style := bsClear;
          if WordWrap then
            wwformat := 0
          else
            wwformat := DT_SINGLELINE;

          uformat := DT_VCENTER or wwformat;
          case Layout of
            blGlyphLeft:
            begin
              uformat := DT_VCENTER or wwformat or DT_LEFT;
              szrect.Left := szrect.Left;
            end;
            blGlyphLeftAdjusted:
            begin
              uformat := DT_VCENTER or wwformat or DT_LEFT;
              szrect.Left := szrect.Left + 2;
            end;
            blGlyphTop:
            begin
              uformat := DT_TOP or wwformat or DT_CENTER or DT_VCENTER;
            end;
            blGlyphTopAdjusted: uformat := DT_TOP or wwformat or DT_CENTER;
            blGlyphRight: uformat := DT_VCENTER or wwformat or DT_CENTER;
            blGlyphRightAdjusted: uformat := DT_VCENTER or wwformat or DT_RIGHT;
            blGlyphBottom: uformat := DT_VCENTER or wwformat or DT_CENTER;
            blGlyphBottomAdjusted: uformat := DT_BOTTOM or wwformat or DT_CENTER;
          end;

          tdrect := szrect;

          if WordWrap then
          begin
            th := DrawText(Canvas.Handle,PChar(Caption),Length(Caption), szrect, uformat or DT_CALCRECT);

            case Layout of
            blGlyphTopAdjusted:
              begin
                // do nothing
              end;
            blGlyphTop:
              begin
                tdrect.Top := ImgY + ImgH;

                tdrect.Top := tdrect.Top + (tdrect.Bottom - tdrect.Top - th) div 2;

              end;
            blGlyphBottomAdjusted:
              begin
                tdrect.Top := tdrect.Bottom - th;
              end;
            else
              begin
                tdrect.Top := (tdrect.Bottom - tdrect.Top - th) div 2;
              end;
            end;
          end;

          DrawText(Canvas.Handle,PChar(Caption),Length(Caption), tdrect, uformat);
        end
        else
        begin
          if (Caption <> '') then
            graphics.DrawString(Caption, Length(Caption), font, rectf, stringFormat, solidBrush)
          else
            graphics.DrawString(WideCaption, Length(WideCaption), font, rectf, stringFormat, solidBrush);
        end;
      end;
    end;

    stringformat.Free;
    solidBrush.Free;
    font.Free;
  end;

  fontFamily.Free;


  if not AutoSize then
  begin
    if DropDownButton then
    begin
      if DropDownPos = dpRight then
        w := w - 8
      else
        h := h - 8;
    end;

    if DrawPic and not OverlapText then
    begin
      if Assigned(Glyph) and not Glyph.Empty and (Glyph.Width > 1) and (Glyph.Height > 1) then
      begin
        if (ForcePicSize.CX > 0) and (ForcePicSize.CY > 0) then
        begin
          Glyph.Transparent := True;
          if (Caption = '') and (WideCaption = '') then
          begin
            px := r.Left + Max(0, (w - ImgW) div 2);
            py := r.Top + Max(0, (h - ImgH) div 2);
            Canvas.StretchDraw(Rect(px, py, px + ForcePicSize.CX, py + ForcePicSize.CY), Glyph);
          end
          else
            Canvas.StretchDraw(Rect(ImgX, ImgY, ImgX + ForcePicSize.CX, ImgY + ForcePicSize.CY), Glyph);
        end
        else
        begin
          if (Caption = '') and (WideCaption = '') then
            Canvas.Draw(r.Left + Max(0, (w - ImgW) div 2), r.Top + Max(0, (h - ImgH) div 2), Glyph)
          else
            Canvas.Draw(ImgX, ImgY, Glyph);
        end;
      end
      else
        if Assigned(Picture) and not Picture.Empty then
        begin
          if (ForcePicSize.CX > 0) and (ForcePicSize.CY > 0) then
          begin
            if (Caption = '') and (WideCaption = '') then
            begin

              px := r.Left + Max(0, (w - ImgW) div 2);
              py := r.Top + Max(0, (h - ImgH) div 2);
              //Canvas.StretchDraw(Rect(px, py, px + ForcePicSize.CX, py + ForcePicSize.CY), Picture);
              DrawStretchPicture(graphics, Canvas, Rect(px, py, px + ForcePicSize.CX, py + ForcePicSize.CY), Picture);
            end
            else
            begin
              //Canvas.StretchDraw(Rect(ImgX, ImgY, ImgX + ForcePicSize.CX, ImgY + ForcePicSize.CY), Picture);
              DrawStretchPicture(graphics, Canvas, Rect(ImgX, ImgY, ImgX + ForcePicSize.CX, ImgY + ForcePicSize.CY), Picture);
            end;
          end
          else
          begin
            if (Caption = '') and (WideCaption = '') then
              Canvas.Draw(r.Left + Max(0, (w - ImgW) div 2), r.Top + Max(0, (h - ImgH) div 2), Picture)
            else
              Canvas.Draw(ImgX, ImgY, Picture);
          end;
        end
        else
          if (ImageIndex <> -1) and Assigned(Images) then
          begin
            if (Caption = '') and (WideCaption = '') then
              Images.Draw(Canvas, r.Left + Max(0, (w - Images.Width) div 2), r.Top + Max(0, (h - Images.Height) div 2), ImageIndex, EnabledImage)
            else
            begin
              Images.Draw(Canvas, ImgX, ImgY, ImageIndex, EnabledImage);
            end;
            {end
            else if Assigned(ToolImage) and not (ToolImage.Empty) and (ToolImage.Width > 1) then
            begin
              if Caption = '' then
                Canvas.Draw(r.Left + Max(0, (w - ImgW) div 2), r.Top + Max(0, (h - ImgH) div 2), ToolImage)
              else
                Canvas.Draw(ImgX, ImgY, ToolImage); }
          end;
    end;


    Canvas.Brush.Style := bsClear;

    if DropDownButton then
    begin
      if DrawDwLine and DropDownSplit then
      begin
        Canvas.Pen.Color := ColorToRGB(PC);
        if (DropDownPos = dpRight) then
        begin
          Canvas.MoveTo(DwR.Left, DwR.Top);
          Canvas.LineTo(DwR.Left, DwR.Bottom);
        end
        else
        begin
          Canvas.MoveTo(DwR.Left, DwR.Top);
          Canvas.LineTo(DwR.Right, DwR.Top);
        end;
      end;

      AP.X := DwR.Left + ((DwR.Right - DwR.Left - 5) div 2);
      AP.Y := DwR.Top + ((DwR.Bottom - DwR.Top - 3) div 2) + 1;
      
      if not Enabled then
        DrawArrow(Canvas, AP, clGray, clWhite, DropDir)
      else
        DrawArrow(Canvas, AP, clBlack, clWhite, DropDir);
    end;
  end;

  graphics.Free;
end;

//------------------------------------------------------------------------------

{TWinCtrl}

procedure TWinCtrl.PaintCtrls(DC: HDC; First: TControl);
begin
  PaintControls(DC, First);
end;

//------------------------------------------------------------------------------

{ TAdvGlowButton }


//------------------------------------------------------------------------------


procedure TAdvCustomGlowButton.CMMouseEnter(var Msg: TMessage);
begin
  inherited;

  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);

  if (csDesigning in ComponentState) then
    Exit;

  if FMouseEnter then
    Exit;

  FHot := true;

  if FLeftDown then
    FDown := true;

  if not Assigned(FTimer) then
  begin
    FTimer := TTimer.Create(self);
    FTimer.OnTimer := TimerProc;
    FTimer.Interval := GlowSpeed;
    FTimer.Enabled := true;
  end;

  if not FDown and (GlowState <> gsPush) then
  begin
    FTimeInc := 20;
    GlowState := gsHover;
  end;
  Invalidate;

  FMouseInControl := true;
  FMouseEnter := true;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.CMMouseLeave(var Msg: TMessage);
begin
  inherited;

  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);

  if (csDesigning in ComponentState) then
    Exit;

  if not FMouseEnter then
    Exit;

  FMouseEnter := false;
  FMouseInControl := false;

  FHot := false;
  FInButton := false;

  Repaint;

  // down process busy
  if FDown and FMouseDown then
  begin
    FDown := False;
    FTimeInc := -20;
    GlowState := gsHover;
    Invalidate;
    FLeftDown := true;
  end
  else
    //if not (Style = bsCheck) then
    begin
      FDown := false;
      FStepHover := 100;
      FTimeInc := -20;
      GlowState := gsHover;
      Invalidate;
    end;

  if not Assigned(FTimer) then
  begin
    FTimer := TTimer.Create(self);
    FTimer.OnTimer := TimerProc;
    FTimer.Interval := GlowSpeed;
    FTimer.Enabled := true;
  end;

end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.CMTextChanged(var Message: TMessage);
begin
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.CNCommand(var Message: TWMCommand);
begin
  if Message.NotifyCode = BN_CLICKED then
    Click;
end;

//------------------------------------------------------------------------------

constructor TAdvCustomGlowButton.Create(AOwner: TComponent);
begin
  inherited;
  FTimer := nil;
  FImageIndex := -1;
  DoubleBuffered := true;
  FGroupIndex := 0;
  FState := absUp;
  FStyle := bsButton;
  FTransparent := False;
  FLayout := blGlyphLeft;
  FDropDownButton := False;
  FDropDownPosition := dpRight;
  FDropDownDirection := ddDown;
  FDropDownSplit := true;
  FShowCaption := true;
  FFocusType := ftBorder;
  FShortCutHint := nil;
  FShortCutHintPos := shpTop;
  FShowDisabled := true;
  FOverlappedText := false;
  FSpacing := 2;
  FWordWrap := true;
  FFirstPaint := true;
  FMarginVert := 2;
  FMarginHorz := 2;
  FRounded := true;
  FInitRepeatPause := 400;
  FRepeatPause := 100;
  FRepeatClick := false;

  FIPicture := TGDIPPicture.Create;
  FIPicture.OnChange := PictureChanged;

  FIDisabledPicture := TGDIPPicture.Create;
  FIDisabledPicture.OnChange := PictureChanged;
  FIHotPicture := TGDIPPicture.Create;

  ParentFont := true;
  FAppearance := TGlowButtonAppearance.Create;
  FAppearance.OnChange := OnAppearanceChanged;
  FInternalImages := nil;
  FAntiAlias := aaClearType;
  FBorderStyle := bsSingle;

  FOfficeHint := TAdvHintInfo.Create;

  Width := 100;
  Height := 41;

  FDefaultPicDrawing := True;
  FDefaultCaptionDrawing := True;
  FTrimming := StringTrimmingNone;

  FCommandID := -1;

  FButtonSizeState := bsLarge;
  FMaxButtonSizeState := bsLarge;
  FMinButtonSizeState := bsGlyph;
  FOldLayout := Layout;
  FOldDropDownPosition := DropDownPosition;
end;


procedure TAdvCustomGlowButton.CreateParams(var Params: TCreateParams);
begin
  inherited;
//  if FTransparent then
//    Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TAdvCustomGlowButton.CreateWnd;
begin
  inherited;
  FActive := FDefault;
  FParentForm := GetParentForm(Self);
end;

//------------------------------------------------------------------------------

destructor TAdvCustomGlowButton.Destroy;
begin
  if Assigned(FShortCutHint) then
    FShortCutHint.Free;
  FOfficeHint.Free;
  FAppearance.Free;
  FIPicture.Free;
  FIDisabledPicture.Free;
  FIHotPicture.Free;
  inherited;
end;

procedure TAdvCustomGlowButton.DoEnter;
begin
  inherited;
  Invalidate;
end;

procedure TAdvCustomGlowButton.DoExit;
begin
  inherited;
  FDown := false;
  FState := absUp;
  Invalidate;
end;

procedure TAdvCustomGlowButton.ShowShortCutHint;
var
  pt: TPoint;
begin
  if not Assigned(FShortCutHint) then
  begin
      FShortCutHint := TShortCutHintWindow.Create(Self);
      FShortCutHint.Parent := Self;
      FShortCutHint.Visible := False;
  end;

  FShortCutHint.Caption := FShortCutHintText;

  pt := ClientToScreen(Point(0,0));

  case ShortCutHintPos of
  shpLeft:
    begin
      FShortCutHint.Left := pt.X - (FShortCutHint.Width div 2);
      FShortCutHint.Top := pt.Y + (self.Height - FShortCutHint.Height) div 2;
    end;
  shpTop:
    begin
      FShortCutHint.Left := pt.X + (self.Width - FShortCutHint.Width) div 2;
      FShortCutHint.Top := pt.Y - (FShortCutHint.Height div 2);
    end;
  shpRight:
    begin
      FShortCutHint.Left := pt.X + self.Width - (FShortCutHint.Width div 2);
      FShortCutHint.Top := pt.Y + (self.Height - FShortCutHint.Height) div 2;
    end;
  shpBottom:
    begin
      FShortCutHint.Left := pt.X + (self.Width - FShortCutHint.Width) div 2;
      FShortCutHint.Top := pt.Y + self.Height - (FShortCutHint.Height div 2);
    end;
  end;

  FShortCutHint.Visible := true;
end;

procedure TAdvCustomGlowButton.HideShortCutHint;
begin
  if Assigned(FShortCutHint) then
  begin
    FShortCutHint.Visible := false;
    //FShortCutHint.Free;
    //FShortCutHint := nil;
  end;
end;

function TAdvCustomGlowButton.GetVersion: string;
var
  vn: Integer;
begin
  vn := GetVersionNr;
  Result := IntToStr(Hi(Hiword(vn))) + '.' + IntToStr(Lo(Hiword(vn))) +
    '.' + IntToStr(Hi(Loword(vn))) + '.' + IntToStr(Lo(Loword(vn)));
end;

function TAdvCustomGlowButton.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER, REL_VER), MakeWord(MIN_VER, MAJ_VER));
end;

procedure TAdvCustomGlowButton.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key in [VK_SPACE, VK_RETURN]) then
  begin
    FDown := True;
    FState := absDown;
    Repaint;
  end;

  if (Key = VK_F4) then
    DoDropDown;

  if Assigned(FOnInternalKeyDown) then
    FOnInternalKeyDown(Self, Key, Shift);
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.WMGetDlgCode(var Message: TMessage);
begin
  if Assigned(FOnInternalKeyDown) then
    Message.Result := DLGC_WANTARROWS
  else
    inherited;
end;


//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.KeyPress(var Key: Char);
var
  Form: TCustomForm;
begin
  inherited;

  if (Key in [#32, #13]) then
  begin
    Form := GetParentForm(Self);
    if Form <> nil then
      Form.ModalResult := ModalResult;

    if Assigned(OnClick) then
      OnClick(Self);
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited;
  FDown := False;
  FState := absUp;
  Repaint;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.Click;
var
  Form: TCustomForm;
begin
  Form := GetParentForm(Self);
  if Form <> nil then Form.ModalResult := ModalResult;
  if Assigned(FOnInternalClick) then
    FOnInternalClick(Self);
  inherited;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.Loaded;
begin
  inherited;
  if (Down <> FInitialDown) then
    Down := FInitialDown;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.DoDropDown;
var
  pt: TPoint;
begin
  if IsMenuButton or Assigned(FDropDownMenu) then
  begin
    {State := absDropDown;
    Invalidate;
    CheckMenuDropdown; }

    if Assigned(FDropDownMenu) then
    begin
      //FDown := false;
      //FHot := false;
      FState := absDown;
      PopupBtnDown;
      Invalidate;

      if DropDownDirection = ddDown then
        pt := Point(Left, Top + Height)
      else
        pt := Point(Left + Width, Top);

      pt := Parent.ClientToScreen(pt);
      FDropDownMenu.Popup(pt.X,pt.Y);

      FState := absUp;
      Repaint;
    end;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

function TAdvCustomGlowButton.IsFontStored: Boolean;
begin
  Result := not ParentFont;
end;

function TAdvCustomGlowButton.IsMenuButton: Boolean;
begin
  Result := False;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.TimerExpired(Sender: TObject);
begin
  FRepeatTimer.Interval := RepeatPause;
  if (FDown) and MouseCapture then
  begin
    try
      Click;
    except
      FRepeatTimer.Enabled := False;
      raise;
    end;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseUp (Button, Shift, X, Y);
  if FRepeatTimer <> nil then
    FRepeatTimer.Enabled  := False;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  pt:TPoint;
  InBottomDrop,InRightDrop: boolean;

begin
  inherited;

  if Button <> mbLeft then
    Exit;

  if FRepeatClick then
  begin
    if FRepeatTimer = nil then
      FRepeatTimer := TTimer.Create(Self);

    FRepeatTimer.OnTimer := TimerExpired;
    FRepeatTimer.Interval := InitRepeatPause;
    FRepeatTimer.Enabled  := True;
  end;


  FDown := true;
  FMouseDown := true;

  if TabStop then
    SetFocus;

  if not Assigned(FTimer) then
  begin
    FTimer := TTimer.Create(self);
    FTimer.OnTimer := TimerProc;
    FTimer.Interval := GlowSpeed;
    FTimer.Enabled := true;
  end;

  //FStepPush := 0;
  FTimeInc := +20;
  GlowState := gsPush;

  if not DropDownButton and IsMenuButton and false then
  begin
    Invalidate;
    DoDropDown;
  end;

  InBottomDrop := (DropDownPosition = dpRight) and (X > (Width - DropDownSectWidth));
  InRightDrop := (DropDownPosition = dpBottom) and (Y > (Height - DropDownSectWidth));

  if (not FDropDownButton and IsMenuButton) or (FDropDownButton and not ((Style = bsCheck) or (GroupIndex > 0)) and
     (InBottomDrop or InRightDrop or not DropDownSplit)) then
  begin
    FState := absUp;
    FMouseInControl := False;
    // FMouseDownInControl := False;
    PopupBtnDown;

    if Assigned(FDropDownMenu) then
    begin
      FDown := false;
      FHot := false;
      SetDroppedDown(True);
      FMouseEnter := true;
      //FMenuSel := true;
      Repaint;

      if DropDownDirection = ddDown then
        pt := Point(Left, Top + Height)
      else
        pt := Point(Left + Width, Top);

      pt := Parent.ClientToScreen(pt);
      //if Assigned(AdvToolBar) then
        //FDropDownMenu.MenuStyler := AdvToolBar.FCurrentToolBarStyler.CurrentAdvMenuStyler;
      FDropDownMenu.Popup(pt.X,pt.Y);
      SetDroppedDown(False);
      //FMenuSel := false;

      GetCursorPos(pt);
      pt := ScreenToClient(pt);
      if not PtInRect(ClientRect, pt) then
      begin
        FMouseEnter := false;
        FMouseInControl := false;
        FHot := false;
        FInButton := false;
      end;
      Repaint;
    end;

    Invalidate;

    Exit;
  end
  else
  begin
    if Style = bsCheck then
      SetDown(not FDownChecked);
    if not FDownChecked then
    begin
      FState := absDown;
      Invalidate;
    end;

    if (Style = bsCheck) then
    begin
      FState := absDown;
      Repaint;
    end;

    FDragging := True;
  end;

end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.InternalClick;
begin
  if (not FDropDownButton and IsMenuButton) or (FDropDownButton and not ((Style = bsCheck) or (GroupIndex > 0)) and
     (not DropDownSplit)) then
  begin

  end
  else
  begin
    if Style = bsCheck then
      SetDown(not FDownChecked);
    if not FDownChecked then
    begin
      FState := absDown;
      Invalidate;
    end;

    if (Style = bsCheck) then
    begin
      FState := absDown;
      Repaint;
    end;
  end;

  Click;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.WMLDblClk(var Msg: TWMLButtonDblClk);
begin
  inherited;
  Click;
end;

procedure TAdvCustomGlowButton.WMPaint(var Msg: TWMPaint);
begin
  {$IFDEF VER185}
  DoubleBuffered := (FParentForm.Handle = GetActiveWindow);
  {$ENDIF}
  inherited;
end;

//------------------------------------------------------------------------------
procedure TAdvCustomGlowButton.WMLButtonUp(var Msg:TWMLButtonDown);
var
  DoClick: Boolean;

begin
  FTimeInc := -20;
  GlowState := gsPush;

  FMouseDown := false;
  FLeftDown := false;

  if not Assigned(FTimer) then
  begin
    FTimer := TTimer.Create(self);
    FTimer.OnTimer := TimerProc;
    FTimer.Interval := GlowSpeed;
    FTimer.Enabled := true;
  end;

  if not DropDownButton and IsMenuButton then
  begin
    // do nothing
  end
  else
  if FDragging then
  begin
    FDragging := False;
    DoClick := (Msg.XPos >= 0) and (Msg.XPos < ClientWidth) and (Msg.YPos >= 0) and (Msg.YPos <= ClientHeight);

    if FGroupIndex = 0 then
    begin
      // Redraw face in-case mouse is captured
      FState := absUp;
      FMouseInControl := False;
      //FHot := false;

      if (Style = bsCheck) then
      begin
        if Assigned(Action) then
        begin
          inherited;
          if FCheckLinked then
            Exit;
        end;

        // ***** extension for toolbar compactbutton handling
        if not DoClick and Self.Down then
        begin
          Self.Down := not Self.Down;
        end;

        if Style <> bsCheck then
          SetDown(not FDownChecked);

        //FState := absUp;
        Repaint;
      end;
      if DoClick and not (FState in [absExclusive, absDown]) then
        Invalidate;
    end
    else
    begin
      if Assigned(Action) then
        if FCheckLinked then
          Exit;

      if DoClick then
      begin
        SetDown(not FDownChecked);
        if FDownChecked then
          Repaint;
      end
      else
      begin
        if FDownChecked then
          FState := absExclusive;
        Repaint;
      end;
    end;

    //if DoClick then
    //  Click;

    UpdateTracking;
  end;

  inherited;


  if (Style = bsCheck) or (GroupIndex > 0) then
  begin
    //FState := absUp;
    Repaint;
    //FHot := true;
    //FMouseInControl := true;
  end;
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited;
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages := nil;

  if (AOperation = opRemove) and (AComponent = FDisabledImages) then
    FDisabledImages := nil;

  if (AOperation = opRemove) and (AComponent = FHotImages) then
  begin
    FHotImages := nil;
    ShowMessage('remove hot images');
  end;

  if (AOperation = opRemove) and (AComponent = DropdownMenu) then
    DropdownMenu := nil;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.DrawGlyphCaption;
begin

end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.GetToolImage(bmp: TBitmap);
begin

end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDroppedDown(Value: Boolean);
begin
  FDroppedDown := Value;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.Paint;
var
  GradColor: TColor;
  GradColorTo: TColor;
  GradColorMirror: TColor;
  GradColorMirrorTo: TColor;
  PenColor: TColor;
  GradB, GradU: TGDIPGradient;
  DrawDwLn: Boolean;
  ImgList: TImageList;
  Pic: TGDIPPicture;
  EnabledImg: Boolean;
  Rgn1, Rgn2: HRGN;
  R: TRect;
  i, w, h: Integer;
  p: TPoint;
  DCaption: string;
  BD: TButtonDisplay;
  DrawFocused, DrawFocusedHot: boolean;
  bmp: TBitmap;
  sz: TSize;
  gs: TGlowButtonState;
  PicSize: TSize;
begin

  if FTransparent and not FMouseEnter then
  begin
    // TRANSPARENCY CODE

    R := ClientRect;
    rgn1 :=  CreateRectRgn(R.Left, R.Top, R.Right, R.Bottom);
    SelectClipRgn(Canvas.Handle, rgn1);

    i := SaveDC(Canvas.Handle);
    p := ClientOrigin;
    Windows.ScreenToClient(Parent.Handle, p);
    p.x := -p.x;
    p.y := -p.y;
    MoveWindowOrg(Canvas.Handle, p.x, p.y);

    SendMessage(Parent.Handle, WM_ERASEBKGND, Canvas.Handle, 0);
    // transparency ?
    SendMessage(Parent.Handle, WM_PAINT, Canvas.Handle, 0);

    if (Parent is TWinCtrl) then
     (Parent as TWinCtrl).PaintCtrls(Canvas.Handle, nil);

    RestoreDC(Canvas.Handle, i);

    SelectClipRgn(Canvas.Handle, 0);
    DeleteObject(rgn1);
  end;

  if not Enabled then
  begin
    FState := absDisabled;
    FDragging := False;
  end
  else
  begin
    if (FState = absDisabled) then
      if FDownChecked and (GroupIndex <> 0) then
        FState := absExclusive
      else
        FState := absUp;
  end;


  if (Style = bsCheck) and (Down) then
  begin
    FState := absDown;
  end;

  with Appearance do
  begin
    DrawDwLn := False;
    if ((State = absDisabled) or not Enabled) and FShowDisabled then
    begin
      if (1>0) {Transparent} then
      begin
        GradColor := FColorDisabled;
        GradColorTo := FColorDisabledTo;
        GradColorMirror := FColorMirrorDisabled;
        GradColorMirrorTo := FColorMirrorDisabledTo;
        PenColor := BorderColorDisabled;
        GradU := GradientDisabled;
        GradB := GradientMirrorDisabled;
      end
      else
      begin
      end;
    end
    else if ((State = absDown) {or (FHot and (State = absExclusive))}{ or FDown}) and not ((Style = bsCheck)  and (State = absDown)) then
    begin
      GradColor := FColorDown;
      GradColorTo := FColorDownTo;
      GradColorMirror := FColorMirrorDown;
      GradColorMirrorTo := FColorMirrorDownTo;
      PenColor := BorderColorDown;
      GradU := GradientDown;
      GradB := GradientMirrorDown;
      DrawDwLn := True;
    end
    else
    if (State = absExclusive) or ((Style = bsCheck) and (State = absDown)) then
    begin
      GradColor := FColorChecked;
      GradColorTo := FColorCheckedTo;
      GradColorMirror := FColorMirrorChecked;
      GradColorMirrorTo := FColorMirrorCheckedTo;
      PenColor := BorderColorChecked;
      GradU := GradientChecked;
      GradB := GradientMirrorChecked;

      if Assigned(FTimer) and not (not FMouseInControl and ((Style = bsCheck) or ((GroupIndex > 0) and (State <> absDown)))) then
      begin
        GradColor := BlendColor(FColorChecked, FColorDown, FStepPush);
        GradColorTo := BlendColor(FColorCheckedTo, FColorDownTo, FStepPush);
        GradColorMirror := BlendColor(FColorMirrorChecked, FColorMirrorDown, FStepPush);
        GradColorMirrorTo := BlendColor(FColorMirrorCheckedTo, FColorMirrorDownTo, FStepPush);
        //PenColor := BlendColor(BorderColorChecked, BorderColorDown, FStepPush);
      end;

    end
    else //if State = absUp then
    begin
      if FHot then
      begin
        GradColor := FColorHot;
        GradColorTo := FColorHotTo;
        GradColorMirror := FColorMirrorHot;
        GradColorMirrorTo := FColorMirrorHotTo;
        PenColor := BorderColorHot;
        GradU := GradientHot;
        GradB := GradientMirrorHot;
        DrawDwLn := True;
      end
      else // Normal draw
      begin
        if (1>0) {Transparent} then
        begin
          GradColor := FColor;
          GradColorTo := FColorTo;
          GradColorMirror := FColorMirror;
          GradColorMirrorTo := FColorMirrorTo;
          PenColor := BorderColor;
          GradU := Gradient;
          GradB := GradientMirror;
        end
        else
        begin
        end;
      end;
    end;

  {  if FHot then
    begin
      GradColor := FColorHot;
      GradColorTo := FColorHotTo;
      GradColorMirror := FColorMirrorHot;
      GradColorMirrorTo := FColorMirrorHotTo;
      PenColor := BorderColorHot;
      GradU := GradientHot;
      GradB := GradientMirrorHot;
    end
    else
    begin
      GradColor := FColor;
      GradColorTo := FColorTo;
      GradColorMirror := FColorMirror;
      GradColorMirrorTo := FColorMirrorTo;
      PenColor := BorderColor;
      GradU := Gradient;
      GradB := GradientMirror;
    end;

    if FDown then
    begin
      PenColor := BorderColorDown;
      GradU := GradientDown;
      GradB := GradientMirrorDown;
    end;
  }

    if Assigned(FTimer) then
    begin
      if not FDown and not Transparent and not ((State = absExclusive) or ((Style = bsCheck) and (State = absDown)))  then
      begin
        GradColor := BlendColor(FColorHot, FColor, FStepHover);
        GradColorTo := BlendColor(FColorHotTo, FColorTo, FStepHover);
        GradColorMirror := BlendColor(FColorMirrorHot, FColorMirror, FStepHover);
        GradColorMirrorTo := BlendColor(FColorMirrorHotTo, FColorMirrorTo, FStepHover);
        PenColor := BlendColor(BorderColorHot, BorderColor, FStepHover);
      end
      else
      begin
        if (Style = bsCheck) then
        begin
          if FDown then
          begin
            GradColor := BlendColor(FColorDown, FColorChecked, FStepPush);
            GradColorTo := BlendColor(FColorDownTo, FColorCheckedTo, FStepPush);
            GradColorMirror := BlendColor(FColorMirrorDown, FColorMirrorChecked, FStepPush);
            GradColorMirrorTo := BlendColor(FColorMirrorDownTo, FColorMirrorCheckedTo, FStepPush);
            PenColor := BlendColor(BorderColorDown, BorderColorHot, FStepPush);
          end;
        end
        else
          if FDown and (State <> absExclusive) then
          begin
            GradColor := BlendColor(FColorDown, FColorHot, FStepPush);
            GradColorTo := BlendColor(FColorDownTo, FColorHotTo, FStepPush);
            GradColorMirror := BlendColor(FColorMirrorDown, FColorMirrorHot, FStepPush);
            GradColorMirrorTo := BlendColor(FColorMirrorDownTo, FColorMirrorHotTo, FStepPush);
            PenColor := BlendColor(BorderColorDown, BorderColorHot, FStepPush);
          end;

      end;
    end;

    if Enabled or (DisabledImages = nil) then
    begin
      if FHot and (HotImages <> nil) then
        ImgList := HotImages
      else
        ImgList := Images;

      EnabledImg := Enabled;
    end
    else
    begin
      ImgList := DisabledImages;
      EnabledImg := True;
    end;

    if Enabled or DisabledPicture.Empty then
    begin
      if FHot and not HotPicture.Empty then
        Pic := HotPicture
      else
        Pic := Picture;
    end
    else
      Pic := DisabledPicture;


    if (ImgList = nil) then
    begin
      ImgList := FInternalImages;
      EnabledImg := True;
    end;

    if ShowCaption then
      DCaption := Caption
    else
      DCaption := '';

    if (FMouseInControl or FMouseDown) and DropDownButton then
    begin
      if FInButton then
        BD := bdDropDown
      else
        BD := bdButton;
    end
    else
      BD := bdNone;

    // do not use special border color for non standalone buttons in mouse hover/down state or checked buttons
    if ((Position <> bpStandalone) and FMouseDown) or ((Style = bsCheck) and (FState = absDown))  then
    begin
      PenColor := BorderColor;
    end;

    if ((State = absDisabled) or not Enabled) and FShowDisabled then
    begin
      GradColor := FColorDisabled;
      GradColorTo := FColorDisabledTo;
      GradColorMirror := FColorMirrorDisabled;
      GradColorMirrorTo := FColorMirrorDisabledTo;
      PenColor := BorderColorDisabled;
      GradU := GradientDisabled;
      GradB := GradientMirrorDisabled;
    end;

    if ((GetFocus = self.Handle) and (FocusType in [ftHot, ftHotBorder])) and not FDown then
    begin
      GradColor := FColorHot;
      GradColorTo := FColorHotTo;
      GradColorMirror := FColorMirrorHot;
      GradColorMirrorTo := FColorMirrorHotTo;
      PenColor := BorderColorHot;
      GradU := GradientHot;
      GradB := GradientMirrorHot;
      DrawDwLn := True;
    end;

    DrawFocused := (GetFocus = self.Handle) and (FocusType in [ftBorder, ftHotBorder]);
    DrawFocusedHot := (GetFocus = self.Handle) and (FocusType in [ftHot, ftHotBorder]);


    bmp := TBitmap.Create;
    bmp.Width := 1;
    bmp.Height := 1;

    GetToolImage(bmp);

    if Assigned(Action) then
    begin
      begin
        if (Action as TCustomAction).ImageIndex >= 0 then
          if Assigned((Action as TCustomAction).ActionList) then
            if Assigned(TImageList((Action as TCustomAction).ActionList.Images)) then
            begin
              ImgList := TImageList((Action as TCustomAction).ActionList.Images);
              EnabledImg := Enabled;
            end;
      end;
    end;


    PicSize.cx := 0;  // no stretch pic
    PicSize.cy := 0;
    if AutoSize then
    begin
      if (ButtonSizeState in [bsLabel, bsGlyph]) then
      begin
        PicSize.cx := 16;
        PicSize.cy := 16;

        {if (bmp.Width = 1) then
        begin
          bmp.Height := Pic.Height;
          bmp.Width := Pic.Width;
          bmp.Canvas.Draw(0, 0, Pic);
          Pic := nil;
        end;}

        if Assigned(ImgList) and (ImageIndex >= 0) then
        begin
          Pic := nil;
        end;
      end;

      if (ButtonSizeState = bsGlyph) then
      begin
        DCaption := '';
      end;
    end;

    if DoAutoSize or (FFirstPaint and AutoSize) then
    begin
      sz := DrawVistaButton(Canvas,ClientRect,GradColor, GradColorTo, GradColorMirror, GradColorMirrorTo,
        PenColor, GradU, GradB, DCaption, WideCaption, FDefaultCaptionDrawing, Font, ImgList, ImageIndex, EnabledImg, Layout, FDropDownButton {and (Style <> bsCheck)},
        DrawDwLn, Enabled, DrawFocused, DropDownPosition, Pic, PicSize, AntiAlias, FDefaultPicDrawing, bmp, BD, Transparent and not (FMouseEnter or DrawFocusedHot or (State = absDown)), FMouseEnter, Position, DropDownSplit, BorderStyle = bsSingle,
        FOverlappedText, FWordWrap, True, FRounded, FDropDownDirection = ddDown, FSpacing, FTrimming);

      if AutoSize then
      begin
        W := sz.cx + Spacing * 3 + 2 + 2 * MarginHorz;
        H := sz.cy + Spacing * 2 + 2 * MarginVert;

        if DropDownButton then
        begin
          if (DropDownPosition = dpBottom) then
            H := H + DropDownSectWidth
          else
            W := W + DropDownSectWidth;
        end;

        if Assigned(FOnSetButtonSize) then
          FOnSetButtonSize(Self, w, h);

        if (W <> Width) then
          Width := W;
        if (H <> Height) then
          Height := H;
      end;

      FFirstPaint := false;
    end;

    // transparent border pixels


    sz := DrawVistaButton(Canvas,ClientRect,GradColor, GradColorTo, GradColorMirror, GradColorMirrorTo,
      PenColor, GradU, GradB, DCaption, WideCaption, FDefaultCaptionDrawing, Font, ImgList, ImageIndex, EnabledImg, Layout, FDropDownButton {and (Style <> bsCheck)},
      DrawDwLn, Enabled, DrawFocused, DropDownPosition, Pic, PicSize, AntiAlias, FDefaultPicDrawing, bmp, BD, Transparent and not (FMouseEnter or DrawFocusedHot or (State = absDown)), FMouseEnter, Position, DropDownSplit, BorderStyle = bsSingle, FOverlappedText, FWordWrap,
      False, FRounded, FDropDownDirection = ddDown, FSpacing, FTrimming);

    DrawGlyphCaption;

    gs := gsNormal;

    if FMouseEnter then
      gs := gsHot;

    if State = absDown then
      gs := gsDown;

    if Assigned(OnDrawButton) then
      OnDrawButton(Self, Canvas, ClientRect, gs);

    bmp.Free;

    if not Assigned(Parent) then
      Exit;

    if not FTransparent or FMouseEnter then
    begin
      R := ClientRect;

      if Position <> bpMiddle then
      begin
        if (Position in [bpStandalone, bpLeft]) then
        begin
          rgn1 := CreateRectRgn(0, 0, 1, 1);
        end
        else
        begin
          rgn1 := CreateRectRgn(R.Right - 1, 0, R.Right, 1);
        end;

        if (Position in [bpStandalone]) then
        begin
          rgn2 := CreateRectRgn(R.Right - 1, 0, R.Right, 1);
          CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
          DeleteObject(rgn2);
        end;

        if (Position in [bpStandalone, bpLeft]) then
        begin
          rgn2 := CreateRectRgn(0, R.Bottom - 1, 1, R.Bottom);
          CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
          DeleteObject(rgn2);
        end;

        if (Position in [bpStandalone, bpRight]) then
        begin
          rgn2 := CreateRectRgn(R.Right - 1, R.Bottom - 1, R.Right, R.Bottom);
          CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
          DeleteObject(rgn2);
        end;

        SelectClipRgn(Canvas.Handle, rgn1);

        i := SaveDC(Canvas.Handle);
        p := ClientOrigin;
        Windows.ScreenToClient(Parent.Handle, p);
        p.x := -p.x;
        p.y := -p.y;
        MoveWindowOrg(Canvas.Handle, p.x, p.y);

        SendMessage(Parent.Handle, WM_ERASEBKGND, Canvas.Handle, 0);

        // transparency ?
        SendMessage(Parent.Handle, WM_PAINT, Canvas.Handle, 0);
        if (Parent is TWinCtrl) then
          (Parent as TWinCtrl).PaintCtrls(Canvas.Handle, nil);
        RestoreDC(Canvas.Handle, i);

        SelectClipRgn(Canvas.Handle, 0);
        DeleteObject(rgn1);
      end;
    end;

  end;
end;

procedure TAdvCustomGlowButton.PictureChanged(Sender: TObject);
begin
  PerformResize;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDown(Value: Boolean);
begin
  if (csLoading in ComponentState) then
    FInitialDown := Value;

  if (FGroupIndex = 0) and (Style = bsButton) then
    Value := False;

  if (Style = bsCheck) then
  begin
    FDownChecked := Value;
    if FDownChecked then
      FState := absDown
    else
      FState := absUp;
    Repaint;
    Exit;
  end;

  if (Value <> FDownChecked) then
  begin
    if FDownChecked and (not FAllowAllUp) then Exit;
    FDownChecked := Value;
    if Value then
    begin
      if FState = absUp then Invalidate;
      FState := absExclusive
    end
    else
    begin
      FState := absUp;
      Repaint;
    end;
    if Value then UpdateExclusive;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetGroupIndex(const Value: Integer);
begin
  if FGroupIndex <> Value then
  begin
    FGroupIndex := Value;
    UpdateExclusive;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetImageIndex(const Value: TImageIndex);
begin
  FImageIndex := Value;
  PerformResize;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetImages(const Value: TImageList);
begin
  FImages := Value;
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDefault(const Value: boolean);
begin
  FDefault := Value;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDisabledImages(const Value: TImageList);
begin
  FDisabledImages := Value;
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetSpacing(const Value: Integer);
begin
  if FSpacing <> Value then
  begin
    FSpacing := value;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------


procedure TAdvCustomGlowButton.SetWordWrap(const Value: Boolean);
begin
  if FWordWrap <> Value then
  begin
    FWordWrap := Value;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.PerformResize;
begin
  if AutoSize then
  begin
    DoAutoSize := true;
    Repaint;
    DoAutoSize := false;
  end
  else
    Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetRounded(const Value: Boolean);
begin
  if (FRounded <> Value) then
  begin
    FRounded := Value;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetMarginVert(const Value: Integer);
begin
  if FMarginVert <> Value then
  begin
    FMarginVert := Value;
    PerformResize;
  end;
end;

procedure TAdvCustomGlowButton.SetMarginHorz(const Value: Integer);
begin
  if FMarginHorz <> Value then
  begin
    FMarginHorz := Value;
    PerformResize;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetAutoSizeEx(const Value: Boolean);
begin
  if FAutoSize <> Value then
  begin
    FAutoSize := Value;
    PerformResize;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDisabledPicture(const Value: TGDIPPicture);
begin
  FIDisabledPicture.Assign(Value);
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetHotPicture(const Value: TGDIPPicture);
begin
  FIHotPicture.Assign(Value);
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetShowCaption(const Value: Boolean);
begin
  FShowCaption := Value;
  PerformResize;
  Invalidate;
end;

procedure TAdvCustomGlowButton.SetShowDisabled(const Value: boolean);
begin
  FShowDisabled := Value;
  Invalidate;
end;

procedure TAdvCustomGlowButton.SetStyle(const Value: TAdvButtonStyle);
begin
  if FStyle <> Value then
  begin
    FStyle := Value;
    //if (Value = bsCheck) and DropDownButton then
    //  DropDownButton := false;
  end;
end;

procedure TAdvCustomGlowButton.SetVersion(const Value: string);
begin

end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.TimerProc(Sender: TObject);
begin
  case GlowState of
    gsHover:
      begin
        FStepHover := FStepHover + FTimeInc;
        if ((FStepHover > 100) and (FTimeInc > 0))
           or ((FStepHover < 0) and (FTimeInc < 0)) then
        begin
          // outputdebugstring(pchar('hover step:'+inttostr(fstephover)+':'+inttostr(ftimeinc)));
          if FStepHover > 100 then
            FStepHover := 100;

          if FStepHover < 0then
            FStepHover := 0;

          GlowState := gsNone;

          FreeAndNil(FTimer);
        end
        else
          Invalidate;
      end;
    gsPush:
      begin
        // outputdebugstring(pchar('push step:'+inttostr(fsteppush)+':'+inttostr(ftimeinc)));

        FStepPush := FStepPush + FTimeInc;

        if ((FStepPush > 100) and (FTimeInc > 0))
           or ((FStepPush < 0) and (FTimeInc < 0)) then
        begin
          if FStepPush > 100 then
            FStepPush := 100;

          if FStepPush < 0 then
            FStepPush := 0;

          if FTimeInc < 0 then
          begin
            FDown := false;
            FLeftDown := false;
          end;

          GlowState := gsNone;
          FreeAndNil(FTimer);
        end
        else
          Invalidate;
      end;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.WMSetText(var Message: TWMSetText);
begin
  inherited;

  if AutoSize then
  begin
    PerformResize;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.WMEraseBkGnd(var Message: TWMEraseBkGnd);
const
  delta = 3;
{
var
  DC: HDC;
  i: THandle;
//  rgn1,rgn2: THandle;
  p,op: TPoint;
  PDC : HDC;
}

begin
  // SetBkMode(Message.DC, Windows.TRANSPARENT );
  Message.Result := 1;
  Exit;

  if FTransparent then
  begin
    if Assigned(Parent) and not (FMouseDown or FMouseInControl) then
    begin
      {
      rgn1 := CreateRectRgn(0, 0, delta, delta);
      rgn2 := CreateRectRgn(ClientRect.Right-delta, 0, ClientRect.Right, delta);
      CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
      rgn2 := CreateRectRgn(0, ClientRect.Bottom - delta, delta, ClientRect.Bottom);
      CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
      rgn2 := CreateRectRgn(ClientRect.Right - delta, ClientRect.Bottom - delta, ClientRect.Right, ClientRect.Bottom);
      CombineRgn(rgn1, rgn1, rgn2, RGN_OR);
      SelectClipRgn(Message.DC, rgn1);
      }

      (*
      DC := Message.DC;
      i := SaveDC(DC);

      p := ClientOrigin;
      Windows.ScreenToClient(Parent.Handle, p);
      p.x := -p.x;
      p.y := -p.y;

//      MoveWindowOrg(DC, p.x, p.y);

//      SetMapMode(FBmp.Canvas.Handle,mm_isotropic);

      SetMapMode(FBmp.Canvas.Handle,mm_isotropic);
      SetViewPortOrgEx(FBmp.Canvas.Handle,p.x,p.y,@op);

      SendMessage(Parent.Handle, WM_ERASEBKGND, FBmp.Canvas.Handle, 0);
      SendMessage(Parent.Handle, WM_PAINT, FBmp.Canvas.Handle, 0);

//      if (Parent is TWinCtrl) then
//        (Parent as TWinCtrl).PaintCtrls(FBmp.Canvas.Handle, nil);

      SetViewPortOrgEx(FBmp.Canvas.Handle,op.x,op.y,nil);
      RestoreDC(DC, i);

      // SelectClipRgn(Message.DC, 0);
      // DeleteObject(rgn1);
    *)
    end;
  end
  else
    inherited;
end;


//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, Caption) and CanFocus then
    begin
      if IsMenuButton or (Assigned(DropDownMenu)) then
        DoDropDown
      else
        Click;
      Result := 1;
    end
    else
      inherited;
end;

procedure TAdvCustomGlowButton.CMDialogKey(var Message: TCMDialogKey);
begin
  with Message do
    if
      (((CharCode = VK_RETURN) and FActive) or
      ((CharCode = VK_ESCAPE) and FCancel)) and
      (KeyDataToShiftState(Message.KeyData) = []) and CanFocus then
    begin
      //Click;
      InternalClick;
      Result := 1;
    end
    else
      inherited;
end;

procedure TAdvCustomGlowButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TAdvCustomGlowButton.CMFocusChanged(var Message: TCMFocusChanged);
begin
  with Message do
    if Sender is TAdvCustomGlowButton then
      FActive := Sender = Self
    else
      FActive := FDefault;
  //SetButtonStyle(FActive);
  inherited;
end;

//------------------------------------------------------------------------------

{$IFNDEF TMSDOTNET}

procedure TAdvCustomGlowButton.CMButtonPressed(var Message: TMessage);
var
  Sender: TAdvGlowButton;
begin
  if Message.WParam = FGroupIndex then
  begin
    Sender := TAdvGlowButton(Message.LParam);
    if Sender <> Self then
    begin
      if Sender.Down and FDownChecked then
      begin
        FDownChecked := False;
        FState := absUp;
       { if (Action is TCustomAction) then
          TCustomAction(Action).Checked := False; }
        Invalidate;
      end;
      FAllowAllUp := Sender.AllowAllUp;
    end;
  end;
end;
{$ENDIF}

//------------------------------------------------------------------------------

{$IFNDEF TMSDOTNET}

procedure TAdvCustomGlowButton.UpdateExclusive;
var
  Msg: TMessage;
begin
  if (FGroupIndex <> 0) and (Parent <> nil) then
  begin
    Msg.Msg := CM_BUTTONPRESSED;
    Msg.WParam := FGroupIndex;
    Msg.LParam := Longint(Self);
    Msg.Result := 0;
    Parent.Broadcast(Msg);

    {if Assigned(FAdvToolBar) and not (Parent is TAdvCustomToolBar) then
      FAdvToolBar.Broadcast(Msg)
    else if Assigned(AdvToolBar) and (Parent is TAdvCustomToolBar) and Assigned(AdvToolBar.FOptionWindowPanel) then
      FAdvToolBar.FOptionWindowPanel.Broadcast(Msg);  }
  end;
end;
{$ENDIF}

//------------------------------------------------------------------------------

{$IFDEF TMSDOTNET}

procedure TAdvCustomGlowButton.ButtonPressed(Group: Integer; Button: TAdvGlowButton);
begin
  if (Group = FGroupIndex) and (Button <> Self) then
  begin
    if Button.Down and FDownChecked then
    begin
      FDownChecked := False;
      FState := absUp;
      if (Action is TCustomAction) then
        TCustomAction(Action).Checked := False;
      Invalidate;
    end;
    FAllowAllUp := Button.AllowAllUp;
  end;
end;

procedure TAdvCustomGlowButton.UpdateExclusive;
var
  I: Integer;
begin
  if (FGroupIndex <> 0) and (Parent <> nil) then
  begin
    for I := 0 to Parent.ControlCount - 1 do
      if Parent.Controls[I] is TSpeedButton then
        TAdvToolButton(Parent.Controls[I]).ButtonPressed(FGroupIndex, Self);
  end;
end;
{$ENDIF}

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.UpdateTracking;
var
  P: TPoint;
  FNewMouseInControl: boolean;
begin
  //if FFlat then
  begin
    if Enabled then
    begin
      GetCursorPos(P);

      FNewMouseInControl := not (FindDragTarget(P, True) = Self);

      if FNewMouseInControl <> FMouseInControl then
      begin
        FMouseInControl := FNewMouseInControl;
        if FMouseInControl then
          Perform(CM_MOUSELEAVE, 0, 0)
        else
          Perform(CM_MOUSEENTER, 0, 0);
      end;
    end;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetAllowAllUp(const Value: Boolean);
begin
  if FAllowAllUp <> Value then
  begin
    FAllowAllUp := Value;
    UpdateExclusive;
  end;
end;

procedure TAdvCustomGlowButton.SetAntiAlias(const Value: TAntiAlias);
begin
  if (FAntiAlias <> Value) then
  begin
    FAntiAlias := Value;
    Invalidate;
  end;
end;

procedure TAdvCustomGlowButton.SetTrimming(const Value: TStringTrimming);
begin
  if (FTrimming <> Value) then
  begin
    FTrimming := Value;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  NewState: TAdvButtonState;
  FOldInButton: Boolean;
begin
  inherited;

  if (csDesigning in ComponentState) then
    Exit;

  {$IFNDEF DELPHI2006_LVL}
  UpdateTracking;
  {$ENDIF}

  FOldInButton := FInButton;
  FInButton := false;

  if DropDownButton then
  begin
    case DropDownPosition of
    dpRight: if X > Width - 12 then FInButton := true;
    dpBottom: if Y > Height - 12 then FInButton := true;
    end;
  end;

  if (FInButton <> FOldInButton) then
  begin
    Invalidate;
  end;

  if FDragging then
  begin
    if (not FDownChecked) then NewState := absUp
    else NewState := absExclusive;

    if (X >= 0) and (X < ClientWidth) and (Y >= 0) and (Y <= ClientHeight) then
      if FDownChecked then NewState := absExclusive else NewState := absDown;

    if (Style = bsCheck) and FDownChecked then
    begin
      NewState := absDown;
    end;

    if (NewState <> FState) then
    begin
      FState := NewState;
      Invalidate;
    end;
  end
  else
    if not FMouseInControl then
      UpdateTracking;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetLayout(const Value: TButtonLayout);
begin
  FLayout := Value;
  Invalidate;
end;

procedure TAdvCustomGlowButton.SetOfficeHint(const Value: TAdvHintInfo);
begin
  FOfficeHint.Assign(Value);
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetPicture(const Value: TGDIPPicture);
begin
  FIPicture.Assign(Value);
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetTransparent(const Value: Boolean);
begin
  FTransparent := Value;
//  ReCreateWnd;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDropDownButton(const Value: Boolean);
begin
  if FDropDownButton <> Value then
  begin
    //if (Value and not (Style = bsCheck)) or not Value then
    FDropDownButton := Value;
    AdjustSize;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDropDownDirection(const Value: TDropDownDirection);
begin
  if FDropDownDirection <> Value then
  begin
    //if (Value and not (Style = bsCheck)) or not Value then
    FDropDownDirection := Value;
    Invalidate;
  end;
end;


//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.PopupBtnDown;
begin
  if Assigned(FOnDropDown) then
    FOnDropDown(self);
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetDropDownPosition(
  const Value: TDropDownPosition);
begin
  if FDropDownPosition <> Value then
  begin
    FDropDownPosition := Value;
    if FDropDownButton then
      AdjustSize;
    Invalidate;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.OnAppearanceChanged(Sender: TObject);
begin
  Invalidate;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetAppearance(
  const Value: TGlowButtonAppearance);
begin
  FAppearance.Assign(Value);
end;

procedure TAdvCustomGlowButton.SetBorderStyle(const Value: TBorderStyle);
begin
  FBorderStyle := Value;
  Invalidate;
end;

procedure TAdvCustomGlowButton.SetButtonPosition(const Value: TButtonPosition);
begin
  FButtonPosition := Value;
  Invalidate;
end;

procedure TAdvCustomGlowButton.SetComponentStyle(AStyle: TTMSStyle);
begin
  if (Astyle in [tsOffice2003Blue, tsOffice2003Silver, tsOffice2003Olive, tsWhidbey]) then
  begin
      Appearance.ColorHot := $EBFDFF;
      Appearance.ColorHotTo := $ACECFF;
      Appearance.ColorMirrorHot := $59DAFF;
      Appearance.ColorMirrorHotTo := $A4E9FF;
      Appearance.BorderColorHot := $99CEDB;
      Appearance.GradientHot := ggVertical;
      Appearance.GradientMirrorHot := ggVertical;

      Appearance.ColorDown := $76AFF1;
      Appearance.ColorDownTo := $4190F3;
      Appearance.ColorMirrorDown := $0E72F1;
      Appearance.ColorMirrorDownTo := $4C9FFD;
      Appearance.BorderColorDown := $45667B;
      Appearance.GradientDown := ggVertical;
      Appearance.GradientMirrorDown := ggVertical;

      Appearance.ColorChecked := $B5DBFB;
      Appearance.ColorCheckedTo := $78C7FE;
      Appearance.ColorMirrorChecked := $9FEBFD;
      Appearance.ColorMirrorCheckedTo := $56B4FE;
      Appearance.GradientChecked := ggVertical;
      Appearance.GradientMirrorChecked := ggVertical;

  end;

  case AStyle of
    tsOffice2003Blue:
      begin
        Appearance.Color := $EEDBC8;
        Appearance.ColorTo := $F6DDC9;
        Appearance.ColorMirror := $EDD4C0;
        Appearance.ColorMirrorTo := $F7E1D0;
        Appearance.BorderColor := $E0B99B;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;
      end;
    tsOffice2003Olive:
      begin
        Appearance.Color := $CFF0EA;
        Appearance.ColorTo := $CFF0EA;
        Appearance.ColorMirror := $CFF0EA;
        Appearance.ColorMirrorTo := $8CC0B1;
        Appearance.BorderColor := $8CC0B1;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;
      end;
    tsOffice2003Silver:
      begin
        Appearance.Color := $EDD4C0;
        Appearance.ColorTo := $00E6D8D8;
        Appearance.ColorMirror := $EDD4C0;
        Appearance.ColorMirrorTo := $C8B2B3;
        Appearance.BorderColor := $927476;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;
      end;    
    tsOffice2003Classic:
      begin
        Appearance.Color := clWhite;
        Appearance.ColorTo := $C9D1D5;
        Appearance.ColorMirror := clWhite;
        Appearance.ColorMirrorTo := $C9D1D5;
        Appearance.BorderColor := clBlack;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

        Appearance.ColorHot := $EBFDFF;
        Appearance.ColorHotTo := $ACECFF;
        Appearance.ColorMirrorHot := $59DAFF;
        Appearance.ColorMirrorHotTo := $A4E9FF;
        Appearance.BorderColorHot := $99CEDB;
        Appearance.GradientHot := ggVertical;
        Appearance.GradientMirrorHot := ggVertical;

        Appearance.ColorDown := $76AFF1;
        Appearance.ColorDownTo := $4190F3;
        Appearance.ColorMirrorDown := $0E72F1;
        Appearance.ColorMirrorDownTo := $4C9FFD;
        Appearance.BorderColorDown := $45667B;
        Appearance.GradientDown := ggVertical;
        Appearance.GradientMirrorDown := ggVertical;

        Appearance.ColorChecked := $B5DBFB;
        Appearance.ColorCheckedTo := $78C7FE;
        Appearance.ColorMirrorChecked := $9FEBFD;
        Appearance.ColorMirrorCheckedTo := $56B4FE;
        Appearance.GradientChecked := ggVertical;
        Appearance.GradientMirrorChecked := ggVertical;

      end;
    tsOffice2007Luna:
      begin
        Appearance.Color := $EEDBC8;
        Appearance.ColorTo := $F6DDC9;
        Appearance.ColorMirror := $EDD4C0;
        Appearance.ColorMirrorTo := $F7E1D0;
        Appearance.BorderColor := $E0B99B;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

        Appearance.ColorHot := $EBFDFF;
        Appearance.ColorHotTo := $ACECFF;
        Appearance.ColorMirrorHot := $59DAFF;
        Appearance.ColorMirrorHotTo := $A4E9FF;
        Appearance.BorderColorHot := $99CEDB;
        Appearance.GradientHot := ggVertical;
        Appearance.GradientMirrorHot := ggVertical;

        Appearance.ColorDown := $76AFF1;
        Appearance.ColorDownTo := $4190F3;
        Appearance.ColorMirrorDown := $0E72F1;
        Appearance.ColorMirrorDownTo := $4C9FFD;
        Appearance.BorderColorDown := $45667B;
        Appearance.GradientDown := ggVertical;
        Appearance.GradientMirrorDown := ggVertical;

        Appearance.ColorChecked := $B5DBFB;
        Appearance.ColorCheckedTo := $78C7FE;
        Appearance.ColorMirrorChecked := $9FEBFD;
        Appearance.ColorMirrorCheckedTo := $56B4FE;
        Appearance.BorderColorChecked := $45667B;
        Appearance.GradientChecked := ggVertical;
        Appearance.GradientMirrorChecked := ggVertical;
      end;
    tsOffice2007Obsidian:
      begin
        Appearance.Color := $DFDED6;
        Appearance.ColorTo := $E4E2DB;
        Appearance.ColorMirror := $D7D5CE;
        Appearance.ColorMirrorTo := $E7E5E0;
        Appearance.BorderColor := $C0BCB2;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

        Appearance.ColorHot := $EBFDFF;
        Appearance.ColorHotTo := $ACECFF;
        Appearance.ColorMirrorHot := $59DAFF;
        Appearance.ColorMirrorHotTo := $A4E9FF;
        Appearance.BorderColorHot := $99CEDB;
        Appearance.GradientHot := ggVertical;
        Appearance.GradientMirrorHot := ggVertical;

        Appearance.ColorDown := $76AFF1;
        Appearance.ColorDownTo := $4190F3;
        Appearance.ColorMirrorDown := $0E72F1;
        Appearance.ColorMirrorDownTo := $4C9FFD;
        Appearance.BorderColorDown := $45667B;
        Appearance.GradientDown := ggVertical;
        Appearance.GradientMirrorDown := ggVertical;

        Appearance.ColorChecked := $B5DBFB;
        Appearance.ColorCheckedTo := $78C7FE;
        Appearance.ColorMirrorChecked := $9FEBFD;
        Appearance.ColorMirrorCheckedTo := $56B4FE;
        Appearance.BorderColorChecked := $45667B;
        Appearance.GradientChecked := ggVertical;
        Appearance.GradientMirrorChecked := ggVertical;

      end;
    tsOffice2007Silver:
      begin
        Appearance.Color := $F3F3F1;
        Appearance.ColorTo := $F5F5F3;
        Appearance.ColorMirror := $EEEAE7;
        Appearance.ColorMirrorTo := $F8F7F6;
        Appearance.BorderColor := $CCCAC9;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

        Appearance.ColorHot := $EBFDFF;
        Appearance.ColorHotTo := $ACECFF;
        Appearance.ColorMirrorHot := $59DAFF;
        Appearance.ColorMirrorHotTo := $A4E9FF;
        Appearance.BorderColorHot := $99CEDB;
        Appearance.GradientHot := ggVertical;
        Appearance.GradientMirrorHot := ggVertical;

        Appearance.ColorDown := $76AFF1;
        Appearance.ColorDownTo := $4190F3;
        Appearance.ColorMirrorDown := $0E72F1;
        Appearance.ColorMirrorDownTo := $4C9FFD;
        Appearance.BorderColorDown := $45667B;
        Appearance.GradientDown := ggVertical;
        Appearance.GradientMirrorDown := ggVertical;

        Appearance.ColorChecked := $B5DBFB;
        Appearance.ColorCheckedTo := $78C7FE;
        Appearance.ColorMirrorChecked := $9FEBFD;
        Appearance.ColorMirrorCheckedTo := $56B4FE;
        Appearance.BorderColorChecked := $45667B;
        Appearance.GradientChecked := ggVertical;
        Appearance.GradientMirrorChecked := ggVertical;
      end;
    tsWindowsXP:
      begin
        Appearance.Color := clWhite;
        Appearance.ColorTo := $B9D8DC;
        Appearance.ColorMirror := $B9D8DC;
        Appearance.ColorMirrorTo := $B9D8DC;
        Appearance.BorderColor := $B9D8DC;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

        Appearance.ColorHot := $EFD3C6;
        Appearance.ColorHotTo := $EFD3C6;
        Appearance.ColorMirrorHot := $EFD3C6;
        Appearance.ColorMirrorHotTo := $EFD3C6;
        Appearance.BorderColorHot := clHighlight;
        Appearance.GradientHot := ggVertical;
        Appearance.GradientMirrorHot := ggVertical;

        Appearance.ColorDown := $B59284;
        Appearance.ColorDownTo := $B59284;
        Appearance.ColorMirrorDown := $B59284;
        Appearance.ColorMirrorDownTo := $B59284;
        Appearance.BorderColorDown := clHighlight;
        Appearance.GradientDown := ggVertical;
        Appearance.GradientMirrorDown := ggVertical;


        Appearance.ColorChecked := $B9D8DC;
        Appearance.ColorCheckedTo := $B9D8DC;
        Appearance.ColorMirrorChecked := $B9D8DC;
        Appearance.ColorMirrorCheckedTo := $B9D8DC;
        Appearance.BorderColorChecked := clBlack;
        Appearance.GradientChecked := ggVertical;
        Appearance.GradientMirrorChecked := ggVertical;

      end;
    tsWhidbey:
      begin
        Appearance.Color := clWhite;
        Appearance.ColorTo := $DFEDF0;
        Appearance.ColorMirror := $DFEDF0;
        Appearance.ColorMirrorTo := $DFEDF0;
        Appearance.BorderColor := $99A8AC;
        Appearance.Gradient := ggVertical;
        Appearance.GradientMirror := ggVertical;

      end;
    tsCustom:
      begin
      end;
  end;
  Invalidate;
end;


//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

{$IFDEF DELPHI6_LVL}

procedure TAdvCustomGlowButton.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited ActionChange(Sender, CheckDefaults);
  if Sender is TCustomAction then
    with TCustomAction(Sender) do
    begin
      if CheckDefaults or (Self.GroupIndex = 0) then
        Self.GroupIndex := GroupIndex;
      Self.ImageIndex := ImageIndex;
    end;
end;

//------------------------------------------------------------------------------

function TAdvCustomGlowButton.GetActionLinkClass: TControlActionLinkClass;
begin
  Result := TAdvGlowButtonActionLink;
end;
{$ENDIF}

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetButtonSizeState(
  const Value: TButtonSizeState);
begin
  if (FButtonSizeState <> Value) {and AutoSize} then
  begin
    if (FButtonSizeState = bsLarge) then
    begin
      FOldLayout := Layout;
      FOldDropDownPosition := DropDownPosition;
    end;

    FButtonSizeState := Value;
    
    if (FButtonSizeState = bsLarge) and AutoSize then
    begin
      Layout := FOldLayout;
      DropDownPosition := FOldDropDownPosition;
    end
    else if AutoSize then
    begin
      Layout := blGlyphLeft;
      DropDownPosition := dpRight;
    end;
    FFirstPaint := True;
    Paint;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetMaxButtonSizeState(
  const Value: TButtonSizeState);
begin
  if (FMaxButtonSizeState <> Value) {and AutoSize} then
  begin
    FMaxButtonSizeState := Value;
    ButtonSizeState := FMaxButtonSizeState
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvCustomGlowButton.SetMinButtonSizeState(
  const Value: TButtonSizeState);
begin
  if (FMinButtonSizeState <> Value) then
  begin
    FMinButtonSizeState := Value;
    if (FMinButtonSizeState > ButtonSizeState) then
      ButtonSizeState := FMinButtonSizeState;
  end;
end;

//------------------------------------------------------------------------------

function TAdvCustomGlowButton.GetButtonSize(BtnSizeState: TButtonSizeState): TSize;
var
  DCaption: string;
  ImgList: TImageList;
  Pic: TGDIPPicture;
  EnabledImg: Boolean;
  BD: TButtonDisplay;
  bmp: TBitmap;
  DrawFocused, DrawFocusedHot, DrawDwLn: boolean;
  PicSize: TSize;
  LayOt: TButtonLayout;
  DpDwPosition: TDropDownPosition;
begin
  if Enabled or (DisabledImages = nil) then
  begin
    if FHot and (HotImages <> nil) then
      ImgList := HotImages
    else
      ImgList := Images;

    EnabledImg := Enabled;
  end
  else
  begin
    ImgList := DisabledImages;
    EnabledImg := True;
  end;

  if Enabled or DisabledPicture.Empty then
  begin
    if FHot and not HotPicture.Empty then
      Pic := HotPicture
    else
      Pic := Picture;
  end
  else
    Pic := DisabledPicture;


  if (ImgList = nil) then
  begin
    ImgList := FInternalImages;
    EnabledImg := True;
  end;

  if ShowCaption then
    DCaption := Caption
  else
    DCaption := '';

  if (FMouseInControl or FMouseDown) and DropDownButton then
  begin
    if FInButton then
      BD := bdDropDown
    else
      BD := bdButton;
  end
  else
    BD := bdNone;

  DrawFocused := (GetFocus = self.Handle) and (FocusType in [ftBorder, ftHotBorder]);
  DrawFocusedHot := (GetFocus = self.Handle) and (FocusType in [ftHot, ftHotBorder]);

  bmp := TBitmap.Create;
  bmp.Width := 1;
  bmp.Height := 1;

  GetToolImage(bmp);

  if Assigned(Action) then
  begin
    begin
      if (Action as TCustomAction).ImageIndex >= 0 then
        if Assigned((Action as TCustomAction).ActionList) then
          if Assigned(TImageList((Action as TCustomAction).ActionList.Images)) then
          begin
            ImgList := TImageList((Action as TCustomAction).ActionList.Images);
            EnabledImg := Enabled;
          end;
    end;
  end;

  LayOt := Layout;
  DpDwPosition := DropDownPosition;

  PicSize.cx := 0;  // no stretch pic
  PicSize.cy := 0;
  if AutoSize then
  begin
    if (BtnSizeState in [bsLabel, bsGlyph]) then
    begin
      PicSize.cx := 16;
      PicSize.cy := 16;

      if (bmp.Width = 1) then
      begin
        bmp.Height := Pic.Height;
        bmp.Width := Pic.Width;
        bmp.Canvas.Draw(0, 0, Pic);
        Pic := nil;
      end;

      if Assigned(ImgList) and (ImageIndex >= 0) then
      begin
        Pic := nil;
      end;
    end;

    if (BtnSizeState = bsGlyph) then
    begin
      DCaption := '';
    end;

    if (BtnSizeState = bsLarge) then
    begin
      LayOt := FOldLayout;
      DpDwPosition := FOldDropDownPosition;
    end
    else
    begin
      LayOt := blGlyphLeft;
      DpDwPosition := dpRight;
    end;
  end;

  DrawDwLn := False;

  with Appearance do
    Result := DrawVistaButton(Canvas,ClientRect,FColor, FColorTo, FColorMirror, FColorMirrorTo,
        BorderColor, Gradient, GradientMirror, DCaption, WideCaption, FDefaultCaptionDrawing, Font, ImgList, ImageIndex, EnabledImg, LayOt, FDropDownButton,
        DrawDwLn, Enabled, DrawFocused, DpDwPosition, Pic, PicSize, AntiAlias, FDefaultPicDrawing, bmp, BD, Transparent and not (FMouseEnter or DrawFocusedHot or (State = absDown)), FMouseEnter, Position, DropDownSplit, BorderStyle = bsSingle,
        FOverlappedText, FWordWrap, True, FRounded, FDropDownDirection = ddDown, FSpacing, FTrimming);

  Result.cx := Result.cx + Spacing * 3 + 2 + 2 * MarginHorz;
  Result.cy := Result.cy + Spacing * 2 + 2 * MarginVert;
  if DropDownButton then
  begin
    if (DpDwPosition = dpBottom) then
      Result.cy := Result.cy + DropDownSectWidth
    else
      Result.cx := Result.cx + DropDownSectWidth;
  end;
  //if Assigned(FOnSetButtonSize) then
    //FOnSetButtonSize(Self, w, h);

  bmp.Free;
end;

//------------------------------------------------------------------------------

{ TGlowButtonAppearance }

constructor TGlowButtonAppearance.Create;
begin
  inherited;
  Color := clWhite;
  ColorTo := clWhite;
  ColorMirror := clSilver;
  ColorMirrorTo := clWhite;

  ColorHot := $F5F0E1;
  ColorHotTo := $F9D2B2;
  ColorMirrorHot := $F5C8AD;
  ColorMirrorHotTo := $FFF8F4;

  ColorDown := BrightnessColor($F5F0E1,-10,-10,0);
  ColorDownTo := BrightnessColor($F9D2B2, -10,-10,0);
  ColorMirrorDown := BrightnessColor($F5C8AD, -10,-10,0);
  ColorMirrorDownTo := BrightnessColor($FFF8F4, -10,-10,0);

  ColorChecked := BrightnessColor($F5F0E1,-10,-10,0);
  ColorCheckedTo := BrightnessColor($F9D2B2, -10,-10,0);
  ColorMirrorChecked := BrightnessColor($F5C8AD, -10,-10,0);
  ColorMirrorCheckedTo := BrightnessColor($FFF8F4, -10,-10,0);

  ColorDisabled := BrightnessColor(clWhite,-5,-5,-5);
  ColorDisabledTo := BrightnessColor(clWhite, -5,-5,-5);
  ColorMirrorDisabled := BrightnessColor(clSilver, -5,-5,-5);
  ColorMirrorDisabledTo := BrightnessColor(clWhite, -5,-5,-5);

  BorderColor := clSilver;
  BorderColorHot := clBlue;
  BorderColorDown := clNavy;
  BorderColorChecked := clBlue;
  BorderColorDisabled := clGray;

  Gradient := ggVertical;
  GradientMirror := ggVertical;

  GradientHot := ggRadial;
  GradientMirrorHot := ggRadial;

  GradientDown := ggRadial;
  GradientMirrorDown := ggRadial;

  GradientChecked := ggRadial;
  GradientMirrorChecked := ggVertical;

  GradientDisabled := ggRadial;
  GradientMirrorDisabled := ggRadial;
end;

//------------------------------------------------------------------------------

procedure TGlowButtonAppearance.Assign(Source: TPersistent);
begin
  if (Source is TGlowButtonAppearance) then
  begin
    Color := (Source as TGlowButtonAppearance).Color;
    ColorTo := (Source as TGlowButtonAppearance).ColorTo;
    ColorMirror := (Source as TGlowButtonAppearance).ColorMirror;
    ColorMirrorTo := (Source as TGlowButtonAppearance).ColorMirrorTo;

    ColorHot := (Source as TGlowButtonAppearance).ColorHot;
    ColorHotTo := (Source as TGlowButtonAppearance).ColorHotTo;
    ColorMirrorHot := (Source as TGlowButtonAppearance).ColorMirrorHot;
    ColorMirrorHotTo := (Source as TGlowButtonAppearance).ColorMirrorHotTo;

    ColorDown := (Source as TGlowButtonAppearance).ColorDown;
    ColorDownTo := (Source as TGlowButtonAppearance).ColorDownTo;
    ColorMirrorDown := (Source as TGlowButtonAppearance).ColorMirrorDown;
    ColorMirrorDownTo := (Source as TGlowButtonAppearance).ColorMirrorDownTo;

    ColorChecked := (Source as TGlowButtonAppearance).ColorChecked;
    ColorCheckedTo := (Source as TGlowButtonAppearance).ColorCheckedTo;
    ColorMirrorChecked := (Source as TGlowButtonAppearance).ColorMirrorChecked;
    ColorMirrorCheckedTo := (Source as TGlowButtonAppearance).ColorMirrorCheckedTo;

    ColorDisabled := (Source as TGlowButtonAppearance).ColorDisabled;
    ColorDisabledTo := (Source as TGlowButtonAppearance).ColorDisabledTo;
    ColorMirrorDisabled := (Source as TGlowButtonAppearance).ColorMirrorDisabled;
    ColorMirrorDisabledTo := (Source as TGlowButtonAppearance).ColorMirrorDisabledTo;

    BorderColor := (Source as TGlowButtonAppearance).BorderColor;
    BorderColorHot := (Source as TGlowButtonAppearance).BorderColorHot;
    BorderColorDown := (Source as TGlowButtonAppearance).BorderColorDown;
    BorderColorChecked := (Source as TGlowButtonAppearance).BorderColorChecked;
    BorderColorDisabled := (Source as TGlowButtonAppearance).BorderColorDisabled;

    Gradient := (Source as TGlowButtonAppearance).Gradient;
    GradientMirror := (Source as TGlowButtonAppearance).GradientMirror;

    GradientHot := (Source as TGlowButtonAppearance).GradientHot;
    GradientMirrorHot := (Source as TGlowButtonAppearance).GradientMirrorHot;

    GradientDown := (Source as TGlowButtonAppearance).GradientDown;
    GradientMirrorDown := (Source as TGlowButtonAppearance).GradientMirrorDown;

    GradientChecked := (Source as TGlowButtonAppearance).GradientChecked;
    GradientMirrorChecked := (Source as TGlowButtonAppearance).GradientMirrorChecked;

    GradientDisabled := (Source as TGlowButtonAppearance).GradientDisabled;
    GradientMirrorDisabled := (Source as TGlowButtonAppearance).GradientMirrorDisabled;
  end
  else
    inherited Assign(Source);
end;

//------------------------------------------------------------------------------

procedure TGlowButtonAppearance.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

//------------------------------------------------------------------------------

{ TDBATBButtonDataLink }

constructor TDBGlowButtonDataLink.Create;
begin
  inherited Create;
  FOnEditingChanged := nil;
  FOnDataSetChanged := nil;
  FOnActiveChanged := nil;
end;

//------------------------------------------------------------------------------

procedure TDBGlowButtonDataLink.ActiveChanged;
begin
  if Assigned(FOnActiveChanged) then FOnActiveChanged(Self);
end;

//------------------------------------------------------------------------------

procedure TDBGlowButtonDataLink.DataSetChanged;
begin
  if Assigned(FOnDataSetChanged) then FOnDataSetChanged(Self);
end;

//------------------------------------------------------------------------------

procedure TDBGlowButtonDataLink.EditingChanged;
begin
  if Assigned(FOnEditingChanged) then FOnEditingChanged(Self);
end;

//------------------------------------------------------------------------------

{ TDBAdvToolBarButton }

constructor TDBAdvGlowButton.Create(AOwner: TComponent);
begin
  inherited;
  FAutoDisable := True;
  FDBButtonType := dbCustom;
  FDisableControls := [];
  FDataLink := TDBGlowButtonDataLink.Create;
  with FDataLink do
  begin
    OnEditingChanged := OnDataSetEvents;
    OnDataSetChanged := OnDataSetEvents;
    OnActiveChanged := OnDataSetEvents;
  end;
  FConfirmActionString := '';  
end;

//------------------------------------------------------------------------------

destructor TDBAdvGlowButton.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  if (FInternalImages <> nil) then
    FInternalImages.Free;
  inherited;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.CalcDisableReasons;
begin
  case FDBButtonType of
    dbPrior:    FDisableControls := [drBOF, drEditing, drEmpty];
    dbNext:     FDisableControls := [drEOF, drEditing, drEmpty];
    dbFirst:    FDisableControls := [drBOF, drEditing, drEmpty];
    dbLast:     FDisableControls := [drEOF, drEditing, drEmpty];
    dbInsert,
    dbAppend:   FDisableControls := [drReadonly, drEditing];
    dbEdit:     FDisableControls := [drReadonly, drEditing, drEmpty];
    dbCancel:   FDisableControls := [drNotEditing];
    dbPost:     FDisableControls := [drNotEditing];
    dbRefresh:  FDisableControls := [drEditing];
    dbDelete:   FDisableControls := [drReadonly, drEditing, drEmpty];
  end;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.Click;
begin
  inherited;
  DoAction;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  if (not FInProcUpdateEnabled) and
     (not (csLoading in ComponentState)) and
     (not (csDestroying in ComponentState)) then
  begin
    UpdateEnabled;
  end;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.DoAction;
var
  DoAction: Boolean;
  ShowException: Boolean;
begin
  if not DoConfirmAction then
    Exit;

  DoAction := (FDBButtonType <> dbCustom);
  try
    DoBeforeAction(DoAction);
    if DoAction and (DataSource <> nil) and (DataSource.State <> dsInactive) then
    begin
      with DataSource.DataSet do
      begin
        case FDBButtonType of
          dbPrior: Prior;
          dbNext: Next;
          dbFirst: First;
          dbLast: Last;
          dbInsert: Insert;
          dbAppend: Append;
          dbEdit: Edit;
          dbCancel: Cancel;
          dbPost: Post;
          dbRefresh:Refresh;
          dbDelete: Delete;
        end;
      end;
    end;
    ShowException := false;
  except
    ShowException := true;
    if Assigned(FOnAfterAction) then
      FOnAfterAction(self, ShowException);
    if ShowException then
      raise;
    ShowException := true;
  end;
  if not ShowException and DoAction and Assigned(FOnAfterAction) then
    FOnAfterAction(self, ShowException);
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.DoBeforeAction(var DoAction: Boolean);
begin
  if (not (csDesigning in ComponentState)) and Assigned(FOnBeforeAction) then
    FOnBeforeAction(self, DoAction);
end;

//------------------------------------------------------------------------------

function TDBAdvGlowButton.DoConfirmAction: Boolean;
var
  Question: string;
  QuestionButtons: TMsgDlgButtons;
  QuestionHelpCtx: Longint;
  QuestionResult: Longint;
begin
  DoGetQuestion(Question, QuestionButtons, QuestionHelpCtx);
  if (Question <> '') then
  begin
    QuestionResult := MessageDlg(Question, mtConfirmation, QuestionButtons, QuestionHelpCtx);
    Result := (QuestionResult = idOk) or (QuestionResult = idYes);
  end
  else
    Result := true;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.DoGetQuestion(var Question: string;
  var Buttons: TMsgDlgButtons; var HelpCtx: Integer);
begin
  Question := '';
  if FConfirmAction then
  begin
    Question := FConfirmActionString;
    Buttons := mbOKCancel;
    HelpCtx := 0;
    if Assigned(FOnGetConfirm) then
      FOnGetConfirm(self, Question, Buttons, HelpCtx);
  end;
end;

//------------------------------------------------------------------------------

function TDBAdvGlowButton.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited;
  if (AOperation = opRemove) and (FDataLink <> nil) and (AComponent = DataSource) then
    DataSource := nil;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
  if not (csLoading in ComponentState) then
    UpdateEnabled;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.SetDBButtonType(const Value: TDBGlowButtonType);
begin
  if (Value = FDBButtonType) then
    Exit;

  if (Value = dbDelete) and (FConfirmActionString = ''){and ConfirmAction} then
    FConfirmActionString := SDeleteRecordQuestion; //'Delete Record?';

  if (csReading in ComponentState) or (csLoading in ComponentState) then
  begin
    FDBButtonType := Value;
    CalcDisableReasons;
    exit;
  end;

  FDBButtonType := Value;
  LoadGlyph;
  CalcDisableReasons;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.UpdateEnabled;
var
  PossibleDisableReasons: TDBBDisableControls;
  GetEnable: Boolean;
  WasEnabled: Boolean;
begin
  if (csDesigning in ComponentState) or (csDestroying in ComponentState) or not FAutoDisable then
    Exit;

  FInProcUpdateEnabled := true;
  try
   WasEnabled := Enabled;
   if FDataLink.Active then
   begin
     PossibleDisableReasons := [];
     if FDataLink.DataSet.BOF then
       Include(PossibleDisableReasons, drBOF);
     if FDataLink.DataSet.EOF then
       Include(PossibleDisableReasons, drEOF);
     if not FDataLink.DataSet.CanModify then
       Include(PossibleDisableReasons, drReadonly);
     if FDataLink.DataSet.BOF and FDataLink.DataSet.EOF then
       Include(PossibleDisableReasons, drEmpty);
     if FDataLink.Editing then
       Include(PossibleDisableReasons, drEditing)
     else
       Include(PossibleDisableReasons, drNotEditing);

     GetEnable := ((FDisableControls - [drEvent])* PossibleDisableReasons = []);
     if (drEvent in FDisableControls) and (Assigned(FOnGetEnabled)) then
       FOnGetEnabled(Self, GetEnable);
     Enabled := GetEnable;
   end
   else
     Enabled := false;

   if (WasEnabled <> Enabled) and Assigned(FOnEnabledChanged) then
     FOnEnabledChanged(self);
  finally
    FInProcUpdateEnabled := false;
  end;
  LoadGlyph;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.Loaded;
begin
  inherited;
  //if not Assigned(Images) then
  LoadGlyph;

  UpdateEnabled;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.OnDataSetEvents(Sender: TObject);
begin
  UpdateEnabled;
end;

//------------------------------------------------------------------------------

procedure TDBAdvGlowButton.LoadGlyph;
var
  Glyph: TBitMap;
begin
  if (csLoading in ComponentState) or Assigned(Images) or (not Enabled and Assigned(DisabledImages)) then
    Exit;

  if (FDBButtonType = dbCustom) then
    Exit;

  if (FInternalImages = nil) then
    FInternalImages := TImageList.Create(self);

  FInternalImages.Clear;
  Glyph := TBitMap.Create;
  Glyph.Width := 16;
  Glyph.Height := 16;
  Glyph.Transparent := True;

  case FDBButtonType of
    dbPrior:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGPRIOR')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGPRIORD');
    end;
    dbNext:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGNEXT')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGNEXTD');
    end;
    dbFirst:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGFIRST')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGFIRSTD');
    end;
    dbLast:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGLAST')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGLASTD');
    end;
    dbInsert:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGINSERT')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGINSERTD');
    end;
    dbAppend:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGINSERT')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGINSERTD');
    end;
    dbEdit:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGEDIT')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGEDITD');
    end;
    dbCancel:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGCANCEL')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGCANCELD');
    end;
    dbPost:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGPOST')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGPOSTD');
    end;
    dbRefresh:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGREFRESH')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGREFRESHD');
    end;
    dbDelete:
    begin
      if Enabled then
        Glyph.LoadFromResourceName(HInstance, 'DBIMGDELETE')
      else
        Glyph.LoadFromResourceName(HInstance, 'DBIMGDELETED');
    end;
  end;

  FInternalImages.DrawingStyle := dsTransparent;
  FInternalImages.Masked := true;
  FInternalImages.AddMasked(Glyph, clFuchsia);
  FImageIndex := 0;
  Glyph.Free;
  Invalidate;
end;

//------------------------------------------------------------------------------


procedure TDBAdvGlowButton.SetConfirmActionString(const Value: String);
begin
  if FConfirmActionString <> Value then
  begin
    FConfirmActionString := Value;
  end;
end;

//------------------------------------------------------------------------------

{$IFDEF DELPHI6_LVL}

{ TAdvGlowButtonActionLink }

procedure TAdvGlowButtonActionLink.AssignClient(AClient: TObject);
begin
  inherited AssignClient(AClient);
  FClient := AClient as TAdvCustomGlowButton;
end;

//------------------------------------------------------------------------------

function TAdvGlowButtonActionLink.IsCheckedLinked: Boolean;
begin
  Result := inherited IsCheckedLinked {and (FClient.GroupIndex <> 0) and
    FClient.AllowAllUp} and (FClient.Down = (Action as TCustomAction).Checked);

  FClient.CheckLinked := Result;
end;

//------------------------------------------------------------------------------

function TAdvGlowButtonActionLink.IsGroupIndexLinked: Boolean;
begin
  Result := (FClient is TAdvCustomGlowButton) and
    (TAdvCustomGlowButton(FClient).GroupIndex = (Action as TCustomAction).GroupIndex);
end;

//------------------------------------------------------------------------------

procedure TAdvGlowButtonActionLink.SetImageIndex(Value: Integer);
begin
  if IsGroupIndexLinked then
  begin
    FImageIndex := Value;
    TAdvCustomGlowButton(FClient).ImageIndex := Value;
  end;  
end;

//------------------------------------------------------------------------------

function TAdvGlowButtonActionLink.IsImageIndexLinked: boolean;
begin
  Result := inherited IsImageIndexLinked and
    (FImageIndex = (Action as TCustomAction).ImageIndex);
end;

//------------------------------------------------------------------------------

procedure TAdvGlowButtonActionLink.SetChecked(Value: Boolean);
begin
  if IsCheckedLinked then
  begin
    TAdvCustomGlowButton(FClient).Down  := Value;
  end;
end;

//------------------------------------------------------------------------------

procedure TAdvGlowButtonActionLink.SetGroupIndex(Value: Integer);
begin
  if IsGroupIndexLinked then
    TAdvCustomGlowButton(FClient).GroupIndex := Value;
end;

{$ENDIF}

{ TShortCutHintWindow }

procedure TShortCutHintWindow.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style and not WS_BORDER;
end;

procedure TShortCutHintWindow.Paint;
var
  r: TRect;
begin
  r := ClientRect;
  DrawGradient(Canvas, clWhite, clSilver, 32, r, false);
  Canvas.Brush.Style := bsClear;
  Canvas.Font.Assign(self.Font);

  DrawText(Canvas.Handle,PChar(Caption),Length(Caption),r, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

  Canvas.Pen.Color := clGray;
  RoundRect(Canvas.Handle, R.Left, R.Top, R.Right, R.Bottom, 3,3);
end;


procedure TShortCutHintWindow.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  Message.Result := 1;
end;


{$IFDEF FREEWARE}
{$I TRIAL.INC}
{$ENDIF}




end.
