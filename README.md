# VSC-Error
Access denied to uninst000.exe

The workaround solution is to add the user to have Full Control on the %LOCALAPPDATA%\Programs\Microsoft VS Code folder.

Run the powershell file as Admin, this can replace the user permissions temporarily and resolve the immediate issue

Once the .ps1 file is ran this will allow the installer/updater to continue by clicking "Try again"

Root cause?
I'm unsure why the user's permissions were lost on the folder. By default the user should have access to their own AppData directory. Something had set the permissions to Admin only (i.e. requiring elevation).

Perhaps the root cause is due to an elevated VS Code doing an update?

More discussion on https://github.com/microsoft/vscode/issues/148953
