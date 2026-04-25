# demande la pose du fichier qui a la liste 
$fichier = Read-Host "chemin fichier liste"

#il existe ? 
if (Test-Path $fichier) {

    #lit tout
    $liste = Get-Content $fichier

    foreach ($ligne in $liste) {

        # Séparer le nom et le type (adm ou usr)
        $data = $ligne.Split(":")

        $nom = $data[0]
        $type = $data[1]

        #créer l'utilisateurs
        net user $nom "caribou" /add

        # donne droit admin
        if ($type -eq "adm") {
            net localgroup Administrators $nom /add
        }

        # ou droit user normal
        if ($type -eq "usr") {
            net localgroup Users $nom /add
        }

        # sa met ce qui a ete fait dans le fichier 
        Add-Content "historic_user.txt" "Créé : $nom ($type)"
    }

} else {

    # Msg si fichier pas trouvé
    Write-Warning "Fichier introuvable"

}