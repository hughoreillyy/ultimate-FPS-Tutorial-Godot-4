extends CanvasLayer

@onready var CurrentWeaponLabel = $VBoxContainer/HBoxContainer/CurrentWeapon
@onready var CurrentAmmoLabel = $VBoxContainer/HBoxContainer2/CurrentAmmo
@onready var CurrentWeaponStack = $VBoxContainer/HBoxContainer3/WeaponStack


func _on_weapons_manager_update_ammo(Ammo) -> void:
	CurrentAmmoLabel.set_text(str(Ammo[0])+" / "+ str(Ammo[1]))


func _on_weapons_manager_update_weapon_stack(Weapon_stack) -> void:
	CurrentWeaponStack.set_text("")
	for i in Weapon_stack:
		CurrentWeaponStack.text += "\n"+i


func _on_weapons_manager_weapon_changed(Weapon_name) -> void:
	CurrentWeaponLabel.set_text(Weapon_name)
