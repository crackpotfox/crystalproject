	object_const_def
	const Seafoam5FBoulder1
	const Seafoam5FBoulder2
	const Articuno

Seafoam5F_MapScripts:
	def_scene_scripts
	scene_script Seafoam5FNoop, SCENE_SEAFOAM5F

	def_callbacks

Seafoam5FBoulder:
	jumptext Seafoam5FStillBoulder

Seafoam5FStillBoulder:
	text "It's blocking"
	line "The waterfall!"
	done

Seafoam5FUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM5F_ULTRABALL

Seafoam5FNoop:
	end

Seafoam5FSceneScript:
	checkevent EVENT_BOULDER_SEAFOAM5F_BOULDER2
	iftrue .Current1
	checkevent EVENT_BOULDER_SEAFOAM5F_BOULDER1
	iftrue .Current2
	end

.Current1:
	opentext
	writetext CurrentText5F
	pause 30
	closetext
	applymovement PLAYER, CurrentMove7
	end

.Current2:
	opentext
	writetext CurrentText5F
	pause 30
	closetext
	applymovement PLAYER, CurrentMove8
	end

CurrentMove7:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CurrentMove8:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Seafoam5FSceneScriptBottom:
	checkevent EVENT_BOULDER_SEAFOAM5F_BOULDER2
	iftrue .Current1
	checkevent EVENT_BOULDER_SEAFOAM5F_BOULDER1
	iftrue .Current2
	end

.Current1:
	opentext
	writetext CurrentText5F
	pause 30
	closetext
	applymovement PLAYER, CurrentMove9
	end

.Current2:
	opentext
	writetext CurrentText5F
	pause 30
	closetext
	applymovement PLAYER, CurrentMove10
	end

CurrentMove9:
	step DOWN
	step DOWN
	step DOWN
	step_end

CurrentMove10:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end

ArticunoScript:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 70
	startbattle
	disappear Articuno
	reloadmapafterbattle
	end

CurrentText5F:
	text "The current is"
	line "so strong..."
	done

ArticunoText:
	text "Gyaoo!"
	done

Seafoam5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 7, SEAFOAM_4F, 1 ; Ladder 1
	warp_event 25, 3, SEAFOAM_4F, 3 ; Ladder 12
	warp_event 22, 17, SEAFOAM_4F, 8 ; From 4f right side
	warp_event 23, 17, SEAFOAM_4F, 9 ; From 4f right right side
	warp_event 4, 17, SEAFOAM_4F, 8 ; Current left left
	warp_event 5, 17, SEAFOAM_4F, 9 ; Current left
	warp_event 4, 16, SEAFOAM_4F, 12
	warp_event 5, 16, SEAFOAM_4F, 13


	def_coord_events
	coord_event 5, 12, SCENE_SEAFOAM5F, Seafoam5FSceneScript
	coord_event 5, 13, SCENE_SEAFOAM5F, Seafoam5FSceneScriptBottom

	def_bg_events
	bg_event 27, 17, BGEVENT_ITEM, Seafoam5FUltraBall

	def_object_events
	object_event 5, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam5FBoulder, EVENT_BOULDER_SEAFOAM5F_BOULDER1
	object_event 4, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam5FBoulder, EVENT_BOULDER_SEAFOAM5F_BOULDER2
	object_event 7, 1, SPRITE_BIRD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ArticunoScript, EVENT_FOUGHT_ARTICUNO
