	object_const_def
;	const GLOBALTERMINALOUTSIDE_ROCKET
	const MOLTRESMOLTRES

MoltresChamber_MapScripts:
	def_scene_scripts

	def_callbacks

MoltresScript:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_FOUGHT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MOLTRES, 70
	startbattle
	disappear MOLTRESMOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "Gyaoo!"
	done

MoltresChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event  8, 13, GLOBAL_TERMINAL_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 5, 5, SPRITE_BIRD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoltresScript, EVENT_FOUGHT_MOLTRES
;	object_event 24, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
