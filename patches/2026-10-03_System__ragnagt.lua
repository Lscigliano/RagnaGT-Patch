-- Itens proprios do RagnaGT (lido antes dos outros arquivos: vence runehost.lua e bRO.lua).
tbl = {
	[30000] = {
		unidentifiedDisplayName = "Kit de Flechas",
		unidentifiedResourceName = "»≠ªÏ≈Î",
		unidentifiedDescriptionName = {
			"Kit com 1.000 Flechas comuns.",
			"--------------------------",
			"Presente de boas-vindas dos Arqueiros.",
			"^ff0000N„o pode ser negociado.^000000",
			"--------------------------",
			"Peso: ^7777771^000000"
		},
		identifiedDisplayName = "Kit de Flechas",
		identifiedResourceName = "»≠ªÏ≈Î",
		identifiedDescriptionName = {
			"Kit com 1.000 Flechas comuns.",
			"--------------------------",
			"Presente de boas-vindas dos Arqueiros.",
			"^ff0000N„o pode ser negociado.^000000",
			"--------------------------",
			"Peso: ^7777771^000000"
		},
		slotCount = 0,
		ClassNum = 0,
		itemCustom = true
	},
	-- BEGIN visual-sync (ClassNum igual ao View do servidor - nao editar)
	[19576] = { ClassNum = 817 },
	[19587] = { ClassNum = 905 },
	[19701] = { ClassNum = 190 },
	[19917] = { ClassNum = 691 },
	[19918] = { ClassNum = 802 },
	[19920] = { ClassNum = 458 },
	[19944] = { ClassNum = 579 },
	[20202] = { ClassNum = 1082 },
	[20344] = { ClassNum = 1289 },
	[20393] = { ClassNum = 634 },
	[20404] = { ClassNum = 1425 },
	[31199] = { ClassNum = 21 },
	[31200] = { ClassNum = 1599 },
	[31201] = { ClassNum = 1600 },
	[31202] = { ClassNum = 1601 },
	[31313] = { ClassNum = 1662 },
	[31479] = { ClassNum = 1729 },
	[31480] = { ClassNum = 1730 },
	[31482] = { ClassNum = 1732 },
	[31483] = { ClassNum = 1733 },
	[31789] = { ClassNum = 1932 },
	[31942] = { ClassNum = 1999 },
	[400633] = { ClassNum = 2380 },
	[410239] = { ClassNum = 2386 },
	[410287] = { ClassNum = 0 },
	[410295] = { ClassNum = 0 },
	[410326] = { ClassNum = 2532 },
	[410338] = { ClassNum = 2555 },
	[420271] = { ClassNum = 0 },
	[440000] = { ClassNum = 1919 },
	[480430] = { ClassNum = 213 },
	[480432] = { ClassNum = 215 },
	[480433] = { ClassNum = 216 },
	[480438] = { ClassNum = 219 },
	[480486] = { ClassNum = 239 },
	[480487] = { ClassNum = 240 },
	-- END visual-sync
}

for ItemID,DESC in pairs(tbl) do
CheckItem(ItemID,DESC)
end
