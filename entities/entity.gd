## An entity encapsulates the general notion of a living thing in the game world.
class_name Entity
extends CharacterBody2D

@onready var sprite = $Sprite

@onready var collider = $Collider

@export_group("Stats")

@export var health: float

@export var defense: float

@export_group("Movement")

@export var base_speed: float

@export var base_deceleration: float

## The type of entity this is.
@export var entity_type: EntityType

## Returns the type of the entity.
func get_entity_type() -> EntityType:
	return entity_type

func _ready():
	health = entity_type.max_health
	defense = entity_type.base_defense
	base_speed = entity_type.base_speed
