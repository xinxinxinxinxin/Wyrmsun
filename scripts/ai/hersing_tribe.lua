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
--      (c) Copyright 2016-2018 by Andrettin
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

local hersing_funcs = {
	function() return AiForce(1, {GetAiUnitType("infantry"), 1}, true) end,
	function() return AiWaitForce(1) end,
	function() return AiAttackWithForce(1) end,

	function() return (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) > 0) end, -- returns true (meaning it doesn't go forward in the loop) while the player still has an AI active infantry unit
	
	function()
		stratagus.gameData.AIState.index[AiPlayer() + 1] = 0; -- repeat loop
		return false;
	end,
}

local ai_call_counter = {}

function AiHersingTribe()
	if (ai_call_counter[AiPlayer()] == nil) then
		ai_call_counter[AiPlayer()] = 0
	end
	ai_call_counter[AiPlayer()] = ai_call_counter[AiPlayer()] + 1
	if (GameSettings.Difficulty == 1 and (ai_call_counter[AiPlayer()] % 50) ~= 0) then -- on easy difficulty, the AI is slower to do things
		return;
	end
	
	if (GetCurrentCampaign() == "heimdalls-progeny" and Players[AiPlayer()]:IsEnemy(Players[GetThisPlayer()]) == false) then
		return;
	end

	AiLoop(hersing_funcs, stratagus.gameData.AIState.index);
end

DefineAi("hersing-tribe", "*", "hersing-tribe", AiHersingTribe)
