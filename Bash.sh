#!/bin/bash/


clear

nome(){
	read -p "Digite o seu nome: " NOME
	echo $NOME | grep '^[0-9.-\=_,><?:;!@#$%*&()_+\""][  ]$'  
	if [ $? == 1 ]; then 
		clear
		echo "O nome esta correto."
		sleep 1
		clear
		email
	else
		echo "o nome esta incorreto."	
		echo "Tente outra vez"
		sleep 1
		clear
		nome
	fi
}

email(){
	read -p "Digite o seu email: " EMAIL
	echo $EMAIL | grep -E '^(A-Za-z0-9\.\_\-)+[@][A-Za-z0-9]+(\.com|\.br)|(\.com\.br)$'
	if [ $? == 0 ]; then
		clear
		echo "o e-mail esta correto."
		sleep 1
		clear
		TEL
	else
		echo "O e-mail esta incorreto."
		echo "Tente outra vez."
		sleep 3
		clear
		email
	fi
}

tel(){
	read -p "Digite o seu telefone: " TEL 
	echo $TEL | grep -E '^[(][0-9]{2}[)][" "][0-9]{4}+-[0-9]{4}$'
	if [ $? == 0 ]; then 
		clear
		echo "O telefone esta correto."
		sleep 3
		clear
		rg
	else
		echo "O telefone esta incorreto."
		echo "Tente outra vez."
		sleep 3
		clear
		tel
	fi
}

rg(){
	read -p "Digite o seu RG: " RG
	echo $rg | grep -E '^[0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1}$'
	if [ $? == 0 ]; then
		clear
		echo "O RG esta correto."
		sleep 3
		clear
		cpf
	else
		echo "O RG esta incorreto."
		echo "Tente outra vez"
		sleep 3
		clear
		RG
	fi
}

cpf(){
	read -p "Digite o seu cpf: " CPF
	echo $cpf | grep -E '^[0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2}$'
	if [ $? == 0 ]; then
		clear
		echo "o CPF esta Correto."
		sleep 3
		clear
		data
	else
		echo "o CPF esta incorreto."
		echo "Tente outra vez"
		sleep 1
		clear
		cpf
	fi
}

data(){
	read -p "Digite a sua data de nascimento: " DATA
	echo $data | grep -E '^[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$'
	if [ $? == 0 ]; then
		clear
		echo "A data esta correta."
		sleep 3
		clear
		ip
	else
		echo "A Data esta incorreta."
		echo "Tente outra vez"
		sleep 3
		clear
		data
	fi
}

ip(){
	read -p "Digite o seu IP: " IP
	echo $ip | grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$'
	if [ $? == 0 ]; then
		clear
		echo "o IP esta correto."
		sleep 3
		clear
		MASC
	else
		echo "O IP esta incorreto!"
		echo "Tente outra vez."
		sleep 3
		clear
		ip
	fi
}

masc(){
	read -p "Digite a sua mascara de Rede: " MASC
	echo $MASC | grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$'
	if [ $? == 0 ]; then
		clear
		echo "A mascara de rede esta correta."
		echo "Os dados foram cadastrados com sucesso."
		sleep 3
		clear
	else
		echo "A mascara de rede incorreta."
		echo "Tente outra vez."
		sleep 3
		clear
		masc
	fi
echo "$NOME:$EMAIL:$TEL:$RG:$CPF:$DATA:$IP:$MASC" >> dados.txt 
}
nome
