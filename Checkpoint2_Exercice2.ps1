#2.1 
# Par la connexion du Bureau à distance en rentrant l'IP du serveur est en rentrant le compte et le mdp

#2.2
#Start-Process -FilePath "powershell.exe" -ArgumentList "C:\Scripts\AddLocalUsers.ps1" -Verb RunAs -WindowStyle Maximized
# Le chemin n'est pas le bon C:\Temp\AddLocalUsers.ps1 est à remplacer

#2.3
#C'est l'équivalent PowerShell d'executer en tant qu'admnistrateur sur Windows

#2.4
#C'est pour ouvrir la fenêtre Windows en pleine écran lorsque le script est lancé

#2.5
# $Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8 | Select-Object -Skip 2
# Le "-Skip 2" nous fait passer au 2 directement, il faut le changer en 1
# $Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8 | Select-Object -Skip 1


#2.6
#Je ne sais pas

#2.7
#Je ne sais pas

#2.8
#Write-Host "L'utilisateur $Name a été créé avec le mot de passe $Pass" -ForegroundColor Green

#2.9
#Copier coller directement la fonction dans le script ou l'appeler en créant une  "Import-Module -Name, en lui indiquant le chemin dans le cas présent "C:\Scripts\Function.psm1"

#2.10
#-ForegroundColor Red

#2.11

#2.12
#$Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    #$Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    #$Name = "$Prenom.$Nom"
    
#2.13
#PasswordNeverExpires = $true  

#2.14
#Function RandomPassword ($length = 12)

#2.15
#Write-Host "Entrée pour terminer."
#Read-Host

#2.16
#Remplace toute les lettres en minuscule et remplace les accents par leur équivalant sans accent


Write-Host "--- Début du script ---"

function Log
{
    param([string]$FilePath,[string]$Content)

  
    If (-not (Test-Path -Path $FilePath))
    {
        New-Item -ItemType File -Path $FilePath | Out-Null
    }

   
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $logLine = "$Date;$User;$Content"

  
    Add-Content -Path $FilePath -Value $logLine
}

Function RandomPassword ($length = 12)
{
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    $password = Get-Random -Count $length -Input ($punc + $digits + $letters) | ForEach-Object { [char]$_ } -join ""
    Return $password.ToString()
}

Function ManageAccentsAndCapitalLetters
{
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}

$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8 | Select-Object -Skip 1

foreach ($User in $Users)
{
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    $Name = "$Prenom.$Nom"
    
    # Vérifier si l'utilisateur existe déjà
    if (Get-LocalUser -Name $Name -ErrorAction SilentlyContinue) {
        Write-Host "Le compte $Name existe déjà." -ForegroundColor Red
    }
    else {
        $Pass = RandomPassword
        $Password = ConvertTo-SecureString $Pass -AsPlainText -Force
        $Description = "$($User.description) - $($User.fonction)"
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            PasswordNeverExpires = $true  
            AccountNeverExpires  = $true
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateur" -Member $Name
        Write-Host "L'utilisateur $Name a été créé avec le mot de passe $Pass" -ForegroundColor Green
    }
log -FilePath "C:\Scripts\journal.log" -Content $Resulstat
}

Write-Host "Entrée pour terminer."
Read-Host
