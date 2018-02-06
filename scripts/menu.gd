extends CanvasLayer


func _ready():
    $start.connect("pressed", self, "_on_start_pressed")


func _on_start_pressed():
    get_tree().change_scene("res://stages/game.tscn")
