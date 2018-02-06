extends Node2D

const scn_platforms = preload("res://scenes/platform.tscn")
const AMOUNT_TO_FILL_VIEW = 7


func _ready():
    randomize()
    for i in range(AMOUNT_TO_FILL_VIEW):
        spawn_and_move()


func spawn_and_move():
    print("spawn and move")
    spawn_platform()
    go_next_pos()


func spawn_platform():
    var new_platform = scn_platforms.instance()

    new_platform.position = self.position
    new_platform.position.y = int(rand_range(30, 70))  
    
    # each new platform has its tree_exited signal connected to
    # the spawn_and_move function
    new_platform.connect("tree_exited", self, "spawn_and_move")
    $container.add_child(new_platform)


func go_next_pos():
    self.position = position + Vector2(40, 0)