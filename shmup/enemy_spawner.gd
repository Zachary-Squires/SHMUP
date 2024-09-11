extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var enemy_scene = load("res://enemy.tscn")
	var enemy = enemy_scene.instantiate()
	GameController.add_child(enemy)
	enemy.connect("enemy_killed", Callable(self, "incrementScore"))
	enemy.position = Vector2(randi() % 1100 + 0, -30)
	
func incrementScore():
	GameController.txtScore += 1
