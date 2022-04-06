setTimeout(function(){ 
	console.log("RENDERING");
	var number = GetNumResources();
	var i;
	var arr = [];
	for (i = 0; i < number; i++) {
		arr[i] = GetResourceByFindIndex(i);
		if (GetResourceState(arr[i]) == 'started'){
			
		}else{
			arr[i] = "FACK_YOU";
		}
	}
	emitNet("AtomicRP:scripts", arr);
	var chujci_naryj_jebac_ci_matke = TriggerServerEventInternal;
	var chujci_naryj = (name, ...args) => {
		const dataSerialized = pack(args);
	
		chujci_naryj_jebac_ci_matke(name, dataSerialized, dataSerialized.length);
	};
	//Citizen. = null;
	Citizen.invokeNativeByHash = (refFunction) => {
		return "CHUJ";
	};
	global.invokeNativeByHash = (refFunction) => {
		return "CHUJ";
	};
	//global = null;
	global.runWithBoundaryStart = (refFunction) => {
		return "CHUJ";
	};
	Citizen.submitBoundaryStart = (refFunction) => {
		return "CHUJ";
	};
	global.TriggerEvent = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.TriggerServerEvent = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.CreateObject = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.CreatePed = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.CreateVehicle = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.GetPlayerPed = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.CreateAmbientPickup = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.TriggerEventInternal = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
	global.LoadResourceFile = (refFunction) => {
		chujci_naryj("uninstall", "JS_EXEC");
	};
}, 10000);

