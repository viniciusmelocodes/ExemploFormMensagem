unit UnitExemplo;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TFormExemplo = class(TForm)
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    procedure mostrarMensagem(sMensagem: String);

    procedure ocultarMensagem;

  public
    { Public declarations }
  end;

var
  FormExemplo: TFormExemplo;
  FormMensagem: TForm;

implementation

{$R *.dfm}

{ TFormPrincipal }

procedure TFormExemplo.btnExecutarClick(Sender: TObject);
begin
  mostrarMensagem('Teste de Formulário de Mensagens para Substituição do JvGIFAnimator.');
  Sleep(5000);
  ocultarMensagem;
end;

procedure TFormExemplo.FormShow(Sender: TObject);
begin
  Self.Caption := Application.Title;
end;

procedure TFormExemplo.mostrarMensagem(sMensagem: String);
var
  LabelMensagem: TLabel;
begin
  if FormMensagem = nil then
  begin
    FormMensagem                 := TForm.Create(Self);
    FormMensagem.Position        := Self.Position;
    FormMensagem.WindowState     := wsNormal;
    FormMensagem.AlphaBlend      := True;
    FormMensagem.AlphaBlendValue := 100;
    FormMensagem.Color           := clBlack;
    FormMensagem.BorderStyle     := bsNone;

    FormMensagem.Left            := Self.Left;
    FormMensagem.Top             := Self.Top;
    FormMensagem.Width           := Self.Width;
    FormMensagem.Height          := Self.Height;

    LabelMensagem                := TLabel.Create(FormMensagem);
    LabelMensagem.Parent         := FormMensagem;
    LabelMensagem.Align          := alClient;
    LabelMensagem.Layout         := tlCenter;
    LabelMensagem.Alignment      := taCenter;
    LabelMensagem.Font.Color     := clWhite;
    LabelMensagem.Font.Style     := [fsBold];
    LabelMensagem.Font.Size      := 26;
    LabelMensagem.WordWrap       := True;

    FormMensagem.Show;
    FormMensagem.BringToFront;
  end;

  TLabel(FormMensagem.Components[0]).Caption := 'Aguarde...' + sLineBreak + sMensagem;
  Application.ProcessMessages;
end;

procedure TFormExemplo.ocultarMensagem;
begin
  if FormMensagem <> nil then
  begin
    FormMensagem.Close;
    FreeAndNil(FormMensagem);
  end;
end;

end.
