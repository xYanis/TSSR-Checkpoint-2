#2.1 
# Par la connexion du Bureau à distance en rentrant l'IP du serveur est en rentrant le ompte et le mdp admin 

#2.2
#Start-Process -FilePath "powershell.exe" -ArgumentList "C:\Scripts\AddLocalUsers.ps1" -Verb RunAs -WindowStyle Maximized
# Le chemin n'est pas le bon C:\Temp\AddLocalUsers.ps1 est à remplacer

#2.3
#C'est l'équivalent PowerShell d'executer en tant qu'admnistrateur sur Windows

#2.4
#C'est pour ouvrir la fenêtre Windows en pleine écran lorsque le script est lancé

#2.5

#2.6

#2.7

#2.8

#2.9

#2.10
#Done
#2.12
#Done
#2.13
#Done
#2.14
#Done
#2.15
#Done
#2.16
#Remplace toute les lettres en minuscule et remplace les accents par leur équivalant sans accent


Write-Host "--- Début du script ---"

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

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8 | Select-Object -Skip 2

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
            PasswordNeverExpires = $true  # Mot de passe ne jamais expirer
            AccountNeverExpires  = $true
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateur" -Member $Name
        Write-Host "L'utilisateur $Name a été créé."
    }
}

Write-Host "Entrée pour terminer."
Read-Host
