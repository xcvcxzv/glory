shared.glory = {
    ["Main"] = {
        ["Authentication"] = {
            ["Script Key"] = "LaYfwSNReeNnyamdDDwPPxLYBUJSBWgg";
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
            ["Enabled"] = false;
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
            ["Trigger Bot"] = "P";
        };

        ["Character"] = {
            ["Speed"] = "T";
            ["Wall Jump"] = "Y";
        };

        ["Other"] = {
            ["Inventory Sorter"] = "F2";
            ["Speed Macro"] = "Q";
            ["Noclip Macro"] = "N";
        };

        ["Visuals"] = {
            ["ESP"] = "Z";
            ["Overlay"] = "K";
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
                ["Point"] = {false; 100} --[[ Enabled, Scale ( Percentage ) { Aims at the point on the chosen part nearest your cursor, 100 = across the entire part, 50 = around 50% of the center } ]];
            };

            ["Prediction"] = {
                ["Enabled"] = false;

                ["Value"] = {
                    ["X"] = 0;
                    ["Y"] = 0;
                    ["Z"] = 0
                };
            };

            ["Point Correction"] = { --[[ Stops prediction from aiming into a wall when your target runs into cover ]]
                ["Enabled"] = true;
                ["Mode"] = "Hold" --[[ Clamp / Closest / Hold { Clamp pulls the aim point back to just before the wall, Closest aims at the nearest visible point on the target, Hold stops moving your aim until they're visible again } ]];
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
                ["Enabled"] = true;
                ["Ramp"] = {false; 0.025} --[[ Enabled, Value ( seconds ) ]];

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
                ["Enabled"] = true;
                ["Type"] = "Cubic" --[[ Quadratic / Cubic ]];

                ["Bend"] = {
                    ["Strength"] = {0; 0} --[[ Min, Max { How far the curve bends off a straight line, 0 is straight, 1 is a wide arc } ]];
                    ["Side"] = "Right" --[[ Random / Left / Right { Random picks a side on every flick, Left and Right always bend that way } ]];
                };

                ["Overshoot"] = { --[[ Goes slightly past the target then goes back ]]
                    ["Enabled"] = false;
                    ["Amount"] = {15; 15} --[[ Min, Max ( Percentage ) { How far past the target it goes before correcting } ]];
                };

                ["Humanization"] = {
                    ["Enabled"] = false;
                    ["Amount"] = 1 --[[ Scale applied to the sampled movement ]];

                    ["Sample"] = {
                        ["Rate"] = 20 --[[ Sample playback rate ]];
                        ["Points"] = {
                            {0.00; 0.08}; {0.06; 0.04};
                            {0.08; -0.03}; {0.00; -0.07};
                            {-0.07; -0.03}; {-0.06; 0.04};
                        };
                    };
                };
            };

            ["Stabilizer"] = { --[[ Reduces small camera movements while locked ]]
                ["Enabled"] = true;
                ["Strength"] = 1 --[[ 0 - 1 ]];
                ["Deadzone"] = 25 --[[ Pixels { Camera adjustments smaller than this are ignored } ]];
                ["Lag"] = {true; 40} --[[ Enabled, Milliseconds ]];
            };

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 3;
                    ["Right Width"] = 3;
                    ["Upper Height"] = 3;
                    ["Lower Height"] = 3;
                };
            };
        };

        ["Silent Aim"] = {
            ["Enabled"] = true;
            ["Targeting"] = "Automatic" --[[ Target / Automatic ]];
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
                ["Point"] = {false; 35} --[[ Enabled, Scale ( Percentage ) { Aims at the point on the chosen part nearest your cursor, 100 = across the entire part, 50 = around 50% of the center } ]];
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
                ["Enabled"] = false;
                ["Mode"] = "Closest" --[[ Clamp / Closest / Skip { Clamp pulls the hit position back to just before the wall, Closest hits the nearest visible point on the target, Skip doesn't redirect that shot } ]];
            };

            ["FOV"] = {
                ["Enabled"] = true;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 1;
                    ["Right Width"] = 1;
                    ["Upper Height"] = 2;
                    ["Lower Height"] = 2;
                };
            };
        };

        ["Trigger Bot"] = {
            ["Enabled"] = true;
            ["Targeting"] = "Automatic" --[[ Target / Automatic ]];
            ["Activation"] = "Hold" --[[ Hold / Toggle ]];
            ["Fire When"] = "FOV" --[[ FOV / Crosshair ]];
            ["Shoot Chance"] = 100 --[[ Percentage ]];

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
                ["Enabled"] = true;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = {
                    ["Left Width"] = 1;
                    ["Right Width"] = 1;
                    ["Upper Height"] = 2;
                    ["Lower Height"] = 2;
                };
            };
        };

        ["Gun Settings"] = { --[[ Per category overrides, used while a weapon from that category is held ]]
            ["Enabled"] = false;

            ["Range"] = { --[[ Studs between you and the target, past Medium counts as Far ]]
                ["Close"] = 16;
                ["Medium"] = 42;
            };

            ["Categories"] = { --[[ Keep each weapon in only one category, if a weapon is listed in two it is random which one gets used ]]
                ["Shotguns"] = {
                    ["Weapons"] = { "[Double-Barrel SG]"; "[TacticalShotgun]"; "[Shotgun]"; "[Drum-Shotgun]" };

                    ["FOV"] = { --[[ Replaces the FOV size of every feature with FOV enabled, X = {Left Width; Right Width}, Y = {Upper Height; Lower Height}, 100 = 1 stud ]]
                        ["Close"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Medium"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Far"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                    };

                    ["Snappiness"] = { --[[ X, Y by range { Camlock, needs Snappiness enabled } ]]
                        ["Close"] = {0.1; 0.1};
                        ["Medium"] = {0.1; 0.1};
                        ["Far"] = {0.1; 0.1};
                    };

                    ["Prediction"] = { --[[ X, Y, Z by range ]]
                        ["Camlock"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };

                        ["Silent Aim"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };
                    };

                    ["Hit Chance"] = { --[[ Silent Aim, percentage by range ]]
                        ["Close"] = 100;
                        ["Medium"] = 100;
                        ["Far"] = 100;
                    };

                    ["Trigger Bot"] = {
                        ["Shoot Chance"] = { --[[ Percentage by range ]]
                            ["Close"] = 100;
                            ["Medium"] = 100;
                            ["Far"] = 100;
                        };

                        ["Delay"] = { --[[ Min, Max ( milliseconds ) by range ]]
                            ["Initial"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Sequential"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Weapon Switch"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                        };
                    };

                    ["Air"] = { --[[ Used while your target is in the air, overrides the range values above ]]
                        ["Snappiness"] = {0.1; 0.1} --[[ X, Y { Camlock, needs Snappiness enabled } ]];
                        ["FOV"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} } --[[ Same format as FOV above ]];
                        ["Hit Chance"] = 100 --[[ Silent Aim ]];
                        ["Shoot Chance"] = 100 --[[ Trigger Bot ]];

                        ["Delay"] = { --[[ Trigger Bot, Min, Max ( milliseconds ) ]]
                            ["Initial"] = {0; 0};
                            ["Sequential"] = {0; 0};
                            ["Weapon Switch"] = {0; 0};
                        };
                        ["Prediction"] = { --[[ X, Y, Z ]]
                            ["Camlock"] = {0.12; 0.08; 0.12};
                            ["Silent Aim"] = {0.12; 0.08; 0.12};
                        };
                    };
                };

                ["Pistols"] = {
                    ["Weapons"] = { "[Revolver]"; "[Deagle]"; "[Glock]"; "[Silencer]"; "[Flintlock]" };

                    ["FOV"] = {
                        ["Close"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Medium"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Far"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                    };

                    ["Snappiness"] = {
                        ["Close"] = {0.1; 0.1};
                        ["Medium"] = {0.1; 0.1};
                        ["Far"] = {0.1; 0.1};
                    };

                    ["Prediction"] = {
                        ["Camlock"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };

                        ["Silent Aim"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };
                    };

                    ["Hit Chance"] = {
                        ["Close"] = 100;
                        ["Medium"] = 100;
                        ["Far"] = 100;
                    };

                    ["Trigger Bot"] = {
                        ["Shoot Chance"] = {
                            ["Close"] = 100;
                            ["Medium"] = 100;
                            ["Far"] = 100;
                        };

                        ["Delay"] = {
                            ["Initial"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Sequential"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Weapon Switch"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                        };
                    };

                    ["Air"] = {
                        ["Snappiness"] = {0.1; 0.1};
                        ["FOV"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Hit Chance"] = 100;
                        ["Shoot Chance"] = 100;

                        ["Delay"] = {
                            ["Initial"] = {0; 0};
                            ["Sequential"] = {0; 0};
                            ["Weapon Switch"] = {0; 0};
                        };
                        ["Prediction"] = {
                            ["Camlock"] = {0.12; 0.08; 0.12};
                            ["Silent Aim"] = {0.12; 0.08; 0.12};
                        };
                    };
                };

                ["Others"] = {
                    ["Weapons"] = { "[AK47]"; "[AR]"; "[SMG]"; "[P90]"; "[DrumGun]"; "[LMG]"; "[SilencerAR]"; "[AUG]"; "[Rifle]" };

                    ["FOV"] = {
                        ["Close"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Medium"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Far"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                    };

                    ["Snappiness"] = {
                        ["Close"] = {0.1; 0.1};
                        ["Medium"] = {0.1; 0.1};
                        ["Far"] = {0.1; 0.1};
                    };

                    ["Prediction"] = {
                        ["Camlock"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };

                        ["Silent Aim"] = {
                            ["Close"] = {0; 0; 0};
                            ["Medium"] = {0; 0; 0};
                            ["Far"] = {0; 0; 0};
                        };
                    };

                    ["Hit Chance"] = {
                        ["Close"] = 100;
                        ["Medium"] = 100;
                        ["Far"] = 100;
                    };

                    ["Trigger Bot"] = {
                        ["Shoot Chance"] = {
                            ["Close"] = 100;
                            ["Medium"] = 100;
                            ["Far"] = 100;
                        };

                        ["Delay"] = {
                            ["Initial"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Sequential"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                            ["Weapon Switch"] = { ["Close"] = {0; 0}; ["Medium"] = {0; 0}; ["Far"] = {0; 0} };
                        };
                    };

                    ["Air"] = {
                        ["Snappiness"] = {0.1; 0.1};
                        ["FOV"] = { ["X"] = {1; 1}; ["Y"] = {2; 2} };
                        ["Hit Chance"] = 100;
                        ["Shoot Chance"] = 100;

                        ["Delay"] = {
                            ["Initial"] = {0; 0};
                            ["Sequential"] = {0; 0};
                            ["Weapon Switch"] = {0; 0};
                        };
                        ["Prediction"] = {
                            ["Camlock"] = {0.12; 0.08; 0.12};
                            ["Silent Aim"] = {0.12; 0.08; 0.12};
                        };
                    };
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
            ["Enabled"] = false;

            ["Weapons"] = { --[[ Min, Max { 1 = Normal Spread, 0 = No Spread } ]]
                ["[Double-Barrel SG]"] = {1; 1};
                ["[TacticalShotgun]"] = {1; 1};
            };
        };

        ["Damage"] = {
            ["Enabled"] = true;

            ["Weapons"] = { --[[ Full / High / Normal / Minimum ]]
                ["[Double-Barrel SG]"] = "High";
                ["[Revolver]"] = "High";
                ["[TacticalShotgun]"] = "Full";
            };
        };

        ["Delay"] = {
            ["Enabled"] = false;

            ["Weapons"] = { --[[ Percentage of normal delay { 100 = Normal, 50 = Half, 0 = No Delay } ]]
                ["[Double-Barrel SG]"] = 100;
                ["[Revolver]"] = 100;
                ["[TacticalShotgun]"] = 100;
                ["[Deagle]"] = 100;
            };
        };
    };

    ["Character"] = {
        ["Speed"] = {
            ["Enabled"] = true;

            ["Settings"] = {
                ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
                ["Mode"] = "Multiply" --[[ Multiply / Normal / Velocity ]];
                ["Lerp Speed"] = 0.35 --[[ Velocity only, how fast you speed up, higher = snappier ]];
            };

            ["Value"] = { --[[ Multiply = times your normal speed ( 1 = Normal Speed ), Normal = your walk speed is set to this value ( 16 = Default ), Velocity = how fast you slide in studs per second ]]
                ["Normal"] = 1.1;
                ["Shooting"] = 1.02;
                ["Reloading"] = 1.01;
                ["Low Health"] = 1.09;
            };
        };

        ["Wall Jump"] = {
            ["Enabled"] = true;

            ["Multiplier"] = { --[[ 1 = Normal Jump Power ]]
                ["Normal"] = 1.1;
                ["Shooting"] = 1.1;
                ["Reloading"] = 1.1;
                ["Low Health"] = 1.1;
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

        ["Macro"] = {
            ["Speed"] = {
                ["Enabled"] = false;
                ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
                ["Method"] = "First Person" --[[ First Person / Third Person / Shift Lock ]];
                ["Interval"] = 9.5 --[[ First Person only, milliseconds zoomed in, zoomed out stays 3x this ]];
                ["Amount"] = 120 --[[ First Person only, how far each scroll goes ]];
                ["Delay"] = 1 --[[ Third Person / Shift Lock only, frames between each step ]];
            };

            ["Noclip"] = { --[[ Rapidly equips and unequips the listed weapons from your backpack ]]
                ["Enabled"] = false;
                ["Activation"] = "Hold" --[[ Hold / Toggle ]];
                ["Interval"] = 0.1 --[[ Seconds each weapon stays equipped ]];
                ["Weapons"] = { "[TacticalShotgun]"; "[Shotgun]" };
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

        ["Overlay"] = {
            ["Enabled"] = true;
            ["Style"] = "Side" --[[ Side / Stacked ]];

            ["Display"] = {
                ["Content"] = "/getglory";
                ["Brand"] = "glory.cc" --[[ Stacked only ]];

                ["Position"] = {
                    ["X"] = -20;
                    ["Y"] = 0;
                };

                ["Font"] = 3 --[[ https://create.roblox.com/docs/reference/engine/enums/Font ]];
                ["Text Size"] = 16;
                ["Active Only"] = false --[[ Side only, hides disabled features ]];
            };

            ["Colors"] = {
                ["Text"] = Color3.fromRGB(180, 180, 180);
                ["Accent"] = Color3.fromRGB(180, 140, 255);
                ["Enabled"] = Color3.fromRGB(255, 255, 255);
                ["Disabled"] = Color3.fromRGB(100, 100, 100);
            };
        };
    };

    ["Cosmetics"] = {
        ["Skin Changer"] = {
            ["Enabled"] = true;
            ["Unlock All"] = false --[[ Shows every skin as owned in the skins menu ]];

            ["Skins"] = { --[[ Weapon = Skin Name ]]
                ["[Double-Barrel SG]"] = "Galaxy";
                ["[Revolver]"] = "Galaxy";
                ["[TacticalShotgun]"] = "Galaxy";
                ["[Knife]"] = "Love Kukri";
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
