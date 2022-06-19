extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_pause"):
		if get_tree().paused:
			resume()
		else:
			pause()


func pause():
	get_tree().paused = true
	$MarginContainer/ResumeButton.show()
	$"Darken Overlay".show()
	$MarginContainer/PauseButton.hide()
	
func resume():
	get_tree().paused = false
	$MarginContainer/PauseButton.show()
	$"Darken Overlay".hide()
	$MarginContainer/ResumeButton.hide()

func _on_PauseButton_pressed():
	pause()

func _on_ResumeButton_pressed():
	resume()
