extends RigidBody2D

export (int) var JUMPSPEED

var is_jumping = false


func _ready():
    self.position.x = 10
    self.position.y = 10


func _process(delta):
    
    if Input.is_action_pressed("ui_up") and not is_jumping:
        self.linear_velocity.y = JUMPSPEED
        is_jumping = true
    if $CollisionShape2D.
        
        