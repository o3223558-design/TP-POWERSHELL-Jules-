# le fichier qui a la liste des machines
$fichier = Read-Host "chemin du fichiers"

#il existe ? 
if (Test-Path $fichier) {

    #lit tout 
    $machines = Get-Content $fichier

    # il crée et vide le fichier du rapport 
    Set-Content "rapport.txt" ""

    # en gros il teste en boucle pour les ping
    foreach ($machine in $machines) {

        #teste si machine rep au ping
        $resultat = Test-Connection $machine -Count 1 -Quiet

        # Si la machine rep bien
        if ($resultat -eq $true) {
            Add-Content "rappport.txt" "$machine :OK"
        }

        # si machine rep pas
        else {
            Add-Content "rapport.txt" "$machine : NON JOIGNABLE"
    
    }
    }
	



} else {

    #pas de ficher, erreur de base 
    Write-Warning "Fichier introuvable"

}
#jules marsallon bts sio aubusson
