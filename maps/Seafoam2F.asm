	object_const_def
	const SEAFOAM2F_BOULDER1
	const SEAFOAM2F_BOULDER2

Seafoam2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Seafoam2FSetUpStoneTableCallback

Seafoam2FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if stone on warp

.StoneTable:
	stonetable 3, SEAFOAM2F_BOULDER1, .Boulder1
	stonetable 4, SEAFOAM2F_BOULDER2, .Boulder2
	db -1

.Boulder1:
	disappear SEAFOAM2F_BOULDER1
	clearevent EVENT_BOULDER_SEAFOAM2F_BOULDER1
	setevent EVENT_BOULDER_SEAFOAM3F_BOULDER1
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAM2F_BOULDER2
	clearevent EVENT_BOULDER_SEAFOAM2F_BOULDER2
	setevent EVENT_BOULDER_SEAFOAM3F_BOULDER2
	sjump .FinishBoulder

.FinishBoulder
	pause 30
	scall .BoulderFallsThrough
	; optional: add falling text
	end

.BoulderFallsThrough
	playsound SFX_STRENGTH
	earthquake 80
	end

Seafoam2FBoulder:
	jumpstd StrengthBoulderScript

Seafoam2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 3, SEAFOAM_3F, 1 ;Ladder 9
	warp_event 7, 5, SEAFOAM_1F, 3 ;Ladder 4
	warp_event 13, 7, SEAFOAM_3F, 3; Ladder 3
	warp_event 25, 3, SEAFOAM_1F, 4 ; Ladder 8
	warp_event 19, 15, SEAFOAM_3F, 7; Ladder 10
	warp_event 25, 11, SEAFOAM_3F, 5; Ladder 6 
	warp_event 23, 15, SEAFOAM_1F, 5; Ladder 7
	warp_event 18, 7, SEAFOAM_3F, 8; Hole 2
	warp_event 24, 7, SEAFOAM_3F, 9; Hole 7
	warp_event 18, 8, SEAFOAM_1F, 6; Drop from hole 1
	warp_event 24, 8, SEAFOAM_1F, 7; Drop from hole 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17, 7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam2FBoulder, EVENT_BOULDER_SEAFOAM2F_BOULDER1
	object_event 25, 7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam2FBoulder, EVENT_BOULDER_SEAFOAM2F_BOULDER2
