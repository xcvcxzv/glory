shared.glory = {
    ["Main"] = {
        ["Authentication"] = {
            ["Script Key"] = " Put your key here ";
        };

        ["Checks"] = {
            ["Visible"] = {
                ["Enabled"] = true;
                ["Type"] = "Normal" --[[ Normal / Muzzle { Normal = seen from your camera, Muzzle = your gun's muzzle can actually hit them and they're in range } ]];
            };

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
    };

    ["Keybinds"] = {
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

            ["Camera Mode"] = { --[[ false = camlock will not work in said camera mode ]]
                ["First Person"] = true;
                ["Third Person"] = true;
                ["Shift Locked"] = true;
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

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = { --[[ Measured around the target, 100 = 1 stud ]]
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

                ["Range Based"] = { --[[ Overrides Part by distance, Close parts within Distance studs, Far parts past it ]]
                    ["Enabled"] = false;
                    ["Distance"] = 75;
                    ["Close"] = { "Head" };
                    ["Far"] = { "UpperTorso", "HumanoidRootPart" };
                };
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

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = { --[[ Measured around the target, 100 = 1 stud ]]
                    ["Left Width"] = 20;
                    ["Right Width"] = 20;
                    ["Upper Height"] = 20;
                    ["Lower Height"] = 20;
                };
            };
        };

        ["Trigger Bot"] = {
            ["Enabled"] = true;

            ["Settings"] = {
                ["Targeting"] = "Target" --[[ Target / Automatic ]];
                ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
                ["Fire When"] = "FOV" --[[ FOV / Crosshair ]];
            };

            ["Weapon Whitelist"] = {
                ["Enabled"] = true --[[ false = fires with anything held ]];

                ["Weapons"] = {
                    "[Double-Barrel SG]";
                    "[Revolver]";
                    "[TacticalShotgun]";
                };
            };

            ["Delay"] = { --[[ Milliseconds between shots, per weapon ]]
                ["[Double-Barrel SG]"] = 0;
                ["[Revolver]"] = 0;
                ["[TacticalShotgun]"] = 0;
            };

            ["FOV"] = {
                ["Enabled"] = false;
                ["Visible"] = false;
                ["Color"] = Color3.fromRGB(255, 255, 255);

                ["Size"] = { --[[ Measured around the target, 100 = 1 stud ]]
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

        ["Wallbang"] = {
            ["Enabled"] = true;
            ["Trigger Bot"] = false --[[ Trigger Bot also fires whenever a wallbang on your target is available ]];
        };

        ["Auto Shoot"] = { -- [[ Self explanatory ]]
            ["Enabled"] = true;

            ["Auto Reload"] = { --[[ Only reloads when your gun isn't already full ]]
                ["Enabled"] = true;
                ["Empty"] = true --[[ As soon as your gun is empty ]];
                ["Target Down"] = true --[[ When the player you were shooting gets knocked, dies or leaves ]];
                ["No Target"] = false --[[ Whenever there is nobody to shoot ]];
            };

            ["Shots Per Frame"] = 1 --[[ How many times it shoots every frame, having this too high may cause frame drops { recommend 1 through 10 }]];
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

        ["Jump Power"] = {
            ["Enabled"] = false;

            ["Settings"] = {
                ["Activation"] = "Toggle" --[[ Hold / Toggle ]];
                ["Mode"] = "Multiply" --[[ Multiply / Normal ]];
            };

            ["Value"] = { --[[ Multiply = times your normal jump ( 1 = Normal Jump ), Normal = your jump power is set to this value ]]
                ["Normal"] = 1.5;
                ["Shooting"] = 1.5;
                ["Reloading"] = 1.5;
                ["Low Health"] = 1.5;
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

        ["Void Save"] = { --[[ Makes sure you don't fall out of the map ]]
            ["Enabled"] = false;
            ["Depth"] = 1e6 --[[ How far down to look for ground ]];

            ["Teleport Away"] = {
                ["Enabled"] = false;
                ["Samples"] = 12 --[[ Points to scan for ground ]];
                ["Radius"] = 1500 --[[ How far out to scan ]];
            };
        };

        ["Panic Ground"] = { --[[ Teleports you down when you press the keybind ]]
            ["Enabled"] = true;
            ["Stabilize"] = true --[[ So you don't bounce back up after teleporting down]];
        };

        ["Anti Stomp"] = {
            ["Enabled"] = true;
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
                ["[Revolver]"] = "DH-Stars II";
                ["[TacticalShotgun]"] = "Galaxy";
                ["[Knife]"] = "Bitcoin";
            };

            ["Bullet Beams"] = { --[[ Hood Customs only, Weapon = Beam Name ]]
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
