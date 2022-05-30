tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("SaveNode", "Node", preload("res://addons/save_node/main/save_node.gd"), preload("res://addons/save_node/editor/icons/SaveNode.svg"))

func _exit_tree():
	remove_custom_type("SaveNode")
