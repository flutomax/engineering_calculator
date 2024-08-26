unit uFrmCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  Menus, StdCtrls, Math, ExtCtrls, Buttons;

type
  TBinaryOperation = (bopAdd, bopSub, bopMul, bopDiv, bopPow, bopFMod);
  TUnaryOperation = (uopSgn, uop1DivX, uopExp, uopLn, uopLog10, uopSqr, uopSqrt,
    uopSin, uopCos, uopTan, uopCotan, uopArcSin, uopArcCos, uopArcTan, uopArcCot);

  TFrmCalc = class(TForm)
    BtnBackSpace: TButton;
    BtnC: TButton;
    Editor: TEdit;
    Btn0: TButton;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    BtnMul: TButton;
    BtnSign: TButton;
    BtnDiv: TButton;
    BtnSub: TButton;
    BtnAdd: TButton;
    BtnResult: TButton;
    BtnExp: TButton;
    BtnPow: TButton;
    BtnLn: TButton;
    BtnLog: TButton;
    BtnPi: TButton;
    BtnSqr: TButton;
    BtnSqrt: TButton;
    BtnArcCos: TButton;
    BtnArcSin: TButton;
    BtnArcTan: TButton;
    BtnCos: TButton;
    BtnSin: TButton;
    BtnTan: TButton;
    RbDegree: TRadioButton;
    RbRad: TRadioButton;
    RbGrad: TRadioButton;
    Btn1DivX: TButton;
    BtnPoint: TButton;
    BtnMC: TButton;
    BtnMR: TButton;
    BtnMS: TButton;
    BtnMP: TButton;
    PnlMem: TPanel;
    BtnCtg: TButton;
    BtnActg: TButton;
    BtnFmod: TButton;
    TmrPressed: TTimer;
    BtnE: TButton;
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn0Click(Sender: TObject);
    procedure BtnBackSpaceClick(Sender: TObject);
    procedure BtnSubClick(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    procedure BtnMulClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnResultClick(Sender: TObject);
    procedure BtnSignClick(Sender: TObject);
    procedure BtnExpClick(Sender: TObject);
    procedure BtnPowClick(Sender: TObject);
    procedure BtnLnClick(Sender: TObject);
    procedure BtnLogClick(Sender: TObject);
    procedure BtnPiClick(Sender: TObject);
    procedure BtnSqrClick(Sender: TObject);
    procedure BtnSqrtClick(Sender: TObject);
    procedure BtnArcCosClick(Sender: TObject);
    procedure BtnArcSinClick(Sender: TObject);
    procedure BtnArcTanClick(Sender: TObject);
    procedure BtnCosClick(Sender: TObject);
    procedure BtnSinClick(Sender: TObject);
    procedure BtnTanClick(Sender: TObject);
    procedure BtnCClick(Sender: TObject);
    procedure Btn1DivXClick(Sender: TObject);
    procedure BtnPointClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure BtnMCClick(Sender: TObject);
    procedure BtnMRClick(Sender: TObject);
    procedure BtnMSClick(Sender: TObject);
    procedure BtnMPClick(Sender: TObject);
    procedure BtnCtgClick(Sender: TObject);
    procedure BtnActgClick(Sender: TObject);
    procedure BtnFmodClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TmrPressedTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    fNext: boolean;
    fMemory: string;
    fOperand: extended;
    fOperation: TBinaryOperation;
    fLastPressedButton: TButton;
    procedure SetUnaryOperation(aOperation: TUnaryOperation);
    procedure SetBinaryOperation(aOperation: TBinaryOperation);
    procedure HandleDigit(aDigit: char);
    procedure HandlePressed(aButton: TButton);
    procedure CMDialogKey(var AMessage: TCMDialogKey); message CM_DIALOGKEY;
  public
    { Public declarations }
  end;

var
  FrmCalc: TFrmCalc;



implementation

{$R *.dfm}

const

  sDivZero = 'Попытка деления на 0.';
  sAbout = 'Инженерный калькулятор v1.0'#13#10'© 2024 Василий Макаров.';

procedure TFrmCalc.FormCreate(Sender: TObject);
begin
  fOperand := 0;
  fNext := false;
end;

procedure TFrmCalc.FormShow(Sender: TObject);
begin
  PnlMem.SetFocus;
end;

procedure TFrmCalc.CMDialogKey(var AMessage: TCMDialogKey);
begin
  if AMessage.CharCode = VK_RETURN then
  begin
    HandlePressed(BtnResult);
    AMessage.CharCode := 0;
  end;
  inherited;
end;

procedure TFrmCalc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_F1 then
    exit;
  MessageDlg(sAbout, mtInformation, [mbOK], 0);
  Key := 0;
end;

procedure TFrmCalc.FormKeyPress(Sender: TObject; var Key: char);
begin
  case Key of
    '9':
    begin
      HandlePressed(Btn9);
      Key := #0;
    end;
    '8':
    begin
      HandlePressed(Btn8);
      Key := #0;
    end;
    '7':
    begin
      HandlePressed(Btn7);
      Key := #0;
    end;
    '6':
    begin
      HandlePressed(Btn6);
      Key := #0;
    end;
    '5':
    begin
      HandlePressed(Btn5);
      Key := #0;
    end;
    '4':
    begin
      HandlePressed(Btn4);
      Key := #0;
    end;
    '3':
    begin
      HandlePressed(Btn3);
      Key := #0;
    end;
    '2':
    begin
      HandlePressed(Btn2);
      Key := #0;
    end;
    '1':
    begin
      HandlePressed(Btn1);
      Key := #0;
    end;
    '0':
    begin
      HandlePressed(Btn0);
      Key := #0;
    end;
    '.':
    begin
      HandlePressed(BtnPoint);
      Key := #0;
    end;
    '/':
    begin
      HandlePressed(BtnDiv);
      Key := #0;
    end;
    '*':
    begin
      HandlePressed(BtnMul);
      Key := #0;
    end;
    '-':
    begin
      HandlePressed(BtnSub);
      Key := #0;
    end;
    '+':
    begin
      HandlePressed(BtnAdd);
      Key := #0;
    end;
    #8:
    begin
      HandlePressed(BtnBackSpace);
      Key := #0;
    end;
    #27:
    begin
      HandlePressed(BtnC);
      Key := #0;
    end;
  end;
end;

procedure TFrmCalc.SetBinaryOperation(aOperation: TBinaryOperation);
begin
  fOperation := aOperation;
  fOperand := StrToFloat(Editor.Text);
  fNext := true;
end;

procedure TFrmCalc.BtnMCClick(Sender: TObject);
begin
  fMemory := '0';
  PnlMem.Caption := '';
end;

procedure TFrmCalc.BtnMRClick(Sender: TObject);
begin
  Editor.Text := fMemory;
end;

procedure TFrmCalc.BtnMSClick(Sender: TObject);
begin
  fMemory := Editor.Text;
  PnlMem.Caption := 'M';
end;

procedure TFrmCalc.BtnMPClick(Sender: TObject);
var
  a: Extended;
begin
  a := StrToFloat(fMemory) + StrToFloat(Editor.Text);
  fMemory := FloatToStr(a);
  PnlMem.Caption := 'M';
end;


procedure TFrmCalc.HandleDigit(aDigit: char);
begin
  if fNext then
    Editor.Text := '';
  if (Editor.Text = '0') then
    Editor.Text := '';
  Editor.Text := Editor.Text + aDigit;
  fNext := false;
end;

procedure TFrmCalc.Btn1Click(Sender: TObject);
begin
  HandleDigit('1');
end;

procedure TFrmCalc.Btn2Click(Sender: TObject);
begin
  HandleDigit('2');
end;

procedure TFrmCalc.Btn3Click(Sender: TObject);
begin
  HandleDigit('3');
end;

procedure TFrmCalc.Btn4Click(Sender: TObject);
begin
  HandleDigit('4');
end;

procedure TFrmCalc.Btn5Click(Sender: TObject);
begin
  HandleDigit('5');
end;

procedure TFrmCalc.Btn6Click(Sender: TObject);
begin
  HandleDigit('6');
end;

procedure TFrmCalc.Btn7Click(Sender: TObject);
begin
  HandleDigit('7');
end;

procedure TFrmCalc.Btn8Click(Sender: TObject);
begin
  HandleDigit('8');
end;

procedure TFrmCalc.Btn9Click(Sender: TObject);
begin
  HandleDigit('9');
end;

procedure TFrmCalc.Btn0Click(Sender: TObject);
begin
  HandleDigit('0');
end;

procedure TFrmCalc.BtnBackSpaceClick(Sender: TObject);
var
  st: string;
begin
  st := Editor.Text;
  Delete(st, length(st), 1);
  Editor.Text := st;
  if Editor.Text = '' then
  begin
    Editor.Text := '0';
  end;
end;

procedure TFrmCalc.BtnAddClick(Sender: TObject);
begin
  SetBinaryOperation(bopAdd);
end;

procedure TFrmCalc.BtnSubClick(Sender: TObject);
begin
  SetBinaryOperation(bopSub);
end;

procedure TFrmCalc.BtnDivClick(Sender: TObject);
begin
  SetBinaryOperation(bopDiv);
end;

procedure TFrmCalc.BtnMulClick(Sender: TObject);
begin
  SetBinaryOperation(bopMul);
end;

procedure TFrmCalc.BtnPowClick(Sender: TObject);
begin
  SetBinaryOperation(bopPow);
end;

procedure TFrmCalc.BtnFmodClick(Sender: TObject);
begin
  SetBinaryOperation(bopFMod);
end;

procedure TFrmCalc.BtnResultClick(Sender: TObject);

  function CheckDivZero(const operand2: extended): boolean;
  begin
    result := true;
    if not(fOperation = bopDiv) then
      exit;
    if operand2 <> 0 then
      exit;
    MessageDlg(sDivZero, mtWarning, [mbCancel], 0);
    result := false;
  end;

var
  operand2, result: extended;
begin
  operand2 := StrToFloat(Editor.Text);
  if not CheckDivZero(operand2) then
    exit;
  fNext := true;
  case fOperation of
    bopAdd: result := fOperand + operand2;
    bopSub: result := fOperand - operand2;
    bopMul: result := fOperand * operand2;
    bopDiv: result := fOperand / operand2;
    bopPow: result := Power(fOperand, operand2);
    bopFMod: result := FMod(fOperand, operand2);
  end;
  Editor.Text := FloatToStr(result);
end;

procedure TFrmCalc.SetUnaryOperation(aOperation: TUnaryOperation);

  function CheckDivZero: boolean;
  begin
    result := true;
    if not(aOperation = uop1DivX) then
      exit;
    if fOperand <> 0 then
      exit;
    MessageDlg(sDivZero, mtWarning, [mbCancel], 0);
    result := false;
  end;

  function CheckArcArgument: boolean;
  begin
    result := true;
    if not(aOperation in [uopArcSin..uopArcCot]) then
      exit;
    if (fOperand <= 1) and (fOperand >= -1) then
      exit;
    MessageDlg('Значения не определено.', mtWarning, [mbCancel], 0);
    result := false;
  end;

  procedure BringArgument;
  begin
    if not(aOperation in [uopSin..uopCotan]) then
      exit;
    if RbRad.Checked then
      fOperand := (fOperand * Pi) / 180;
    if RbGrad.Checked then
      fOperand := (fOperand * Pi) / 200;
  end;

begin
  fOperand := StrToFloat(Editor.Text);
  if not CheckDivZero then
    exit;
  if not CheckArcArgument then
    exit;
  BringArgument;
  case aOperation of
    uopSgn: fOperand := 0 - fOperand;
    uop1DivX: fOperand := 1 / fOperand;
    uopExp: fOperand := Exp(fOperand);
    uopLn: fOperand := ln(fOperand);
    uopLog10: fOperand := Log10(fOperand);
    uopSqr: fOperand := Sqr(fOperand);
    uopSqrt: fOperand := Sqrt(fOperand);
    uopSin: fOperand := Sin(fOperand);
    uopCos: fOperand := Cos(fOperand);
    uopTan: fOperand := Tan(fOperand);
    uopCotan: fOperand := Cotan(fOperand);
    uopArcSin: fOperand := ArcSin(fOperand);
    uopArcCos: fOperand := ArcCos(fOperand);
    uopArcTan: fOperand := ArcTan(fOperand);
    uopArcCot: fOperand := ArcCot(fOperand);
  end;
  Editor.Text := FloatToStr(fOperand);
end;

procedure TFrmCalc.BtnSignClick(Sender: TObject);
begin
  SetUnaryOperation(uopSgn);
end;

procedure TFrmCalc.Btn1DivXClick(Sender: TObject);
begin
  SetUnaryOperation(uop1DivX);
end;

procedure TFrmCalc.BtnExpClick(Sender: TObject);
begin
  SetUnaryOperation(uopExp);
end;

procedure TFrmCalc.BtnLnClick(Sender: TObject);
begin
  SetUnaryOperation(uopLn);
end;

procedure TFrmCalc.BtnLogClick(Sender: TObject);
begin
  SetUnaryOperation(uopLog10);
end;

procedure TFrmCalc.BtnSqrClick(Sender: TObject);
begin
  SetUnaryOperation(uopSqr);
end;

procedure TFrmCalc.BtnSqrtClick(Sender: TObject);
begin
  SetUnaryOperation(uopSqrt);
end;

procedure TFrmCalc.BtnSinClick(Sender: TObject);
begin
  SetUnaryOperation(uopSin);
end;

procedure TFrmCalc.BtnCosClick(Sender: TObject);
begin
  SetUnaryOperation(uopCos);
end;

procedure TFrmCalc.BtnTanClick(Sender: TObject);
begin
  SetUnaryOperation(uopTan);
end;

procedure TFrmCalc.BtnCtgClick(Sender: TObject);
begin
  SetUnaryOperation(uopCotan);
end;

procedure TFrmCalc.BtnArcSinClick(Sender: TObject);
begin
  SetUnaryOperation(uopArcSin);
end;

procedure TFrmCalc.BtnArcCosClick(Sender: TObject);
begin
  SetUnaryOperation(uopArcCos);
end;

procedure TFrmCalc.BtnArcTanClick(Sender: TObject);
begin
  SetUnaryOperation(uopArcTan);
end;

procedure TFrmCalc.BtnActgClick(Sender: TObject);
begin
  SetUnaryOperation(uopArcCot);
end;

procedure TFrmCalc.BtnPiClick(Sender: TObject);
begin
  Editor.Text := FloatToStr(Pi);
end;

procedure TFrmCalc.BtnEClick(Sender: TObject);
const
  e = 2.718281828459045;
begin
  Editor.Text := FloatToStr(e);
end;

procedure TFrmCalc.BtnCClick(Sender: TObject);
begin
  Editor.Text := '0';
  fOperand := 0;
  fNext := false;
end;

procedure TFrmCalc.BtnPointClick(Sender: TObject);
begin
  Editor.Text := Editor.Text + FormatSettings.DecimalSeparator;
end;

procedure TFrmCalc.HandlePressed(aButton: TButton);
begin
  TmrPressed.Enabled := true;
  if Assigned(aButton) then
  begin
    if aButton.CanFocus then
      aButton.SetFocus;
    aButton.Perform(BM_SETSTATE, 1, 0);
    aButton.Click;
    fLastPressedButton := aButton;
    TmrPressed.Enabled := true;
  end;
end;

procedure TFrmCalc.TmrPressedTimer(Sender: TObject);
begin
  TmrPressed.Enabled := false;
  if Assigned(fLastPressedButton) then
  begin
    fLastPressedButton.Perform(BM_SETSTATE, 0, 0);
    fLastPressedButton := nil;
  end;
end;

initialization
  FormatSettings := TFormatSettings.Create('en_US');

end.
