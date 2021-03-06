object dm: Tdm
  OldCreateOrder = False
  Height = 445
  Width = 760
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=scoala_2'
      'Server=DESKTOP-L6E3IPR'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object Qclasa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clasa')
    Left = 272
    Top = 8
  end
  object DSQclasa: TDataSource
    DataSet = Qclasa
    Left = 192
    Top = 8
  end
  object Qelev: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select e.*, cl.nume_clasa from elev e inner join clasa cl on e.c' +
        'lasa_id=cl.clasa_id'
      'where activ=1')
    Left = 272
    Top = 64
  end
  object DSQelev: TDataSource
    DataSet = Qelev
    Left = 192
    Top = 64
  end
  object Qedit: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update elev set nume=:nume, prenume=:prenume, clasa_id=:clasa_id' +
        ', gen=:gen, telefon=:telefon,'
      
        'email=:email, data_nast=:data_nast, data_inreg=:data_inreg, adre' +
        'sa=:adresa where elev_id=:elev_id')
    Left = 688
    Top = 32
    ParamData = <
      item
        Name = 'NUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRENUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CLASA_ID'
        ParamType = ptInput
      end
      item
        Name = 'GEN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TELEFON'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_NAST'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_INREG'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ELEV_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object Qliber: TFDQuery
    Connection = FDConnection1
    Left = 696
    Top = 96
  end
  object Qdelete: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update elev set activ=0 where elev_id=:elev_id')
    Left = 640
    Top = 32
    ParamData = <
      item
        Name = 'ELEV_ID'
        ParamType = ptInput
      end>
  end
  object Qexperienta: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from experienta')
    Left = 272
    Top = 120
  end
  object DSQexperienta: TDataSource
    DataSet = Qexperienta
    Left = 192
    Top = 120
  end
  object Qprofesor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select p.*, ex.denumire_exp from profesor p inner join experient' +
        'a ex on p.experienta_id=ex.experienta_id'
      'where activ=1')
    Left = 272
    Top = 176
  end
  object DSQprofesor: TDataSource
    DataSet = Qprofesor
    Left = 192
    Top = 176
  end
  object Qeditp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update profesor set nume=:nume, prenume=:prenume, experienta_id=' +
        ':experienta_id, gen=:gen, telefon=:telefon,'
      
        'email=:email, data_nast=:data_nast, data_inreg=:data_inreg, adre' +
        'sa=:adresa where profesor_id=:profesor_id')
    Left = 648
    Top = 96
    ParamData = <
      item
        Name = 'NUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRENUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EXPERIENTA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GEN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TELEFON'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_NAST'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_INREG'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PROFESOR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object Qtaxa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from taxa where activ=1')
    Left = 272
    Top = 240
  end
  object Qlibtaxa: TFDQuery
    Connection = FDConnection1
    Left = 704
    Top = 176
  end
  object DSQtaxa: TDataSource
    DataSet = Qtaxa
    Left = 192
    Top = 240
  end
  object Qeditt: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update taxa set clasa=:clasa, nume=:nume, prenume=:prenume, tip_' +
        'achitare=:tip_achitare,'
      
        'suma=:suma, suma_depusa=:suma_depusa, suma_ramasa=:suma_ramasa, ' +
        'data_achit=:data_achit where taxa_id=:taxa_id')
    Left = 648
    Top = 176
    ParamData = <
      item
        Name = 'CLASA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRENUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIP_ACHITARE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUMA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUMA_DEPUSA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUMA_RAMASA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_ACHIT'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TAXA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object Qnota: TFDQuery
    Connection = FDConnection1
    Left = 272
    Top = 304
  end
  object DSQnota: TDataSource
    DataSet = Qnota
    Left = 192
    Top = 304
  end
  object Qutilizator: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from utilizator where activ=1')
    Left = 272
    Top = 368
  end
  object DSQutilizator: TDataSource
    DataSet = Qutilizator
    Left = 192
    Top = 368
  end
  object R1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44417.952741747700000000
    ReportOptions.LastChange = 44417.952741747700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTELE ELEVILOR')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NUME')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 22.677180000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PRENUME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 351.496290000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DISCIPLINA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 510.236550000000000000
          Top = 22.677180000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'nume'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."nume"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 177.637910000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'prenume'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."prenume"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'disciplina'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."disciplina"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 510.236550000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'nota'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."nota"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 578.268090000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."data"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGINA [Page] DIN [TotalPages#]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MEDIA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 510.236550000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."media"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Qraport
    BCDToCurrency = False
    Left = 456
    Top = 32
  end
  object Qraport: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select e.nume, e.prenume, cl.nume_clasa, n.* from elev e inner j' +
        'oin clasa cl on e.clasa_id=cl.clasa_id'
      #9#9#9#9#9#9#9' inner join note n on n.elev_id=e.elev_id'
      'where e.elev_id=:elev_id and n.disciplina=:disciplina')
    Left = 392
    Top = 104
    ParamData = <
      item
        Name = 'ELEV_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DISCIPLINA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object Qmedia: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select avg(cast(nota as float)) as media from note n inner join ' +
        'elev e on n.elev_id=e.elev_id where e.elev_id=:elev_id and n.dis' +
        'ciplina=:disciplina')
    Left = 440
    Top = 304
    ParamData = <
      item
        Name = 'ELEV_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DISCIPLINA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DDSQmedia: TDataSource
    DataSet = Qmedia
    Left = 360
    Top = 304
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Qmedia
    BCDToCurrency = False
    Left = 480
    Top = 96
  end
end
