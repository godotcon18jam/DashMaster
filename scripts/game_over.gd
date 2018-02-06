extends Node



func _ready():
    $retry.connect("pressed", self, "_on_retry_pressed")


func _on_retry_pressed():
    pass    