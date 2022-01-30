# SaveNode

![icon](https://user-images.githubusercontent.com/96730892/147491598-49396596-4f0f-4e4e-ba83-aac5eec34682.png)

SaveNode is a Godot addon which makes it very easy to setup savestates for your Godot game.

## Engine Compatibility
* Godot 3.3
* Godot 3.4

## Setup

### Adding to a existing project

1. Click on the AssetLib inside editor or go to the [Godot Asset Library](https://godotengine.org/asset-library/asset/425) to download the latest release, or you can clone/download this repository to get the latest commit.
2. Select the `addons/SaveNode` folder and move it into your Godot project. 
(**Note**: make sure the structure is still `res://addons/SaveNode`)
4. Now go to the plugins tab also inside project-settings and enable the SaveNode plugin.

# Documentation

## Properties
|Type|Name|description|
|----|----|-----------|
|`dictionary`|data|The var which will be saved and loaded.|
|`func`|saveData()|When used, the var data will be saved into an savefile.|
|`func`|loadData()|When used, the data from the savestate will be put into the var data.|
