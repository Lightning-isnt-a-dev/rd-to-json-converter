// Add the signing data for the swapper to display (all signs are optional)
sign: "Author", "Meh19"
sign: "Name", "Default to Husk"
sign: "Description", "This converts Default to Husk"
sign: "Version", "Latest" // UEFN files only work on the Fortnite version they were made on
sign: "Icon", "https://github.com/Tamely/SaturnMarketplace/blob/main/Husk/Icon.png?raw=true"
// Download the custom data.
// Format: system.Download(fileURL, fileExtension)
system.Download("https://354e6df3-0bec-41b0-b3a5-334804532a4f-00-1c0ya1vrug7id.picard.replit.dev/plugin.utoc", "utoc"); // Format: system.Download(fileURL, fileExtension)
system.Download("https://354e6df3-0bec-41b0-b3a5-334804532a4f-00-1c0ya1vrug7id.picard.replit.dev/plugin.ucas", "ucas");
system.Download("https://354e6df3-0bec-41b0-b3a5-334804532a4f-00-1c0ya1vrug7id.picard.replit.dev/plugin.pak", "pak");
system.Download("https://354e6df3-0bec-41b0-b3a5-334804532a4f-00-1c0ya1vrug7id.picard.replit.dev/plugin.sig", "sig");

archive from = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime_C"; // Format: system.Download(fileURL, fileExtension)
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime";
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime_E";
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime_B";
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime_G";
ar.Invalidate();
ar.Save();
ar = import "/Game/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Prime_A";
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_M_Prime";
ar.Invalidate();
ar.Save();
ar = import "/BRCosmetics/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_M_Prime_G";
ar.Invalidate();
ar.Save();
ar = import "FortniteGame/Content/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Fallback.uasset"; // Format: system.Download(fileURL, fileExtension)
SoftObjectProperty search = ar.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Bodies/F_MED_Ramirez_Fallback/Meshes/F_MED_Ramirez_Fallback.F_MED_Ramirez_Fallback"); // Format: system.Download(fileURL, fileExtension)
SoftObjectProperty replace = ar.CreateSoftObjectProperty("/f5a3d18d-4240-a525-1ed3-2da69f7538f6/Skins/Husk/Husk_V2.Husk_V2"); // Format: system.Download(fileURL, fileExtension)
ar.SwapSoftObjectProperty(search, replace); // Format: system.Download(fileURL, fileExtension)
ar.Save();