# search_and_kill_winproc
Search target process of windows and kill it.

## Usage
1. Look for windows process of your target using the following power shell command.
 PS C:\Users\saaria> get-wmiobject Win32_service
2. Creat windows shortcut of 'kill_winproc.ps'.
3. Open propaty the shortcut.
4. Rewrite a link path by making reference to the following.
 Example: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -File C:\Users\saaria\kill_winproc.ps1 HERE_IS_PROCESS_NAME
5. Double click the shortcut and excute script.
