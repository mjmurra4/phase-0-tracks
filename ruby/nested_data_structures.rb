parking_lot = {
	american: {
		ford: ["Taurus", "F150"],
		dodge: ["Charger", "Ram"]
	},
	japanese: {
		toyota: ["Camry", "Corrola"],
		honda: ["Civic", "Accord"]
	},
	german: {
		bmw: ["i3", "i8"],
		mercedes: ["GLA", "c300"]
	}
}

parking_lot[:japanese][:toyota][0]
parking_lot[:american][:ford]
parking_lot[:american][:dodge].push("Viper")
p parking_lot