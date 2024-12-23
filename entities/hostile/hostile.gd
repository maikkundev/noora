class_name Hostile
extends Entity

# The hostile state
enum State {
  IDLE, MOVE, ATTACK, DEATH
}

# Preload sprites
# TODO

## The hostile's initial state, and its setter function.
var state: State = State.IDLE: set = transition

## Available hostile states.
var states: Array = State.values()

## Transitions hostile to a new state.
func transition(to: int):
	# lookup state
	if to not in states:
		printerr("Invalid target state:", to)
		return
	
	if state != null:
		# if previous and next state are the same, return
		if state == to:
			return
		# debug transition
		print(self, " transition ", state, " -> ", to)
	
	# update local state
	state = to as State

	# update hostile sprite
  # TODO
	# match state:
	# 	State.IDLE:
	# 			sprite.texture = sprite_idle
	# 	State.MOVE:
	# 			sprite.texture = sprite_move
	# 	State.TAKE_DAMAGE:
	# 			sprite.texture = sprite_damage
	# 	State.DEATH:
	# 			sprite.texture = sprite_death
	# 	State.ATTACK:
	# 			sprite.texture = sprite_attack
	# 	State.MOVE_AND_ATTACK:
	# 			sprite.texture = sprite_move_attack

func get_dir_to_player() -> Vector2:
	var player_node = get_tree().get_first_node_in_group("player") as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized()
	return Vector2.ZERO

func _process(_delta: float) -> void:
	var player_dir = get_dir_to_player()
	velocity = player_dir * base_speed
	move_and_slide()