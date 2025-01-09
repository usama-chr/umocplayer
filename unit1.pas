unit Unit1;

{$mode objfpc}{$H+}

interface



uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, FileCtrl,
  Process, ExtCtrls, ComCtrls, Menus, Unit2, Math, FileUtil, LCLType, LCLTranslator, DefaultTranslator;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Timer1: TTimer;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Memo1: TMemo;
    Memo3: TMemo;
    Process1: TProcess;
    Timer3: TTimer;
    Timer4: TTimer;
    TrackBar1: TTrackBar;

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button3KeyPress(Sender: TObject; var Key: char);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox3ChangeBounds(Sender: TObject);
    procedure ListBox3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox3SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox4Click(Sender: TObject);
    procedure ListBox4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox4SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox5DblClick(Sender: TObject);
    procedure ListBox5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox5SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox6Click(Sender: TObject);
    procedure ListBox6DblClick(Sender: TObject);
    procedure ListBox6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox6SelectionChange(Sender: TObject; User: boolean);
    procedure Memo4Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2ForStartTimer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar1Exit(Sender: TObject);
    procedure TrackBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private

        //это для прокрутки плейлиста по-мобильному (this is for mobile-style playlist scrolling)
    FMouseDown: Boolean; // Флаг зажатия кнопки мыши (flag for mouse button press)
    FStartY: Integer;    // Начальная позиция мыши (initial mouse position)
    FScrollOffset: Integer; // Текущая позиция скролла (current scroll position)

    TextForm: TForm; // Хранение ссылки на форму с текстом песни (stores a reference to the form with the song lyrics)
    procedure CloseTextForm(Sender: TObject); // Процедура для закрытия формы с песней (procedure for closing the song lyrics form)
    procedure NextText(Sender: TObject); // Процедура для кнопки переключения на следующий текст песни (procedure for the button to switch to the next song lyrics)
    procedure ResizeButtons(Sender: TObject); // Процедура для изменения размера кнопок (procedure for resizing buttons)




  public

  end;

var
  Form1: TForm1;

  command, s, state, artist, title, songtitle, totalsec, timeleft, currentsec, currenttime, totaltime, folders, MusicFolder, SongFullName, PlayOnceSongFullName, Status, OldPlayName,
    OldPlaylistToMove, TypeOfTimer, PlayListPath, GeniusToken: String;

    SongListUrl: TStringList; //переменная для хранения ссылок на песни (для Button19) (variable for storing song links (for Button19))
  FullTitleUrl: TStringList; //переменная для хранения полных названий ссылок на песни (для Button19) (variable for storing full titles of song links (for Button19))
  OldSongUrl: string; //тут храним песню, которую искали в прошлый раз (для Button19) (stores the song searched last time (for Button19))
  i_url: integer; //тут храним номер ссылки, которую отображали в прошлый раз (для Button19) (stores the link number displayed last time (for Button19))


  i, k, a, OldItemIndex, PlayIndex, OldPlayIndex, CountFileFind, LoadAllSource, PrevPlaylist, RestorePlaylistCount, PlayButtonInterval, i_random  : Integer;

  FindFolder, PlayOnce, NeedUpdateCaption, NeedSetMusicDir, FaultRandom, PlaylistSaveToMusicFolder, UnicodeSymbols, ProgramLog, NoTopIndex : Boolean;
  NeedToCopyPlaylist : boolean = false;

  PlayedRandom, random_indexes: Array of Integer;

  resourcestring
     SButtonLyricsClose = 'Close';
     SButtonLyricsAnotherVersion = 'Another version (%d of %d is shown)';
     SNoLyricsCaption = 'The lyrics were not found';
     SNoLyricsText = '1) Check the tags: look at the window title — if it shows garbled text or is empty, nothing will be found, as this is the data used for the text search;' + sLineBreak + '2) Check your internet connection;' + sLineBreak + '3) Verify that the lyrics exists on the website genius.com — the program searches for songs there;' + sLineBreak + '4) Did you enter your token for genius.com in the settings? Visit https://genius.com/api-clients to register.';
     SMessageRestoredPlaylist = 'The copy that was created at the start of the program has been restored';
     SMessageNoLinks = 'For some reason, there is no file with the list of links to the lyrics';
     SMessageNoTitles = 'For some reason, there is no file with the list of titles from the site';
     SMessageManyMissingFiles = 'Too many missing files. Stopping';
     SMessageNoMusicPath = 'The path to the music folder is not set or does not exist. Please check';

     SForm1Caption = 'Player';

  procedure UpdateShortPlaylist;
  procedure LoadPlaylist;

implementation

{$R *.lfm}

{ TForm1 }

procedure FoldersForListbox3; //процедура для получения списка папок в listbox3 (procedure for retrieving the list of folders in listbox3)

begin
  Form1.ListBox3.Clear;
For i := 0 to Form1.ListBox1.Items.Count-1 do
      begin
           folders := StringReplace(Form1.ListBox1.Items[i], MusicFolder, '', [rfReplaceAll]);
           a:=pos('/', folders);
           Delete(Folders, a, (Length(Folders)-a)+1);

           FindFolder := False;
           For k := 0 to Form1.ListBox3.Items.Count-1 do
               begin
                    if Form1.ListBox3.Items[k] = Folders then FindFolder := true;
               end;
           If FindFolder = False then Form1.ListBox3.Items.Add(Folders);
      end;

end;

procedure ErasePlayedRandom;      //процедура для очистки списка рандомного воспроизведения (procedure for clearing the random playback list)

var
  i_local, randomIndex, i_1, j, temp: Integer;
begin

     //очищать мемо3 больше не имеет смысла, как и сам мемо3 (clearing memo3 no longer makes sense, nor does memo3 itself)
//Form1.Memo3.Clear;

//новая процедура рандома (new random procedure)

   i_random := 0;

   // Создаём массив индексов от 0 до ListBox6.Items.Count - 1 (create an array of indices from 0 to ListBox6.Items.Count - 1)

     SetLength(random_indexes, Form1.ListBox6.Items.Count);
     for i_local := Low(random_indexes) to High(random_indexes) do
       random_indexes[i_local] := i_local;

     // Перемешиваем массив индексов (Shuffling the array of indices)
     Randomize; // Инициализация генератора случайных чисел (Initializing the random number generator)
     for i_1 := High(random_indexes) downto Low(random_indexes) do
  begin
    j := Random(i_1 + 1);
    temp := random_indexes[i_1];
    random_indexes[i_1] := random_indexes[j];
    random_indexes[j] := temp;
  end;


end;

procedure UpdateShortPlaylist;      // процедура для получения списка воспроизведения в listbox6 (Procedure to get the playlist in listbox6)
begin
Form1.ListBox6.Items := Form1.ListBox2.Items;
For i := 0 to Form1.ListBox2.Items.Count-1 do
      begin
           SongFullName := StringReplace(Form1.ListBox2.Items[i], MusicFolder, '', [rfReplaceAll]);
           Form1.ListBox6.Items[i] := SongFullName;
      end;
 Form1.ListBox6.ItemIndex :=Form1.ListBox2.ItemIndex;

 ErasePlayedRandom;      // процедура для очистки списка рандомного воспроизведения (Procedure to clear the random playback list)

end;


procedure FoldersForListbox4;      // процедура для получения папок в listbox4 (Procedure to get folders in listbox4)
begin
  Form1.ListBox4.Clear;
    Form1.ListBox5.Clear;
    For i := 0 to Form1.ListBox1.Items.Count - 1 do
        begin
          If pos(MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex],Form1.ListBox1.Items[i]) <> 0 then
             begin
                  folders := StringReplace(Form1.ListBox1.Items[i], MusicFolder+Form1.ListBox3.Items[Form1.ListBox3.ItemIndex]+'/', '', [rfReplaceAll]);
             a:=pos('/', folders);
             if a <> 0 then
                begin
                    Delete(Folders, a, (Length(Folders)-a)+1);

                    FindFolder := False;
                    For k := 0 to Form1.ListBox4.Items.Count-1 do
                    begin
                      if Form1.ListBox4.Items[k] = Folders then FindFolder := true;
                      end;
                      If FindFolder = False then Form1.ListBox4.Items.Add(Folders);

                end
                   else
                   begin

                    Form1.ListBox5.Items.Add(folders);
                  end;
             end;
        end;

end;

procedure FoldersForListbox5;      // процедура для получения папок в listbox5 (Procedure to get folders in listbox5)
begin
  Form1.ListBox5.Clear;
  For i := 0 to Form1.ListBox1.Items.Count - 1 do
      begin
        If pos(MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex] + '/' + Form1.ListBox4.Items[Form1.ListBox4.ItemIndex],Form1.ListBox1.Items[i]) <> 0 then
           begin
                folders := StringReplace(Form1.ListBox1.Items[i], MusicFolder+Form1.ListBox3.Items[Form1.ListBox3.ItemIndex]+'/'+Form1.ListBox4.Items[Form1.ListBox4.ItemIndex]+'/', '', [rfReplaceAll]);
                Form1.ListBox5.Items.Add(folders);
           end;
      end;

end;




procedure RandomPlay;      //процедура для рандомного воспроизведения ВНИМАНИЕ! С ВВЕДЕНИЕМ РАНДОМА ПРОГРАММА СТАЛА ПАДАТЬ! А с введением лога - перестала.
begin
    {  // закомментирована старая процедура рандома. Можно удалить, новая работает очень хорошо
       // вместе с тем нужно очистить переменные и компоненты, которые были тут использованы (например, мемо3)
   //логирование

   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "--------" >> ~/player_log'],s);
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "новый рандомный переход" >> ~/player_log'],s);

   FaultRandom := false;
   //логирование
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "FaultRandom := false;" >> ~/player_log'],s);

   Randomize;
   //логирование
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Randomize;" >> ~/player_log'],s);

   PlayIndex := Random(Form1.ListBox6.Items.Count);
   //логирование
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "PlayIndex := Random(Form1.ListBox6.Items.Count);" >> ~/player_log'],s);
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Form1.ListBox6.Items.Count = ' + inttostr (Form1.ListBox6.Items.Count) + ' PlayIndex = ' + inttostr (PlayIndex) + '"  >> ~/player_log'],s);

   //ShowMessage ('Вычислил PlayIndex (' + IntToStr(PlayIndex) + ')');


   if Form1.Memo3.Lines.Count >= Form1.ListBox6.Items.Count then
      begin
           ErasePlayedRandom;
           //ShowMessage ('Длина Мемо3 сравнялась с длиной плейлиста, очищаю мемо3');
           //логирование
           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Длина Мемо3 сравнялась с длиной плейлиста, очищаю мемо3" >> ~/player_log'],s);
      end;
   //ShowMessage ('Ищу, не играла ли эта песня');

   //логирование
   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Ищу, не играла ли эта песня" >> ~/player_log'],s);
   For i:= 0 to Form1.Memo3.Lines.Count -1 do
       begin

            if IntToStr(PlayIndex) = Form1.Memo3.Lines[i] then
               begin
                    FaultRandom := true;
                    //ShowMessage ('Играла');
                    //логирование
                    if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Играла, FaultRanfom = true" >> ~/player_log'],s);
               end;
       end;
   If FaultRandom = true then
      begin
          //логирование
           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Попытка повторного запуска процедуры RandomPlay из самой себя" >> ~/player_log'],s);

           RandomPlay;
           //ShowMessage ('Повторяю рандом');

      end
      else
          begin
           //логирование
           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Песня не играла, добавляем в список" >> ~/player_log'],s);
           //логирование
           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Form1.Memo3.Lines.Add(IntToStr(PlayIndex));" >> ~/player_log'],s);

           Form1.Memo3.Lines.Add(IntToStr(PlayIndex));

           //логирование
           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "If PlayIndex+1 >= Form1.ListBox6.Items.Count-1 then Form1.ListBox6.TopIndex:= 0 else Form1.ListBox6.TopIndex:= PlayIndex;" >> ~/player_log'],s);
           // это перенесено в кнопку "плей" (button3) If PlayIndex+1 >= Form1.ListBox6.Items.Count-1 then Form1.ListBox6.TopIndex:= 0 else Form1.ListBox6.TopIndex:= PlayIndex;      //пролистывание плейлиста к первой играющей песне
           //ShowMessage ('Не играла, добавляю в список');

      end;   }
   i_random := i_random + 1;     // переключаемся на следующий элемент рандомного массива индексов плейлиста (Switching to the next element of the random playlist index array)
   if i_random >= Form1.ListBox6.Items.Count then
      begin
           ErasePlayedRandom;    // если дошли до конца рандомного плейлиста, то обновляем его. Тут была очистка memo. Походу, она больше не нужно (If we reached the end of the random playlist, we update it. There was a memo clear here, but it seems it's no longer needed)


      end;

    PlayIndex := random_indexes[i_random];  // присваиваем плэйиндексу индекс из рандомного массива (Assigning the play index from the random array)


end;



procedure FindPlayIndex;      // процедура для получения индекса проигрываемого сейчас файла (Procedure to get the index of the currently playing file)
begin
  if Form1.CheckBox2.Checked = false then
     begin
        If form1.ListBox6.items.count > 0 then
           begin
                For i:= 0 to Form1.ListBox6.Items.Count - 1 do
                    begin
                         If Copy (Form1.ListBox6.Items[i], 6, Length(Form1.ListBox6.Items[i])) = OldPlayName then
                            begin
                                 PlayIndex := i;
                            end;
                    end;
           end;
     end
  else
  begin
   RandomPlay;  // если нажата кнопка случайного воспроизведения, то запускаем процедуру рандомного воспроизведения (If the random playback button is pressed, start the random playback procedure)
  end;

end;

procedure SetTriangle; // процедура для установки треугольника у проигрываемой песни (Procedure to set the triangle for the currently playing song)
var
  z :integer;
begin
     For z:= 0 to Form1.ListBox6.Items.Count - 1 do
          begin

               If Form1.ListBox6.Items[z] = OldPlayName then
                  begin
                       Form1.ListBox6.Items[z] := '▶  ' + Form1.ListBox6.Items[z];  // добавляем треугольник к названию воспроизводимого пункта плейлиста (Adding a triangle to the name of the currently playing playlist item)
                  end;
          end;
end;


procedure SavePrevPlaylist;      // процедура для сохранения предыдущего плейлиста (Procedure to save the previous playlist)
begin
     Form1.ListBox2.Items.SaveToFile(ExtractFilePath(Application.ExeName) + 'playlist' + inttostr(PrevPlaylist));    // сохранение плэйлиста для возможности отменить изменения (Saving the playlist to allow undoing changes)
     RestorePlaylistCount := PrevPlaylist; // установка счётчика, который отсчитывает, к какой резевной копии возвращаться.
// сначала он равен текущему сохранению, возвращаемся на последнюю точку восстановления (PrevPlaylist - 1)
// затем на -2, на -3 и т.д. (Setting a counter that tracks which backup copy to revert to.
// Initially, it is equal to the current save, then we go to the previous restore point (PrevPlaylist - 1),
// then to -2, -3, and so on.)
     PrevPlaylist := PrevPlaylist + 1;
     if PrevPlaylist > 5 then PrevPlaylist := 1;   // таких копий может быть только пять + 1, созданная в начале этой сессии работы с программой, которая не перезатирается (There can be only five such copies + 1, created at the start of this session, which is not overwritten)

end;

procedure LoadPlaylist;      // процедура для загрузки плейлиста (Procedure to load the playlist)
begin
     if FileExists(PlayListPath) = true then    // загрузка плейлиста (Loading the playlist)
          Begin

               if PlaylistSaveToMusicFolder = true then     // если плейлист хранится в папке с музыкой (для обмена с другими устройствами), то копируем тот плейлист к себе. Обратно он будет залит при закрытии программы, если были изменения.
// наличие изменений фиксируется в переменной NeedToCopyPlaylist и происходит, если стоит галочка о синхронизации в настройках (If the playlist is stored in the music folder (for syncing with other devices), we copy that playlist to ourselves. It will be uploaded back when the program is closed if there are changes.
// Changes are tracked by the NeedToCopyPlaylist variable and occur if the synchronization checkbox is checked in the settings.)
                    begin
                         if FileExists(MusicFolder + 'playlist') = true then
                         begin

                              RunCommand('/bin/bash',['-c', 'cp ' + MusicFolder + 'playlist ' + PlayListPath],s);

                         end;
                    end;
          if FileExists(ExtractFilePath(Application.ExeName) + 'curplay') = true then   // загрузка песни, игравшей в прошлый раз (Loading the song that played last time)
             begin
             Form1.ListBox2.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'curplay');
             SongFullName := Form1.ListBox2.Items[0];
             end;
          Form1.ListBox2.Items.LoadFromFile(PlayListPath);

          For i := 0 to Form1.ListBox2.Items.Count - 1 do
                begin
                     If Form1.ListBox2.Items[i] = SongFullName then Form1.ListBox2.ItemIndex := i;
                end;
          UpdateShortPlaylist;   // обновление короткого плейлиста (Updating the short playlist)
          SavePrevPlaylist; // сохранение резервной копии плейлиста (Saving a backup copy of the playlist)
          end;
end;

procedure setTopIndex; // процедура для установления позиции плейлиста посередине играющей песни
// позиция плейлиста устанавливается так, чтобы текущая играющая песня оказалась посередине видимой части плейлиста
// если песня находится в видимом диапазоне, то установка не происходит. Если за его пределами - происходит.
//(Procedure to set the playlist position to the middle of the currently playing song
//The playlist position is set so that the currently playing song is in the middle of the visible part of the playlist.
//If the song is within the visible range, no adjustment occurs. If it is outside the range, the position is adjusted.)
var
  topIndex, lastIndex, findIndex : integer;
begin

  if NoTopIndex = false then       // иногда может быть установлен запрет на переход плейлиста к воспроизводимой песне. Например, по двойному щелчку в плейлисте, если включается последняя видимая песня
                                   //(Sometimes, a restriction may be applied to prevent the playlist from jumping to the currently playing song. For example, with a double-click in the playlist when the last visible song is played.)
     begin
          topIndex :=  Form1.ListBox6.TopIndex;
          lastIndex := Form1.ListBox6.TopIndex + (Form1.ListBox6.Height div Form1.ListBox6.ItemHeight) - 1;
          If (PlayIndex < topIndex) or (PlayIndex > lastIndex) then
             begin
                  findIndex := PlayIndex - ((lastIndex - topIndex) div 2);
                  if findIndex < 0 then findIndex := 0;
                  Form1.ListBox6.TopIndex:= findIndex;;
             end;

     end;
end;


procedure CheckAndDeleteFile(const FileName: string);      // процедура проверки файла на размер и удаление (удаляет всё, что меньше 10 байт) (Procedure to check the file size and delete (deletes anything smaller than 10 bytes))
var
  FileSizeBytes: Int64;
begin
  if FileExists(FileName) then
  begin
    FileSizeBytes := FileUtil.FileSize(FileName); // используем FileUtil.FileSize (Using FileUtil.FileSize)
    if FileSizeBytes < 10 then
    begin
      if DeleteFile(FileName) then
        //ShowMessage('Файл был меньше 10 байт и успешно удален.')
      else
        //ShowMessage('Файл меньше 10 байт, но удалить его не удалось.');
    end
    else
      //ShowMessage('Файл большой. Его длина: ' + IntToStr(FileSizeBytes) + ' байт.');
  end
  else
    //ShowMessage('Файл не существует.');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  For i := 0 to Form1.ListBox1.Items.Count-1 do
        begin
             if Form1.ListBox3.ItemIndex > -1 then SongFullName := MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex] + '/';
             if Form1.ListBox4.ItemIndex > -1 then SongFullName := SongFullName + Form1.ListBox4.Items[Form1.ListBox4.ItemIndex] + '/';
             if Form1.ListBox5.ItemIndex > -1 then SongFullName := SongFullName + Form1.ListBox5.Items[Form1.ListBox5.ItemIndex];
             If Form1.ListBox1.Items[i] = SongFullName then Form1.ListBox2.Items.Add(Form1.ListBox1.Items[i]);
             //ShowMessage ('В списке: ' + Form1.ListBox1.Items[i] + ' SongFullName: ' + SongFullName);
        end;
  UpdateShortPlaylist;   // процедура обновления короткого плейлиста (listBox6) (Procedure to update the short playlist (listBox6))
  Form1.Button9.Click; // сохранение плейлиста (Saving the playlist)
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Form1.ListBox2.Clear;
  UpdateShortPlaylist;
  Form1.Button9.Click;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 Form1.ListBox2.ItemIndex:= Form1.ListBox6.ItemIndex;
  OldItemIndex := Form1.ListBox2.ItemIndex;
  If OldItemIndex = Form1.ListBox2.Items.Count-1 then OldItemIndex := OldItemIndex - 1;

  Form1.ListBox2.DeleteSelected;
  if OldItemIndex < 0 then OldItemIndex := -1;
  Form1.ListBox2.ItemIndex := OldItemIndex;
  Form1.Button9.Click;
  UpdateShortPlaylist;
  SetTriangle;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  If Form1.ListBox6.Items.Count > 0 then
           begin
  FindPlayIndex;


                if Form1.CheckBox2.Checked = false then
                   begin
                        If PlayIndex >= Form1.ListBox2.Items.Count-1 then PlayIndex := 0 else PlayIndex := PlayIndex + 1; // если рандом включен, то переходим к тому, что выдала процедура findplayindex, если выключен, то на следующий элемент плейлиста (If random is enabled, go to the index provided by the findplayindex procedure; if disabled, move to the next item in the playlist)
                   end;

  // потому что если рандом выключен, то findplayindex выдаёт номер текущей играющей песни, а если включен, то запускает процедуру randomplay, которая выдаёт рандомный номер
  // и если после этого добавить ещё единицу к номеру, то получается, что играет не та песня, которую нашёл randomplay, а следующая. Таким образом не может работать
  // переход на предыдущую выбранную рандомом песню.

  // (Because if random is disabled, findplayindex returns the index of the currently playing song, and if enabled, it calls the randomplay procedure, which returns a random index.
  // If you then add one to that index, the song that plays is not the one found by randomplay, but the next one.
  // This way, the transition to the previously randomly selected song cannot work.)
  Form1.Button3.Click;

           end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  // оригинальная процедура, отключена для теста
  //FindPlayIndex;
  //If PlayIndex > 0 then PlayIndex := PlayIndex - 1;
  //Form1.Button3.Click;
  //конец оригинальной процедуры

  If Form1.ListBox6.Items.Count > 0 then
           begin

  // изменения в этой процедуре посвящены Николаусу Вирту, написаны они 10.01.2024 (The changes in this procedure are dedicated to Nikolaus Virtu, written on 10.01.2024)
  if Form1.CheckBox2.Checked = false then      // если рандом не включен, то делаем как раньше - переход к предыдущему пункту плейлиста (If random is not enabled, proceed as before – go to the previous item in the playlist)
     begin
       FindPlayIndex;
       If PlayIndex > 0 then PlayIndex := PlayIndex - 1;
       Form1.Button3.Click;
     end
     else       // если же рандом включен, то ищем в memo3 индекс текущей играющей песни (If random is enabled, find the index of the currently playing song in memo3)
     begin
          {FaultRandom := true;       // взводим триггер на случай, если текущей проигрываемой песни нет в memo3 (отмотали полностью назад) (Triggering in case the currently playing song is not found in memo3 (we've rewinded all the way back))
          //showmessage (form1.Memo3.Text);
          //showmessage ('текущая позиция ' + inttostr (playindex));
          For i := 0 to Form1.Memo3.Lines.Count -1 do
              begin
                   If Form1.Memo3.Lines[i] = inttostr(PlayIndex) then   // если в мемо3 найден индекс текущей песни, то... (If the index of the current song is found in memo3, then...)
                  begin
                       FaultRandom := false;
                       //showmessage ('нашёл текущую песню в memo3 ' + inttostr (i));
                       if (i-1) >= 0 then PlayIndex := StrToInt(Form1.Memo3.Lines[i-1])    // присваиваем playindex-у значение предыдущего поля в memo3 (фактически - предыдущей проигрывавшейся) (Assigning the previous field in memo3 to playindex (effectively the previously played song))
                          else
                              PlayIndex := PlayIndex -1;     // если же текущая играющая песня первая в memo3, то просто переключаемся на предыдущую в плейлисте (может быть, здесь стоит сделать возврат к рандомному переключению или убрать это и снова начинать воспроизводить первый пункт в memo3)
                                                             //(If the currently playing song is the first in memo3, we simply switch to the previous item in the playlist (perhaps, here it’s worth returning to random switching, or removing this and starting to play the first item in memo3 again))
                  end;
              end;
          if FaultRandom = true then PlayIndex := PlayIndex -1;    // если же текущая играющая песня отсутствует в memo3, то просто переключаемся на предыдущую в плейлисте (может быть, здесь стоит сделать возврат к рандомному переключению или убрать это и снова начинать воспроизводить первый пункт в memo3)
                                                                   //(If the currently playing song is not found in memo3, we simply switch to the previous item in the playlist (perhaps, here it’s worth returning to random switching, or removing this and starting to play the first item in memo3 again))
          If PlayIndex < 0 then PlayIndex := 0; }
          i_random := i_random -1;
          if i_random < 0 then i_random := 0;
          PlayIndex := random_indexes[i_random];
          Form1.Button3.Click;
     end;
   end;

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  // проигрывание песни без включения её в плейлист (Playing a song without adding it to the playlist)
  Status := 'Stop';
  For i := 0 to Form1.ListBox1.Items.Count-1 do       // listbox1 - это список файлов. Просматриваем его весь (listbox1 is the file list. We review it entirely)
        begin
             // формируем путь к файлу, собираем его из папки с музыкой и последовательным включением в путь ListBox3 - 4 - 5 с проверкой их наличия.
             // (Constructing the file path by combining it from the music folder and sequentially including ListBox3 - 4 - 5 with checks for their existence.)
             if Form1.ListBox3.ItemIndex > -1 then SongFullName := MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex] + '/';
             if Form1.ListBox4.ItemIndex > -1 then SongFullName := SongFullName + Form1.ListBox4.Items[Form1.ListBox4.ItemIndex] + '/';
             if Form1.ListBox5.ItemIndex > -1 then SongFullName := SongFullName + Form1.ListBox5.Items[Form1.ListBox5.ItemIndex];
             If Form1.ListBox1.Items[i] = SongFullName then Form1.ListBox2.Items.Add(Form1.ListBox1.Items[i]);   //тут тоже не допёр. Зачем нам в основной плейлист вносить то, что хотим проиграть без внесения в него? ((I don’t really understand this. Why do we need to add something to the main playlist that we want to play without adding it to it?))
             Break;     //прерываем цикл. Только зачем? Что-то я тут не врубаюсь. (Interrupting the loop. But why? I don’t quite understand my own logic here.)
             //ShowMessage ('В списке: ' + Form1.ListBox1.Items[i] + ' SongFullName: ' + SongFullName);
        end;
  command := 'mocp -l ' + '''' + SongFullName + '''';
 RunCommand('/bin/bash',['-c', command],s);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 // перемещение выбранной позиции в плейлисте наверх (Moving the selected position in the playlist to the top)
  If Form1.ListBox6.ItemIndex > 0 then
     begin
         // обрабатываем короткий плейлист (Processing the short playlist)
          OldPlaylistToMove := Form1.ListBox6.Items[Form1.ListBox6.ItemIndex-1];  // запоминаем название предыдущей позиции (Remembering the name of the previous position)
          Form1.ListBox6.Items[Form1.ListBox6.ItemIndex-1] := Form1.ListBox6.Items[Form1.ListBox6.ItemIndex]; //присваеваем предыдущей позиции название выбранной   (Assign the name of the selected position to the previous position)
          Form1.ListBox6.Items[Form1.ListBox6.ItemIndex] := OldPlaylistToMove; //в выбранную позицию помещаем запомненное название (Place the remembered name into the selected position)

          // повторяем то же самое для основного плейлиста (Repeat the same for the main playlist)
          OldPlaylistToMove := Form1.ListBox2.Items[Form1.ListBox2.ItemIndex-1];
          Form1.ListBox2.Items[Form1.ListBox2.ItemIndex-1] := Form1.ListBox2.Items[Form1.ListBox2.ItemIndex];
          Form1.ListBox2.Items[Form1.ListBox2.ItemIndex] := OldPlaylistToMove;

          Form1.ListBox6.ItemIndex := Form1.ListBox6.ItemIndex-1;
     end;

  ErasePlayedRandom;      //процедура для очистка списка рандомного воспроизведения (Procedure to clear the random playback list)
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
 // перемещение выбранной позиции в плейлисте вниз (Moving the selected position in the playlist down)
    If Form1.ListBox6.ItemIndex < Form1.ListBox6.Items.Count-1 then
     begin
          OldPlaylistToMove := Form1.ListBox6.Items[Form1.ListBox6.ItemIndex+1];
          Form1.ListBox6.Items[Form1.ListBox6.ItemIndex+1] := Form1.ListBox6.Items[Form1.ListBox6.ItemIndex];
          Form1.ListBox6.Items[Form1.ListBox6.ItemIndex] := OldPlaylistToMove;

          OldPlaylistToMove := Form1.ListBox2.Items[Form1.ListBox2.ItemIndex+1];
          Form1.ListBox2.Items[Form1.ListBox2.ItemIndex+1] := Form1.ListBox2.Items[Form1.ListBox2.ItemIndex];
          Form1.ListBox2.Items[Form1.ListBox2.ItemIndex] := OldPlaylistToMove;

          Form1.ListBox6.ItemIndex := Form1.ListBox6.ItemIndex+1;
     end;

    ErasePlayedRandom;      //процедура для очистка списка рандомного воспроизведения (Procedure to clear the random playback list)
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
 // восстановление резервной копии плейлиста   (Restoring the backup playlist)
  RestorePlaylistCount := RestorePlaylistCount -1;     // для начала восстанавливаем предыдущую копию   (First, restore the previous copy)
  if RestorePlaylistCount < 0 then    // при этом проверяем, чтобы RestorePlaylistCount не вышел за пределы, не стал меньше 0  (At the same time, check that RestorePlaylistCount does not exceed the limits and is not less than 0)
   begin
     RestorePlaylistCount:= 5;   // если это так, то делаем его максимально возможным, т.е. 5  (If so, set it to the maximum possible value, i.e., 5)
   end;
  Form1.Timer4.Enabled:= false;
  Form1.Button17.Caption := '↶ ' + inttostr (RestorePlaylistCount); // подрисовываем к названию кнопки восстановления номер восстанавливаемой резервной копии    (Adding the number of the restoring backup copy to the restore button’s name)
  Form1.Timer4.Interval:=5000;
  Form1.Timer4.Enabled:= true;
  if FileExists(ExtractFilePath(Application.ExeName) + 'playlist' + inttostr (RestorePlaylistCount)) = true then    //загрузка плейлиста   (Loading the playlist)
     Begin

     if FileExists(ExtractFilePath(Application.ExeName) + 'curplay') = true then    //загрузка песни, игравшей в прошлый раз    (Loading the song that played last time)
        begin

        Form1.ListBox2.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'curplay');
        SongFullName := Form1.ListBox2.Items[0];
        end;
     Form1.ListBox2.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'playlist' + inttostr (RestorePlaylistCount));

      // поиск текущей песни (Finding the current song)
     For i := 0 to Form1.ListBox2.Items.Count - 1 do
           begin
                If Form1.ListBox2.Items[i] = SongFullName then Form1.ListBox2.ItemIndex := i;
           end;

     UpdateShortPlaylist;

     If RestorePlaylistCount = 0 then ShowMessage (SMessageRestoredPlaylist);   // сообщение о восстановлении копии плейлиста, которая была создана при запуске программы (Message about restoring the playlist copy that was created at the start of the program)
end;

end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  BashFile: TextFile; // файл для скрипта (File for the script)

  FileContent: string;
  FileName: string;
  FileStream: TFileStream;
  Memo: TMemo;
  CloseButton: TButton;
  NextButton: TButton;
  ButtonPanel: TPanel;
  WindowWidth, WindowHeight: Integer;
  ScreenCenterX, ScreenCenterY: Integer;
begin

  If (Status <> 'Stop') and (Status <> '') and (Form1.ListBox6.Items.Count > 0) then        // если что-то воспроизводится или стоит на паузе, то код этой кнопки может быть выполнен (If something is playing or paused, the code for this button can be executed)
     begin
          // закрытие старой формы, если она существует (Closing the old form if it exists)
          if Assigned(TextForm) then
          begin
               TextForm.Close;
               //   FreeAndNil(TextForm);
          end;
          {
          // здесь нужно вместо отдельного скрипта всё встроить в программу  - сделано
          command := ExtractFilePath(Application.ExeName) + 'genius.sh' + ' "' + artist + ' ' + songtitle + '"';     //поиск текста песни
          RunCommand('/bin/bash',['-c', command],s);
          }

          // получение списка ссылок на текст песни --- отсюда (Getting the list of links to the song lyrics --- from here)
          if OldSongUrl <> artist+songtitle then
             begin
                  OldSongUrl := artist+songtitle;
                  i_url := 0;
                  AssignFile(BashFile, '/tmp/genius.sh');
                  Rewrite(BashFile);
                  // запись скрипта в файл (Writing the script to a file)
                  WriteLn(BashFile, '#!/bin/bash');
                  WriteLn(BashFile, 'ACCESS_TOKEN="' + GeniusToken + '"');
                  WriteLn(BashFile, 'QUERY="' + artist + ' ' + songtitle + '"');
                  WriteLn(BashFile, 'ENCODED_QUERY=$(echo "$QUERY" | jq -sRr @uri)');
                  WriteLn(BashFile, 'RESPONSE=$(curl -s "https://api.genius.com/search?q=$ENCODED_QUERY" -H "Authorization: Bearer $ACCESS_TOKEN") ');
                  WriteLn(BashFile, 'echo "$RESPONSE" | jq ''.response.hits[].result.url'' > /tmp/list.txt');
                  WriteLn(BashFile, 'echo "$RESPONSE" | jq ''.response.hits[].result.full_title'' > /tmp/fulltitlelist.txt');
                  CloseFile(BashFile);
                  command := 'chmod +x /tmp/genius.sh; /tmp/genius.sh';     // сделать скрипт исполняемым и запустить (Make the script executable and run it)
                  RunCommand('/bin/bash',['-c', command],s);
                  DeleteFile('/tmp/genius.sh');

                  // загрузка списка ссылок в переменную (Loading the list of links into a variable)
                  FileName := '/tmp/list.txt';
                  if FileExists(FileName) then
                     begin
                          SongListUrl := TStringList.Create;
                          try
                          SongListUrl.LoadFromFile(FileName);
                          finally

                          end;
                          DeleteFile(FileName);
                          end
                          else
                          begin
                          ShowMessage(SMessageNoLinks);  // сообщение Почему-то нет файла со списком ссылок на тексты (Message For some reason, there is no file with the list of links to the lyrics)
                     end;


                  // загрузка списка названий с сайта в переменную (Loading the list of titles from the site into a variable)
                  FileName := '/tmp/fulltitlelist.txt';
                  if FileExists(FileName) then
                     begin
                          FullTitleUrl := TStringList.Create;
                          try
                          FullTitleUrl.LoadFromFile(FileName);
                          finally

                          end;
                          DeleteFile(FileName);
                          end
                          else
                          begin
                          ShowMessage(SMessageNoTitles);  // сообщение Почему-то нет файла со списком названий с сайта (Message For some reason, there is no file with the list of titles from the site)
                     end;


             end;
          // получение списка ссылок на текст песни --- досюда (Getting the list of links to the song lyrics --- up to here)


          //получение текста из ссылки ---отсюда  (Getting the text from the link --- from here)
          AssignFile(BashFile, '/tmp/genius.sh');
          Rewrite(BashFile);
          // запись скрипта в файл  (Writing the script to a file)
          WriteLn(BashFile, '#!/bin/bash');
          if SongListUrl.Count > 0 then WriteLn(BashFile, 'HTML_CONTENT=$(curl -s ' + SongListUrl[i_url] + ')');
          WriteLn(BashFile, 'LYRICS=$(echo "$HTML_CONTENT" | awk -v RS=''</div>'' ''/<div data-lyrics-container/ { gsub(/<br\s*\/?>/, "\n"); gsub(/<[^>]*>/, ""); print }'' | sed ''s/&#x27;/''"''"''/g'')');
          WriteLn(BashFile, 'echo "$LYRICS" > /tmp/text.txt');
          CloseFile(BashFile);
          command := 'chmod +x /tmp/genius.sh; /tmp/genius.sh';     //сделать скрипт исполняемым и запустить   (Make the script executable and run it)
          RunCommand('/bin/bash',['-c', command],s);
          DeleteFile('/tmp/genius.sh');
          //получение текста из ссылки ---досюда    (Getting the text from the link --- up to here)

          CheckAndDeleteFile('/tmp/text.txt');  //если файл с текстом пустой (менее 10 байт - это с запасом, т.к. пустой файл имеет размер в 1 байт), то удаляем его
                                                // (If the text file is empty (less than 10 bytes – this is with a margin, as an empty file is 1 byte), delete it)

          //отображение окна с текстом --- отсюда    (Displaying the window with text --- from here)
          FileName := '/tmp/text.txt';
          // проверяем, существует ли файл     (Checking if the file exists)
          if FileExists(FileName) then
             begin
                  // открываем файл для чтения    (Opening the file for reading)
                  FileStream := TFileStream.Create(FileName, fmOpenRead);
                  try
                  // читаем содержимое файла в строку  (Reading the file content into a string)
                  SetLength(FileContent, FileStream.Size);
                  FileStream.ReadBuffer(Pointer(FileContent)^, FileStream.Size);

                  // создаём новое окно     (Creating a new window)
                  TextForm := TForm.Create(Self);
                  try
                  TextForm.OnResize := @ResizeButtons; // привязываем событие для обработки изменения размера   (Attaching the event to handle window resizing)
                  // размеры нового окна: 80% от размеров Form1, а минимальных размеров - 80% от изначальных  (The new window size: 80% of Form1’s size, with a minimum size of 80% of the original size)
                  WindowWidth := Round(Self.Width * 0.8);
                  WindowHeight := Round(Self.Height * 0.8);
                  TextForm.Constraints.MinHeight:= Round(WindowHeight * 0.8);
                  TextForm.Constraints.MinWidth := Round(WindowWidth * 0.8);
                  TextForm.Width := WindowWidth;
                  TextForm.Height := WindowHeight;


                  // расположение окна в центре Form1   (Placing the window in the center of Form1)
                  ScreenCenterX := Self.Left + (Self.Width div 2) - (TextForm.Width div 2);
                  ScreenCenterY := Self.Top + (Self.Height div 2) - (TextForm.Height div 2);
                  TextForm.Left := ScreenCenterX;
                  TextForm.Top := ScreenCenterY;

                  // убираем модальность  (Removing modality)
                  TextForm.BorderStyle := bsSizeable;

                  // создаём Memo для отображения текста  (Creating a Memo for displaying text)
                  Memo := TMemo.Create(TextForm);
                  Memo.Parent := TextForm;
                  Memo.Align := alClient;
                  Memo.ScrollBars := ssAutoVertical; // полоса прокрутки при необходимости    (Scrollbar if needed)
                  Memo.WordWrap := True;         // перенос строк      (Line wrapping)
                  Memo.Font.Size := 10;
                  Memo.Font.Name := 'Courier New';
                  Memo.Font.Color := clBlack;
                  Memo.Lines.Text := FullTitleUrl[i_url];
                  Memo.Lines.add('');
                  Memo.Lines.text := Memo.Lines.Text + FileContent;   // ну или Memo.Lines.add('FileContent'); (Or Memo.Lines.add('FileContent');)
                  Memo.Color := clBackground;   //цвет фона мемо для того, чтобы он выглядел поприличнее (Background color for Memo to make it look more presentable)
                  Memo.ReadOnly := True;

                  // показ нового окна (это находится здесь, т.к. иначе неправльно рассчитывается ширина панели с кнопками) (Displaying the new window (it’s here because otherwise, the width of the button panel would be calculated incorrectly))
                  TextForm.Show;

                  // создаём панель для кнопок   (Creating a panel for buttons)
                  ButtonPanel := TPanel.Create(TextForm);
                  ButtonPanel.Parent := TextForm;
                  ButtonPanel.Align := alBottom;
                  ButtonPanel.Height := 40;
                  ButtonPanel.BevelOuter := bvNone;
                  ButtonPanel.Caption := ' ';
                  ButtonPanel.Name := 'ButtonPanel'; // имя для поиска панели  (Name for searching the panel)

                  // создаём кнопку "Закрыть"   (Creating the "Close" button)
                  CloseButton := TButton.Create(ButtonPanel);
                  CloseButton.Parent := ButtonPanel;
                  CloseButton.Align := alLeft;
                  CloseButton.Caption := SButtonLyricsClose;
                  CloseButton.Width := ButtonPanel.Width div 2;
                  CloseButton.Name := 'CloseButton'; // имя для поиска кнопки       (Name for searching the button)
                  CloseButton.OnClick := @CloseTextForm; // привязываем обработчик события  (Attaching the event handler)

                  // создаём кнопку "Другой вариант (если есть)"  (Creating the "Another option (if available)" button)
                  NextButton := TButton.Create(ButtonPanel);
                  NextButton.Parent := ButtonPanel;
                  NextButton.Align := alRight;

                  if SongListUrl.Count > 0 then NextButton.Caption := Format(SButtonLyricsAnotherVersion, [i_url+1, SongListUrl.Count]);
                  NextButton.Width := ButtonPanel.Width div 2;
                  NextButton.Name := 'NextButton'; // имя для поиска кнопки  (Name for searching the button)
                  NextButton.OnClick := @NextText; // привязываем обработчик события      (Attaching the event handler)

                  ResizeButtons(TextForm); // устанавливаем начальный размер кнопок     (Setting the initial button sizes)

                  except
                        // удаляем созданное окно в случае ошибки   (Deleting the created window in case of an error)
                        FreeAndNil(TextForm);
                        raise;
                  end;

                  finally
                         FileStream.Free;
                  end;
                  DeleteFile(FileName);
                  end
                     else
                         begin


                          Application.MessageBox(pchar(SNoLyricsText), Pchar(SNoLyricsCaption), MB_OK or MB_ICONINFORMATION);
             end;
          //отображение окна с текстом --- досюда     (Displaying the window with text --- up to here)

     end;    //если статус <> stop    (If status <> stop)

end;


procedure TForm1.CloseTextForm(Sender: TObject);      //процедура для кнопки "закрыть" на форме с текстом песни    (Procedure for the "Close" button on the song lyrics form)
begin
  if Assigned(TextForm) then
  begin
    TextForm.Close;
    FreeAndNil(TextForm);
  end;
end;

procedure TForm1.NextText(Sender: TObject);      //процедура для кнопки "Другой вариант" на форме с текстом песни    (Procedure for the "Another option" button on the song lyrics form)
begin
  if Assigned(TextForm) then
  begin

    if i_url < SongListUrl.Count -1 then
    begin
         i_url := i_url + 1;               //переключение вариантов текстов песни   (Switching between song text options)
         Form1.Button19.Click;
    end
    else
    begin
      i_url := 0;                //возврат к первому варианту текста, если показан весь список (Returning to the first text option if the entire list is displayed)
         Form1.Button19.Click;
    end;
  end;
end;



  procedure TForm1.ResizeButtons(Sender: TObject);
var
  ButtonPanel: TPanel;
  CloseButton, NextButton: TButton;
  ButtonWidth: Integer;
begin
  if not Assigned(TextForm) then Exit;

  // поиск панели кнопок    (Searching for the button panel)
  ButtonPanel := TextForm.FindComponent('ButtonPanel') as TPanel;
  if not Assigned(ButtonPanel) then Exit;

  // поиск кнопок    (Searching for the button panel)
  CloseButton := ButtonPanel.FindComponent('CloseButton') as TButton;
  NextButton := ButtonPanel.FindComponent('NextButton') as TButton;
  if not Assigned(CloseButton) or not Assigned(NextButton) then Exit;

  // изменение размеров кнопок     (Changing the button sizes)
  ButtonWidth := ButtonPanel.Width div 2;

  CloseButton.Width := ButtonWidth;
  NextButton.Width := ButtonWidth;

  CloseButton.Left := 0;
  NextButton.Left := ButtonWidth;
end;




procedure TForm1.Button2Click(Sender: TObject);
begin

  {command := 'find ' + MusicFolder + ' -exec sh -c ''file "{}" | grep -q "mp3"'' \; -print > ' + ExtractFilePath(Application.ExeName) + 'filelist';}
  command := 'find "' + MusicFolder + '" -type f | grep -i -P "\.(flac|mp3|aac|ogg|wav|wma)$" | sort -f --output="' + ExtractFilePath(Application.ExeName) + 'filelist"';     //поиск файлов в указанной папке   (Searching for files in the specified folder)
  RunCommand('/bin/bash',['-c', command],s);
  Form1.ListBox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'filelist'); //загружаем список файлов в ListBox1   (Loading the list of files into ListBox1)
  FoldersForListbox3; //выполняем процедуру обновления первого окна (там находятся первые папки после корня)  (Executing the procedure to update the first window (where the first folders after the root are located))
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if PlayIndex >= 0 then  //защита от пустого плейлиста  (Protection against an empty playlist)
           begin
  // убираем треугольник   (Removing the triangle)
 For i:= 0 to Form1.ListBox6.Items.Count - 1 do    //по всему короткому плейлисту...  (Going through the entire short playlist...)
        begin
             If Copy (Form1.ListBox6.Items[i], 6, Length(Form1.ListBox6.Items[i])) = OldPlayName then  //ищем название воспроизводимого файла   (Searching for the name of the currently playing file)
                begin
                     Form1.ListBox6.Items[i] := trimRight(Copy (Form1.ListBox6.Items[i], 6, Length(Form1.ListBox6.Items[i]))); //если найдено - обрезаем треугольник (If found, remove the triangle)
                end;
        end;


 If CountFileFind >= 10 then     // если счётчки неудачных открытий файла превысил 9, прекращаем попытки  (If the count of failed file openings exceeds 9, stop the attempts)
    begin
         Button5.Click;    // нажимаем на кнопку СТОП    (Pressing the STOP button)
         Status := 'NotFindFile';                    // статус программы - не нашёл файл   (Program status - file not found)
         ShowMessage (SMessageManyMissingFiles);
    end
 else Status := 'NormalPlay';   // если файл открылся и запустился - ставим статус программы как нормальное воспроизведение   (If the file opened and started playing, set the program status to normal playback)


 // защита от отсутствующих файлов   (Protection against missing files)
 i := 0;
 While i < 3 do
        begin
                If FileExists(Form1.ListBox2.Items[PlayIndex]) = true then   //если файл найден - включаем воспроизведение   (If the file is found, start playback)
                   begin

                     //command := 'mocp -l ' + '''' + Form1.ListBox2.Items[PlayIndex] + '''';

                     command := 'mocp -l ' + '"' + Form1.ListBox2.Items[PlayIndex] + '"';
                     RunCommand('/bin/bash',['-c', command],s);
                     i := 4;        //исключаем вход в этот цикл      (Excluding entry into this loop)
                     CountFileFind := 0;  // сбрасываем переменную, храняющую количество неудачных попыток чтения   (Resetting the variable that stores the number of failed read attempts)
                     Form1.Memo2.Clear;
                     Form1.Memo2.Text := String(Form1.ListBox2.Items[PlayIndex]);   // сохраняем в файл curplay название воспроизводимого файла (Saving the name of the currently playing file to the curplay file)
                     Form1.Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'curplay');
                     //Form1.Caption := ExtractFileName (Form1.ListBox2.Items[PlayIndex]);     // старый способ установки заголовка окна - просто по имени файла  (Old method of setting the window title - simply by the file name)

                     NeedUpdateCaption := True;  // устанавливаем признак необходимости обновления названия окна  (Setting the flag to indicate the need to update the window title)
                     //If OldPlayIndex > -1 then Form1.ListBox6.Items[OldPlayIndex] := OldPlayName;
                     OldPlayName := Form1.ListBox6.Items[PlayIndex];       //запоминаем название воспроизводимой песни для последующего поиска и удаления треугольника  (Remembering the name of the currently playing song for future search and triangle removal)

                     //Form1.ListBox6.Items[PlayIndex] := '▶  ' + Form1.ListBox6.Items[PlayIndex];  // добавляем треугольник к названию воспроизводимого пункта плейлиста (Adding a triangle to the name of the currently playing playlist item)
                     setTriangle; // добавляем треугольник к названию воспроизводимого пункта плейлиста   (так правильнее, т.к. вынесено в отдельную процедуру)  (Adding a triangle to the name of the currently playing playlist item (this is better, as it’s moved to a separate procedure))

                     Form1.Timer3.Enabled := true;   // защитный таймер, чтобы плеер не переключил автоматически песню до того, как она начнёт воспроизводиться (если статус STOP из mocp --info остался от предыдущего файла и не успел обновиться)
                                                     //(Protective timer to prevent the player from automatically switching the song before it starts playing (if the STOP status from mocp --info remains from the previous file and hasn’t updated))

                     //if NoTopIndex = false then    //иногда может быть установлен запрет на преход плейлиста к воспроизводимой песне. Например, по двойному щелчку в плейлисте
                                                     //  (Sometimes a restriction may be set to prevent the playlist from jumping to the currently playing song. For example, with a double-click in the playlist)
                       // begin
                         //    If PlayIndex+1 >= Form1.ListBox6.Items.Count-1 then Form1.ListBox6.TopIndex:= 0 else Form1.ListBox6.TopIndex:= PlayIndex;      //пролистывание плейлиста к первой играющей песне   (Scrolling the playlist to the first playing song)
                        //end;
                        setTopIndex;  //установка текущей играющей песни в середину плейлиста (если она находится вне видимой части плейлиста)
                                      //(Setting the current playing song to the middle of the playlist if it’s outside the visible part of the playlist)
                     NoTopIndex := false;  //снимаем запрет на установку текущей песни в середину видимой части плейлиста. Нужно редко, сейчас только когда вручную выбирается последняя песня из списка
                                           //(Removing the restriction on setting the current song to the middle of the visible part of the playlist. This is rarely needed, currently only when the last song from the list is selected manually)

                   end
             else
                 begin
                  Sleep(1000);  // если файл не нашёлся тормозим программу на секунду и увеличиваем счётчик неудачных поисков файла на один
                                //(If the file is not found, pause the program for a second and increase the count of failed file searches by one)
                  CountFileFind := CountFileFind + 1;
                 end;
        i := i +1;    //повторяем цикл попытки открытия файла (Repeating the cycle of trying to open the file)

        end;





    end else Status := 'STOP';

  //OldPlayIndex := PlayIndex;
  //ShowMessage ('LB6: ' + Form1.ListBox6.Items[PlayIndex] + 'LB2: ' + Form1.ListBox2.Items[PlayIndex]);
end;

procedure TForm1.Button3KeyPress(Sender: TObject; var Key: char);
begin
  PlayIndex := Form1.ListBox2.ItemIndex;  //при нажатии (физическом) на кнопку воспроизведения начинаем играть выделенный в плейлисте файл
                                          // (When the play button is pressed (physically), start playing the selected file in the playlist)
                                          //программно при этом происходит переключение на следующий после воспроизводимого - без учёта того, который подсвечен сейчас в списке
                                          // (Programmatically, the next file after the currently playing one is selected, regardless of which one is currently highlighted in the list)
end;

procedure TForm1.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PlayIndex := Form1.ListBox2.ItemIndex; // то же самое с нажатием на кнопку мышкой    (The same happens when the mouse button is clicked)
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  RunCommand('/bin/bash',['-c', 'mocp --toggle-pause'],s); //постановка на паузу (тут можно и статус программы обновлять, но пока вроде нет необходимости)
                                                           //(Pausing (the program status can be updated here, but there seems to be no need for it yet))
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  RunCommand('/bin/bash',['-c', 'mocp --stop'],s);    // остановка плеера    (Stopping the player)
  Form1.TrackBar1.Position:=0;    // установка позиции трекбара в ноль   (Setting the trackbar position to zero)
  Form1.Label1.Caption:='';       // прекращение отображения времени   (Stopping the time display)
  Status := 'Stop';               // статус    (Status)
  Form1.Caption := SForm1Caption;       // заголовок окна "Плеер"   (Window title "Player")
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  RunCommand('/bin/bash',['-c', 'mocp --seek=-10'],s);  // перемотка на 10 сек назад (может переделать на проценты?)   (Rewind 10 seconds back (could be changed to percentages?))
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  RunCommand('/bin/bash',['-c', 'mocp --seek=+10'],s);  // то же назад    (Same backward)
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  {Form1.ListBox2.Items := Form1.ListBox1.Items; //тупая загрузка файлов в плейлист (не очень, желательно переделать на загрузку того, что выбрано в ListBox3, 4, 5)
                                                 //(Simple file loading into the playlist (not ideal, it should be refactored to load what's selected in ListBox3, 4, 5) - done!)
  UpdateShortPlaylist;
  Form1.Button9.Click; //сохранение плейлиста   (Saving the playlist)}

 If LoadAllSource = 1 then
    begin
         for i := 0 to Form1.ListBox1.Items.Count -1 do
                begin
                     if pos (MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex], Form1.ListBox1.Items[i]) <> 0 then
                        begin
                             Form1.ListBox2.Items.Add(Form1.ListBox1.Items[i]);
                        end;
                end;
    end;

 If LoadAllSource = 2 then
    begin
         for i := 0 to Form1.ListBox1.Items.Count -1 do
                begin
                     if pos (MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex] + '/' + Form1.ListBox4.Items[Form1.ListBox4.ItemIndex], Form1.ListBox1.Items[i]) <> 0 then
                        begin
                             Form1.ListBox2.Items.Add(Form1.ListBox1.Items[i]);
                        end;
                end;
    end;

 If LoadAllSource = 3 then
    begin
         for i := 0 to Form1.ListBox1.Items.Count -1 do
                begin
                     if pos (MusicFolder + Form1.ListBox3.Items[Form1.ListBox3.ItemIndex] + '/' + Form1.ListBox4.Items[Form1.ListBox4.ItemIndex] + '/' + Form1.ListBox5.Items[Form1.ListBox5.ItemIndex], Form1.ListBox1.Items[i]) <> 0 then
                        begin
                             Form1.ListBox2.Items.Add(Form1.ListBox1.Items[i]);
                        end;
                end;
    end;

 UpdateShortPlaylist;   //процедура обновления короткого плейлиста (listBox6)  (Procedure to update the short playlist (listBox6))
 Form1.Button9.Click; //сохранение плейлиста   (Saving the playlist)

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 // сохранение текущего плейлиста и типа отображения времени    (Saving the current playlist and the time display type)
  NeedToCopyPlaylist := true; // установка отметки о том, что в плейлист внесены изменения. Используется для синхронизации плейлиста с тем, который лежит в папке с музыкой
                              //(Setting a flag indicating that changes have been made to the playlist. This is used for synchronizing the playlist with the one located in the music folder)
  SavePrevPlaylist; //сохранение предыдущего плейлиста    (Saving the previous playlist)
  Form1.ListBox2.Items.SaveToFile(ExtractFilePath(Application.ExeName) + 'playlist');
  Form1.Memo2.Clear;
  Form1.Memo2.Lines.Add(inttostr(Form1.ListBox3.ItemIndex));
  Form1.Memo2.Lines.Add(inttostr(Form1.ListBox4.ItemIndex));
  Form1.Memo2.Lines.Add(inttostr(Form1.ListBox5.ItemIndex));
  Form1.Memo2.Lines.Add(TypeOfTimer);
  If Form1.CheckBox1.Checked = true then Form1.Memo2.Lines.Add('interface_full') else Form1.Memo2.Lines.Add('interface_min');
  Form1.Memo2.Lines.Add(Form2.Edit1.Text);
  If Form1.CheckBox2.Checked = true then Form1.Memo2.Lines.Add('random') else Form1.Memo2.Lines.Add('no_random');
  If Form2.CheckBox1.Checked = true then Form1.Memo2.Lines.Add('playlist_save_to_music') else Form1.Memo2.Lines.Add('no_playlist_save_to_music');
  If Form2.CheckBox2.Checked = true then Form1.Memo2.Lines.Add('unicode_symbols') else Form1.Memo2.Lines.Add('no_unicode_symbols');
  If Form2.CheckBox3.Checked = true then Form1.Memo2.Lines.Add('log') else Form1.Memo2.Lines.Add('no_log');
  if Form2.Edit2.Text = '' then Form1.Memo2.Lines.Add('no_token') else Form1.Memo2.Lines.Add(Form2.Edit2.Text);
  Form1.Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'settings');
  Form1.Memo2.Clear;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  Form1.FormResize(Sender);
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
     //если после изменения статуса чекбокс включен, то перемешиваем рандом     (If the checkbox is enabled after the status change, shuffle the random)
  if Form1.CheckBox2.Checked = true then ErasePlayedRandom;
end;

procedure TForm1.FormActivate(Sender: TObject);

begin

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  RunCommand('/bin/bash',['-c', 'mocp --exit'],s);    //остановка moc при выходе из программы  (Stopping moc when exiting the program)
// сохранение плейлиста (Saving the playlist)

  Form1.Button9.Click;  // сохранение плейлиста

  If (NeedToCopyPlaylist = true) and (Form2.CheckBox1.Checked = true) then        //сохранение плейлиста в папку с музыкой в том случае, если в этом есть необходимость (Saving the playlist to the music folder if necessary)
     begin
          RunCommand('/bin/bash',['-c', 'cp ' + PlayListPath + ' ' + MusicFolder + 'playlist'],s);
          RunCommand('/bin/bash',['-c', 'chmod 666 ' + MusicFolder + 'playlist'],s);
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Visible := false;

  //установка начальных флагов для прокрутки  (Setting initial flags for scrolling)
  FMouseDown := False;

end;

procedure TForm1.FormResize(Sender: TObject);
begin


  Form1.Button2.Left:=Form1.Width - 204;
  Form1.Button10.Left:=Form1.Width - 84;
  Form1.Button11.Left:=Form1.Width - 175;
  Form1.Button14.Left:=Form1.Width - 56;
  Form1.Button15.Left:=Form1.Width - 56;
  Form1.Button16.Left:=Form1.Width - 56;
  Form1.Button17.Left:=Form1.Width - 225;
  Form1.Button18.Left:=Form1.Width - 56;
  Form1.Button3.Top:=Form1.Height - 43;
  Form1.Button4.Top:=Form1.Height - 43;
  Form1.Button5.Top:=Form1.Height - 43;
  Form1.Button6.Top:=Form1.Height - 43;
  Form1.Button7.Top:=Form1.Height - 43;
  Form1.Button10.Top:=Form1.Height - 37;
  Form1.Button11.Top:=Form1.Height - 37;
  Form1.Button12.Top:=Form1.Height - 43;
  Form1.Button13.Top:=Form1.Height - 43;
  Form1.Button17.Top:=Form1.Height - 37;
  Form1.ListBox1.Width:=Form1.Width - 20;
  Form1.ListBox2.Width:=Form1.Width - 20;
  Form1.ListBox5.Width := Form1.Width - 600;
  Form1.ListBox6.Width := Form1.Width - 68;
  Form1.CheckBox1.Top:= Form1.Height - 37;
  Form1.CheckBox1.Left:=Form1.Width - 300;
  Form1.CheckBox2.Left:=Form1.Width - 56;
  Form1.Button19.left := Form1.Width - 56;

  Form1.Button12.Left:= Form1.CheckBox1.Left - 115 - 37;
  PlayButtonInterval := (Form1.Button12.Left - 8 - (115*4)) div  4;
  Form1.Button5.Left:= Form1.Button12.Left - PlayButtonInterval - 115;
  Form1.Button13.Left:= Form1.Button5.Left - PlayButtonInterval - 115;
  Form1.Button4.Left:= Form1.Button13.Left - PlayButtonInterval - 115;
  If Form1.CheckBox1.Checked = true then
  begin
     ListBox3.Visible:=true;
     ListBox4.Visible:=true;
     ListBox5.Visible:=true;
     Form1.Button14.Visible:=true;
     Form1.Button1.Visible:=false;
     Form1.Button2.Visible:=true;
     Form1.Button8.Visible:=true;
     Form1.Button14.Visible:=true;
     Form1.Button18.Visible:=true;
     Form1.Button15.Top:=272;
     Form1.Button16.Top:=336;
     Form1.CheckBox2.Top := Form1.Button16.Top + 72;
     Form1.Button19.Top := Form1.CheckBox2.Top + 32;
     Form1.ListBox6.Top:=272;
     Form1.ListBox6.Height:=Form1.Height - 324;
     Form1.Panel1.Top:=229;
     Form1.Panel1.left:=216;
     Form1.TrackBar1.Left:=287;
     Form1.TrackBar1.Top:=224;
     Form1.TrackBar1.Width:=Form1.Width - Form1.Button2.Width - 304;

  end
     else
         begin
              ListBox3.Visible:=false;
              ListBox4.Visible:=false;
              ListBox5.Visible:=false;
              Form1.Button14.Visible:=False;
              Form1.Button1.Visible:=False;
              Form1.Button2.Visible:=False;
              Form1.Button8.Visible:=False;
              Form1.Button14.Visible:=False;
              Form1.Button18.Visible:=False;
              Form1.Button15.Top:=48;
              Form1.Button16.Top:=112;
              Form1.CheckBox2.Top := Form1.Button16.Top + 72;
              Form1.Button19.Top := Form1.CheckBox2.Top + 32;
              Form1.ListBox6.Top:=48;
              Form1.ListBox6.Height:=Form1.Height - 100;
              Form1.Panel1.Left:=8;
              Form1.Panel1.Top:=8;
              Form1.TrackBar1.Left:=77;
              Form1.TrackBar1.Top:=8;
              Form1.TrackBar1.Width:=Form1.Width - 100;
         end;


end;

procedure TForm1.FormShow(Sender: TObject);
var
ScreenCenter: TPoint;
begin
  //логирование  (logging)
 RunCommand('/bin/bash',['-c', 'rm ~/player_log'],s);   // удаление лога перед запуском программы   (Deleting the log before starting the program)

 ProgramLog := true; //включение логирования запуска (после инициализации настроек будет или включено, или выклчюено). Если будет выключено, то лог запуска будет удалён
                     // (Enabling launch logging (after initializing settings, it will be either enabled or disabled). If disabled, the launch log will be deleted)
 //логирование   (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запуск программы" >> ~/player_log'],s);

 // Определение координат центра экрана, на котором находится курсор мыши  (Determining the coordinates of the screen center where the mouse cursor is located)
  ScreenCenter.X := Screen.MonitorFromPoint(Mouse.CursorPos).Width div 2;
  ScreenCenter.Y := Screen.MonitorFromPoint(Mouse.CursorPos).Height div 2;
  // Определение координат верхнего левого угла главной формы, чтобы она располагалась по центру экрана   (Determining the coordinates of the top-left corner of the main form so that it is positioned at the center of the screen)
  Left := Screen.MonitorFromPoint(Mouse.CursorPos).Left + ScreenCenter.X - Width div 2;
  Top := Screen.MonitorFromPoint(Mouse.CursorPos).Top + ScreenCenter.Y - Height div 2;
  //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Координаты центра экрана определены" >> ~/player_log'],s);

 NeedSetMusicDir := true; // взведение триггера на необходимость указания пути к музыке. Если путь уже установлен, то триггер будет снят в процессе чтения настроек
                          //  (Setting a trigger for specifying the music path. If the path is already set, the trigger will be removed during settings reading)
 //логирование (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "NeedSetMusicDir := true;" >> ~/player_log'],s);

 PrevPlaylist := 0; //установка счётчика для запоминания предыдущих плейлистов  (Setting a counter to remember previous playlists)
 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "установка счётчика для запоминания предыдущих плейлистов" >> ~/player_log'],s);

 TypeOfTimer := 'current';   //установка первоначального типа отображения времени  (Setting the initial time display type)
 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "установка первоначального типа отображения времени" >> ~/player_log'],s);

 CountFileFind := 0;         // установка счётчика неудачных поисков файлов в ноль (Setting the counter for failed file searches to zero)
 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "установка счётчика неудачных поисков файлов в ноль" >> ~/player_log'],s);

 MusicFolder := '~/';   //задание папки с музыкой (тут надо сделать возможность добавления нескольких путей, конечно)   (Setting the music folder (here, the ability to add multiple paths needs to be implemented, of course))
 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "установка временного пути к музыке (~/)" >> ~/player_log'],s);

                        //логирование  (logging)
                        if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "поиск файла настроек" >> ~/player_log'],s);
                        if FileExists(ExtractFilePath(Application.ExeName) + 'settings') = true then
                           begin
                           //логирование (logging)
                           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "файл настроек найден" >> ~/player_log'],s);

                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "начинаю загрузку настроек" >> ~/player_log'],s);
                                Form1.Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'settings');

                                //логирование (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "загрузка файла настроек окончена, начинаю применять" >> ~/player_log'],s);

                                //логирование   (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "чтение типа отображения времени" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 3 then TypeOfTimer := Form1.Memo2.Lines[3]; // чтение типа отображения времени   (Reading the time display type)

                                //логирование (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "чтение типа интерфейса - с папками или бьез низ" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 4 then if Form1.Memo2.Lines[4] = 'interface_full' then Form1.CheckBox1.Checked:=true else Form1.CheckBox1.Checked:=false; // чтение признака отображения обозревателя файлов
                                                                                                                                                                                       //  (Reading the file explorer display flag)

                                //логирование (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "чтение пути к папке с музыкой" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 5 then   // путь к папке с музыкой  (Path to the music folder)
                                   begin
                                        //логирование (logging)
                                        if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "проверяю, существует ли путь ' + Form1.Memo2.Lines[5] + '" >> ~/player_log'],s);
                                        if DirectoryExists (Form1.Memo2.Lines[5]) = false then NeedSetMusicDir := true else
                                           begin
                                                //логирование (logging)
                                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "путь существует" >> ~/player_log'],s);
                                                NeedSetMusicDir := false;
                                                MusicFolder := Form1.Memo2.Lines[5] + '/';
                                           end;
                                   end
                                   else
                                   begin
                                        NeedSetMusicDir := true;
                                   end;
                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "читаю признак случайного воспроизведения" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 6 then if Form1.Memo2.Lines[6] = 'random' then Form1.CheckBox2.Checked:=true else Form1.CheckBox2.Checked:=false; // чтение признака рандомного воспроизведения (Reading the random playback flag)

                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "читаю признак необходимости сохранения плейлиста в папке с музыкой" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 7 then if Form1.Memo2.Lines[7] = 'playlist_save_to_music' then PlaylistSaveToMusicFolder:=true else PlaylistSaveToMusicFolder:=false; // сохранять ли плейлист в папку с музыкой?
                                                                                                                                                                                                   // (Should the playlist be saved to the music folder?)

                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "названия кнопок в юникоде или нет?" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 8 then if Form1.Memo2.Lines[8] = 'unicode_symbols' then UnicodeSymbols:=true else UnicodeSymbols:=false; // нужно ли сменить названия кнопок на текстовые или можно оставить юникодные?
                                                                                                                                                                      // (Should the button names be changed to text or can the Unicode ones be kept?)

                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "нужно ли вести лог?" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 9 then if Form1.Memo2.Lines[9] = 'log' then ProgramLog:=true else ProgramLog:=false; // нужно ли вести лог?   (Should logging be enabled?)
                                If ProgramLog = false then RunCommand('/bin/bash',['-c', 'rm ~/player_log'],s) else RunCommand('/bin/bash',['-c', 'echo "нужно, продолжаем лог" >> ~/player_log'],s); //если лог не нужен, удаляем его файл, если нужен - продолжаем вести
                                                                                                                                                                                                      // (If logging is not needed, delete the log file, if needed, continue logging)

                                //логирование  (logging)
                                if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Чтение токена для genius.com" >> ~/player_log'],s);
                                if Form1.Memo2.Lines.Count > 10 then
                                   begin
                                        GeniusToken := Form1.Memo2.Lines[10]; // Чтение токена для genius.com   (Reading the token for genius.com)
                                        Form2.Edit2.Text := Form1.Memo2.Lines[10];
                                   end;


  //логирование  (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "существует ли файл списка файлов?" >> ~/player_log'],s);
  if FileExists(ExtractFilePath(Application.ExeName) + 'filelist') = true then   //существует ли список файлов?   (Does the file list exist?)
     begin
     //логирование  (logging)
     if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Существует, приступаю к его загрузке в ListBox1" >> ~/player_log'],s);

     Form1.ListBox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'filelist');   // загрузка списка файлов    (Loading the file list)

     //логирование (logging)
     if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запускаю процедуру FoldersForListbox3" >> ~/player_log'],s);
     FoldersForListbox3;

     end;

  //логирование   (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Присваиваю путь к плейлисту (' + ExtractFilePath(Application.ExeName) + 'playlist' +'" >> ~/player_log'],s);
  PlayListPath := ExtractFilePath(Application.ExeName) + 'playlist'; //загрузка плейлиста по умолчанию. Это нужно менять, т.к. процедура используется также для загрузки произвольного плейлиста
                                                                     //  (Loading the default playlist. This needs to be changed, as the procedure is also used for loading a custom playlist)

  //логирование    (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запускаю процедуру LoadPlayList" >> ~/player_log'],s);
  LoadPlaylist;

                           //логирование  (logging)
                           if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше ли первая строка мемо, чем количество строк в первом окне?" >> ~/player_log'],s);

                                If (strToInt(Form1.Memo2.Lines[0]) < Form1.ListBox3.Items.Count) and (strToInt(Form1.Memo2.Lines[0]) > -1) then
                                   begin
                                   //логирование  (logging)
                                   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше, устанавливаю позицию в первом окне" >> ~/player_log'],s);
                                        Form1.ListBox3.ItemIndex:=strToInt(Form1.Memo2.Lines[0]);
                                        //логирование   (logging)
                                        if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запускаю чтение списка папок во второе окно (FoldersForListbox4)" >> ~/player_log'],s);
                                        FoldersForListbox4;
                                        //логирование  (logging)
                                        if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше ли вторая строка мемо, чем количество строк во втором окне?" >> ~/player_log'],s);
                                           If (strToInt(Form1.Memo2.Lines[1]) < Form1.ListBox4.Items.Count) and (strToInt(Form1.Memo2.Lines[1]) > -1) then
                                              begin
                                              //логирование  (logging)
                                              if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше, устанавливаю позицию во втором окне" >> ~/player_log'],s);
                                                   Form1.ListBox4.ItemIndex:=strToInt(Form1.Memo2.Lines[1]);
                                                   //логирование (logging)
                                                   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запускаю чтение списка файлов в третье окно (FoldersForListbox5)" >> ~/player_log'],s);
                                                   FoldersForListbox5;
                                                   //логирование (logging)
                                                   if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше ли третья строка мемо, чем количество строк в третьем окне?" >> ~/player_log'],s);
                                                  If (strToInt(Form1.Memo2.Lines[2]) < Form1.ListBox5.Items.Count) and (strToInt(Form1.Memo2.Lines[2]) > -1) then
                                                     begin
                                                     //логирование  (logging)
                                                     if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Меньше, устанавливаю позицию в третьем окне" >> ~/player_log'],s);
                                                          Form1.ListBox5.ItemIndex:=strToInt(Form1.Memo2.Lines[2]);

                                                     end;
                                              end;
                                   end;

                           end;



  //логирование  (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Запуск сервера mocp" >> ~/player_log'],s);
  RunCommand('/bin/bash',['-c', 'mocp --server'],s);       //запуск сервера moc   (Starting the moc server)

  //логирование   (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Form1.Memo1.Text := 1111, а зачем - не знаю" >> ~/player_log'],s);
  form1.Memo1.Text:='1111';    // сам не знаю, зачем это нужно   (I don't know why this is needed)

  //логирование (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Очистка названия основной формы" >> ~/player_log'],s);
  Form1.Label1.Caption:= '';

  //логирование  (logging)
  if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "OldPlayIndex := -1; Кажется, это уже не используется" >> ~/player_log'],s);
  OldPlayIndex := -1;  // это не используется, кажется     (It doesn't seem to be used)


 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Форма настроек: присваивание пути к папке с музыкой" >> ~/player_log'],s);;
 if Form1.Memo2.Lines.Count > 5 then Form2.Edit1.Text := Form1.Memo2.Lines[5];

 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Форма настроек: сохранять ли плейлист в папку с музыкой?" >> ~/player_log'],s);
 If PlaylistSaveToMusicFolder = true then Form2.CheckBox1.Checked:=true else Form2.CheckBox1.Checked:=false;  //сохранять ли плейлист в папку с музыкой?  (Should the playlist be saved to the music folder?)

 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Форма настроек: символы в юникоде?" >> ~/player_log'],s);
 if UnicodeSymbols = true then Form2.CheckBox2.Checked:=true else Form2.CheckBox2.Checked:=false;

 //логирование   (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Форма настроек: логирование?" >> ~/player_log'],s);
 if ProgramLog = true then Form2.CheckBox3.Checked:=true else Form2.CheckBox3.Checked:=false;

 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Вызов процедуры CheckBox2Change. Нужно для применения наименования кнопок" >> ~/player_log'],s);
 Form2.CheckBox2Change(Sender);

 //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Выделение пунктов в обозревателе файлов и плейлисте" >> ~/player_log'],s);
 // это послестартовый таймер, в нём обозреватель файлов обновляется и в нём выделяются пункты, которые были выбраны в прошлый раз
 //  (This is a post-start timer, in which the file explorer is updated and the items selected last time are highlighted)
  Form1.ListBox6.TopIndex:= Form1.ListBox6.ItemIndex;    //и плейлист тоже (and the playlist is also updated)
  Form1.ListBox3.TopIndex:= Form1.ListBox3.ItemIndex;
  Form1.ListBox4.TopIndex:= Form1.ListBox4.ItemIndex;
  Form1.ListBox5.TopIndex:= Form1.ListBox5.ItemIndex;

  //логирование  (logging)
 if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Если не установлен путь к папке с музыкой, то показываем диалог настроек" >> ~/player_log'],s);
  if NeedSetMusicDir = true then  // если не установлен путь к папке с музыкой, то показываем диалог настроек   (If the path to the music folder is not set, show the settings dialog)
     begin
          //логирование  (logging)
          if ProgramLog = true then RunCommand('/bin/bash',['-c', 'echo "Не установлен, показываем" >> ~/player_log'],s);
          ShowMessage (SMessageNoMusicPath);  //сообщение об отсутствующей папке с музыкой (Message about missing music folder)
          Form1.Button18.Click;
     end;

  //Form1.Button19.Caption:=' Текст'+sLineBreak+'песни'; //присваивание кнопке двухстрочного названия  (сейчас это в файле перевода) (Assigning a two-line title to the button (currently in the translation file))

end;

procedure TForm1.Label1Click(Sender: TObject);
begin
 // тип отображения времени   (Time display type)
  If TypeOfTimer = 'current' then TypeOfTimer := 'left' else TypeOfTimer := 'current';
  If TypeOfTimer = 'current' then Form1.Label1.Caption:=currenttime + '/' + totaltime else Form1.Label1.Caption:= timeleft + '/' + totaltime;
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
begin

end;

procedure TForm1.ListBox3ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.ListBox3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FMouseDown := True;
    FStartY := Y;
    FScrollOffset := ListBox3.TopIndex; // запоминаем текущую позицию прокрутки (Remember the current scroll position)
  end;
end;

procedure TForm1.ListBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Delta: Integer;
begin
 If Form1.ListBox3.items.count > 0 then  //если список пустой, то ничего не делаем  (If the list is empty, do nothing)
  begin
       if FMouseDown then
       begin
            Delta := FStartY - Y; // вычисляем разницу положения мыши   (Calculating the difference in mouse position)
            ListBox3.TopIndex := FScrollOffset + Delta div ListBox3.ItemHeight;
            if ListBox3.TopIndex < 0 then
            ListBox3.TopIndex := 0;
            if ListBox3.TopIndex > ListBox3.Count - 1 then
            ListBox3.TopIndex := ListBox3.Count - 1;
       end;

  end;
end;

procedure TForm1.ListBox3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    FMouseDown := False;
end;

procedure TForm1.ListBox3SelectionChange(Sender: TObject; User: boolean);
begin
  FoldersForListbox4;
  LoadAllSource := 1;
end;

procedure TForm1.ListBox4Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FMouseDown := True;
    FStartY := Y;
    FScrollOffset := ListBox4.TopIndex; // запоминаем текущую позицию прокрутки  (Remember the current scroll position)
  end;
end;

procedure TForm1.ListBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Delta: Integer;
begin
 If Form1.ListBox4.items.count > 0 then  //если список пустой, то ничего не делаем  (If the list is empty, do nothing)
  begin
       if FMouseDown then
       begin
            Delta := FStartY - Y; // вычисляем разницу положения мыши  (Calculating the difference in mouse position)
            ListBox4.TopIndex := FScrollOffset + Delta div ListBox4.ItemHeight;
            if ListBox4.TopIndex < 0 then
            ListBox4.TopIndex := 0;
            if ListBox4.TopIndex > ListBox4.Count - 1 then
            ListBox4.TopIndex := ListBox4.Count - 1;
            end;

  end;
end;

procedure TForm1.ListBox4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    FMouseDown := False;
end;

procedure TForm1.ListBox4SelectionChange(Sender: TObject; User: boolean);
begin
  FoldersForListbox5;
  LoadAllSource := 2;
end;

procedure TForm1.ListBox5DblClick(Sender: TObject);
begin
  Form1.Button1.Click;        // добавление файла в список воспроизведения по двойному щелчку в обозревателе файлов   (Adding a file to the playlist by double-clicking in the file explorer)
end;

procedure TForm1.ListBox5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FMouseDown := True;
    FStartY := Y;
    FScrollOffset := ListBox5.TopIndex; // запоминаем текущую позицию прокрутки     (Remember the current scroll position)
  end;
end;

procedure TForm1.ListBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Delta: Integer;
begin
     If Form1.ListBox5.items.count > 0 then  //если список пустой, то ничего не делаем  (If the list is empty, do nothing)
     begin
          if FMouseDown then
          begin
               Delta := FStartY - Y; // вычисляем разницу положения мыши   (Calculating the difference in mouse position)
               ListBox5.TopIndex := FScrollOffset + Delta div ListBox5.ItemHeight;
               if ListBox5.TopIndex < 0 then
               ListBox5.TopIndex := 0;
               if ListBox5.TopIndex > ListBox5.Count - 1 then
               ListBox5.TopIndex := ListBox5.Count - 1;
               end;

     end;
end;

procedure TForm1.ListBox5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    FMouseDown := False;
end;

procedure TForm1.ListBox5SelectionChange(Sender: TObject; User: boolean);
begin
  LoadAllSource := 3;
end;

procedure TForm1.ListBox6Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox6DblClick(Sender: TObject);
begin
  ErasePlayedRandom;
  PlayIndex := Form1.ListBox2.ItemIndex;   //запуск воспроизведения по двойному щелчку в плейлисте    (Start playback on double-click in the playlist)
  NoTopIndex := true; //запрет на установку играющей песни в середину LastMouseMoveTime: TDateTime;списка. Если переключение происходит по двойному щелчку, а выбрана последняя песня из списка
                      // (которая видна наполовину), то перескакивание плейлиста сбивает с толку
                      // (Prevent setting the currently playing song in the middle of the playlist.
                      // If switching happens by double-click and the last song in the playlist is selected (half-visible), the playlist jump confuses the user)

  Form1.Button3.Click;
end;

procedure TForm1.ListBox6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- отсюда  (то же самое в других listbox-ах, которые видит пользователь)
     // (Mobile-style scrolling (with the left mouse button held down) --- from here)
  if Button = mbLeft then
  begin
    FMouseDown := True;
    FStartY := Y;
    FScrollOffset := ListBox6.TopIndex; // Запоминаем текущую позицию прокрутки   (Remember the current scroll position)
  end;
  //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- досюда   (Mobile-style scrolling (with the left mouse button held down) --- until here)
end;

procedure TForm1.ListBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Delta: Integer;
begin
     //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- отсюда  (то же самое в других listbox-ах, которые видит пользователь)
 // (Mobile-style scrolling (with the left mouse button held down) --- from here)

  If Form1.ListBox6.items.count > 0 then  //если список пустой, то ничего не делаем  (If the list is empty, do nothing)
  begin
       if FMouseDown then
        begin
        Delta := FStartY - Y; // вычисляем разницу положения мыши   (Calculate the difference in mouse position)
        ListBox6.TopIndex := FScrollOffset + Delta div ListBox6.ItemHeight;
         if ListBox6.TopIndex < 0 then
         ListBox6.TopIndex := 0;
         if ListBox6.TopIndex > ListBox6.Count - 1 then
         ListBox6.TopIndex := ListBox6.Count - 1;
         end;
  end;
  //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- досюда    (Mobile-style scrolling (with the left mouse button held down) --- until here)
end;

procedure TForm1.ListBox6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- отсюда  (то же самое в других listbox-ах, которые видит пользователь)
 // (Mobile-style scrolling (with the left mouse button held down) --- from here)
  if Button = mbLeft then
     begin
    FMouseDown := False;
     end;
  //прокрутка по-мобильному (с зажатой левой кнопкой мыши) --- досюда      (Mobile-style scrolling (with the left mouse button held down) --- until here)
end;

procedure TForm1.ListBox6SelectionChange(Sender: TObject; User: boolean);
begin
  Form1.ListBox2.ItemIndex:=Form1.ListBox6.ItemIndex;  //синхронизация положения выделения в коротком и основном плейлисте (короткий - ведущий)
                                                       // (Synchronize the selection position in the short and main playlists, with the short one being the master)
end;

procedure TForm1.Memo4Change(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  If form1.ListBox6.ItemIndex > -1 then Form1.Button11.Click;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 // получение от moc информации о воспроизведении   // (Fetching playback information from moc)
  Form1.Memo1.Clear;
  Form1.Process1.CommandLine:='mocp --info';
  Process1.Execute;
  Form1.Memo1.Lines.LoadFromStream(Form1.Process1.Output);
  Process1.Terminate(0);

  //RunCommand('/bin/bash',['-c', 'mocp --info |grep State'],s);
  If Form1.Memo1.Lines.Count > 0 then state := trimRight(Copy (Form1.Memo1.Lines[0], 8, 10)); // если данные от moc-а есть, то узнаём его статус  // (If data from moc is available, check the status)
  if state = 'PLAY' then //если статус - вопсроизведение, то читаем остальные позиции   // (If the status is "playing," read other positions)
     begin
         if Form1.Memo1.Lines.Count >= 10 then // если позиции все, то продолжаем чтение  (If all positions are read, continue reading)
            begin
          //RunCommand('/bin/bash',['-c', 'mocp --info |grep SongTitle'],s);
          title := Copy (Form1.Memo1.Lines[2], 7, length(Form1.Memo1.Lines[2]));      // название файла (исполнитель + название + альбом) (File name - artist + title + album)
          songtitle := Copy (Form1.Memo1.Lines[4], 11, length(Form1.Memo1.Lines[4])); // название песни     (Song title)
          artist := Copy (Form1.Memo1.Lines[3], 8, length(Form1.Memo1.Lines[3]));     // исполнитель   (Artist)
          //RunCommand('/bin/bash',['-c', 'mocp --info |grep TotalSec'],s);
          totalsec := trimRight(Copy (Form1.Memo1.Lines[8], 11, 5));                  // общая длина песни в секундах (полезно для трэкбара) (Total song length in seconds, useful for the trackbar)
          //RunCommand('/bin/bash',['-c', 'mocp --info |grep CurrentSec'],s);         // положение воспроизведения в секундах    (Playback position in seconds)
          currentsec := trimRight(Copy (Form1.Memo1.Lines[10], 13, 5));               // текущее время в секундах     (Current time in seconds)
          currenttime := trimRight(Copy (Form1.Memo1.Lines[9], 14, 7));               // текущее время mm:ss  (Current time in mm:ss format)
          totaltime := trimRight(Copy (Form1.Memo1.Lines[6], 12, 7));                 // общее время mm:ss  (Total time in mm:ss format)
          timeleft := trimRight(Copy (Form1.Memo1.Lines[7], 11, 7));                  // оставшееся время mm:ss  (Remaining time in mm:ss format)
          If TypeOfTimer = 'current' then Form1.Label1.Caption:=currenttime + '/' + totaltime else Form1.Label1.Caption:= timeleft + '/' + totaltime; //выбор типа отображения времени   (Choosing the time display format)
          Form1.TrackBar1.Max:=(StrToInt(totalsec));         // задание максимального значения трекбара     (Setting the maximum value of the trackbar)
          Form1.TrackBar1.Position:=(strtoint(currentsec));  // текущее его положение  (Current trackbar position)

          if NeedUpdateCaption = true then        // если надо обновить название окна (If the window title needs to be updated)
             begin
             NeedUpdateCaption := false;
             Form1.Caption := artist + ' - ' + songtitle;   //обновляем (исполнитель + название)  (Update the window title with artist + title)
             end;
          end;
     end;

  // автоматическое переключение на следующую песню    (Automatic switch to the next song)
  if (state = 'STOP') and (Timer3.Enabled = false) then    // если статус moc - стоп и защитный таймер не работает (с включения песни прошло полторы секунды)
                                                           //  (If moc status is "stop" and the protective timer is not active (1.5 seconds have passed since the song started))
     begin

  if Status = 'NormalPlay' then                    //если статус программы при этом нормальное воспроизведение (не рандом или единичное воспроизведение из обозревателя файлов)
                                                   //(If the program status is normal playback (not random or single track playback from the file browser))
     begin

          FindPlayIndex;       //выполняем процедуру поиска текущего воспроизводимого пункта плейлиста   (Run procedure to find the currently playing track in the playlist)

          If (PlayIndex + 1) < Form1.ListBox2.Items.Count then     //если следующий индекс плейлиста не выйдет за его пределы... (If the next playlist index is within bounds...)
             begin
                  if Form1.CheckBox2.Checked = false then PlayIndex := PlayIndex + 1;  //если не включен рандом, то переключаемся на следующую и запускаем воспроизвденеие   (If random is off, switch to the next track and start playback)
                  Form1.Button3.Click;

             end
          else
          begin
           If Form1.ListBox2.Items.Count > 0 then   // ... если следующий индекс больше общего количества записей в плейлисте и при этом количество больше нуля
                                                    // ... if the next index exceeds the total number of tracks in the playlist and the total count is greater than zero,
              begin

                   if Form1.CheckBox2.Checked = false then PlayIndex := 0;         // и не включен рандом, то включаем первый пункт. Короче - если автовоспроизведение дошло до конца плейлиста, то начинает воспроизводить его сначала
                                                                                   // and random is off, then start from the first track. Essentially, if autoplay reaches the end of the playlist, it starts over

                   Form1.Button3.Click;
              end;
          end;
     end;

     end;
end;

procedure TForm1.Timer2ForStartTimer(Sender: TObject);
begin

end;


procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Form1.Timer3.Enabled := False;    // отключаем защитный таймер, который включается при переключении песни   (Disable the protective timer that activates when the song switches)
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  Form1.Button17.Caption := '↶';
  Form1.Timer4.Enabled:=false;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin

end;

procedure TForm1.TrackBar1Exit(Sender: TObject);
begin

end;

procedure TForm1.TrackBar1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Timer1.Enabled:=false;      // отключаем таймер, читающий информацию из moc-а на время манипулирования мышой с трекбаром в целях перемотки
                                    //  (Disable the timer that reads information from moc while manipulating the trackbar with the mouse for seeking)
end;

procedure TForm1.TrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     // перемотка трекбаром   (Seeking using the trackbar)
   command := 'mocp --jump=' + intToStr(Form1.TrackBar1.Position) + 's';
   RunCommand('/bin/bash',['-c', command],s);
   Form1.Timer1.Enabled:=true;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin

end;

procedure TForm1.TrackBar2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

end.

