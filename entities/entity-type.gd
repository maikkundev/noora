## An entity type.
class_name EntityType
extends Resource

@export_group("General")

## The entity's name.
@export var name: String

@export_group("Base Stats")

## The entity's maximum health.
@export var max_health: int

## The entity's base defense.
@export var base_defense: int

@export_group("Movement")

## The entity's base movement speed.
@export var base_speed: float

## The entity's base deceleration.
@export var base_deceleration: float

func _init(p_max_health = 100, p_defense = 10, p_speed = 100.0, p_deceleration = 0.5):
	max_health = p_max_health
	base_defense = p_defense
	base_speed = p_speed
	base_deceleration = p_deceleration
