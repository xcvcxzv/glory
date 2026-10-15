shared.glory = {
    ["Main"] = {
        ["Authentication"] = {
            ["Script Key"] = " Put your key here ";
        };

        ["Checks"] = {
            ["Visible"] = true;
            ["Visible When Locking"] = false --[[ If you want to lock on through walls, set this to false ]];
            ["Knocked"] = true;
            ["Grabbed"] = true;
            ["Crew"] = true;
            ["Friend"] = false;
            ["Forcefield"] = false;

            ["Local"] = { --[[ Checks applied to yourself ]]
                ["Knocked"] = true;
                ["Grabbed"] = false;
                ["Forcefield"] = false;
                ["Typing"] = true;
            };
        };

        ["Panic"] = { --[[ Pressing the keybind turns every feature off at once ]]
            ["Enabled"] = true;
            ["Mode"] = "Disable" --[[ Disable / Unload { Disable turns everything off, press again to turn it all back on, Unload completely removes the script, you have to re-execute it ]];

            ["Settings"] = {
                ["Clear Target"] = true --[[ Untargets instantly ]];
                ["Revert Character"] = true --[[ Reverts speed and other modifications you may have enabled ]];
                ["Revert Cosmetics"] = false --[[ Stops everything in cosmetic section ]];
                ["Hide Visuals"] = true --[[ Disables ESP, FOV visualizers ]];
            };
        };
    };

    ["Keybinds"] = {
        ["Main"] = {
            ["Panic"] = "Delete";
        };

        ["Combat"] = {
            ["Target"] = "C";
            ["Trigger Bot"] = "V";
        };

        ["Character"] = {
            ["Speed"] = "T";
            ["Jump Power"] = "J";
            ["Wall Jump"] = "Y";
            ["Inventory Sorter"] = "F2";
            ["Panic Ground"] = "X";
        };

        ["Visuals"] = {
            ["ESP"] = "P";
        };
    };

    ["Combat"] = {
        ["Camlock"] = {
            ["Enabled"] = true;

            ["Targeting"] = "Target" --[[ Target / Automatic ]];
            ["Activation"] = "Toggle" --[[ Hold / Toggle ]];

            ["Weapon Whitelist"] = {
                ["Enabled"] = false --[[ false = works all the time ]];

                ["Weapons"] = {
                    "[Double-Barrel SG]";
                    "[Revolver]";
                    "[TacticalShotgun]";
                };
            };

            ["Hit Location"] = {
                ["Part"] = { "Head" } --[[ Any R15 Parts, aims at whichever listed part is nearest your cursor, Closest = every part ]];
                ["Point"] = {true; 100} --[[ Enabled, Scale ( Percentage ) { Aims at the point on the chosen part nearest your cursor, 100 = across the entire part, 50 = around 50% of the center } ]];
            };

            ["Prediction"] = {
                ["Enabled"] = false;

                ["Value"] = {
                    ["X"] = 0;
                    ["Y"] = 0;
                    ["Z"] = 0;
                };
            };

            ["Point Correction"] = { --[[ Stops prediction from aiming into a wall when your target runs into cover ]]
                ["Enabled"] = true;
                ["Mode"] = "Clamp" --[[ Clamp / Closest / Hold { Clamp pulls the aim point back to just before the wall, Closest aims at the nearest visible point on the target, Hold stops moving your aim until they're visible again } ]];
            };

            ["Camera Mode"] = { --[[ false = camlock will not work in said camera mode ]]
                ["First Person"] = true;
                ["Third Person"] = true;
                ["Shift Locked"] = true;
            };

            ["Reaction Delay"] = { --[[ Min, Max ( Milliseconds ) { Random wait before your aim starts moving, like a real player's reaction time } ]]
                ["Enabled"] = false;

                ["Acquire"] = {120; 200} --[[ Before locking onto a new target ]];
                ["Switch"] = {150; 250} --[[ Before swapping from one target to another ]];
                ["Reacquire"] = {80; 160} --[[ After your target breaks line of sight and comes back ]];
            };

            ["Snappiness"] = {
                ["Enabled"] = false;
                ["Ramp"] = {false; 0.5} --[[ Enabled, Value ( seconds ) ]];

                ["Value"] = { --[[ 0 = Smooth, 1 = Blatant, vice versa ]]
                    ["X"] = 0.1;
                    ["Y"] = 0.1;
                };

                ["Easing"] = {
                    ["Style"] = "Linear" --[[ https://create.roblox.com/docs/reference/engine/enums/EasingStyle ]];
                    ["Direction"] = "InOut" --[[ In / Out / InOut ]];
                };
            };

            ["Curve"] = { --[[ Moves your aim to the target along a bezier curve instead of a straight line ]]
                ["Enabled"] = false;
                ["Type"] = "Cubic" --[[ Quadratic / Cubic ]];

                ["Bend"] = {
                    ["Strength"] = {0.1; 0.3} --[[ Min, Max { How far the curve bends off a straight line, 0 is straight, 1 is a wide arc } ]];
                    ["Side"] = "Random" --[[ Random / Left / Right { Random picks a side on every flick, Left and Right always bend that way } ]];
                };

                ["Overshoot"] = { --[[ Goes slightly past the target then goes back ]]
                    ["Enabled"] = false;
                    ["Amount"] = {2; 5} --[[ Min, Max ( Percentage ) { How far past the target it goes before correcting } ]];
                };

                ["Humanization"] = {
                    ["Enabled"] = false;
                    ["Amount"] = 0.5 --[[ Scale applied to the sampled movement ]];

                    ["Sample"] = {
                        ["Rate"] = 30 --[[ Sample playback rate ]];
                        ["Points"] = {
                            {0.00; 0.08}; {0.06; 0.04};
                            {0.08; -0.03}; {0.00; -0.07};
                            {-0.07; -0.03}; {-0.06; 0.04};
                        };
                    };
                };
            };

            ["Stabilizer"] = { --[[ Reduces small camera movements while locked ]]
                ["Enabled"] = false;
                ["Strength"] = 0.5 --[[ 0 - 1 ]];
                ["Deadzone"] = 2 --[[ Pixels { Camera adjustments smaller than this are ignored } ]];
                ["Lag"] = {false; 40} --[[ Enabled, Milliseconds ]];
            };

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 20;
                    ["Right Width"] = 20;
                    ["Upper Height"] = 20;
                    ["Lower Height"] = 20;
                };
            };
        };

        ["Silent Aim"] = {
            ["Enabled"] = true;
            ["Targeting"] = "Target" --[[ Target / Automatic ]];
            ["Hit Chance"] = 100 --[[ Percentage ]];

            ["Weapon Whitelist"] = {
                ["Enabled"] = true --[[ false = redirects with anything held ]];

                ["Weapons"] = {
                    "[Double-Barrel SG]";
                    "[Revolver]";
                    "[TacticalShotgun]";
                };
            };

            ["Hit Location"] = {
                ["Part"] = { "Closest" } --[[ Any R15 Parts, aims at whichever listed part is nearest your cursor, Closest = every part ]];
                ["Point"] = {true; 55} --[[ Enabled, Scale ( Percentage ) { Aims at the point on the chosen part nearest your cursor, 100 = across the entire part, 50 = around 50% of the center } ]];
            };

            ["Prediction"] = {
                ["Enabled"] = false;
                ["Mode"] = "Regular" --[[ Regular / Automatic ]];

                ["Value"] = { --[[ Regular only ]]
                    ["X"] = 0;
                    ["Y"] = 0;
                    ["Z"] = 0;
                };

                ["Scale"] = 1 --[[ Automatic only ]];
            };

            ["Point Correction"] = { --[[ Stops prediction from redirecting into a wall when your target runs into cover ]]
                ["Enabled"] = true;
                ["Mode"] = "Clamp" --[[ Clamp / Closest / Skip { Clamp pulls the hit position back to just before the wall, Closest hits the nearest visible point on the target, Skip doesn't redirect that shot } ]];
            };

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 20;
                    ["Right Width"] = 20;
                    ["Upper Height"] = 20;
                    ["Lower Height"] = 20;
                };
            };
        };

        ["Trigger Bot"] = {
            ["Enabled"] = true;
            ["Targeting"] = "Target" --[[ Target / Automatic ]];
            ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
            ["Fire When"] = "FOV" --[[ FOV / Crosshair ]];

            ["Weapon Whitelist"] = {
                ["Enabled"] = true --[[ false = fires with anything held ]];

                ["Weapons"] = {
                    "[Double-Barrel SG]";
                    "[Revolver]";
                    "[TacticalShotgun]";
                };
            };

            ["Delay"] = { --[[ Min, Max ( milliseconds ) { Initial = before the first shot on a target, Sequential = between every shot after, Weapon Switch = after switching to that weapon before it can fire } ]]
                ["[Double-Barrel SG]"] = {
                    ["Initial"] = {0; 0};
                    ["Sequential"] = {0; 0};
                    ["Weapon Switch"] = {0; 0};
                };

                ["[Revolver]"] = {
                    ["Initial"] = {0; 0};
                    ["Sequential"] = {0; 0};
                    ["Weapon Switch"] = {0; 0};
                };

                ["[TacticalShotgun]"] = {
                    ["Initial"] = {0; 0};
                    ["Sequential"] = {0; 0};
                    ["Weapon Switch"] = {0; 0};
                };
            };

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 20;
                    ["Right Width"] = 20;
                    ["Upper Height"] = 20;
                    ["Lower Height"] = 20;
                };
            };
        };
    };

    ["Future"] = { --[[ Reduces fake bullets, recommend to keep on ]]
        ["Enabled"] = true;

        ["Multiplier"] = { --[[ 1 = Calculated lead, 0 = No lead on that axis ]]
            ["X"] = 1;
            ["Y"] = 1;
            ["Z"] = 1;
        };
    };

    ["Gun Modifications"] = {
        ["Spread"] = {
            ["Enabled"] = true;

            ["Weapons"] = { --[[ Min, Max { 1 = Normal Spread, 0 = No Spread } ]]
                ["[Double-Barrel SG]"] = {0; 0};
                ["[TacticalShotgun]"] = {0; 0};
            };
        };

        ["Damage"] = {
            ["Enabled"] = true;

            ["Weapons"] = { --[[ Full / High / Normal / Minimum ]]
                ["[Double-Barrel SG]"] = "Full";
                ["[Revolver]"] = "Full";
                ["[TacticalShotgun]"] = "Full";
            };
        };

        ["Delay"] = {
            ["Enabled"] = true;

            ["Weapons"] = { --[[ Percentage of normal delay { 100 = Normal, 50 = Half, 0 = No Delay } ]]
                ["[Double-Barrel SG]"] = 0;
                ["[Revolver]"] = 0;
                ["[TacticalShotgun]"] = 0;
                ["[Deagle]"] = 0;
            };
        };
    };

    ["Character"] = {
        ["Speed"] = {
            ["Enabled"] = true;

            ["Settings"] = {
                ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
                ["Mode"] = "Velocity" --[[ Multiply / Normal / Velocity ]];
                ["Lerp Speed"] = 0.35 --[[ Velocity only, how fast you speed up, higher = snappier ]];
            };

            ["Value"] = { --[[ Multiply = times your normal speed ( 1 = Normal Speed ), Normal = your walk speed is set to this value ( 16 = Default ), Velocity = how fast you slide in studs per second ]]
                ["Normal"] = 1250;
                ["Shooting"] = 1250;
                ["Reloading"] = 1250;
                ["Low Health"] = 1250;
            };
        };

        ["Wall Jump"] = {
            ["Enabled"] = true;

            ["Multiplier"] = { --[[ 1 = Normal Jump Power ]]
                ["Normal"] = 1.2;
                ["Shooting"] = 1.2;
                ["Reloading"] = 1.2;
                ["Low Health"] = 1.2;
            };
        };

        ["Misc"] = {
            ["No Jump Cooldown"] = true;
            ["No Tripping"] = true;
        };

        ["Inventory Sorter"] = {
            ["Enabled"] = true;

            ["Order"] = { --[[ Slot order from 1 to 10, "" = fill the slot with whatever is left over ]]
                "[Double-Barrel SG]";
                "[Revolver]";
                "[TacticalShotgun]";
                "[Knife]";
                "[Katana]" --[[ For void falls games]];
            };
        };
    };

    ["Visuals"] = {
        ["ESP"] = {
            ["Enabled"] = true;

            ["Name"] = {
                ["Enabled"] = true;
                ["Text Size"] = 8;

                ["Colors"] = {
                    ["Normal"] = Color3.fromRGB(255, 255, 255);
                    ["Target"] = Color3.fromRGB(235, 145, 160);
                };
            };

            ["Bars"] = { --[[ Side { Left / Right / Bottom }, Gradient { Full, Empty } ]]
                ["Health"] = {
                    ["Enabled"] = true;
                    ["Side"] = "Bottom";
                    ["Gradient"] = {Color3.fromRGB(0, 255, 60); Color3.fromRGB(255, 0, 0)};
                };

                ["Armor"] = {
                    ["Enabled"] = true;
                    ["Side"] = "Bottom";
                    ["Gradient"] = {Color3.fromRGB(0, 200, 255); Color3.fromRGB(0, 50, 255)};
                };
            };
        };
    };

    ["Cosmetics"] = {
        ["Skin Changer"] = {
            ["Enabled"] = true;
            ["Unlock All"] = false --[[ Shows every skin as owned in the skins menu ]];

            ["Skins"] = { --[[ Weapon = Skin Name ]]
                ["[Double-Barrel SG]"] = "Galaxy";
                ["[Revolver]"] = "DH-Stars II";
                ["[TacticalShotgun]"] = "Galaxy";
                ["[Knife]"] = "GPO-Knife Prestige";
            };
        };

        ["Avatar Changer"] = {
            ["Enabled"] = false;
            ["Target"] = "" --[[ Username or UserId ]];

            ["Appearance"] = {
                ["Skinny"] = false;
                ["Headless"] = false;
                ["Korblox"] = false;
            };
        };
    };
}
