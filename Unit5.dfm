object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 502
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1007
    Height = 502
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel2: TPanel
        Left = 752
        Top = 0
        Width = 247
        Height = 474
        Align = alRight
        Color = clNavy
        ParentBackground = False
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = 14
          Top = 80
          Width = 227
          Height = 43
          Caption = 'Actualizeaza o achitare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton4: TSpeedButton
          Left = 14
          Top = 139
          Width = 227
          Height = 43
          Caption = 'Eliminare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object SpeedButton1: TSpeedButton
          Left = 14
          Top = 20
          Width = 227
          Height = 44
          Caption = 'Inregistreaza o achitare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 753
        Height = 474
        Align = alLeft
        Color = clOlive
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 104
          Width = 44
          Height = 19
          Caption = 'Clasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 347
          Top = 56
          Width = 113
          Height = 19
          Caption = 'Tipul achitarii'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 19
          Width = 47
          Height = 19
          Caption = 'Nume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 58
          Width = 73
          Height = 19
          Caption = 'Prenume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 5
          Top = 147
          Width = 111
          Height = 19
          Caption = 'Data achitarii'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 349
          Top = 101
          Width = 108
          Height = 19
          Caption = 'Suma depusa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 350
          Top = 14
          Width = 117
          Height = 19
          Caption = 'Suma contract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 350
          Top = 147
          Width = 110
          Height = 19
          Caption = 'Suma ramasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 123
          Top = 11
          Width = 186
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 124
          Top = 53
          Width = 185
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DateTimePicker1: TDateTimePicker
          Left = 124
          Top = 141
          Width = 185
          Height = 27
          Date = 44404.562739756950000000
          Time = 44404.562739756950000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 482
          Top = 50
          Width = 185
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TextHint = 'Alege tipul achitarii'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Lunar'
            'Trimestrial'
            'Semestrial'
            'Anual')
        end
        object Panel4: TPanel
          Left = 1
          Top = 215
          Width = 751
          Height = 258
          Align = alBottom
          TabOrder = 4
          object SpeedButton10: TSpeedButton
            Left = 0
            Top = 212
            Width = 249
            Height = 46
            Caption = 'Inregistrare'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton10Click
          end
          object SpeedButton5: TSpeedButton
            Left = 248
            Top = 212
            Width = 241
            Height = 46
            Caption = 'Acualizare'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton5Click
          end
          object SpeedButton9: TSpeedButton
            Left = 488
            Top = 212
            Width = 240
            Height = 46
            Caption = 'Elimina'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton9Click
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 749
            Height = 213
            Align = alTop
            DataSource = dm.DSQtaxa
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'nume'
                Title.Caption = 'Nume'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 147
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prenume'
                Title.Caption = 'Prenume'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clasa'
                Title.Caption = 'Clasa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tip_achitare'
                Title.Caption = 'Tipul achitarii'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'suma'
                Title.Caption = 'Suma'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'suma_depusa'
                Title.Caption = 'suma depusa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'suma_ramasa'
                Title.Caption = 'spre achitare'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'data_achit'
                Title.Caption = 'data achitarii'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 86
                Visible = True
              end>
          end
        end
        object Edit4: TEdit
          Left = 123
          Top = 96
          Width = 186
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit5: TEdit
          Left = 481
          Top = 96
          Width = 186
          Height = 27
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit6: TEdit
          Left = 481
          Top = 6
          Width = 186
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit7: TEdit
          Left = 481
          Top = 139
          Width = 186
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 373
        Width = 999
        Height = 101
        Align = alBottom
        Color = clAqua
        ParentBackground = False
        TabOrder = 0
        object SpeedButton6: TSpeedButton
          Left = 376
          Top = 32
          Width = 233
          Height = 46
          Caption = 'SELECTEAZA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 640
          Top = 32
          Width = 233
          Height = 46
          Caption = 'ANULEAZA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 344
          Top = 32
          Width = 233
          Height = 46
          Caption = 'ELIMINA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 32
          Top = 8
          Width = 273
          Height = 89
          Caption = 'Cautare rapida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RB1: TRadioButton
            Left = 16
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Dupa nume'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object RB2: TRadioButton
            Left = 157
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Dupa clasa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Edit1: TEdit
            Left = 16
            Top = 47
            Width = 241
            Height = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnChange = Edit1Change
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 999
        Height = 373
        Align = alClient
        DataSource = dm.DSQelev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nume'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prenume'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nume_clasa'
            Title.Alignment = taCenter
            Title.Caption = 'clasa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gen'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefon'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_nast'
            Title.Alignment = taCenter
            Title.Caption = 'data nasterii'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_inreg'
            Title.Alignment = taCenter
            Title.Caption = 'data inregistrarii'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'adresa'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 277
            Visible = True
          end>
      end
    end
  end
end
