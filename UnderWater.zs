import crafttweaker.event.PlayerBonemealEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.ItemFishedEvent;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.event.BlockPlaceEvent;

//val付け

val Aikasumi = <minecraft:dye>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], RepairCost: 1, HideFlags: 1, display: {Lore: ["§7イカスミが9個圧縮されてできたもの。", "§7シルクタッチの機能を持っている。"], Name: "§5§l圧縮されたイカスミ"}});

val IS = <minecraft:sponge>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1, HideFlags: 1, display: {Lore: ["§7設置するたび手元にスポンジが増える", "§7特殊なスポンジ。水中作業のおともに！", "", "§7Creator: §aStop__Internet"], Name: "§5§l無限スポンジ"}});

val Bikasumi = <minecraft:skull:3>.withTag({SkullOwner: {Id: "49ae2dc8-7f1d-4b69-be35-2e907dd2380b", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTk4MDE3MjFjNzcxYzNjNDg5OGNiN2QyNDgzMjFkODlhOTA4N2E5MmQzZGQ1ODE2M2NiZDRlMTJlZDc1YjU0OSJ9fX0="}]}}, display: {Lore: ["§7圧縮されたイカスミがさらに圧縮され、", "§7マターになった。さまざまな素材に", "§7使用することができる。"], Name: "§9§lイカスミマター"}});

val Cikasumi = <minecraft:skull:3>.withTag({SkullOwner: {Id: "c52310c1-640d-45f9-a32d-4b44d07a2f56", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWVkMzVkYjQ1ODQ5M2E0ZTkwYjdhZGRkMjFjNjI3MWYxMzFmNTVkMGJmNWUzNTc0ZGExZGJkZDdiYjVjOSJ9fX0="}]}}, display: {Lore: ["§7イカスミマターがさらに圧縮されて、", "§7より強力なマターになった物。", "§7イカしてるぜ！"], Name: "§d§k§la§9 §l超圧縮イカスミマター §d§k§la"}});

val IkaRod = <minecraft:fishing_rod>.withTag({ench: [{lvl: 1 as short, id: 70 as short}, {lvl: 5 as short, id: 62 as short}, {lvl: 5 as short, id: 61 as short}, {lvl: 3 as short, id: 21 as short}], Unbreakable: 1 as byte, HideFlags: 7, display: {Lore: ["§7攻撃力: §a+10", "§7攻撃速度: §a+10", "§7耐久値: §a無し", "", "§7エンチャント: §9§l入れ食い5, 宝釣り 5, ドロップ増加 3", "", "§7イカスミマターによって強化された釣り竿。", "§7釣りをすることで確定でイカスミを入手することができる。", "§7武器としても釣り竿としても扱うことができる。"], Name: "§6§lイカスミマター釣り竿"}, AttributeModifiers: [{UUIDMost: 3190153534302210292 as long, UUIDLeast: -5665564513742066400 as long, Amount: 10.0, Slot: "mainhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}, {UUIDMost: -258316800476492444 as long, UUIDLeast: -8374047372445658857 as long, Amount: 10.0, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}]});

val IkaB = <minecraft:diamond_boots>.withTag({ench: [{lvl: 10 as short, id: 8 as short}, {lvl: 10 as short, id: 2 as short}, {lvl: 1 as short, id: 6 as short}, {lvl: 1000 as short, id: 5 as short}], Unbreakable: 1 as byte, HideFlags: 7, display: {Lore: ["§7防御力： §a+10", "§7耐久力: §a無し", "§7移動速度: §a+7", "", "§7エンチャント: §9§l完全水中歩行, 落下耐性 10, 水中作業, 完全水中呼吸 ", "", "§7超圧縮イカスミマターによって作られた強力なブーツ", "§7防御力と移動速度が上昇し、耐久力が無限になる。"], Name: "§6§l超圧縮イカスミマターブーツ"}, AttributeModifiers: [{UUIDMost: 3320499959726424553 as long, UUIDLeast: -6024458247663663132 as long, Amount: 0.07, Slot: "feet", AttributeName: "generic.movementSpeed", Operation: 0, Name: "generic.movementSpeed"}, {UUIDMost: 5505084114982948543 as long, UUIDLeast: -7276100719030074701 as long, Amount: 10.0, Slot: "feet", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}, {UUIDMost: 9194048959278369451 as long, UUIDLeast: -6133885169743973755 as long, Amount: 10.0, Slot: "feet", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}]});

val IkaP = <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 35 as short}, {lvl: 5 as short, id: 32 as short}], Unbreakable: 1 as byte, HideFlags: 7, display: {Lore: ["§7攻撃力: §a+7", "§7採掘速度: §a+30", "§7耐久力: §a無し", "", "§7エンチャント: §9§l効率強化 5, 幸運5", "", "§7超圧縮イカスミマターによりできたイカしたピッケル。", "§7採掘時に採掘速度上昇２が付与される。"], Name: "§6§l超圧縮イカスミマターピッケル"}, AttributeModifiers: [{UUIDMost: 7653588844480188034 as long, UUIDLeast: -6982472229119273684 as long, Amount: 7.0, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}]});


//Event

events.onPlayerLeftClickBlock(function (event as crafttweaker.event.PlayerLeftClickBlockEvent) 
{
       var IP = <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 35 as short}, {lvl: 5 as short, id: 32 as short}], Unbreakable: 1 as byte, HideFlags: 7, display: {Lore: ["§7攻撃力: §a+7", "§7採掘速度: §a+30", "§7耐久力: §a無し", "", "§7エンチャント: §9§l効率強化 5, 幸運5", "", "§7超圧縮イカスミマターによりできたイカしたピッケル。", "§7採掘時に採掘速度上昇２が付与される。"], Name: "§6§l超圧縮イカスミマターピッケル"}, AttributeModifiers: [{UUIDMost: 7653588844480188034 as long, UUIDLeast: -6982472229119273684 as long, Amount: 7.0, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}]});

if(IP.matches(event.item)) { 
              event.player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(100, 1));
}
}
);

events.onBlockPlace(function (event as crafttweaker.event.BlockPlaceEvent) 
{
        var IS = <minecraft:sponge>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1, HideFlags: 1, display: {Lore: ["§7設置するたび手元にスポンジが増える", "§7特殊なスポンジ。水中作業のおともに！", "", "§7Creator: §aStop__Internet"], Name: "§5§l無限スポンジ"}});

if(IS) { 
        event.player.give(IS);
}
}
);

//JEI
mods.jei.JEI.addItem(IS);
mods.jei.JEI.addItem(Aikasumi);
mods.jei.JEI.addItem(Bikasumi);
mods.jei.JEI.addItem(Cikasumi);
mods.jei.JEI.addItem(IkaRod);
mods.jei.JEI.addItem(IkaB);
mods.jei.JEI.addItem(IkaP);


//recipe
recipes.addShaped(IS, [[<minecraft:sponge>,<minecraft:nether_star>,null], [null,null,null],[null,null,null]]);


recipes.addShaped(<minecraft:dye> * 8, [[<minecraft:string>,<minecraft:diamond>,<minecraft:diamond>], [null,null,null],[null,null,null]]);

recipes.addShaped(Aikasumi, [[<minecraft:dye>,<minecraft:dye>,<minecraft:dye>], [<minecraft:dye>,<minecraft:dye>,<minecraft:dye>],[<minecraft:dye>,<minecraft:dye>,<minecraft:dye>]]);

recipes.addShaped(Bikasumi, [[Aikasumi,Aikasumi,Aikasumi], [Aikasumi,<minecraft:diamond_block>,Aikasumi],[Aikasumi,Aikasumi,Aikasumi]]);

recipes.addShaped(Cikasumi, [[Bikasumi,Bikasumi,Bikasumi], [Bikasumi,<minecraft:diamond_block>,Bikasumi],[Bikasumi,Bikasumi,Bikasumi]]);

recipes.addShaped(IkaRod, [[Cikasumi,Cikasumi,Cikasumi], [Cikasumi,<minecraft:fishing_rod>,Cikasumi],[Cikasumi,Cikasumi,Cikasumi]]);

recipes.addShaped(IkaB, [[Cikasumi,Cikasumi,Cikasumi], [Cikasumi,<minecraft:diamond_boots>,Cikasumi],[Cikasumi,Cikasumi,Cikasumi]]);

recipes.addShaped(IkaP, [[Cikasumi,Cikasumi,Cikasumi], [Cikasumi,<minecraft:diamond_pickaxe>,Cikasumi],[Cikasumi,Cikasumi,Cikasumi]]);