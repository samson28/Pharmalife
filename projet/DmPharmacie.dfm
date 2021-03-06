object DmPharma: TDmPharma
  OldCreateOrder = False
  Left = 623
  Top = 279
  Height = 417
  Width = 730
  object PHARMACIE: TDatabase
    AliasName = 'ODBCPharmacie'
    Connected = True
    DatabaseName = 'PHARMACIE'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa'
      'PASSWORD=12345')
    SessionName = 'Default'
    Left = 224
    Top = 8
  end
  object TDepense: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.DEPENSE'
    Left = 304
    Top = 72
  end
  object DsDepense: TDataSource
    DataSet = TDepense
    Left = 368
    Top = 72
  end
  object TDetailvente: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.DETAIL_VENTE'
    Left = 440
    Top = 72
  end
  object DsDetailVente: TDataSource
    DataSet = TDetailvente
    Left = 520
    Top = 72
  end
  object TExemplaire: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.EXEMPLAIRE'
    Left = 32
    Top = 136
  end
  object DsExemplaire: TDataSource
    DataSet = TExemplaire
    Left = 104
    Top = 136
  end
  object TFournisseur: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.FOURNISSEUR'
    Left = 296
    Top = 136
    object TFournisseurIDFOURNISSEUR: TFloatField
      DisplayWidth = 24
      FieldName = 'IDFOURNISSEUR'
    end
    object TFournisseurRAISON_SOCIALE: TStringField
      DisplayWidth = 36
      FieldName = 'RAISON_SOCIALE'
      Required = True
      Size = 30
    end
    object TFournisseurTELEPHONE: TFloatField
      DisplayWidth = 25
      FieldName = 'TELEPHONE'
      Required = True
    end
    object TFournisseurADRESSE: TStringField
      DisplayWidth = 36
      FieldName = 'ADRESSE'
      Required = True
      Size = 30
    end
  end
  object DsFournisseur: TDataSource
    DataSet = TFournisseur
    Left = 376
    Top = 136
  end
  object QLogin: TQuery
    DatabaseName = 'PHARMACIE'
    SQL.Strings = (
      'SELECT NOM_OPERAT'
      'FROM OPERATEUR'
      'WHERE LOGIN like :p1 '
      'AND PASSWORD like :p2;')
    Left = 32
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
  object DsLog: TDataSource
    DataSet = QLogin
    Left = 96
    Top = 216
  end
  object TOperateur: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.OPERATEUR'
    Left = 32
    Top = 80
    object TOperateurIDOPERAT: TIntegerField
      DisplayWidth = 19
      FieldName = 'IDOPERAT'
    end
    object TOperateurNOM_OPERAT: TStringField
      DisplayWidth = 24
      FieldName = 'NOM_OPERAT'
      Required = True
    end
    object TOperateurPREN_OPERAT: TStringField
      DisplayWidth = 27
      FieldName = 'PREN_OPERAT'
      Required = True
    end
    object TOperateurSEXE_OPERAT: TStringField
      DisplayWidth = 16
      FieldName = 'SEXE_OPERAT'
      FixedChar = True
      Size = 1
    end
    object TOperateurTEL_OPERAT: TFloatField
      DisplayWidth = 20
      FieldName = 'TEL_OPERAT'
    end
    object TOperateurLOGIN: TStringField
      DisplayWidth = 24
      FieldName = 'LOGIN'
      Required = True
    end
    object TOperateurPASSWORD: TStringField
      DisplayWidth = 20
      FieldName = 'PASSWORD'
      Required = True
      Size = 8
    end
  end
  object DasTOperateur: TDataSource
    DataSet = TOperateur
    Left = 96
    Top = 80
  end
  object TClient: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.CLIENT'
    Left = 168
    Top = 80
    object TClientIDCLT: TIntegerField
      DisplayWidth = 21
      FieldName = 'IDCLT'
    end
    object TClientNOMCLT: TStringField
      DisplayWidth = 30
      FieldName = 'NOMCLT'
    end
    object TClientPRENCLT: TStringField
      DisplayWidth = 32
      FieldName = 'PRENCLT'
    end
    object TClientSEXECLT: TStringField
      DisplayWidth = 16
      FieldName = 'SEXECLT'
      FixedChar = True
      Size = 1
    end
    object TClientTEL: TIntegerField
      DisplayWidth = 19
      FieldName = 'TEL'
    end
  end
  object DsTClient: TDataSource
    DataSet = TClient
    Left = 224
    Top = 80
  end
  object TProduit: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.PRODUIT'
    Left = 448
    Top = 136
    object TProduitCODEPROD: TIntegerField
      DisplayWidth = 24
      FieldName = 'CODEPROD'
    end
    object TProduitIDFAMILLE: TFloatField
      DisplayWidth = 23
      FieldName = 'IDFAMILLE'
      Required = True
    end
    object TProduitDESIGNATIONPROD: TStringField
      DisplayWidth = 41
      FieldName = 'DESIGNATIONPROD'
      Required = True
      FixedChar = True
      Size = 30
    end
    object TProduitDOSAGE: TFloatField
      DisplayWidth = 24
      FieldName = 'DOSAGE'
      Required = True
    end
    object TProduitQTE_SEUIL: TFloatField
      DisplayWidth = 23
      FieldName = 'QTE_SEUIL'
      Required = True
    end
    object TProduitFORME: TStringField
      DisplayWidth = 43
      FieldName = 'FORME'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object DsTProduit: TDataSource
    DataSet = TProduit
    Left = 512
    Top = 136
  end
  object TFamille: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.FAMILLE'
    Left = 168
    Top = 144
    object TFamilleIDFAMILLE: TFloatField
      DisplayWidth = 32
      FieldName = 'IDFAMILLE'
    end
    object TFamilleLIBFAMILLE: TStringField
      DisplayWidth = 44
      FieldName = 'LIBFAMILLE'
      Required = True
    end
  end
  object DsTFamille: TDataSource
    DataSet = TFamille
    Left = 224
    Top = 144
  end
  object TRayon: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.RAYON'
    Left = 168
    Top = 224
    object TRayonIDRAY: TFloatField
      DisplayWidth = 28
      FieldName = 'IDRAY'
    end
    object TRayonLIBRAY: TStringField
      DisplayWidth = 44
      FieldName = 'LIBRAY'
      Required = True
      Size = 10
    end
  end
  object DsTRayon: TDataSource
    DataSet = TRayon
    Left = 232
    Top = 224
  end
  object QRechExemplaire: TQuery
    DatabaseName = 'PHARMACIE'
    DataSource = DsExemplaire
    SQL.Strings = (
      'SELECT *'
      'FROM EXEMPLAIRE'
      'WHERE IDEXEMPL = :p3')
    Left = 312
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end>
  end
  object DsRechExemplaire: TDataSource
    DataSet = QRechExemplaire
    Left = 400
    Top = 224
  end
  object TVente: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.VENTE'
    Left = 472
    Top = 216
  end
  object DsVente: TDataSource
    DataSet = TVente
    Left = 536
    Top = 224
  end
  object TDetail_Vente: TTable
    DatabaseName = 'PHARMACIE'
    TableName = 'dbo.DETAIL_VENTE'
    Left = 608
    Top = 88
  end
  object DsDetail_Vente: TDataSource
    DataSet = TDetail_Vente
    Left = 608
    Top = 160
  end
  object QVJ: TQuery
    Active = True
    DatabaseName = 'PHARMACIE'
    SQL.Strings = (
      'SELECT * '
      
        'FROM VENTE  JOIN DETAIL_VENTE ON VENTE.IDVENTE = DETAIL_VENTE.ID' +
        'VENTE JOIN CLIENT ON VENTE.IDCLT = CLIENT.IDCLT JOIN REGLEMENT O' +
        'N REGLEMENT.IDVENTE = VENTE.IDVENTE JOIN EXEMPLAIRE ON EXEMPLAIR' +
        'E.IDEXEMPL = DETAIL_VENTE.IDEXEMPL'
      'WHERE DATE_VENTE  = GETDATE()'
      '')
    Left = 48
    Top = 296
  end
  object DsQVJ: TDataSource
    DataSet = QVJ
    Left = 104
    Top = 296
  end
end
