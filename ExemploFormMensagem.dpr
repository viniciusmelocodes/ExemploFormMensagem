program ExemploFormMensagem;

uses
  Forms,
  UnitExemplo in 'UnitExemplo.pas' {FormExemplo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Formulário de Mensagens para Substituição do JvGIFAnimator';
  Application.CreateForm(TFormExemplo, FormExemplo);
  Application.Run;
end.
