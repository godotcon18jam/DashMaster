extends StaticBody2D


onready var camera = get_tree().get_current_scene().get_node("camera")
    

func _process(delta):
    if $marker.global_position.x < self.camera.global_position.x:
        print("cleaning platform")
        self.queue_free()