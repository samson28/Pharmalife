unit UStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBCtrls, StdCtrls, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  Mask, DB, Buttons;

type
  TStock = class(TFrame)
    PageStock: TPageControl;
    TbShtProduit: TTabSheet;
    DBGrid1: TDBGrid;
    TbShtExplr: TTabSheet;
    LbResRech: TLabel;
    LbProdt: TLabel;
    LbPrx: TLabel;
    LbDtePrem: TLabel;
    ImgBoit: TImage;
    GbxGesExemle: TGroupBox;
    LbIdentifiant: TLabel;
    LbProduit: TLabel;
    LbPrix: TLabel;
    LbNbrExplr: TLabel;
    LbDatePeremption: TLabel;
    LbFournisseur: TLabel;
    LbRayon: TLabel;
    DBLkupCbxPro: TDBLookupComboBox;
    DBLukCbxFournisseur: TDBLookupComboBox;
    DBLkupCbxRayon: TDBLookupComboBox;
    GrpBRech: TGroupBox;
    LbSuiDesign: TLabel;
    LbSaisir: TLabel;
    EdSaisir: TEdit;
    BtModifier: TButton;
    GrpBxListe: TGroupBox;
    DBGrdList: TDBGrid;
    DBNvgList: TDBNavigator;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    TbShtFmllRay: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid4: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure EdSaisirChange(Sender: TObject);
    procedure TbShtExplrEnter(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation

uses DmPharmacie;

{$R *.dfm}

procedure TStock.Panel8Click(Sender: TObject);
begin
DmPharma.TProduit.Post;
end;

procedure TStock.Panel9Click(Sender: TObject);
begin
DmPharma.TProduit.delete;
end;

procedure TStock.Panel10Click(Sender: TObject);
begin
DmPharma.TFamille.post ;
end;

procedure TStock.Panel11Click(Sender: TObject);
begin
DmPharma.TFamille.Delete;
end;

procedure TStock.Panel12Click(Sender: TObject);
begin
DmPharma.TRayon.Post;
end;

procedure TStock.Panel13Click(Sender: TObject);
begin
DmPharma.TRayon.delete;
end;

procedure TStock.BitBtn1Click(Sender: TObject);
begin
DmPharma.TProduit.Insert;
end;

procedure TStock.BitBtn2Click(Sender: TObject);
begin
DmPharma.TProduit.Post;
end;

procedure TStock.BitBtn3Click(Sender: TObject);
begin
DmPharma.TProduit.Delete;
end;

procedure TStock.BitBtn4Click(Sender: TObject);
begin
DmPharma.TProduit.Refresh;
end;

procedure TStock.BitBtn5Click(Sender: TObject);
begin
DmPharma.TFamille.Insert;
end;

procedure TStock.BitBtn6Click(Sender: TObject);
begin
DmPharma.TFamille.Post;
end;

procedure TStock.BitBtn7Click(Sender: TObject);
begin
DmPharma.TFamille.Delete;
end;

procedure TStock.BitBtn8Click(Sender: TObject);
begin
DmPharma.TFamille.Refresh;
end;

procedure TStock.BitBtn9Click(Sender: TObject);
begin
DmPharma.TRayon.Insert;
end;

procedure TStock.BitBtn10Click(Sender: TObject);
begin
DmPharma.TRayon.Post;
end;

procedure TStock.BitBtn11Click(Sender: TObject);
begin
DmPharma.TRayon.Delete;
end;

procedure TStock.BitBtn12Click(Sender: TObject);
begin
DmPharma.TRayon.Refresh;
end;

procedure TStock.Panel5Click(Sender: TObject);
begin
DmPharma.TExemplaire.Insert;

end;

procedure TStock.Panel6Click(Sender: TObject);
begin
DmPharma.TExemplaire.Post;
end;

procedure TStock.Panel7Click(Sender: TObject);
begin
DmPharma.TExemplaire.Delete;
end;

procedure TStock.EdSaisirChange(Sender: TObject);
begin

if EdSaisir.Text <> '' then
        BEGIN
        DmPharma.QRechExemplaire.ParamByName('p3').AsInteger :=  strtoint( EdSaisir.Text) ;
       DmPharma.QRechExemplaire.Active := true;
       END
       else  DmPharma.QRechExemplaire.Active := false;
end;

procedure TStock.TbShtExplrEnter(Sender: TObject);
begin
DmPharma.TFournisseur.Active := true;
end;

end.
