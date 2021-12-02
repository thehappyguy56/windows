 #!/bin/bash
 ComputerName=Adib36
 AuthCode="& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AX4XfWiv-vYL5RgVbKvnLYmisuYUurMmcZYawBwgyBcoqcMdZtalcCRQCBDFHjV1F_GR3w" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME"
 AuthPin=123456

#Setup
./GRDP-Setup.ps1 ${{ env.ComputerName }}
#google cloud
${{ env.AuthCode }} -pin=${{ env.AuthPin }}
#alive
sh Files/t.bat
