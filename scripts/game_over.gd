extends CanvasLayer


func _ready():
    $retry.connect("pressed", self, "_on_retry_pressed")
    

func set_label(text):
    $label.text = text


func _on_retry_pressed():
    pass    