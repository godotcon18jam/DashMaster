extends StaticBody2D


onready var sprite = $sprite


func _process(delta):
    position.x -= self.get_viewport().size.x / 137 * 0.0025
    
    if position.x + self.sprite.texture.get_width() < 0:
        self.queue_free()