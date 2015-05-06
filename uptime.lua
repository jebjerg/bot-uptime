rex = require "rex_pcre"

function check_uptime(channel, text)
    if rex.match(text, "^(uptime|status)") ~= nil then
        uptime = io.popen("uptime"):read("*a")
        bot.privmsg(channel, "uptime: "..uptime)
    end
end

bot.hook("PRIVMSG", "check_uptime")
