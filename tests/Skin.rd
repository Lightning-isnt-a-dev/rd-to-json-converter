sign: "Name", "Gringle Guff to Caper (White)"
sign: "Icon", "https://media.fortniteapi.io/images/b6bb174b14d61092bf940989281a3722/transparent.png"
sign: "Author", "Made By Nezy"

from = import "/Game/Characters/CharacterParts/Male/Medium/Heads/CP_Athena_Head_M_LRG_Comet";
to = import "/MeshCosmetics/Jumpsuit/F_MED_Jumpsuit_Scrap/CP/CP_Athena_Head_F_Jumpsuit_Scrap_Mutable";



from.Swap(to);
from.Save();



from = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_M_LRG_CometWinter";
to = import "/MeshCosmetics/Jumpsuit/F_MED_Jumpsuit_Scrap/CP/CP_Athena_Body_F_Jumpsuit_Scrap_Mutable";



from.Swap(to);
from.Save();



from = import "/BRCosmetics/Characters/CharacterParts/FaceAccessories/CP_M_LRG_CometWinter_FaceAcc";
to = import "/Game/Characters/CharacterParts/FaceAccessories/CP_M_FaceAcc_Empty";



from.Swap(to);
from.Save();



from = import "/BRCosmetics/Athena/Heroes/Hero_CometWinter";
to = import "/MeshCosmetics/Jumpsuit/F_MED_Jumpsuit_Scrap/Hero_Jumpsuit_Scrap";



from.Swap(to);
from.Save();


