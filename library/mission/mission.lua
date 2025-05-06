---@meta

-- Descriptions from https://wiki.hoggitworld.com/view/Miz_mission_structure

---@class Mission
---@field coalition Coalition # Contains all coalition specific data including bullseye, nav_points, and all units.
---@field coalitions Coalitions # Contains a list of country ids that belong to a given coalition.
---@field currentKey integer # Value used by the editor to know what index the dictkey and reskeys are on 
---@field date Date # The date the mission takes place
---@field descriptionBlueTask string # Blue coalition task defined on the briefing panel
---@field descriptionNeutralsTask string # Neutral coalition task defined on the briefing panel
---@field descriptionRedTask string # Red coalition task defined on the briefing panel
---@field descriptionText string # Mission briefing defined under the "Situation" page on the briefing panel
---@field drawings Drawings # Table containing information on any drawing placed in the editor.
---@field failures table<string, FailureSettings> # Only valid for single player missions. Lists failure parameters for whichever aircraft is set to player. If none are set to player it still populates. 
---@field forcedOptions table # Options that are forced by the mission and their corresponding settings. 
---@field goals table
---@field groundControl GroundControl # Data on the number of Combined Arms slots and their respective coalitions is found here.
---@field map MapPosition # Last position of the map view the user was looking at when the mission was saved. 
---@field maxDictId integer # Internal value used to keep track of what the next unit and group id to use is. 
---@field pictureFileNameB string[] # Blue coalition briefing images
---@field pictureFileNameN string[] # Neutral coalition briefing images
---@field pictureFileNameR string[] # Red coalition briefing images
---@field pictureFileNameServer table
---@field requiredModules table # Table of mod names whose units are present within the mission. 
---@field result MissionResult # Conditions and actions defined by mission goals in the editor to decide if a mission is "won"
---@field sortie string # Name of the mission as defined in the briefing panel.
---@field start_time number # Time in seconds since midnight for the date set when the mission starts
---@field theatre string # Name of the map the mission takes place on
---@field trig table
---@field triggers table
---@field trigrules table
---@field version integer # Value used by the mission editor to know roughly which iteration of the editor the mission was saved in. Used for compatibility warning messages if you open a newer mission in an older editor. 
---@field weather table

--- COALITION

---@class Coalition
---@field blue CoalitionDetails
---@field neutrals CoalitionDetails
---@field red CoalitionDetails

---@class CoalitionDetails
---@field name string
---@field bullseye vec2
---@field country Country[]
---@field nav_points table

---@class Country
---@field id integer
---@field name string
---@field helicopter? GroupType 
---@field plane? GroupType
---@field ship? GroupType
---@field vehicle? table
---@field static? table

---@class GroupType
---@field group Group[]

--- COALITIONS

---@class Coalitions
---@field blue integer[]
---@field neutrals integer[]
---@field red integer[]

--- DATE

---@class Date
---@field Day integer
---@field Month integer
---@field Year integer

--- DRAWINGS

---@class Drawings
---@field layers Layer[]
---@field options Options

---@class Layer
---@field name string
---@field visible boolean
---@field objects table

---@class Options
---@field hiddenOnF10Map HiddenOnF10Map

---@class HiddenOnF10Map
---@field ArtilleryCommander CoalitionBools
---@field ForwardObserver CoalitionBools
---@field Instructor CoalitionBools
---@field Observer CoalitionBools
---@field Pilot CoalitionBools
---@field Spectrator CoalitionBools

---@class CoalitionBools
---@field Blue boolean
---@field Neutral boolean
---@field Red boolean

--- FAILURES

---@class FailureSettings
---@field id string
---@field enable boolean
---@field prob number
---@field hh number
---@field mm number
---@field mmint integer

--- GROUNDCONTROL

---@class GroundControl
---@field isPilotControlVehicles boolean
---@field passwords GroundRolePasswords
---@field roles GroundRolecounts

---@class GroundRolePasswords
---@field artillery_commander unknown
---@field forward_observer unknown
---@field instructor unknown
---@field observer unknown

---@class GroundRolecounts
---@field artillery_commander integer
---@field forward_observer integer
---@field instructor integer
---@field observer integer

--- MAP

---@class MapPosition
---@field centerX number
---@field centerY number
---@field zoom number

--- RESULT

---@class MissionResult
---@field blue MissionResultCalculation
---@field offline MissionResultCalculation
---@field red MissionResultCalculation
---@field total number

---@class MissionResultCalculation
---@field actions table
---@field conditions table
---@field func table
