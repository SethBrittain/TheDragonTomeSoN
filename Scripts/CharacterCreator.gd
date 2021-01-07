extends Node

onready var HealthNode = get_node("Control/HBoxContainer/TabContainer/Runes/VBoxContainer/Health")
onready var ArmorNode = get_node("Control/HBoxContainer/TabContainer/Runes/VBoxContainer/Armor")
onready var PersuasionNode = get_node("Control/HBoxContainer/TabContainer/Runes/VBoxContainer/Persuasion")

var available_runes = 10

export (int) var default_health #default 10
export (int) var default_armor #default 10
export (int) var default_persuasion #default 10

#variables to pass to player
var health_stat = 10
var armor_stat = 10
var persuasion_stat = 10

func update_runes():
	get_node("Control/HBoxContainer/TabContainer/Runes/VBoxContainer/Runes").text = " Runes Remaining: " + str(available_runes)

func _on_HealthUp_pressed():
	if available_runes > 0:
		health_stat += 5
		available_runes -= 1
		HealthNode.get_node("Amount").text = str(health_stat)
		update_runes()
	#else:
		#throw error

func _on_HealthDown_pressed():
	if health_stat > 10:
		health_stat -= 5
		available_runes += 1
		HealthNode.get_node("Amount").text = str(health_stat)
		update_runes()
	#else:
		#throw error

func _on_ArmorUp_pressed():
	if available_runes > 0:
		armor_stat += 5
		available_runes -= 1
		ArmorNode.get_node("Amount").text = str(armor_stat)
		update_runes()
	#else:
		#throw error

func _on_ArmorDown_pressed():
	if armor_stat > 10:
		armor_stat -= 5
		available_runes += 1
		ArmorNode.get_node("Amount").text = str(armor_stat)
		update_runes()
	#else:
		#throw error

func _on_PersuasionUp_pressed():
	if available_runes > 0:
		persuasion_stat += 5
		available_runes -= 1
		PersuasionNode.get_node("Amount").text = str(persuasion_stat)
		update_runes()
	#else:
		#throw error

func _on_PersuasionDown_pressed():
	if persuasion_stat > 10:
		persuasion_stat -= 5
		available_runes += 1
		PersuasionNode.get_node("Amount").text = str(persuasion_stat)
		update_runes()
	#else:
		#throw error
