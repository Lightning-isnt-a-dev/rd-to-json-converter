import json
import os
from pathlib import Path

def Signs(CONTENTS, FinalDict):
    SIGNREFS = [("Name", "Name"), ("Icon", "Icon"), ("Author", "Message")]

    try:
        for line in CONTENTS:
            if "//" in line[:3]:
                continue
            for RD, JSON in SIGNREFS:
                if RD in line:

                    VALUE = line.split(",")[1][len('"')+1:-len('"')-1]
                    FinalDict[JSON] = VALUE

                    if RD == "Icon":
                        FinalDict["Swapicon"] = VALUE
    except IndexError:
        pass

    return FinalDict

def Downloadables(CONTENTS, FinalDict):
    HAS_UEFN = False
    
    LinkDicts = {}

    for line in CONTENTS:
        if "//" in line[:3]:
            continue
        if "system.Download" in line:
            DownloadablesDict = FinalDict["Downloadables"] = []
            HAS_UEFN = True


            line = line.split("system.Download")[1][len('('):-len('");')]
            
            PATH = line.split(",")[0]
            FILETYPE = os.path.splitext(PATH)[1]
            LinkDicts[FILETYPE[len('.'):-len('"')]] = PATH[len('"'):-len('"')]

    if HAS_UEFN:
        DownloadablesDict.append(LinkDicts)

    return FinalDict, HAS_UEFN



def Swaps(CONTENTS, HAS_UEFN, FinalDict):

    ImportIndexes = []
    IsFAS = False
    EXOSUIT = False

    for INDEX, LINE in enumerate(CONTENTS):
        if "//" in LINE[:3]:
            continue

        if "from =" in LINE:
            ImportIndex = INDEX

        if ".Invalidate" in LINE:
            EXOSUIT = True

        if "SwapSoftObjectProperty" in LINE:
            IsFAS = True

        if "from.Save()" in LINE:
                SaveIndex = INDEX+1
                ImportIndexes.append((ImportIndex, SaveIndex, IsFAS, EXOSUIT))
                IsFAS = False

    FinalDict["Assets"] = []

    Assets = FinalDict["Assets"]
    DictToAdd = {}

    SwapsDict = {}

    ASSETREFS = [("from =", "AssetPath"), ("to =", "AssetPathTo")]

    for START, END, ISFAS, EXOSUIT in ImportIndexes:
        for index in range(START, END):
            line = CONTENTS[index]
            if "//" in line[:3]:
                continue
            for RD, JSON in ASSETREFS:

                if "from.Swap" in line:
                    if DictToAdd != {}:
                        Assets.append(DictToAdd)
                    DictToAdd = {}


                if RD in line:
                    VALUE = line.split("import")[1][len('"')+1:-len('"')-2]
                    DictToAdd[JSON] = VALUE


                if "CreateSoftObjectProperty" in line and ISFAS:
                    try:
                        if DictToAdd["Swaps"]:
                            pass
                    except KeyError:
                        Swaps = DictToAdd["Swaps"] = []

                    if "search" in line:
                            SwapsDict["search"] = line.split("Property(")[1][len('"'):-len('"')-3]
                            break


                    if "replace" in line:
                        ReplaceValue = line.split("Property(")[1][len('"'):-len('"')-3]
                        SwapsDict["replace"] = ReplaceValue

                        SwapsDict["type"] = "string"
                        #check for numbers in first part of path, sets UEFN to true if yes
                        if "/" in ReplaceValue:
                            if not Path(ReplaceValue).parts[1].isalpha() and HAS_UEFN:
                                SwapsDict["UEFN"] = True
                        
                        if SwapsDict["replace"] and SwapsDict["search"]:
                            Swaps.append(SwapsDict)
                            SwapsDict = {}
                        break

    return FinalDict

        

#MAIN

def rd_to_json(FILEPATH):
    FILENAME = os.path.splitext(FILEPATH)[0]
    FinalDict = {}

    #read rd
    try:
        with open(FILEPATH, "r", encoding="utf-8") as FILE:
            RD_CONTENTS = FILE.readlines()
    except:
        print("Couldn't open RD file.")
        return        


    #conversions
    FinalDict = Signs(RD_CONTENTS, FinalDict)
    FinalDict, HAS_UEFN = Downloadables(RD_CONTENTS, FinalDict)
    FinalDict = Swaps(RD_CONTENTS, HAS_UEFN, FinalDict)

    #make json
    try:
        with open(FILENAME+".json", "w", encoding="utf-16") as JSONFILE:
            json.dump(FinalDict, JSONFILE)
    except:
        print("Couldn't open JSON file.")


if __name__ == "__main__":

    #RDPATH = None

    #while True:
        RDPATH = input("Input RD Path: (exit to exit)\n")

        #if RDPATH == "exit":
            #break

        if not os.path.exists(RDPATH):
            print("Not a valid path.")
            #continue

        if os.path.splitext(RDPATH)[1] != ".rd":
            print("Not a rd file.")
            #continue

        rd_to_json(RDPATH)