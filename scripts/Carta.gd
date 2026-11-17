class_name Carta
extends TextureRect

signal carta_clicada(carta_visual)

var dados_carta: Dictionary = {}

@onready var nome_carta: Label = $NomeCarta

var arte_frente: Texture2D = null
var arte_verso: Texture2D = preload("res://artes_cartas/back/row-1-column-1.png")
var oculta: bool = false

func _ready():
	pivot_offset = custom_minimum_size / 2.0
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func inicializar(dados: Dictionary):
	dados_carta = dados

	if dados_carta.has("caminho_arte"):
		arte_frente = load(dados_carta.caminho_arte)
		if not arte_frente:
			print("arquivo de arte não encontrado: ", dados_carta.caminho_arte)

	if dados_carta.has("nome") and nome_carta:
		nome_carta.text = dados_carta.nome
		
	atualizar_visual()

func set_oculta(valor: bool):
	oculta = valor
	atualizar_visual()

func atualizar_visual():
	if oculta:
		self.texture = arte_verso
	else:
		self.texture = arte_frente
		
	if nome_carta:
		nome_carta.visible = false

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		emit_signal("carta_clicada", self)

func _on_mouse_entered():
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.15, 1.15), 0.15).set_trans(Tween.TRANS_SINE)

func _on_mouse_exited():
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.15).set_trans(Tween.TRANS_SINE)

func desabilitar_clique():
	mouse_filter = Control.MOUSE_FILTER_IGNORE

func habilitar_clique():
	mouse_filter = Control.MOUSE_FILTER_STOP
