extends RigidBody2D

export(String, "player_1", "player_2") var player = "player_1"

signal died


const MOVE_MAX_VELOCITY = 80
const MOVE_ACCEL = 300


func _ready():
    $sprite.animation = self.player


func _integrate_forces(state):
    var lv = state.linear_velocity
    var step = state.step
    
    var move_left = Input.is_action_pressed("ui_left")
    var move_right = Input.is_action_pressed("ui_right")
    var jump = Input.is_action_just_pressed("player_1_up")
    
    # TODO: for now I removed the limit to multipe jumps.
    # I want to move it back later with a different system
    # (e.g. jump energy that recharges while moving)
    if jump:
        lv.y -= 100
        $sound_jump.play()
    
    if move_left and not move_right:
        if lv.x > -MOVE_MAX_VELOCITY:
            lv.x -= MOVE_ACCEL * step
    elif move_right and not move_left:
        if lv.x < MOVE_MAX_VELOCITY:
            lv.x += MOVE_ACCEL * step
    
    # Finally, apply gravity and set back the linear velocity
    lv += state.total_gravity * step
    state.linear_velocity = lv
    

func _process(delta):
    # TODO: this value is hardcoded and it is related to the
    # window size. We should insted add an area2d with collision
    # marked as "death zone"
    if self.position.y > 100:
        emit_signal("died")