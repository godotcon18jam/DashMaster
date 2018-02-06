extends StaticBody2D


onready var sprite = $sprite

onready var endmarker = $endmarker


func _process(delta):
    position.x -= self.get_viewport().size.x / 137 * 0.0025
    
    if self.endmarker.position.x < 0:
        print("cleaning ")
        self.queue_free()