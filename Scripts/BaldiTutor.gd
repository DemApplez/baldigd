extends Node3D



# Sets animation for Tutor Baldi back to "baldi_idle"
func _on_animated_sprite_3d_animation_finished() -> void:
	$AnimatedSprite3D.play("baldi_idle")
