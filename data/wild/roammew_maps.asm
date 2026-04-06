; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

DEF __roam_maps_mew__ = 0

MACRO roam_map
	map_id \1
	db _NARG - 1
	rept _NARG - 1
		map_id \2
		shift
	endr
	db 0
	DEF __roam_maps_mew__ += 1
ENDM

RoamMaps:
	; start map, ...other maps
	roam_map ROUTE_1, ROUTE_2, ROUTE_22, ROUTE_21
	roam_map ROUTE_2, ROUTE_3, ROUTE_2
	roam_map ROUTE_3, ROUTE_2, ROUTE_4
	roam_map ROUTE_4, ROUTE_3, ROUTE_5, ROUTE_9, ROUTE_24
	roam_map ROUTE_5, ROUTE_4, ROUTE_6, ROUTE_7, ROUTE_8, ROUTE_9, ROUTE_24
	roam_map ROUTE_6, ROUTE_5, ROUTE_11
	roam_map ROUTE_7, ROUTE_10, ROUTE_12, ROUTE_10_SOUTH, ROUTE_5, ROUTE_6, ROUTE_8
	roam_map ROUTE_8, ROUTE_5, ROUTE_6, ROUTE_7, ROUTE_16
	roam_map ROUTE_9, ROUTE_10_NORTH, ROUTE_24, ROUTE_5, ROUTE_4
	roam_map ROUTE_10_SOUTH, ROUTE_10_NORTH, ROUTE_7, ROUTE_12
	roam_map ROUTE_10_NORTH, ROUTE_10_SOUTH, ROUTE_9
	roam_map ROUTE_11, ROUTE_6, ROUTE_12
	roam_map ROUTE_12, ROUTE_11, ROUTE_13, ROUTE_10_SOUTH, ROUTE_7
	roam_map ROUTE_13, ROUTE_12, ROUTE_14
	roam_map ROUTE_14, ROUTE_13, ROUTE_15
	roam_map ROUTE_15, ROUTE_18, ROUTE_19
	roam_map ROUTE_16, ROUTE_8, ROUTE_17
	roam_map ROUTE_17, ROUTE_18
	roam_map ROUTE_18, ROUTE_17, ROUTE_19, ROUTE_15
	roam_map ROUTE_19, ROUTE_18, ROUTE_15, ROUTE_20
	roam_map ROUTE_20, ROUTE_19, ROUTE_21
	roam_map ROUTE_21, ROUTE_20, ROUTE_1
	roam_map ROUTE_22, ROUTE_1, ROUTE_2
	roam_map ROUTE_24, ROUTE_25, ROUTE_4, ROUTE_5, ROUTE_9
	roam_map ROUTE_25, ROUTE_24
	db -1 ; end

	assert __roam_maps_mew__ == NUM_ROAMMEW_MAPS, \
		"RoamMaps: expected {d:NUM_ROAMMEW_MAPS} entries, got {d:__roam_maps_mew__}"
