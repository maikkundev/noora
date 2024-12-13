class_name LevelType
extends Resource

@export_group("General")

# Name of the level
@export var name: String
@export var unlocked: bool

@export_group("Enemies")

# Array of enemy types the level will have
@export var enemies: Array

# Boss type of the level
@export var boss: String