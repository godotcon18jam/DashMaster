extends RigidBody2D

export (int) var JUMPSPEED

var jump_count = 0


func _ready():
    self.connect("body_entered", self, "_on_body_entered")


func _process(delta):
    if Input.is_action_just_pressed("ui_up") and self.jump_count < 2:
        self.linear_velocity.y = JUMPSPEED
        self.jump_count += 1
        

func _on_body_entered(body):
    print("something")
    self.jump_count = 0