tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("SaveNode", "Node", preload("SaveNode.gd"), preload("Icon.svg"))
	pass

func _exit_tree():
	remove_custom_type("SaveNode")
	pass
