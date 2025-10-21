using { /Fortnite.com/Devices }
using { /Fortnite.com/Devices/Patchwork }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }

Devicelist := class<concrete>:
    @editable accoladesdevice : accolades_device = accolades_device{}
    @editable advancedstorm_beacon_device : advanced_storm_beacon_device = advanced_storm_beacon_device{}
    @editable advancedstormcontroller_device : advanced_storm_controller_device = advanced_storm_controller_device{}
    @editable aipatrolpath_device : ai_patrol_path_device = ai_patrol_path_device{}
    @editable airvent_device : air_vent_device = air_vent_device{}
    @editable analyticsdevice : analytics_device = analytics_device{}
    @editable animatedmesh_device : animated_mesh_device = animated_mesh_device{}
    @editable attributeevaluator_device : attribute_evaluator_device = attribute_evaluator_device{}
    @editable audiomixer_device : audio_mixer_device = audio_mixer_device{}
    @editable audioplayer_device : audio_player_device = audio_player_device{}
    @editable automatedturret_device : automated_turret_device = automated_turret_device{}
    @editable ballspawner_device : ball_spawner_device = ball_spawner_device{}
    @editable barrierdevice : barrier_device = barrier_device{}
    @editable basicstorm_controller_device : basic_storm_controller_device = basic_storm_controller_device{}
    @editable beacondevice : beacon_device = beacon_device{}
    @editable billboarddevice : billboard_device = billboard_device{}
    @editable bouncerdevice : bouncer_device = bouncer_device{}
    @editable buttondevice : button_device = button_device{}
    @editable cablesplitter_device : cable_splitter_device = cable_splitter_device{}
    @editable campfiredevice : campfire_device = campfire_device{}
    @editable capturearea_device : capture_area_device = capture_area_device{}
    @editable captureitem_spawner_device : capture_item_spawner_device = capture_item_spawner_device{}
    @editable chairdevice : chair_device = chair_device{}
    @editable changingbooth_device : changing_booth_device = changing_booth_device{}
    @editable characterdevice : character_device = character_device{}
    @editable cinematicsequence_device : cinematic_sequence_device = cinematic_sequence_device{}
    @editable classand_team_selector_device : class_and_team_selector_device = class_and_team_selector_device{}
    @editable classdesigner_device : class_designer_device = class_designer_device{}
    @editable classselector_ui_device : class_selector_ui_device = class_selector_ui_device{}
    @editable collectibleobject_device : collectible_object_device = collectible_object_device{}
    @editable colorchanging_tiles_device : color_changing_tiles_device = color_changing_tiles_device{}
    @editable conditionalbutton_device : conditional_button_device = conditional_button_device{}
    @editable crashpad_device : crash_pad_device = crash_pad_device{}
    @editable creaturemanager_device : creature_manager_device = creature_manager_device{}
    @editable creatureplacer_device : creature_placer_device = creature_placer_device{}
    @editable creaturespawner_device : creature_spawner_device = creature_spawner_device{}
    @editable crowdvolume_device : crowd_volume_device = crowd_volume_device{}
    @editable customizablelight_device : customizable_light_device = customizable_light_device{}
    @editable damageamplifier_powerup_device : damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable damagevolume_device : damage_volume_device = damage_volume_device{}
    @editable dancemannequin_device : dance_mannequin_device = dance_mannequin_device{}
    @editable distortioneffect_device : distortion_effect_device = distortion_effect_device{}
    @editable downbut_not_out_device : down_but_not_out_device = down_but_not_out_device{}
    @editable drumplayer_device : drum_player_device = drum_player_device{}
    @editable drumsequencer_device : drum_sequencer_device = drum_sequencer_device{}
    @editable echoeffect_device : echo_effect_device = echo_effect_device{}
    @editable eliminationfeed_device : elimination_feed_device = elimination_feed_device{}
    @editable eliminationmanager_device : elimination_manager_device = elimination_manager_device{}
    @editable endgame_device : end_game_device = end_game_device{}
    @editable experiencesettings_device : experience_settings_device = experience_settings_device{}
    @editable explosivedevice : explosive_device = explosive_device{}
    @editable firevolume_device : fire_volume_device = fire_volume_device{}
    @editable fireflyspawner_device : firefly_spawner_device = firefly_spawner_device{}
    @editable fishingzone_device : fishing_zone_device = fishing_zone_device{}
    @editable fuelpump_device : fuel_pump_device = fuel_pump_device{}
    @editable gameplaycamera_fixed_angle_device : gameplay_camera_fixed_angle_device = gameplay_camera_fixed_angle_device{}
    @editable gameplaycamera_fixed_point_device : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable gameplaycamera_orbit_device : gameplay_camera_orbit_device = gameplay_camera_orbit_device{}
    @editable gameplaycontrols_third_person_device : gameplay_controls_third_person_device = gameplay_controls_third_person_device{}
    @editable grindpowerup_device : grind_powerup_device = grind_powerup_device{}
    @editable grindrail_device : grind_rail_device = grind_rail_device{}
    @editable guardspawner_device : guard_spawner_device = guard_spawner_device{}
    @editable healthpowerup_device : health_powerup_device = health_powerup_device{}
    @editable holoscreendevice : holoscreen_device = holoscreen_device{}
    @editable hudcontroller_device : hud_controller_device = hud_controller_device{}
    @editable hudmessage_device : hud_message_device = hud_message_device{}
    @editable inputtrigger_device : input_trigger_device = input_trigger_device{}
    @editable instrumentplayer_device : instrument_player_device = instrument_player_device{}
    @editable itemgranter_device : item_granter_device = item_granter_device{}
    @editable itemplacer_device : item_placer_device = item_placer_device{}
    @editable itemremover_device : item_remover_device = item_remover_device{}
    @editable itemshop_device : item_shop_device = item_shop_device{}
    @editable itemspawner_device : item_spawner_device = item_spawner_device{}
    @editable lfomodulator_device : lfo_modulator_device = lfo_modulator_device{}
    @editable lockdevice : lock_device = lock_device{}
    @editable mapcontroller_device : map_controller_device = map_controller_device{}
    @editable mapindicator_device : map_indicator_device = map_indicator_device{}
    @editable matchmakingportal_device : matchmaking_portal_device = matchmaking_portal_device{}
    @editable movementmodulator_device : movement_modulator_device = movement_modulator_device{}
    @editable musicmanager_device : music_manager_device = music_manager_device{}
    @editable mutatorzone_device : mutator_zone_device = mutator_zone_device{}
    @editable nitrobarrel_spawner_device : nitro_barrel_spawner_device = nitro_barrel_spawner_device{}
    @editable nitrohoop_device : nitro_hoop_device = nitro_hoop_device{}
    @editable noteprogressor_device : note_progressor_device = note_progressor_device{}
    @editable notesequencer_device : note_sequencer_device = note_sequencer_device{}
    @editable notetrigger_device : note_trigger_device = note_trigger_device{}
    @editable npcspawner_device : npc_spawner_device = npc_spawner_device{}
    @editable objectivedevice : objective_device = objective_device{}
    @editable omegasynthesizer_device : omega_synthesizer_device = omega_synthesizer_device{}
    @editable patchworkdevice : patchwork_device = patchwork_device{}
    @editable perceptiontrigger_device : perception_trigger_device = perception_trigger_device{}
    @editable physicsboulder_device : physics_boulder_device = physics_boulder_device{}
    @editable physicstree_device : physics_tree_device = physics_tree_device{}
    @editable pinballbumper_device : pinball_bumper_device = pinball_bumper_device{}
    @editable pinballflipper_device : pinball_flipper_device = pinball_flipper_device{}
    @editable playercheckpoint_device : player_checkpoint_device = player_checkpoint_device{}
    @editable playercounter_device : player_counter_device = player_counter_device{}
    @editable playermarker_device : player_marker_device = player_marker_device{}
    @editable playerreference_device : player_reference_device = player_reference_device{}
    @editable playerspawner_device : player_spawner_device = player_spawner_device{}
    @editable popupdialog_device : popup_dialog_device = popup_dialog_device{}
    @editable postprocess_device : post_process_device = post_process_device{}
    @editable propmanipulator_device : prop_manipulator_device = prop_manipulator_device{}
    @editable propmover_device : prop_mover_device = prop_mover_device{}
    @editable propo_matic_manager_device : prop_o_matic_manager_device = prop_o_matic_manager_device{}
    @editable pulsetrigger_device : pulse_trigger_device = pulse_trigger_device{}
    @editable racecheckpoint_device : race_checkpoint_device = race_checkpoint_device{}
    @editable racemanager_device : race_manager_device = race_manager_device{}
    @editable radiodevice : radio_device = radio_device{}
    @editable realtime_clock_device : real_time_clock_device = real_time_clock_device{}
    @editable rngdevice : rng_device = rng_device{}
    @editable roundsettings_device : round_settings_device = round_settings_device{}
    @editable scoremanager_device : score_manager_device = score_manager_device{}
    @editable sentrydevice : sentry_device = sentry_device{}
    @editable shootingrange_target_device : shooting_range_target_device = shooting_range_target_device{}
    @editable shootingrange_target_track_device : shooting_range_target_track_device = shooting_range_target_track_device{}
    @editable signalremote_manager_device : signal_remote_manager_device = signal_remote_manager_device{}
    @editable skydivevolume_device : skydive_volume_device = skydive_volume_device{}
    @editable skydomedevice : skydome_device = skydome_device{}
    @editable speakerdevice : speaker_device = speaker_device{}
    @editable stepmodulator_device : step_modulator_device = step_modulator_device{}
    @editable supplydrop_spawner_device : supply_drop_spawner_device = supply_drop_spawner_device{}
    @editable supporta_creator_device : support_a_creator_device = support_a_creator_device{}
    @editable switchdevice : switch_device = switch_device{}
    @editable swordin_the_stone_device : sword_in_the_stone_device = sword_in_the_stone_device{}
    @editable teamsettings_and_inventory_device : team_settings_and_inventory_device = team_settings_and_inventory_device{}
    @editable teleporterdevice : teleporter_device = teleporter_device{}
    @editable timedobjective_device : timed_objective_device = timed_objective_device{}
    @editable timerdevice : timer_device = timer_device{}
    @editable trackerdevice : tracker_device = tracker_device{}
    @editable tricktile_device : trick_tile_device = trick_tile_device{}
    @editable triggerdevice : trigger_device = trigger_device{}
    @editable valuesetter_device : value_setter_device = value_setter_device{}
    @editable vehiclespawner_armored_battle_bus_device : vehicle_spawner_armored_battle_bus_device = vehicle_spawner_armored_battle_bus_device{}
    @editable vehiclespawner_atk_device : vehicle_spawner_atk_device = vehicle_spawner_atk_device{}
    @editable vehiclespawner_baller_device : vehicle_spawner_baller_device = vehicle_spawner_baller_device{}
    @editable vehiclespawner_big_rig_device : vehicle_spawner_big_rig_device = vehicle_spawner_big_rig_device{}
    @editable vehiclespawner_biplane_device : vehicle_spawner_biplane_device = vehicle_spawner_biplane_device{}
    @editable vehiclespawner_boat_device : vehicle_spawner_boat_device = vehicle_spawner_boat_device{}
    @editable vehiclespawner_cannon_device : vehicle_spawner_cannon_device = vehicle_spawner_cannon_device{}
    @editable vehiclespawner_dirtbike_device : vehicle_spawner_dirtbike_device = vehicle_spawner_dirtbike_device{}
    @editable vehiclespawner_driftboard_device : vehicle_spawner_driftboard_device = vehicle_spawner_driftboard_device{}
    @editable vehiclespawner_getaway_device : vehicle_spawner_getaway_device = vehicle_spawner_getaway_device{}
    @editable vehiclespawner_heavy_turret_device : vehicle_spawner_heavy_turret_device = vehicle_spawner_heavy_turret_device{}
    @editable vehiclespawner_helicopter_device : vehicle_spawner_helicopter_device = vehicle_spawner_helicopter_device{}
    @editable vehiclespawner_nitro_drifter_sedan_device : vehicle_spawner_nitro_drifter_sedan_device = vehicle_spawner_nitro_drifter_sedan_device{}
    @editable vehiclespawner_octane_device : vehicle_spawner_octane_device = vehicle_spawner_octane_device{}
    @editable vehiclespawner_pickup_truck_device : vehicle_spawner_pickup_truck_device = vehicle_spawner_pickup_truck_device{}
    @editable vehiclespawner_quadcrasher_device : vehicle_spawner_quadcrasher_device = vehicle_spawner_quadcrasher_device{}
    @editable vehiclespawner_rocketracing_device : vehicle_spawner_rocketracing_device = vehicle_spawner_rocketracing_device{}
    @editable vehiclespawner_sedan_device : vehicle_spawner_sedan_device = vehicle_spawner_sedan_device{}
    @editable vehiclespawner_shopping_cart_device : vehicle_spawner_shopping_cart_device = vehicle_spawner_shopping_cart_device{}
    @editable vehiclespawner_siege_cannon_device : vehicle_spawner_siege_cannon_device = vehicle_spawner_siege_cannon_device{}
    @editable vehiclespawner_sportbike_device : vehicle_spawner_sportbike_device = vehicle_spawner_sportbike_device{}
    @editable vehiclespawner_sports_car_device : vehicle_spawner_sports_car_device = vehicle_spawner_sports_car_device{}
    @editable vehiclespawner_surfboard_device : vehicle_spawner_surfboard_device = vehicle_spawner_surfboard_device{}
    @editable vehiclespawner_tank_device : vehicle_spawner_tank_device = vehicle_spawner_tank_device{}
    @editable vehiclespawner_taxi_device : vehicle_spawner_taxi_device = vehicle_spawner_taxi_device{}
    @editable vehiclespawner_ufo_device : vehicle_spawner_ufo_device = vehicle_spawner_ufo_device{}
    @editable vehiclespawner_war_bus_device : vehicle_spawner_war_bus_device = vehicle_spawner_war_bus_device{}
    @editable vendingmachine_device : vending_machine_device = vending_machine_device{}
    @editable vfxcreator_device : vfx_creator_device = vfx_creator_device{}
    @editable vfxspawner_device : vfx_spawner_device = vfx_spawner_device{}
    @editable videoplayer_device : video_player_device = video_player_device{}
    @editable vinerail_device : vine_rail_device = vine_rail_device{}
    @editable visualeffect_powerup_device : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable volumedevice : volume_device = volume_device{}
    @editable waterdevice : water_device = water_device{}
    @editable wildlifespawner_device : wildlife_spawner_device = wildlife_spawner_device{}
    @editable wildsplant_device : wilds_plant_device = wilds_plant_device{}

    MakeAllDevicesHidden(PropGroup: PropsAndTrigger)<transacts>:void=
        if(PropGroup.Devices.accoladesdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.advancedstorm_beacon_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.advancedstormcontroller_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.aipatrolpath_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.airvent_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.analyticsdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.animatedmesh_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.attributeevaluator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.audiomixer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.audioplayer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.automatedturret_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.ballspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.barrierdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.basicstorm_controller_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.beacondevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.billboarddevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.bouncerdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.buttondevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.cablesplitter_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.campfiredevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.capturearea_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.captureitem_spawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.chairdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.changingbooth_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.characterdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.cinematicsequence_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.classand_team_selector_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.classdesigner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.classselector_ui_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.collectibleobject_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.colorchanging_tiles_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.conditionalbutton_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.crashpad_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.creaturemanager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.creatureplacer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.creaturespawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.crowdvolume_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.customizablelight_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.damageamplifier_powerup_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.damagevolume_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.dancemannequin_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.distortioneffect_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.downbut_not_out_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.drumplayer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.drumsequencer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.echoeffect_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.eliminationfeed_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.eliminationmanager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.endgame_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.experiencesettings_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.explosivedevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.firevolume_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.fireflyspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.fishingzone_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.fuelpump_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.gameplaycamera_fixed_angle_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.gameplaycamera_fixed_point_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.gameplaycamera_orbit_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.gameplaycontrols_third_person_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.grindpowerup_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.grindrail_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.guardspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.healthpowerup_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.holoscreendevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.hudcontroller_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.hudmessage_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.inputtrigger_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.instrumentplayer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.itemgranter_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.itemplacer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.itemremover_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.itemshop_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.itemspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.lfomodulator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.lockdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.mapcontroller_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.mapindicator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.matchmakingportal_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.movementmodulator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.musicmanager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.mutatorzone_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.nitrobarrel_spawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.nitrohoop_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.noteprogressor_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.notesequencer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.notetrigger_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.npcspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.objectivedevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.omegasynthesizer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.patchworkdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.perceptiontrigger_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.physicsboulder_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.physicstree_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.pinballbumper_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.pinballflipper_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.playercheckpoint_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.playercounter_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.playermarker_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.playerreference_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.playerspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.popupdialog_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.postprocess_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.propmanipulator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.propmover_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.propo_matic_manager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.pulsetrigger_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.racecheckpoint_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.racemanager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.radiodevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.realtime_clock_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.rngdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.roundsettings_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.scoremanager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.sentrydevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.shootingrange_target_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.shootingrange_target_track_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.signalremote_manager_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.skydivevolume_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.skydomedevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.speakerdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.stepmodulator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.supplydrop_spawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.supporta_creator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.switchdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.swordin_the_stone_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.teamsettings_and_inventory_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.teleporterdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.timedobjective_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.timerdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.trackerdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.tricktile_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.triggerdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.valuesetter_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_armored_battle_bus_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_atk_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_baller_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_big_rig_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_biplane_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_boat_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_cannon_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_dirtbike_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_driftboard_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_getaway_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_heavy_turret_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_helicopter_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_nitro_drifter_sedan_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_octane_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_pickup_truck_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_quadcrasher_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_rocketracing_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_sedan_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_shopping_cart_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_siege_cannon_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_sportbike_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_sports_car_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_surfboard_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_tank_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_taxi_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_ufo_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vehiclespawner_war_bus_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vendingmachine_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vfxcreator_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vfxspawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.videoplayer_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.vinerail_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.visualeffect_powerup_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.volumedevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.waterdevice.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.wildlifespawner_device.TeleportTo[TransformZero]){}
        if(PropGroup.Devices.wildsplant_device.TeleportTo[TransformZero]){}

    var accoladesdeviceOriginalTransform : transform = TransformZero
    var advancedstorm_beacon_deviceOriginalTransform : transform = TransformZero
    var advancedstormcontroller_deviceOriginalTransform : transform = TransformZero
    var aipatrolpath_deviceOriginalTransform : transform = TransformZero
    var airvent_deviceOriginalTransform : transform = TransformZero
    var analyticsdeviceOriginalTransform : transform = TransformZero
    var animatedmesh_deviceOriginalTransform : transform = TransformZero
    var attributeevaluator_deviceOriginalTransform : transform = TransformZero
    var audiomixer_deviceOriginalTransform : transform = TransformZero
    var audioplayer_deviceOriginalTransform : transform = TransformZero
    var automatedturret_deviceOriginalTransform : transform = TransformZero
    var ballspawner_deviceOriginalTransform : transform = TransformZero
    var barrierdeviceOriginalTransform : transform = TransformZero
    var basicstorm_controller_deviceOriginalTransform : transform = TransformZero
    var beacondeviceOriginalTransform : transform = TransformZero
    var billboarddeviceOriginalTransform : transform = TransformZero
    var bouncerdeviceOriginalTransform : transform = TransformZero
    var buttondeviceOriginalTransform : transform = TransformZero
    var cablesplitter_deviceOriginalTransform : transform = TransformZero
    var campfiredeviceOriginalTransform : transform = TransformZero
    var capturearea_deviceOriginalTransform : transform = TransformZero
    var captureitem_spawner_deviceOriginalTransform : transform = TransformZero
    var chairdeviceOriginalTransform : transform = TransformZero
    var changingbooth_deviceOriginalTransform : transform = TransformZero
    var characterdeviceOriginalTransform : transform = TransformZero
    var cinematicsequence_deviceOriginalTransform : transform = TransformZero
    var classand_team_selector_deviceOriginalTransform : transform = TransformZero
    var classdesigner_deviceOriginalTransform : transform = TransformZero
    var classselector_ui_deviceOriginalTransform : transform = TransformZero
    var collectibleobject_deviceOriginalTransform : transform = TransformZero
    var colorchanging_tiles_deviceOriginalTransform : transform = TransformZero
    var conditionalbutton_deviceOriginalTransform : transform = TransformZero
    var crashpad_deviceOriginalTransform : transform = TransformZero
    var creaturemanager_deviceOriginalTransform : transform = TransformZero
    var creatureplacer_deviceOriginalTransform : transform = TransformZero
    var creaturespawner_deviceOriginalTransform : transform = TransformZero
    var crowdvolume_deviceOriginalTransform : transform = TransformZero
    var customizablelight_deviceOriginalTransform : transform = TransformZero
    var damageamplifier_powerup_deviceOriginalTransform : transform = TransformZero
    var damagevolume_deviceOriginalTransform : transform = TransformZero
    var dancemannequin_deviceOriginalTransform : transform = TransformZero
    var distortioneffect_deviceOriginalTransform : transform = TransformZero
    var downbut_not_out_deviceOriginalTransform : transform = TransformZero
    var drumplayer_deviceOriginalTransform : transform = TransformZero
    var drumsequencer_deviceOriginalTransform : transform = TransformZero
    var echoeffect_deviceOriginalTransform : transform = TransformZero
    var eliminationfeed_deviceOriginalTransform : transform = TransformZero
    var eliminationmanager_deviceOriginalTransform : transform = TransformZero
    var endgame_deviceOriginalTransform : transform = TransformZero
    var experiencesettings_deviceOriginalTransform : transform = TransformZero
    var explosivedeviceOriginalTransform : transform = TransformZero
    var firevolume_deviceOriginalTransform : transform = TransformZero
    var fireflyspawner_deviceOriginalTransform : transform = TransformZero
    var fishingzone_deviceOriginalTransform : transform = TransformZero
    var fuelpump_deviceOriginalTransform : transform = TransformZero
    var gameplaycamera_fixed_angle_deviceOriginalTransform : transform = TransformZero
    var gameplaycamera_fixed_point_deviceOriginalTransform : transform = TransformZero
    var gameplaycamera_orbit_deviceOriginalTransform : transform = TransformZero
    var gameplaycontrols_third_person_deviceOriginalTransform : transform = TransformZero
    var grindpowerup_deviceOriginalTransform : transform = TransformZero
    var grindrail_deviceOriginalTransform : transform = TransformZero
    var guardspawner_deviceOriginalTransform : transform = TransformZero
    var healthpowerup_deviceOriginalTransform : transform = TransformZero
    var holoscreendeviceOriginalTransform : transform = TransformZero
    var hudcontroller_deviceOriginalTransform : transform = TransformZero
    var hudmessage_deviceOriginalTransform : transform = TransformZero
    var inputtrigger_deviceOriginalTransform : transform = TransformZero
    var instrumentplayer_deviceOriginalTransform : transform = TransformZero
    var itemgranter_deviceOriginalTransform : transform = TransformZero
    var itemplacer_deviceOriginalTransform : transform = TransformZero
    var itemremover_deviceOriginalTransform : transform = TransformZero
    var itemshop_deviceOriginalTransform : transform = TransformZero
    var itemspawner_deviceOriginalTransform : transform = TransformZero
    var lfomodulator_deviceOriginalTransform : transform = TransformZero
    var lockdeviceOriginalTransform : transform = TransformZero
    var mapcontroller_deviceOriginalTransform : transform = TransformZero
    var mapindicator_deviceOriginalTransform : transform = TransformZero
    var matchmakingportal_deviceOriginalTransform : transform = TransformZero
    var movementmodulator_deviceOriginalTransform : transform = TransformZero
    var musicmanager_deviceOriginalTransform : transform = TransformZero
    var mutatorzone_deviceOriginalTransform : transform = TransformZero
    var nitrobarrel_spawner_deviceOriginalTransform : transform = TransformZero
    var nitrohoop_deviceOriginalTransform : transform = TransformZero
    var noteprogressor_deviceOriginalTransform : transform = TransformZero
    var notesequencer_deviceOriginalTransform : transform = TransformZero
    var notetrigger_deviceOriginalTransform : transform = TransformZero
    var npcspawner_deviceOriginalTransform : transform = TransformZero
    var objectivedeviceOriginalTransform : transform = TransformZero
    var omegasynthesizer_deviceOriginalTransform : transform = TransformZero
    var patchworkdeviceOriginalTransform : transform = TransformZero
    var perceptiontrigger_deviceOriginalTransform : transform = TransformZero
    var physicsboulder_deviceOriginalTransform : transform = TransformZero
    var physicstree_deviceOriginalTransform : transform = TransformZero
    var pinballbumper_deviceOriginalTransform : transform = TransformZero
    var pinballflipper_deviceOriginalTransform : transform = TransformZero
    var playercheckpoint_deviceOriginalTransform : transform = TransformZero
    var playercounter_deviceOriginalTransform : transform = TransformZero
    var playermarker_deviceOriginalTransform : transform = TransformZero
    var playerreference_deviceOriginalTransform : transform = TransformZero
    var playerspawner_deviceOriginalTransform : transform = TransformZero
    var popupdialog_deviceOriginalTransform : transform = TransformZero
    var postprocess_deviceOriginalTransform : transform = TransformZero
    var propmanipulator_deviceOriginalTransform : transform = TransformZero
    var propmover_deviceOriginalTransform : transform = TransformZero
    var propo_matic_manager_deviceOriginalTransform : transform = TransformZero
    var pulsetrigger_deviceOriginalTransform : transform = TransformZero
    var racecheckpoint_deviceOriginalTransform : transform = TransformZero
    var racemanager_deviceOriginalTransform : transform = TransformZero
    var radiodeviceOriginalTransform : transform = TransformZero
    var realtime_clock_deviceOriginalTransform : transform = TransformZero
    var rngdeviceOriginalTransform : transform = TransformZero
    var roundsettings_deviceOriginalTransform : transform = TransformZero
    var scoremanager_deviceOriginalTransform : transform = TransformZero
    var sentrydeviceOriginalTransform : transform = TransformZero
    var shootingrange_target_deviceOriginalTransform : transform = TransformZero
    var shootingrange_target_track_deviceOriginalTransform : transform = TransformZero
    var signalremote_manager_deviceOriginalTransform : transform = TransformZero
    var skydivevolume_deviceOriginalTransform : transform = TransformZero
    var skydomedeviceOriginalTransform : transform = TransformZero
    var speakerdeviceOriginalTransform : transform = TransformZero
    var stepmodulator_deviceOriginalTransform : transform = TransformZero
    var supplydrop_spawner_deviceOriginalTransform : transform = TransformZero
    var supporta_creator_deviceOriginalTransform : transform = TransformZero
    var switchdeviceOriginalTransform : transform = TransformZero
    var swordin_the_stone_deviceOriginalTransform : transform = TransformZero
    var teamsettings_and_inventory_deviceOriginalTransform : transform = TransformZero
    var teleporterdeviceOriginalTransform : transform = TransformZero
    var timedobjective_deviceOriginalTransform : transform = TransformZero
    var timerdeviceOriginalTransform : transform = TransformZero
    var trackerdeviceOriginalTransform : transform = TransformZero
    var tricktile_deviceOriginalTransform : transform = TransformZero
    var triggerdeviceOriginalTransform : transform = TransformZero
    var valuesetter_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_armored_battle_bus_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_atk_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_baller_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_big_rig_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_biplane_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_boat_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_cannon_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_dirtbike_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_driftboard_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_getaway_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_heavy_turret_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_helicopter_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_nitro_drifter_sedan_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_octane_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_pickup_truck_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_quadcrasher_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_rocketracing_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_sedan_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_shopping_cart_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_siege_cannon_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_sportbike_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_sports_car_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_surfboard_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_tank_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_taxi_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_ufo_deviceOriginalTransform : transform = TransformZero
    var vehiclespawner_war_bus_deviceOriginalTransform : transform = TransformZero
    var vendingmachine_deviceOriginalTransform : transform = TransformZero
    var vfxcreator_deviceOriginalTransform : transform = TransformZero
    var vfxspawner_deviceOriginalTransform : transform = TransformZero
    var videoplayer_deviceOriginalTransform : transform = TransformZero
    var vinerail_deviceOriginalTransform : transform = TransformZero
    var visualeffect_powerup_deviceOriginalTransform : transform = TransformZero
    var volumedeviceOriginalTransform : transform = TransformZero
    var waterdeviceOriginalTransform : transform = TransformZero
    var wildlifespawner_deviceOriginalTransform : transform = TransformZero
    var wildsplant_deviceOriginalTransform : transform = TransformZero

    # setwildsplant_deviceOriginalTransform():void={set wildsplant_deviceOriginalTransform = wildsplant_device.GetTransform()}
    setaccoladesdeviceOriginalTransform():void={set accoladesdeviceOriginalTransform = accoladesdevice.GetTransform()}
    setadvancedstorm_beacon_deviceOriginalTransform():void={set advancedstorm_beacon_deviceOriginalTransform = advancedstorm_beacon_device.GetTransform()}
    setadvancedstormcontroller_deviceOriginalTransform():void={set advancedstormcontroller_deviceOriginalTransform = advancedstormcontroller_device.GetTransform()}
    setaipatrolpath_deviceOriginalTransform():void={set aipatrolpath_deviceOriginalTransform = aipatrolpath_device.GetTransform()}
    setairvent_deviceOriginalTransform():void={set airvent_deviceOriginalTransform = airvent_device.GetTransform()}
    setanalyticsdeviceOriginalTransform():void={set analyticsdeviceOriginalTransform = analyticsdevice.GetTransform()}
    setanimatedmesh_deviceOriginalTransform():void={set animatedmesh_deviceOriginalTransform = animatedmesh_device.GetTransform()}
    setattributeevaluator_deviceOriginalTransform():void={set attributeevaluator_deviceOriginalTransform = attributeevaluator_device.GetTransform()}
    setaudiomixer_deviceOriginalTransform():void={set audiomixer_deviceOriginalTransform = audiomixer_device.GetTransform()}
    setaudioplayer_deviceOriginalTransform():void={set audioplayer_deviceOriginalTransform = audioplayer_device.GetTransform()}
    setautomatedturret_deviceOriginalTransform():void={set automatedturret_deviceOriginalTransform = automatedturret_device.GetTransform()}
    setballspawner_deviceOriginalTransform():void={set ballspawner_deviceOriginalTransform = ballspawner_device.GetTransform()}
    setbarrierdeviceOriginalTransform():void={set barrierdeviceOriginalTransform = barrierdevice.GetTransform()}
    setbasicstorm_controller_deviceOriginalTransform():void={set basicstorm_controller_deviceOriginalTransform = basicstorm_controller_device.GetTransform()}
    setbeacondeviceOriginalTransform():void={set beacondeviceOriginalTransform = beacondevice.GetTransform()}
    setbillboarddeviceOriginalTransform():void={set billboarddeviceOriginalTransform = billboarddevice.GetTransform()}
    setbouncerdeviceOriginalTransform():void={set bouncerdeviceOriginalTransform = bouncerdevice.GetTransform()}
    setbuttondeviceOriginalTransform():void={set buttondeviceOriginalTransform = buttondevice.GetTransform()}
    setcablesplitter_deviceOriginalTransform():void={set cablesplitter_deviceOriginalTransform = cablesplitter_device.GetTransform()}
    setcampfiredeviceOriginalTransform():void={set campfiredeviceOriginalTransform = campfiredevice.GetTransform()}
    setcapturearea_deviceOriginalTransform():void={set capturearea_deviceOriginalTransform = capturearea_device.GetTransform()}
    setcaptureitem_spawner_deviceOriginalTransform():void={set captureitem_spawner_deviceOriginalTransform = captureitem_spawner_device.GetTransform()}
    setchairdeviceOriginalTransform():void={set chairdeviceOriginalTransform = chairdevice.GetTransform()}
    setchangingbooth_deviceOriginalTransform():void={set changingbooth_deviceOriginalTransform = changingbooth_device.GetTransform()}
    setcharacterdeviceOriginalTransform():void={set characterdeviceOriginalTransform = characterdevice.GetTransform()}
    setcinematicsequence_deviceOriginalTransform():void={set cinematicsequence_deviceOriginalTransform = cinematicsequence_device.GetTransform()}
    setclassand_team_selector_deviceOriginalTransform():void={set classand_team_selector_deviceOriginalTransform = classand_team_selector_device.GetTransform()}
    setclassdesigner_deviceOriginalTransform():void={set classdesigner_deviceOriginalTransform = classdesigner_device.GetTransform()}
    setclassselector_ui_deviceOriginalTransform():void={set classselector_ui_deviceOriginalTransform = classselector_ui_device.GetTransform()}
    setcollectibleobject_deviceOriginalTransform():void={set collectibleobject_deviceOriginalTransform = collectibleobject_device.GetTransform()}
    setcolorchanging_tiles_deviceOriginalTransform():void={set colorchanging_tiles_deviceOriginalTransform = colorchanging_tiles_device.GetTransform()}
    setconditionalbutton_deviceOriginalTransform():void={set conditionalbutton_deviceOriginalTransform = conditionalbutton_device.GetTransform()}
    setcrashpad_deviceOriginalTransform():void={set crashpad_deviceOriginalTransform = crashpad_device.GetTransform()}
    setcreaturemanager_deviceOriginalTransform():void={set creaturemanager_deviceOriginalTransform = creaturemanager_device.GetTransform()}
    setcreatureplacer_deviceOriginalTransform():void={set creatureplacer_deviceOriginalTransform = creatureplacer_device.GetTransform()}
    setcreaturespawner_deviceOriginalTransform():void={set creaturespawner_deviceOriginalTransform = creaturespawner_device.GetTransform()}
    setcrowdvolume_deviceOriginalTransform():void={set crowdvolume_deviceOriginalTransform = crowdvolume_device.GetTransform()}
    setcustomizablelight_deviceOriginalTransform():void={set customizablelight_deviceOriginalTransform = customizablelight_device.GetTransform()}
    setdamageamplifier_powerup_deviceOriginalTransform():void={set damageamplifier_powerup_deviceOriginalTransform = damageamplifier_powerup_device.GetTransform()}
    setdamagevolume_deviceOriginalTransform():void={set damagevolume_deviceOriginalTransform = damagevolume_device.GetTransform()}
    setdancemannequin_deviceOriginalTransform():void={set dancemannequin_deviceOriginalTransform = dancemannequin_device.GetTransform()}
    setdistortioneffect_deviceOriginalTransform():void={set distortioneffect_deviceOriginalTransform = distortioneffect_device.GetTransform()}
    setdownbut_not_out_deviceOriginalTransform():void={set downbut_not_out_deviceOriginalTransform = downbut_not_out_device.GetTransform()}
    setdrumplayer_deviceOriginalTransform():void={set drumplayer_deviceOriginalTransform = drumplayer_device.GetTransform()}
    setdrumsequencer_deviceOriginalTransform():void={set drumsequencer_deviceOriginalTransform = drumsequencer_device.GetTransform()}
    setechoeffect_deviceOriginalTransform():void={set echoeffect_deviceOriginalTransform = echoeffect_device.GetTransform()}
    seteliminationfeed_deviceOriginalTransform():void={set eliminationfeed_deviceOriginalTransform = eliminationfeed_device.GetTransform()}
    seteliminationmanager_deviceOriginalTransform():void={set eliminationmanager_deviceOriginalTransform = eliminationmanager_device.GetTransform()}
    setendgame_deviceOriginalTransform():void={set endgame_deviceOriginalTransform = endgame_device.GetTransform()}
    setexperiencesettings_deviceOriginalTransform():void={set experiencesettings_deviceOriginalTransform = experiencesettings_device.GetTransform()}
    setexplosivedeviceOriginalTransform():void={set explosivedeviceOriginalTransform = explosivedevice.GetTransform()}
    setfirevolume_deviceOriginalTransform():void={set firevolume_deviceOriginalTransform = firevolume_device.GetTransform()}
    setfireflyspawner_deviceOriginalTransform():void={set fireflyspawner_deviceOriginalTransform = fireflyspawner_device.GetTransform()}
    setfishingzone_deviceOriginalTransform():void={set fishingzone_deviceOriginalTransform = fishingzone_device.GetTransform()}
    setfuelpump_deviceOriginalTransform():void={set fuelpump_deviceOriginalTransform = fuelpump_device.GetTransform()}
    setgameplaycamera_fixed_angle_deviceOriginalTransform():void={set gameplaycamera_fixed_angle_deviceOriginalTransform = gameplaycamera_fixed_angle_device.GetTransform()}
    setgameplaycamera_fixed_point_deviceOriginalTransform():void={set gameplaycamera_fixed_point_deviceOriginalTransform = gameplaycamera_fixed_point_device.GetTransform()}
    setgameplaycamera_orbit_deviceOriginalTransform():void={set gameplaycamera_orbit_deviceOriginalTransform = gameplaycamera_orbit_device.GetTransform()}
    setgameplaycontrols_third_person_deviceOriginalTransform():void={set gameplaycontrols_third_person_deviceOriginalTransform = gameplaycontrols_third_person_device.GetTransform()}
    setgrindpowerup_deviceOriginalTransform():void={set grindpowerup_deviceOriginalTransform = grindpowerup_device.GetTransform()}
    setgrindrail_deviceOriginalTransform():void={set grindrail_deviceOriginalTransform = grindrail_device.GetTransform()}
    setguardspawner_deviceOriginalTransform():void={set guardspawner_deviceOriginalTransform = guardspawner_device.GetTransform()}
    sethealthpowerup_deviceOriginalTransform():void={set healthpowerup_deviceOriginalTransform = healthpowerup_device.GetTransform()}
    setholoscreendeviceOriginalTransform():void={set holoscreendeviceOriginalTransform = holoscreendevice.GetTransform()}
    sethudcontroller_deviceOriginalTransform():void={set hudcontroller_deviceOriginalTransform = hudcontroller_device.GetTransform()}
    sethudmessage_deviceOriginalTransform():void={set hudmessage_deviceOriginalTransform = hudmessage_device.GetTransform()}
    setinputtrigger_deviceOriginalTransform():void={set inputtrigger_deviceOriginalTransform = inputtrigger_device.GetTransform()}
    setinstrumentplayer_deviceOriginalTransform():void={set instrumentplayer_deviceOriginalTransform = instrumentplayer_device.GetTransform()}
    setitemgranter_deviceOriginalTransform():void={set itemgranter_deviceOriginalTransform = itemgranter_device.GetTransform()}
    setitemplacer_deviceOriginalTransform():void={set itemplacer_deviceOriginalTransform = itemplacer_device.GetTransform()}
    setitemremover_deviceOriginalTransform():void={set itemremover_deviceOriginalTransform = itemremover_device.GetTransform()}
    setitemshop_deviceOriginalTransform():void={set itemshop_deviceOriginalTransform = itemshop_device.GetTransform()}
    setitemspawner_deviceOriginalTransform():void={set itemspawner_deviceOriginalTransform = itemspawner_device.GetTransform()}
    setlfomodulator_deviceOriginalTransform():void={set lfomodulator_deviceOriginalTransform = lfomodulator_device.GetTransform()}
    setlockdeviceOriginalTransform():void={set lockdeviceOriginalTransform = lockdevice.GetTransform()}
    setmapcontroller_deviceOriginalTransform():void={set mapcontroller_deviceOriginalTransform = mapcontroller_device.GetTransform()}
    setmapindicator_deviceOriginalTransform():void={set mapindicator_deviceOriginalTransform = mapindicator_device.GetTransform()}
    setmatchmakingportal_deviceOriginalTransform():void={set matchmakingportal_deviceOriginalTransform = matchmakingportal_device.GetTransform()}
    setmovementmodulator_deviceOriginalTransform():void={set movementmodulator_deviceOriginalTransform = movementmodulator_device.GetTransform()}
    setmusicmanager_deviceOriginalTransform():void={set musicmanager_deviceOriginalTransform = musicmanager_device.GetTransform()}
    setmutatorzone_deviceOriginalTransform():void={set mutatorzone_deviceOriginalTransform = mutatorzone_device.GetTransform()}
    setnitrobarrel_spawner_deviceOriginalTransform():void={set nitrobarrel_spawner_deviceOriginalTransform = nitrobarrel_spawner_device.GetTransform()}
    setnitrohoop_deviceOriginalTransform():void={set nitrohoop_deviceOriginalTransform = nitrohoop_device.GetTransform()}
    setnoteprogressor_deviceOriginalTransform():void={set noteprogressor_deviceOriginalTransform = noteprogressor_device.GetTransform()}
    setnotesequencer_deviceOriginalTransform():void={set notesequencer_deviceOriginalTransform = notesequencer_device.GetTransform()}
    setnotetrigger_deviceOriginalTransform():void={set notetrigger_deviceOriginalTransform = notetrigger_device.GetTransform()}
    setnpcspawner_deviceOriginalTransform():void={set npcspawner_deviceOriginalTransform = npcspawner_device.GetTransform()}
    setobjectivedeviceOriginalTransform():void={set objectivedeviceOriginalTransform = objectivedevice.GetTransform()}
    setomegasynthesizer_deviceOriginalTransform():void={set omegasynthesizer_deviceOriginalTransform = omegasynthesizer_device.GetTransform()}
    setpatchworkdeviceOriginalTransform():void={set patchworkdeviceOriginalTransform = patchworkdevice.GetTransform()}
    setperceptiontrigger_deviceOriginalTransform():void={set perceptiontrigger_deviceOriginalTransform = perceptiontrigger_device.GetTransform()}
    setphysicsboulder_deviceOriginalTransform():void={set physicsboulder_deviceOriginalTransform = physicsboulder_device.GetTransform()}
    setphysicstree_deviceOriginalTransform():void={set physicstree_deviceOriginalTransform = physicstree_device.GetTransform()}
    setpinballbumper_deviceOriginalTransform():void={set pinballbumper_deviceOriginalTransform = pinballbumper_device.GetTransform()}
    setpinballflipper_deviceOriginalTransform():void={set pinballflipper_deviceOriginalTransform = pinballflipper_device.GetTransform()}
    setplayercheckpoint_deviceOriginalTransform():void={set playercheckpoint_deviceOriginalTransform = playercheckpoint_device.GetTransform()}
    setplayercounter_deviceOriginalTransform():void={set playercounter_deviceOriginalTransform = playercounter_device.GetTransform()}
    setplayermarker_deviceOriginalTransform():void={set playermarker_deviceOriginalTransform = playermarker_device.GetTransform()}
    setplayerreference_deviceOriginalTransform():void={set playerreference_deviceOriginalTransform = playerreference_device.GetTransform()}
    setplayerspawner_deviceOriginalTransform():void={set playerspawner_deviceOriginalTransform = playerspawner_device.GetTransform()}
    setpopupdialog_deviceOriginalTransform():void={set popupdialog_deviceOriginalTransform = popupdialog_device.GetTransform()}
    setpostprocess_deviceOriginalTransform():void={set postprocess_deviceOriginalTransform = postprocess_device.GetTransform()}
    setpropmanipulator_deviceOriginalTransform():void={set propmanipulator_deviceOriginalTransform = propmanipulator_device.GetTransform()}
    setpropmover_deviceOriginalTransform():void={set propmover_deviceOriginalTransform = propmover_device.GetTransform()}
    setpropo_matic_manager_deviceOriginalTransform():void={set propo_matic_manager_deviceOriginalTransform = propo_matic_manager_device.GetTransform()}
    setpulsetrigger_deviceOriginalTransform():void={set pulsetrigger_deviceOriginalTransform = pulsetrigger_device.GetTransform()}
    setracecheckpoint_deviceOriginalTransform():void={set racecheckpoint_deviceOriginalTransform = racecheckpoint_device.GetTransform()}
    setracemanager_deviceOriginalTransform():void={set racemanager_deviceOriginalTransform = racemanager_device.GetTransform()}
    setradiodeviceOriginalTransform():void={set radiodeviceOriginalTransform = radiodevice.GetTransform()}
    setrealtime_clock_deviceOriginalTransform():void={set realtime_clock_deviceOriginalTransform = realtime_clock_device.GetTransform()}
    setrngdeviceOriginalTransform():void={set rngdeviceOriginalTransform = rngdevice.GetTransform()}
    setroundsettings_deviceOriginalTransform():void={set roundsettings_deviceOriginalTransform = roundsettings_device.GetTransform()}
    setscoremanager_deviceOriginalTransform():void={set scoremanager_deviceOriginalTransform = scoremanager_device.GetTransform()}
    setsentrydeviceOriginalTransform():void={set sentrydeviceOriginalTransform = sentrydevice.GetTransform()}
    setshootingrange_target_deviceOriginalTransform():void={set shootingrange_target_deviceOriginalTransform = shootingrange_target_device.GetTransform()}
    setshootingrange_target_track_deviceOriginalTransform():void={set shootingrange_target_track_deviceOriginalTransform = shootingrange_target_track_device.GetTransform()}
    setsignalremote_manager_deviceOriginalTransform():void={set signalremote_manager_deviceOriginalTransform = signalremote_manager_device.GetTransform()}
    setskydivevolume_deviceOriginalTransform():void={set skydivevolume_deviceOriginalTransform = skydivevolume_device.GetTransform()}
    setskydomedeviceOriginalTransform():void={set skydomedeviceOriginalTransform = skydomedevice.GetTransform()}
    setspeakerdeviceOriginalTransform():void={set speakerdeviceOriginalTransform = speakerdevice.GetTransform()}
    setstepmodulator_deviceOriginalTransform():void={set stepmodulator_deviceOriginalTransform = stepmodulator_device.GetTransform()}
    setsupplydrop_spawner_deviceOriginalTransform():void={set supplydrop_spawner_deviceOriginalTransform = supplydrop_spawner_device.GetTransform()}
    setsupporta_creator_deviceOriginalTransform():void={set supporta_creator_deviceOriginalTransform = supporta_creator_device.GetTransform()}
    setswitchdeviceOriginalTransform():void={set switchdeviceOriginalTransform = switchdevice.GetTransform()}
    setswordin_the_stone_deviceOriginalTransform():void={set swordin_the_stone_deviceOriginalTransform = swordin_the_stone_device.GetTransform()}
    setteamsettings_and_inventory_deviceOriginalTransform():void={set teamsettings_and_inventory_deviceOriginalTransform = teamsettings_and_inventory_device.GetTransform()}
    setteleporterdeviceOriginalTransform():void={set teleporterdeviceOriginalTransform = teleporterdevice.GetTransform()}
    settimedobjective_deviceOriginalTransform():void={set timedobjective_deviceOriginalTransform = timedobjective_device.GetTransform()}
    settimerdeviceOriginalTransform():void={set timerdeviceOriginalTransform = timerdevice.GetTransform()}
    settrackerdeviceOriginalTransform():void={set trackerdeviceOriginalTransform = trackerdevice.GetTransform()}
    settricktile_deviceOriginalTransform():void={set tricktile_deviceOriginalTransform = tricktile_device.GetTransform()}
    settriggerdeviceOriginalTransform():void={set triggerdeviceOriginalTransform = triggerdevice.GetTransform()}
    setvaluesetter_deviceOriginalTransform():void={set valuesetter_deviceOriginalTransform = valuesetter_device.GetTransform()}
    setvehiclespawner_armored_battle_bus_deviceOriginalTransform():void={set vehiclespawner_armored_battle_bus_deviceOriginalTransform = vehiclespawner_armored_battle_bus_device.GetTransform()}
    setvehiclespawner_atk_deviceOriginalTransform():void={set vehiclespawner_atk_deviceOriginalTransform = vehiclespawner_atk_device.GetTransform()}
    setvehiclespawner_baller_deviceOriginalTransform():void={set vehiclespawner_baller_deviceOriginalTransform = vehiclespawner_baller_device.GetTransform()}
    setvehiclespawner_big_rig_deviceOriginalTransform():void={set vehiclespawner_big_rig_deviceOriginalTransform = vehiclespawner_big_rig_device.GetTransform()}
    setvehiclespawner_biplane_deviceOriginalTransform():void={set vehiclespawner_biplane_deviceOriginalTransform = vehiclespawner_biplane_device.GetTransform()}
    setvehiclespawner_boat_deviceOriginalTransform():void={set vehiclespawner_boat_deviceOriginalTransform = vehiclespawner_boat_device.GetTransform()}
    setvehiclespawner_cannon_deviceOriginalTransform():void={set vehiclespawner_cannon_deviceOriginalTransform = vehiclespawner_cannon_device.GetTransform()}
    setvehiclespawner_dirtbike_deviceOriginalTransform():void={set vehiclespawner_dirtbike_deviceOriginalTransform = vehiclespawner_dirtbike_device.GetTransform()}
    setvehiclespawner_driftboard_deviceOriginalTransform():void={set vehiclespawner_driftboard_deviceOriginalTransform = vehiclespawner_driftboard_device.GetTransform()}
    setvehiclespawner_getaway_deviceOriginalTransform():void={set vehiclespawner_getaway_deviceOriginalTransform = vehiclespawner_getaway_device.GetTransform()}
    setvehiclespawner_heavy_turret_deviceOriginalTransform():void={set vehiclespawner_heavy_turret_deviceOriginalTransform = vehiclespawner_heavy_turret_device.GetTransform()}
    setvehiclespawner_helicopter_deviceOriginalTransform():void={set vehiclespawner_helicopter_deviceOriginalTransform = vehiclespawner_helicopter_device.GetTransform()}
    setvehiclespawner_nitro_drifter_sedan_deviceOriginalTransform():void={set vehiclespawner_nitro_drifter_sedan_deviceOriginalTransform = vehiclespawner_nitro_drifter_sedan_device.GetTransform()}
    setvehiclespawner_octane_deviceOriginalTransform():void={set vehiclespawner_octane_deviceOriginalTransform = vehiclespawner_octane_device.GetTransform()}
    setvehiclespawner_pickup_truck_deviceOriginalTransform():void={set vehiclespawner_pickup_truck_deviceOriginalTransform = vehiclespawner_pickup_truck_device.GetTransform()}
    setvehiclespawner_quadcrasher_deviceOriginalTransform():void={set vehiclespawner_quadcrasher_deviceOriginalTransform = vehiclespawner_quadcrasher_device.GetTransform()}
    setvehiclespawner_rocketracing_deviceOriginalTransform():void={set vehiclespawner_rocketracing_deviceOriginalTransform = vehiclespawner_rocketracing_device.GetTransform()}
    setvehiclespawner_sedan_deviceOriginalTransform():void={set vehiclespawner_sedan_deviceOriginalTransform = vehiclespawner_sedan_device.GetTransform()}
    setvehiclespawner_shopping_cart_deviceOriginalTransform():void={set vehiclespawner_shopping_cart_deviceOriginalTransform = vehiclespawner_shopping_cart_device.GetTransform()}
    setvehiclespawner_siege_cannon_deviceOriginalTransform():void={set vehiclespawner_siege_cannon_deviceOriginalTransform = vehiclespawner_siege_cannon_device.GetTransform()}
    setvehiclespawner_sportbike_deviceOriginalTransform():void={set vehiclespawner_sportbike_deviceOriginalTransform = vehiclespawner_sportbike_device.GetTransform()}
    setvehiclespawner_sports_car_deviceOriginalTransform():void={set vehiclespawner_sports_car_deviceOriginalTransform = vehiclespawner_sports_car_device.GetTransform()}
    setvehiclespawner_surfboard_deviceOriginalTransform():void={set vehiclespawner_surfboard_deviceOriginalTransform = vehiclespawner_surfboard_device.GetTransform()}
    setvehiclespawner_tank_deviceOriginalTransform():void={set vehiclespawner_tank_deviceOriginalTransform = vehiclespawner_tank_device.GetTransform()}
    setvehiclespawner_taxi_deviceOriginalTransform():void={set vehiclespawner_taxi_deviceOriginalTransform = vehiclespawner_taxi_device.GetTransform()}
    setvehiclespawner_ufo_deviceOriginalTransform():void={set vehiclespawner_ufo_deviceOriginalTransform = vehiclespawner_ufo_device.GetTransform()}
    setvehiclespawner_war_bus_deviceOriginalTransform():void={set vehiclespawner_war_bus_deviceOriginalTransform = vehiclespawner_war_bus_device.GetTransform()}
    setvendingmachine_deviceOriginalTransform():void={set vendingmachine_deviceOriginalTransform = vendingmachine_device.GetTransform()}
    setvfxcreator_deviceOriginalTransform():void={set vfxcreator_deviceOriginalTransform = vfxcreator_device.GetTransform()}
    setvfxspawner_deviceOriginalTransform():void={set vfxspawner_deviceOriginalTransform = vfxspawner_device.GetTransform()}
    setvideoplayer_deviceOriginalTransform():void={set videoplayer_deviceOriginalTransform = videoplayer_device.GetTransform()}
    setvinerail_deviceOriginalTransform():void={set vinerail_deviceOriginalTransform = vinerail_device.GetTransform()}
    setvisualeffect_powerup_deviceOriginalTransform():void={set visualeffect_powerup_deviceOriginalTransform = visualeffect_powerup_device.GetTransform()}
    setvolumedeviceOriginalTransform():void={set volumedeviceOriginalTransform = volumedevice.GetTransform()}
    setwaterdeviceOriginalTransform():void={set waterdeviceOriginalTransform = waterdevice.GetTransform()}
    setwildlifespawner_deviceOriginalTransform():void={set wildlifespawner_deviceOriginalTransform = wildlifespawner_device.GetTransform()}
    setwildsplant_deviceOriginalTransform():void={set wildsplant_deviceOriginalTransform = wildsplant_device.GetTransform()}
    
    SetOriginalPositionsDevices():void=
        setaccoladesdeviceOriginalTransform()
        setadvancedstorm_beacon_deviceOriginalTransform()
        setadvancedstormcontroller_deviceOriginalTransform()
        setaipatrolpath_deviceOriginalTransform()
        setairvent_deviceOriginalTransform()
        setanalyticsdeviceOriginalTransform()
        setanimatedmesh_deviceOriginalTransform()
        setattributeevaluator_deviceOriginalTransform()
        setaudiomixer_deviceOriginalTransform()
        setaudioplayer_deviceOriginalTransform()
        setautomatedturret_deviceOriginalTransform()
        setballspawner_deviceOriginalTransform()
        setbarrierdeviceOriginalTransform()
        setbasicstorm_controller_deviceOriginalTransform()
        setbeacondeviceOriginalTransform()
        setbillboarddeviceOriginalTransform()
        setbouncerdeviceOriginalTransform()
        setbuttondeviceOriginalTransform()
        setcablesplitter_deviceOriginalTransform()
        setcampfiredeviceOriginalTransform()
        setcapturearea_deviceOriginalTransform()
        setcaptureitem_spawner_deviceOriginalTransform()
        setchairdeviceOriginalTransform()
        setchangingbooth_deviceOriginalTransform()
        setcharacterdeviceOriginalTransform()
        setcinematicsequence_deviceOriginalTransform()
        setclassand_team_selector_deviceOriginalTransform()
        setclassdesigner_deviceOriginalTransform()
        setclassselector_ui_deviceOriginalTransform()
        setcollectibleobject_deviceOriginalTransform()
        setcolorchanging_tiles_deviceOriginalTransform()
        setconditionalbutton_deviceOriginalTransform()
        setcrashpad_deviceOriginalTransform()
        setcreaturemanager_deviceOriginalTransform()
        setcreatureplacer_deviceOriginalTransform()
        setcreaturespawner_deviceOriginalTransform()
        setcrowdvolume_deviceOriginalTransform()
        setcustomizablelight_deviceOriginalTransform()
        setdamageamplifier_powerup_deviceOriginalTransform()
        setdamagevolume_deviceOriginalTransform()
        setdancemannequin_deviceOriginalTransform()
        setdistortioneffect_deviceOriginalTransform()
        setdownbut_not_out_deviceOriginalTransform()
        setdrumplayer_deviceOriginalTransform()
        setdrumsequencer_deviceOriginalTransform()
        setechoeffect_deviceOriginalTransform()
        seteliminationfeed_deviceOriginalTransform()
        seteliminationmanager_deviceOriginalTransform()
        setendgame_deviceOriginalTransform()
        setexperiencesettings_deviceOriginalTransform()
        setexplosivedeviceOriginalTransform()
        setfirevolume_deviceOriginalTransform()
        setfireflyspawner_deviceOriginalTransform()
        setfishingzone_deviceOriginalTransform()
        setfuelpump_deviceOriginalTransform()
        setgameplaycamera_fixed_angle_deviceOriginalTransform()
        setgameplaycamera_fixed_point_deviceOriginalTransform()
        setgameplaycamera_orbit_deviceOriginalTransform()
        setgameplaycontrols_third_person_deviceOriginalTransform()
        setgrindpowerup_deviceOriginalTransform()
        setgrindrail_deviceOriginalTransform()
        setguardspawner_deviceOriginalTransform()
        sethealthpowerup_deviceOriginalTransform()
        setholoscreendeviceOriginalTransform()
        sethudcontroller_deviceOriginalTransform()
        sethudmessage_deviceOriginalTransform()
        setinputtrigger_deviceOriginalTransform()
        setinstrumentplayer_deviceOriginalTransform()
        setitemgranter_deviceOriginalTransform()
        setitemplacer_deviceOriginalTransform()
        setitemremover_deviceOriginalTransform()
        setitemshop_deviceOriginalTransform()
        setitemspawner_deviceOriginalTransform()
        setlfomodulator_deviceOriginalTransform()
        setlockdeviceOriginalTransform()
        setmapcontroller_deviceOriginalTransform()
        setmapindicator_deviceOriginalTransform()
        setmatchmakingportal_deviceOriginalTransform()
        setmovementmodulator_deviceOriginalTransform()
        setmusicmanager_deviceOriginalTransform()
        setmutatorzone_deviceOriginalTransform()
        setnitrobarrel_spawner_deviceOriginalTransform()
        setnitrohoop_deviceOriginalTransform()
        setnoteprogressor_deviceOriginalTransform()
        setnotesequencer_deviceOriginalTransform()
        setnotetrigger_deviceOriginalTransform()
        setnpcspawner_deviceOriginalTransform()
        setobjectivedeviceOriginalTransform()
        setomegasynthesizer_deviceOriginalTransform()
        setpatchworkdeviceOriginalTransform()
        setperceptiontrigger_deviceOriginalTransform()
        setphysicsboulder_deviceOriginalTransform()
        setphysicstree_deviceOriginalTransform()
        setpinballbumper_deviceOriginalTransform()
        setpinballflipper_deviceOriginalTransform()
        setplayercheckpoint_deviceOriginalTransform()
        setplayercounter_deviceOriginalTransform()
        setplayermarker_deviceOriginalTransform()
        setplayerreference_deviceOriginalTransform()
        setplayerspawner_deviceOriginalTransform()
        setpopupdialog_deviceOriginalTransform()
        setpostprocess_deviceOriginalTransform()
        setpropmanipulator_deviceOriginalTransform()
        setpropmover_deviceOriginalTransform()
        setpropo_matic_manager_deviceOriginalTransform()
        setpulsetrigger_deviceOriginalTransform()
        setracecheckpoint_deviceOriginalTransform()
        setracemanager_deviceOriginalTransform()
        setradiodeviceOriginalTransform()
        setrealtime_clock_deviceOriginalTransform()
        setrngdeviceOriginalTransform()
        setroundsettings_deviceOriginalTransform()
        setscoremanager_deviceOriginalTransform()
        setsentrydeviceOriginalTransform()
        setshootingrange_target_deviceOriginalTransform()
        setshootingrange_target_track_deviceOriginalTransform()
        setsignalremote_manager_deviceOriginalTransform()
        setskydivevolume_deviceOriginalTransform()
        setskydomedeviceOriginalTransform()
        setspeakerdeviceOriginalTransform()
        setstepmodulator_deviceOriginalTransform()
        setsupplydrop_spawner_deviceOriginalTransform()
        setsupporta_creator_deviceOriginalTransform()
        setswitchdeviceOriginalTransform()
        setswordin_the_stone_deviceOriginalTransform()
        setteamsettings_and_inventory_deviceOriginalTransform()
        setteleporterdeviceOriginalTransform()
        settimedobjective_deviceOriginalTransform()
        settimerdeviceOriginalTransform()
        settrackerdeviceOriginalTransform()
        settricktile_deviceOriginalTransform()
        settriggerdeviceOriginalTransform()
        setvaluesetter_deviceOriginalTransform()
        setvehiclespawner_armored_battle_bus_deviceOriginalTransform()
        setvehiclespawner_atk_deviceOriginalTransform()
        setvehiclespawner_baller_deviceOriginalTransform()
        setvehiclespawner_big_rig_deviceOriginalTransform()
        setvehiclespawner_biplane_deviceOriginalTransform()
        setvehiclespawner_boat_deviceOriginalTransform()
        setvehiclespawner_cannon_deviceOriginalTransform()
        setvehiclespawner_dirtbike_deviceOriginalTransform()
        setvehiclespawner_driftboard_deviceOriginalTransform()
        setvehiclespawner_getaway_deviceOriginalTransform()
        setvehiclespawner_heavy_turret_deviceOriginalTransform()
        setvehiclespawner_helicopter_deviceOriginalTransform()
        setvehiclespawner_nitro_drifter_sedan_deviceOriginalTransform()
        setvehiclespawner_octane_deviceOriginalTransform()
        setvehiclespawner_pickup_truck_deviceOriginalTransform()
        setvehiclespawner_quadcrasher_deviceOriginalTransform()
        setvehiclespawner_rocketracing_deviceOriginalTransform()
        setvehiclespawner_sedan_deviceOriginalTransform()
        setvehiclespawner_shopping_cart_deviceOriginalTransform()
        setvehiclespawner_siege_cannon_deviceOriginalTransform()
        setvehiclespawner_sportbike_deviceOriginalTransform()
        setvehiclespawner_sports_car_deviceOriginalTransform()
        setvehiclespawner_surfboard_deviceOriginalTransform()
        setvehiclespawner_tank_deviceOriginalTransform()
        setvehiclespawner_taxi_deviceOriginalTransform()
        setvehiclespawner_ufo_deviceOriginalTransform()
        setvehiclespawner_war_bus_deviceOriginalTransform()
        setvendingmachine_deviceOriginalTransform()
        setvfxcreator_deviceOriginalTransform()
        setvfxspawner_deviceOriginalTransform()
        setvideoplayer_deviceOriginalTransform()
        setvinerail_deviceOriginalTransform()
        setvisualeffect_powerup_deviceOriginalTransform()
        setvolumedeviceOriginalTransform()
        setwaterdeviceOriginalTransform()
        setwildlifespawner_deviceOriginalTransform()
        setwildsplant_deviceOriginalTransform()
        
    ShowAllDevices()<transacts>:void=
        if(accoladesdevice.TeleportTo[accoladesdeviceOriginalTransform]) {}
        if(advancedstorm_beacon_device.TeleportTo[advancedstorm_beacon_deviceOriginalTransform]) {}
        if(advancedstormcontroller_device.TeleportTo[advancedstormcontroller_deviceOriginalTransform]) {}
        if(aipatrolpath_device.TeleportTo[aipatrolpath_deviceOriginalTransform]) {}
        if(airvent_device.TeleportTo[airvent_deviceOriginalTransform]) {}
        if(analyticsdevice.TeleportTo[analyticsdeviceOriginalTransform]) {}
        if(animatedmesh_device.TeleportTo[animatedmesh_deviceOriginalTransform]) {}
        if(attributeevaluator_device.TeleportTo[attributeevaluator_deviceOriginalTransform]) {}
        if(audiomixer_device.TeleportTo[audiomixer_deviceOriginalTransform]) {}
        if(audioplayer_device.TeleportTo[audioplayer_deviceOriginalTransform]) {}
        if(automatedturret_device.TeleportTo[automatedturret_deviceOriginalTransform]) {}
        if(ballspawner_device.TeleportTo[ballspawner_deviceOriginalTransform]) {}
        if(barrierdevice.TeleportTo[barrierdeviceOriginalTransform]) {}
        if(basicstorm_controller_device.TeleportTo[basicstorm_controller_deviceOriginalTransform]) {}
        if(beacondevice.TeleportTo[beacondeviceOriginalTransform]) {}
        if(billboarddevice.TeleportTo[billboarddeviceOriginalTransform]) {}
        if(bouncerdevice.TeleportTo[bouncerdeviceOriginalTransform]) {}
        if(buttondevice.TeleportTo[buttondeviceOriginalTransform]) {}
        if(cablesplitter_device.TeleportTo[cablesplitter_deviceOriginalTransform]) {}
        if(campfiredevice.TeleportTo[campfiredeviceOriginalTransform]) {}
        if(capturearea_device.TeleportTo[capturearea_deviceOriginalTransform]) {}
        if(captureitem_spawner_device.TeleportTo[captureitem_spawner_deviceOriginalTransform]) {}
        if(chairdevice.TeleportTo[chairdeviceOriginalTransform]) {}
        if(changingbooth_device.TeleportTo[changingbooth_deviceOriginalTransform]) {}
        if(characterdevice.TeleportTo[characterdeviceOriginalTransform]) {}
        if(cinematicsequence_device.TeleportTo[cinematicsequence_deviceOriginalTransform]) {}
        if(classand_team_selector_device.TeleportTo[classand_team_selector_deviceOriginalTransform]) {}
        if(classdesigner_device.TeleportTo[classdesigner_deviceOriginalTransform]) {}
        if(classselector_ui_device.TeleportTo[classselector_ui_deviceOriginalTransform]) {}
        if(collectibleobject_device.TeleportTo[collectibleobject_deviceOriginalTransform]) {}
        if(colorchanging_tiles_device.TeleportTo[colorchanging_tiles_deviceOriginalTransform]) {}
        if(conditionalbutton_device.TeleportTo[conditionalbutton_deviceOriginalTransform]) {}
        if(crashpad_device.TeleportTo[crashpad_deviceOriginalTransform]) {}
        if(creaturemanager_device.TeleportTo[creaturemanager_deviceOriginalTransform]) {}
        if(creatureplacer_device.TeleportTo[creatureplacer_deviceOriginalTransform]) {}
        if(creaturespawner_device.TeleportTo[creaturespawner_deviceOriginalTransform]) {}
        if(crowdvolume_device.TeleportTo[crowdvolume_deviceOriginalTransform]) {}
        if(customizablelight_device.TeleportTo[customizablelight_deviceOriginalTransform]) {}
        if(damageamplifier_powerup_device.TeleportTo[damageamplifier_powerup_deviceOriginalTransform]) {}
        if(damagevolume_device.TeleportTo[damagevolume_deviceOriginalTransform]) {}
        if(dancemannequin_device.TeleportTo[dancemannequin_deviceOriginalTransform]) {}
        if(distortioneffect_device.TeleportTo[distortioneffect_deviceOriginalTransform]) {}
        if(downbut_not_out_device.TeleportTo[downbut_not_out_deviceOriginalTransform]) {}
        if(drumplayer_device.TeleportTo[drumplayer_deviceOriginalTransform]) {}
        if(drumsequencer_device.TeleportTo[drumsequencer_deviceOriginalTransform]) {}
        if(echoeffect_device.TeleportTo[echoeffect_deviceOriginalTransform]) {}
        if(eliminationfeed_device.TeleportTo[eliminationfeed_deviceOriginalTransform]) {}
        if(eliminationmanager_device.TeleportTo[eliminationmanager_deviceOriginalTransform]) {}
        if(endgame_device.TeleportTo[endgame_deviceOriginalTransform]) {}
        if(experiencesettings_device.TeleportTo[experiencesettings_deviceOriginalTransform]) {}
        if(explosivedevice.TeleportTo[explosivedeviceOriginalTransform]) {}
        if(firevolume_device.TeleportTo[firevolume_deviceOriginalTransform]) {}
        if(fireflyspawner_device.TeleportTo[fireflyspawner_deviceOriginalTransform]) {}
        if(fishingzone_device.TeleportTo[fishingzone_deviceOriginalTransform]) {}
        if(fuelpump_device.TeleportTo[fuelpump_deviceOriginalTransform]) {}
        if(gameplaycamera_fixed_angle_device.TeleportTo[gameplaycamera_fixed_angle_deviceOriginalTransform]) {}
        if(gameplaycamera_fixed_point_device.TeleportTo[gameplaycamera_fixed_point_deviceOriginalTransform]) {}
        if(gameplaycamera_orbit_device.TeleportTo[gameplaycamera_orbit_deviceOriginalTransform]) {}
        if(gameplaycontrols_third_person_device.TeleportTo[gameplaycontrols_third_person_deviceOriginalTransform]) {}
        if(grindpowerup_device.TeleportTo[grindpowerup_deviceOriginalTransform]) {}
        if(grindrail_device.TeleportTo[grindrail_deviceOriginalTransform]) {}
        if(guardspawner_device.TeleportTo[guardspawner_deviceOriginalTransform]) {}
        if(healthpowerup_device.TeleportTo[healthpowerup_deviceOriginalTransform]) {}
        if(holoscreendevice.TeleportTo[holoscreendeviceOriginalTransform]) {}
        if(hudcontroller_device.TeleportTo[hudcontroller_deviceOriginalTransform]) {}
        if(hudmessage_device.TeleportTo[hudmessage_deviceOriginalTransform]) {}
        if(inputtrigger_device.TeleportTo[inputtrigger_deviceOriginalTransform]) {}
        if(instrumentplayer_device.TeleportTo[instrumentplayer_deviceOriginalTransform]) {}
        if(itemgranter_device.TeleportTo[itemgranter_deviceOriginalTransform]) {}
        if(itemplacer_device.TeleportTo[itemplacer_deviceOriginalTransform]) {}
        if(itemremover_device.TeleportTo[itemremover_deviceOriginalTransform]) {}
        if(itemshop_device.TeleportTo[itemshop_deviceOriginalTransform]) {}
        if(itemspawner_device.TeleportTo[itemspawner_deviceOriginalTransform]) {}
        if(lfomodulator_device.TeleportTo[lfomodulator_deviceOriginalTransform]) {}
        if(lockdevice.TeleportTo[lockdeviceOriginalTransform]) {}
        if(mapcontroller_device.TeleportTo[mapcontroller_deviceOriginalTransform]) {}
        if(mapindicator_device.TeleportTo[mapindicator_deviceOriginalTransform]) {}
        if(matchmakingportal_device.TeleportTo[matchmakingportal_deviceOriginalTransform]) {}
        if(movementmodulator_device.TeleportTo[movementmodulator_deviceOriginalTransform]) {}
        if(musicmanager_device.TeleportTo[musicmanager_deviceOriginalTransform]) {}
        if(mutatorzone_device.TeleportTo[mutatorzone_deviceOriginalTransform]) {}
        if(nitrobarrel_spawner_device.TeleportTo[nitrobarrel_spawner_deviceOriginalTransform]) {}
        if(nitrohoop_device.TeleportTo[nitrohoop_deviceOriginalTransform]) {}
        if(noteprogressor_device.TeleportTo[noteprogressor_deviceOriginalTransform]) {}
        if(notesequencer_device.TeleportTo[notesequencer_deviceOriginalTransform]) {}
        if(notetrigger_device.TeleportTo[notetrigger_deviceOriginalTransform]) {}
        if(npcspawner_device.TeleportTo[npcspawner_deviceOriginalTransform]) {}
        if(objectivedevice.TeleportTo[objectivedeviceOriginalTransform]) {}
        if(omegasynthesizer_device.TeleportTo[omegasynthesizer_deviceOriginalTransform]) {}
        if(patchworkdevice.TeleportTo[patchworkdeviceOriginalTransform]) {}
        if(perceptiontrigger_device.TeleportTo[perceptiontrigger_deviceOriginalTransform]) {}
        if(physicsboulder_device.TeleportTo[physicsboulder_deviceOriginalTransform]) {}
        if(physicstree_device.TeleportTo[physicstree_deviceOriginalTransform]) {}
        if(pinballbumper_device.TeleportTo[pinballbumper_deviceOriginalTransform]) {}
        if(pinballflipper_device.TeleportTo[pinballflipper_deviceOriginalTransform]) {}
        if(playercheckpoint_device.TeleportTo[playercheckpoint_deviceOriginalTransform]) {}
        if(playercounter_device.TeleportTo[playercounter_deviceOriginalTransform]) {}
        if(playermarker_device.TeleportTo[playermarker_deviceOriginalTransform]) {}
        if(playerreference_device.TeleportTo[playerreference_deviceOriginalTransform]) {}
        if(playerspawner_device.TeleportTo[playerspawner_deviceOriginalTransform]) {}
        if(popupdialog_device.TeleportTo[popupdialog_deviceOriginalTransform]) {}
        if(postprocess_device.TeleportTo[postprocess_deviceOriginalTransform]) {}
        if(propmanipulator_device.TeleportTo[propmanipulator_deviceOriginalTransform]) {}
        if(propmover_device.TeleportTo[propmover_deviceOriginalTransform]) {}
        if(propo_matic_manager_device.TeleportTo[propo_matic_manager_deviceOriginalTransform]) {}
        if(pulsetrigger_device.TeleportTo[pulsetrigger_deviceOriginalTransform]) {}
        if(racecheckpoint_device.TeleportTo[racecheckpoint_deviceOriginalTransform]) {}
        if(racemanager_device.TeleportTo[racemanager_deviceOriginalTransform]) {}
        if(radiodevice.TeleportTo[radiodeviceOriginalTransform]) {}
        if(realtime_clock_device.TeleportTo[realtime_clock_deviceOriginalTransform]) {}
        if(rngdevice.TeleportTo[rngdeviceOriginalTransform]) {}
        if(roundsettings_device.TeleportTo[roundsettings_deviceOriginalTransform]) {}
        if(scoremanager_device.TeleportTo[scoremanager_deviceOriginalTransform]) {}
        if(sentrydevice.TeleportTo[sentrydeviceOriginalTransform]) {}
        if(shootingrange_target_device.TeleportTo[shootingrange_target_deviceOriginalTransform]) {}
        if(shootingrange_target_track_device.TeleportTo[shootingrange_target_track_deviceOriginalTransform]) {}
        if(signalremote_manager_device.TeleportTo[signalremote_manager_deviceOriginalTransform]) {}
        if(skydivevolume_device.TeleportTo[skydivevolume_deviceOriginalTransform]) {}
        if(skydomedevice.TeleportTo[skydomedeviceOriginalTransform]) {}
        if(speakerdevice.TeleportTo[speakerdeviceOriginalTransform]) {}
        if(stepmodulator_device.TeleportTo[stepmodulator_deviceOriginalTransform]) {}
        if(supplydrop_spawner_device.TeleportTo[supplydrop_spawner_deviceOriginalTransform]) {}
        if(supporta_creator_device.TeleportTo[supporta_creator_deviceOriginalTransform]) {}
        if(switchdevice.TeleportTo[switchdeviceOriginalTransform]) {}
        if(swordin_the_stone_device.TeleportTo[swordin_the_stone_deviceOriginalTransform]) {}
        if(teamsettings_and_inventory_device.TeleportTo[teamsettings_and_inventory_deviceOriginalTransform]) {}
        if(teleporterdevice.TeleportTo[teleporterdeviceOriginalTransform]) {}
        if(timedobjective_device.TeleportTo[timedobjective_deviceOriginalTransform]) {}
        if(timerdevice.TeleportTo[timerdeviceOriginalTransform]) {}
        if(trackerdevice.TeleportTo[trackerdeviceOriginalTransform]) {}
        if(tricktile_device.TeleportTo[tricktile_deviceOriginalTransform]) {}
        if(triggerdevice.TeleportTo[triggerdeviceOriginalTransform]) {}
        if(valuesetter_device.TeleportTo[valuesetter_deviceOriginalTransform]) {}
        if(vehiclespawner_armored_battle_bus_device.TeleportTo[vehiclespawner_armored_battle_bus_deviceOriginalTransform]) {}
        if(vehiclespawner_atk_device.TeleportTo[vehiclespawner_atk_deviceOriginalTransform]) {}
        if(vehiclespawner_baller_device.TeleportTo[vehiclespawner_baller_deviceOriginalTransform]) {}
        if(vehiclespawner_big_rig_device.TeleportTo[vehiclespawner_big_rig_deviceOriginalTransform]) {}
        if(vehiclespawner_biplane_device.TeleportTo[vehiclespawner_biplane_deviceOriginalTransform]) {}
        if(vehiclespawner_boat_device.TeleportTo[vehiclespawner_boat_deviceOriginalTransform]) {}
        if(vehiclespawner_cannon_device.TeleportTo[vehiclespawner_cannon_deviceOriginalTransform]) {}
        if(vehiclespawner_dirtbike_device.TeleportTo[vehiclespawner_dirtbike_deviceOriginalTransform]) {}
        if(vehiclespawner_driftboard_device.TeleportTo[vehiclespawner_driftboard_deviceOriginalTransform]) {}
        if(vehiclespawner_getaway_device.TeleportTo[vehiclespawner_getaway_deviceOriginalTransform]) {}
        if(vehiclespawner_heavy_turret_device.TeleportTo[vehiclespawner_heavy_turret_deviceOriginalTransform]) {}
        if(vehiclespawner_helicopter_device.TeleportTo[vehiclespawner_helicopter_deviceOriginalTransform]) {}
        if(vehiclespawner_nitro_drifter_sedan_device.TeleportTo[vehiclespawner_nitro_drifter_sedan_deviceOriginalTransform]) {}
        if(vehiclespawner_octane_device.TeleportTo[vehiclespawner_octane_deviceOriginalTransform]) {}
        if(vehiclespawner_pickup_truck_device.TeleportTo[vehiclespawner_pickup_truck_deviceOriginalTransform]) {}
        if(vehiclespawner_quadcrasher_device.TeleportTo[vehiclespawner_quadcrasher_deviceOriginalTransform]) {}
        if(vehiclespawner_rocketracing_device.TeleportTo[vehiclespawner_rocketracing_deviceOriginalTransform]) {}
        if(vehiclespawner_sedan_device.TeleportTo[vehiclespawner_sedan_deviceOriginalTransform]) {}
        if(vehiclespawner_shopping_cart_device.TeleportTo[vehiclespawner_shopping_cart_deviceOriginalTransform]) {}
        if(vehiclespawner_siege_cannon_device.TeleportTo[vehiclespawner_siege_cannon_deviceOriginalTransform]) {}
        if(vehiclespawner_sportbike_device.TeleportTo[vehiclespawner_sportbike_deviceOriginalTransform]) {}
        if(vehiclespawner_sports_car_device.TeleportTo[vehiclespawner_sports_car_deviceOriginalTransform]) {}
        if(vehiclespawner_surfboard_device.TeleportTo[vehiclespawner_surfboard_deviceOriginalTransform]) {}
        if(vehiclespawner_tank_device.TeleportTo[vehiclespawner_tank_deviceOriginalTransform]) {}
        if(vehiclespawner_taxi_device.TeleportTo[vehiclespawner_taxi_deviceOriginalTransform]) {}
        if(vehiclespawner_ufo_device.TeleportTo[vehiclespawner_ufo_deviceOriginalTransform]) {}
        if(vehiclespawner_war_bus_device.TeleportTo[vehiclespawner_war_bus_deviceOriginalTransform]) {}
        if(vendingmachine_device.TeleportTo[vendingmachine_deviceOriginalTransform]) {}
        if(vfxcreator_device.TeleportTo[vfxcreator_deviceOriginalTransform]) {}
        if(vfxspawner_device.TeleportTo[vfxspawner_deviceOriginalTransform]) {}
        if(videoplayer_device.TeleportTo[videoplayer_deviceOriginalTransform]) {}
        if(vinerail_device.TeleportTo[vinerail_deviceOriginalTransform]) {}
        if(visualeffect_powerup_device.TeleportTo[visualeffect_powerup_deviceOriginalTransform]) {}
        if(volumedevice.TeleportTo[volumedeviceOriginalTransform]) {}
        if(waterdevice.TeleportTo[waterdeviceOriginalTransform]) {}
        if(wildlifespawner_device.TeleportTo[wildlifespawner_deviceOriginalTransform]) {}
        if(wildsplant_device.TeleportTo[wildsplant_deviceOriginalTransform]) {}