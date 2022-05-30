tool
extends Node

export (String, DIR, GLOBAL) var file_directory = "C:/" setget , _setget_file_directory
export (String) var file_name = "save.dat" setget , _setget_file_name
var file_path : String = file_directory+file_name

export (bool) var auto_load = false
export (bool) var auto_save = false
var timer
export (int) var wait_time = 300

export (Dictionary) var data_dictionary

func _setget_file_directory():
	if file_directory == "":
		file_directory = "C:/"
	return file_directory

func _setget_file_name():
	if file_name == "":
		file_name = "save.dat"
	return file_name

func _ready():
	_print_variables()
	if auto_load == true:
		_load_data()
	if auto_save == true:
		timer = Timer.new()
		timer.set_wait_time(wait_time)
		timer.connect("timeout", self, "_on_Timer_timeout")
		add_child(timer)
		timer.start()

func _print_variables():
	print(str(file_directory) + " | " + str(file_name) + " | " + str(file_path) + " | " + str(auto_load) + " | " + str(auto_save) + " | " + str(wait_time) + " | " + str(data_dictionary))

func _on_Timer_timeout():
	_save_data()

func _load_data():
	print("Load")
	var file = File.new()
	if file.file_exists(file_path):
		file.open(file_path, File.READ)
		data_dictionary = file.get_var()
		file.close()
	else:
		return _get_application_warning(301)

func _save_data():
	print("Save")
	var file = File.new()
	file.open(file_path, File.WRITE)
	file.store_var(data_dictionary)
	file.close()

func _get_application_warning(error : int):
	if error == 301:
		OS.alert("The application was unable to find an existing save file in " + file_path  + ".						Click OK to proceed. This may results in data loss.", "Application Error : " + str(error))
