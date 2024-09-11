extends CharacterBody2D
class_name Player

@onready var player_sprite: Sprite2D = get_node("Texture")

@export var speed: int

var direction: int = 1

func _physics_process(_delta: float):
	movement_env()

	move_and_slide()
	player_sprite.animate(velocity)


func movement_env() -> void:
	velocity = Vector2((Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")) * speed, (Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")) * speed)
