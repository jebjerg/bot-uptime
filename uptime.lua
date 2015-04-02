function check_uptime(channel, text)
    if string.match(text, "^(uptime|status)") ~= nil then
        uptime = io.popen("uptime"):read("*a")
        bot.privmsg(channel, "uptime: "..uptime)
    end
end

bot.hook("PRIVMSG", check_uptime)
