object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
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
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel5: TPanel
        Left = 750
        Top = 0
        Width = 249
        Height = 474
        Align = alRight
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 0
        object SpeedButton11: TSpeedButton
          Left = 14
          Top = 16
          Width = 227
          Height = 43
          Caption = 'Adaugare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton11Click
        end
        object SpeedButton12: TSpeedButton
          Left = 14
          Top = 80
          Width = 227
          Height = 43
          Caption = 'Salvare actualizare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton12Click
        end
        object SpeedButton13: TSpeedButton
          Left = 14
          Top = 145
          Width = 227
          Height = 43
          Caption = 'Actualizare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton13Click
        end
        object SpeedButton14: TSpeedButton
          Left = 14
          Top = 209
          Width = 227
          Height = 43
          Caption = 'Eliminare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton14Click
        end
        object SpeedButton15: TSpeedButton
          Left = 14
          Top = 273
          Width = 227
          Height = 43
          Caption = 'Afisare profesori'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton15Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 750
        Height = 474
        Align = alClient
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 1
        object Label6: TLabel
          Left = 8
          Top = 148
          Width = 89
          Height = 19
          Caption = 'Experienta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 200
          Width = 32
          Height = 19
          Caption = 'Gen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 40
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
        object Label13: TLabel
          Left = 8
          Top = 93
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
        object Label14: TLabel
          Left = 8
          Top = 441
          Width = 57
          Height = 19
          Caption = 'Adresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 249
          Width = 62
          Height = 19
          Caption = 'Telefon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 8
          Top = 297
          Width = 45
          Height = 19
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 394
          Width = 106
          Height = 19
          Caption = 'Data nasterii'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 302
          Top = 394
          Width = 140
          Height = 19
          Caption = 'Data inregistrarii'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton19: TSpeedButton
          Left = 315
          Top = 140
          Width = 34
          Height = 29
          Caption = '...'
          OnClick = SpeedButton19Click
        end
        object Label1: TLabel
          Left = 8
          Top = 345
          Width = 19
          Height = 19
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 103
          Top = 32
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit9: TEdit
          Left = 103
          Top = 85
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit10: TEdit
          Left = 103
          Top = 241
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit11: TEdit
          Left = 103
          Top = 289
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit12: TEdit
          Left = 87
          Top = 433
          Width = 540
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DateTimePicker3: TDateTimePicker
          Left = 120
          Top = 386
          Width = 171
          Height = 27
          Date = 44404.562739756950000000
          Time = 44404.562739756950000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DateTimePicker4: TDateTimePicker
          Left = 456
          Top = 386
          Width = 171
          Height = 27
          Date = 44404.562739756950000000
          Time = 44404.562739756950000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ComboBox2: TComboBox
          Left = 103
          Top = 192
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TextHint = 'Alege genul'
          Items.Strings = (
            'Masculin'
            'Feminin')
        end
        object Panel8: TPanel
          Left = 497
          Top = 11
          Width = 225
          Height = 297
          TabOrder = 8
          object SpeedButton20: TSpeedButton
            Left = 0
            Top = 256
            Width = 225
            Height = 41
            Caption = 'selecteaza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton20Click
          end
          object DBGrid4: TDBGrid
            Left = 1
            Top = 1
            Width = 223
            Height = 256
            Align = alTop
            DataSource = dm.DSQexperienta
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'denumire_exp'
                Title.Caption = 'EXPERIENTA'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 205
                Visible = True
              end>
          end
        end
        object Edit14: TEdit
          Left = 103
          Top = 140
          Width = 218
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object Edit1: TEdit
          Left = 103
          Top = 337
          Width = 246
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel7: TPanel
        Left = 0
        Top = 373
        Width = 999
        Height = 101
        Align = alBottom
        Color = clAqua
        ParentBackground = False
        TabOrder = 0
        object SpeedButton16: TSpeedButton
          Left = 480
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
          OnClick = SpeedButton16Click
        end
        object SpeedButton17: TSpeedButton
          Left = 728
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
          OnClick = SpeedButton17Click
        end
        object SpeedButton18: TSpeedButton
          Left = 456
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
          OnClick = SpeedButton18Click
        end
        object GroupBox2: TGroupBox
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
          object RB3: TRadioButton
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
          object RB4: TRadioButton
            Left = 157
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Dupa experienta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Edit13: TEdit
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
            OnChange = Edit13Change
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 999
        Height = 373
        Align = alClient
        DataSource = dm.DSQprofesor
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUME'
            Title.Alignment = taCenter
            Title.Caption = 'Nume'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRENUME'
            Title.Alignment = taCenter
            Title.Caption = 'Prenume'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'denumire_exp'
            Title.Alignment = taCenter
            Title.Caption = 'Experienta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GEN'
            Title.Alignment = taCenter
            Title.Caption = 'Gen'
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
            FieldName = 'TELEFON'
            Title.Alignment = taCenter
            Title.Caption = 'Telefon'
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
            FieldName = 'EMAIL'
            Title.Alignment = taCenter
            Title.Caption = 'Email'
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
            FieldName = 'DATA_NAST'
            Title.Alignment = taCenter
            Title.Caption = 'Data nasterii'
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
            FieldName = 'DATA_INREG'
            Title.Alignment = taCenter
            Title.Caption = 'Data inregistrarii'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADRESA'
            Title.Alignment = taCenter
            Title.Caption = 'Adresa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
    end
  end
end
