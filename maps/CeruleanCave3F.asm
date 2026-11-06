	object_const_def
	const CERULEAN3F_MEWTWO
	const CERULEAN3F_ULTRABALL
	const CERULEAN3F_MAXREVIVE
	const CERULEAN3F_MAXELIXER
	const CERULEAN3F_ULTRABALL2
	const CERULEAN3F_EMPTYBALL

CeruleanCave3F_MapScripts:
	def_scene_scripts

	def_callbacks

Cerulean3F_MewtwoScript:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 79
	startbattle
	disappear CERULEAN3F_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mew!"
	done

Cerulean3F_UltraballScript:
	itemball ULTRA_BALL

Cerulean3F_MaxReviveScript:
	itemball MAX_REVIVE

Cerulean3F_MaxElixerScript:
	itemball MAX_ELIXER

Cerulean3F_Ultraball2Script:
	itemball ULTRA_BALL

Cerulean3F_EmptyBallScript:
	opentext
	writetext EmptyBallText
	prompt
	disappear CERULEAN3F_EMPTYBALL
	end

EmptyBallText:
	text "It's empty..."
	done

CeruleanCave3Fppup:
	hiddenitem PP_UP, EVENT_CERULEAN3FPPUP

CeruleanCave3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 7, CERULEAN_CAVE_1F, 4 ; Ladder 7

	def_coord_events

	def_bg_events
	bg_event 9, 16, BGEVENT_ITEM, CeruleanCave3Fppup

	def_object_events
	object_event 29, 15, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Cerulean3F_MewtwoScript, EVENT_FOUGHT_MEWTWO
	object_event 2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean3F_UltraballScript, EVENT_CERULEAN3F_ULTRABALL
	object_event 3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean3F_MaxReviveScript, EVENT_CERULEAN3F_MAXREVIVE
	object_event 15, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean3F_MaxElixerScript, EVENT_CERULEAN3F_MAXELIXER
	object_event 28, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean3F_Ultraball2Script, EVENT_CERULEAN3F_ULTRABALL2
	object_event 9, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean3F_EmptyBallScript, -1
