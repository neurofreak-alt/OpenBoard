; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define ApplicationVersion GetFileVersion("..\..\build\win32\release\product\OpenBoard.exe")


[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8CCA6AC7-BBF9-4DD2-8E70-A907E0FCA38F}}
AppName=OpenBoard
AppVersion={#ApplicationVersion}
AppVerName=OpenBoard {#ApplicationVersion}
UninstallDisplayName=OpenBoard {#ApplicationVersion}
AppPublisher=Open Education Foundation
ArchitecturesInstallIn64BitMode=x64

AppPublisherURL=http://www.oe-f.org
AppSupportURL=http://www.openboard.org
AppUpdatesURL=http://get.openboard.org

DefaultDirName={pf}\OpenBoard
DefaultGroupName=OpenBoard

#define ProjectRoot GetEnv('PROJECT_ROOT')

OutputDir={#ProjectRoot}\install\win32\
OutputBaseFilename=OpenBoard
SetupIconFile={#ProjectRoot}\resources\win\OpenBoard.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "gr"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "sp"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]

Type: files ; Name: "{app}\OpenBoard.pdb"
Type: filesandordirs ; Name: "{app}\library"
Type: filesandordirs ; Name: "{app}\Microsoft.VC90.CRT"
Type: filesandordirs ; Name: "{app}\plugins"
Type: filesandordirs ; Name: "{app}\i18n"
Type: files ; Name: "{app}\*.dll"


#define QtLibs GetEnv('QT_BIN')
#define QtDir GetEnv('QT_DIR')

[Files]
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\microsoft\vcredist_2013.x64.exe"; DestDir:"{tmp}"
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\microsoft\vcredist_2015_2019.x64.exe"; DestDir:"{tmp}"
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\microsoft\LAVFilters-0.74.1-Installer.exe"; DestDir:"{tmp}"
Source: "{#ProjectRoot}\build\win32\release\product\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;OpenSSL
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\openssl\openssl-1.1.1j-win64\bin\libssl-1_1-x64.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\openssl\openssl-1.1.1j-win64\bin\libcrypto-1_1-x64.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\openssl\win32\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\openssl\win32\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion

;Qt base dll
;Source: "OpenBoard.exe"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Concurrent.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Core.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Gui.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Multimedia.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5MultimediaWidgets.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Network.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Opengl.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5PrintSupport.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Qml.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Sql.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Svg.dll"; DestDir: "{app}"   
;Source: "Qt5V8.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5WebKit.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5WebKitWidgets.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Widgets.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Xml.dll"; DestDir: "{app}"
Source: "{#QtLibs}\libGLESv2.dll"; DestDir: "{app}"  
Source: "{#QtLibs}\Qt5Quick.dll"; DestDir: "{app}"  
Source: "{#QtLibs}\Qt5Positioning.dll"; DestDir: "{app}"  
Source: "{#QtLibs}\Qt5Sensors.dll"; DestDir: "{app}"
Source: "{#QtLibs}\icuuc65.dll"; DestDir: "{app}"
Source: "{#QtLibs}\icuin65.dll"; DestDir: "{app}"
Source: "{#QtLibs}\icudt65.dll"; DestDir: "{app}"
Source: "{#QtLibs}\libxslt.dll"; DestDir: "{app}"
Source: "{#QtLibs}\libxml2.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5QmlModels.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5WebChannel.dll"; DestDir: "{app}"
Source: "{#QtLibs}\libEGL.dll"; DestDir: "{app}"  
;Source: "/etc/freezedWidgetWrapper.html"; DestDir: "{app}"  
;Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "{#ProjectRoot}\..\OpenBoard-ThirdParty\zlib\1.2.11\bin\zlib.dll"; DestDir:"{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;Qt windows plugins
Source: "{#QtDir}\plugins\platforms\qminimal.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#QtDir}\plugins\platforms\qoffscreen.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#QtDir}\plugins\platforms\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion


;Qt images formats plugins
Source: "{#QtDir}\plugins\imageformats\qgif.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#QtDir}\plugins\imageformats\qico.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#QtDir}\plugins\imageformats\qjpeg.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#QtDir}\plugins\imageformats\qsvg.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#QtDir}\plugins\imageformats\qtiff.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion   

;qt icon engine plugins
Source: "{#QtDir}\plugins\iconengines\qsvgicon.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion

;qt multimedia plugins
Source: "{#QtDir}\plugins\mediaservice\dsengine.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion
Source: "{#QtDir}\plugins\mediaservice\dsengined.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion
Source: "{#QtDir}\plugins\mediaservice\qtmedia_audioengine.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion
Source: "{#QtDir}\plugins\mediaservice\qtmedia_audioengined.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion
Source: "{#QtDir}\plugins\mediaservice\wmfengine.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion
Source: "{#QtDir}\plugins\mediaservice\wmfengined.dll"; DestDir: "{app}\mediaservice"; Flags: ignoreversion   

;OpenBoardImporter
Source: "{#ProjectRoot}\..\OpenBoard-Importer\release\OpenBoardImporter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#QtLibs}\Qt5Core.dll"; DestDir: "{app}"
Source: "{#QtLibs}\Qt5Gui.dll"; DestDir: "{app}"

;fonts for xpdf
Source: "{#ProjectRoot}\resources\windows\xpdfrc"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#ProjectRoot}\resources\fonts\*"; DestDir: "{app}\fonts"; Flags: ignoreversion

[Icons]
Name: "{group}\OpenBoard"; Filename: "{app}\OpenBoard.exe"
Name: "{group}\{cm:UninstallProgram,OpenBoard}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\OpenBoard"; Filename: "{app}\OpenBoard.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\OpenBoard"; Filename: "{app}\OpenBoard.exe"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: ".ubz"; ValueType: string; ValueName: ""; ValueData: "OpenBoardFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "OpenBoardFile"; ValueType: string; ValueName: ""; ValueData: "OpenBoard document"; Flags: uninsdeletekey
Root: HKCR; Subkey: "OpenBoardFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\OpenBoard.exe,1"
Root: HKCR; Subkey: "OpenBoardFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\OpenBoard.exe"" ""%1"""

Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64

Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorX64

[Run]
Filename: "{tmp}\vcredist_2013.x64.exe";WorkingDir:"{tmp}"; Parameters: "/PASSIVE /VERYSILENT /SUPPRESSMSGBOXES /NORESTART"; StatusMsg: Installing CRT 2013...
Filename: "{tmp}\vcredist_2015_2019.x64.exe";WorkingDir:"{tmp}"; Parameters: "/PASSIVE /VERYSILENT /SUPPRESSMSGBOXES /NORESTART"; StatusMsg: Installing CRT 2015-2019 ...
Filename: "{tmp}\LAVFilters-0.74.1-Installer.exe";WorkingDir:"{tmp}"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"; StatusMsg: Installing LAV Filters ...
Filename: "{app}\OpenBoard.exe"; Description: "{cm:LaunchProgram,OpenBoard}"; Flags: nowait postinstall skipifsilent 

[UninstallDelete]
; cleanup and delete whole installation directory
Name: {app}; Type: filesandordirs

[Code]
function isProcessorX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function isProcessorNotX64: Boolean;
begin
	Result := not isProcessorX64;
end;

