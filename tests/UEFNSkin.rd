sign: "Name", "Harley Quinn Nsfw"
sign: "Icon", "https://cdn.discordapp.com/attachments/1180618865395380365/1185212681108586587/icon-removebg-preview.png?ex=658eca53&is=657c5553&hm=3bcb0a6a27e822444d49b393cb63d83b16eaf4a4539f2a295f687cff34ebb1ef&"
sign: "Author", "made by rave"
sign: "Description", "Converted from galaxy swapper, by Lightning."


system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/Harley_Quinn_Nsfw/plugin.pak", "pak");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/Harley_Quinn_Nsfw/plugin.sig", "sig");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/Harley_Quinn_Nsfw/plugin.ucas", "ucas");
system.Download("file://C:/Users/lostl/AppData/Local/JsonToRD/UEFN-resources/Harley_Quinn_Nsfw/plugin.utoc", "utoc");


archive from;
archive to;
SoftObjectProperty search;
SoftObjectProperty replace;

from = import "fortnitegame/Content/Characters/CharacterParts/Female/Medium/Heads/CP_Head_F_HightowerHoneydew_Swole.uasset";
search = from.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Heads/F_MED_HighTower_Honeydew_Head_01/Meshes/F_MED_HighTower_Honeydew_Head_01.F_MED_HighTower_Honeydew_Head_01");
replace = from.CreateSoftObjectProperty("/Game/invalid.invalid");
from.SwapSoftObjectProperty(search, replace);
from.Save();


from = import "fortnitegame/Content/Characters/CharacterParts/FaceAccessories/CP_F_MED_HightowerHoneydew_Swole.uasset";
search = from.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Bodies/F_MED_HighTower_Honeydew_Swole/Meshes/Parts/F_MED_HighTower_Honeydew_Swole_FaceAcc.F_MED_HighTower_Honeydew_Swole_FaceAcc");
replace = from.CreateSoftObjectProperty("/Game/invalid.invalid");
from.SwapSoftObjectProperty(search, replace);
from.Save();



from = import "FortniteGame/Content/Athena/Heroes/Meshes/Bodies/CP_Body_Commando_F_HightowerHoneydew_Swole.uasset";
search = from.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Bodies/F_MED_HighTower_Honeydew_Swole/Meshes/F_MED_HighTower_Honeydew_Swole.F_MED_HighTower_Honeydew_Swole");
replace = from.CreateSoftObjectProperty("/a99a85cd-4aab-52ad-9996-d38eab7ba31c/HarleyQuinnNsfw/Meshes/harleyquinnnsfw.harleyquinnnsfw");
from.SwapSoftObjectProperty(search, replace);

from.Save();

