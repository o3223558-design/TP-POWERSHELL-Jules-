New-Item temp -ItemType Directory
# crée le dossier temp
Push-Location temp
#il se met la dans temp

1..200 | ForEach-Object {
#la il crée les fichier de 1 a 200, aprés le pipe il dit pour chaque objet :  	
    New-Item "$_.log" -ItemType File -Value "fichier $_"
#$ le nom random ( 1//200) du fichier, 	"fichier $_" sa sa permet que dans le fichier sa soir marqué fichier 1 , fichier 2 etc
}
#jules marsallon bts sio aubusson
