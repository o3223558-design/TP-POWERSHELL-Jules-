# la il demande quelle endroit l'utilisateur veut ( le chemin)
$chemin = Read-Host "Entrez le chemin du dossier"

# il faut que le chemin exite
if (Test-Path $chemin) {

    # Si le chemin existe, il delette tout ce qu'il y a dedans. 
    Remove-Item "$chemin\*.log"

} else {

    # l'erreur du chemin quand il est pas la 
    Write-Warning "Le chemin n'existe pas"

}
#jules marsallon bts sio aubusson
