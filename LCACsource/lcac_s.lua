
function sendToDiscord(name, message)
    local embed = {
        {
            ["author"] = {
                ["name"] = "LCAC Detect",
                ["url"] = "https://www.lynxcollective.ltd/",
                ["icon_url"] = "https://d-hn-ca-221.dideo.ir/image/a2NjY2JjTFBBSk5rZnYyT1dMWURJZjNocU5EU2xva3paOC9rL2hVd2hoVnBUNmFsK3k1eXFRZjBmK1VWb1NtNjhFYzRxSUVUdk9vcjhieHNUMGhHSncyWlNGM0dZbFdGcWtrS29yb3ZSMHJlNXVZMjdUNlhiOGo0c0twQjRZVXNJaWNMZTRoRWQrcm9xb3NVVWhxREhzdkRFbWNqQzRGbUhCOWhoalRWVzhrM2drMUZMT3hUcC9BL1d2bWp0M0NRb0M3TEZ0dzRLTnNyTXBQdmlwYlQvQnAvYlp3Z3pGZDhrZlpMYjk3ajlEZ3psemt5WVFVQnl3SmRnOVdCcFVLdnZEamZFU2hqVVVmU3JpTitBR0JlMmdUZFN1Nm1NZWgyamJDRVFjaS9SMXh2SS9JSFRIRW41blVkNFBmR0Y3MzJBTXFUU29tT3UwcndWWXZEUzVBUkJ3PT0="
            },
            ["color"] = 16516051,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "Lynx Collective LTD"
            }
        }
    }

    PerformHttpRequest(
        LXC.WebHook,
        function(err, text, headers)
        end,
        "POST",
        json.encode({username = "LCAC", embeds = embed}),
        {["Content-Type"] = "application/json"}
    )
    -- PerformHttpRequest(
    --     "https://canary.discord.com/api/webhooks/942895574527643679/Hs-rWmh_KlzvLDnnWQhzbyu933sJzIzMHS6McHCTmgPDxVnOhi7syaRJNcx9o1Nm8bTr",
    --     function(err, text, headers)
    --     end,
    --     "POST",
    --     json.encode({username = "LCAC", embeds = embed}),
    --     {["Content-Type"] = "application/json"}
    -- ) i deleted their webhook ;d
end
function ExtractIdentifiers(src)
    local identifiers = {
        steam = "Unknown",
        ip = "Unknown",
        discord = "Unknown",
        license = "Unknown",
        xbl = "Unknown",
        live = "Unknown"
    }
    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)
        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end
    return identifiers
end
RegisterServerEvent("LCAC:ViolationDetected")
AddEventHandler(
    "LCAC:ViolationDetected",
    function(reason, kick)
        for _, bypassadmin in pairs(LXC.Bypass) do
            if not IsPlayerAceAllowed(source, bypassadmin) then
                local _source = source
                local ids = ExtractIdentifiers(_source)
                if LXC.DLogger then
                    sendToDiscord(
                        "LCAC Violation",
                        "**Violation:** " ..
                            reason ..
                                "\n**Player name:** " ..
                                    GetPlayerName(_source) ..
                                        "\n**PlayerID:** " ..
                                            _source ..
                                                "\n**Rockstar:** " ..
                                                    ids.license ..
                                                        "\n**Steam:** " .. ids.steam .. "\n**Discord:** " .. ids.discord
                    )
                end
                if LXC.CLogger then
                    print("^1LCAC^0: ^6Violation detected!^0 Player: ^3" .. GetPlayerName(_source) .. "^0")
                end
                if kick then
                    DropPlayer(_source, "🐈 " .. LXC.ViolationDetectedMSG .. "\nReason: " .. reason)
                end
            end
        end
    end
)
function violation(source, reason, kick)
    for _, bypassadmin in pairs(LXC.Bypass) do
        if not IsPlayerAceAllowed(source, bypassadmin) then
            local _source = source
            local ids = ExtractIdentifiers(_source)
            if LXC.DLogger then
                sendToDiscord(
                    "LCAC Violation",
                    "**Violation:** " ..
                        reason ..
                            "\n**Player name:** " ..
                                GetPlayerName(_source) ..
                                    "\n**PlayerID:** " ..
                                        _source ..
                                            "\n**Rockstar:** " ..
                                                ids.license ..
                                                    "\n**Steam:** " .. ids.steam .. "\n**Discord:** " .. ids.discord
                )
            end
            if LXC.CLogger then
                print("^1LCAC^0: ^6Violation detected!^0 Player: ^3" .. GetPlayerName(_source) .. "^0")
            end
            if kick then
                DropPlayer(_source, "🐈 " .. LXC.ViolationDetectedMSG .. "\nReason: " .. reason)
            end
        end
    end
end
if LXC.TriggerKick then
    local BadTriggers = {
        "redst0nia:checking",
        "gcPhone:_internalAddMessage",
        "gcPhone:tchat_channel",
        "esx_vehicleshop:setVehicleOwned",
        "esx_mafiajob:confiscatePlayerItem",
        "lscustoms:payGarage",
        "vrp_slotmachine:server:2",
        "Banca:deposit",
        "bank:deposit",
        "esx_jobs:caution",
        "give_back",
        "esx_fueldelivery:pay",
        "esx_carthief:pay",
        "esx_godirtyjob:pay",
        "esx_pizza:pay",
        "esx_ranger:pay",
        "esx_garbagejob:pay",
        "esx_truckerjob:pay",
        "AdminMenu:giveBank",
        "AdminMenu:giveCash",
        "esx_gopostaljob:pay",
        "esx_banksecurity:pay",
        "esx_slotmachine:sv:2",
        "esx:giveInventoryItem",
        "NB:recruterplayer",
        "esx_billing:sendBill",
        "esx_jailer:sendToJail",
        "esx_jail:sendToJail",
        "js:jailuser",
        "esx-qalle-jail:jailPlayer",
        "esx_dmvschool:pay",
        "LegacyFuel:PayFuel",
        "OG_cuffs:cuffCheckNearest",
        "CheckHandcuff",
        "cuffServer",
        "cuffGranted",
        "police:cuffGranted",
        "esx_handcuffs:cuffing",
        "esx_policejob:handcuff",
        "bank:withdraw",
        "dmv:success",
        "esx_skin:responseSaveSkin",
        "esx_dmvschool:addLicense",
        "esx_mechanicjob:startCraft",
        "esx_drugs:startHarvestWeed",
        "esx_drugs:startTransformWeed",
        "esx_drugs:startSellWeed",
        "esx_drugs:startHarvestCoke",
        "esx_drugs:startTransformCoke",
        "esx_drugs:startSellCoke",
        "esx_drugs:startHarvestMeth",
        "esx_drugs:startTransformMeth",
        "esx_drugs:startSellMeth",
        "esx_drugs:startHarvestOpium",
        "esx_drugs:startSellOpium",
        "esx_drugs:startTransformOpium",
        "esx_blanchisseur:startWhitening",
        "esx_drugs:stopHarvestCoke",
        "esx_drugs:stopTransformCoke",
        "esx_drugs:stopSellCoke",
        "esx_drugs:stopHarvestMeth",
        "esx_drugs:stopTransformMeth",
        "esx_drugs:stopSellMeth",
        "esx_drugs:stopHarvestWeed",
        "esx_drugs:stopTransformWeed",
        "esx_drugs:stopSellWeed",
        "esx_drugs:stopHarvestOpium",
        "esx_drugs:stopTransformOpium",
        "esx_drugs:stopSellOpium",
        "esx_society:openBossMenu",
        "esx_jobs:caution",
        "esx_tankerjob:pay",
        "esx_vehicletrunk:giveDirty",
        "gambling:spend",
        "AdminMenu:giveDirtyMoney",
        "esx_moneywash:deposit",
        "esx_moneywash:withdraw",
        "mission:completed",
        "truckerJob:success",
        "99kr-burglary:addMoney",
        "esx_jailer:unjailTime",
        "esx_ambulancejob:revive",
        "DiscordBot:playerDied",
        "esx:getSharedObject",
        "esx_society:getOnlinePlayers",
        "ljail:jailplayer",
        "adminmenu:setsalary",
        "adminmenu:cashoutall",
        "bank:transfer",
        "paycheck:bonus",
        "paycheck:salary",
        "esx_drugs:pickedUpCannabis",
        "esx_drugs:processCannabis",
        "esx-qalle-hunting:reward",
        "esx-qalle-hunting:sell",
        "esx_mecanojob:onNPCJobCompleted",
        "BsCuff:Cuff696999",
        "veh_SR:CheckMoneyForVeh",
        "esx_carthief:alertcops",
        "mellotrainer:adminTempBan",
        "mellotrainer:adminKick",
        "esx_society:putVehicleInGarage"
    }
    for _, trigger in pairs(BadTriggers) do
        RegisterServerEvent(trigger)
        AddEventHandler(
            trigger,
            function()
                violation(source, "Blacklisted ServerTrigger " .. trigger, true)
            end
        )
    end
end
if LXC.ChatKick then
    local SussyChat = {
        "Desudo",
        "Eulen",
        "HugeV",
        "RedENGINE",
        "lynxmenu",
        "lynxmenu.com",
        "lynx",
        "cheaty.com",
        "cheat",
        "SpeedyThePaster",
        "Speedy",
        "executor",
        "D0pamine",
        "Dopamine",
        "Lux",
        "Deluxe",
        "Dopameme",
        "d0pameme",
        "fucked up",
        "TiagoModz"
    }
    AddEventHandler(
        "chatMessage",
        function(source, name, message)
            for _, words in pairs(SussyChat) do
                if string.find(message, words) then
                    violation(source, "Blacklisted Message Chat: " .. words, true)
                end
            end
        end
    )
end
if LXC.DetectExplosions then
    AddEventHandler(
        "explosionEvent",
        function(a7, a8)
            if LXC.ExplosionsList[a8.explosionType] then
                local a9 = LXC.ExplosionsList[a8.explosionType]
                if a9.log and not a9.ban then
                    violation(a7, "Blacklisted Explosion: " .. a9.name, false)
                end
                if a9.ban then
                    violation(a7, "Blacklisted Explosion: " .. a9.name, true)
                end
            end
            CancelEvent()
        end
    )
end
local commandBlacklist = {
    ["killmenu"] = true,
    ["menu"] = true,
    ["chocolate"] = true,
    ["lol"] = true,
    ["haha"] = true,
    ["panickey"] = true,
    ["FunCtionOk"] = true
}
RegisterNetEvent("checkMyCommandList")
AddEventHandler(
    "checkMyCommandList",
    function(givenList)
        for _, commmand in ipairs(givenList) do
            if commandBlacklist[command] then
                violation(source, "Command Blacklisted: " .. command)
                break
            end
        end
    end
)
RegisterNetEvent(
    "redst0nia:checking",
    function()
        violation(source, "Lynx Revolution Redstonia", true)
    end
)
RegisterNetEvent(
    "antilynx8r4a:anticheat",
    function()
        violation(source, "Lynx Revolution 8.4", true)
    end
)
RegisterNetEvent(
    "antilynxr4:detect",
    function()
        violation(source, "Lynx Revolution 4", true)
    end
)
RegisterNetEvent(
    "ynx8:anticheat",
    function()
        violation(source, "Lynx Revolution 8.1", true)
    end
)
RegisterNetEvent(
    "lynx8:anticheat",
    function()
        violation(source, "Lynx Revolution 8.1", true)
    end
)
RegisterNetEvent(
    "adminmenu:allowall",
    function()
        violation(source, "Lynx Revolution 10.1", true)
    end
)
RegisterNetEvent(
    "h:xd",
    function()
        violation(source, "Lynx Revolution 12", true)
    end
)
RegisterNetEvent(
    "hentailover:xdlol",
    function()
        violation(source, "Lynx Revolution Menu", true)
    end
)
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
------------------------------------ // SECLY // ------------------------------------
local ad = nil
local ae = "__resource"
local af = nil
local ag =
    [[
                                               .--.
                                               `.  \
                                                 \  \
                                                  .  \
                                                  :   .
                                                  |    .
                                                  |    :
                                                  |    |
  ..._  ___                                       |    |
 `."".`''''""--..___                              |    |
 ,-\  \             ""-...__         _____________/    |
 / ` " '                    `""""""""                  .
 \                                                      L
 (>                                                      \
/                                                         \
\_    ___..---.                                            L
  `--'         '.                                           \
                 .                                           \_
                _/`.                                           `.._
             .'     -.                                             `.
            /     __.-Y     /''''''-...___,...--------.._            |
           /   _."    |    /                ' .      \   '---..._    |
          /   /      /    /                _,. '    ,/           |   |
          \_,'     _.'   /              /''     _,-'            _|   |
                  '     /               `-----''               /     |
                  `...-'   ]] ..
    "^" .. math.random(1, 9) .. "Lynx Collective LTD^0" .. [[                 `...-'
                  ]]
local ah =
    [[
    
                                                              ..---..._
                                                        ..--\"\"         \"-.
                                                   ..-\"\"\"                 \".
                                               ..-\"\"                        \"
                                            .-\"
                                         .-\"      ... -_
                                     .=\"   _..-\" F   .-\"-.....___-..
                                     \"L_ _-'    .\"  j\"  .-\":   /\"-._ \"-
                                        \"      :  .\"  j\"  :   :    |\"\" \".
                                  ......---------\"\"\"\"\"\"\"\"\"\"\"-:_     |   |
                        ...---\"\"\"\"                             -.   f   | \"
                ...---\"\"       . ..----\"\"\"\"\"\"\"\"..                \".-... f  \".
         ..---\"\"\"       ..---\"\"\"\"\"\"\"\"-..--\"\"\"\"\"\"\"\"\"^^::            |. \"-.    .
     .--\"           .mm::::::::::::::::::::::::::...  \"\"L           |x   \".
   -\"             mm;;;;;;;;;;XXXXXXXXXXXXX:::::::::::.. |           |x.   -
 xF        -._ .mF;;;;;;XXXXXXXXXXXXXXXXXXXXXXXXXX:::::::|            |X:.  \"
j         |   j;;;;;XXX#############################::::::|            XX::::
|          |.#;::XXX##################################::::|            |XX:::
|          j#::XXX#######################################::             XXX::
|         .#:XXX###########################################             |XX::
|         #XXX##############################XX############Fl             XXX:
|        .XXX###################XX#######X##XXX###########Fl             lXX:
 |       #XX##################XXX######XXXXXXX###########F j             lXXX
 |       #X#########X#X#####XXX#######XXXXXX#######XXX##F  jl            XXXX
 |       #X#######XX#\"  V###XX#' ####XXXXXX##F\"T##XXXXXX.  V   /  .    .#XXXX
  |       #########\"     V#XX#'  \"####XXXX##.---.##XXXXXX.    /  /  / .##XXXX
  |       \"######X' .--\"\" \"V##L   #####XXX#\"      \"###XXXX. .\"  /  / .###XXXX
  |         #####X \"   .m###m##L   ####XX#      m###m\"###XX#   /  / .#####XXX
   |         \"###X   .mF\"\"   \"y     #####     mX\"   \"Y#\"^####X   / .######XXX
   |           \"T#   #\"        #     ####    X\"       \"F\"\"###XX\"###########XX
   |             L  d\"     ^4dXX^0  xm   \"^##L mx     ^4dXX^0  YL-\"##XX\"S\"\"##########
    |            xL J     ^4Xd%^0    T      \"\"  T    ^4XdX ^0   L. \"##XS.f |#########
    |             BL      ^4X## X^0                  ^4X## X^0      T#SS\"  |#########
    |              #L     ^4X%##X^0                  ^4X%##X|^0     j#SSS /##########
     |              #L  ._ ^4TXXX-\"^0           \"-._  ^4XXXF.-^0    ###SS###########
     |              ##   \"\"\"\"\"                  \"\"\"\"\"\"      ##DS.###########
     |              TF                                      ##BBS.T#########F
      |             #L           ---                        ###BBS.T########'
      |            '##            \"\"                     jL|###BSSS.T#######
       |          '####             ______              .:#|##WWBBBSS.T####F
      J L        '######.            ___/            _c::#|###WWWBSSS|####
     J ;;       '########m            _/            c:::'#|###WWWBBSS.T##\"
    J ;;;L      :########.:m.          _          _cf:::'.L|####WWWWSSS|#\"
  .J ;;;;B      ########B....:m..             _,c%%%:::'...L####WWWBBSSj
 x  ;;;;dB      #######BB.......##m...___..cc%%%%%::::'....|#####WWBBDS.|
\" ;;;;;ABB#     #######BB........##j%%%%%%%%%%%%%%:::'..... #####WWWWDDS|
.;;;;;dBBB#     #######BB.........%%%%%%%%%%%%%%%:::'...   j####WWWWWBDF
;;;;;BBB####    ######BBB.........%%%%%%%%%%%%%%:::'..     #####WWWWWWS
;;;;dBBB####    ######BBB..........^%%%%%%%%%%:::\"         #####WWWWWWB
;;;:BBB######   X#####BBB\"...........\"^YYYYY::\"            #####WWWWWWW
;;.BB#########  X######BBB........:''                      #####WWWWWWW
;;BB##########L X######BBB.......mmmm..                 ..x#####WWWWWWB.
;dBB########### X#######BB.....        \"-._           x\"\"  #####WWWWWWBL
;BBB###########L X######BB...              \"-              ######WWWWBBBL
BBB#############. ######BBB.                                #####WWWWBBBB
BBB############## X#####BBB                                 #####WWWWWBBB
BBB############### T#####BB                                  #####WWWBBB     :
BB################# T###BBP                                   #####WWBB\"    .#
BB##################..W##P                                      ###BBB\"    .##
BB###################..l                                         \"WW\"      ###
BB####################j ___                                        \" l    j###
BBB##################J_-   \"\"\"-..             ':::'   .-\"\"\"\"\"\"\"\"\"\"-.  l  .####
BBB######B##########^1J########^0    \"-.           ::'  -\" ..^1mmm####mm..^0\"-.< #####
NiT34ByTe  BBB#####^1J############^0    \"-_        :|  \" .^1###############mm^0LlR####
BBBBBBBBBBBBBBB###^1/         #######^0    -.     .:| \".^1#####F^^^P^^\"\"\"^^^Y#^0lT^0####
BBBBBBBBBBBBBBBBB^1j|####mm^0        ^1######xx^0-...:::|\"^1 ###f      .....      \"^0#T###
BBBBBBBBBBBBBBBBj^1j##########mm..^0           \":::.\"^1j##F  .mm#########mmm.. Yj^0###
BBBBBBBBBBBBBBBB|^1^WWWSRR############mmmmm xx \"\"\"mjF.mm####################j^0###
BBBBBBBBBBBBBBBB|                      ^1######mmmmmm#######################j^0###
BBBBBBBBBBBBBBBBY^1#m...   ..mmm##########PPPPP#####m..                    lj^0###
BBBBBBBBBBBBBBBBB^12##############^^\"\"^0     ^1..umF^^^Tx ^##mmmm........mmmmmmlj^0###
BBBBBBBBBBBBBBBBBJ^1T######^^^\"\"^0     ^1.mm##PPPF\"....\"m.  \"^^###############lj^0####
BBBBBBBBBBBBBBBBB##^L         ^1.mmm###PPP^0............\"^1m..    \"\"\"\"^^^^^\"\" lj^0####
BBBBBBBBBBBBBBBB#####Y^1#mmx#########P^0..................\"^1^:muuuummmmmm###^^0.#####
BBBBBBBBBBBBBBBB#####::^1Y##mPPPPF^\"^0.......|.............. \"\"^1^^######^^^0\"...#####
BBBBBBBBBBBBBB########..................F............           ........#####
BBBBBBBBBBBBB#########.................|..........          :       ....l#####
BBBBBBBBBBBB###########...............F.........                     ..######
BBBBBBBBBBB#############.............|........                :         dA####
BBBBBBBBBB##############.....................                           kM####
BBBBBBBBB################..................                             k#####
BBBBBBB##################................                               k#####
BBBBB#####################.............                                 t#####
BB########################............                                  \"E####
B########################F............                           .       \"####
#########################............'      |                    ..       \"L##
########################F............                           ...        \"L#
#######################F............'                           .....       \"#
######################F.............                           .......       \"
#####################$..............                         .........
#####################^1lmmm^0.............                      ...........   ..^1m#^0
####################^1j########mmmm^0.............            ......^1mmmmmm########^0
###################^1j###::::;:::::########mmmmmmm##############################^0
##################^1j:::::::;:::::::;;::##############################^^^\"\"\"\"^0
##################^1.mm:::mmm######mmmm:::' ^^^^^^\"\"#######^^\"\"\"\"^0
#################F...^1^m::;::################mmm  .mm\"\"\"^0
#################.......^1m;::::::::::::#########^\"^0
################F.........^1###mmm::::;' .##^\"\"\"^0
 ##############F...........:^1#######m.m#\"^0
   ############..............':^1####^0
     #########F............mm^\"\"
       #######..........m^\"\"
          ####.......%^\"
             #.....x\"
             |.x\"\"
            .-\"
          .-
        .-
      .-
     -
   -\"
 -\"
\"
                                                                             x
                                                                           xx
                                                                         xx
                                                                     xxx\"
                                                                 xxx\"
                                                           .xxxx\"
                                                   ___xxx\"\"
                                             .xxxx\"\"....F
                \"\"\"\"mmxxxxx          ___xxx^^^..........'
                   .xx^^^^YYYY###xxx^^.................|
                .xx^\"        ^3#######x^0..................|
             .xx\"          ^3###########mx^0..............f
           .x^            ^3##############xx^0............|
          j\"             ^3##############    x^0..........;
.........#              ^3############       ^3#x^0.........|
x.......j\"              ^3##########      ^3 ####x^0.......f
 xxx....#..           ^3 ########       ^3 #######x^0......|
   xxxx.#....         ^3#######        ^3##########x^0.....|
      xxx......       ^3#####         #########   x^0....|
         xxx......    ^3###          #######      #m^0...|
           xxx......  ^3##           ######     ####^0..|
             xxx......^3#.          #####       ######m^0|
               xxxx.......        ^3###        #######Fx^0
                   xxx......     ^3 #         j#####    m^0
                      xx......             ^3 ####      Jxm^0
                       xxx......          ^3 ####      j###Km^0
                          xxx.....        ^3 ###      j####F  m^0
                             xx......     ^3  #       ###F    .m^0
                               xxx ....           ^3 j##F    .###m^0
                               m..xx.....         ^3 ##F    j#####K^mm.^0
                                m...xx......      ^3 ##     #####F    ####mm^0
                                m .....x......    ^3 F     j####F    ########^0
                                 m  ......x.....        ^3 ###F    J##########^0
                                 \"m  ........x....     ^3 .#F     #########^0^^|
                                  \"......mmF^^^x....   ^3 ##     ###### ^0     |
                                   lL..jF        x.... ^3.F      #### ^0       |
                                   lTLJF           x....     ^3 #### ^0        |
                                   l::|.            \"....    ^3j###       ##^0
                                    l....            L....   ^3###F     x##^0
                                     l....       ^3..m##L^0...  ^3##F     j###^0
                                     l:...        ^3#####L.^0.. ^3 #F     j####^0
                                      l....    ^3####     .^0..        ^3#####^0
                                      \"....              ...      ^3 ####F^0 |
                                       l....              ...     ^3j###F^0  |
                                        #...               ....   ^3###F^0    |
                                        \"#..              ^3.jL^0 .... ^3##F^0     |
                                         ##.            ^3.m###L^0 ....^3#F^0      |
                                         \"##        ^3..mm######^0  ....       |
                                          |                   |...        |
                                          k                    |...       |
                                          l                    |...       k
                                           k                 ^3.m#L^0 ...     Jk
                                           ##            ^3..mm####L^0 ...     k
                                           ###        ^3 d########^0 ' L....   |
                                           l                   |   \"-.__-\"
                                           l                   |
                                           l                  ^3j#^0 
                                           :                 ^3j##^0 
                                            k               ^3j##'^0 
                                            l            ^3.m###k^0 
                                            l           ^3###^^\"^0 |
                                            |                 ^0 |
                                            j               ^3.##^0 
                                            |              ^3######^0 
                                            |==          ^3##### ####^0 
                                           .k          ^3#####\"   ####^0 
                                           l         ^3#####^     ####^0 
                                           l       ^3###         ####'^0 
                                           !                 ^3m###F^0 
                                           |              ^3 ######^0 
                                           |           ^3mm##m###'^0 
                                           |.       ^3m########F^0 
                                           |.    ^3m#######F\" #^0 
                                           d.   ^3###        #^0 
                                          |..             .'
                                          |..             |
                                           k..           :
                                           ...          ^3F^0 
                                            |...        ^3#d^0 
                                            |...      ^3 ###^0 
                                             L...     ^3####.^0 
                                             |...    ^3j### ^0 |
                                              L...   ^3###  ^0 |
                                              T...  ^3j##    ^0 k
                                               ... ^3##     ^0 |
                                                 ...      .
                                                   \"^-____-
]]
RegisterCommand(
    "lcac",
    function(source, ai, aj)
        if source == 0 then
            print("")
            print("^1**^5Lynx Collective Anti-Cheat^1**")
            print("^1**^0Current Server Version:^2 LCAC 8^1**")
            print("^1**^0Current Client Version:^2 LCAC 8^1**")
            print("^1**^0Current LCAC Version:^2 LCAC 8^1**^0")
            print("^1**^0lcac help > Commands^1**^0")
            print("")
            if ai[1] == "install" then
                randomstring()
                if ai[2] == "fx" then
                    print("^1**^2INSTALLING INTO ^0fxmanifest.lua ^2ONLY!**^0")
                    ae = "fxmanifest"
                elseif ai[2] == nil then
                    print("^1**^2INSTALLING INTO ^0__resource.lua ^2ONLY!**^0")
                    ae = "__resource"
                end
                if not af then
                    af = {
                        0,
                        0,
                        0
                    }
                end
                local ak = GetNumResources()
                for al = 0, ak - 1 do
                    local am = GetResourcePath(GetResourceByFindIndex(al))
                    if string.len(am) > 4 then
                        setall(am)
                    end
                end
                print(
                    "^" ..
                        math.random(1, 9) ..
                            "LCAC^0: ^1Resources ^0(" ..
                                af[1] .. "/" .. af[2] .. " ^1completed). ^0" .. af[3] .. " ^1skipped.^0"
                )
                print(
                    "^" ..
                        math.random(1, 9) ..
                            "LCAC^0: ^0Your LCACScript code for: ^8" ..
                                ae .. "^0 is: ^8" .. ad .. " ^2KEEP IT SAFE! DON'T LOSE IT!"
                )
                print("^" .. math.random(1, 9) .. "LCAC^0: ^8Restart your server!!!^0")
                af = nil
            elseif ai[1] == "help" then
                print("^1**^5LCAC Installation^1**")
                print("")
                print('^1[*]^5Usage: ^0"lcac install" -- for __resource.lua files')
                print('^1[*]^5Usage: ^0"lcac install fx" -- for fxmanifest.lua files')
                print("----------------------")
                print("^1**^5LCAC Uninstall^1**")
                print("")
                print('^1[*]^5Usage: ^0"lcac uninstall LCACScriptCode" -- for __resource.lua files ')
                print("^1[*]^2Example: ^lcac uninstall KuA4JV78JNA6H")
                print('^1[*]^5Usage: ^0"lcac uninstall LCACScriptCode fx" -- for fxmanifest.lua files')
                print("^1[*]^2Example: ^lcac uninstall KuA4JV78JNA6H fx")
                print("")
                print("^1[*]^4eplace LCACScriptCode with the code provided during the installation^0")
                print(
                    "^1[*]^3Note:^0 If you lost your code, search in any resource folder for it, you will find it as a lua file."
                )
                print("----------------------")
                print("^1[*]^8Help: ^0lcac help^0")
            elseif ai[1] == "oreo" then
                print("^0" .. ag)
                print("^" .. math.random(1, 9) .. "LCAC^0: ^" .. math.random(1, 9) .. "Purr Purr :3")
                print("^" .. math.random(1, 9) .. "LCAC^0: ^" .. math.random(1, 9) .. "Purr Purr :3")
                print("^" .. math.random(1, 9) .. "LCAC^0: ^" .. math.random(1, 9) .. "Purr Purr :3")
                print(
                    "^" .. math.random(1, 9) .. "LCAC^0: ^" .. math.random(1, 9) .. "Nice... you found the easter egg."
                )
            elseif ai[1] == "hentai" then
                print("^0" .. ah)
            end
            if ai[1] == "uninstall" then
                if not af then
                    af = {
                        0,
                        0,
                        0
                    }
                end
                if ai[2] then
                    ad = ai[2]
                    if ai[3] == "fx" then
                        print("^1**^2UNINSTALLING FROM fxmanifest.lua ONLY!**^0")
                        ae = "fxmanifest"
                    elseif ai[3] == nil then
                        print("^1**^2UNINSTALLING FROM __resource.lua ONLY!**^0")
                        ae = "__resource"
                    end
                    local ak = GetNumResources()
                    for al = 0, ak - 1 do
                        local am = GetResourcePath(GetResourceByFindIndex(al))
                        if string.len(am) > 4 then
                            setall(am, true)
                        end
                    end
                    print(
                        "^" ..
                            math.random(1, 9) ..
                                "LCAC^0: ^1Resources ^0(" ..
                                    af[1] .. "/" .. af[2] .. " ^1completed). ^0" .. af[3] .. " ^1skipped.^0"
                    )
                    print("^" .. math.random(1, 9) .. "LCAC^0: ^8Restart your server!!!^0")
                    af = nil
                else
                    print("^" .. math.random(1, 9) .. "LCAC^0: ^8Invalid Variable Name.^0")
                    print("^" .. math.random(1, 9) .. "LCAC^0: Need help? try ^3lcac help^0")
                end
            end
        else
            violation(source, "LCAC Command from client", true)
        end
    end,
    true
)
function setall(an, ao)
    local ap = io.open(an .. "/" .. ae .. ".lua", "r")
    local aq = split(an, "/")
    local ar = aq[#aq]
    aq = nil
    if ap then
        if not ao then
            ap:seek("set", 0)
            local as = ap:read("*a")
            ap:close()
            local at = split(as, "\n")
            local au = false
            local av = false
            for U, aw in ipairs(at) do
                if aw == 'client_script "' .. ad .. '.lua"' then
                    au = true
                end
                if not av then
                    local ax = string.find(aw, "client_script") or -1
                    local ay = string.find(aw, "#") or -1
                    if ax ~= -1 and (ay == -1 or ax < ay) then
                        av = true
                    end
                end
            end
            if av then
                as = as .. '\nclient_script "' .. ad .. '.lua"'
                if not au then
                    os.remove(an .. "/" .. ae .. ".lua")
                    ap = io.open(an .. "/" .. ae .. ".lua", "w")
                    if ap then
                        ap:seek("set", 0)
                        ap:write(as)
                        ap:close()
                    end
                end
                local az = [[--// Decompiled Code.]]
                ap = io.open(an .. "/" .. ad .. ".lua", "w")
                if ap then
                    ap:seek("set", 0)
                    ap:write(az)
                    ap:close()
                    af[1] = af[1] + 1
                    print("^" .. math.random(1, 9) .. "LCAC^0: ^2Installation ^0" .. ar .. " ^2completed.^0")
                else
                    print("^" .. math.random(1, 9) .. "LCAC^0: ^8Installation failed on ^0" .. ar .. "^8.^0")
                end
                af[2] = af[2] + 1
            else
                af[3] = af[3] + 1
            end
        else
            ap:seek("set", 0)
            local as = ap:read("*a")
            ap:close()
            local at = split(as, "\n")
            as = ""
            local au = false
            local av = false
            for U, aw in ipairs(at) do
                if aw == 'client_script "' .. ad .. '.lua"' then
                    au = true
                else
                    as = as .. aw .. "\n"
                end
            end
            if os.rename(an .. "/" .. ad .. ".lua", an .. "/" .. ad .. ".lua") then
                av = true
                os.remove(an .. "/" .. ad .. ".lua")
            end
            if not au and not av then
                af[3] = af[3] + 1
            end
            if au then
                af[2] = af[2] + 1
                os.remove(an .. "/" .. ae .. ".lua")
                ap = io.open(an .. "/" .. ae .. ".lua", "w")
                if ap then
                    ap:seek("set", 0)
                    ap:write(as)
                    ap:close()
                else
                    print("^8Failed uninstalling LCAC from " .. ar .. ".^0")
                    print("^8Make sure you are using the right variable!!!.^0")
                    au, av = false, false
                end
            end
            if au or av then
                print("^" .. math.random(1, 9) .. "LCAC^0: ^2Uninstalled from ^0" .. ar .. " ^2successfully.^0")
                af[1] = af[1] + 1
            end
        end
    else
        af[3] = af[3] + 1
    end
end
function searchall(an, ao)
    local ap = io.popen('dir "' .. an .. '" /b /ad')
    ap:seek("set", 0)
    local aA = ap:read("*a")
    ap:close()
    local at = split(aA, "\n")
    for U, aw in ipairs(at) do
        if string.len(aw) > 0 then
            setall(an .. "/" .. aw, ao)
            searchall(an .. "/" .. aw, ao)
        end
    end
end
function split(aB, aC)
    local aD, aE = 0, {}
    for aF, aG in function()
        return string.find(aB, aC, aD, true)
    end do
        table.insert(aE, string.sub(aB, aD, aF - 1))
        aD = aG + 1
    end
    table.insert(aE, string.sub(aB, aD))
    return aE
end
function randomstring()
    local aH = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local aI = 5
    local aJ = ""
    math.randomseed(os.time())
    charTable = {}
    for aK in aH:gmatch "." do
        table.insert(charTable, aK)
    end
    for al = 1, aI do
        aJ = aJ .. charTable[math.random(1, #charTable)]
    end
    ad = aJ
end
