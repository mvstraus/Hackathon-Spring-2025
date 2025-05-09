extends Node2D

@onready var collision: CollisionShape2D = $CollisionShape2D
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var moused_over = false
signal clicked

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if moused_over:
		if Input.is_action_just_pressed("m1_click"):
			print("DEBUG: M1 Clicked")
			collision.disabled = true
			sprite.animation = "showing"
			clicked.emit()

func _inside_collision():
	moused_over = true
	print("DEBUG: Inside collision")

func _exit_collision():
	moused_over = false
	print("DEBUG: Exiting collision")
