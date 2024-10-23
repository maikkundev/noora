## An entity encapsulates the general notion of a living thing in the game world.
class_name Entity
extends CharacterBody2D

@export var base_speed: float

## The type of entity this is.
@export var entity_type: EntityType

## Returns the type of the entity.
func get_entity_type() -> EntityType:
	return entity_type

func _ready():
	base_speed = entity_type.base_speed
