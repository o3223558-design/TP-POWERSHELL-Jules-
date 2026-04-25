#il demande le 1er nombre
$nb1 = Read-Host "le premier nb"

#demander le 2éme nombre
$nb2 = Read-Host "entrer deuxième nomb"

# de base j'avais un probléme et j'ai trouvé cette parti sur le net pour que les calcule se fasse bien
$nb1 = [int]$nb1
$nb2 = [int]$nb2

#calcul
$somme = $nb1 + $nb2
$soustraction = $nb1 - $nb2
$produit = $nb1 * $nb2
$division = $nb1 / $nb2

#afiche les résultat des élément ci dessus
Write-Host "Somme : $somme"
Write-Host "Soustraction : $soustraction"
Write-Host "Produit : $produit"
Write-Host "Division : $division"

#sa crée une ligne de texte pour la parti historique
$ligne = "$nb1 + $nb2 = $somme 
$nb1 - $nb2 = $soustraction 
$nb1 * $nb2 = $produit 
$nb1 / $nb2 = $division"

# met la ligne dans un text
Add-Content "historic.txt" $ligne
#jules marsallon bts sio aubusson
