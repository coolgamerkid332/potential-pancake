getgenv()._=
"Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai | If you pay for this script you get scammed, this script is completely free ok"
--[[

To get started in "getgenv().Owner" put the username you want to control the alt.

!! \\ MAKE SURE THE LocalPlayer AND LocalPlayer ACCOUNT ARE IN SAME SERVER // !!

--// Example \\
Before --> getgenv().Owner = "OWNER_USERNAME_HERE"
After  --> getgenv().Owner = "XK5NG"

^^ --> This is just the example don't put the username here]]

getgenv().Owner = "JulianByteLava"

getgenv().Whitelist = { --Endless bot whitelist
    1,
    2,
    3,
    4
}

getgenv().Configuration = {
    ['Guns'] = {"Rifle", "Flintlock"}, --Default gun, recomended

    ['Prediction'] = 1, --Prediction, self explainatory
    ['Multiplier'] = 3, --Multiplier, multiplies the prediction value; dont change if you dont know what this does

    ['StompHeight'] = 5, --Stomp Y offset, self explainatory; affects stomp Z X offset
    ['RandomStompOffset'] = 0, --Stomp Z X offset, 0 = nil or disable; recomended for alts; '5' value is max for dh

    ['SpareAmmo'] = 8, --How much ammo til start buying
    ['ForceAmmo'] = 4, --How much ammo to force buying

    ['CrewID'] = 32570691, --Crew id, preferable to be in both same crew alt/main
    ['AntiStomp'] = true, --Self explainatory
    ['LowGraphic'] = true, --Self explainatory
    ['HideScreen'] = false, --Boost fps and lowered cpu consumption, recomended
    ['CustomPrefix'] = "!", --Bot prefix
    ['Fpscap'] = 60 --Capped fps
}loadstring(game:HttpGet("https://xk5ng.github.io/Sniper-Bot-Rewrite"))()
