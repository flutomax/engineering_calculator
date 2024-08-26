object FrmCalc: TFrmCalc
  Left = 359
  Top = 176
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1085#1078#1077#1085#1077#1088#1085#1099#1081' '#1082#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 231
  ClientWidth = 316
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnMC: TButton
    Left = 272
    Top = 61
    Width = 30
    Height = 30
    Caption = 'MC'
    TabOrder = 41
    OnClick = BtnMCClick
  end
  object BtnMR: TButton
    Left = 272
    Top = 93
    Width = 30
    Height = 30
    Caption = 'MR'
    TabOrder = 42
    OnClick = BtnMRClick
  end
  object BtnMS: TButton
    Left = 272
    Top = 125
    Width = 30
    Height = 30
    Caption = 'MS'
    TabOrder = 43
    OnClick = BtnMSClick
  end
  object BtnMP: TButton
    Left = 272
    Top = 157
    Width = 30
    Height = 30
    Caption = 'M+'
    TabOrder = 44
    OnClick = BtnMPClick
  end
  object BtnBackSpace: TButton
    Left = 208
    Top = 61
    Width = 62
    Height = 30
    Caption = #9003
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnBackSpaceClick
  end
  object BtnC: TButton
    Left = 144
    Top = 61
    Width = 62
    Height = 30
    Caption = 'C'
    TabOrder = 3
    OnClick = BtnCClick
  end
  object Editor: TEdit
    Left = 8
    Top = 4
    Width = 294
    Height = 21
    Alignment = taRightJustify
    TabOrder = 1
    Text = '0'
  end
  object Btn4: TButton
    Left = 144
    Top = 125
    Width = 30
    Height = 30
    Caption = '4'
    TabOrder = 4
    OnClick = Btn4Click
  end
  object Btn8: TButton
    Left = 176
    Top = 93
    Width = 30
    Height = 30
    Caption = '8'
    TabOrder = 5
    OnClick = Btn8Click
  end
  object Btn9: TButton
    Left = 208
    Top = 93
    Width = 30
    Height = 30
    Caption = '9'
    TabOrder = 6
    OnClick = Btn9Click
  end
  object Btn7: TButton
    Left = 144
    Top = 93
    Width = 30
    Height = 30
    Caption = '7'
    TabOrder = 7
    OnClick = Btn7Click
  end
  object Btn5: TButton
    Left = 176
    Top = 125
    Width = 30
    Height = 30
    Caption = '5'
    TabOrder = 8
    OnClick = Btn5Click
  end
  object Btn6: TButton
    Left = 208
    Top = 125
    Width = 30
    Height = 30
    Caption = '6'
    TabOrder = 9
    OnClick = Btn6Click
  end
  object Btn1: TButton
    Left = 144
    Top = 157
    Width = 30
    Height = 30
    Caption = '1'
    TabOrder = 10
    OnClick = Btn1Click
  end
  object Btn2: TButton
    Left = 176
    Top = 157
    Width = 30
    Height = 30
    Caption = '2'
    TabOrder = 11
    OnClick = Btn2Click
  end
  object Btn3: TButton
    Left = 208
    Top = 157
    Width = 30
    Height = 30
    Caption = '3'
    TabOrder = 12
    OnClick = Btn3Click
  end
  object Btn0: TButton
    Left = 144
    Top = 189
    Width = 30
    Height = 30
    Caption = '0'
    TabOrder = 13
    OnClick = Btn0Click
  end
  object BtnMul: TButton
    Left = 240
    Top = 125
    Width = 30
    Height = 30
    Caption = '*'
    TabOrder = 14
    OnClick = BtnMulClick
  end
  object BtnSign: TButton
    Left = 208
    Top = 189
    Width = 30
    Height = 30
    Caption = '+/-'
    TabOrder = 15
    OnClick = BtnSignClick
  end
  object BtnDiv: TButton
    Left = 240
    Top = 93
    Width = 30
    Height = 30
    Caption = '/'
    TabOrder = 16
    OnClick = BtnDivClick
  end
  object BtnSub: TButton
    Left = 240
    Top = 157
    Width = 30
    Height = 30
    Caption = '-'
    TabOrder = 17
    OnClick = BtnSubClick
  end
  object BtnAdd: TButton
    Left = 240
    Top = 189
    Width = 30
    Height = 30
    Caption = '+'
    TabOrder = 18
    OnClick = BtnAddClick
  end
  object BtnResult: TButton
    Left = 272
    Top = 189
    Width = 30
    Height = 30
    Caption = '='
    TabOrder = 19
    OnClick = BtnResultClick
  end
  object BtnExp: TButton
    Left = 8
    Top = 61
    Width = 30
    Height = 30
    Caption = 'exp'
    TabOrder = 20
    OnClick = BtnExpClick
  end
  object BtnPow: TButton
    Left = 8
    Top = 93
    Width = 30
    Height = 30
    Caption = 'x^y'
    TabOrder = 21
    OnClick = BtnPowClick
  end
  object BtnLn: TButton
    Left = 40
    Top = 61
    Width = 30
    Height = 30
    Caption = 'ln'
    TabOrder = 22
    OnClick = BtnLnClick
  end
  object BtnLog: TButton
    Left = 40
    Top = 93
    Width = 30
    Height = 30
    Caption = 'log'
    TabOrder = 23
    OnClick = BtnLogClick
  end
  object BtnPi: TButton
    Left = 40
    Top = 157
    Width = 30
    Height = 30
    Caption = 'pi'
    TabOrder = 24
    OnClick = BtnPiClick
  end
  object BtnSqr: TButton
    Left = 8
    Top = 125
    Width = 30
    Height = 30
    Caption = 'x^2'
    TabOrder = 25
    OnClick = BtnSqrClick
  end
  object BtnSqrt: TButton
    Left = 8
    Top = 157
    Width = 30
    Height = 30
    Caption = 'sqrt'
    TabOrder = 26
    OnClick = BtnSqrtClick
  end
  object BtnArcCos: TButton
    Left = 108
    Top = 61
    Width = 30
    Height = 30
    Caption = 'acos'
    TabOrder = 27
    OnClick = BtnArcCosClick
  end
  object BtnArcSin: TButton
    Left = 108
    Top = 93
    Width = 30
    Height = 30
    Caption = 'asin'
    TabOrder = 28
    OnClick = BtnArcSinClick
  end
  object BtnArcTan: TButton
    Left = 108
    Top = 125
    Width = 30
    Height = 30
    Caption = 'atan'
    TabOrder = 29
    OnClick = BtnArcTanClick
  end
  object BtnCos: TButton
    Left = 76
    Top = 61
    Width = 30
    Height = 30
    Caption = 'cos'
    TabOrder = 30
    OnClick = BtnCosClick
  end
  object BtnSin: TButton
    Left = 76
    Top = 93
    Width = 30
    Height = 30
    Caption = 'sin'
    TabOrder = 31
    OnClick = BtnSinClick
  end
  object BtnTan: TButton
    Left = 76
    Top = 125
    Width = 30
    Height = 30
    Caption = 'tan'
    TabOrder = 32
    OnClick = BtnTanClick
  end
  object RbDegree: TRadioButton
    AlignWithMargins = True
    Left = 8
    Top = 31
    Width = 62
    Height = 17
    Caption = #1075#1088#1072#1076#1091#1089#1099
    Checked = True
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 33
    TabStop = True
  end
  object RbRad: TRadioButton
    AlignWithMargins = True
    Left = 79
    Top = 31
    Width = 65
    Height = 17
    Caption = #1088#1072#1076#1080#1072#1085#1099
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 34
  end
  object RbGrad: TRadioButton
    AlignWithMargins = True
    Left = 152
    Top = 31
    Width = 60
    Height = 17
    Caption = #1075#1088#1072#1076#1099
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 35
  end
  object Btn1DivX: TButton
    Left = 40
    Top = 125
    Width = 30
    Height = 30
    Caption = '1/x'
    TabOrder = 36
    OnClick = Btn1DivXClick
  end
  object BtnPoint: TButton
    Left = 176
    Top = 189
    Width = 30
    Height = 30
    Caption = '.'
    TabOrder = 37
    OnClick = BtnPointClick
  end
  object PnlMem: TPanel
    Left = 272
    Top = 31
    Width = 30
    Height = 30
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object BtnCtg: TButton
    Left = 76
    Top = 157
    Width = 30
    Height = 30
    Caption = 'ctg'
    TabOrder = 38
    OnClick = BtnCtgClick
  end
  object BtnActg: TButton
    Left = 108
    Top = 157
    Width = 30
    Height = 30
    Caption = 'actg'
    TabOrder = 39
    OnClick = BtnActgClick
  end
  object BtnFmod: TButton
    Left = 8
    Top = 189
    Width = 30
    Height = 30
    Caption = 'fmod'
    TabOrder = 40
    OnClick = BtnFmodClick
  end
  object BtnE: TButton
    Left = 40
    Top = 189
    Width = 30
    Height = 30
    Caption = 'e'
    TabOrder = 45
    OnClick = BtnEClick
  end
  object TmrPressed: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TmrPressedTimer
    Left = 116
  end
end
