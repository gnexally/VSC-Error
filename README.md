# VSC-Error
<b>Fault:</b> Access denied to uninst000.exe

<b>Solution</b> 

The user must have Full Control on the %LOCALAPPDATA%\Programs\Microsoft VS Code folder.

To gain access, Run the powershell file as Admin, this can replace the user permissions temporarily and resolve the immediate issue

Once the .ps1 file is ran this will allow the installer/updater to continue by clicking "Try again"


<b>Root cause?</b>

I'm unsure why the user's permissions were lost on the folder. By default the user should have access to their own AppData directory. Something had set the permissions to Admin only (i.e. requiring elevation).

Perhaps the root cause is due to an elevated VS Code doing an update?

More discussion on https://github.com/microsoft/vscode/issues/148953
