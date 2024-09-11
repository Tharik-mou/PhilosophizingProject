extends Sprite2D
class_name PlayerTexture

@export var player: CharacterBody2D = null
@export var animation: AnimationPlayer = null

var suffix: String = "right"
 
func animate(direction: Vector2) -> void:
	verify_position(direction)

	horizontal_behavior(direction)

func verify_position(direction: Vector2) -> void:
	if direction.x > 0:
		flip_h = false
		suffix = "right"
		player.direction = -1
		position = Vector2.ZERO
	elif direction.x < 0:
		flip_h = true
		suffix = "left"
		player.direction = 1
		position = Vector2(-2, 0)

func horizontal_behavior(direction: Vector2) -> void:
	if direction.x != 0 or direction.y != 0:
		animation.play("run" + suffix)
	else:
		#animation.play("idle")
		pass
