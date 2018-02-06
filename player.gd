extends RigidBody2D

export (int) var JUMPSPEED

var start_position = Vector2(10,10)

var is_jumping = false


func _ready():
    self.position.x = start_position.x
    self.position.y = start_position.y


func _process(delta):
    
    if Input.is_action_pressed("ui_up") and not is_jumping:
        self.linear_velocity.y = JUMPSPEED
        is_jumping = true
        
        