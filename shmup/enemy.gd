extends RigidBody2D
signal enemy_killed


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	linear_velocity = Vector2(0,100)


func _on_body_shape_entered(_body_rid: RID, body: Node, _body_shape_index: int, _local_shape_index: int) -> void:
	emit_signal("enemy_killed")
	self.queue_free()
	body.queue_free()
