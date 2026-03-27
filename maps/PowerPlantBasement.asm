	object_const_def
	const Zapdos
	const PPElectrode1
	const PPElectrode2
	const PPElectrode3
	const PPElectrode4
	const PPElectrode5
	const PPElectrode6
	const PPElectrode7

PowerPlantBasement_MapScripts:
	def_scene_scripts

	def_callbacks

PPElectrode1Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode1
	end

PPElectrode2Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode2
	end

PPElectrode3Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode3
	end

PPElectrode4Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode4
	end

PPElectrode5Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode5
	end

PPElectrode6Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode6
	end

PPElectrode7Script:
	cry ELECTRODE
	loadwildmon ELECTRODE, 70
	startbattle
	disappear PPElectrode7
	end

PPBasementLightBall:
	itemball LIGHT_BALL

PPBasementMagnet:
	itemball MAGNET

PPBasementMetalCoat:
	itemball METAL_COAT

PPBasementThunderstone:
	itemball THUNDERSTONE

PPBasementUpgrade:
	itemball UP_GRADE

ZapdosScript:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 70
	startbattle
	disappear Zapdos
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantBasement_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 32, POWER_PLANT, 3
	warp_event 3, 0, ROUTE_10_NORTH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 9, SPRITE_BIRD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZapdosScript, EVENT_FOUGHT_ZAPDOS
	object_event 7, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode1, -1
	object_event 9, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode2, -1
	object_event 28, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode3, -1
	object_event 16, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode4, -1
	object_event 16, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode5, -1
	object_event 38, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode6, -1
	object_event 9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PPElectrode7, -1
	object_event 33, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PPBasementLightBall, EVENT_PPBASEMENT_LIGHTBALL
	object_event 33, 6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PPBasementMagnet, EVENT_PPBASEMENT_MAGNET
	object_event 6, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PPBasementMetalCoat, EVENT_PPBASEMENT_METAL_COAT
	object_event 9, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PPBasementThunderstone, EVENT_PPBASEMENT_THUNDERSTONE
	object_event 15, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PPBasementUpgrade, EVENT_PPBASEMENT_UPGRADE
