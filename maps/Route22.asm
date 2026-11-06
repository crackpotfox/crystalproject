	object_const_def
;	const ROUTE22_MOLTRES

Route22_MapScripts:
	def_scene_scripts

	def_callbacks

;Route22_Moltres_Script:
;	faceplayer
;	opentext
;	writetext ArticunoText
;	cry MOLTRES
;	pause 15
;	closetext
;	setevent EVENT_FOUGHT_MOLTRES
;	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
;	loadwildmon MOLTRES, 70
;	startbattle
;	disappear ROUTE22_MOLTRES
;	reloadmapafterbattle
;	end

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  5, VICTORY_ROAD_GATE, 1

	def_coord_events

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
;	object_event 30, 2, SPRITE_BIRD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route22_Moltres_Script, EVENT_FOUGHT_MOLTRES
