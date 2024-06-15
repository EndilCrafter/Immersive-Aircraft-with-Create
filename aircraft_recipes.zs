import mods.createtweaker.PressingRecipe;

//Aircraft
var air = <item:minecraft:air>;
var hull = <item:immersive_aircraft:hull>;
var engine = <item:immersive_aircraft:engine>;
var sail = <item:immersive_aircraft:sail>;
var propeller = <item:immersive_aircraft:propeller>;
var boiler = <item:immersive_aircraft:boiler>;
var airship = <item:immersive_aircraft:airship>;
var cargo_airship = <item:immersive_aircraft:cargo_airship>;
var warship = <item:immersive_aircraft:warship>;
var biplane = <item:immersive_aircraft:biplane>;
var gyrodyne = <item:immersive_aircraft:gyrodyne>;
var quadrocopter = <item:immersive_aircraft:quadrocopter>;
var rotary_cannon = <item:immersive_aircraft:rotary_cannon>;
var heavy_crossbow = <item:immersive_aircraft:heavy_crossbow>;
var telescope = <item:immersive_aircraft:telescope>;
var bomb_bay = <item:immersive_aircraft:bomb_bay>;
var enhanced_propeller = <item:immersive_aircraft:enhanced_propeller>;
var eco_engine = <item:immersive_aircraft:eco_engine>;
var nether_engine = <item:immersive_aircraft:nether_engine>;
var steel_boiler = <item:immersive_aircraft:steel_boiler>;
var industrial_gears = <item:immersive_aircraft:industrial_gears>;
var sturdy_pipes = <item:immersive_aircraft:sturdy_pipes>;
var gyroscope = <item:immersive_aircraft:gyroscope>;
var hull_reinforcement = <item:immersive_aircraft:hull_reinforcement>;
var improved_landing_gear = <item:immersive_aircraft:improved_landing_gear>;
var scarlet_biplane = <item:man_of_many_planes:scarlet_biplane>;
var economy_plane = <item:man_of_many_planes:economy_plane>;

//Hull
var andesite_casing = <item:create:andesite_casing>;

//Engine
var shaft = <item:create:shaft>;
var steam_engine = <item:create:steam_engine>;
var mechanical_piston = <item:create:mechanical_piston>;
var cogwheel = <item:create:cogwheel>;
var large_cogwheel = <item:create:large_cogwheel>;

//Sail
var stick = <item:minecraft:stick>;
var andesite_alloy = <item:create:andesite_alloy>;
var white_sail = <item:create:white_sail>;

//Propeller
var iron_sheet = <item:create:iron_sheet>;
var iron_ingot = <item:minecraft:iron_ingot>;

//Boiler
var fluid_pipe = <item:create:fluid_pipe>;
var copper_sheet = <item:create:copper_sheet>;
var fluid_tank = <item:create:fluid_tank>;
var blaze_burner = <item:create:blaze_burner>;

//Airship
var rope = <tag:items:forge:rope>;
var black_seat = <item:create:black_seat>;

//Cargo Airship
var mini_propeller = <item:create:propeller>;
var chest = <tag:items:forge:chests/wooden>;

//Warship
var safety_net = <item:farmersdelight:safety_net>;
var sturdy_sheet = <item:create:sturdy_sheet>;

//Rotary Cannon
var dispenser = <item:minecraft:dispenser>;
var precision_mechanism = <item:create:precision_mechanism>;

//Heavy Crossbow
var log = <tag:items:minecraft:logs>;
var tripwire_hook = <item:minecraft:tripwire_hook>;

//Telescope
var spyglass = <item:minecraft:spyglass>;

//Bomb Bay
var industrial_iron_block = <item:create:industrial_iron_block>;
var tnt = <item:minecraft:tnt>;
var chute = <item:create:chute>;

//Enhanced Propeller
var brass_sheet = <item:create:brass_sheet>;

//Eco Engine
var fan_splashing_catalyst = <item:create_connected:fan_splashing_catalyst>;

//Nether Engine
var blaze_powder = <item:minecraft:blaze_powder>;
var fan_blasting_catalyst = <item:create_connected:fan_blasting_catalyst>;

//Gyroscope
var compass = <item:minecraft:compass>;
var electron_tube = <item:create:electron_tube>;

//Improved Landing Gear
var belt_connector = <item:create:belt_connector>;

//Scarlet Biplane
var polished_cut_crimsite = <item:create:polished_cut_crimsite>;

craftingTable.remove(hull);
<recipetype:create:pressing>.addRecipe("hull_with_create", [hull], andesite_casing, 100);

craftingTable.remove(engine);
<recipetype:create:mechanical_crafting>.addRecipe("engine_with_create", engine, [[shaft, steam_engine, shaft], [mechanical_piston, boiler, mechanical_piston], [cogwheel, large_cogwheel, cogwheel]]);

craftingTable.remove(sail);
<recipetype:create:mechanical_crafting>.addRecipe("sail_with_create", sail, [[stick, andesite_alloy, stick, andesite_alloy], [andesite_alloy, white_sail, white_sail, white_sail], [stick, white_sail, white_sail, white_sail], [andesite_alloy, white_sail, white_sail, air]]);

craftingTable.remove(propeller);
<recipetype:create:mechanical_crafting>.addRecipe("propeller_with_create", propeller, [[air, iron_sheet, air, air, air], [air, air, iron_sheet, air, iron_sheet], [air, iron_sheet, iron_ingot, iron_sheet, air], [iron_sheet, air, iron_sheet, air, air], [air, air, air, iron_sheet, air]]);

craftingTable.remove(boiler);
<recipetype:create:mechanical_crafting>.addRecipe("boiler_with_create", boiler, [[fluid_pipe, copper_sheet, fluid_pipe], [copper_sheet, fluid_tank, copper_sheet], [copper_sheet, blaze_burner, copper_sheet]]);

craftingTable.remove(airship);
<recipetype:create:mechanical_crafting>.addRecipe("airship_with_create", airship, [[sail, sail, sail, sail, sail], [air, rope, air, rope, air], [air, hull, black_seat, engine, propeller], [air, hull, hull, hull, air]]);

craftingTable.remove(cargo_airship);
<recipetype:create:mechanical_crafting>.addRecipe("cargo_airship_with_create", cargo_airship, [[sail, sail, sail, sail, sail], [air, rope, air, rope, mini_propeller], [air, hull, black_seat, engine, propeller], [air, hull, hull, hull, air], [chest, chest, hull, chest, chest]]);

craftingTable.remove(warship);
<recipetype:create:mechanical_crafting>.addRecipe("warship_with_create", warship, [[safety_net, safety_net, safety_net, safety_net, safety_net], [sturdy_sheet, sail, sail, sail, sturdy_sheet], [sturdy_sheet, sail, sail, sail, sturdy_sheet], [air, rope, air, rope, propeller], [heavy_crossbow, sturdy_sheet, cargo_airship, engine, propeller], [air, sturdy_sheet, sturdy_sheet, sturdy_sheet, propeller]]);

craftingTable.remove(biplane);
<recipetype:create:mechanical_crafting>.addRecipe("biplane_with_create", biplane, [[air, sail, air, air, air], [air, sail, air, air, sail], [propeller, engine, black_seat, hull, hull], [air, sail, air, air, sail], [air, sail, air, air, air]]);

craftingTable.remove(gyrodyne);
<recipetype:create:mechanical_crafting>.addRecipe("gyrodyne_with_create", gyrodyne, [[air, air, propeller, air, air], [sail, hull, black_seat, hull, sail]]);

craftingTable.remove(quadrocopter);
<recipetype:create:mechanical_crafting>.addRecipe("quadrocopter_with_create", quadrocopter, [[mini_propeller, hull, mini_propeller], [hull, safety_net, hull], [mini_propeller, engine, mini_propeller]]);

craftingTable.remove(rotary_cannon);
<recipetype:create:mechanical_crafting>.addRecipe("rotary_cannon_with_create", rotary_cannon, [[andesite_alloy, dispenser, precision_mechanism], [air, air, copper_sheet]]);

craftingTable.remove(heavy_crossbow);
<recipetype:create:mechanical_crafting>.addRecipe("heavy_crossbow_with_create", heavy_crossbow, [[air, air, iron_ingot, air, air], [air, log, tripwire_hook, log, air], [log, <item:minecraft:string>, tripwire_hook, <item:minecraft:string>, log], [air, air, log, air, air], [air, air, log, air, air]]);

craftingTable.remove(telescope);
<recipetype:create:deploying>.addRecipe("telescope_with_create", copper_sheet, spyglass, [telescope], false);

craftingTable.remove(bomb_bay);
<recipetype:create:mechanical_crafting>.addRecipe("bomb_bay_with_create", bomb_bay, [[industrial_iron_block, tnt, industrial_iron_block], [industrial_iron_block, chute, industrial_iron_block]]);

craftingTable.remove(enhanced_propeller);
<recipetype:create:mechanical_crafting>.addRecipe("enhanced_propeller_with_create", enhanced_propeller, [[air, brass_sheet, air], [brass_sheet, mini_propeller, brass_sheet], [air, brass_sheet, air]]);

craftingTable.remove(eco_engine);
<recipetype:create:mechanical_crafting>.addRecipe("eco_engine_with_create", eco_engine, [[air, fan_splashing_catalyst, air], [iron_sheet, boiler, iron_sheet], [copper_sheet, large_cogwheel, copper_sheet]]);

craftingTable.remove(nether_engine);
<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_with_create", nether_engine, [[air, fan_blasting_catalyst, air], [iron_sheet, boiler, iron_sheet], [sturdy_sheet, cogwheel, sturdy_sheet]]);

craftingTable.remove(steel_boiler);
<recipetype:create:mechanical_crafting>.addRecipe("steel_boiler_with_create", steel_boiler, [[industrial_iron_block, industrial_iron_block, industrial_iron_block], [industrial_iron_block, air, industrial_iron_block], [industrial_iron_block, boiler, industrial_iron_block],[industrial_iron_block, air, industrial_iron_block], [industrial_iron_block, industrial_iron_block, industrial_iron_block]]);

craftingTable.remove(industrial_gears);
<recipetype:create:mechanical_crafting>.addRecipe("industrial_gears_with_create", industrial_gears, [[copper_sheet, cogwheel], [cogwheel, iron_sheet]]);

craftingTable.remove(sturdy_pipes);
<recipetype:create:deploying>.addRecipe("sturdy_pipes_with_create", fluid_pipe, iron_sheet, [sturdy_pipes], false);

craftingTable.remove(gyroscope);
<recipetype:create:deploying>.addRecipe("gyroscope_with_create", compass, electron_tube, [gyroscope], false);

craftingTable.remove(hull_reinforcement);
<recipetype:create:deploying>.addRecipe("hull_reinforcement_with_create", hull, iron_sheet, [hull_reinforcement], false);

craftingTable.remove(improved_landing_gear);
<recipetype:create:mechanical_crafting>.addRecipe("improved_landing_gear_with_create", improved_landing_gear, [[shaft, iron_sheet], [belt_connector, air]]);

craftingTable.remove(scarlet_biplane);
<recipetype:create:mechanical_crafting>.addRecipe("scarlet_biplane_with_create", scarlet_biplane, [[air, hull_reinforcement, air, air, air], [air, hull_reinforcement, air, air, hull_reinforcement], [enhanced_propeller, nether_engine, biplane, polished_cut_crimsite, polished_cut_crimsite], [air, hull_reinforcement, air, air, hull_reinforcement], [air, hull_reinforcement, air, air, air]]);

craftingTable.remove(economy_plane);
<recipetype:create:mechanical_crafting>.addRecipe("economy_plane_with_create", economy_plane, [[air, propeller, air, air, air], [air, sail, air, air, sail], [industrial_gears, eco_engine, black_seat, hull, hull], [air, sail, air, air, sail], [air, propeller, air, air, air]]);
