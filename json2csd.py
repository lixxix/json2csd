import xml.etree.cElementTree as ET
import json
import xml.dom.minidom
import random

def addSubList(root, key1, data):
    for key in range(len(data)):
        if type(data[key]) in (dict,):
            subroot = ET.SubElement(root, key1)
            addSubDict(subroot, data[key])
            continue
        if type(data[key]) in (list,):
            addSubList(root, data[key])
            continue
        root.set(key,str(data[key]))


def addSubDict(root, data):
    for key in data:
        if type(data[key]) in (dict,):
            subroot = ET.SubElement(root, key)
            addSubDict(subroot, data[key])
            continue
        if type(data[key]) in (list,):
            addSubList(root, key, data[key])
            continue
        root.set(key, str(data[key]))

def jsontoxml(dictionary, rootName="root"):
    root = ET.Element(rootName)
    addSubDict(root, dictionary)
    return root

def SearchChildren(child):
    for i in range(len(child)):
        subchild = child[i]
        if "Children" in subchild:
            SearchChildren(subchild["Children"])
            abst = dict()
            abst["AbstractNodeData"] = subchild.pop("Children")
            subchild["Children"] = abst


def json2csd(jfile, cfile):
    with open(jfile,'r',encoding='utf8') as f:
        jsonfile = json.load(f)

    Propert = {}
    Propert["ID"] = jsonfile.pop("ID")
    Propert["Version"] = jsonfile.pop("Version")
    Propert["Type"] = jsonfile.pop("Type")
    Propert["Name"] = jsonfile.pop("Name")
    jsonfile['PropertyGroup'] = Propert

    content = jsonfile['Content']
    try:
        content["Content"].pop("UsedResources")
    except Exception as e:
        print(e)
    content["ctype"] = content['Content'].pop("ctype")
    content["ctype"] = "GameProjectContent"

    content = content["Content"]
    content["Animation"].pop("ctype")
    animation_list = content['AnimationList']
    animation_info = dict()
    animation_info["AnimationInfo"] = animation_list
    content["AnimationList"] = animation_info

    for i in range(len(animation_list)):
        animation_list[i].pop("ctype")
        R = int(random.random() * 256)
        G = int(random.random() * 256)
        B = int(random.random() * 256)
        rendercolor = {"R":R, "G":G, "B":B}
        animation_list[i]["RenderColor"] = rendercolor

    timeline_list = content["Animation"].pop("Timelines")

    for i in range(len(timeline_list)):
        timeline_list[i].pop("ctype")
        frames = timeline_list[i]["Frames"]

        for j in range(len(frames)):
            ctype = frames[j].pop("ctype")
        if ctype == "PointFrameData":
            timeline_list[i]["PointFrame"] = timeline_list[i].pop("Frames")
        elif  ctype == "ScaleValueFrameData":
            timeline_list[i]["ScaleFrame"] = timeline_list[i].pop("Frames")
        elif ctype == "IntFrameData":
            timeline_list[i]["IntFrame"] = timeline_list[i].pop("Frames")

    content["Animation"]["Timeline"] = timeline_list
    ObjectData = content["ObjectData"]
    SearchChildren(ObjectData["Children"])
    abst = dict()
    abst["AbstractNodeData"] = ObjectData.pop("Children")
    ObjectData["Children"] = abst

    root = jsontoxml(jsonfile, rootName='GameFile')
    xmlData = ET.tostring(root, encoding='utf8',method='xml').decode()
    dom = xml.dom.minidom.parseString(xmlData)
    prettyXmlData = dom.toprettyxml()

    f = open(cfile,'w')
    f.write(prettyXmlData)
    f.close()

json2csd("ExpNode.json","ExpNode.csd")