extends RigidBody2D

export (int) var JUMPSPEED = -100

export(String, "player_1", "player_2") var player = "player_1"

var jump_count = 0

signal died


func _ready():
    self.connect("body_entered", self, "_on_body_entered")

    $sprite.animation = self.player


func _physics_process(delta):
    if Input.is_action_pressed("ui_right"):
        self.apply_impulse(Vector2(0, 0), Vector2(4, 0))
        
    if Input.is_action_pressed("ui_left"):
        self.apply_impulse(Vector2(0, 0), Vector2(-4, 0))
        
    if Input.is_action_just_pressed("%s_up" % self.player) and self.jump_count < 2:
        self.set_axis_velocity(Vector2(1, -50))
        self.jump_count += 1
        $sound_jump.play()
        
    if self.position.y > 100:
        
        emit_signal("died")
        

func _on_body_entered(body):
    self.jump_count = 0