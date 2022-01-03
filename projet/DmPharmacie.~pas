unit DmPharmacie;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmPharma = class(TDataModule)
    PHARMACIE: TDatabase;
    TDepense: TTable;
    DsDepense: TDataSource;
    TDetailvente: TTable;
    DsDetailVente: TDataSource;
    TExemplaire: TTable;
    DsExemplaire: TDataSource;
    TFournisseur: TTable;
    DsFournisseur: TDataSource;
    QLogin: TQuery;
    DsLog: TDataSource;
    TFournisseurIDFOURNISSEUR: TFloatField;
    TFournisseurRAISON_SOCIALE: TStringField;
    TFournisseurTELEPHONE: TFloatField;
    TFournisseurADRESSE: TStringField;
    TOperateur: TTable;
    DasTOperateur: TDataSource;
    TClient: TTable;
    DsTClient: TDataSource;
    TProduit: TTable;
    DsTProduit: TDataSource;
    TProduitCODEPROD: TIntegerField;
    TProduitIDFAMILLE: TFloatField;
    TProduitDESIGNATIONPROD: TStringField;
    TProduitDOSAGE: TFloatField;
    TProduitQTE_SEUIL: TFloatField;
    TProduitFORME: TStringField;
    TFamille: TTable;
    DsTFamille: TDataSource;
    TFamilleIDFAMILLE: TFloatField;
    TFamilleLIBFAMILLE: TStringField;
    TRayon: TTable;
    DsTRayon: TDataSource;
    TRayonIDRAY: TFloatField;
    TRayonLIBRAY: TStringField;
    TOperateurIDOPERAT: TIntegerField;
    TOperateurNOM_OPERAT: TStringField;
    TOperateurPREN_OPERAT: TStringField;
    TOperateurSEXE_OPERAT: TStringField;
    TOperateurTEL_OPERAT: TFloatField;
    TOperateurLOGIN: TStringField;
    TOperateurPASSWORD: TStringField;
    TClientIDCLT: TIntegerField;
    TClientNOMCLT: TStringField;
    TClientPRENCLT: TStringField;
    TClientSEXECLT: TStringField;
    TClientTEL: TIntegerField;
    QRechExemplaire: TQuery;
    DsRechExemplaire: TDataSource;
    TVente: TTable;
    DsVente: TDataSource;
    TDetail_Vente: TTable;
    DsDetail_Vente: TDataSource;
    QVJ: TQuery;
    DsQVJ: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DmPharma: TDmPharma;

implementation

{$R *.dfm}

end.
