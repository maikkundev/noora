class_name Weapon
extends Entity

# The weapon's state
enum State {
  IDLE, ATTACK
}

# Preload weapon sprites
# TODO

## The weapon's initial state, and its setter function.
var state: State = State.IDLE: set = transition

## Available weapon states.
var states: Array = State.values()

## Transitions the weapon to a new state.
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

	# update weapon sprite
  # TODO
	# match state:
	# 	State.IDLE:
	# 			sprite.texture = sprite_idle
	# 	State.ATTACK:
	# 			sprite.texture = sprite_attack

func _process(_delta: float) -> void:
	pass