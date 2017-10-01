--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2014-2017 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefinePredependency("unit-goblin-swordsman",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-spearman",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-archer",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-archer",
	{"unit-goblin-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-goblin-gunpowder-infantry",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-gunpowder-infantry",
	{"unit-goblin-smithy", "upgrade-gunpowder"}
)

DefineDependency("upgrade-goblin-long-sword",
	{"upgrade-goblin-broad-sword"}
)

DefineDependency("upgrade-goblin-embossed-shield",
	{"upgrade-goblin-rimmed-shield"}
)

DefineDependency("unit-goblin-guard-tower",
	{"unit-goblin-lumber-mill", "upgrade-goblin-masonry"}
)

DefineDependency("unit-goblin-wall",
	{"upgrade-goblin-masonry"}
)

DefinePredependency("unit-goblin-war-machine",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-war-machine",
	{"unit-goblin-smithy", "unit-goblin-lumber-mill", "upgrade-engineering"}, "or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefinePredependency("unit-goblin-thief",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-glider",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-glider",
	{"unit-goblin-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-goblin-pike",
	{"upgrade-goblin-long-spear"}
)

DefineDependency("unit-goblin-temple",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-market",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-academy",
	{"upgrade-goblin-writing"}
)

DefineDependency("unit-goblin-shaman",
	{"upgrade-deity-gathaarl"}
)

DefineDependency("unit-goblin-dock",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-stronghold",
	{"unit-goblin-mess-hall", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-goblin-bodkin-arrow",
	{"upgrade-goblin-barbed-arrow"}
)

DefineDependency("upgrade-goblin-catapult-projectile-1",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-catapult-projectile-2",
	{"upgrade-goblin-catapult-projectile-1", "unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-iron-tipped-wood-plow",
	{"upgrade-goblin-wood-plow"}
)

DefineDependency("upgrade-goblin-coinage",
	{"unit-goblin-smithy"}
)

DefineDependency("upgrade-goblin-alchemy",
	{"upgrade-goblin-writing", "upgrade-mathematics"}
)

DefineDependency("unit-goblin-transport-ship",
	{"unit-goblin-lumber-mill"}
)