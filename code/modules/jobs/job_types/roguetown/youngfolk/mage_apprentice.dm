/datum/job/roguetown/wapprentice
	title = "Magician's Apprentice"
	flag = MAGEAPPRENTICE
	department_flag = YOUNGFOLK
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_races = RACES_TOLERATED_UP
	allowed_ages = list(AGE_ADULT)

	tutorial = "Your master once saw potential in you, something you are uncertain if they still do with your recent studies. The path to using magic is something treacherous and untamed, and you are still decades away from calling yourself even a journeyman in the field. Listen and serve, and someday you will earn your hat."

	spells = list(/obj/effect/proc_holder/spell/invoked/projectile/fetch)
	outfit = /datum/outfit/job/roguetown/wapprentice
	
	display_order = JDO_MAGEAPPRENTICE
	give_bank_account = TRUE

/datum/outfit/job/roguetown/wapprentice/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights/random
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
		belt = /obj/item/storage/belt/rogue/leather/rope
		beltr = /obj/item/roguekey/tower
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		backr = /obj/item/storage/backpack/rogue/satchel
	else
		shoes = /obj/item/clothing/shoes/roguetown/sandals
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
		belt = /obj/item/storage/belt/rogue/leather/rope
		beltr = /obj/item/roguekey/tower
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		backr = /obj/item/storage/backpack/rogue/satchel

	H.change_stat("intelligence", 2)
	H.change_stat("speed", -1)
*/
