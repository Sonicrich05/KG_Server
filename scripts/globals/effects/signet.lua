-----------------------------------
--
--     EFFECT_SIGNET
--
--   Signet is a a beneficial Status Effect that allows the acquisition of Conquest Points and Crystals 
--   from defeated enemies that grant Experience Points.

--   Increased Healing HP
--   No TP loss while resting
--   Bonus experience earned in smaller parties
-- X Increased defense and evasion against attacks from your auto-attack target 
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/settings");

-----------------------------------
-- onEffectGain Action
-----------------------------------



function onEffectGain(target,effect)
	
    target:addMod(MOD_DEF,15);
    target:addMod(MOD_EVA,15);
	target:addMod(MOD_REGAIN,10);
	target:addMod(MOD_REFRESH, ((target:getMainLvl() / 4) + 1));
	target:addMod(MOD_REGEN, ((target:getMainLvl() / 4) + 1));
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_DEF,15);
    target:delMod(MOD_EVA,15);
	target:delMod(MOD_REGAIN,1);
	target:delMod(MOD_REFRESH,((target:getMainLvl() / 4) + 1));
	target:delMod(MOD_REGEN, ((target:getMainLvl() / 4) + 1));
end;