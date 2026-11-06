	object_const_def
	const Cerulean1FRareCandy
	const Cerulean1FMaxRevive
	const Cerulean1FUltraball
	const Cerulean1FMaxElixer

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

Cerulean1Fppup:
	hiddenitem PP_UP, EVENT_CERULEAN1FPPUP

Cerulean1FRareCandyScript:
	itemball RARE_CANDY	

Cerulean1FMaxReviveScript:
	itemball MAX_REVIVE	

Cerulean1FUltraballScript:
	itemball ULTRA_BALL	

Cerulean1FMaxElixerScript:
	itemball MAX_ELIXER

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 17, CERULEAN_CITY, 7
	warp_event 21, 11, CERULEAN_CAVE_2F, 3 ; Ladder 3
	warp_event 5, 13, CERULEAN_CAVE_2F, 6 ; Ladder 1
	warp_event 3, 9, CERULEAN_CAVE_3F, 1 ; Ladder 7
	warp_event 3, 5, CERULEAN_CAVE_2F, 5; ladder 6
	warp_event 9, 3, CERULEAN_CAVE_2F, 4 ; ladder 5
	warp_event 27, 3, CERULEAN_CAVE_2F, 1; ladder 4
	warp_event 25, 9, CERULEAN_CAVE_2F, 2; ladder 2

	def_coord_events

	def_bg_events
	bg_event 18, 9, BGEVENT_ITEM, Cerulean1Fppup

	def_object_events
	object_event 31, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean1FRareCandyScript, EVENT_CERULEAN1FRARECANDY
	object_event 31, 8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean1FMaxReviveScript, EVENT_CERULEAN1FMAXREVIVE
	object_event 19, 5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean1FUltraballScript, EVENT_CERULEAN1FULTRABALL
	object_event 12, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Cerulean1FMaxElixerScript, EVENT_CERULEAN1FMAXELIXER
