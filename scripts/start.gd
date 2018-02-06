extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
    $start.connect("pressed", self, "_on_start_pressed")


func _on_start_pressed():
    get_tree().change_scene("res://scenes/main.tscn")
