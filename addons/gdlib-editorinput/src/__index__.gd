@tool
extends EditorPlugin

const INPUT_LISTENER = &'InputListener'

func _enable_plugin() -> void:
  print('Adding {0} autoload'.format([INPUT_LISTENER]))
  add_autoload_singleton(INPUT_LISTENER, 'input_listener.gd')

func _disable_plugin() -> void:
  print('Removing {0} autoload'.format([INPUT_LISTENER]))
  remove_autoload_singleton(INPUT_LISTENER)
