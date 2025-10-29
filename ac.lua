script_key="yvykHkHJgWMcdsjxyPVFEXAkGCTXnMWY";
getgenv().__altcontrol = "get script @ discord.gg/altcontrol"
getgenv().altowners = {"XxFlameChaosxX2008"}
getgenv().altcontrol = {
    customcommands = {
        [",stomp"] = "!s" --> example
    }, --> custom prefixes
    webhook = "https://discord.com/api/webhooks/1152087066386104430/UvbIIof9pgtB15q2FSPVcVlwjkU4Q6v7UBJttjgbg7uc6u3hpV1zrebRmOGOJ3knOPFx", --> sends kill, stomp, and death events to this DISCORD webhook
    defaultguns = {"rifle", "flintlock"}, --> automatically buys these set guns when no guns are detected
    websockets = {
        enabled = false,
        key = 'CHANGE_THIS' --> optional
    },
    emotes = {
        popular = 102545075240470 --> name of emote = emote asset id
    }, --> custom emotes ex: emotename: emoteid
    authorized = "XxFlameChaosxX2008", --> The user able to add owners (A ROBLOX USERNAME)
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6d1c9de8b5eea2d084c83b7f8b479185.lua"))()
