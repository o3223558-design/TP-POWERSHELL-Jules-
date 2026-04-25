#demande chiffre a l'utilisateur
$choix = Read-Host "nombre entre 1 et 5"
#switch permet de donner un choix 
switch ($choix) {
    # 1 :créer un fichier
    1 {
        $nom = Read-Host "nom du fichier"
        New-Item $nom -ItemType File
    }
    #2 : un dossier
    2 {
        $nom = Read-Host "Entrez le nom du dossier"
        New-Item $nom -ItemType Directory
    }

    #ou 3 : afficher contenu fichier
    3 {
        $nom = Read-Host "nom du fichier"
        Get-Content $nom
    }

    # Choi4 : afficher fichiers et dossiers
    4 {
        Get-ChildItem
    }

    # Choix 5:quitter
    5 {
        Break
    }

    #autre chose
    Default {
        Write-Warning "Mauvai choix"
    }
}
#jules marsallon bts sio aubusson
