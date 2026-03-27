	object_const_def

PowerPlantBasement_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantBasement_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 32, POWER_PLANT, 3
	warp_event 3, 0, ROUTE_10_NORTH, 3

	def_coord_events

	def_bg_events

	def_object_events
