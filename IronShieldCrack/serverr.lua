os.exit = function()
    print("Script tried to os exit LMAO")
end
_print = print
print = function(a)
    _print("^4[SHIT] "..a)
end

StopResource = function()
    print("Script tried to Stop Resource LMAO")
end


_PerformHttpRequest = PerformHttpRequest
PerformHttpRequest = function(url, cb, method, data, headers)
    if string.match(url, "http://ironshield.xyz:4000/") then
        return
    end

   _PerformHttpRequest(url, cb, method, data, headers)
end