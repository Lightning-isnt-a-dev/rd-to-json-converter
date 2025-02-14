sign: "Name", "Lil'T-6 Shuttle To Business Hips (Ballin') By Mustard Ft'Rody Ricch"
sign: "Icon", "https://fortnite.gg/img/items/10495/icon.png?1"
sign: "Author", "Made by Zer0Cipher!"
sign: "Description", "Converted from galaxy swapper, by Lightning."


system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/LilT_-_6_Shuttle_To_Business_Hips_Ballin_By_Mustard_Ft_Rody_Ricch/plugin.pak", "pak");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/LilT_-_6_Shuttle_To_Business_Hips_Ballin_By_Mustard_Ft_Rody_Ricch/plugin.sig", "sig");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/LilT_-_6_Shuttle_To_Business_Hips_Ballin_By_Mustard_Ft_Rody_Ricch/plugin.ucas", "ucas");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/LilT_-_6_Shuttle_To_Business_Hips_Ballin_By_Mustard_Ft_Rody_Ricch/plugin.utoc", "utoc");


archive from;
archive to;
SoftObjectProperty search;
SoftObjectProperty replace;


from = import "FortniteGame/Content/Athena/Items/Cosmetics/Dances/EID_SmartHyena";
to = import "FortniteGame/Plugins/GameFeatures/BRCosmetics/Content/Athena/Items/Cosmetics/Dances/EID_HipToBeSquare";

search = to.CreateSoftObjectProperty("/BRCosmetics/UI/Foundation/Textures/Icons/Emotes/T-Icon-Emotes-E-HipToBeSquare.T-Icon-Emotes-E-HipToBeSquare");
replace = to.CreateSoftObjectProperty("/e6c10ef3-45da-9478-f984-8f88988d3a45/Game/Emotes/Ballin/Icons/T_Icon_Emotes_Ballin.T_Icon_Emotes_Ballin");
to.SwapSoftObjectProperty(search, replace);

search = to.CreateSoftObjectProperty("/BRCosmetics/UI/Foundation/Textures/Icons/Emotes/T-Icon-Emotes-E-HipToBeSquare-L.T-Icon-Emotes-E-HipToBeSquare-L");
replace = to.CreateSoftObjectProperty("/e6c10ef3-45da-9478-f984-8f88988d3a45/Game/Emotes/Ballin/Icons/T_Icon_Emotes_Ballin.T_Icon_Emotes_Ballin");
to.SwapSoftObjectProperty(search, replace);

search = to.CreateSoftObjectProperty("Cosmetics.Filter.Season.9");
replace = to.CreateSoftObjectProperty("Cosmetics.Filter.Season.1");
to.SwapSoftObjectProperty(search, replace);


from.Swap(to);
from.Save();


from = import "/Game/Athena/Sounds/Emotes/HipToBeSquare/Emote_HipToBeSquare_Music_Cue";
search = from.CreateSoftObjectProperty("/Game/Athena/Sounds/Emotes/HipToBeSquare/Emote_HipToBeSquare_Music_Loop_01.Emote_HipToBeSquare_Music_Loop_01");
replace = from.CreateSoftObjectProperty("/e6c10ef3-45da-9478-f984-8f88988d3a45/Game/Emotes/Ballin/Sounds/Ballin_.Ballin_");
from.SwapSoftObjectProperty(search, replace);

from.Save();


from = import "/Game/Athena/Sounds/Emotes/HipToBeSquare/Emote_HipToBeSquare_Music_3p_Cue";
search = from.CreateSoftObjectProperty("/Game/Athena/Sounds/Emotes/HipToBeSquare/Emote_HipToBeSquare_Music_Loop_01.Emote_HipToBeSquare_Music_Loop_01");
replace = from.CreateSoftObjectProperty("/e6c10ef3-45da-9478-f984-8f88988d3a45/Game/Emotes/Ballin/Sounds/Ballin_.Ballin_");
from.SwapSoftObjectProperty(search, replace);

from.Save();

