	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M
	const CERULEANBULBASAUR

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	done

CeruleanBulbasaurScript:
	faceplayer
	checkevent EVENT_RECIEVED_BULBASAUR
	iftrue .AlreadyGotGiftPoke
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFullGift
	opentext
	writetext AskBulbasaurText
	yesorno;promptbutton
	iftrue .giftmon
	writetext BulbasaurRefusedText
	promptbutton
	closetext
	end

.giftmon
	writetext BulbasaurAcceptedText
	promptbutton
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext RecievedGiftText4
	promptbutton
	givepoke BULBASAUR, 10, BERRY
	setevent EVENT_RECIEVED_BULBASAUR
	closetext
	end

.AlreadyGotGiftPoke:
	opentext
	writetext AlreadyGotBulbasaurText
	waitbutton
	closetext
	end

.PartyFullGift:
	opentext
	writetext PartyFullGiftText
	waitbutton
	closetext
	end

AskBulbasaurText:
	text "I need a trainer"
	line "to raise this"
	
	para "#MON. Would"
	line "you take it?"
	done

BulbasaurRefusedText:
	text "Oh, okay. Maybe"
	line "Someone else can"

	para "take care of it."
	done

BulbasaurAcceptedText:
	text "That's great,"
	line "take good care of"
	
	para "it!"
	done

AlreadyGotBulbasaurText:
	text "Take good care of"
	line "that #MON!"
	done

RecievedGiftText4:
	text "<PLAYER> recieved"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
	object_event 5, 3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanBulbasaurScript, -1
