---@meta

---@class Airbase: CoalitionObject
---@field id_ integer
Airbase = {}
---@enum Airbase.Category
Airbase.Category = {
    AIRDROME = 0,
    HELIPAD = 1,
    SHIP = 2,
}

---Returns a localized string of the airbases's callsign.<br>
---In the case of airbases, the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
---@return string
function Airbase:getCallsign() end

---Returns the instance of Airbase with the specified name.
---@param name string
---@return Airbase
function Airbase.getByName(name) end

---Returns the current autoCapture setting for the base.
---@return boolean
function Airbase:autoCaptureIsOn() end

---Set the auto capture behavior.<br>
---Enables or disables the airbase and FARP auto capture game mechanic where ownership of a base can change based on the presence of ground forces or the default setting assigned in the editor.
---@param setting boolean
function Airbase:autoCapture(setting) end

---Changes the passed airbase object's coalition to the set value.
---Must be used with Airbase.autoCapture to disable auto capturing of the base, otherwise the base can revert back to a different coalition depending on the situation and built in game capture rules. 
---@param coalition coalition.side
function Airbase:setCoalition(coalition) end
