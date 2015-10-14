###
# Danny Davis
# twitter: twitter.com/pko3
# github: github.com/pkothree
# Created: 10/13/15
# Modified: 10/14/15
# Description: Copy files to different directories
###

Start-Transcript "C:\CopyFiles.txt"
Write-Host "FILENAME for Log"
Copy-Item "SOURCEPATH\FILENAME" "DESTINATIONPATH"
Write-Host "Done!"
Stop-Transcript
