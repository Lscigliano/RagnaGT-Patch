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
}

for ItemID,DESC in pairs(tbl) do
CheckItem(ItemID,DESC)
end
