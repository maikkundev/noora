## An entity encapsulates the general notion of a living thing in the game world.
class_name Entity
extends CharacterBody2D

## The entity's sprite.
@onready var sprite = $Sprite

## The entity's collider.
@onready var collider = $Collider

@export_group("Stats")

## The entity's current health.
@export var health: float

## The entity's defense.
@export var defense: float

@export_group("Movement")

## The entity's base speed.
@export var base_speed: float

## The entity's base deceleration.
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
	base_deceleration = entity_type.base_deceleration
