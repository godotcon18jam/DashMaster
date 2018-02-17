extends CanvasLayer


func _ready():
    $retry.connect("pressed", self, "_on_retry_pressed")
    

func set_label(text):
    $label.text = text


func _on_retry_pressed():
    var root = get_tree().get_root()
    var current_scene = root.get_child(root.get_child_count() -1)
    
    current_scene.queue_free()
    get_tree().change_scene("res://stages/game.tscn")