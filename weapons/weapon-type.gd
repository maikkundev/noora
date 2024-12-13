class_name WeaponType
extends Resource

@export_group("General")

# Name of the weapon
@export var name: String

@export_group("Stats")

@export var attack_speed: float
@export var damage: int

func _init(p_attack_speed = 100, p_damage = 100):
  attack_speed = p_attack_speed
  damage = p_damage