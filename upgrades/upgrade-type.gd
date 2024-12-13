class_name UpgradeType
extends Resource

enum Category {
  OFFENSIVE, DEFENSIVE, OTHER
}

@export_group("General")

# Name of the upgrade
@export var name: String
@export var category: Category
