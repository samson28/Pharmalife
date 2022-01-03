unit UFPersonne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Mask, DBCtrls,
  Buttons;

type
  TFPersonne = class(TFrame)
    PagePersonne: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet1: TTabSheet;
    DBGrid6: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBGridOP: TDBGrid;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    procedure Panel14Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure PanFRAClick(Sender: TObject);
    procedure PanelPanFRSClick(Sender: TObject);
    procedure PanCLAClick(Sender: TObject);
    procedure PanCLSClick(Sender: TObject);
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
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation

uses DmPharmacie;

{$R *.dfm}

procedure TFPersonne.Panel14Click(Sender: TObject);
begin
  DmPharma.TOperateur.Post;
end;

procedure TFPersonne.Panel15Click(Sender: TObject);
begin
DmPharma.TOperateur.Delete;
DmPharma.TOperateur.Refresh;
end;

procedure TFPersonne.PanFRAClick(Sender: TObject);
begin
DMPharma.TFournisseur.Post;
DMPharma.TFournisseur.Refresh;
end;

procedure TFPersonne.PanelPanFRSClick(Sender: TObject);
begin
DMPharma.TFournisseur.delete;
DMPharma.TFournisseur.Refresh;
end;

procedure TFPersonne.PanCLAClick(Sender: TObject);
begin
DmPharma.TClient.Post;
DmPharma.TClient.Refresh;
end;

procedure TFPersonne.PanCLSClick(Sender: TObject);
begin
DmPharma.TClient.delete;
DmPharma.TClient.Refresh;
end;

procedure TFPersonne.BitBtn1Click(Sender: TObject);
begin
DmPharma.TOperateur.Insert;
end;

procedure TFPersonne.BitBtn2Click(Sender: TObject);
begin
DmPharma.TOperateur.Post;
end;

procedure TFPersonne.BitBtn3Click(Sender: TObject);
begin
DmPharma.TOperateur.Delete;
end;

procedure TFPersonne.BitBtn4Click(Sender: TObject);
begin
DmPharma.TOperateur.Refresh;
end;

procedure TFPersonne.BitBtn5Click(Sender: TObject);
begin
DmPharma.TFournisseur.Insert;
end;

procedure TFPersonne.BitBtn6Click(Sender: TObject);
begin
DmPharma.TFournisseur.Post;
end;

procedure TFPersonne.BitBtn7Click(Sender: TObject);
begin
DmPharma.TFournisseur.Delete;
end;

procedure TFPersonne.BitBtn8Click(Sender: TObject);
begin
DmPharma.TFournisseur.Refresh;
end;

procedure TFPersonne.BitBtn9Click(Sender: TObject);
begin
DmPharma.TClient.Insert;
end;

procedure TFPersonne.BitBtn10Click(Sender: TObject);
begin
DmPharma.TClient.Post;
end;

procedure TFPersonne.BitBtn11Click(Sender: TObject);
begin
DmPharma.TClient.Delete;
end;

procedure TFPersonne.BitBtn12Click(Sender: TObject);
begin
DmPharma.TClient.Refresh;
end;

end.
