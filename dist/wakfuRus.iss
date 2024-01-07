[Setup]
; ��������� �����������
AppName=Wakfu �����������
AppVerName=Wakfu ����������� 1.82.2
DefaultDirName={commonpf}\Wakfu �����������
DefaultGroupName=Wakfu �����������
UninstallDisplayIcon={app}\Wakfu �����������.exe
Compression=lzma
AppendDefaultDirName=no
AppPublisher=Wakfu �����������
AppPublisherURL=https://vk.com/wakfu_translate
OutputBaseFilename=wakfu_rus
VersionInfoVersion=1.82.2

[Files]
; ����������� ������
Source: "texts_en.properties"; DestDir: "{app}\contents\i18n";
Source: "theme\fonts\*"; DestDir: "{app}\contents\gui_jar\theme\fonts";
Source: "zip.exe"; DestDir: "{app}\contents\i18n";
Source: "zip.exe"; DestDir: "{app}\contents\gui_jar";


[Run]
; �������� ������ i18n_en.jar
Filename: "{app}\contents\i18n\zip.exe"; Parameters: "-r ""i18n_en.jar"" ""texts_en.properties"""; Flags: runminimized shellexec
; ����������� �������
Filename: "{app}\contents\gui_jar\zip.exe"; Parameters: "-r ""gui.jar"" ""theme"""; Flags: runminimized shellexec