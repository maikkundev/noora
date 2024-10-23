class_name Player
extends Entity

## The player state.
enum State {
	IDLE, MOVE, ATTACK, TAKE_DAMAGE, DEATH
}

## The player's initial state, and its setter function.
var state: State = State.IDLE: set = transition

## Available player states.
var states: Array = State.values()

## Transitions the player to a new state.
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
	
	# TODO: update player sprite
	# match state:

func _process(_delta: float):
	var direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown").normalized()
	match state:
		State.IDLE:
			if direction:
				state = State.MOVE
			else:
				velocity.x = lerp(velocity.x, 0.0, 0.1)
				velocity.y = lerp(velocity.y, 0.0, 0.1)
	
		State.MOVE:
			if !direction:
				state = State.IDLE
			else:
				velocity.x = lerp(velocity.x, base_speed * direction.x, 0.1)
				velocity.y = lerp(velocity.y, base_speed * direction.y, 0.1)
		
				
		_: pass

func _physics_process(_delta: float):
	move_and_slide()
