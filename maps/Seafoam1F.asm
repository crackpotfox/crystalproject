	object_const_def
	const SEAFOAM1F_BOULDER1
	const SEAFOAM1F_BOULDER2

Seafoam1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Seafoam1FSetStoneCallBack

Seafoam1FSetStoneCallBack:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if stones on warp

.StoneTable:
	stonetable 6, SEAFOAM1F_BOULDER1, .Boulder1
	stonetable 7, SEAFOAM1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAM1F_BOULDER1
	setevent EVENT_BOULDER_SEAFOAM1F_BOULDER1
	clearevent EVENT_BOULDER_SEAFOAM2F_BOULDER1
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAM1F_BOULDER2
	setevent EVENT_BOULDER_SEAFOAM1F_BOULDER2
	clearevent EVENT_BOULDER_SEAFOAM2F_BOULDER2
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
;	Optional: Add text for boulder falling
	end

.BoulderFallsThrough
	playsound SFX_STRENGTH
	earthquake 80
	end

Seafoam1FBoulder:
	jumpstd StrengthBoulderScript

Seafoam1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 15, ROUTE_20, 2
	warp_event 27, 15, ROUTE_20, 3
	warp_event 7, 5, SEAFOAM_2F, 2; Ladder 4
	warp_event 25, 3, SEAFOAM_2F, 4; Ladder 8
	warp_event 25, 15, SEAFOAM_2F, 7; Ladder 7
	warp_event 18, 7, SEAFOAM_2F, 10; Hole 1
	warp_event 24, 5, SEAFOAM_2F, 11; Hole 6


	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam1FBoulder, EVENT_BOULDER_SEAFOAM1F_BOULDER1
	object_event 26, 7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam1FBoulder, EVENT_BOULDER_SEAFOAM1F_BOULDER2
