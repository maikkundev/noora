class_name Boss
extends Entity

## The boss state.
enum State {
	IDLE, MOVE, ATTACK, DEATH
}

# Preload sprites
# TODO

## The boss' initial state, and its setter function.
var state: State = State.IDLE: set = transition

## Available boss states.
var states: Array = State.values()

## Transitions the boss to a new state.
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

	# update boss sprite
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