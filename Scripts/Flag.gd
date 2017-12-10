extends Sprite

var type = "flag"

func _ready():
	get_node("Area2D").connect("body_enter", self, "collision")

func collision(body):
    if (body.get_name() != "player"):
        return
    body.hit(type)
    queue_free()