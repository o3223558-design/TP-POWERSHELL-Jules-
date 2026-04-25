#la il demande les information de l'utilisateur pour la suite 
$coucher = Read-Host "A quelle heure t'es-tu couché ?"
$reveil = Read-Host "A quelle heure t'es-tu réveillé ?"
$age = Read-Host "Quel est ton âge ?"

# la conversion pour que powerhsell interpréte bien tout , il les met en nombres 
$coucher = [int]$coucher
$reveil = [int]$reveil
$age = [int]$age

# la c la parti ou il calcule le temps de someil 
if ($reveil -ge $coucher) {
#	
    $sommeil = $reveil - $coucher
#si l’heure de réveil est aprè ou égale à l’heure de coucher
#23 - 21 = 2 heures de sommei
} else {
    $sommeil = (24 - $coucher) + $reveil
#en gros la nuit et cut en 2 parti, 24 - 23 = 1 heure et donc aprés 7 heures et hop 1 + 7 = 8 heures
}

# la j'ai mis des valeur pour indiquer les "normes" pour que le message de fin ai un sense 
if ($age -ge 18) {
    $recommande = 8
} else {
    $recommande = 9
# je ne c pas si c les bonne valeur c qu'un exemple	
}

# afiche si c une bonne nuit ou pas
if ($sommeil -ge ($recommande - 1) -and $sommeil -le ($recommande + 1)) {
    $etat = "bon sommeil"
#se base donc sur les élément du dessus : l'age et le temps de someil	
} else {
    $etat = "pas obtimale"
}

# indique ou je v y mettre
$bureau = "$env:USERPROFILE\Desktop\sommeil.txt"

# sa met une ligne avec les info : heure , age , recommendé , et le temps de someil
$contenu = "Sommeil : $sommeil h | Age : $age | Recommandé : $recommande h | Etat : $etat"

#sa y met sur le bureau
Add-Content $bureau $contenu

# affichage 
Write-Host $contenu
Write-Host $contenu
#jules marsallon bts sio aubusson
