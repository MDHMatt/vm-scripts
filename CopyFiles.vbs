'@description: Simple RoboCopy Browse for folder dialog. Select input folder to mirror files from then select output folder to mirror to.
'@author: Matt Dinsdale (MDHosting Ltd)

Set objShell = CreateObject("Wscript.Shell")
 
objSource = SourceFolder
objDestination = DestinationFolder
 
objCommand = "robocopy.exe " & Chr(34) & objSource & Chr(34) & Chr(32) & Chr(34) & objDestination & Chr(34) & " /MIR /V /MT:8"

's = objSource
'MsgBox s

'd = objDestination
'MsgBox d

'MsgBox objCommand

objShell.Run(objCommand)

MsgBox "Done"

Function SourceFolder()
'browse for source file folder
  Dim sFolder
  Set sFolder = CreateObject("Shell.Application").BrowseForFolder(0,"Select Source Folder",0,0)
  If (sFolder Is Nothing) Then
    SourceFolder = Empty
  Else 
    SourceFolder = sFolder.Self.Path
  End If
End Function

Function DestinationFolder()
'browse for destination file folder
  Dim dFolder
  Set dFolder = CreateObject("Shell.Application").BrowseForFolder(0,"Select Destination Folder",0,0)
  If (dFolder Is Nothing) Then
    DestinationFolder = Empty
  Else 
    DestinationFolder = dFolder.Self.Path
  End If
End Function
