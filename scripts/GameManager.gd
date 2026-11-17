class_name GameManager
extends Node

enum State {
	INICIO_JOGO,
	TURNO_HUMANO_COMPRA,
	TURNO_HUMANO_ACAOPRINCIPAL,
	TURNO_IA,
	FIM_JOGO
}

@export var cena_carta: PackedScene

var baralho = Baralho.new()
var estado_atual = State.INICIO_JOGO

var monte_compra = []
var pilha_descarte = []

var mao_humano = []
var mao_ia = []

var duplo_descarte = false

@onready var node_mao_humano = $VBoxContainer/MaoHumano
@onready var node_mao_ia = $VBoxContainer/MaoIA
@onready var node_monte_compra = $VBoxContainer/Mesa/MonteCompra/MonteHolder
@onready var node_pilha_descarte = $VBoxContainer/Mesa/PilhaDescarte/DescarteHolder
@onready var label_status = $VBoxContainer/Mesa/StatusInfo/StatusLabel

@onready var btn_simples_troca = $VBoxContainer/Mesa/StatusInfo/BtnSimplesTroca
@onready var btn_dupla_troca = $VBoxContainer/Mesa/StatusInfo/BtnDuplaTroca
@onready var btn_bater = $VBoxContainer/Mesa/StatusInfo/BtnBater

func _ready():
	btn_simples_troca.pressed.connect(_on_btn_simples_troca)
	btn_dupla_troca.pressed.connect(_on_btn_dupla_troca)
	btn_bater.pressed.connect(_on_btn_bater)
	
	iniciar_jogo()

func iniciar_jogo():
	monte_compra = baralho.embaralhar()
	pilha_descarte.clear()
	
	for i in range(9):
		comprar_carta(mao_humano, node_mao_humano)
		comprar_carta(mao_ia, node_mao_ia, true) # true para ocultar a carta
	
	atualizar_visual_monte()
	
	mudar_estado(State.TURNO_HUMANO_COMPRA)

func mudar_estado(novo_estado: State):
	estado_atual = novo_estado
	atualizar_botoes()
	
	match estado_atual:
		State.TURNO_HUMANO_COMPRA:
			label_status.text = "Sua vez! Compre do Monte ou do Descarte."
			duplo_descarte = false
		State.TURNO_HUMANO_ACAOPRINCIPAL:
			label_status.text = "Descarte uma carta ou use uma carta de Troca."
			if duplo_descarte:
				label_status.text = "Você usou Dupla Troca. Descarte DUAS cartas."
		State.TURNO_IA:
			label_status.text = "Vez do Computador jogando..."
			jogada_da_ia()
		State.FIM_JOGO:
			pass

func atualizar_botoes():
	btn_simples_troca.disabled = (estado_atual != State.TURNO_HUMANO_ACAOPRINCIPAL or not tem_carta_especial("simples_troca"))
	btn_dupla_troca.disabled = (estado_atual != State.TURNO_HUMANO_ACAOPRINCIPAL or not tem_carta_especial("dupla_troca"))
	btn_bater.disabled = (estado_atual != State.TURNO_HUMANO_ACAOPRINCIPAL)

func tem_carta_especial(tipo: String) -> bool:
	for c in mao_humano:
		if c.dados_carta.get("tipo_carta") == "especial" and c.dados_carta.get("subtipo_especial") == tipo:
			return true
	return false

func comprar_carta(lista_mao, node_pai, oculta: bool = false):
	if monte_compra.is_empty():
		# Refazer o monte com o descarte, exceto a carta do topo
		var topo = pilha_descarte.pop_back()
		monte_compra = pilha_descarte.duplicate()
		monte_compra.shuffle()
		pilha_descarte.clear()
		pilha_descarte.append(topo)
		limpar_node(node_pilha_descarte)
		instanciar_carta_visual(topo, node_pilha_descarte)
		if monte_compra.is_empty():
			return # Fim de jogo por falta de cartas

	var dados_carta = monte_compra.pop_back()
	var carta_v = instanciar_carta_visual(dados_carta, node_pai)
	carta_v.set_oculta(oculta)
	if oculta:
		carta_v.desabilitar_clique()
	carta_v.carta_clicada.connect(_on_carta_clicada)
	lista_mao.append(carta_v)
	atualizar_visual_monte()

func atualizar_visual_monte():
	limpar_node(node_monte_compra)
	if not monte_compra.is_empty():
		var carta_verso = instanciar_carta_visual(monte_compra.back(), node_monte_compra)
		carta_verso.set_oculta(true)

func instanciar_carta_visual(dados, node_pai):
	var carta = cena_carta.instantiate()
	node_pai.add_child(carta)
	carta.inicializar(dados)
	return carta

func limpar_node(node):
	for child in node.get_children():
		child.queue_free()

func adicionar_ao_descarte(dados_carta):
	pilha_descarte.append(dados_carta)
	limpar_node(node_pilha_descarte)
	instanciar_carta_visual(dados_carta, node_pilha_descarte)

# INTERAÇÕES 
func _on_carta_clicada(carta_visual):
	if estado_atual == State.TURNO_HUMANO_COMPRA:
		pass 
	elif estado_atual == State.TURNO_HUMANO_ACAOPRINCIPAL:
		if carta_visual in mao_humano:
			realizar_descarte(carta_visual)

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if estado_atual == State.TURNO_HUMANO_COMPRA:
			var mouse_pos = node_monte_compra.get_global_mouse_position()
			if node_monte_compra.get_global_rect().has_point(mouse_pos):
				_comprar_do_monte()
			elif node_pilha_descarte.get_global_rect().has_point(mouse_pos):
				_comprar_do_descarte()

func _comprar_do_monte():
	comprar_carta(mao_humano, node_mao_humano)
	mudar_estado(State.TURNO_HUMANO_ACAOPRINCIPAL)

func _comprar_do_descarte():
	if not pilha_descarte.is_empty():
		var dados = pilha_descarte.pop_back()
		limpar_node(node_pilha_descarte)
		if not pilha_descarte.is_empty():
			instanciar_carta_visual(pilha_descarte.back(), node_pilha_descarte)
		
		var carta_v = instanciar_carta_visual(dados, node_mao_humano)
		carta_v.carta_clicada.connect(_on_carta_clicada)
		mao_humano.append(carta_v)
		
		mudar_estado(State.TURNO_HUMANO_ACAOPRINCIPAL)

func _on_btn_simples_troca():
	usar_carta_troca("simples_troca", 1)

func _on_btn_dupla_troca():
	usar_carta_troca("dupla_troca", 2)
	duplo_descarte = true

func usar_carta_troca(tipo: String, quantidade: int):
	# Remover a carta da mão e ir pro descarte
	for c in mao_humano:
		if c.dados_carta.get("tipo_carta") == "especial" and c.dados_carta.get("subtipo_especial") == tipo:
			mao_humano.erase(c)
			var dados = c.dados_carta
			c.queue_free()
			adicionar_ao_descarte(dados)
			break
	
	# Adaptação, o jogador pega X cartas do topo do descarte
	for i in range(quantidade):
		if not pilha_descarte.is_empty():
			var card_data = pilha_descarte.pop_back()
			var carta_v = instanciar_carta_visual(card_data, node_mao_humano)
			carta_v.carta_clicada.connect(_on_carta_clicada)
			mao_humano.append(carta_v)
			
	limpar_node(node_pilha_descarte)
	if not pilha_descarte.is_empty():
		instanciar_carta_visual(pilha_descarte.back(), node_pilha_descarte)
		
	atualizar_botoes()
	if duplo_descarte:
		label_status.text = "Você usou Dupla Troca. Descarte DUAS cartas."

func realizar_descarte(carta_visual):
	mao_humano.erase(carta_visual)
	var dados = carta_visual.dados_carta
	carta_visual.queue_free()
	
	adicionar_ao_descarte(dados)
	
	if duplo_descarte:
		duplo_descarte = false
		label_status.text = "Descarte a segunda carta."
	else:
		mudar_estado(State.TURNO_IA)

# IA 
func jogada_da_ia():
	await get_tree().create_timer(1.5).timeout
	
	# Verifica se a IA pode bater
	if verificar_vitoria(mao_ia):
		label_status.text = "IA Venceu!"
		mudar_estado(State.FIM_JOGO)
		return
		
	# IA compra do monte
	comprar_carta(mao_ia, node_mao_ia, true)
	await get_tree().create_timer(1.0).timeout
	
	# IA descarta a primeira carta que não ajuda nas trincas
	var carta_descarte = mao_ia.pick_random()
	mao_ia.erase(carta_descarte)
	var dados = carta_descarte.dados_carta
	carta_descarte.queue_free()
	
	adicionar_ao_descarte(dados)
	
	mudar_estado(State.TURNO_HUMANO_COMPRA)

# VITÓRIA 
func _on_btn_bater():
	if verificar_vitoria(mao_humano):
		label_status.text = "Você venceu!"
		mudar_estado(State.FIM_JOGO)
	else:
		label_status.text = "Batida Falsa! Você perde um turno."
		mudar_estado(State.TURNO_IA) # Pula o turno atual ou a próxima rodada

func verificar_vitoria(mao) -> bool:
	var dados_mao = []
	for c in mao:
		dados_mao.append(c.dados_carta)
		
	var trincas = contar_trincas(dados_mao)
	return trincas >= 3

func contar_trincas(dados_mao: Array) -> int:
	var contagem_por_grupo = {}
	var coringas = 0
	
	for dados in dados_mao:
		if dados.get("tipo_carta") == "especial":
			if dados.get("subtipo_especial") == "coringa":
				coringas += 1
		elif dados.has("id"):
			# Agrupar pelo ID da reação
			var grupo_reacao = floor((dados.id - 1) / 4)
			if not contagem_por_grupo.has(grupo_reacao):
				contagem_por_grupo[grupo_reacao] = 0
			contagem_por_grupo[grupo_reacao] += 1
			
	var trincas_formadas = 0
	
	# Verificar trincas completas sem coringa
	for grupo in contagem_por_grupo.keys():
		while contagem_por_grupo[grupo] >= 3:
			trincas_formadas += 1
			contagem_por_grupo[grupo] -= 3
			
	# Verificar trincas parciais usando coringas
	var necessidades = []
	for grupo in contagem_por_grupo.keys():
		var qtd = contagem_por_grupo[grupo]
		if qtd == 2:
			necessidades.append(1) 
		elif qtd == 1:
			necessidades.append(2) 
			
	# Priorizar formar trincas que precisam de 1 coringa
	necessidades.sort() 
	for nec in necessidades:
		if coringas >= nec:
			coringas -= nec
			trincas_formadas += 1
			
	return trincas_formadas
