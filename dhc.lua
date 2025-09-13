getgenv().AutofarmSettings = {
    ["Key"] = "goviscute",
    ["Webhook"] = "---", 
    ["MessageWait"] = 60, -- message will be resent every hour
    ["Fps"] = 15, -- the fps will be capped at 10
    
    ["Serverhop"] = {
        ["Enabled"] = false, -- false to not serverhop
        ["Time"] = 10, -- serverhop after (amount) of minutes
        ["BlacklistedUsers"] = { 1234567890, 1234567890, 1234567890 } -- user ids of blacklisted users
    }
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/marvcolol/atmfarm/refs/heads/main/utilities.lua'))()
