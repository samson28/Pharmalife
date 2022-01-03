unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls, UStock, Grids,
  DBGrids, ComCtrls, Buttons, CheckLst, UFVente, UFPersonne;

type
  TMenuGenerale = class(TForm)
    MainMenu1: TMainMenu;
    Acceuil1: TMenuItem;
    Apropos1: TMenuItem;
    Historique1: TMenuItem;
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    LoginName: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image3: TImage;
    Label1: TLabel;
    LDate: TLabel;
    Label3: TLabel;
    LHeure: TLabel;
    Image7: TImage;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Stock1: TStock;
    FVente1: TFVente;
    FPersonne1: TFPersonne;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimMenuTimer(Sender: TObject);
    procedure Acceuil1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PanFRAClick(Sender: TObject);
    procedure PanelPanFRSClick(Sender: TObject);
    procedure PanCLAClick(Sender: TObject);
    procedure PanCLSClick(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  MenuGenerale: TMenuGenerale;

implementation

uses DmPharmacie, UPropos, Pharmalife;

{$R *.dfm}

procedure TMenuGenerale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DmPharma.PHARMACIE.Close;
Application.Terminate;
end;

procedure TMenuGenerale.TimMenuTimer(Sender: TObject);
begin
LDate.Caption := Datetostr(now);
Lheure.Caption := timetostr(time);
end;

procedure TMenuGenerale.Acceuil1Click(Sender: TObject);
begin
Stock1.visible := false;
FVente1.Visible := false;
FPersonne1.visible := false;

end;

procedure TMenuGenerale.BitBtn1Click(Sender: TObject);
begin
Stock1.visible:= true;
FVente1.Visible := false;
FPersonne1.Visible := false;


DmPharma.TOperateur.Active := false;
DmPharma.TClient.Active := false;
DmPharma.TFournisseur.Active := false;
DmPharma.TExemplaire.Active := true;
DmPharma.TProduit.Active := true;
DmPharma.TFamille.Active := true;
DmPharma.TRayon.Active := true;

end;

procedure TMenuGenerale.Panel5Click(Sender: TObject);
begin
DmPharma.TExemplaire.Post;
end;

procedure TMenuGenerale.Panel10Click(Sender: TObject);
begin
DmPharma.TFamille.Post;
end;

procedure TMenuGenerale.Panel12Click(Sender: TObject);
begin
DmPharma.TRayon.Post;
end;

procedure TMenuGenerale.Panel8Click(Sender: TObject);
begin
DmPharma.TProduit.Post;
end;

procedure TMenuGenerale.Panel9Click(Sender: TObject);
begin
DmPharma.TProduit.Delete;
end;

procedure TMenuGenerale.Panel13Click(Sender: TObject);
begin
DmPharma.TRayon.Delete;
end;

procedure TMenuGenerale.Panel11Click(Sender: TObject);
begin
DmPharma.TFamille.Delete;
end;

procedure TMenuGenerale.BitBtn3Click(Sender: TObject);
begin

Stock1.Visible := false;
FPersonne1.Visible := true;
FVente1.Visible := false;

DmPharma.TExemplaire.Active := false;
DmPharma.TProduit.Active := false;
DmPharma.TFamille.Active := false;
DmPharma.TRayon.Active := false;
DmPharma.TOperateur.Active := true;
DmPharma.TClient.Active := true;
DmPharma.TFournisseur.Active := true;

end;

procedure TMenuGenerale.Panel14Click(Sender: TObject);
begin
DmPharma.TOperateur.Open;


DmPharma.TOperateur.Post;
end;

procedure TMenuGenerale.Panel15Click(Sender: TObject);
begin
DmPharma.TOperateur.Open;


DmPharma.TOperateur.delete;
end;

procedure TMenuGenerale.BitBtn2Click(Sender: TObject);
begin
Stock1.visible := false;
FVente1.Visible := true;
FPersonne1.visible := false;

DmPharma.TOperateur.Active := false;
DmPharma.TClient.Active := true;
DmPharma.TFournisseur.Active := false;
DmPharma.TExemplaire.Active := false;
DmPharma.TProduit.Active := true;
DmPharma.TFamille.Active := false;
DmPharma.TRayon.Active := false;

end;

procedure TMenuGenerale.PanFRAClick(Sender: TObject);
begin

DmPharma.TFournisseur.Open;


DmPharma.TFournisseur.delete;


end;

procedure TMenuGenerale.PanelPanFRSClick(Sender: TObject);
begin
DmPharma.TFournisseur.Open;


DmPharma.TFournisseur.delete;
end;

procedure TMenuGenerale.PanCLAClick(Sender: TObject);
begin
DmPharma.TClient.Open;


DmPharma.TClient.Post;
end;

procedure TMenuGenerale.PanCLSClick(Sender: TObject);
begin
DmPharma.TClient.Open;


DmPharma.TClient.Delete;
end;

procedure TMenuGenerale.Apropos1Click(Sender: TObject);
begin
Apropos.show;
end;

end.
