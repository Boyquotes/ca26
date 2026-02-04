extends CharacterBody3D

func _ready() -> void:
	
	var numbers = [1, 2, 3, 4, 5]
	# Map - transform each element
	var doubled = numbers.map(func(x): return x * 2)
	
	pass
	
# Mesh
func _process(delta: float) -> void:
	pass
	
var r:float = 0
@export var speed:float = 1

func _physics_process(delta: float) -> void:
	var f = Input.get_axis("backward", "forward")
	# translate(Vector3.FORWARD * delta * f)	
	velocity = global_basis.z * f * 10
	var r = Input.get_axis("left", "right")	
	rotate_y(r * delta)
	move_and_slide()
	
