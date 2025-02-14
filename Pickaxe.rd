sign: "Name", "Default Pickaxe to Stellar Axe"
sign: "Icon", "https://media.fortniteapi.io/images/2149460bed6da81cbc9a5c8ba2a0e4ff/transparent.png"
sign: "Author", "made by @noahhxyz#0001❤"

archive from; // Format: system.Download(fileURL, fileExtension)
archive to; // Format: system.Download(fileURL, fileExtension)
SoftObjectProperty search;
SoftObjectProperty replace;

from = import "/Game/Athena/Items/Weapons/WID_Harvest_Pickaxe_Athena_C_T01"; // Format: system.Download(fileURL, fileExtension)
to = import "/Game/Athena/Items/Weapons/WID_Harvest_Pickaxe_Celestial"; // Format: system.Download(fileURL, fileExtension)

from.Swap(to); // Format: system.Download(fileURL, fileExtension)
from.Save(); // Format: system.Download(fileURL, fileExtension)

