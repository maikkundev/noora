class_name WeaponType
extends Resource

@export_group("General")

# Name of the weapon
var name: String

@export_group("Stats")

var attack_speed: float
var damage: int

func _init(p_attack_speed = 100, p_damage = 100):
  attack_speed = p_attack_speed
  damage = p_damage