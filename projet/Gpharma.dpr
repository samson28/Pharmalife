program Gpharma;

uses
  Forms,
  Pharmalife in 'Pharmalife.pas' {Authentification},
  UAcceuil in 'UAcceuil.pas' {Acceuil},
  UMenu in 'UMenu.pas' {MenuGenerale},
  DmPharmacie in 'DmPharmacie.pas' {DmPharma: TDataModule},
  UStock in 'UStock.pas' {Stock: TFrame},
  UFVente in 'UFVente.pas' {FVente: TFrame},
  UFPersonne in 'UFPersonne.pas' {FPersonne: TFrame},
  UPropos in 'UPropos.pas' {Apropos},
  UVJ in 'UVJ.pas' {EtatVente: TQuickRep},
  UFacture in 'UFacture.pas' {Recu: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAcceuil, Acceuil);
  Application.CreateForm(TMenuGenerale, MenuGenerale);
  Application.CreateForm(TAuthentification, Authentification);
  Application.CreateForm(TDmPharma, DmPharma);
  Application.CreateForm(TApropos, Apropos);
  Application.CreateForm(TEtatVente, EtatVente);
  Application.CreateForm(TRecu, Recu);
  Application.Run;
end.
