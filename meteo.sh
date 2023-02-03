#!/bin/bash
# Initialise une variable pour stocker le nom de fichier
file=""
binaryValue=0
binaryValuePlace=0
k=0
t=0
Tableau=0 
#tri=0
#Vérification du fichier
set -- "$@"
ma_liste=("$@")
trouve=0
for (( i=0; i<${#ma_liste[@]}-1; i++ )); do
  if [ "${ma_liste[i]}" == "-f" ] && [[ "${ma_liste[i+1]}" == *.csv ]]; then
    trouve=1
    break
  fi
done
if [ ! $trouve -eq 1 ]; then
	
  echo "Attention le fichier doit être mis en paramètre de cette manière la : -f <NOM>.csv"
  exit
fi



for i in "$@"; do
	if [[ $i == "--help" ]];then
		cat help_option.txt
	fi
	done

# Boucle à travers tous les paramètres
w=0
h=0
m=0
p1=0
p2=0
p3=0
t1=0
t2=0
t3=0
abr=0
avl=0
tab=0
echo "bj"


for i in "$@"; do
	# Noter tous les paramètres minuscules
	if [[ $i == "-w" ]];then
		binaryValue=$((binaryValue+1))
		((w++))
	elif [[ $i == "-h" ]];then
		((h++))
		binaryValue=$((binaryValue+1))	
	elif [[ $i == "-m" ]];then
		binaryValue=$((binaryValue+1))
		((m++))
	elif [[ $i == "-p1" ]];then
		binaryValue=$((binaryValue+1))
		((p1++))
	elif [[ $i == "-p2" ]];then
		binaryValue=$((binaryValue+1))
		((p2++))
	elif [[ $i == "-p3" ]];then
		binaryValue=$((binaryValue+1))
		((p3++))
	elif [[ $i == "-t1" ]];then
		binaryValue=$((binaryValue+1))
		((t1++))
	elif [[ $i == "-t2" ]];then
		binaryValue=$((binaryValue+1))
		((t2++))
	elif [[ $i == "-t3" ]];then
		binaryValue=$((binaryValue+1))
		((t3++))

	fi
		
done

	if [[  $binaryValue -eq 0 ]];then
		echo " Erreur vous n'avez pas entré d'option"
		exit 1
	elif [ $h -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 2
	elif [ $w -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 3
	elif [ $m -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 4
	elif [ $p1 -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 5
	elif [ $p2 -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 6
	elif [ $p3 -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 7
	elif [ $t1 -gt  1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 8
	elif [ $t2 -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit 9
	elif [ $t3 -gt 1 ];then
		echo "Erreur vous avez ajouté trop de fois le même option"
		exit  10 
		
	fi 
	
for i in "$@"; do
	# Noter tous les paramètres minuscules
	if [[ $i == "-F" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=0
		echo "KH"
	elif [[ $i == "-G" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=1
	elif [[ $i == "-S" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=2
	elif [[ $i == "-A" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=3
	elif [[ $i == "-O" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=4
	elif [[ $i == "-Q" ]];then
		binaryValuePlace=$((binaryValuePlace+1))
		k=5	

	fi
	
	
done
	
	if [[  $binaryValuePlace -gt 1 ]];then
		echo " Erreur ! Vous avez rentré trop de lieux ou plusieurs fois le même." 
		exit 2

		
	fi 

for i in "$@"; do
	# Noter tous les paramètres minuscules
	if [[ $i == "--abr" ]];then
		Tableau=$((Tableau+1))
		abr=1
	elif [[ $i == "--avl" ]];then
		Tableau=$((Tableau+1))
		avl=1
	elif [[ $i == "--tab" ]];then
		Tableau=$((Tableau+1))
		tab=1
	
	fi
	
	
done
	if [[ $Tableau -gt 1 ]];then
		echo "Erreur Vous avez entré trop de paramètre de triage"
		exit 1
		
 	fi
 	
 	echo "ttt"
 
	
Tri_c(){
	if [[ $abr -eq 1 ]];then
		Tri_abr
	elif [[ $avl -eq 1 ]];then
		Tri_avl
	elif [[ $tab -eq 1 ]];then
		Tri_tab
	else 
		Tri_avl
	fi
}
Tri_abr(){   #pour chaque fonction il faut rajouter une commande du type : ./main.sh -O -f meteodata.csv -o last.csv --abr -t1   Pour que le shell soit connécté avec le C 

}
Tri_avl(){
}
Tri_tab(){
}
Tri_c

Location_Antilles()
{
	
	awk -F, '$n >=97100 && $n <=97235   && $n=97801 {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' n=16 meteo_filtered_data_v1.csv > tableau.csv 
	
	
}
Location_France()
{
awk -F, '$n >=1000 && $n <=96000  {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' n=16 meteo_filtered_data_v1.csv > tableau.csv 
	
	
}

Location_Guyane()
{
	
	awk -F, '$n >=97300 && $n <=97390  {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' n=16 meteo_filtered_data_v1.csv > tableau.csv 
	
	
}

Location_Saint-Pierre_et_Miquelon()
{
	
	awk -F, '$10 == 46.7663 && $11 == -56.1791 {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' meteo_filtered_data_v1.csv > tableau.csv 
	 
	
}
Location_Ocean_indien()
{
	
	awk -F, '$10 >=-49.3523 && $10 <=-15.8876 && $11 <=77.5691 && $11 >=40.3406 {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' meteo_filtered_data_v1.csv > tableau.csv 
	
	
}

Location_antartique()
{
	
	awk -F, '$n >=0 && $n <=96000  {print $1 "," $2 "," $3 "," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16}' n=16 meteo_filtered_data_v1.csv > tableau.csv 
	
	
}
Parametre_Wind()
{
cut -d"," -f1,4,5 tableau.csv > Wind.csv

}

Parametre_Height()
{

cut -d"," -f1,10,11,15 tableau.csv > Height.csv
}

Parametre_Moisture()
{
cut -d"," -f1,6,10,11,15 tableau.csv > Moisture.csv

}

Parametre_T1()
{

cut -d"," -f1,13,14 tableau.csv | tr "," " " > T1.dat

}

Parametre_T2()
{

cut -d"," -f1,2,13,14 tableau.csv > T2.csv

}

Parametre_T3()
{

cut -d"," -f1,2,13,14 tableau.csv > T3.csv
}

Parametre_P1()
{
cut -d"," -f1,7 tableau.csv > P1.csv

}

Parametre_P2()
{

cut -d"," -f1,7 tableau.csv > P2.csv

}

Parametre_P3()
{

cut -d"," -f1,7 tableau.csv > P3.csv
}


for var in $@; do
	if [[ $binaryValue -gt 0 ]];then
		case $var in
		
		"-w") Parametre_Wind ;;
		"-h") Parametre_Height ;;
		"-m") Parametre_Moisture ;;
		"-p1") Parametre_P1 ;;
		"-p2") Parametre_P2 ;;	
		"-p3") Parametre_P3 ;;
		"-t1") Parametre_T1 ;;
		"-t2") Parametre_T2 ;;
		"-t3") Parametre_T3 ;;
		

		esac 
	fi
	if [[ $binaryValuePlace -eq 1 ]];then 
		case $var in

		"-A") Location_Antilles ;;
		"-F") Location_France ;;
		"-G") Location_Guyane ;;
		"-S") Location_Saint-Pierre_et_Miquelon ;;
		"-O") Location_Ocean_indien ;;	
		"-Q") Location_antartique ;;
		
		esac 
		else 
		cat meteo_filtered_data_v1.csv > tableau.csv 
	
		
	fi 
	if [[ $Tableau -eq 1 ]];then 
		case $var in 
		"--tri") Tri_c ;;
		"--tab") Tri_tab ;;
		"--avl") Tri_abr ;;
		"--abr") Tri_avl ;;
	 
		esac
	fi
done


Parametre_General()
{

	if [[ $w -eq 1 ]];then
		touch w.csv
		Parametre_Wind	
		./tri Wind.csv w.csv -w --tab	
	elif [[ $h -eq 1 ]];then
		touch h.csv
		Parametre_Height
		./tri Height.csv w.csv -h --tab
	elif [[ $m -eq 1 ]];then
		touch m.csv
		Parametre_Moisture
		./tri Moisture.csv w.csv -m --tab
	elif [[ $t1 -eq 1 ]];then
		Parametre_T1
	elif [[ $t2 -eq 1 ]];then
		Parametre_T2
	elif [[ $t3 -eq 1 ]];then
		Parametre_T3	
	elif [[ $p1 -eq 1 ]];then
		Parametre_P1
	elif [[ $p2 -eq 1 ]];then
		Parametre_P2
	elif [[ $p3 -eq 1 ]];then
		Parametre_P3
	else 
		exit	
	fi

}

Location_General()
{
	if [[ $k -eq 0 ]];then
		Location_France
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		
		
	elif [[ $k -eq 1 ]];then
		Location_Guyane
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
	elif [[ $k -eq 3 ]];then
		Location_Antilles
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
	elif [[ $k -eq 4 ]];then
		Location_Ocean_indien
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
	elif [[ $k -eq 5 ]];then
		Location_antartique
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
	else
		if [[ $w -eq 1 ]];then
			Tri_c
			gnuplot W_gnuplot.plt
		fi
		if [[ $h -eq 1 ]];then
			Tri_c
			gnuplot H_gnuplot.plt
		fi	
		if [[ $m -eq 1 ]];then
			Tri_c
			gnuplot M_gnuplot.plt
		fi
		if [[ $t1 -eq 1 ]];then
			Tri_c
			gnuplot T1_gnuplot.plt
		fi
		if [[ $t2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $t3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p1 -eq 1 ]];then
			Tri_c
			gnuplot P1_gnuplot.plt
		fi
		if [[ $p2 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		if [[ $p3 -eq 1 ]];then
			Tri_c
			echo "Erreur le graphique n'est pas fonctionnel"
		fi
		

	fi



}
Location_General






