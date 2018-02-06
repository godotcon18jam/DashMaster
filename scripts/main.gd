extends Node


func _ready():
    randomize()
    
    $player1.connect("died", self, "_player_1_died")
    $player2.connect("died", self, "_player_2_died")


func _player_1_died():
    pass


func _player_2_died():
    pass
    # move to score scene
    # add score to player 2