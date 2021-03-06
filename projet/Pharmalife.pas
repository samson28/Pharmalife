unit Pharmalife;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons;

type
  TAuthentification = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    EdPass: TEdit;
    BtnConnexion: TPanel;
    BtnAnnuler: TPanel;
    EdLog: TEdit;
    Panel3: TPanel;
    PanelAut: TPanel;
    LbMessage: TLabel;
    procedure BtnConnexionClick(Sender: TObject);
    procedure BtnAnnulerClick(Sender: TObject);
    procedure EdLogChange(Sender: TObject);
    procedure EdPassChange(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Authentification: TAuthentification;

implementation

uses DmPharmacie,  UAcceuil, UMenu, UVJ, URecu;

{$R *.dfm}

procedure TAuthentification.BtnConnexionClick(Sender: TObject);
begin


//verification des champs non vide

    //champ du mot de passe non vide
 if ((EdLog.Text='')and(EdPass.Text<>'')) then
  begin
      ShowMessage('Veuillez saisir le login');
      LbMessage.Caption := 'Message : Veuillez saisir le login' ;
      EdLog.SetFocus;
  end
      //champ du login non vide

    else if ((EdLog.Text<>'')and(EdPass.Text=''))then
      begin
          ShowMessage('Veuillez saisir le mot de passe');
          LbMessage.Caption := 'Message : Veuillez saisir le mot de passe' ;
          EdPass.SetFocus;
      end
            //les deux champs no vide

    else if((EdLog.Text='')and(EdPass.Text=''))then
      begin
          ShowMessage('Veuillez saisir le login et le mot de passe');
           LbMessage.Caption := 'Message : Veuillez saisir le login et le mot de passe' ;
          EdLog.SetFocus;
          
      end
            //on v?rifie le login et le mot de passe saisi

      else
    begin      //avec les login de la table operateur
                                                with DmPharma.TOperateur do
          begin
              open;

              if not Locate('LOGIN',EdLog.Text,[])then
                begin
                    ShowMessage('login inconnu!!!! Veuillez reprendre');
                    LbMessage.Caption := 'Message :login inconnu!!!! Veuillez reprendre' ;
                    EdLog.Clear;
                    EdPass.Clear;
                    EdLog.SetFocus;
                    exit;
                end;

               if not Locate('PASSWORD',EdPass.Text,[])then
                begin
                    ShowMessage('Password inconnu!!! Veuillez reprendre');
                    LbMessage.Caption := 'Message : Password inconnu!!! Veuillez reprendre' ;
                    EdPass.Clear;
                    EdLog.Clear;
                    EdPass.SetFocus;
                    exit;
                end;

                if not Locate('LOGIN;PASSWORD',VarArrayOf([EdLog.Text,EdPass.Text]),[]) then
                  begin
                       ShowMessage('Connection impossible!!! Login ou password erronn?');
                       LbMessage.Caption := 'Message : Password ou login inconnu!!! Veuillez reprendre' ;
                       EdLog.Clear;
                       EdPass.Clear;
                       EdLog.SetFocus;
                       exit;
                  end
                  else
                  begin
                     MenuGenerale.show;
                  Authentification.Hide;
                  end;

          end;
                        //DmPharma.QLogin.ExecSQL;


          end;

    end;


procedure TAuthentification.BtnAnnulerClick(Sender: TObject);
begin
EdLog.Text:='';
EdPass.Text:='';
end;

procedure TAuthentification.EdLogChange(Sender: TObject);
begin

DmPharma.QLogin.ParamByName('p1').AsString := '%' + EdLog.Text + '%';
end;

procedure TAuthentification.EdPassChange(Sender: TObject);
begin
DmPharma.QLogin.ParamByName('p2').AsString := '%' + EdPass.Text + '%';
end;

end.
