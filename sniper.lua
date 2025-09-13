getgenv()._=
"Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai | If you pay for this script you get scammed, this script is completely free ok"
--[[

To get started in "getgenv().Owner" put the username you want to control the alt.

!! \\ MAKE SURE THE LocalPlayer AND LocalPlayer ACCOUNT ARE IN SAME SERVER // !!

--// Example \\
Before --> getgenv().Owner = "OWNER_USERNAME_HERE"
After  --> getgenv().Owner = "XK5NG"

^^ --> This is just the example don't put the username here]]

getgenv().Owner = "sunnychk1"

getgenv().Whitelist = { --Userids of who can control the bot
    1,
    2,
    3,
}

getgenv().Configuration = {
    ['Guns'] = {"Aug", "Rifle"}, --Default gun, recomended

    ['Strafe'] = "Random", --Strafe method, Normal - orbit; Random - random;

    ['Void'] = "Unhittable", --Void methods, Unhittable, Rotation, Meta, Lerp, Custom
    ['Lerp'] = 0.001, --Change the lerp speed, required Void method 'Lerp'
    ['CFrame'] = {0, 1, 0}, --Custom void cframe, required Void method 'Custom'; return the cframe value to math.random [exception Y];

    ['Prediction'] = 4, --Prediction, self explainatory
    ['Multiplier'] = 5, --Multiplier, multiplies the prediction value; dont change if you dont know what this does

    ['StompHeight'] = 4.4, --Stomp Y offset, self explainatory; affects stomp Z X offset
    ['RandomStompOffset'] = 1, --Stomp Z X offset, 0 = nil or disable; recomended for alts; '1' value is max for dh

    ['TimeBeforeVoid'] = 1.4, --Seconds before voiding with bring

    ["TimesAmmo"] = 5, --How much ammo will it buy
    ['SpareAmmo'] = 3, --How much ammo til start buying
    ['ForceAmmo'] = 1, --How much ammo to force buying

    ['InstantRespawn'] = false, --Instantly respawn you
    ['Cooldown'] = 120, --Seconds to respawn

    ['DoubleBarrelTime'] = 0.11, --Double-Barrel time to shoot (must have DoubleBarrel to true)

    ['CustomAnimationPlay'] = true, --Autoplay whether on the condition; Custom = Custom. acceptable
    ['CustomAnimation'] = 133641062999685, --Your custom animation assetid; must be valid (return on MarketplaceService to check if valid or not), current nil
    ['CustomAnimationSpeed'] = 1, --Playback speed can be anything

    ['AuraRange'] = 250, --Range on how far will be the kill aura

    ['CrewID'] = 32570691, --Crew id, preferable to be in both same crew alt/main
    ['VoidView'] = false, --Puts urs camera to void, gradually increasing ur fps
    ['AntiStomp'] = true, --Self explainatory
    ['HideScreen'] = false, --Boost fps and lowered cpu consumption, recomended
    ['CustomPrefix'] = "!", --Bot prefix
    ['Fpscap'] = 167 --Capped fps
}loadstring(game:HttpGet("https://xk5ng.github.io/Sniper-Bot-Rewrite"))()
