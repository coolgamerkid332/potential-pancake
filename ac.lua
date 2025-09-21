getgenv().Options = {
    Owner = 'DancerR0gueLight',

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

    KickOnOwnerLeave = true,
    StartVoided = true,
    Multi = false -- set to true if you're using multiple stands
}
 
loadstring(game:HttpGet('https://unemployed.altcontrol.club/altcontrol.lua'))()
