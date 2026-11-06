	object_const_def
	const SEAFOAM4F_BOULDER1
	const SEAFOAM4F_BOULDER2
	const SEAFOAM4F_BOULDER3
	const SEAFOAM4F_BOULDER4

Seafoam4F_MapScripts:
	def_scene_scripts
	scene_script Seafoam4FNoop, SCENE_SEAFOAM4F
;	scene_script Seafoam4FNoop, SCENE_SEAFOAM4F

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Seafoam4FSetUpStoneTableCallBack

Seafoam4FSetUpStoneTableCallBack:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if stone on warp

.StoneTable:
	stonetable 13, SEAFOAM4F_BOULDER3, .Boulder3
	stonetable 12, SEAFOAM4F_BOULDER4, .Boulder4
	db -1

.Boulder3:
	disappear SEAFOAM4F_BOULDER3
	setevent EVENT_BOULDER_SEAFOAM4F_BOULDER3
	clearevent EVENT_BOULDER_SEAFOAM5F_BOULDER1
	sjump .FinishBoulder

.Boulder4:
	disappear SEAFOAM4F_BOULDER4
	setevent EVENT_BOULDER_SEAFOAM4F_BOULDER4
	clearevent EVENT_BOULDER_SEAFOAM5F_BOULDER2
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

Seafoam4FNoop:
	end

Seafoam4FSceneScripttopleft:
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER1
	iftrue .Current1
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER2
	iftrue .Current2

.Current1:
	opentext
	writetext CurrentText4F
	pause 20
	closetext
	applymovement PLAYER, CurrentMove3
	end

.Current2:
	opentext
	writetext CurrentText4F
	pause 20
	closetext
	applymovement PLAYER, CurrentMove4
	end

CurrentMove3:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

CurrentMove4:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

Seafoam4FSceneScripttopright:
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER1
	iftrue .Current1
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER2
	iftrue .Current2

.Current1:
	opentext
	writetext CurrentText4F
	pause 20
	closetext
	applymovement PLAYER, CurrentMove5
	end

.Current2:
	opentext
	writetext CurrentText4F
	pause 20
	closetext
	applymovement PLAYER, CurrentMove6
	end

CurrentMove5:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

CurrentMove6:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end				

Seafoam4FSceneScript:
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER2
	iftrue .Current1
	checkevent EVENT_BOULDER_SEAFOAM4F_BOULDER1
	iftrue .Current2
	end

.Current1:
	opentext
	writetext CurrentText4F
	pause 20
	closetext 
	applymovement PLAYER, CurrentMove1
	end

.Current2:
	opentext
	writetext CurrentText4F
	pause 20
	closetext
	applymovement PLAYER, CurrentMove2
	end

CurrentText4F:
	text "The current is"
	line "so strong..."
	done

CurrentMove1:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CurrentMove2:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end	

Seafoam4FBoulder:
	jumpstd StrengthBoulderScript

Seafoam4FStillBoulder:
	jumptext Seafoam4FStillBoulder

Seafoam4FStilBoulder:
	text "It's blocking"
	line "the waterfall!"
	done

Seafoam4FMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_SEAFOAM4F_MAXELIXER

Seafoam4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 9, 7, SEAFOAM_5F, 1 ; Ladder 1
	warp_event 25, 1, SEAFOAM_3F, 4	; Ladder 11
	warp_event 25, 3, SEAFOAM_5F, 2	; Ladder 12
	warp_event 25, 13, SEAFOAM_3F, 6	; Ladder 5
	warp_event 5, 11, SEAFOAM_3F, 2	; Ladder 2
	warp_event 21, 17, SEAFOAM_5F, 4	; Waterfall warp to 5F right
	warp_event 20, 17, SEAFOAM_5F, 3; Waterfall warp to 5F left
	warp_event 14, 0, SEAFOAM_5F, 5; Articuno dump LHS
	warp_event 15, 0, SEAFOAM_5F, 6; Articuno dump RHS
	warp_event 20, 15, SEAFOAM_3F, 10; Hole 3 fall
	warp_event 21, 15, SEAFOAM_3F, 11; Hole 8 fall
	warp_event 2, 17, SEAFOAM_5F, 7	; Hole 4
	warp_event 6, 17, SEAFOAM_5F, 8	; Hole 5





	def_coord_events
	coord_event 23, 10, SCENE_SEAFOAM4F, Seafoam4FSceneScript
	coord_event 14, 2, SCENE_SEAFOAM4F, Seafoam4FSceneScripttopleft
	coord_event 15, 2,  SCENE_SEAFOAM4F, Seafoam4FSceneScripttopright

	def_bg_events
	bg_event 9, 16, BGEVENT_ITEM, Seafoam4FMaxElixer

	def_object_events
	object_event 20, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam4FStillBoulder, EVENT_BOULDER_SEAFOAM4F_BOULDER1
	object_event 21, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam4FStillBoulder, EVENT_BOULDER_SEAFOAM4F_BOULDER2
	object_event 8, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam4FBoulder, EVENT_BOULDER_SEAFOAM4F_BOULDER3
	object_event 5, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam4FBoulder, EVENT_BOULDER_SEAFOAM4F_BOULDER4
