SetTitleMatchMode, 2

Capslock::Ctrl

#1:: run D:\Program Files\Everything\Everything.exe
return

#2:: run C:\totalcmd\TOTALCMD64.EXE
return

#3:: 
if WinExist("ahk_class Chrome_WidgetWin_1")
{
	WinActivate
}
else
{
	run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
}
return

#-::WinMinimizeAll
return
