$AESKey = New-Object Byte[] 32
$Path = "C:\Temp\PassEncryptKey.key"
$EncryptedPasswordPath = "C:\Temp\EncryptedPassword.txt"
$Password = Read-Host "Enter Password"

[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($AESKey)
Set-Content $Path $AESKey
$secPw = ConvertTo-SecureString -AsPlainText $Password -Force
$AESKey = Get-content $Path
$Encryptedpassword = $secPw | ConvertFrom-SecureString -Key $AESKey
$Encryptedpassword | Out-File -filepath $EncryptedPasswordPath
