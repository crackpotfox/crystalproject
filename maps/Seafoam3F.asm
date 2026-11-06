	object_const_def
	const SEAFOAM3F_BOULDER1
	const SEAFOAM3F_BOULDER2

Seafoam3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Seafoam3FSetUpStoneTableCallBack

Seafoam3FSetUpStoneTableCallBack:
	writecmdqueue .CommandQueue
	endcallback
.CommandQueue
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if stone on warp

.StoneTable:
	stonetable 3, SEAFOAM3F_BOULDER1, .Boulder1
	stonetable 4, SEAFOAM3F_BOULDER2, .Boulder2
	db -1

.Boulder1:
	disappear SEAFOAM3F_BOULDER1
	clearevent EVENT_BOULDER_SEAFOAM3F_BOULDER1
	setevent EVENT_BOULDER_SEAFOAM3F_BOULDER1
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAM3F_BOULDER1
	clearevent EVENT_BOULDER_SEAFOAM3F_BOULDER2
	setevent EVENT_BOULDER_SEAFOAM3F_BOULDER2
	sjump .FinishBoulder                       

.FinishBoulder
	pause 30
	scall .BoulderFallsThrough
	; optional add falling text
	end

.BoulderFallsThrough
	playsound SFX_STRENGTH
	earthquake 80
	end

Seafoam3FBoulder:
	jumpstd StrengthBoulderScript

Seafoam3FMaxElixer:
	hiddenitem NUGGET, EVENT_SEAFOAM3F_MAX_ELIXER

Seafoam3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 3, SEAFOAM_2F, 1 ; Ladder 9
	warp_event 5, 13, SEAFOAM_4F, 5 ; Ladder 2
	warp_event 13, 7, SEAFOAM_2F, 3 ; Ladder 3
	warp_event 25, 3, SEAFOAM_4F, 2; Ladder 11
	warp_event 25, 11, SEAFOAM_2F, 6; Ladder 6
	warp_event 25, 13, SEAFOAM_4F, 4; Ladeder 5
	warp_event 19, 15, SEAFOAM_2F, 5; Ladder 10
	warp_event 18, 6, SEAFOAM_2F, 8 ; Fall from Hole 2
	warp_event 22, 6, SEAFOAM_2F, 9 ; Fall from Hole 7
	warp_event 18, 7, SEAFOAM_4F, 10 ; Hole 3
	warp_event 22, 7, SEAFOAM_4F, 11 ; Hole 8

	def_coord_events

	def_bg_events
	bg_event 15, 15, BGEVENT_ITEM, Seafoam3FMaxElixer

	def_object_events
	object_event 17, 7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam3FBoulder, EVENT_BOULDER_SEAFOAM3F_BOULDER1
	object_event 23, 7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam3FBoulder, EVENT_BOULDER_SEAFOAM3F_BOULDER2
