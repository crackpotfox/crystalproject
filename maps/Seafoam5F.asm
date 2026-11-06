	object_const_def
	const Seafoam5FBoulder1
	const Seafoam5FBoulder2


Seafoam5F_MapScripts:
	def_scene_scripts

	def_callbacks

Seafoam5FBoulder:
	jumptext Seafoam5FStillBoulder

Seafoam5FStillBoulder:
	text "It's blocking"
	line "The waterfall!"
	done

Seafoam5FUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM5F_ULTRABALL

Seafoam5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 7, SEAFOAM_4F, 1 ; Ladder 1
	warp_event 25, 3, SEAFOAM_4F, 3 ; Ladder 12
	warp_event 22, 17, SEAFOAM_4F, 8 ; From 4f right side
	warp_event 23, 17, SEAFOAM_4F, 8 ; From 4f right right side
	warp_event 4, 17, SEAFOAM_4F, 8 ; Current left left
	warp_event 5, 17, SEAFOAM_4F, 9 ; Current left
	warp_event 4, 15, SEAFOAM_4F, 12
	warp_event 5, 15, SEAFOAM_4F, 13


	def_coord_events

	def_bg_events
	bg_event 27, 17, BGEVENT_ITEM, Seafoam5FUltraBall

	def_object_events
	object_event 4, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam5FBoulder, EVENT_BOULDER_SEAFOAM5F_BOULDER1
	object_event 5, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam5FBoulder, EVENT_BOULDER_SEAFOAM5F_BOULDER2
