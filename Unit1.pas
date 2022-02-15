unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edt_CompNome: TEdit;
    Edt_WinVersao: TEdit;
    Edt_PastaTemp: TEdit;
    Edt_WinDiretorio: TEdit;
    Edt_PastaSys: TEdit;
    Edt_usurnome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  function fGetComputerName: String;
  function fGetUserName: String;
  function fGetSystemDirectory: String;
  function fWindowsDirectory: String;
  function fGetTempPath: String;
  function fGetVersionEx: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edt_CompNome.Text     := fGetComputerName;
  Edt_UsurNome.Text     := fGetUserName;
  Edt_PastaSys.Text     := fGetSystemDirectory;
  Edt_WinDiretorio.Text := fWindowsDirectory;
  Edt_PastaTemp.Text    := fGetTempPath;
  Edt_WinVersao.Text    := fGetVersionEx;
end;

function TForm1.fGetComputerName: String;
var
buffer: array [0..255] of char;
i: Dword;
begin
    i:= sizeof(buffer);
    getcomputername(buffer, i);
    result:= strpas(buffer);

end;

function TForm1.fGetSystemDirectory: String;
var
Buffer: Array[0..255] of Char;
begin
  GetSystemDirectory(Buffer, 255);
  Result := StrPas(Buffer);

end;

function TForm1.fGetTempPath: String;

var
  Buffer: Array[0..255] of Char;
begin
  GetTempPath(255, Buffer);
  Result := StrPas(Buffer);
end;

function TForm1.fGetUserName: String;
var
  Buffer: Array[0..255] of Char;
  I: DWord;
begin
  I := SizeOf(Buffer);
  GetUserName(Buffer, I);
  Result := StrPas(Buffer);


end;

function TForm1.fGetVersionEx: string;

var
  VersionInfo: TOSVersionInfo;
begin
  VersionInfo.dwOSVersionInfoSize := SizeOf(VersionInfo);

  GetVersionEx(VersionInfo);

  with VersionInfo do
  begin
    case dwPlatformid of
      0: begin
           Result := 'Windows 3.11';
         end;

      1: begin
           case dwMinorVersion of
             0: Result := 'Windows 95';

             10: begin
                   if (szCSDVersion[ 1 ] = 'A' ) then
                     Result :='Windows 98 SE'
                   else
                     Result := 'Windows 98';
                 end;

             90: Result := 'Windows Millenium';
             else
               Result := 'Não achei a Versão';
           end;
         end;

       2: begin
            case dwMajorVersion of
              3: Result := 'Windows NT ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);

              4: Result := 'Windows NT ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);

              5: begin
                   case dwMinorVersion of
                     0: Result := 'Windows 2000';
                     1: Result := 'Windows XP';
                   end;
                 end;

              6: Result := 'Windows 7 ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);

              7: Result := 'Windows 8 ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);

              8: Result := 'Windows Vista ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);
              9: Result := 'Windows 10 ' + IntToStr(dwMajorVersion) + '.' +
                           IntToStr(dwMinorVersion);
              else
                Result := 'Não achei a Versão';
            end;

            if szCSDVersion <> '' then
              Result := Result + ' ' + szCSDVersion;
          end;
       else
         Result := 'Não achei a Platforma';
    end;

    Result := Result + ', Build: ' + IntToStr(Loword(dwBuildNumber)) ;
  end;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  Edt_CompNome.Text     := fGetComputerName;
  Edt_UsurNome.Text     := fGetUserName;
  Edt_PastaSys.Text     := fGetSystemDirectory;
  Edt_WinDiretorio.Text := fWindowsDirectory;
  Edt_PastaTemp.Text    := fGetTempPath;
  Edt_WinVersao.Text    := fGetVersionEx;
end;

function TForm1.fWindowsDirectory: String;
var
  Buffer: Array[0..255] of Char;
begin
  GetWindowsDirectory(Buffer, 255);
  Result := StrPas(Buffer);

end;

end.
