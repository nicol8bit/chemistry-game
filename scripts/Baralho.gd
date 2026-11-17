class_name Baralho
extends Node

var BARALHO_COMPLETO = [
	{
		"id": 1,
		"nome": "Gás Hidrôgenio + Gás Oxigênio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-1-column-1.png"
	},
	{
		"id": 2,
		"nome": "Água",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-1-column-2.png"
	},
	{
		"id": 3,
		"nome": "Corpo Humano",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-1-column-3.png"
	},
	{
		"id": 4,
		"nome": "Gás Hidrôgenio + Gás Oxigênio -> Água",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-1-column-4.png"
	},
	{
		"id": 5,
		"nome": "Ôxido de Cálcio + Água",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-2-column-1.png"
	},
	{
		"id": 6,
		"nome": "Hidróxido de Cálcio",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-2-column-2.png"
	},
	{
		"id": 7,
		"nome": "Cal Hidratada",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-2-column-3.png"
	},
	{
		"id": 8,
		"nome": "Ôxido de Cálcio + Água -> Hidróxido de Cálcio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r1/row-2-column-4.png"
	},
	{
		"id": 9,
		"nome": "Carbono Grafite + Gás Ôxigênio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-1-column-1.png"
	},
	{
		"id": 10,
		"nome": "Dióxido de Carbono",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-1-column-2.png"
	},
	{
		"id": 11,
		"nome": "Cerveja",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-1-column-3.png"
	},
	{
		"id": 12,
		"nome": "Carbono Grafite + Gás Ôxigênio -> Dióxido de Carbono ",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-1-column-4.png"
	},
	{
		"id": 13,
		"nome": "Ferro + Enxofre",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-2-column-1.png"
	},
	{
		"id": 14,
		"nome": "Sulfeto de Ferro",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-2-column-2.png"
	},
	{
		"id": 15,
		"nome": "Pilha de Lítio",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-2-column-3.png"
	},
	{
		"id": 16,
		"nome": "Ferro + Enxofre -> Sulfeto de Ferro",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r2/row-2-column-4.png"
	},
	{
		"id": 17,
		"nome": "Magnésio + Gás Oxigênio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-1-column-1.png"
	},
	{
		"id": 18,
		"nome": "Óxido de Magnésio",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-1-column-2.png"
	},
	{
		"id": 19,
		"nome": "Foguetes Sinalizadores",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-1-column-3.png"
	},
	{
		"id": 20,
		"nome": "Magnésio + Gás Oxigênio -> Óxido de Magnésio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-1-column-4.png"
	},
	{
		"id": 21,
		"nome": "Gás Nitrogênio + Gás Hidrogênio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-2-column-1.png"
	},
	{
		"id": 22,
		"nome": "Amônia",
		"tipo_carta": "produto",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-2-column-2.png"
	},
	{
		"id": 23,
		"nome": "Produtos de limpeza",
		"tipo_carta": "representacao",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-2-column-3.png"
	},
	{
		"id": 24,
		"nome": "Gás Nitrogênio + Gás Hidrogênio -> Amônia",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "sintese",
		"cor": "verde",
		"caminho_arte": "res://artes_cartas/sintese/r4/row-2-column-4.png"
	},
	{   
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 25,
		"nome": "Ferro + Sulfato de Cobre",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-1-column-1.png"
	},
	{    
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 26,
		"nome": "Sulfato de Ferro + Cobre",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-1-column-2.png"
	},

	{
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 27,
		"nome": "Moedas",
		"tipo_carta": "representacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-1-column-3.png"
	},
	{
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 28,
		"nome": "Ferro + Sulfato de Cobre -> Sulfato de Ferro + Cobre",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-1-column-4.png"
	},
	{
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 29,
		"nome": "Sódio + Cloreto de Zinco",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-2-column-1.png"
	},
	{ 
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 30,
		"nome": "Cloreto de Sódio + Zinco",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-2-column-2.png"
	},
	{
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 31,
		"nome": "Parafusos",
		"tipo_carta": "representacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-2-column-3.png"
	},
	{
		# FALTA ADICIONAR CAMINHO PARA ARTE
		"id": 32,
		"nome": "Sódio + Cloreto e Zinco -> Cloreto de Sódio + Zinco",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r13/row-2-column-4.png"
	},
	{
		"id": 33,
		"nome": "Bromo + Sulfato de Potássio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-1-column-1.png"
	},
	{
		"id": 34,
		"nome": "Brometo de Potássio + Enxofre",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-1-column-2.png"
	},
	{
		"id": 35,
		"nome": "Pólvora",
		"tipo_carta": "represetacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-1-column-3.png"
	},
	{
		"id": 36,
		"nome": "Bromo + Sulfeto de Potássio -> Brometo de Potássio + Enxofre",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-1-column-4.png"
	},
	{
		"id": 37,
		"nome": "Cálcio + Sulfato de Ferro",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-2-column-1.png"
	},
	{
		"id": 38,
		"nome": "Ferro + Sulfato de Cálcio",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-2-column-2.png"
	},
	{
		"id": 39,
		"nome": "Pregos",
		"tipo_carta": "representacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-2-column-3.png"
	},
	{
		"id": 40,
		"nome": "Cálcio + Sulfato de Ferro -> Ferro + Sulfato de Cálcio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r5/row-2-column-4.png"
	},
	{
		"id": 41,
		"nome": "Bromo + Iodeto de Sódio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-1-column-1.png"
	},
	{
		"id": 42,
		"nome": "Gás Iodo + brometo de Sódio",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-1-column-2.png"
	},
	{
		"id": 43,
		"nome": "Álcool Iodado",
		"tipo_carta": "representacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-1-column-3.png"
	},
	{
		"id": 44,
		"nome": "Bromo + Iodeto de Sódio -> Gás Iodo + Brometo de Sódio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-1-column-4.png"
	},
	{
		"id": 45,
		"nome": "Zinco + Sulfato de Cromo",
		"tipo_carta": "reagente",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-2-column-1.png"
	},
	{
		"id": 46,
		"nome": "Cromo + Sulfato de Zinco",
		"tipo_carta": "produto",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-2-column-2.png"
	},
	{
		"id": 47,
		"nome": "Talheres de Aço Inox",
		"tipo_carta": "representacao",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-2-column-3.png"
	},
	{
		"id": 48,
		"nome": "Zinco + Sulfato de Cromo -> Cromo + Sulfato de Zinco",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "simples_troca",
		"cor": "amarelo",
		"caminho_arte": "res://artes_cartas/simples_troca/r6/row-2-column-4.png"
	},
	{
		"id": 49,
		"nome": "Ácido Clorídrico + Hidróxido de Sódio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-1-column-1.png"
	},
	{
		"id": 50,
		"nome": "Cloreto de Sódio + Água",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-1-column-2.png"
	},
	{
		"id": 51,
		"nome": "Sal de Cozinha",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-1-column-3.png"
	},
	{
		"id": 52,
		"nome": "Ácido Clorídrico + Hidróxido de Sódio -> Cloreto de Sódio + Água",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-1-column-4.png"
	},
	{
		"id": 53,
		"nome": "Cloreto de Cobre + Ácido Sulfírico",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-2-column-1.png"
	},
	{
		"id": 54,
		"nome": "Sulfato de Cobre + Ácido Clorídrico",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-2-column-2.png"
	},
	{
		"id": 56,
		"nome": "Estômago",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-2-column-3.png"
	},
	{
		"id": 57,
		"nome": "Cloreto de Cobre + Ácido Sulfúrico -> Sulfato de Cobre + Ácido Clorídrico",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r7/row-2-column-4.png"
	},
	{
		"id": 58,
		"nome": "Hidróxido de Sódio + Sulfato de Alumínio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-1-column-1.png"
	},
	{
		"id": 59,
		"nome": "Hidróxido de Alumínio + Sulfato de Sódio",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-1-column-2.png"
	},
	{
		"id": 60,
		"nome": "Medicamento Hidróxido de Alumínio",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-1-column-3.png"
	},
	{
		"id": 61,
		"nome": "Hidróxido de Sódio + Sulfato de Alumínio -> Hidróxido de Alumínio + Sulfato de Sódio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-1-column-4.png"
	},
	{
		"id": 62,
		"nome": "Cloreto de Sódio + Nitrato de Prata",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-2-column-1.png"
	},
	{
		"id": 63,
		"nome": "Nitrato de Sódio + Cloreto de Prata",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-2-column-2.png"
	},
	{
		"id": 64,
		"nome": "Papel Fotográfico",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-2-column-3.png"
	},
	{
		"id": 65,
		"nome": "Cloreto de Sódio + Nitrato de Sódio -> Nitrato de Sódio + Cloreto de Prata",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r8/row-2-column-4.png"
	},
	{
		"id": 66,
		"nome": "Ácido Clorídrico + Sulfeto de Sódio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-1-column-1.png"
	},
	{
		"id": 67,
		"nome": "Sulfato de hidrogênio + Cloreto de Sódio",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-1-column-2.png"
	},
	{
		"id": 68,
		"nome": "Gás Tóxico",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-1-column-3.png"
	},
	{
		"id": 69,
		"nome": "Ácido Clorídrico + Sulfato de Sódio -> Sulfeto de Hidrogênio + Cloreto de Sódio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-1-column-4.png"
	},
	{
		"id": 70,
		"nome": "Ácido Carbônico + Hidróxido de Sódio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-2-column-1.png"
	},
	{
		"id": 71,
		"nome": "Bicarbonato de Sódio + Água",
		"tipo_carta": "produto",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-2-column-2.png"
	},
	{
		"id": 72,
		"nome": "Fermento",
		"tipo_carta": "representacao",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-2-column-3.png"
	},
	{
		"id": 73,
		"nome": "Ácido Carbônico + Hidróxido de Sódio -> Bicarbonato de Sódio + Água",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "dupla_troca",
		"cor": "vermelho",
		"caminho_arte": "res://artes_cartas/dupla_troca/r9/row-2-column-4.png"
	},
	{
		"id": 74,
		"nome": "Azoteto de Sódio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-1-column-1.png"
	},
	{
		"id": 75,
		"nome": "Sódio + Gás Nitrogênio",
		"tipo_carta": "produto",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-1-column-2.png"
	},
	{
		"id": 76,
		"nome": "Airbags",
		"tipo_carta": "representacao",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-1-column-3.png"
	},
	{
		"id": 77,
		"nome": "Azoteto de Sódio -> Sódio + Gás Nitrogênio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-1-column-4.png"
	},
	{
		"id": 78,
		"nome": "Gás Carbônico",
		"tipo_carta": "reagente",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-2-column-1.png"
	},
	{
		"id": 79,
		"nome": "Carbono Grafite + Gás Oxigênio",
		"tipo_carta": "produto",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-2-column-2.png"
	},
	{
		"id": 80,
		"nome": "Grafite Lápis",
		"tipo_carta": "representacao",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-2-column-3.png"
	},
	{
		"id": 81,
		"nome": "Gás Carbônico -> Carbono Grafite + Gás Oxigênio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r10/row-2-column-4.png"
	},
	{
		"id": 82,
		"nome": "Cloreto de Prata",
		"tipo_carta": "reagente",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r11/row-2-column-1.png"
	},
	{
		"id": 83,
		"nome": "Prata + Gás Cloro",
		"tipo_carta": "produto",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r11/row-2-column-2.png"
	},
	{
		"id": 84,
		"nome": "Casca de Ovo",
		"tipo_carta": "representacao",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r11/row-2-column-3.png"
	},
	{
		"id": 85,
		"nome": "Óxido de Cálcio -> Cálcio + Gás Oxigênio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r11/row-2-column-4.png"
	},
	{
		"id": 86,
		"nome": "Óxido de Mercúrio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-1-column-1.png"
	},
	{
		"id": 87,
		"nome": "Mercúrio + Gás Oxigênio",
		"tipo_carta": "produto",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-1-column-2.png"
	},
	{
		"id": 88,
		"nome": "Termômetro de Mercúrio",
		"tipo_carta": "representacao",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-1-column-3.png"
	},
	{
		"id": 89,
		"nome": "Óxido de Mercúrio -> Mercúrio + Gás Oxigénio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-2-column-4.png"
	},
	{
		"id": 90,
		"nome": "Clorato de Potássio",
		"tipo_carta": "reagente",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-2-column-1.png"
	},
	{
		"id": 91,
		"nome": "Clorato de Potássio + Gás Oxigênio",
		"tipo_carta": "produto",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-2-column-2.png"
	},
	{
		"id": 92,
		"nome": "Adubo para Plantas",
		"tipo_carta": "representacao",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-2-column-3.png"
	},
	{
		"id": 93,
		"nome": "Cloreto de Potássio -> Cloreto de Potássio + Gás Oxigênio",
		"tipo_carta": "fique_sabendo",
		"subtipo_reacao": "decomposicao",
		"cor": "azul",
		"caminho_arte": "res://artes_cartas/decomposicao/r12/row-2-column-4.png"
	},
	{
		"id": 97,
		"nome": "Coringa",
		"tipo_carta": "especial",
		"subtipo_especial": "coringa",
		"habilidade": "Pode substituir qualquer carta para formar uma trinca.",
		"caminho_arte": "res://artes_cartas/especiais/esp_joker/Joker1.png"
	},
	{
		"id": 98,
		"nome": "Coringa",
		"tipo_carta": "especial",
		"subtipo_especial": "coringa",
		"habilidade": "Pode substituir qualquer carta para formar uma trinca.",
		"caminho_arte": "res://artes_cartas/especiais/esp_joker/Joker2.png"
	},
	{
		"id": 99,
		"nome": "Simples Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "simples_troca",
		"habilidade": "Troca por uma carta na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_simples_troca/row-1-column-2.png"
	},
	{
		"id": 100,
		"nome": "Simples Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "simples_troca",
		"habilidade": "Troca por uma carta na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_simples_troca/row-1-column-3.png"
	},
	{
		"id": 101,
		"nome": "Simples Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "simples_troca",
		"habilidade": "Troca por uma carta na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_simples_troca/row-1-column-4.png"
	},
	{
		"id": 102,
		"nome": "Dupla Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "dupla_troca",
		"habilidade": "Troca por duas cartas na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_dupla_troca/row-2-column-2.png"
	},
	{
		"id": 103,
		"nome": "Dupla Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "dupla_troca",
		"habilidade": "Troca por duas cartas na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_dupla_troca/row-2-column-3.png"
	},
	{
		"id": 104,
		"nome": "Dupla Troca",
		"tipo_carta": "especial",
		"subtipo_especial": "dupla_troca",
		"habilidade": "Troca por duas cartas na pilha de descarte.",
		"caminho_arte": "res://artes_cartas/especiais/esp_dupla_troca/row-2-column-4.png"
	}
]

func embaralhar():
	var baralho_embaralhado = BARALHO_COMPLETO.duplicate()
	baralho_embaralhado.shuffle()
	return baralho_embaralhado
