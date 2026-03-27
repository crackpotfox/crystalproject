	object_const_def
	const Cerulean2FFullrestore
	const Cerulean2FUltraball
	const Cerulean2FMaxrevive
	const Cerulean2FRaracandy

CeruleanCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

Cerulean2FFullrestoreScript:
	itemball FULL_RESTORE

Cerulean2FUltraballScript:
	itemball ULTRA_BALL

Cerulean2FMaxreviveScript:
	itemball MAX_REVIVE

Cerulean2FRarecandyScript:
	itemball RARE_CANDY

Cerulean2Fppup:
	hiddenitem PP_UP, EVENT_CERULEAN2FPPUP

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31, 1, CERULEAN_CAVE_1F, 7 ; Ladder 4
	warp_event 23, 7, CERULEAN_CAVE_1F, 8 ; Ladder 2
	warp_event 19, 7, CERULEAN_CAVE_1F, 2 ; Ladder 3
	warp_event 11, 3, CERULEAN_CAVE_1F, 6 ; ladder 5
	warp_event 3, 3, CERULEAN_CAVE_1F, 5; ladder 6
	warp_event 5, 11, CERULEAN_CAVE_1F, 3; ladder 1

	def_coord_events

	def_bg_events
	bg_event 13, 14, BGEVENT_ITEM, Cerulean2Fppup

	def_object_events
	object_event 28, 9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean2FFullrestoreScript, EVENT_CERULEAN2FFULLRESTORE
	object_event 17, 8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean2FUltraballScript, EVENT_CERULEAN2FULTRABALL
	object_event 20, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean2FMaxreviveScript, EVENT_CERULEAN2FMAXREVIVE
	object_event 1, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean2FRarecandyScript, EVENT_CERULEAN2FRARECANDY
