extends Node


func _ready():
    randomize()
    
    #$player1.connect("died", self, "_player_1_died")
    #$player2.connect("died", self, "_player_2_died")


func _player_1_died():
    self._goto_scene("Player 2 Won!")


func _player_2_died():
    self._goto_scene("Player 1 Won!")


func _goto_scene(label):
    var root = get_tree().get_root()
    var current_scene = root.get_child(root.get_child_count() -1)
    
    current_scene.queue_free()

    var s = load("res://scenes/game_over.tscn")    
    var new_scene = s.instance()
    new_scene.set_label(label)

    get_node("/root").add_child(new_scene)
    # move to score scene
    # add score to player 2