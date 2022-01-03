unit UFVente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, jpeg, ExtCtrls, Grids, DBGrids, Mask,
  DBCtrls, ComCtrls;

type
  TFVente = class(TFrame)
    PageVente: TPageControl;
    TabSheet4: TTabSheet;
    GrpBxInfoVente: TGroupBox;
    LbNoVente: TLabel;
    LbDatVent: TLabel;
    DBEdNoVente: TDBEdit;
    DBEdDatVente: TDBEdit;
    GrpBxInfoClien: TGroupBox;
    LbNom: TLabel;
    Label43: TLabel;
    DBGrid7: TDBGrid;
    DBEdSaisir: TDBEdit;
    PnNouveau: TPanel;
    GrpBxdtlCli: TGroupBox;
    LbNm: TLabel;
    LbPre: TLabel;
    LbTel: TLabel;
    DBEdNm: TDBEdit;
    DBEdPre: TDBEdit;
    DBEdTel: TDBEdit;
    GrpBxPrdtConcerne: TGroupBox;
    Label44: TLabel;
    GroupBox1: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel17: TPanel;
    Panel20: TPanel;
    DBGrid8: TDBGrid;
    DBEdit12: TDBEdit;
    GroupBox2: TGroupBox;
    Label50: TLabel;
    Image4: TImage;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Panel18: TPanel;
    Panel19: TPanel;
    DBEdit13: TDBEdit;
    CheckListBox1: TCheckListBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation

uses UVJ, UFacture;

{$R *.dfm}

procedure TFVente.Button1Click(Sender: TObject);
begin
EtatVente.Print;
end;

procedure TFVente.Button2Click(Sender: TObject);
begin
Recu.Print;
end;

end.
