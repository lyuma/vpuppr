extends TrackingGui

#-----------------------------------------------------------------------------#
# Builtin functions
#-----------------------------------------------------------------------------#

func _ready() -> void:
	var address := %Address
	var port := %Port
	
	%Start.pressed.connect(func() -> void:
		started.emit(AbstractTracker.Trackers.MEOW_FACE, {
			address = address.text,
			port = port.text.to_int(),
		})
	)

#-----------------------------------------------------------------------------#
# Private functions
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Public functions
#-----------------------------------------------------------------------------#

func display_name() -> String:
	return "Meow Face"
