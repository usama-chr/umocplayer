unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LCLTranslator, DefaultTranslator;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

  OldMusicDir, ItemToCheck : String;

  i, k : integer;

  resourcestring
    SMessagePathChanged = 'The path has been changed, starting to update the file list';

implementation

{$R *.lfm}

{ TForm2 }

Uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  OldMusicDir := Form2.Edit1.Text;
  If DirectoryExists (OldMusicDir) = true then
     begin
       Form2.SelectDirectoryDialog1.InitialDir:=OldMusicDir;
     end;
  If Form2.SelectDirectoryDialog1.Execute=true then
     begin
       Form2.Edit1.Text:=Form2.SelectDirectoryDialog1.FileName;
       If Form2.Edit1.Text <> OldMusicDir then
          begin
            OldMusicDir := Form2.Edit1.Text;
            ShowMessage (SMessagePathChanged);
            MusicFolder := Form2.Edit1.Text + '/';
            Form1.Button2.Click;

          end;
     end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  For i := 0 to Form1.ListBox2.Items.Count-1 do
      begin
        if i <= Form1.ListBox2.Items.Count-1 then
           begin
                ItemToCheck := Form1.ListBox2.Items[i];
                For k := 0 to Form1.ListBox2.Items.Count-1 do
                    begin
                         if k <= Form1.ListBox2.Items.Count-1 then
                            begin
                                 if (ItemToCheck = Form1.ListBox2.Items[k]) and (k <> i) then
                                    begin
                                         Form1.ListBox2.Items.Delete(k);
                                    end;
                            end;
                    end;

           end;
      end;
  Form1.Button9.Click;
  UpdateShortPlaylist;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Form2.SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  If Form2.SaveDialog1.Execute = true then Form1.ListBox2.Items.SaveToFile(Form2.SaveDialog1.FileName);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Form2.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  If Form2.OpenDialog1.Execute = true then
     begin
          Unit1.PlayListPath:=Form2.OpenDialog1.FileName;
          LoadPlaylist;
     end;

end;

procedure TForm2.CheckBox2Change(Sender: TObject);
begin
  //переименование кнопок. Нужно для того случая, если названия юникодными символами отображаются криво
  // Renaming buttons. This is needed for cases where the Unicode names do not display correctly.
  if Form2.CheckBox2.Checked = false then
     begin
          Form1.Button4.Caption := '||';
          Form1.Button13.Caption := '<<';
          Form1.Button5.Caption := '[]';
          Form1.Button12.Caption := '>>';
          Form1.CheckBox2.Caption:= 'RND';
     end
  else
     begin
          Form1.Button4.Caption := '⏸';
          Form1.Button13.Caption := '⏮';
          Form1.Button5.Caption := '⏹';
          Form1.Button12.Caption := '⏭';
          Form1.CheckBox2.Caption:= '🔀';
     end;
end;

procedure TForm2.CheckBox3Change(Sender: TObject);
begin
  if Form2.CheckBox3.Checked = true then ProgramLog := true else ProgramLog := false;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
  GeniusToken := Form2.Edit2.Text;
end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  If Form2.Edit1.Text <> OldMusicDir then
          begin
            OldMusicDir := Form2.Edit1.Text;
            ShowMessage (SMessagePathChanged);
            MusicFolder := Form2.Edit1.Text + '/';
            Form1.Button2.Click;

          end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  OldMusicDir := Form2.Edit1.Text;
end;

end.

