getgenv().Options = {
    Owner = 'H3roHunt3rDrift',

    Gun = {
        StompOffset = 3.6,
    },

    WebSockets = {
        Enabled = false,
        Username = 'changethis', -- these credentials are used to login to the website to control your bot.
        Password = 'ChangeThis!', -- choose a unique combonation so that no one else can control your bot, do not share this!
    },
    
    OwnerLeave = {
        Timeout = 20,
    },

    CustomMessages = {}, -- custom spam type messages
    KickOnOwnerLeave = true,
    StartVoided = true,
    Multi = false -- set to true if you're using multiple stands
}

local req = request({
    Url = 'https://unemployed.altcontrol.club/altcontrol.lua',
    Method = 'GET',
    Headers = {
        ['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
    }
})

if req.StatusCode == 200 then
    loadstring(req.Body)()
end
