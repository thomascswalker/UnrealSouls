//Maya ASCII 2024 scene
//Name: PlayerRig_BonfireSit.0003.ma
//Last modified: Tue, Jun 27, 2023 02:46:33 PM
//Codeset: 1252
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/thoma/OneDrive/Documents/GitHub/UnrealSouls/Assets/Characters/Player//PlayerRig.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/thoma/OneDrive/Documents/GitHub/UnrealSouls/Assets/Characters/Player//PlayerRig.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "C7DE013D-4773-C1A5-BCCA-43BB2BDA4D81";
createNode transform -s -n "persp";
	rename -uid "87FFBE54-42A2-E19F-08BC-40B55E2261FC";
	setAttr ".t" -type "double3" -225.32688029022987 219.19633534089766 252.84097885406251 ;
	setAttr ".r" -type "double3" -20.738352733093969 1036.1999999999177 -2.2033319083317886e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F5A0726-4AFE-AB76-0C62-33B2EF12195B";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 375.79479114219293;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -34.510288960594096 3.8054919242858887 -61.951594662085014 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "imagePlane2" -p "perspShape";
	rename -uid "2C718E90-4860-54E1-A0BD-8C843ACB2A54";
createNode transform -s -n "top";
	rename -uid "B35311C3-42DC-6C51-737A-D39428662633";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.601400609365314 1000.1 19.073225864160449 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EC40FE56-4690-3215-5B9B-81A39D1A8D4B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 162.49443114039562;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "BC54AEB0-496B-ABDE-D4BB-1884F44FB2BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.508439362476359 41.190260538750657 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8CF1B19C-47A9-B238-E56E-18AB849188CD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 160.9069049679006;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "AEF62BC9-4A8B-FCC3-2BE2-AF8D1265373D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 31.314986663130149 -41.132584722489 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AC568599-4640-EE3D-4CAF-E78B96927A4C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 139.2051322052771;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "C080653F-425E-8959-FF48-D58F6E8AF1D6";
	setAttr ".t" -type "double3" -1000.1 24.032237956917772 -41.881374006842485 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "C5944C37-4EE0-DC05-66E1-E3B74590F5DA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 87.417074454090496;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "DEA05FF9-40F4-321B-885C-15BE96F27D2A";
	setAttr ".t" -type "double3" -995.1 34.376076800000007 -22.838147200000019 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 20.13662049257757 20.13662049257757 20.13662049257757 ;
createNode transform -n "imagePlane3";
	rename -uid "ACD79CAA-4AE4-9A4D-95AA-D3888B7EAC20";
	setAttr ".t" -type "double3" 383.82948490405192 67.247824369224887 -110.73269282256379 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 91.470634846298623 91.470634846298623 91.470634846298623 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane3";
	rename -uid "9CF059D0-4E9D-D769-E516-DD95014F492A";
	setAttr -k off ".v";
	setAttr ".fc" 202;
	setAttr ".imn" -type "string" "C:/Users/thoma/Desktop/side/Image-00.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1067 725 ;
	setAttr ".dic" yes;
	setAttr ".dlc" no;
	setAttr ".d" 78;
	setAttr ".w" 10.67;
	setAttr ".h" 7.25;
	setAttr ".cs" -type "string" "sRGB";
createNode lookAt -n "camera1_group";
	rename -uid "A6868830-4585-9169-4EB9-34AF1808FAF6";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 251.07988736671638;
	setAttr ".tws" -2.561320938754782e-06;
createNode transform -n "camera1" -p "camera1_group";
	rename -uid "4FB25AB5-4833-3482-777F-719896624BF7";
	setAttr ".t" -type "double3" -235.93913012653792 70.866831155350226 -28.144122506968817 ;
	setAttr ".s" -type "double3" 17.393650881072332 17.393650881072332 17.393650881072332 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "8C331078-4A7E-BF8B-2593-1DB7A48FA9B2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 17.999987882312212;
	setAttr ".coi" 251.07988736671638;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 148.57207210424986 69.143556326901688 22.462862555654056 ;
	setAttr ".jc" yes;
createNode transform -n "camera1_aim" -p "camera1_group";
	rename -uid "D186C30B-4E2A-52AB-187A-51ACC4352A4A";
	setAttr ".t" -type "double3" 15.111338187710217 70.523667460952666 -24.316010967513147 ;
	setAttr ".s" -type "double3" 10.003215234947048 10.003215234947048 10.003215234947048 ;
	setAttr ".drp" yes;
createNode locator -n "camera1_aimShape" -p "camera1_aim";
	rename -uid "D767288C-496B-D821-86C1-7489DFA35734";
	setAttr -k off ".v" no;
createNode transform -n "locator1";
	rename -uid "4D93520B-411F-55D1-5358-8AAAF11203BE";
	setAttr ".t" -type "double3" -43.526789607993884 1.4210854715202004e-14 -52.477455069439429 ;
	setAttr ".s" -type "double3" 33.480710456433904 33.480710456433904 33.480710456433904 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "2EBB351D-4C84-1558-5649-3DBA17D2C36E";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6F72025C-4EDE-3398-98CC-6D8D5744FC27";
	setAttr -s 504 ".lnk";
	setAttr -s 504 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A552C61A-4645-C4E9-8E4F-1ABC17C323BD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8C3447AB-4695-CF6F-E740-BF900FB6152D";
createNode displayLayerManager -n "layerManager";
	rename -uid "FEA6AE70-456D-0B08-766B-8E981C634883";
	setAttr ".cdl" 2;
	setAttr -s 2 ".dli[1]"  2;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "8F0A7080-4E9F-5093-A09B-6CB5F9B8C42A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EE692933-4317-F7DD-A326-58BBAC3F9637";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A60F27CB-4C28-3513-4A19-619199631951";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "65BC3640-46E0-C425-5EA9-4AAEF824F26A";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7D953E55-489B-C7A0-AD6C-A295C31235EB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "191652FA-4909-4F71-92E2-1BA23A615685";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "CD3B9498-42EB-0FF7-1189-1FB852F7E3D9";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4B703B08-4683-6EF8-3E34-5DAC6F960CA0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|left\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 317\n            -height 438\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1_group|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 234\n            -height 1023\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1725\n            -height 1032\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1725\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1725\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D60041C3-44BC-C726-4D34-8497051244FF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 64 -ast 0 -aet 64 ";
	setAttr ".st" 6;
createNode standardSurface -n "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png";
	rename -uid "199E7F86-4DD1-D886-9AEC-31A92EA97D10";
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture";
	rename -uid "0E827CB9-43A0-8F38-89EA-47B6F07FEFF2";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16D87F08.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "DF8168FF-44EB-BEA8-A8F4-1984A2D6BE1B";
createNode file -n "Bitmaptexture_ncl1_1";
	rename -uid "778FE287-4AC6-28F2-BD14-2DB6BC58A8C9";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16D88308.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "039E9700-469E-573D-0C6B-C18AF0A8261F";
createNode file -n "Bitmaptexture_ncl1_3";
	rename -uid "27792FF7-48CC-4403-DAC5-85B68F2923B7";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/170E4308.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "CAB8FC45-4EDB-F3D8-EF6D-B6870E7D9A26";
createNode file -n "Bitmaptexture_ncl1_2";
	rename -uid "C12D3652-42E8-680E-C35E-4DA222D3CCB9";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/170E4308.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "7693402C-4686-EF88-AD0C-CD85ADB8ED66";
createNode shadingEngine -n "mesh_5SG";
	rename -uid "CA5DF7B4-4728-4A9D-CB9D-3DA1C1252581";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "90431051-4649-049D-707A-1B8464933B5D";
createNode standardSurface -n "__1711D048FBXASC046png";
	rename -uid "CDD17D9F-4A4C-0E0F-6DD5-15A2809A9C37";
	setAttr ".sr" 0;
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture_ncl1_4";
	rename -uid "D352D809-49CD-62A6-F0E0-A3B37FED1D8D";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711D048.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "167F3245-490D-5457-679F-13AC0129FB19";
createNode shadingEngine -n "mesh_5SG1";
	rename -uid "6072CE5E-4F48-B201-92BF-7BB2BBCB8B41";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "270F2AAA-4A51-8720-0577-679F5B83F4C3";
createNode standardSurface -n "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png";
	rename -uid "89A83789-44B3-0CA4-49BD-B6BB7AC385DD";
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture_ncl1_5";
	rename -uid "3A7DA84C-4C40-890A-D7A2-06ABCA48D1F3";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711C648.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "9CEDEBF2-40EA-EF6A-BC83-91AEE2E80FBC";
createNode file -n "Bitmaptexture_ncl1_6";
	rename -uid "AEF65649-4C0E-9175-851F-5C83CC580D6E";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711CC48.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "82CE7303-4D92-CED5-0963-3CB74B112BAD";
createNode file -n "Bitmaptexture_ncl1_8";
	rename -uid "95B0220E-4A90-07D6-D76A-7B882095A1F6";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711DA08.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "38FE2B91-4681-251E-5986-8A840CE46925";
createNode file -n "Bitmaptexture_ncl1_7";
	rename -uid "9A344501-4EC9-09D5-F972-3DB2730A6049";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711DA08.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "B84255AB-43DD-CA36-7C92-CC9A429F8ABB";
createNode shadingEngine -n "mesh_5SG2";
	rename -uid "2C278DBB-4BC5-9340-EEC1-DF8CEE032E74";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "E8EC4EBD-422F-52D7-610E-A89B9D3471A1";
createNode standardSurface -n "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png";
	rename -uid "F08A3391-4778-E940-786E-A58FE3E33C13";
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture_ncl1_9";
	rename -uid "EBD6102C-4342-C581-DB0A-D3BA8D2B11BB";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711AEC8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "AA0266A1-4725-58E5-0C5F-77B87C1A84E3";
createNode file -n "Bitmaptexture_ncl1_10";
	rename -uid "0F53FC10-471B-207E-C740-8780832A5909";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711E9C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "ABE7A807-4F45-CACC-F2AD-6DAE344EEDBA";
createNode file -n "Bitmaptexture_ncl1_12";
	rename -uid "490BCCCC-43ED-C262-7F0C-9387A8E70026";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711DC08.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "9B17F92C-4BB0-830A-F751-538EDC2D91AC";
createNode file -n "Bitmaptexture_ncl1_11";
	rename -uid "B89DF658-46D9-784C-E377-5E842C0D1D1C";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711DC08.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "08C853A5-480E-C90D-2152-1CBA767448D0";
createNode shadingEngine -n "mesh_5SG3";
	rename -uid "C90E7506-4289-5F1F-E086-82B691DBF6A7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "DECC4A4C-4BA2-F6E1-2225-05AAF4E6E1B9";
createNode standardSurface -n "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png";
	rename -uid "0444B423-46E0-44BA-C92E-CA8C234B89D0";
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture_ncl1_13";
	rename -uid "ECA2CEA6-4819-421E-6021-F697BB9233D0";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711E3C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "B20B4176-4CE3-CD25-1F9C-56A1C2AE7B58";
createNode file -n "Bitmaptexture_ncl1_14";
	rename -uid "4D063F28-437C-8F9F-61AC-9D862F590E37";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711E5C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "BB59A4A0-4B41-3A31-CCD4-20808AED58A8";
createNode file -n "Bitmaptexture_ncl1_16";
	rename -uid "816F1D95-46C3-489E-2141-518803645B76";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16D890C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "C108860A-4A49-29F1-F523-048B06A220C6";
createNode file -n "Bitmaptexture_ncl1_15";
	rename -uid "A85FD10A-4A56-8A8C-2104-EA970276C74F";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16D890C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "3CC72643-4BDC-1FFA-B000-A9B07E8A7DD9";
createNode shadingEngine -n "mesh_5SG4";
	rename -uid "D6FACBA0-4DA1-EE88-2AB2-E69F184280A5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "16161475-4D89-4A9A-2E40-4C94F2BE0D55";
createNode standardSurface -n "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png";
	rename -uid "D9364826-4A58-0278-BBC8-14A94045A8C7";
	setAttr ".sior" 1.5199999809265137;
	setAttr ".srot" 0.25;
	setAttr ".subr" -type "float3" 100 50 25 ;
	setAttr ".ctr" 0;
	setAttr ".ctior" 1.5199999809265137;
	setAttr ".ctro" 0.25;
	setAttr ".ctac" 0.5;
	setAttr ".ctar" 0.5;
	setAttr ".tfior" 1.2999999523162842;
	setAttr ".e" 1;
	setAttr ".ec" -type "float3" 0 0 0 ;
createNode file -n "Bitmaptexture_ncl1_17";
	rename -uid "054C6C3E-4E78-9F23-D8D8-2494C5EDC78C";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16C44408.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "D8F439AA-4154-7A9D-59C9-1EB8D4BFE7D9";
createNode file -n "Bitmaptexture_ncl1_18";
	rename -uid "9F99B2D6-4863-640F-2AAB-50916D9462B1";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16C44608.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture19";
	rename -uid "02D6A6A1-4435-10B0-B4B1-10A53C1E77BE";
createNode file -n "Bitmaptexture_ncl1_20";
	rename -uid "D8654B39-411B-3906-9663-73970E9973EB";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16C44BC8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture20";
	rename -uid "A1338ADC-4B19-BEDA-DCC1-0796C3CB714A";
createNode file -n "Bitmaptexture_ncl1_19";
	rename -uid "3D2CF3B5-4872-D926-7CE2-DCA028B7E5DE";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16C44BC8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture21";
	rename -uid "EFFA492D-4F56-3CD8-CC46-6787C8D7A567";
createNode shadingEngine -n "mesh_5SG5";
	rename -uid "A4455EDE-4636-EC8A-8ED8-A0AC02570086";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "23C2CFE9-4370-582E-B54C-579DE3219286";
createNode file -n "Bitmaptexture_ncl1_21";
	rename -uid "A05A0DD4-4549-42BD-DFAF-52AFBA101C0E";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16D88308.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture22";
	rename -uid "5C38A30D-4A34-B338-CC34-1A950F1D3FEE";
createNode file -n "Bitmaptexture_ncl1_22";
	rename -uid "ADF13C6D-448B-7965-83B0-A08D8B3507DE";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711CC48.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture23";
	rename -uid "08CEF2AE-4BFE-7583-D918-E1969E7A0F35";
createNode file -n "Bitmaptexture_ncl1_23";
	rename -uid "5E551362-4BF9-A431-F9CF-7792A575716A";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711E9C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture24";
	rename -uid "FAB82D5B-4567-9F9C-D35D-0E9D3AAE8193";
createNode file -n "Bitmaptexture_ncl1_24";
	rename -uid "2443B412-4A0E-D109-FA02-C7936161C5FD";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/1711E5C8.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture25";
	rename -uid "71D42FED-443D-95D7-8FC6-42A80B1F8E2A";
createNode file -n "Bitmaptexture_ncl1_25";
	rename -uid "08923CAC-446B-A491-8B34-DDBC2F0F198A";
	setAttr ".ftn" -type "string" "C:/Users/thoma/AppData/Roaming/Ninja Ripper/2023.06.24_11.30.27_DSMODT.exe_30744/frame_1/16C44608.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture26";
	rename -uid "DE3EC196-4A79-03AB-25EB-5CBD61498351";
createNode displayLayer -n "Reference";
	rename -uid "D41F2897-49C4-DB2B-6CC9-F2BF53B3BED3";
	setAttr ".dt" 1;
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode reference -n "modelRN";
	rename -uid "8F9767EB-4E75-7E0E-CC3B-BA89F345DBE2";
	setAttr ".fn[0]" -type "string" "C:/Users/thoma/OneDrive/Documents/GitHub/UnrealSouls/Assets/Characters/Player//PlayerRig.ma";
	setAttr -s 821 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 19
		2 "|model:Controls|model:c_waist" "translate" " -type \"double3\" 0 -81.12613598701098283 -64.79756865056612014"
		
		2 "|model:Controls|model:c_foot_l" "translate" " -type \"double3\" 12.09118893532687622 0 -7.52455730846497062"
		
		2 "|model:Controls|model:c_foot_l" "rotate" " -type \"double3\" 0.066199674089955696 5.82664238211394991 0.33973119074250135"
		
		2 "|model:Controls|model:c_foot_r" "translate" " -type \"double3\" 3.49112292109623601 -1.98864322045819075 1.99843297013643428"
		
		2 "|model:Controls|model:c_foot_r" "rotate" " -type \"double3\" -41.67718023686178697 -7.59866067246259469 76.06925428851431548"
		
		2 "|model:Controls|model:c_upperarm_l" "rotate" " -type \"double3\" 0 0 -84.11759647300763731"
		
		2 "|model:Controls|model:c_upperarm_l" "rotateX" " -av"
		2 "|model:Controls|model:c_upperarm_l" "rotateY" " -av"
		2 "|model:Controls|model:c_upperarm_l" "rotateZ" " -av"
		2 "|model:Controls|model:c_upperarm_r" "rotate" " -type \"double3\" 0 0 79.57577192050639781"
		
		2 "|model:Controls|model:c_upperarm_r" "rotateX" " -av"
		2 "|model:Controls|model:c_upperarm_r" "rotateY" " -av"
		2 "|model:Controls|model:c_upperarm_r" "rotateZ" " -av"
		2 "|model:Controls|model:c_knee_l" "translate" " -type \"double3\" 30.67001459304720612 0 -14.5921730676612853"
		
		2 "|model:Controls|model:c_knee_r" "translate" " -type \"double3\" -23.91491808616891035 0 -9.21972267093637754"
		
		2 "|model:Controls|model:c_waist2" "rotate" " -type \"double3\" -13.75654172374273543 0 0"
		
		2 "|model:Controls|model:c_waist2" "rotateX" " -av"
		2 "|model:Controls|model:c_waist2" "rotateY" " -av"
		2 "|model:Controls|model:c_waist2" "rotateZ" " -av"
		"modelRN" 930
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"visibility" " -k 0 1"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghosting" " 0"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostingMode" " 0"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostPreFrames" " 3"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostPostFrames" " 3"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostsStep" " 4"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostFrames" " -type \"Int32Array\" 0"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostOpacityRange" " -type \"float2\" 0.15000000999999999 0.5"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostColorPre" " -type \"float3\" 0.447 1 1"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"ghostColorPost" " -type \"float3\" 0.87800001999999999 0.67799997000000001 0.66299998999999998"
		
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"smoothDrawType" " 3"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"useGlobalSmoothDrawType" " 0"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"showDisplacements" " 1"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"dispResolution" " 1"
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"displaySmoothMesh" " 0"
		2 "|model:root|model:pelvis|model:spine_01" "rotate" " -type \"double3\" 0 0 -14.45732212066650391"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02" "rotate" " -type \"double3\" 0 0 3.46446943283081055"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04" 
		"rotate" " -type \"double3\" 0.00044854417539478598 2.9735288447727806e-05 2.07423080614287647"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01|model:neck_02" 
		"rotate" " -type \"double3\" -9.7964788437820971e-05 0 1.91352868080139138"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:lowerarm_twist_02_l" 
		"rotate" " -type \"double3\" 1.01518845558166504 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:lowerarm_twist_01_l" 
		"rotate" " -type \"double3\" 3.04556536674499556 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l" 
		"rotate" " -type \"double3\" -4.27447896585071696 -1.74680446304385728 -2.19761967983212392"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l" 
		"rotate" " -type \"double3\" -13.05118768367417204 -4.32702618638185843 -3.36225946475179516"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l" 
		"rotate" " -type \"double3\" 3.27470952441960961 5.26425729575951795 -0.72504584677032435"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:upperarm_twist_01_l" 
		"rotate" " -type \"double3\" 9.60966777801513672 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:upperarm_twist_02_l" 
		"rotate" " -type \"double3\" 2.40241694450378418 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:lowerarm_twist_02_r" 
		"rotate" " -type \"double3\" 1.01518845558166504 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:lowerarm_twist_01_r" 
		"rotate" " -type \"double3\" 3.04556536674499556 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r" 
		"rotate" " -type \"double3\" -4.27447896585071696 -1.74680446304385728 -2.19761967983212392"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r" 
		"rotate" " -type \"double3\" -13.05118768367417204 -4.32702618638185843 -3.36225946475179516"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r" 
		"rotate" " -type \"double3\" 3.27470952441960961 5.26425729575951795 -0.72504584677032435"
		
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:upperarm_twist_01_r" 
		"rotate" " -type \"double3\" 9.60966777801513672 0 0"
		2 "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:upperarm_twist_02_r" 
		"rotate" " -type \"double3\" 2.40241694450378418 0 0"
		2 "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:calf_twist_02_l" 
		"rotate" " -type \"double3\" -0.067423366010189056 0 0"
		2 "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:calf_twist_01_l" 
		"rotate" " -type \"double3\" -0.067423366010189056 0 0"
		2 "|model:root|model:pelvis|model:thigh_l|model:thigh_twist_01_l" "rotate" 
		" -type \"double3\" 0.042227506637573242 0 0"
		2 "|model:root|model:pelvis|model:thigh_l|model:thigh_twist_02_l" "rotate" 
		" -type \"double3\" 0.021113753318786621 0 0"
		2 "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:calf_twist_02_r" 
		"rotate" " -type \"double3\" -0.067423366010189056 0 0"
		2 "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:calf_twist_01_r" 
		"rotate" " -type \"double3\" -0.067423366010189056 0 0"
		2 "|model:root|model:pelvis|model:thigh_r|model:thigh_twist_01_r" "rotate" 
		" -type \"double3\" 0.042227506637573242 0 0"
		2 "|model:root|model:pelvis|model:thigh_r|model:thigh_twist_02_r" "rotate" 
		" -type \"double3\" 0.021113753318786621 0 0"
		2 "|model:root|model:ik_foot_root|model:ik_foot_l" "rotate" " -type \"double3\" 90.0446929931640625 -88.1916656494140625 -81.52722930908203125"
		
		2 "|model:root|model:ik_foot_root|model:ik_foot_r" "rotate" " -type \"double3\" -89.95549774169921875 88.1916656494140625 81.52722930908203125"
		
		2 "|model:root|model:ik_hand_root|model:ik_hand_gun" "rotate" " -type \"double3\" 68.47310638427734375 -39.4101104736328125 53.66651153564453125"
		
		2 "|model:root|model:ik_hand_root|model:ik_hand_gun|model:ik_hand_l" "rotate" 
		" -type \"double3\" -107.73758697509765625 -34.03679275512695312 -134.506988525390625"
		
		2 "|model:root|model:ik_hand_root|model:ik_hand_gun|model:ik_hand_r" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|model:back" "translate" " -type \"double3\" -9.85616635167195021 94.60684985434680527 -1000.10000000000002274"
		
		2 "|model:back" "rotate" " -type \"double3\" 0 180 0"
		2 "|model:back" "scale" " -type \"double3\" 1 1 1"
		2 "|model:back" "shear" " -type \"double3\" 0 0 0"
		2 "|model:back" "rotatePivot" " -type \"double3\" 0 0 0"
		2 "|model:back" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|model:back" "scalePivot" " -type \"double3\" 0 0 0"
		2 "|model:back" "scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|model:back" "rotateAxis" " -type \"double3\" 0 0 0"
		2 "|model:back|model:backShape" "orthographicWidth" " 226.99261065757059441"
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L" 
		"visibility" " 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R" 
		"rotate" " -type \"double3\" -13.2928696042526937 -2.36944334374558352 16.05793823836111045"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R|model:IKXKnee_R" 
		"rotate" " -type \"double3\" 0 0 -35.28341366862726858"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R|model:IKXKnee_R|model:IKXAnkle_R|model:IKXToes_R" 
		"rotate" " -type \"double3\" -1.0903741933039483e-05 -7.4655021097880327e-06 0.00010247604501139071"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_R|model:IKXOffsetShoulder_R|model:IKXShoulder_R" 
		"rotate" " -type \"double3\" -78.0452461244777993 48.17861454671803756 44.13961402663752409"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_R|model:IKXOffsetShoulder_R|model:IKXShoulder_R|model:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 42.63029112251072661"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M" 
		"translate" " -type \"double3\" -6.04635270893656696 -3.0467848522224088 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M" 
		"rotate" " -type \"double3\" -21.54160610356859351 2.36421820571895358 -0.44981195412013281"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M" 
		"rotate" " -type \"double3\" 0 0 -0.00092543195343873627"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M" 
		"rotate" " -type \"double3\" -1.2074182698728954e-06 0 -2.38329923324887893"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 1.2202798108125594e-06 -8.4528397982203443e-08 3.86414526475020237"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M|model:IKSpSpine1Part1_M" 
		"rotate" " -type \"double3\" -1.5380075824522981e-08 -8.1364430782214292e-08 -1.47960748144894216"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M|model:IKSpSpine1Part1_M|model:IKSpSpine1Part2_M" 
		"rotate" " -type \"double3\" -1.6427731360435263e-08 -8.1152241826262692e-08 -0.00031304631583491772"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L" 
		"rotate" " -type \"double3\" 24.98745983594731257 -7.00457318291404363 22.69877150448774472"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L|model:IKXKnee_L" 
		"rotate" " -type \"double3\" 0 0 -33.40251006099527586"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L|model:IKXKnee_L|model:IKXAnkle_L|model:IKXToes_L" 
		"rotate" " -type \"double3\" -7.7400289509570987e-06 1.5389078524243376e-06 9.877888449381209e-05"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_L|model:IKXOffsetShoulder_L|model:IKXShoulder_L" 
		"rotate" " -type \"double3\" 18.86221514177275793 57.99788248180939121 -59.00034760262784062"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_L|model:IKXOffsetShoulder_L|model:IKXShoulder_L|model:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 36.59891498924499587"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetKnee_R|model:TwistFollowParentKnee_R|model:UnTwistKnee_R" 
		"rotate" " -type \"double3\" 0 0 -35.28341366862724016"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetHip_R|model:TwistFollowParentHip_R|model:UnTwistHip_R" 
		"rotate" " -type \"double3\" 0.1872057506137742 1.3647026005720011 15.62110465825623251"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetWrist_R|model:TwistFollowParentWrist_R|model:UnTwistWrist_R" 
		"rotate" " -type \"double3\" 1.40824043957451761 8.96306443764439287 17.82320650704898668"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetElbow_R|model:TwistFollowParentElbow_R|model:UnTwistElbow_R" 
		"rotate" " -type \"double3\" 0 0 42.63029112251089003"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetShoulder_R|model:TwistFollowParentShoulder_R|model:UnTwistShoulder_R" 
		"rotate" " -type \"double3\" -19.42593796456786848 52.38077424267395799 -38.37608257374537857"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetKnee_L|model:TwistFollowParentKnee_L|model:UnTwistKnee_L" 
		"rotate" " -type \"double3\" 0 0 -33.40251006099542508"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetHip_L|model:TwistFollowParentHip_L|model:UnTwistHip_L" 
		"rotate" " -type \"double3\" -3.01656649488895434 -15.91986400642310606 21.32866595185040737"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetWrist_L|model:TwistFollowParentWrist_L|model:UnTwistWrist_L" 
		"rotate" " -type \"double3\" -0.18782263845352115 -1.81282813860779313 11.82936800402081445"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetElbow_L|model:TwistFollowParentElbow_L|model:UnTwistElbow_L" 
		"rotate" " -type \"double3\" 0 0 36.59891498923409614"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetShoulder_L|model:TwistFollowParentShoulder_L|model:UnTwistShoulder_L" 
		"rotate" " -type \"double3\" -30.15214769311692677 43.6637958006519824 -67.8333058239992539"
		
		5 3 "modelRN" "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter.instObjGroups" 
		"modelRN.placeHolderList[1]" ""
		5 3 "modelRN" "|model:root.instObjGroups" "modelRN.placeHolderList[2]" 
		""
		5 3 "modelRN" "|model:root|model:pelvis.instObjGroups" "modelRN.placeHolderList[3]" 
		""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01.instObjGroups" 
		"modelRN.placeHolderList[4]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02.instObjGroups" 
		"modelRN.placeHolderList[5]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03.instObjGroups" 
		"modelRN.placeHolderList[6]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04.instObjGroups" 
		"modelRN.placeHolderList[7]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05.instObjGroups" 
		"modelRN.placeHolderList[8]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01.instObjGroups" 
		"modelRN.placeHolderList[9]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01|model:neck_02.instObjGroups" 
		"modelRN.placeHolderList[10]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01|model:neck_02|model:head.instObjGroups" 
		"modelRN.placeHolderList[11]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01|model:neck_02|model:head|model:head_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[12]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:neck_01|model:neck_01_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[13]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l.instObjGroups" 
		"modelRN.placeHolderList[14]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l.instObjGroups" 
		"modelRN.placeHolderList[15]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l.instObjGroups" 
		"modelRN.placeHolderList[16]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:lowerarm_twist_02_l.instObjGroups" 
		"modelRN.placeHolderList[17]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:lowerarm_twist_01_l.instObjGroups" 
		"modelRN.placeHolderList[18]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l.instObjGroups" 
		"modelRN.placeHolderList[19]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l.instObjGroups" 
		"modelRN.placeHolderList[20]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l.instObjGroups" 
		"modelRN.placeHolderList[21]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l|model:middle_02_l.instObjGroups" 
		"modelRN.placeHolderList[22]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l|model:middle_02_l|model:middle_03_l.instObjGroups" 
		"modelRN.placeHolderList[23]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l|model:middle_02_l|model:middle_03_l|model:middle_03_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[24]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l|model:middle_02_l|model:middle_02_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[25]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:middle_metacarpal_l|model:middle_01_l|model:middle_01_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[26]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l.instObjGroups" 
		"modelRN.placeHolderList[27]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l.instObjGroups" 
		"modelRN.placeHolderList[28]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l|model:pinky_02_l.instObjGroups" 
		"modelRN.placeHolderList[29]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l|model:pinky_02_l|model:pinky_03_l.instObjGroups" 
		"modelRN.placeHolderList[30]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l|model:pinky_02_l|model:pinky_03_l|model:pinky_03_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[31]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l|model:pinky_02_l|model:pinky_02_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[32]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_01_l|model:pinky_01_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[33]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:pinky_metacarpal_l|model:pinky_metacarpal_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[34]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l.instObjGroups" 
		"modelRN.placeHolderList[35]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l.instObjGroups" 
		"modelRN.placeHolderList[36]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l|model:ring_02_l.instObjGroups" 
		"modelRN.placeHolderList[37]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l|model:ring_02_l|model:ring_03_l.instObjGroups" 
		"modelRN.placeHolderList[38]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l|model:ring_02_l|model:ring_03_l|model:ring_03_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[39]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l|model:ring_02_l|model:ring_02_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[40]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:ring_metacarpal_l|model:ring_01_l|model:ring_01_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[41]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l.instObjGroups" 
		"modelRN.placeHolderList[42]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l|model:thumb_02_l.instObjGroups" 
		"modelRN.placeHolderList[43]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l|model:thumb_02_l|model:thumb_03_l.instObjGroups" 
		"modelRN.placeHolderList[44]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l|model:thumb_02_l|model:thumb_03_l|model:thumb_03_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[45]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l|model:thumb_02_l|model:thumb_02_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[46]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:thumb_01_l|model:thumb_01_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[47]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l.instObjGroups" 
		"modelRN.placeHolderList[48]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l.instObjGroups" 
		"modelRN.placeHolderList[49]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l|model:index_02_l.instObjGroups" 
		"modelRN.placeHolderList[50]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l|model:index_02_l|model:index_03_l.instObjGroups" 
		"modelRN.placeHolderList[51]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l|model:index_02_l|model:index_03_l|model:index_03_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[52]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l|model:index_02_l|model:index_02_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[53]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:index_metacarpal_l|model:index_01_l|model:index_01_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[54]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:hand_l|model:hand_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[55]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:lowerarm_l|model:lowerarm_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[56]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:upperarm_twist_01_l.instObjGroups" 
		"modelRN.placeHolderList[57]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:upperarm_twist_02_l.instObjGroups" 
		"modelRN.placeHolderList[58]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:upperarm_l|model:upperarm_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[59]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_l|model:clavicle_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[60]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r.instObjGroups" 
		"modelRN.placeHolderList[61]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r.instObjGroups" 
		"modelRN.placeHolderList[62]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r.instObjGroups" 
		"modelRN.placeHolderList[63]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:lowerarm_twist_02_r.instObjGroups" 
		"modelRN.placeHolderList[64]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:lowerarm_twist_01_r.instObjGroups" 
		"modelRN.placeHolderList[65]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r.instObjGroups" 
		"modelRN.placeHolderList[66]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r.instObjGroups" 
		"modelRN.placeHolderList[67]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r.instObjGroups" 
		"modelRN.placeHolderList[68]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r|model:middle_02_r.instObjGroups" 
		"modelRN.placeHolderList[69]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r|model:middle_02_r|model:middle_03_r.instObjGroups" 
		"modelRN.placeHolderList[70]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r|model:middle_02_r|model:middle_03_r|model:middle_03_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[71]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r|model:middle_02_r|model:middle_02_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[72]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:middle_metacarpal_r|model:middle_01_r|model:middle_01_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[73]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r.instObjGroups" 
		"modelRN.placeHolderList[74]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r.instObjGroups" 
		"modelRN.placeHolderList[75]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r|model:pinky_02_r.instObjGroups" 
		"modelRN.placeHolderList[76]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r|model:pinky_02_r|model:pinky_03_r.instObjGroups" 
		"modelRN.placeHolderList[77]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r|model:pinky_02_r|model:pinky_03_r|model:pinky_03_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[78]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r|model:pinky_02_r|model:pinky_02_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[79]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_01_r|model:pinky_01_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[80]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:pinky_metacarpal_r|model:pinky_metacarpal_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[81]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r.instObjGroups" 
		"modelRN.placeHolderList[82]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r.instObjGroups" 
		"modelRN.placeHolderList[83]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r|model:ring_02_r.instObjGroups" 
		"modelRN.placeHolderList[84]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r|model:ring_02_r|model:ring_03_r.instObjGroups" 
		"modelRN.placeHolderList[85]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r|model:ring_02_r|model:ring_03_r|model:ring_03_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[86]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r|model:ring_02_r|model:ring_02_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[87]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:ring_metacarpal_r|model:ring_01_r|model:ring_01_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[88]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r.instObjGroups" 
		"modelRN.placeHolderList[89]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r|model:thumb_02_r.instObjGroups" 
		"modelRN.placeHolderList[90]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r|model:thumb_02_r|model:thumb_03_r.instObjGroups" 
		"modelRN.placeHolderList[91]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r|model:thumb_02_r|model:thumb_03_r|model:thumb_03_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[92]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r|model:thumb_02_r|model:thumb_02_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[93]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:thumb_01_r|model:thumb_01_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[94]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r.instObjGroups" 
		"modelRN.placeHolderList[95]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r.instObjGroups" 
		"modelRN.placeHolderList[96]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r|model:index_02_r.instObjGroups" 
		"modelRN.placeHolderList[97]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r|model:index_02_r|model:index_03_r.instObjGroups" 
		"modelRN.placeHolderList[98]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r|model:index_02_r|model:index_03_r|model:index_03_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[99]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r|model:index_02_r|model:index_02_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[100]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:index_metacarpal_r|model:index_01_r|model:index_01_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[101]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:hand_r|model:hand_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[102]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:lowerarm_r|model:lowerarm_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[103]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:upperarm_twist_01_r.instObjGroups" 
		"modelRN.placeHolderList[104]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:upperarm_twist_02_r.instObjGroups" 
		"modelRN.placeHolderList[105]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:upperarm_r|model:upperarm_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[106]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:clavicle_r|model:clavicle_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[107]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_04|model:spine_05|model:spine_05_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[108]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:spine_01|model:spine_02|model:spine_03|model:spine_03_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[109]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l.instObjGroups" 
		"modelRN.placeHolderList[110]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l.instObjGroups" 
		"modelRN.placeHolderList[111]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:foot_l.instObjGroups" 
		"modelRN.placeHolderList[112]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:foot_l|model:ball_l.instObjGroups" 
		"modelRN.placeHolderList[113]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:foot_l|model:ball_l|model:ball_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[114]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:foot_l|model:foot_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[115]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:calf_twist_02_l.instObjGroups" 
		"modelRN.placeHolderList[116]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:calf_twist_01_l.instObjGroups" 
		"modelRN.placeHolderList[117]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:calf_l|model:calf_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[118]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:thigh_twist_01_l.instObjGroups" 
		"modelRN.placeHolderList[119]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:thigh_twist_02_l.instObjGroups" 
		"modelRN.placeHolderList[120]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_l|model:thigh_l_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[121]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r.instObjGroups" 
		"modelRN.placeHolderList[122]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r.instObjGroups" 
		"modelRN.placeHolderList[123]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:foot_r.instObjGroups" 
		"modelRN.placeHolderList[124]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:foot_r|model:ball_r.instObjGroups" 
		"modelRN.placeHolderList[125]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:foot_r|model:ball_r|model:ball_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[126]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:foot_r|model:foot_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[127]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:calf_twist_02_r.instObjGroups" 
		"modelRN.placeHolderList[128]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:calf_twist_01_r.instObjGroups" 
		"modelRN.placeHolderList[129]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:calf_r|model:calf_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[130]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:thigh_twist_01_r.instObjGroups" 
		"modelRN.placeHolderList[131]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:thigh_twist_02_r.instObjGroups" 
		"modelRN.placeHolderList[132]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:thigh_r|model:thigh_r_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[133]" ""
		5 3 "modelRN" "|model:root|model:pelvis|model:pelvis_parentConstraint1.instObjGroups" 
		"modelRN.placeHolderList[134]" ""
		5 3 "modelRN" "|model:root|model:ik_foot_root.instObjGroups" "modelRN.placeHolderList[135]" 
		""
		5 3 "modelRN" "|model:root|model:ik_foot_root|model:ik_foot_l.instObjGroups" 
		"modelRN.placeHolderList[136]" ""
		5 3 "modelRN" "|model:root|model:ik_foot_root|model:ik_foot_r.instObjGroups" 
		"modelRN.placeHolderList[137]" ""
		5 3 "modelRN" "|model:root|model:ik_hand_root.instObjGroups" "modelRN.placeHolderList[138]" 
		""
		5 3 "modelRN" "|model:root|model:ik_hand_root|model:ik_hand_gun.instObjGroups" 
		"modelRN.placeHolderList[139]" ""
		5 3 "modelRN" "|model:root|model:ik_hand_root|model:ik_hand_gun|model:ik_hand_l.instObjGroups" 
		"modelRN.placeHolderList[140]" ""
		5 3 "modelRN" "|model:root|model:ik_hand_root|model:ik_hand_gun|model:ik_hand_r.instObjGroups" 
		"modelRN.placeHolderList[141]" ""
		5 3 "modelRN" "|model:root|model:interaction.instObjGroups" "modelRN.placeHolderList[142]" 
		""
		5 3 "modelRN" "|model:root|model:center_of_mass.instObjGroups" "modelRN.placeHolderList[143]" 
		""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateX" 
		"modelRN.placeHolderList[144]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateY" 
		"modelRN.placeHolderList[145]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateZ" 
		"modelRN.placeHolderList[146]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateX" 
		"modelRN.placeHolderList[147]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateY" 
		"modelRN.placeHolderList[148]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateZ" 
		"modelRN.placeHolderList[149]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleX" 
		"modelRN.placeHolderList[150]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleY" 
		"modelRN.placeHolderList[151]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleZ" 
		"modelRN.placeHolderList[152]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.visibility" 
		"modelRN.placeHolderList[153]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateX" 
		"modelRN.placeHolderList[154]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateY" 
		"modelRN.placeHolderList[155]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateZ" 
		"modelRN.placeHolderList[156]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleX" 
		"modelRN.placeHolderList[157]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleY" 
		"modelRN.placeHolderList[158]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleZ" 
		"modelRN.placeHolderList[159]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateZ" 
		"modelRN.placeHolderList[160]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateX" 
		"modelRN.placeHolderList[161]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateY" 
		"modelRN.placeHolderList[162]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w0" 
		"modelRN.placeHolderList[163]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w1" 
		"modelRN.placeHolderList[164]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w2" 
		"modelRN.placeHolderList[165]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.visibility" 
		"modelRN.placeHolderList[166]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateX" 
		"modelRN.placeHolderList[167]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateY" 
		"modelRN.placeHolderList[168]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateZ" 
		"modelRN.placeHolderList[169]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.visibility" 
		"modelRN.placeHolderList[170]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateX" 
		"modelRN.placeHolderList[171]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateY" 
		"modelRN.placeHolderList[172]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateZ" 
		"modelRN.placeHolderList[173]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleX" 
		"modelRN.placeHolderList[174]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleY" 
		"modelRN.placeHolderList[175]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleZ" 
		"modelRN.placeHolderList[176]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateX" 
		"modelRN.placeHolderList[177]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateY" 
		"modelRN.placeHolderList[178]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateZ" 
		"modelRN.placeHolderList[179]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w0" 
		"modelRN.placeHolderList[180]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w1" 
		"modelRN.placeHolderList[181]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w2" 
		"modelRN.placeHolderList[182]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.visibility" 
		"modelRN.placeHolderList[183]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleX" 
		"modelRN.placeHolderList[184]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleY" 
		"modelRN.placeHolderList[185]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleZ" 
		"modelRN.placeHolderList[186]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateX" 
		"modelRN.placeHolderList[187]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateY" 
		"modelRN.placeHolderList[188]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateZ" 
		"modelRN.placeHolderList[189]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateX" 
		"modelRN.placeHolderList[190]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateY" 
		"modelRN.placeHolderList[191]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateZ" 
		"modelRN.placeHolderList[192]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.visibility" 
		"modelRN.placeHolderList[193]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateX" 
		"modelRN.placeHolderList[194]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateY" 
		"modelRN.placeHolderList[195]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateZ" 
		"modelRN.placeHolderList[196]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleX" 
		"modelRN.placeHolderList[197]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleY" 
		"modelRN.placeHolderList[198]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleZ" 
		"modelRN.placeHolderList[199]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateX" 
		"modelRN.placeHolderList[200]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateY" 
		"modelRN.placeHolderList[201]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateZ" 
		"modelRN.placeHolderList[202]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.w0" 
		"modelRN.placeHolderList[203]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.w1" 
		"modelRN.placeHolderList[204]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.w2" 
		"modelRN.placeHolderList[205]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.visibility" 
		"modelRN.placeHolderList[206]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleX" 
		"modelRN.placeHolderList[207]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleY" 
		"modelRN.placeHolderList[208]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleZ" 
		"modelRN.placeHolderList[209]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.Global" 
		"modelRN.placeHolderList[210]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateX" 
		"modelRN.placeHolderList[211]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateY" 
		"modelRN.placeHolderList[212]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateZ" 
		"modelRN.placeHolderList[213]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateX" 
		"modelRN.placeHolderList[214]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateY" 
		"modelRN.placeHolderList[215]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateZ" 
		"modelRN.placeHolderList[216]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.visibility" 
		"modelRN.placeHolderList[217]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleX" 
		"modelRN.placeHolderList[218]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleY" 
		"modelRN.placeHolderList[219]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleZ" 
		"modelRN.placeHolderList[220]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.visibility" 
		"modelRN.placeHolderList[221]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateX" 
		"modelRN.placeHolderList[222]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateY" 
		"modelRN.placeHolderList[223]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateZ" 
		"modelRN.placeHolderList[224]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateX" 
		"modelRN.placeHolderList[225]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateY" 
		"modelRN.placeHolderList[226]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateZ" 
		"modelRN.placeHolderList[227]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.scaleX" 
		"modelRN.placeHolderList[228]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.scaleY" 
		"modelRN.placeHolderList[229]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.scaleZ" 
		"modelRN.placeHolderList[230]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.visibility" 
		"modelRN.placeHolderList[231]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.translateX" 
		"modelRN.placeHolderList[232]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.translateY" 
		"modelRN.placeHolderList[233]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.translateZ" 
		"modelRN.placeHolderList[234]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.rotateX" 
		"modelRN.placeHolderList[235]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.rotateY" 
		"modelRN.placeHolderList[236]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_R|model:FKOffsetEye_R|model:FKExtraEye_R|model:FKEye_R.rotateZ" 
		"modelRN.placeHolderList[237]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.scaleX" 
		"modelRN.placeHolderList[238]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.scaleY" 
		"modelRN.placeHolderList[239]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.scaleZ" 
		"modelRN.placeHolderList[240]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.visibility" 
		"modelRN.placeHolderList[241]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.translateX" 
		"modelRN.placeHolderList[242]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.translateY" 
		"modelRN.placeHolderList[243]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.translateZ" 
		"modelRN.placeHolderList[244]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.rotateX" 
		"modelRN.placeHolderList[245]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.rotateY" 
		"modelRN.placeHolderList[246]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKAimEye_L|model:FKOffsetEye_L|model:FKExtraEye_L|model:FKEye_L.rotateZ" 
		"modelRN.placeHolderList[247]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleX" 
		"modelRN.placeHolderList[248]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleY" 
		"modelRN.placeHolderList[249]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleZ" 
		"modelRN.placeHolderList[250]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateX" 
		"modelRN.placeHolderList[251]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateZ" 
		"modelRN.placeHolderList[252]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateY" 
		"modelRN.placeHolderList[253]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.visibility" 
		"modelRN.placeHolderList[254]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateX" 
		"modelRN.placeHolderList[255]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateY" 
		"modelRN.placeHolderList[256]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateZ" 
		"modelRN.placeHolderList[257]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleX" 
		"modelRN.placeHolderList[258]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleY" 
		"modelRN.placeHolderList[259]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleZ" 
		"modelRN.placeHolderList[260]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateX" 
		"modelRN.placeHolderList[261]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateY" 
		"modelRN.placeHolderList[262]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateZ" 
		"modelRN.placeHolderList[263]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.visibility" 
		"modelRN.placeHolderList[264]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateX" 
		"modelRN.placeHolderList[265]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateY" 
		"modelRN.placeHolderList[266]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateZ" 
		"modelRN.placeHolderList[267]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleX" 
		"modelRN.placeHolderList[268]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleY" 
		"modelRN.placeHolderList[269]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleZ" 
		"modelRN.placeHolderList[270]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.visibility" 
		"modelRN.placeHolderList[271]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateX" 
		"modelRN.placeHolderList[272]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateY" 
		"modelRN.placeHolderList[273]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateZ" 
		"modelRN.placeHolderList[274]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateX" 
		"modelRN.placeHolderList[275]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateY" 
		"modelRN.placeHolderList[276]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateZ" 
		"modelRN.placeHolderList[277]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleX" 
		"modelRN.placeHolderList[278]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleY" 
		"modelRN.placeHolderList[279]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleZ" 
		"modelRN.placeHolderList[280]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.visibility" 
		"modelRN.placeHolderList[281]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateX" 
		"modelRN.placeHolderList[282]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateY" 
		"modelRN.placeHolderList[283]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateZ" 
		"modelRN.placeHolderList[284]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateX" 
		"modelRN.placeHolderList[285]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateY" 
		"modelRN.placeHolderList[286]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateZ" 
		"modelRN.placeHolderList[287]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleX" 
		"modelRN.placeHolderList[288]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleY" 
		"modelRN.placeHolderList[289]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleZ" 
		"modelRN.placeHolderList[290]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.visibility" 
		"modelRN.placeHolderList[291]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateX" 
		"modelRN.placeHolderList[292]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateY" 
		"modelRN.placeHolderList[293]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateZ" 
		"modelRN.placeHolderList[294]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateX" 
		"modelRN.placeHolderList[295]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateY" 
		"modelRN.placeHolderList[296]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateZ" 
		"modelRN.placeHolderList[297]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleX" 
		"modelRN.placeHolderList[298]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleY" 
		"modelRN.placeHolderList[299]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleZ" 
		"modelRN.placeHolderList[300]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateX" 
		"modelRN.placeHolderList[301]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateY" 
		"modelRN.placeHolderList[302]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateZ" 
		"modelRN.placeHolderList[303]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.visibility" 
		"modelRN.placeHolderList[304]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateX" 
		"modelRN.placeHolderList[305]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateY" 
		"modelRN.placeHolderList[306]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateZ" 
		"modelRN.placeHolderList[307]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleX" 
		"modelRN.placeHolderList[308]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleY" 
		"modelRN.placeHolderList[309]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleZ" 
		"modelRN.placeHolderList[310]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.visibility" 
		"modelRN.placeHolderList[311]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateX" 
		"modelRN.placeHolderList[312]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateY" 
		"modelRN.placeHolderList[313]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateZ" 
		"modelRN.placeHolderList[314]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateX" 
		"modelRN.placeHolderList[315]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateY" 
		"modelRN.placeHolderList[316]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateZ" 
		"modelRN.placeHolderList[317]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleX" 
		"modelRN.placeHolderList[318]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleY" 
		"modelRN.placeHolderList[319]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleZ" 
		"modelRN.placeHolderList[320]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.visibility" 
		"modelRN.placeHolderList[321]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateX" 
		"modelRN.placeHolderList[322]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateY" 
		"modelRN.placeHolderList[323]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateZ" 
		"modelRN.placeHolderList[324]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateX" 
		"modelRN.placeHolderList[325]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateY" 
		"modelRN.placeHolderList[326]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateZ" 
		"modelRN.placeHolderList[327]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleX" 
		"modelRN.placeHolderList[328]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleY" 
		"modelRN.placeHolderList[329]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleZ" 
		"modelRN.placeHolderList[330]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.visibility" 
		"modelRN.placeHolderList[331]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateX" 
		"modelRN.placeHolderList[332]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateY" 
		"modelRN.placeHolderList[333]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateZ" 
		"modelRN.placeHolderList[334]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateX" 
		"modelRN.placeHolderList[335]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateY" 
		"modelRN.placeHolderList[336]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateZ" 
		"modelRN.placeHolderList[337]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleX" 
		"modelRN.placeHolderList[338]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleY" 
		"modelRN.placeHolderList[339]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleZ" 
		"modelRN.placeHolderList[340]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.visibility" 
		"modelRN.placeHolderList[341]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateX" 
		"modelRN.placeHolderList[342]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateY" 
		"modelRN.placeHolderList[343]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateZ" 
		"modelRN.placeHolderList[344]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateX" 
		"modelRN.placeHolderList[345]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateY" 
		"modelRN.placeHolderList[346]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateZ" 
		"modelRN.placeHolderList[347]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleX" 
		"modelRN.placeHolderList[348]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleY" 
		"modelRN.placeHolderList[349]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleZ" 
		"modelRN.placeHolderList[350]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.visibility" 
		"modelRN.placeHolderList[351]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateX" 
		"modelRN.placeHolderList[352]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateY" 
		"modelRN.placeHolderList[353]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateZ" 
		"modelRN.placeHolderList[354]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateX" 
		"modelRN.placeHolderList[355]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateY" 
		"modelRN.placeHolderList[356]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateZ" 
		"modelRN.placeHolderList[357]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleX" 
		"modelRN.placeHolderList[358]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleY" 
		"modelRN.placeHolderList[359]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleZ" 
		"modelRN.placeHolderList[360]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.visibility" 
		"modelRN.placeHolderList[361]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateX" 
		"modelRN.placeHolderList[362]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateY" 
		"modelRN.placeHolderList[363]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateZ" 
		"modelRN.placeHolderList[364]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateX" 
		"modelRN.placeHolderList[365]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateY" 
		"modelRN.placeHolderList[366]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateZ" 
		"modelRN.placeHolderList[367]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleX" 
		"modelRN.placeHolderList[368]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleY" 
		"modelRN.placeHolderList[369]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleZ" 
		"modelRN.placeHolderList[370]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.visibility" 
		"modelRN.placeHolderList[371]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateX" 
		"modelRN.placeHolderList[372]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateY" 
		"modelRN.placeHolderList[373]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateZ" 
		"modelRN.placeHolderList[374]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateX" 
		"modelRN.placeHolderList[375]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateY" 
		"modelRN.placeHolderList[376]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateZ" 
		"modelRN.placeHolderList[377]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleX" 
		"modelRN.placeHolderList[378]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleY" 
		"modelRN.placeHolderList[379]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleZ" 
		"modelRN.placeHolderList[380]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.visibility" 
		"modelRN.placeHolderList[381]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateX" 
		"modelRN.placeHolderList[382]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateY" 
		"modelRN.placeHolderList[383]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateZ" 
		"modelRN.placeHolderList[384]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateX" 
		"modelRN.placeHolderList[385]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateY" 
		"modelRN.placeHolderList[386]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateZ" 
		"modelRN.placeHolderList[387]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleX" 
		"modelRN.placeHolderList[388]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleY" 
		"modelRN.placeHolderList[389]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleZ" 
		"modelRN.placeHolderList[390]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.visibility" 
		"modelRN.placeHolderList[391]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateX" 
		"modelRN.placeHolderList[392]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateY" 
		"modelRN.placeHolderList[393]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateZ" 
		"modelRN.placeHolderList[394]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateX" 
		"modelRN.placeHolderList[395]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateY" 
		"modelRN.placeHolderList[396]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateZ" 
		"modelRN.placeHolderList[397]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleX" 
		"modelRN.placeHolderList[398]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleY" 
		"modelRN.placeHolderList[399]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleZ" 
		"modelRN.placeHolderList[400]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.visibility" 
		"modelRN.placeHolderList[401]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateX" 
		"modelRN.placeHolderList[402]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateY" 
		"modelRN.placeHolderList[403]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateZ" 
		"modelRN.placeHolderList[404]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateX" 
		"modelRN.placeHolderList[405]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateY" 
		"modelRN.placeHolderList[406]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateZ" 
		"modelRN.placeHolderList[407]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleX" 
		"modelRN.placeHolderList[408]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleY" 
		"modelRN.placeHolderList[409]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleZ" 
		"modelRN.placeHolderList[410]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.visibility" 
		"modelRN.placeHolderList[411]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateX" 
		"modelRN.placeHolderList[412]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateY" 
		"modelRN.placeHolderList[413]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateZ" 
		"modelRN.placeHolderList[414]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateX" 
		"modelRN.placeHolderList[415]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateY" 
		"modelRN.placeHolderList[416]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateZ" 
		"modelRN.placeHolderList[417]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleX" 
		"modelRN.placeHolderList[418]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleY" 
		"modelRN.placeHolderList[419]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleZ" 
		"modelRN.placeHolderList[420]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.visibility" 
		"modelRN.placeHolderList[421]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateX" 
		"modelRN.placeHolderList[422]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateY" 
		"modelRN.placeHolderList[423]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateZ" 
		"modelRN.placeHolderList[424]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateX" 
		"modelRN.placeHolderList[425]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateY" 
		"modelRN.placeHolderList[426]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateZ" 
		"modelRN.placeHolderList[427]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleX" 
		"modelRN.placeHolderList[428]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleY" 
		"modelRN.placeHolderList[429]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleZ" 
		"modelRN.placeHolderList[430]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.visibility" 
		"modelRN.placeHolderList[431]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateX" 
		"modelRN.placeHolderList[432]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateY" 
		"modelRN.placeHolderList[433]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateZ" 
		"modelRN.placeHolderList[434]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateX" 
		"modelRN.placeHolderList[435]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateY" 
		"modelRN.placeHolderList[436]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateZ" 
		"modelRN.placeHolderList[437]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleX" 
		"modelRN.placeHolderList[438]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleY" 
		"modelRN.placeHolderList[439]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleZ" 
		"modelRN.placeHolderList[440]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.visibility" 
		"modelRN.placeHolderList[441]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateX" 
		"modelRN.placeHolderList[442]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateY" 
		"modelRN.placeHolderList[443]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateZ" 
		"modelRN.placeHolderList[444]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateX" 
		"modelRN.placeHolderList[445]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateY" 
		"modelRN.placeHolderList[446]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateZ" 
		"modelRN.placeHolderList[447]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleX" 
		"modelRN.placeHolderList[448]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleY" 
		"modelRN.placeHolderList[449]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleZ" 
		"modelRN.placeHolderList[450]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.visibility" 
		"modelRN.placeHolderList[451]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateX" 
		"modelRN.placeHolderList[452]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateY" 
		"modelRN.placeHolderList[453]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateZ" 
		"modelRN.placeHolderList[454]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateX" 
		"modelRN.placeHolderList[455]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateY" 
		"modelRN.placeHolderList[456]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateZ" 
		"modelRN.placeHolderList[457]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleX" 
		"modelRN.placeHolderList[458]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleY" 
		"modelRN.placeHolderList[459]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleZ" 
		"modelRN.placeHolderList[460]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.visibility" 
		"modelRN.placeHolderList[461]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateX" 
		"modelRN.placeHolderList[462]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateY" 
		"modelRN.placeHolderList[463]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateZ" 
		"modelRN.placeHolderList[464]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateX" 
		"modelRN.placeHolderList[465]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateY" 
		"modelRN.placeHolderList[466]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateZ" 
		"modelRN.placeHolderList[467]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleX" 
		"modelRN.placeHolderList[468]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleY" 
		"modelRN.placeHolderList[469]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleZ" 
		"modelRN.placeHolderList[470]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.visibility" 
		"modelRN.placeHolderList[471]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateX" 
		"modelRN.placeHolderList[472]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateY" 
		"modelRN.placeHolderList[473]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateZ" 
		"modelRN.placeHolderList[474]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateX" 
		"modelRN.placeHolderList[475]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateY" 
		"modelRN.placeHolderList[476]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateZ" 
		"modelRN.placeHolderList[477]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleX" 
		"modelRN.placeHolderList[478]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleY" 
		"modelRN.placeHolderList[479]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleZ" 
		"modelRN.placeHolderList[480]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.visibility" 
		"modelRN.placeHolderList[481]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateX" 
		"modelRN.placeHolderList[482]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateY" 
		"modelRN.placeHolderList[483]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateZ" 
		"modelRN.placeHolderList[484]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateX" 
		"modelRN.placeHolderList[485]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateY" 
		"modelRN.placeHolderList[486]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateZ" 
		"modelRN.placeHolderList[487]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleX" 
		"modelRN.placeHolderList[488]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleY" 
		"modelRN.placeHolderList[489]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleZ" 
		"modelRN.placeHolderList[490]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.visibility" 
		"modelRN.placeHolderList[491]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateX" 
		"modelRN.placeHolderList[492]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateY" 
		"modelRN.placeHolderList[493]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateZ" 
		"modelRN.placeHolderList[494]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateX" 
		"modelRN.placeHolderList[495]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateY" 
		"modelRN.placeHolderList[496]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateZ" 
		"modelRN.placeHolderList[497]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleX" 
		"modelRN.placeHolderList[498]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleY" 
		"modelRN.placeHolderList[499]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleZ" 
		"modelRN.placeHolderList[500]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.visibility" 
		"modelRN.placeHolderList[501]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateX" 
		"modelRN.placeHolderList[502]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateY" 
		"modelRN.placeHolderList[503]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateZ" 
		"modelRN.placeHolderList[504]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateX" 
		"modelRN.placeHolderList[505]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateY" 
		"modelRN.placeHolderList[506]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateZ" 
		"modelRN.placeHolderList[507]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleX" 
		"modelRN.placeHolderList[508]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleY" 
		"modelRN.placeHolderList[509]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleZ" 
		"modelRN.placeHolderList[510]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.visibility" 
		"modelRN.placeHolderList[511]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateX" 
		"modelRN.placeHolderList[512]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateY" 
		"modelRN.placeHolderList[513]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateZ" 
		"modelRN.placeHolderList[514]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateX" 
		"modelRN.placeHolderList[515]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateY" 
		"modelRN.placeHolderList[516]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateZ" 
		"modelRN.placeHolderList[517]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleX" 
		"modelRN.placeHolderList[518]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleY" 
		"modelRN.placeHolderList[519]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleZ" 
		"modelRN.placeHolderList[520]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.visibility" 
		"modelRN.placeHolderList[521]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateX" 
		"modelRN.placeHolderList[522]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateY" 
		"modelRN.placeHolderList[523]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateZ" 
		"modelRN.placeHolderList[524]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateX" 
		"modelRN.placeHolderList[525]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateY" 
		"modelRN.placeHolderList[526]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateZ" 
		"modelRN.placeHolderList[527]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleX" 
		"modelRN.placeHolderList[528]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleY" 
		"modelRN.placeHolderList[529]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleZ" 
		"modelRN.placeHolderList[530]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.visibility" 
		"modelRN.placeHolderList[531]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateX" 
		"modelRN.placeHolderList[532]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateY" 
		"modelRN.placeHolderList[533]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateZ" 
		"modelRN.placeHolderList[534]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateX" 
		"modelRN.placeHolderList[535]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateY" 
		"modelRN.placeHolderList[536]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateZ" 
		"modelRN.placeHolderList[537]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleX" 
		"modelRN.placeHolderList[538]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleY" 
		"modelRN.placeHolderList[539]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleZ" 
		"modelRN.placeHolderList[540]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.visibility" 
		"modelRN.placeHolderList[541]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateX" 
		"modelRN.placeHolderList[542]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateY" 
		"modelRN.placeHolderList[543]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateZ" 
		"modelRN.placeHolderList[544]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateX" 
		"modelRN.placeHolderList[545]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateY" 
		"modelRN.placeHolderList[546]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateZ" 
		"modelRN.placeHolderList[547]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleX" 
		"modelRN.placeHolderList[548]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleY" 
		"modelRN.placeHolderList[549]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleZ" 
		"modelRN.placeHolderList[550]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.visibility" 
		"modelRN.placeHolderList[551]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateX" 
		"modelRN.placeHolderList[552]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateY" 
		"modelRN.placeHolderList[553]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateZ" 
		"modelRN.placeHolderList[554]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateX" 
		"modelRN.placeHolderList[555]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateY" 
		"modelRN.placeHolderList[556]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateZ" 
		"modelRN.placeHolderList[557]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleX" 
		"modelRN.placeHolderList[558]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleY" 
		"modelRN.placeHolderList[559]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleZ" 
		"modelRN.placeHolderList[560]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.visibility" 
		"modelRN.placeHolderList[561]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateX" 
		"modelRN.placeHolderList[562]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateY" 
		"modelRN.placeHolderList[563]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateZ" 
		"modelRN.placeHolderList[564]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateX" 
		"modelRN.placeHolderList[565]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateY" 
		"modelRN.placeHolderList[566]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateZ" 
		"modelRN.placeHolderList[567]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleX" 
		"modelRN.placeHolderList[568]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleY" 
		"modelRN.placeHolderList[569]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleZ" 
		"modelRN.placeHolderList[570]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.visibility" 
		"modelRN.placeHolderList[571]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateX" 
		"modelRN.placeHolderList[572]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateY" 
		"modelRN.placeHolderList[573]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateZ" 
		"modelRN.placeHolderList[574]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateX" 
		"modelRN.placeHolderList[575]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateY" 
		"modelRN.placeHolderList[576]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateZ" 
		"modelRN.placeHolderList[577]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleX" 
		"modelRN.placeHolderList[578]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleY" 
		"modelRN.placeHolderList[579]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleZ" 
		"modelRN.placeHolderList[580]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.visibility" 
		"modelRN.placeHolderList[581]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateX" 
		"modelRN.placeHolderList[582]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateY" 
		"modelRN.placeHolderList[583]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateZ" 
		"modelRN.placeHolderList[584]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateX" 
		"modelRN.placeHolderList[585]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateY" 
		"modelRN.placeHolderList[586]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateZ" 
		"modelRN.placeHolderList[587]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleY" 
		"modelRN.placeHolderList[588]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleZ" 
		"modelRN.placeHolderList[589]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleX" 
		"modelRN.placeHolderList[590]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateX" 
		"modelRN.placeHolderList[591]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateY" 
		"modelRN.placeHolderList[592]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateZ" 
		"modelRN.placeHolderList[593]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateX" 
		"modelRN.placeHolderList[594]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateY" 
		"modelRN.placeHolderList[595]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateZ" 
		"modelRN.placeHolderList[596]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.swivel" 
		"modelRN.placeHolderList[597]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rock" 
		"modelRN.placeHolderList[598]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.roll" 
		"modelRN.placeHolderList[599]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollStartAngle" 
		"modelRN.placeHolderList[600]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollEndAngle" 
		"modelRN.placeHolderList[601]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.stretchy" 
		"modelRN.placeHolderList[602]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.antiPop" 
		"modelRN.placeHolderList[603]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght1" 
		"modelRN.placeHolderList[604]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght2" 
		"modelRN.placeHolderList[605]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness1" 
		"modelRN.placeHolderList[606]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness2" 
		"modelRN.placeHolderList[607]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.volume" 
		"modelRN.placeHolderList[608]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.visibility" 
		"modelRN.placeHolderList[609]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.visibility" 
		"modelRN.placeHolderList[610]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateX" 
		"modelRN.placeHolderList[611]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateY" 
		"modelRN.placeHolderList[612]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateZ" 
		"modelRN.placeHolderList[613]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateX" 
		"modelRN.placeHolderList[614]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateY" 
		"modelRN.placeHolderList[615]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateZ" 
		"modelRN.placeHolderList[616]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleX" 
		"modelRN.placeHolderList[617]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleY" 
		"modelRN.placeHolderList[618]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleZ" 
		"modelRN.placeHolderList[619]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.visibility" 
		"modelRN.placeHolderList[620]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateX" 
		"modelRN.placeHolderList[621]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateY" 
		"modelRN.placeHolderList[622]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateZ" 
		"modelRN.placeHolderList[623]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateX" 
		"modelRN.placeHolderList[624]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateY" 
		"modelRN.placeHolderList[625]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateZ" 
		"modelRN.placeHolderList[626]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleX" 
		"modelRN.placeHolderList[627]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleY" 
		"modelRN.placeHolderList[628]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleZ" 
		"modelRN.placeHolderList[629]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.visibility" 
		"modelRN.placeHolderList[630]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateX" 
		"modelRN.placeHolderList[631]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateY" 
		"modelRN.placeHolderList[632]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateZ" 
		"modelRN.placeHolderList[633]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateX" 
		"modelRN.placeHolderList[634]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateY" 
		"modelRN.placeHolderList[635]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateZ" 
		"modelRN.placeHolderList[636]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleX" 
		"modelRN.placeHolderList[637]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleY" 
		"modelRN.placeHolderList[638]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleZ" 
		"modelRN.placeHolderList[639]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.visibility" 
		"modelRN.placeHolderList[640]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateX" 
		"modelRN.placeHolderList[641]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateY" 
		"modelRN.placeHolderList[642]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateZ" 
		"modelRN.placeHolderList[643]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateX" 
		"modelRN.placeHolderList[644]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateY" 
		"modelRN.placeHolderList[645]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateZ" 
		"modelRN.placeHolderList[646]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleX" 
		"modelRN.placeHolderList[647]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleY" 
		"modelRN.placeHolderList[648]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleZ" 
		"modelRN.placeHolderList[649]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateX" 
		"modelRN.placeHolderList[650]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateY" 
		"modelRN.placeHolderList[651]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateZ" 
		"modelRN.placeHolderList[652]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.follow" 
		"modelRN.placeHolderList[653]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.lock" 
		"modelRN.placeHolderList[654]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleX" 
		"modelRN.placeHolderList[655]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleZ" 
		"modelRN.placeHolderList[656]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleY" 
		"modelRN.placeHolderList[657]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateX" 
		"modelRN.placeHolderList[658]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateZ" 
		"modelRN.placeHolderList[659]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateY" 
		"modelRN.placeHolderList[660]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateX" 
		"modelRN.placeHolderList[661]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateY" 
		"modelRN.placeHolderList[662]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateZ" 
		"modelRN.placeHolderList[663]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.follow" 
		"modelRN.placeHolderList[664]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.stretchy" 
		"modelRN.placeHolderList[665]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.antiPop" 
		"modelRN.placeHolderList[666]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Lenght1" 
		"modelRN.placeHolderList[667]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Lenght2" 
		"modelRN.placeHolderList[668]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Fatness1" 
		"modelRN.placeHolderList[669]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Fatness2" 
		"modelRN.placeHolderList[670]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.volume" 
		"modelRN.placeHolderList[671]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.visibility" 
		"modelRN.placeHolderList[672]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R.translateX" 
		"modelRN.placeHolderList[673]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R.translateZ" 
		"modelRN.placeHolderList[674]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R.translateY" 
		"modelRN.placeHolderList[675]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R.follow" 
		"modelRN.placeHolderList[676]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R.lock" 
		"modelRN.placeHolderList[677]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleY" 
		"modelRN.placeHolderList[678]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleZ" 
		"modelRN.placeHolderList[679]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleX" 
		"modelRN.placeHolderList[680]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateX" 
		"modelRN.placeHolderList[681]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateY" 
		"modelRN.placeHolderList[682]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateZ" 
		"modelRN.placeHolderList[683]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateX" 
		"modelRN.placeHolderList[684]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateY" 
		"modelRN.placeHolderList[685]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateZ" 
		"modelRN.placeHolderList[686]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.swivel" 
		"modelRN.placeHolderList[687]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rock" 
		"modelRN.placeHolderList[688]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.roll" 
		"modelRN.placeHolderList[689]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollStartAngle" 
		"modelRN.placeHolderList[690]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollEndAngle" 
		"modelRN.placeHolderList[691]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.stretchy" 
		"modelRN.placeHolderList[692]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.antiPop" 
		"modelRN.placeHolderList[693]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght1" 
		"modelRN.placeHolderList[694]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght2" 
		"modelRN.placeHolderList[695]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness1" 
		"modelRN.placeHolderList[696]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness2" 
		"modelRN.placeHolderList[697]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.volume" 
		"modelRN.placeHolderList[698]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.visibility" 
		"modelRN.placeHolderList[699]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.visibility" 
		"modelRN.placeHolderList[700]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateX" 
		"modelRN.placeHolderList[701]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateY" 
		"modelRN.placeHolderList[702]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateZ" 
		"modelRN.placeHolderList[703]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateX" 
		"modelRN.placeHolderList[704]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateY" 
		"modelRN.placeHolderList[705]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateZ" 
		"modelRN.placeHolderList[706]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleX" 
		"modelRN.placeHolderList[707]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleY" 
		"modelRN.placeHolderList[708]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleZ" 
		"modelRN.placeHolderList[709]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.visibility" 
		"modelRN.placeHolderList[710]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateX" 
		"modelRN.placeHolderList[711]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateY" 
		"modelRN.placeHolderList[712]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateZ" 
		"modelRN.placeHolderList[713]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateX" 
		"modelRN.placeHolderList[714]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateY" 
		"modelRN.placeHolderList[715]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateZ" 
		"modelRN.placeHolderList[716]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleX" 
		"modelRN.placeHolderList[717]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleY" 
		"modelRN.placeHolderList[718]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleZ" 
		"modelRN.placeHolderList[719]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.visibility" 
		"modelRN.placeHolderList[720]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateX" 
		"modelRN.placeHolderList[721]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateY" 
		"modelRN.placeHolderList[722]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateZ" 
		"modelRN.placeHolderList[723]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateX" 
		"modelRN.placeHolderList[724]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateY" 
		"modelRN.placeHolderList[725]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateZ" 
		"modelRN.placeHolderList[726]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleX" 
		"modelRN.placeHolderList[727]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleY" 
		"modelRN.placeHolderList[728]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleZ" 
		"modelRN.placeHolderList[729]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.visibility" 
		"modelRN.placeHolderList[730]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateX" 
		"modelRN.placeHolderList[731]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateY" 
		"modelRN.placeHolderList[732]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateZ" 
		"modelRN.placeHolderList[733]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateX" 
		"modelRN.placeHolderList[734]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateY" 
		"modelRN.placeHolderList[735]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateZ" 
		"modelRN.placeHolderList[736]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleX" 
		"modelRN.placeHolderList[737]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleY" 
		"modelRN.placeHolderList[738]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleZ" 
		"modelRN.placeHolderList[739]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateX" 
		"modelRN.placeHolderList[740]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateY" 
		"modelRN.placeHolderList[741]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateZ" 
		"modelRN.placeHolderList[742]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.follow" 
		"modelRN.placeHolderList[743]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.lock" 
		"modelRN.placeHolderList[744]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.scaleX" 
		"modelRN.placeHolderList[745]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.scaleZ" 
		"modelRN.placeHolderList[746]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.scaleY" 
		"modelRN.placeHolderList[747]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateX" 
		"modelRN.placeHolderList[748]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateZ" 
		"modelRN.placeHolderList[749]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateY" 
		"modelRN.placeHolderList[750]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateX" 
		"modelRN.placeHolderList[751]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateY" 
		"modelRN.placeHolderList[752]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateZ" 
		"modelRN.placeHolderList[753]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.follow" 
		"modelRN.placeHolderList[754]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.stretchy" 
		"modelRN.placeHolderList[755]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.antiPop" 
		"modelRN.placeHolderList[756]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.Lenght1" 
		"modelRN.placeHolderList[757]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.Lenght2" 
		"modelRN.placeHolderList[758]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.Fatness1" 
		"modelRN.placeHolderList[759]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.Fatness2" 
		"modelRN.placeHolderList[760]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.volume" 
		"modelRN.placeHolderList[761]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.visibility" 
		"modelRN.placeHolderList[762]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateX" 
		"modelRN.placeHolderList[763]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateZ" 
		"modelRN.placeHolderList[764]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateY" 
		"modelRN.placeHolderList[765]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.follow" 
		"modelRN.placeHolderList[766]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.lock" 
		"modelRN.placeHolderList[767]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKIKBlend" 
		"modelRN.placeHolderList[768]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.IKVis" 
		"modelRN.placeHolderList[769]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKVis" 
		"modelRN.placeHolderList[770]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKIKBlend" 
		"modelRN.placeHolderList[771]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.IKVis" 
		"modelRN.placeHolderList[772]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKVis" 
		"modelRN.placeHolderList[773]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKIKBlend" 
		"modelRN.placeHolderList[774]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.IKVis" 
		"modelRN.placeHolderList[775]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKVis" 
		"modelRN.placeHolderList[776]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKIKBlend" 
		"modelRN.placeHolderList[777]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.IKVis" 
		"modelRN.placeHolderList[778]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKVis" 
		"modelRN.placeHolderList[779]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKIKBlend" 
		"modelRN.placeHolderList[780]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.IKVis" 
		"modelRN.placeHolderList[781]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKVis" 
		"modelRN.placeHolderList[782]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.follow" 
		"modelRN.placeHolderList[783]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.visibility" 
		"modelRN.placeHolderList[784]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateX" 
		"modelRN.placeHolderList[785]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateY" 
		"modelRN.placeHolderList[786]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateZ" 
		"modelRN.placeHolderList[787]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateX" 
		"modelRN.placeHolderList[788]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateY" 
		"modelRN.placeHolderList[789]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateZ" 
		"modelRN.placeHolderList[790]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleX" 
		"modelRN.placeHolderList[791]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleY" 
		"modelRN.placeHolderList[792]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleZ" 
		"modelRN.placeHolderList[793]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateX" 
		"modelRN.placeHolderList[794]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateY" 
		"modelRN.placeHolderList[795]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateZ" 
		"modelRN.placeHolderList[796]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateX" 
		"modelRN.placeHolderList[797]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateY" 
		"modelRN.placeHolderList[798]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateZ" 
		"modelRN.placeHolderList[799]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateX" 
		"modelRN.placeHolderList[800]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateY" 
		"modelRN.placeHolderList[801]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateZ" 
		"modelRN.placeHolderList[802]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateY" 
		"modelRN.placeHolderList[803]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateX" 
		"modelRN.placeHolderList[804]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateZ" 
		"modelRN.placeHolderList[805]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.CenterBtwFeet" 
		"modelRN.placeHolderList[806]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.visibility" 
		"modelRN.placeHolderList[807]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.spread" 
		"modelRN.placeHolderList[808]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.cup" 
		"modelRN.placeHolderList[809]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.indexCurl" 
		"modelRN.placeHolderList[810]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.middleCurl" 
		"modelRN.placeHolderList[811]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.ringCurl" 
		"modelRN.placeHolderList[812]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.pinkyCurl" 
		"modelRN.placeHolderList[813]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.thumbCurl" 
		"modelRN.placeHolderList[814]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.spread" 
		"modelRN.placeHolderList[815]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.cup" 
		"modelRN.placeHolderList[816]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.indexCurl" 
		"modelRN.placeHolderList[817]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.middleCurl" 
		"modelRN.placeHolderList[818]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.ringCurl" 
		"modelRN.placeHolderList[819]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.pinkyCurl" 
		"modelRN.placeHolderList[820]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.thumbCurl" 
		"modelRN.placeHolderList[821]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "A5C50E70-4AB9-329F-7F03-64A0D9799452";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "0AEF8FB6-41EA-D303-E8C9-8AA5152930F8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -353.07830315757974 -1031.8539581798084 ;
	setAttr ".tgi[0].vh" -type "double2" 787.39784200016015 291.95551302625313 ;
createNode timeToUnitConversion -n "timeToUnitConversion1";
	rename -uid "8296D391-4EAF-8873-A670-218816D992D6";
	setAttr ".cf" 0.005;
createNode animCurveTU -n "Main_visibility";
	rename -uid "C0CEACB3-45A4-AA15-41BB-AF93B6914083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Main_translateX";
	rename -uid "81A2BF77-4B30-DACC-1D8C-9BA9CA2EC710";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Main_translateY";
	rename -uid "38F1A3E1-4233-D7A0-5E40-489193D4303E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Main_translateZ";
	rename -uid "73663431-40A6-1FD6-B612-07B433C0297F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Main_rotateX";
	rename -uid "E4E932FC-44D3-51A5-239E-A5AA2AC775C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Main_rotateY";
	rename -uid "DB70A40E-4550-A0F0-DE2E-5584FD6C769E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Main_rotateZ";
	rename -uid "299B391F-40FE-70FD-7A3B-5685CB34133B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Main_scaleX";
	rename -uid "7683058B-4393-6E4F-561E-699673F76B4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Main_scaleY";
	rename -uid "3364C4C0-4D30-1C7C-A6F2-EEB3CA3E21F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Main_scaleZ";
	rename -uid "A1368571-41F5-7C7D-BBA1-ABB472E023A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger2_L_visibility";
	rename -uid "6CCEE049-4E90-991D-1B1D-2DB3EAECAE8F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger2_L_translateX";
	rename -uid "081C8953-4279-C3EB-DA49-7CBA0005CFF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger2_L_translateY";
	rename -uid "92DD375D-4650-211F-DE0F-7F88C547CFD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger2_L_translateZ";
	rename -uid "CC272D2C-472C-6744-01F8-39BFFD773B56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateX";
	rename -uid "2F3950A3-4AA6-7B2F-A3FE-84B2CD455782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateY";
	rename -uid "2340C4E5-4233-34C0-B78B-BD98761F2F56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateZ";
	rename -uid "EEB51CD4-41B5-C66C-7CF0-ECB1D2329CF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger2_L_scaleX";
	rename -uid "B9E1B66E-4E5B-E2BC-03E5-9CB1E68FADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger2_L_scaleY";
	rename -uid "DA7CCF80-4B4B-1B78-9B2D-FAA82EF1ED3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger2_L_scaleZ";
	rename -uid "451BAABA-4AAC-38DD-431F-8084B31DB652";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKNeck_M_visibility";
	rename -uid "66C907C8-4026-E235-677C-F79C9DD8BFFA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "1DF312CF-4BCE-CDE1-4370-2591A1F6B205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "7DF78CDF-49E6-695F-B5C0-F4AE5D1544A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "875B6EF1-4EEB-7765-CB55-4990BEAA2810";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "F8A536DD-42DF-7604-12F8-4E8258E17BA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "3D164ED8-4316-CAB3-5287-AEA586946FAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "60F977D7-4E5E-0A68-C5FE-04AD59E58129";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "2F2055B3-40C6-3D46-A64B-AC933BBB2D2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "86DCACA4-4791-CD27-A6EF-F98402247309";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "258BF817-46B3-F3D5-547F-6696E6EB46E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKNeck_M_w0";
	rename -uid "5B8836DA-4411-B576-D914-71B8A5F17134";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3333333330000001;
createNode animCurveTU -n "FKNeck_M_w1";
	rename -uid "C885ED7E-43D7-86A2-2DDF-9FBAC007961F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6666666670000003;
createNode animCurveTU -n "FKNeck_M_w2";
	rename -uid "76471967-44EF-18BE-B967-FFA91B4DA0BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKEye_L_visibility";
	rename -uid "7C043E56-4AD1-FF72-A049-0D9E4A44B565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKEye_L_translateX";
	rename -uid "5D5DF5F6-48F1-CDC5-3BF8-DDBA615C0FFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKEye_L_translateY";
	rename -uid "89094A0E-4296-1AC8-E73C-F1BBE8F742D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKEye_L_translateZ";
	rename -uid "244B3FC7-4820-5AD1-FE29-56BE8CC7B44D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_L_rotateX";
	rename -uid "6F186D3A-425E-C753-B3F0-02AECAAEDA19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_L_rotateY";
	rename -uid "840654F6-4AD0-9CB4-2741-6F88A2C606CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_L_rotateZ";
	rename -uid "93A4E6AA-439A-434C-1463-1F9A201BA4D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKEye_L_scaleX";
	rename -uid "68A43965-439A-31CA-62AA-5C884EE908DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKEye_L_scaleY";
	rename -uid "8DF81284-403A-6488-0E2E-78961A22663E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKEye_L_scaleZ";
	rename -uid "8A097C82-48B1-80E8-A6CB-788527448210";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_L_visibility";
	rename -uid "F6FDF3FF-442A-AA21-D27E-DF80ED4097EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger3_L_translateX";
	rename -uid "1344202F-4598-B389-41B0-1482FE8C308B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger3_L_translateY";
	rename -uid "3EAEE804-4825-E787-E256-9BA68A4D5CBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger3_L_translateZ";
	rename -uid "308534BF-434E-C3B7-B8DE-419F869B015B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateX";
	rename -uid "1F54AB03-4BD8-5C16-E629-7C837504387C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateY";
	rename -uid "313ACBD8-418D-EFD6-5789-79A73A294768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateZ";
	rename -uid "74206CD1-4058-3610-E056-2F87F1F1BD8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleX";
	rename -uid "F6695F62-4107-09CC-B736-2F8594BE2BB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleY";
	rename -uid "8CC8CBF1-44B2-CA43-F1BA-C8A42F30D907";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleZ";
	rename -uid "7F4B7CE8-462A-1F4A-3F0D-A7A47D91CEAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "2D4E7CCF-4F7D-9B3C-43BA-83A5C063D0E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Fingers_L_cup";
	rename -uid "6F445157-4B55-BD66-3114-7E90367BCC59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "03B6794A-4817-5F99-E930-E8AEC147F3E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "6F1C4359-4FC4-E1BF-1EF1-5A9A3CA35765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "23871227-472F-4534-9DA4-C7BC442A7591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "CBE21D4B-41EB-2EE9-CC20-BFB0DA7A39BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "CF323639-453D-1B8F-5F25-F9BFBFE09101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "FKThumbFinger2_R_visibility";
	rename -uid "23AC06EA-47D3-F2FF-3B2F-6C991BC49A26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger2_R_translateX";
	rename -uid "A40BF82E-43DE-5FE2-B18E-328035ACD3D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger2_R_translateY";
	rename -uid "692276BB-41E6-DCB6-6841-C2B0DA7770F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger2_R_translateZ";
	rename -uid "E39E2264-4139-6E34-BE37-E891F89054A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateX";
	rename -uid "945D0C66-4B3F-294D-D00D-869EF962C707";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateY";
	rename -uid "6735CE96-408F-1C28-F517-A2A06C3CFEF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateZ";
	rename -uid "645662A8-4B88-ED94-54D0-9095D03F8B65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger2_R_scaleX";
	rename -uid "6CAD8BDE-4911-B8CF-A10D-EE86E410DA1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger2_R_scaleY";
	rename -uid "F067AD89-460E-4BB3-B22E-85A3FADBEC71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger2_R_scaleZ";
	rename -uid "F33CD508-444D-CBA7-42F1-1AAC814F221A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_R_visibility";
	rename -uid "C7A8B63B-4A0B-FAAD-67EA-7F8899FA2287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollToes_R_translateX";
	rename -uid "094503F0-426F-8448-B65E-7AB9AA7273CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToes_R_translateY";
	rename -uid "15DF8438-40D8-F5F9-6F38-FB90A852EA84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToes_R_translateZ";
	rename -uid "3C3893DB-43E9-0525-3EDA-DA8B9E1DC4D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_R_rotateX";
	rename -uid "B598E7F9-41B8-E821-EC9F-E1BF68B4B3D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_R_rotateY";
	rename -uid "5526135F-479F-F6A9-95EB-E2BCE85ADBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_R_rotateZ";
	rename -uid "99649A31-46AD-EF8B-0387-BFB3C89531EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollToes_R_scaleX";
	rename -uid "E8998495-4F64-6D71-253E-B7924B38B31F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_R_scaleY";
	rename -uid "1453F881-425C-A321-5EB4-3DA57FA35561";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_R_scaleZ";
	rename -uid "E928AA4B-4633-4AE8-5125-0E8DE5865251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AimEye_M_visibility";
	rename -uid "8A41C5C4-491A-C5C7-3E5E-089CC4D91742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "AimEye_M_translateX";
	rename -uid "D8BAC37E-4343-A963-8620-82BAA48DD684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_M_translateY";
	rename -uid "D3B93602-4013-7627-710B-C5A782E391CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_M_translateZ";
	rename -uid "BD075A90-446D-ED27-19CB-1BA7CD2486D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "AimEye_M_rotateX";
	rename -uid "0597C768-4FE7-A2B9-FA76-61B9829C9653";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "AimEye_M_rotateY";
	rename -uid "85A1EB10-4C9F-699A-C1EA-6DB15AF81A1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "AimEye_M_rotateZ";
	rename -uid "C3A29541-4D22-1246-EF25-1899F884BB70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "AimEye_M_scaleX";
	rename -uid "B476361C-419D-B317-4BF5-9DA507B6A60D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AimEye_M_scaleY";
	rename -uid "0077661A-4E29-B626-F943-4486A1337680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AimEye_M_scaleZ";
	rename -uid "747511EC-4BF0-CA08-21C4-8C98425302AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AimEye_M_follow";
	rename -uid "4F8B5C83-4EC8-C299-92E0-63AFFEC845C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "IKLeg_L_visibility";
	rename -uid "A557D089-4775-C791-E87C-3EAD8125F729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "DE6BFDBD-4D06-21E3-BBDA-AAAFDE732FF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.559483151099954 19.999996811224491 7.5261190953751367
		 35 1.4668766048473065 59.999989158163267 1.2621959323003082;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "44798458-4794-A238-6AB1-A88B9D0C0845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "2241E522-4588-81DF-0BEB-2BA7956F0E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7416953133109132 20 8.9868858376049978
		 35 23.501142119166381 59.999989158163267 24.158329232799964;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "2E9B79C6-4F08-FBEA-FF07-FC9232415B21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "A9FD03F9-4CFF-7195-329B-958CB88FF83E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1035649679103026 19.99999723639456 -7.9400120625575097;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "D71250E5-4B44-F92A-739F-389CB2642BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "5F43F365-41E5-3C3C-0B88-F0A9343E7AF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "FB5B0F23-4F37-DB46-DDF6-49A9D7A20C6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "17803C3C-460A-0647-7894-4FA06B996502";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "8EEFF8FC-47D4-739F-E155-8CAEF5F62970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "53958668-45B4-D72C-44B9-B78EAC9806D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "8C1655C2-4C07-E494-763E-83A0AD462ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 30;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "36CF8973-4338-F3EB-B941-D3A28CC4A0A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 60;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "B78F6D17-4734-E6FD-401C-2286A6AEB4F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "8C4EA7C4-46EB-454F-3835-3485D795F5E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "46FFE478-4273-B69B-C6BF-C5B54566CF8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "6CD98FE6-4A95-6EF7-EC2F-90B074031FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "1F8C9D66-42D8-064C-BD58-3EA9D99A00F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "028B0BE9-443A-0B62-4A0A-1CBDEADE20C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "BF257222-4EE1-215B-1953-B1815C2E25D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "E7FBE1C7-4CAD-E059-F90B-7AA33B398356";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKMiddleFinger3_R_visibility";
	rename -uid "8B16E4D1-456B-6C3E-54FB-B29F58DD3228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger3_R_translateX";
	rename -uid "41F2D375-4C17-E39B-8EFC-CDBC0D48B4A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger3_R_translateY";
	rename -uid "974CACD0-42B2-710C-0FEF-C699651C9B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger3_R_translateZ";
	rename -uid "DB946A4E-4D46-2324-1637-C9BF3AB4A606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateX";
	rename -uid "31B1B02E-4BD1-B609-370B-0AAD0E4EA5AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateY";
	rename -uid "43EB510A-472A-99A2-A723-3D872E510F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateZ";
	rename -uid "C2371058-4814-BB5F-E718-97878C61FA0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleX";
	rename -uid "2E26F0F0-4947-09F9-EC85-AD807C945238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleY";
	rename -uid "A851A90C-475E-ADF8-B223-6B9788227D63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleZ";
	rename -uid "B14564C7-4673-812D-9CBA-E18838993B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_R_visibility";
	rename -uid "6BC0BC9F-4C44-8575-D7FB-E08DF27F1B81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger3_R_translateX";
	rename -uid "CAF4D5C4-4085-4D58-2073-979BAF331689";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger3_R_translateY";
	rename -uid "F81F45CF-45B0-98E0-10D1-5BA0265ECCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger3_R_translateZ";
	rename -uid "50171505-42A0-FFEA-CCF8-DB8652ABA2D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateX";
	rename -uid "4AFB4F43-417A-CA3C-E42E-1CA41FB3E4FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateY";
	rename -uid "AB80E014-49BB-CE59-EB39-E6B2B70901AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateZ";
	rename -uid "3DE81513-4DCD-5A55-A351-9E8FED0E9216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger3_R_scaleX";
	rename -uid "5ED2DB5A-4392-43AA-3DE0-EAB53B4FE329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_R_scaleY";
	rename -uid "674A8091-4244-EE0D-EE81-249CF658CB61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_R_scaleZ";
	rename -uid "02F40263-4ABF-F0C5-BEF3-AA832CAF0601";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_R_visibility";
	rename -uid "7305C92E-4FFA-088D-FDAC-149C7D946D19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger2_R_translateX";
	rename -uid "A298DCB4-4697-2A30-6C09-D3B7B326EAA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger2_R_translateY";
	rename -uid "79819550-4CC1-D2D7-3757-BD98FDAED03A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger2_R_translateZ";
	rename -uid "55C1143C-4594-F177-4747-328399C36EC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateX";
	rename -uid "2AEF68A7-4419-4F4E-4345-759FD341EFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateY";
	rename -uid "94BAA735-4B7B-0F1F-CEB6-B59651FB58FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateZ";
	rename -uid "C43DA0DD-457B-7A02-35A1-8091EF599A32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleX";
	rename -uid "F781B18E-41E3-A6A3-6A2B-14A5853DCA3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleY";
	rename -uid "AE466985-4BA9-6EC9-2107-F2895E862130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleZ";
	rename -uid "B07F3F07-42E1-68D8-D59F-8B9F7030A5E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIKLeg_R_FKIKBlend";
	rename -uid "2844A5BB-4DEE-1058-A1AE-4B939BD6DAA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKIKLeg_R_FKVis";
	rename -uid "107FB0A6-4518-7BD1-4C30-7D8062121DB8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIKLeg_R_IKVis";
	rename -uid "706AC3C8-4567-F95F-4BA9-40BF8DFD4DF4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIndexFinger2_L_visibility";
	rename -uid "0F86756B-46F0-C7F4-DEA6-D2B64654669B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger2_L_translateX";
	rename -uid "0DBB7DEA-404C-BA29-7303-4F8E3E8B3242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger2_L_translateY";
	rename -uid "0B820FBB-45EA-2BA5-7E37-CA872C21806A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger2_L_translateZ";
	rename -uid "7998D087-4D3F-8901-4B23-619D9BCAC279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateX";
	rename -uid "236406BC-4E58-5E6B-6C6C-42BD1504269A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateY";
	rename -uid "6F772FA9-4788-FD61-25A1-BB8017B609A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateZ";
	rename -uid "BC35E0B2-493B-2F74-18A0-B081F7891D39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger2_L_scaleX";
	rename -uid "BB33D3FD-4113-DA1E-37C1-7CA00B4A4B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger2_L_scaleY";
	rename -uid "80CA1489-48C2-E2D6-BF10-FD9C80E1C26B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger2_L_scaleZ";
	rename -uid "4BBDF512-4A21-E995-E437-38AA48D6B29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIKSpine_M_FKIKBlend";
	rename -uid "6183C23F-4AE6-47CD-EFC9-5F8007E187E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIKSpine_M_FKVis";
	rename -uid "34463360-499C-0349-BC0C-8083EB9B04D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIKSpine_M_IKVis";
	rename -uid "D80F2087-4B51-ED1D-0239-27B3EC2C7C17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "5FD897D5-4522-39B1-40DA-AC87CFE527F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "Fingers_R_cup";
	rename -uid "190210F4-498E-6FAA-9EE6-659C2132A8A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "699B6036-4664-55FF-C869-1F85D7B38AC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5 10 0 30 0 50 5;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "C9AB11AB-4196-35F4-1844-EC9BC3548ACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5 10 0 30 0 50 5;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "44E5EC94-49D3-7627-9844-3FA5C5E6E72A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5 10 0 30 0 50 5;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "80E26E1E-4F7A-828C-9FD9-BDA5324FDDD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5 10 0 30 0 50 5;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "7DECD724-4121-BA94-10F1-639968BC7EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5 10 0 30 0 50 5;
createNode animCurveTU -n "FKIKArm_R_FKIKBlend";
	rename -uid "27C4D875-414D-4193-E9E1-E898314EC718";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKIKArm_R_FKVis";
	rename -uid "AA2888C3-4804-2553-13AD-4794173837A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIKArm_R_IKVis";
	rename -uid "064D9473-4554-5164-E169-33AFEBB3C049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIndexFinger1_R_visibility";
	rename -uid "D366E4A3-4BEF-8E37-DAC1-B3A3952435AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger1_R_translateX";
	rename -uid "1695B99B-42A7-39A4-5C20-25BBFCCA5F04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger1_R_translateY";
	rename -uid "864606B8-4349-9705-E3C3-ABB5782BD6C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger1_R_translateZ";
	rename -uid "22F3E83C-4A7B-585D-DA75-16B84FE3368F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateX";
	rename -uid "4ADD6D38-4FA1-9A2C-5590-7C8D2238692A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateY";
	rename -uid "15AD36F3-44EE-6C60-E61B-F6B028225D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateZ";
	rename -uid "451E7A3D-4382-F830-FD9B-BFBDA191B916";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger1_R_scaleX";
	rename -uid "2E861AB9-4490-F155-3BF0-33AC8B068D40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger1_R_scaleY";
	rename -uid "7090A56D-474F-D6F8-00C6-6B81626823E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger1_R_scaleZ";
	rename -uid "9FEA8A63-490C-02BB-3B93-81914A2C68B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "AimEye_R_translateX";
	rename -uid "401BED3E-4314-31A2-8621-5ABD3E82D357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_R_translateY";
	rename -uid "58B0BD6C-42D2-4A39-3F76-B2812D76DCB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_R_translateZ";
	rename -uid "232BCA09-4AFD-35E6-A663-EFBC7B3C38BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKToes_R_visibility";
	rename -uid "FDDA6AE0-49C0-9579-8348-6F80C51ADD1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "IKToes_R_translateX";
	rename -uid "1E28210D-41ED-81E7-66B8-9DB9197C2452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKToes_R_translateY";
	rename -uid "F5CDF214-4FBB-4678-75AD-B49DE720A52D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKToes_R_translateZ";
	rename -uid "04F84221-45DB-1348-8DB9-48BED063F63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_R_rotateX";
	rename -uid "17CCFD2E-4DBF-347B-3D09-E4818D97DDBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_R_rotateY";
	rename -uid "2C2FD583-4C7F-5233-1536-A6AB2DDE061D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_R_rotateZ";
	rename -uid "96C1CFA1-47B7-D42C-D8B1-36830666749F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKToes_R_scaleX";
	rename -uid "6D31C73C-47DB-BA45-96D6-A3B35F9F7C98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKToes_R_scaleY";
	rename -uid "E9A87949-42F7-6BBF-691E-DCAEF632956E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKToes_R_scaleZ";
	rename -uid "C6E40757-40A6-2AF0-0D52-81A6B63C9B1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKEye_R_visibility";
	rename -uid "23B1D86A-460C-C3CB-D0F9-A9BF58EE10B0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKEye_R_translateX";
	rename -uid "F1CCB22B-40C5-5C0E-FF7A-5FAF4EF4CF6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKEye_R_translateY";
	rename -uid "277F634C-4221-8CC4-7576-AB914D47BC70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKEye_R_translateZ";
	rename -uid "AC53B11E-4F6F-F91D-EB12-8EB8B7C4B7E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_R_rotateX";
	rename -uid "7733D3AC-4C86-8E7B-DC14-D9B9A2BC7440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_R_rotateY";
	rename -uid "722C9552-487C-1F5F-1DE3-1284C2A8045D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKEye_R_rotateZ";
	rename -uid "E8C53153-48C5-E48D-9A5A-3C9E8E33D331";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKEye_R_scaleX";
	rename -uid "8714DD5F-4601-8FE7-E961-CD8BCF8C36E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKEye_R_scaleY";
	rename -uid "36713D45-4B19-4443-96D3-D288E18BFB1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKEye_R_scaleZ";
	rename -uid "A14C01F5-4AF4-0367-8E61-7C9BC654D3E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger3_L_visibility";
	rename -uid "C7329449-47BA-A7B8-8435-519B7FE4D42D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger3_L_translateX";
	rename -uid "0642E25B-49A7-BF89-21BD-EE85FF38A689";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger3_L_translateY";
	rename -uid "63C997DA-4858-0593-A540-AD8D7F144EA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger3_L_translateZ";
	rename -uid "948E7DD3-4248-AED6-0F18-1999E2BEDC15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateX";
	rename -uid "38156D4E-4792-503B-885C-0CAB89AA1362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateY";
	rename -uid "CFDC2566-410B-F8A7-5DDF-47956A51C05D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateZ";
	rename -uid "AECC0827-457A-8B15-1882-73B1B9CA9B4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger3_L_scaleX";
	rename -uid "5F50FF65-4BCD-0E6B-E5FF-E1B6403CCB03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger3_L_scaleY";
	rename -uid "A1BA03CC-421A-D3B6-3854-E9BB47CB11D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger3_L_scaleZ";
	rename -uid "ECFEE979-4369-2346-AD09-379C7D05494D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger1_L_visibility";
	rename -uid "380ED4DF-41E8-B55B-EAE2-75A79D815B93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger1_L_translateX";
	rename -uid "7FFFDD20-4A4A-5313-40F9-2C927DF60B19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger1_L_translateY";
	rename -uid "6369E30F-47BD-B7E0-2143-02B02F568087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger1_L_translateZ";
	rename -uid "3C7F999F-465D-CCD2-05B7-74ABF169068A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateX";
	rename -uid "602D6FDE-4277-C9D0-B511-00A5368601FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateY";
	rename -uid "02824AD3-4CB4-A409-7138-DA908A94E737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateZ";
	rename -uid "756EB99F-4D40-CB36-1135-83AF26258F6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleX";
	rename -uid "7646248B-495E-C209-5DDE-D1A9730E435C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleY";
	rename -uid "542DACD0-44EC-0ECD-8A8C-AD95E794B1D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleZ";
	rename -uid "FB0E2FE8-4092-4BE6-0989-BD8ED4EBAE9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_R_visibility";
	rename -uid "BD9BECDD-4E71-C3E9-1605-0C982C8187E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger1_R_translateX";
	rename -uid "636F2FC3-41AA-1D8E-0FCA-AC8EFB0E9AB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger1_R_translateY";
	rename -uid "26B11207-4115-4337-F687-8082E7BDBDA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger1_R_translateZ";
	rename -uid "FC2AD4F7-40F2-9DE1-D722-60AE11FDE5B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateX";
	rename -uid "A82FDA7F-4BD2-BE0D-A2D7-E7B419BE7563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateY";
	rename -uid "A06C6A22-47D9-6082-8080-30A5D566E806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateZ";
	rename -uid "C5DE4D90-4C46-04BB-220A-998F8C50B57B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleX";
	rename -uid "56C665D5-41C8-3DE8-6952-AC912AFB7B47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleY";
	rename -uid "234680CA-4AE5-7FF2-CBC5-1FB6D60D1E8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleZ";
	rename -uid "1B7DB948-4DFB-C781-A252-A6B312BB1840";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "PoleArm_R_translateX";
	rename -uid "CCC934B8-4EEB-BD95-E45E-129BA4496DA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.211197415861715 10 35.12297624687713
		 39.999992346938775 -10.36992651102117 59.999989158163267 -26.48503018010485;
createNode animCurveTL -n "PoleArm_R_translateY";
	rename -uid "E910B8E2-49D9-D28A-3208-A58D6DC7EF20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -15.391126623744768 15 -71.278216047563291
		 20 -102.92182643320751;
createNode animCurveTL -n "PoleArm_R_translateZ";
	rename -uid "2136AE80-4D93-E5FE-41BC-EB8C67D755B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.031522873804686 10 -20.583820869233623
		 20 -28.994848533328469 39.999992346938775 -37.808802267098152 59.999989158163267 50.664376460274276;
createNode animCurveTU -n "PoleArm_R_follow";
	rename -uid "B5564A3B-4F2A-0214-2173-3E960E32EFD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "PoleArm_R_lock";
	rename -uid "1384E456-467C-AA40-A901-A4A1FC41263D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger3_R_visibility";
	rename -uid "41799EA5-444B-673B-B2DC-06A36BC9DEFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger3_R_translateX";
	rename -uid "5D94C062-444D-8D4B-8344-E780B50CD366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger3_R_translateY";
	rename -uid "B90606A2-46E9-69A4-8AE6-AE81B63E9A8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger3_R_translateZ";
	rename -uid "524173B1-4CEC-6C90-46A5-1D9829E40F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateX";
	rename -uid "B1995928-4A07-6256-16BC-8B92B5753848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateY";
	rename -uid "B5D1C8E7-4011-91E9-3E0D-9BA1328932DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateZ";
	rename -uid "87B93AC3-4110-E197-CECD-90AEBB353389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger3_R_scaleX";
	rename -uid "0532D3EF-46E7-A215-81B7-E08702B7E53F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger3_R_scaleY";
	rename -uid "CC1CB706-4231-8943-CF5E-068458F349BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger3_R_scaleZ";
	rename -uid "34FCD684-458E-A159-6B39-E99BFC689084";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_L_visibility";
	rename -uid "BB1E991E-4B8D-F7CE-F2E7-ED95906FB923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKCup_L_translateX";
	rename -uid "C5B20FE0-4483-DD84-4110-45BF7C9AEE30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKCup_L_translateY";
	rename -uid "0ADA1645-4462-8473-2BD8-2C805DBF1F71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKCup_L_translateZ";
	rename -uid "1F5D1BC8-4F00-66CB-EB5E-61B5B38CDDE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_L_rotateX";
	rename -uid "99F52595-45EC-D131-A52D-E99E91559B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_L_rotateY";
	rename -uid "EC04308A-4EAD-D0D4-74C1-4F84A9F6653E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_L_rotateZ";
	rename -uid "EC6D29FF-4E50-A85F-FBC5-FF98717037C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKCup_L_scaleX";
	rename -uid "948C3A63-45C4-493B-F39F-DAB89A45FCC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_L_scaleY";
	rename -uid "FD7F5858-4683-DAC8-9419-5580DF9F0083";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_L_scaleZ";
	rename -uid "13BEA668-4B41-AB45-395D-63825751DE56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_visibility";
	rename -uid "78AD8F40-4F4E-6F72-AD19-98A75E5EBF0C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "C67432AA-4A59-3708-C334-33AEDA2825D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "9B052851-4C56-B0A3-2FF7-01A9D62E3F92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "3452E803-4776-1C07-155B-C18579FE6262";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "EB95905A-4F21-6757-4542-3CA988DEA2B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.057730961435684 19.999996811224491 -6.3449947175779942
		 39.999992346938775 19.581460091614979 59.999989158163267 0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "261C5598-4B48-BE45-36DE-27911096D70C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 19.999996811224491 8.427389844455325
		 39.999992346938775 3.2045893265770493 59.999989158163267 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "DB895EAC-43DD-6ACD-39DD-EC9B2F51DEAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 19.999996811224491 19.757873513908017
		 39.999992346938775 14.465943284787148 59.999989158163267 1.4738952672144694;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "2F2C2849-4024-90ED-A7DE-A2A4C5525B4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "9503FF5A-40BE-E672-47E3-9D8C925F6BA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "C6F2D196-40D3-D995-C32A-B5AAAED02215";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "F2038E07-4C2D-5DFA-9D15-889DE183A979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollHeel_L_visibility";
	rename -uid "B098AA05-48D2-51A1-5DEC-86B27A45BB12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollHeel_L_translateX";
	rename -uid "9D5B8366-45DF-9F91-84F2-79B21CF91183";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollHeel_L_translateY";
	rename -uid "0C94B75A-49BA-D96C-F2E0-AEA239E25399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollHeel_L_translateZ";
	rename -uid "32CD8528-4D38-F40A-0111-AFBB0909B85D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_L_rotateX";
	rename -uid "5DE1B479-474B-EDB5-2C62-9D8E04644EF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_L_rotateY";
	rename -uid "D20B1847-4B37-51E7-FB61-CF87AEF0CC04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_L_rotateZ";
	rename -uid "44CDEFB7-41F5-D7C5-E9DE-78B3939A3BCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollHeel_L_scaleX";
	rename -uid "CA46354B-40D6-5569-E444-73891ADF173B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollHeel_L_scaleY";
	rename -uid "C19F43F0-4BD6-DBFE-25F3-3CB083C60FA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollHeel_L_scaleZ";
	rename -uid "B51E90CB-4C37-FB72-4E42-4BA64F436CCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKToes_L_visibility";
	rename -uid "31330109-4963-BA71-4995-A2A39A10261D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "IKToes_L_translateX";
	rename -uid "A963BB1E-4AA9-00CB-04F2-D3960E088AA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKToes_L_translateY";
	rename -uid "EC7CB5E2-4F8C-576C-834D-AC83E3F01F55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKToes_L_translateZ";
	rename -uid "A98CDB7D-4994-0345-896D-8E86D61BA247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_L_rotateX";
	rename -uid "7AD63521-4D90-7515-DD0C-04905D47A427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_L_rotateY";
	rename -uid "6B9DBC8F-41A9-1224-3139-C0811028F9E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKToes_L_rotateZ";
	rename -uid "8061B62D-4B89-72D1-5ADE-8ABB4519614E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKToes_L_scaleX";
	rename -uid "975D05A2-4356-32AD-3579-9A9FD2ED958D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKToes_L_scaleY";
	rename -uid "969FF25A-40B3-5989-A196-1ABCCD68EF03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKToes_L_scaleZ";
	rename -uid "E93274C5-426E-1961-D8D9-EDA7954DDF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "50501728-45AC-043C-2AEB-F5AC817A3E5F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 51.999989370748303 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "981034BA-47D3-E9B0-87E2-5A81CBDD27D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 51.999989370748303 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "0407572D-4A6F-93E9-255E-55B0F664C152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.6680401771349551 19.999995535714287 -82.823224451395703
		 39.999992346938775 -88.80954590850348 51.999989370748303 -88.054643750548166;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "616AE91F-41B7-C81E-0301-459998852B3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.7033227738046537 19.999995535714287 -29.114649062857094
		 39.999992346938775 -31.861295627190813 51.999989370748303 -34.393666456832044;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "8B92D790-4C69-FC9C-E286-7EB9534B7B4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 -5.5433426735787155 39.999992346938775 -14.488425656828692
		 51.999989370748303 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "10EA58A2-4246-B063-5C43-76A2B3D26259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -21.66481957756497 20 -61.292592614374328
		 39.999992346938775 -24.702971467030537 51.999989370748303 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "DD5FB92D-4602-1D79-6CE1-6687B6D5C833";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 29.901218348063484 39.999992346938775 23.35750030275511
		 51.999989370748303 0;
createNode animCurveTU -n "RootX_M_CenterBtwFeet";
	rename -uid "776DE901-4609-9D25-6CF1-0A9C5A6F68FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 51.999989370748303 0;
createNode animCurveTU -n "FKIKLeg_L_FKIKBlend";
	rename -uid "EDE9D580-49A8-272E-DD54-EE9691D9E5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKIKLeg_L_FKVis";
	rename -uid "6092F332-4B89-6EE9-6C5C-A4B20AF5E698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIKLeg_L_IKVis";
	rename -uid "EE624A3F-46F1-F9FF-A1B3-C9AB74A2E642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RollToesEnd_R_visibility";
	rename -uid "972E75A9-42A1-A614-6167-14860CF2DB70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollToesEnd_R_translateX";
	rename -uid "3C423CB7-4DD2-A91E-6CA4-D7A26B21B316";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToesEnd_R_translateY";
	rename -uid "664B0502-4617-0747-2F7E-1B8E3B0A0AF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToesEnd_R_translateZ";
	rename -uid "824CECFD-434E-2D83-6A51-199AE88ED91B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_R_rotateX";
	rename -uid "ABA71B4F-4290-A758-98F4-588293FD1AFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_R_rotateY";
	rename -uid "0F774D27-49E8-AD74-B827-B48ED4BBC1FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_R_rotateZ";
	rename -uid "470A21C3-45D5-A0F0-BAB1-41BBD5E4B689";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollToesEnd_R_scaleX";
	rename -uid "8E7C4377-44E8-29BE-5988-F0A3675F50ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToesEnd_R_scaleY";
	rename -uid "271B1F65-4E9A-3ED5-7ADD-C08C44D65B78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToesEnd_R_scaleZ";
	rename -uid "B070C91F-4187-5469-C29D-C1B69629D7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_R_visibility";
	rename -uid "5854BC83-4BAD-0C1C-9EAC-A18C885DBE1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger1_R_translateX";
	rename -uid "1E741C38-41F2-76CB-5C13-A9A29B48578D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger1_R_translateY";
	rename -uid "0A42C85D-4C4E-E373-8CE6-4C977775538E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger1_R_translateZ";
	rename -uid "13A2C955-40B6-2F7B-8AD5-53A0B5EBEABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger1_R_rotateX";
	rename -uid "5A93CF13-440F-CF09-F3F1-349A7A1FA1C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.0783621410358162;
createNode animCurveTA -n "FKThumbFinger1_R_rotateY";
	rename -uid "490F4631-4CF7-7007-55A3-BD9F13F0E1F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -23.980604980012519;
createNode animCurveTA -n "FKThumbFinger1_R_rotateZ";
	rename -uid "AE661C1D-462B-1485-1970-AD8574FBF60E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.439675313429035;
createNode animCurveTU -n "FKThumbFinger1_R_scaleX";
	rename -uid "CCC34326-4283-EFF6-E658-CAAEE9A1FDCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_R_scaleY";
	rename -uid "19556A6D-4014-0D98-2FE1-6C9FB6EEEDEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_R_scaleZ";
	rename -uid "1B94DCA3-4EBB-2E6C-6C99-069E5454A1E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_R_visibility";
	rename -uid "1B78D964-427E-CDFC-1671-D0A523E7EA1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger3_R_translateX";
	rename -uid "2CC17C6F-488B-D724-1CA8-2191340FBEE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger3_R_translateY";
	rename -uid "12BE6E9D-4EB7-9C98-F69A-44987642C083";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger3_R_translateZ";
	rename -uid "6B026796-4DFF-F513-F9FC-F6B266DA5C0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateX";
	rename -uid "3CDC4EAF-4EFC-4DF2-603B-D883EE6451BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateY";
	rename -uid "B1F0B034-4913-A829-5137-AA96C0AC0CCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateZ";
	rename -uid "8C4F45B8-4295-AB4A-0B0C-C69A6BFF2A81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleX";
	rename -uid "90C6094C-4755-10E5-5F16-46A6A502B4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleY";
	rename -uid "1C70F1EA-406B-AE2E-0108-E99CD2247A37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleZ";
	rename -uid "906B9B4D-4CBB-EF02-13A4-07B5AD00806B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKScapula_R_visibility";
	rename -uid "BAD0A7D7-4EF9-7C17-753D-43AA27F33CA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKScapula_R_translateX";
	rename -uid "2DF9C2D3-4BD0-3023-B4B1-5A9E6E50909B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKScapula_R_translateY";
	rename -uid "C24FD582-4C45-01C7-BAEA-4283288FA2D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKScapula_R_translateZ";
	rename -uid "FDF0FA01-4FF8-27E9-1291-EDBAE3BBFFE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "82A17712-4063-78B4-1095-7B90FC86547C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "BF8D2B8A-4AAD-B86F-B871-2CB3ADC99E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "C973B11A-436B-2486-6069-95AED770B04A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKScapula_R_scaleX";
	rename -uid "9F1439A5-4E2F-F877-93CB-B4B1427C7D7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKScapula_R_scaleY";
	rename -uid "129EEFE8-4CDA-7BFC-A259-8DB6655C2FA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKScapula_R_scaleZ";
	rename -uid "13BD16A6-4E21-29CA-90EC-0298C4DED898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_visibility";
	rename -uid "27260D86-47A9-B774-0F4F-F2BB90FE484F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "IKArm_L_translateX";
	rename -uid "3640D101-4F3D-52BA-FFBA-21A953FDDBAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -38.947569827796777 19.999996811224491 -59.092827751960854
		 50 -53.234104184992304 59.999989158163267 -66.827353877593737;
createNode animCurveTL -n "IKArm_L_translateY";
	rename -uid "C25D3FD9-4BF8-3A4F-D2E1-0685168ECC9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -47.557603529929253 19.999996811224491 -79.988961437622791
		 47 -100.24680206088897 50 -104.96694097924504 59.999989158163267 -108.58348142929015;
createNode animCurveTL -n "IKArm_L_translateZ";
	rename -uid "F2B7F008-47E6-6727-1DA6-7385C5B9807E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 19.372506035536603 19.999996811224491 8.1347676354765746
		 50 5.4088451611723389 59.999989158163267 17.645018491827699;
createNode animCurveTA -n "IKArm_L_rotateX";
	rename -uid "E13A2B13-4F18-2787-CEDB-FEB230FB514A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 76.13290548687678 50 134.41108608192155
		 59.999989158163267 171.65905991416398;
createNode animCurveTA -n "IKArm_L_rotateY";
	rename -uid "9DE033E7-4A47-9B19-0393-0EA2025CB14C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -41.936610018421533 20 -56.370286859086065
		 50 -39.125124666466853 59.999989158163267 -18.358050936601487;
createNode animCurveTA -n "IKArm_L_rotateZ";
	rename -uid "1329CAA7-4ABB-1EF7-B511-2DB6A6C30307";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -85.422239260934674 20 -33.399816098741375
		 50 -163.83180763071587 59.999989158163267 -148.03270676385048;
createNode animCurveTU -n "IKArm_L_scaleX";
	rename -uid "7B69A0CC-483E-4352-F236-ECA5009632FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_scaleY";
	rename -uid "13E73F6C-4D3D-09BF-1734-D889301C09CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_scaleZ";
	rename -uid "3E551D4B-4823-5095-DBDF-869A340C6ABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_follow";
	rename -uid "CC23461B-47BD-8BC3-890F-C6BF79264967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_L_stretchy";
	rename -uid "7BF6D5AF-45CC-0480-0834-8F8F26A5D7EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_L_antiPop";
	rename -uid "9327FE69-460F-C416-C068-FE9167DDAC0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_L_Lenght1";
	rename -uid "628432E8-4CD8-397E-6CD8-8FBC08AFCBE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_Lenght2";
	rename -uid "30D6D810-462B-4755-BA80-C29CC4E9DD01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_L_Fatness1";
	rename -uid "AE0B5DDA-4575-53E1-092D-359B90C91960";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_L_Fatness2";
	rename -uid "951E079A-4360-6641-FFDC-82AABD4C8BAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_L_volume";
	rename -uid "4600DDE9-4398-440B-8984-11A13D92CD93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTL -n "PoleArm_L_translateX";
	rename -uid "85E12981-486E-1CA8-25C5-618EA67B720B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -9.3193004979125575 59.999989158163267 6.4551548930843659;
createNode animCurveTL -n "PoleArm_L_translateY";
	rename -uid "115A19BE-4327-A7AE-BAB2-A3B423DC3BDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -17.371873874835288 39.999992346938775 -73.636081173565628
		 55 -58.403450748938553 59.999989158163267 -61.48511065098463;
createNode animCurveTL -n "PoleArm_L_translateZ";
	rename -uid "4FF6094E-42B6-FE91-0E34-399EB07E8132";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.198062058262458 39.999992346938775 2.0459489428385638
		 59.999989158163267 62.454188685818195;
createNode animCurveTU -n "PoleArm_L_follow";
	rename -uid "FDF89057-464D-BD8D-83A5-BBBA9794A3AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "PoleArm_L_lock";
	rename -uid "B3D9B0C9-4F6B-E268-7AE4-D28CBD19CE5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKChest_M_visibility";
	rename -uid "B569B4D9-4966-E79F-37BD-6E9ED111C980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "4C9FFE60-4C4C-CEDA-E41D-3288AC6C6D09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "EF4B8C32-4F6B-B8D3-4CB0-7DBB96F82A79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "01BB25E8-4E78-8895-AEC8-C696C1B17732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "7BA2108B-462C-C8D1-FFC6-E39BA894CBA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "A9C9D1A9-4361-DB56-A79E-258AC9C1F5E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "4237106F-4605-9174-ACCD-FA9F06D0DEF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 59.999989158163267 18.835943372766948;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "56BDC4C3-403A-ACB8-C23E-0892F4B7C240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "64D5EE04-493F-8ED3-5554-BB975FAB00EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "0197BE23-4883-8FB9-F29B-498DDAEB2AF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_L_visibility";
	rename -uid "8C008F9F-4FD4-8058-52DB-97BFC96B5E28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger2_L_translateX";
	rename -uid "F91DB134-4EFB-A7E8-45D8-B98E4994E721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger2_L_translateY";
	rename -uid "87BA0367-4733-A821-7CE5-6D9C7569D609";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger2_L_translateZ";
	rename -uid "576BFF87-4DB3-2637-9954-AC94DF8CF204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateX";
	rename -uid "47898768-42E5-1963-F062-8A810983ED93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateY";
	rename -uid "C4BC222B-40FD-5C0A-3CC9-758CC42A67FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateZ";
	rename -uid "4D59FF13-4104-E63C-4991-36889983A8F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleX";
	rename -uid "D25A8A61-4BAB-9C99-36A5-0CA359B388F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleY";
	rename -uid "A450FE10-4CD5-0D3F-C122-BAA826958866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleZ";
	rename -uid "5EA22EBE-478F-D975-730C-67BF19B88494";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_R_visibility";
	rename -uid "0E14ED56-474D-85CC-F2A2-3F87A45484AE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKCup_R_translateX";
	rename -uid "F79FC4DE-4CDB-2B18-9BDD-768196E76991";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKCup_R_translateY";
	rename -uid "C0BF66C2-4FA2-5D9E-FF9B-D196EDCD6DAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKCup_R_translateZ";
	rename -uid "1243B9A5-40FF-77DE-6519-55B889AD30B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_R_rotateX";
	rename -uid "698E52A7-42EF-6B92-30D5-A5877243D54F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_R_rotateY";
	rename -uid "A673425A-4A7D-A8B0-06A1-97814014B10F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKCup_R_rotateZ";
	rename -uid "7A115C47-40F3-D4AF-791F-F29C0D3E525A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKCup_R_scaleX";
	rename -uid "29BE932B-42DF-C971-61A6-06A7E8B82B4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_R_scaleY";
	rename -uid "BC90649F-4B18-0F82-6931-BEBA95A263A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKCup_R_scaleZ";
	rename -uid "8438881A-4D0F-F4C5-BE3D-DC960A2E0DEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIKArm_L_FKIKBlend";
	rename -uid "2F0734F6-46DE-9644-0E9B-86B4CF8AC9B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKIKArm_L_FKVis";
	rename -uid "8F8B68A5-44F5-0D96-75D4-A584EECEEC98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "FKIKArm_L_IKVis";
	rename -uid "EAC0C1AF-4A62-01EA-0591-0B994F6890CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "AimEye_L_translateX";
	rename -uid "B8CF422B-439F-59AF-4F9B-EFB7069D78B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_L_translateY";
	rename -uid "653E8E88-46AA-B4B1-6B0E-35953B30C43B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "AimEye_L_translateZ";
	rename -uid "20AB1126-4211-6749-BE50-14A9A44B7A77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger3_R_visibility";
	rename -uid "EE7C0231-4DF4-2DE3-4867-CC9125B64A72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger3_R_translateX";
	rename -uid "B0B6C4C0-43BB-A6C7-8EAD-668C957981E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger3_R_translateY";
	rename -uid "D571565A-40DB-E426-B09E-DBB8751D5815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger3_R_translateZ";
	rename -uid "F9D37FDE-4AA1-0041-AC68-2C9D6911DE6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateX";
	rename -uid "A448AE20-4184-065A-519F-12BF3603B913";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateY";
	rename -uid "CE825A5B-4E05-9F8E-39B5-2F82AF62B2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateZ";
	rename -uid "74FB3CAC-4964-3DA8-4C82-85A41C201A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger3_R_scaleX";
	rename -uid "B0119FF2-417F-0E30-E83F-0FB4B0A33F82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger3_R_scaleY";
	rename -uid "73242181-4EA5-E938-B1E5-268287989F0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger3_R_scaleZ";
	rename -uid "4A88D267-4DEE-FFB5-BD21-EBB899CEFE59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger1_R_visibility";
	rename -uid "42D8E5BC-4E28-26E4-DD52-F2A1603654E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger1_R_translateX";
	rename -uid "F6EC4AF0-42CA-9A39-7BDA-74AA2D3ED1BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger1_R_translateY";
	rename -uid "3F63CC90-4380-C7F9-7D9A-38BABFBD9482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger1_R_translateZ";
	rename -uid "D28E2125-48AF-1BB8-C11E-36B380AC2F21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateX";
	rename -uid "0844E506-400F-ABC2-7703-7FB525542B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateY";
	rename -uid "5CA1C6B5-45D3-9A2E-7AC5-51A5EF659DE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateZ";
	rename -uid "9BB65CB1-45A5-CA41-4262-8EAF38469CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger1_R_scaleX";
	rename -uid "1EA63B6F-4F63-6739-3D8E-2AB44BAE5B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger1_R_scaleY";
	rename -uid "F4997C1B-473C-2197-E392-0AB063581631";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger1_R_scaleZ";
	rename -uid "7E8D3D11-454B-87E0-C17C-4EAD7606931D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger2_R_visibility";
	rename -uid "F90CEFD3-4FAB-A385-53AA-C8AEF41F2BB8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger2_R_translateX";
	rename -uid "137E5169-4136-2A1E-5F2B-4993288EB74E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger2_R_translateY";
	rename -uid "0E9BD3BF-4C49-3AB6-2CE6-00818F92225E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger2_R_translateZ";
	rename -uid "7B17AB52-493C-57EC-2079-B888AB305B87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateX";
	rename -uid "55404314-44CA-955C-4345-8F85BDDEACBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateY";
	rename -uid "C3911C54-449F-2011-CFEC-E083FEE920D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateZ";
	rename -uid "CC7AAF23-45A3-B411-9D30-10ABD35807A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger2_R_scaleX";
	rename -uid "F043BC89-4497-F6C0-285C-B483948D81EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger2_R_scaleY";
	rename -uid "5F6DEAD1-4F7C-D749-FCA2-17830965AE14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger2_R_scaleZ";
	rename -uid "4288499C-415E-05B7-F750-8CB7225E9763";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "PoleLeg_L_translateX";
	rename -uid "3ED954E0-412B-A3AB-638B-988DF5DDF7E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -6.6454679487154618 10 -44.651387490390597
		 19.999996811224491 -63.314355368609959 59.999989158163267 2.7314817052375928;
createNode animCurveTL -n "PoleLeg_L_translateY";
	rename -uid "7FDF1C9B-4D4F-2333-9E4E-2AA85F8B5DA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.4931766933378663 10 23.422944427698102
		 19.999996811224491 4.6195581805508752 59.999989158163267 -7.3380845318584953;
createNode animCurveTL -n "PoleLeg_L_translateZ";
	rename -uid "C2B2A0D0-4CDA-DE71-CED0-5FA40E03BCF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.357106567831167 10 -29.111178170842109
		 19.999996811224491 -37.646126797207032 59.999989158163267 -43.681442795812835;
createNode animCurveTU -n "PoleLeg_L_follow";
	rename -uid "671DFE0E-4383-98E9-C46B-50A35B0EDDC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "PoleLeg_L_lock";
	rename -uid "493AE066-45D5-E297-DFDA-E49F92765529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_R_visibility";
	rename -uid "754A2720-485A-F51D-B0C9-5297D0E1BD7F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "AC205582-4925-286E-93AA-E3B2CB9C3F8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -25.190545256868095 13 -25.538747540614345
		 21 -26.855339097239092 59.999989158163267 -5.5874528279693845;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "AF551B55-40DC-D55B-8443-04A2CA0A4BE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "3486D746-49DF-FED5-1EE8-DD95BC6655FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.99360793167866 6 -4.56734963387626
		 13 -7.0916250412801496 21 -9.8148124716318499 59.999989158163267 30.258073698563017;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "332B4C56-4087-BD11-37DC-1A98DD01F958";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "71C384BB-4BD1-7A20-7C09-ADB22FF58A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.147950117007882 6 -75.420866174617586
		 21 -66.831015801603783 59.999989158163267 5.6976725921924407;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "795E4020-4491-C7E6-4636-CE96752A5E61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "6496A1F7-446D-EF85-DFDC-2DA6312A64DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "D7B6B992-45FE-9358-E4B5-129E651862BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "E34CD1C5-48CD-343D-AE69-D183CA1F4C2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "58460B29-42E6-D963-2A86-01929614F630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "838C111D-4C01-D771-9D37-0D974DA83A2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "68964C52-4A7B-8CE5-4C49-9C80D080F1F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30 6 30;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "7D28DECB-4C9F-1654-AA6C-33B9D68440E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 60 6 60;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "06856263-4215-CA75-A7A3-FC8913183EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "81F11C38-4856-1CAE-605F-0083DE053B6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "01409BA8-4C56-39D3-148D-37BDC10441D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "403DB260-4EF9-D433-F88A-25A0C78A4B89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "D172F9C5-4DAD-0F27-18C6-879988A96D25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 6 1;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "6BEBF471-4408-A4B1-F051-23B53F11F4F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "42C6CA86-4B22-BF59-F80C-DBA94EA9E593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 0;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "300B0647-4C78-78B0-8B73-14AE108B40F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10 6 10;
createNode animCurveTU -n "FKRingFinger2_R_visibility";
	rename -uid "B1931F5F-4D57-F3B4-6CF6-38904BB0C228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger2_R_translateX";
	rename -uid "2C8D70A6-4107-7BB3-349B-8FADEBD8B0F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger2_R_translateY";
	rename -uid "F7B3BAD2-4051-19D6-8404-A2A82B540515";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger2_R_translateZ";
	rename -uid "8A817ECB-42A2-1A89-1DD3-BC9E103B5B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateX";
	rename -uid "DE50EE63-4C16-BB8C-E5B8-3BB71DB0329A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateY";
	rename -uid "7F928BF4-41CA-4EF6-AA34-8C80F49825B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateZ";
	rename -uid "1B51C802-4948-8C17-01D7-7694CA8396D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger2_R_scaleX";
	rename -uid "4BA4F741-4937-2F3A-8E65-0CB68B55239B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger2_R_scaleY";
	rename -uid "857CAB15-4104-C489-8AD2-3AB2B9DC5EE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger2_R_scaleZ";
	rename -uid "92D2A367-4FBC-2FCC-466D-4BB3A2F46A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_L_visibility";
	rename -uid "387A5831-49D0-3EEF-486F-1CAB7892C01B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger2_L_translateX";
	rename -uid "E8A300EA-41D0-F21B-83F7-EF84944AD28D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger2_L_translateY";
	rename -uid "B853FB4F-46B8-A654-A413-4891DF5222F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger2_L_translateZ";
	rename -uid "EB473E91-49B1-352B-2CAC-8D8D20F5742C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateX";
	rename -uid "DA6248FE-413C-3140-63FC-21BCB2B184D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateY";
	rename -uid "72149C1A-4B9A-FDA1-2BB8-DE91B87F4408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateZ";
	rename -uid "62BC3CBF-46B0-5A40-9058-F49D0C7FAE8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleX";
	rename -uid "373ABFD4-4EEB-E7B6-B2E9-65BC6D037CFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleY";
	rename -uid "74D2E621-496F-E835-1689-F4A51BBC1B3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleZ";
	rename -uid "1D446A25-4B50-1AD5-F44E-4298DD04332A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_L_visibility";
	rename -uid "89D2E16D-4962-23A6-0A4E-CDB7B95C388C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger1_L_translateX";
	rename -uid "DB12187A-46B2-75BF-822C-5BA031111585";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger1_L_translateY";
	rename -uid "5BECA9E9-41DB-22A1-416C-44B5C243073D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger1_L_translateZ";
	rename -uid "18F03BB1-41FD-9AAC-C24B-919525E2FE66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateX";
	rename -uid "2154C981-4435-5256-77EA-C39A160659DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateY";
	rename -uid "7BA6E776-4127-66BA-DF71-F5B50E54E8DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateZ";
	rename -uid "A91CADDF-4A56-D456-5410-B682F019BF4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleX";
	rename -uid "600C7131-4092-9A7C-B162-8D92F320BC3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleY";
	rename -uid "6F3C7F3A-453A-848E-873D-629A2CABD69D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleZ";
	rename -uid "3A9F1BB1-433B-D607-EBE8-38B9AC147EA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger2_L_visibility";
	rename -uid "E75BA7E5-43C4-0CEB-CB6F-37838C167FC5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger2_L_translateX";
	rename -uid "D3644271-4E80-805B-A304-95A1BDC0635C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger2_L_translateY";
	rename -uid "4055D3E2-4B70-4E14-AD1F-708F07EB0DC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger2_L_translateZ";
	rename -uid "830F0E24-4E94-AE57-ED01-A4BAD637D256";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateX";
	rename -uid "20F6E51A-4ADC-A0E9-9F8E-A59432474C1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateY";
	rename -uid "54565047-4442-BE0D-D104-FD8D35F3D832";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateZ";
	rename -uid "09CD5CFA-4594-A828-0988-ECB66DC8A169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger2_L_scaleX";
	rename -uid "D994D6F8-4F53-4914-A49B-229329B0A8EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger2_L_scaleY";
	rename -uid "E8D6F37E-4AB9-01C1-64D8-A9A1AF57A366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger2_L_scaleZ";
	rename -uid "257350F9-4C1F-7A25-8927-34A5C84BC66D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_L_visibility";
	rename -uid "D12B2E8F-4F90-29EB-0E59-62AFDB83B918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger3_L_translateX";
	rename -uid "D01C7E02-4EEB-CA01-FFC5-D6A1196C2F82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger3_L_translateY";
	rename -uid "E94D0B5A-49A2-F857-A632-62AB88725818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger3_L_translateZ";
	rename -uid "F3690E29-4A3D-9BFD-3114-AAAA58456C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateX";
	rename -uid "4577109F-4589-D454-2A2E-ABBC752CE7CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateY";
	rename -uid "7E5B6B5F-48AA-3270-467F-7BA0D0F4624D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateZ";
	rename -uid "7357300C-4DA5-ED94-1EE3-AA9CDFCD56B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger3_L_scaleX";
	rename -uid "11AAF9EA-48EB-43F8-FEDA-89A1C64C72F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_L_scaleY";
	rename -uid "46810243-474F-A1F7-2F01-9687A9B9A69F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger3_L_scaleZ";
	rename -uid "EA0E0A58-42C9-63E5-CD8A-19926BDCED38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "52A39F74-4173-EDD7-1780-F5BAE5F3D25B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "CA9030EE-4F7C-1E10-CAB8-D493AE5B4B1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "511DA69C-4E2C-6A6F-3266-228BAA5EDC83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "30FBF09F-4FC6-3586-6233-4A84CBE872DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "CE25EC2D-40EA-FC67-7A85-5BA6911FD425";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.789643084509864 10 -10.403043716143232
		 20 -8.8906091356114043;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "51548D29-448A-39D9-4339-8783C6026EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 7.1752031616884686 20 -9.6572498897662609
		 39.999992346938775 -21.331900714411258 59.999989158163267 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "743817E9-4C60-57AF-10A5-F3867355638E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 10.611832174215195 20 25.125554826911227
		 59.999989158163267 22.862858730978459;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "13F3D89C-408D-B806-CE11-44BFE7BCE1C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "D68BCC47-42C6-55C3-8F06-C28520355E1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "EEBE95BF-4206-7136-8B3A-85B6BD837F21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKSpine1_M_w0";
	rename -uid "07E12981-4102-C675-6127-48AF85ECA138";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3333333330000001;
createNode animCurveTU -n "FKSpine1_M_w1";
	rename -uid "7109FD80-43EB-F819-DFB8-77AB4F02B7D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6666666670000003;
createNode animCurveTU -n "FKSpine1_M_w2";
	rename -uid "C945046A-4A36-AA97-ECBC-73B272B7ED29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKMiddleFinger3_L_visibility";
	rename -uid "70F4D019-4324-1B71-E045-439308F7376B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger3_L_translateX";
	rename -uid "2AA3163A-4D51-D6E4-F139-E1B4D525CB3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger3_L_translateY";
	rename -uid "4BFEE129-42A9-0BCF-E2D6-9C892E8FDC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger3_L_translateZ";
	rename -uid "48143C56-440D-03F0-47C3-63B465080607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateX";
	rename -uid "876B6385-41BC-3418-5524-74B22E3A03FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateY";
	rename -uid "1E3320F5-44A4-7A78-A11C-01A5CAA8C8EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateZ";
	rename -uid "14D37DDD-4F5E-66E8-DA40-4FA2AF8BDCA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleX";
	rename -uid "288FBCE0-4464-579D-4AF9-C89485463259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleY";
	rename -uid "A86B9784-4F60-B732-D139-4A8845B8D1CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleZ";
	rename -uid "3F8F9CFA-4790-F933-CD98-3FAD284A2E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKJaw_M_visibility";
	rename -uid "B8301A21-4E38-B89E-3125-4D9FAC98C438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKJaw_M_translateX";
	rename -uid "35BAD2D3-4888-D280-8CF5-92A539855201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKJaw_M_translateY";
	rename -uid "C56D97F7-452E-478B-95B8-5781CF9DAC52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKJaw_M_translateZ";
	rename -uid "458A7542-4159-9C11-5AA5-108EC9300A7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKJaw_M_rotateX";
	rename -uid "6BF41EA9-4983-53E2-7500-2C8284F8046A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKJaw_M_rotateY";
	rename -uid "4E6F95A4-417E-96D4-4B91-3094370B295F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKJaw_M_rotateZ";
	rename -uid "DBB98A45-4BCB-7C97-1908-82BA040364C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKJaw_M_scaleX";
	rename -uid "88390793-46FB-837E-619D-58A63745B86F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKJaw_M_scaleY";
	rename -uid "C4DBB313-40D9-8834-FF2C-7388DBFD22EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKJaw_M_scaleZ";
	rename -uid "1E8EE7F4-4ABF-A6D3-C385-47A25617C6CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "HipSwinger_M_visibility";
	rename -uid "0E0B4CF5-4E18-EC4B-8053-818E5604F641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "HipSwinger_M_rotateX";
	rename -uid "B378571C-49C1-F58C-EA41-F592B17BE124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "HipSwinger_M_rotateY";
	rename -uid "6E1D5087-4A1C-ACF2-9CBF-A5ABE92D32D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "HipSwinger_M_rotateZ";
	rename -uid "764675E3-48CD-BEF7-6CAF-A3AEC7E75D6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKScapula_L_visibility";
	rename -uid "101402D2-4B4F-A218-BBBC-878DB5424A41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKScapula_L_translateX";
	rename -uid "761C2A3F-4B29-C54A-2D31-53A74F701EEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKScapula_L_translateY";
	rename -uid "25BB06D8-4AFC-DEB5-8E5F-7FB9E9DD019E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKScapula_L_translateZ";
	rename -uid "D19A7082-41BC-3F0D-3328-9384B5587972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_L_rotateX";
	rename -uid "FDF92186-4271-5C21-BCBE-E3BBE9CC7735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_L_rotateY";
	rename -uid "D7082E30-498F-C4E5-654E-25B9E38C5942";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKScapula_L_rotateZ";
	rename -uid "F551C7F3-42B9-7900-7D90-5A8214790817";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKScapula_L_scaleX";
	rename -uid "0D4B49F1-4F0D-68B4-90B6-0A9CB72418B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKScapula_L_scaleY";
	rename -uid "67E4CD77-4840-C061-D233-FA92407A8397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKScapula_L_scaleZ";
	rename -uid "02DF54AE-4D5D-1AE8-8C0D-CB9D45B2C022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_visibility";
	rename -uid "CB7303EB-4905-1558-9F80-DE9450DCD7FE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "IKArm_R_translateX";
	rename -uid "F9E7E5FF-429C-88AF-C0B8-809509306F51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 37.613784126658729 10 37.635299307340667
		 15 37.813423129400562 20 33.697820675051268 24 33.710099991058023 32 33.591205281092542
		 39.999992346938775 19.512023014840914 48 36.684772571010136 53 49.502985213648216
		 59.999989158163267 55.612461307028653;
	setAttr -s 10 ".kit[5:9]"  3 18 18 18 18;
	setAttr -s 10 ".kot[5:9]"  3 18 18 18 18;
createNode animCurveTL -n "IKArm_R_translateY";
	rename -uid "674893EC-4789-8D81-9B35-878285B9CBC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -46.424861679506762 10 -106.79234834334457
		 15 -130.16056779072511 19.999996811224491 -136.55577483626922 23.999995323129252 -136.86350837203582
		 24 -136.67972492854975 32 -135.95997715512749 40 -118.53773965973087 48 -93.600434877478676
		 53 -99.637266359752218 60 -101.55196407813997 64 -102.4535592889887;
createNode animCurveTL -n "IKArm_R_translateZ";
	rename -uid "9AD6144A-4E20-78B9-EAA0-A3BBE563B50C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.9292514052041803 10 -43.482329290682365
		 15 -56.053807858955437 20 -60.494306524828019 24 -60.481554157836655 32 -60.857888293129953
		 40 -39.79695254591396 48 -13.487309268164534 53 0.17875704808700021 59.999989158163267 2.2670401559973072;
createNode animCurveTA -n "IKArm_R_rotateX";
	rename -uid "875426E2-4C63-F38E-9CA4-EEAFDEEF8D3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 -6.7056947986220532 15 -1.3517651707108007
		 19.999996811224491 -3.2221344985170552 32 -5.8845771813715837 40 18.178283160542843
		 48 95.108542881689374 50 204.11327561845744 59.999989158163267 170.64477381258382
		 64 181.77596380967242;
createNode animCurveTA -n "IKArm_R_rotateY";
	rename -uid "B1CAD889-496B-7FC4-2C41-FEB6E2028466";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 41.524869142298058 10 -18.265694189503048
		 15 3.2088967134127042 19.999996811224491 -4.4920981375659705 32 -2.4997644472734306
		 40 50.327011231325422 48 65.879912018005655 50 67.389606724410996 59.999989158163267 30.8524113858535
		 64 32.061385587497888;
createNode animCurveTA -n "IKArm_R_rotateZ";
	rename -uid "6B09AC12-4812-7525-62E1-A8BC612295DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 95.216329061057863 10 77.510349411165024
		 15 40.314699402784612 19.999996811224491 10.735659585206626 32 12.925080115472568
		 39.999992346938775 67.454636702733723 48 103.45907279030045 50 207.98524248588384
		 59.999989158163267 134.57446666670492 64 155.72701093087221;
createNode animCurveTU -n "IKArm_R_scaleX";
	rename -uid "D728229B-4B6A-7906-3791-61BA04D933F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_scaleY";
	rename -uid "3EAF4723-49C4-67E1-1147-CD977F19A625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_scaleZ";
	rename -uid "CFCF6258-4D63-E967-A89D-4EBCD99AFFDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_follow";
	rename -uid "7D1D37BB-4213-916A-CBBC-D5AF295E01C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_R_stretchy";
	rename -uid "8C348263-4934-BBCD-973D-53A608E854B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_R_antiPop";
	rename -uid "B92A2DFB-4625-2826-020F-F2B64A04FEAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 39.999992134353739 0;
createNode animCurveTU -n "IKArm_R_Lenght1";
	rename -uid "BC00AC03-45EC-8EA7-4345-A6B5277A62B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_Lenght2";
	rename -uid "5E9B1C76-48ED-EDB3-F7AA-E3BB5B98A343";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKArm_R_Fatness1";
	rename -uid "76DD4B94-436C-5C34-3C9D-9D980832DD50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_R_Fatness2";
	rename -uid "BF6CB888-47EC-0205-77F7-D28B9C4E8156";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKArm_R_volume";
	rename -uid "0D0740E2-4A89-2D9A-6203-A9A8E97A4261";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKRingFinger1_L_visibility";
	rename -uid "6463061D-44CD-CBDB-12BD-7A8FDCBCB916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRingFinger1_L_translateX";
	rename -uid "1E2BA7F0-4F74-4539-5C0C-5EA2912FFB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger1_L_translateY";
	rename -uid "34E34E94-4969-46C1-6A0E-D38ED5D3B813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRingFinger1_L_translateZ";
	rename -uid "4AF3A91C-4791-09A0-150D-299A96D4D5FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateX";
	rename -uid "B3EE20EA-47F0-FB5B-92B2-FF9CD612539B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateY";
	rename -uid "F46F7110-418D-16E8-C1FE-429FC75D2B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateZ";
	rename -uid "89896B3A-4C3F-900F-DFF9-A6B2C95AC46B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKRingFinger1_L_scaleX";
	rename -uid "56F782B4-4AC2-A48F-22CB-9498FFDF241B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger1_L_scaleY";
	rename -uid "A0DA4787-4407-492C-0966-09B408A1DD5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRingFinger1_L_scaleZ";
	rename -uid "A29D14F9-4A08-F0C2-87F5-3B9F8A2993DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_L_visibility";
	rename -uid "03E8D29C-41D9-2648-7FA6-8182E02D011B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollToes_L_translateX";
	rename -uid "E58B98E3-4B70-3BF7-56E4-279C8B93B2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToes_L_translateY";
	rename -uid "23B4AFB1-43DB-7FA4-D2E7-799C0B14A657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToes_L_translateZ";
	rename -uid "52F58010-48E5-600C-DD2D-62B328E3CD8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_L_rotateX";
	rename -uid "9809B4A8-429D-116A-A15A-8CB570AC2B52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_L_rotateY";
	rename -uid "C653D9AF-418F-2215-38A4-4A96531317DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToes_L_rotateZ";
	rename -uid "1D821DC3-40AF-DEB8-C9F3-2BB5F8B6A0B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollToes_L_scaleX";
	rename -uid "149B50AE-4339-9A93-D42C-66A74E35D5A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_L_scaleY";
	rename -uid "AE47FA5D-4191-D050-098D-6B9959D2B08E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToes_L_scaleZ";
	rename -uid "2E86C88C-4DFE-2AA7-E48E-8D853C7F06F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger1_L_visibility";
	rename -uid "B0269556-4C32-6369-6C97-54937BCE54DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKIndexFinger1_L_translateX";
	rename -uid "8A7EAACB-4CFA-1113-2907-FCB7843FFBEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger1_L_translateY";
	rename -uid "69540114-4C14-129E-54CF-7EA2C15058AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKIndexFinger1_L_translateZ";
	rename -uid "84F897B0-4653-60D8-1C97-5AB668509D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateX";
	rename -uid "4266C764-4D53-57C8-C21C-78B1DAEFAD16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateY";
	rename -uid "70008DD9-4617-163D-7903-26BE20CBAEEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateZ";
	rename -uid "4F2B7267-4F9F-4138-8438-7E99F8DB11D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKIndexFinger1_L_scaleX";
	rename -uid "0C448125-4502-678D-927A-25BCC4895D36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger1_L_scaleY";
	rename -uid "89396D09-4B1D-C29C-364F-23B70580C21C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKIndexFinger1_L_scaleZ";
	rename -uid "3231B0D2-423B-7464-270C-EF8ED7A192F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_L_visibility";
	rename -uid "16D5B75F-409B-76D0-EBBD-EE957DEE3D2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger1_L_translateX";
	rename -uid "483F826F-4609-0FFA-FC0C-1B9FAB3EDDC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger1_L_translateY";
	rename -uid "95779E1D-412C-CFA9-786A-0D9A3E45310D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger1_L_translateZ";
	rename -uid "A9F006BE-4541-3D8D-5CE1-AD9AA8387B38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateX";
	rename -uid "BBFAA38A-4D1B-8279-69F2-9C80B076AC6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateY";
	rename -uid "82C89FBE-4110-A892-EF7C-18A2E280C08D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateZ";
	rename -uid "1E934574-4171-FEDC-8336-C8A75E748384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger1_L_scaleX";
	rename -uid "93E6E2CE-4A38-5B95-B008-F799D64E564A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_L_scaleY";
	rename -uid "7BD7029E-40A5-31C5-0BC0-969679F9AC90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger1_L_scaleZ";
	rename -uid "FD8EA069-4F94-EF25-2CA5-88848A960C4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_R_visibility";
	rename -uid "189AC80E-4EA8-35F4-DFC7-A49FC202E0DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKPinkyFinger2_R_translateX";
	rename -uid "FE614FBE-4BCB-3409-3E1F-5D98F2027DA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger2_R_translateY";
	rename -uid "063F5AA2-442E-4828-766B-72AE08293CA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKPinkyFinger2_R_translateZ";
	rename -uid "4EEFC48B-4860-09BA-3BF4-909D013A3075";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateX";
	rename -uid "428C1EF7-4473-A20D-3B19-DCAB7EB3C228";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateY";
	rename -uid "D9070EC4-4568-1068-0BD6-82AD762281C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateZ";
	rename -uid "BB2A7410-4C64-04B8-C26C-E1B9381BD7BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleX";
	rename -uid "F6BABC50-43DE-8229-3B73-C5A10AF11199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleY";
	rename -uid "3319A509-46EF-16D1-0831-6EB2940D60DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleZ";
	rename -uid "B5A2DC73-4BEE-96C0-3631-9EACC161E0A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger3_L_visibility";
	rename -uid "F99F6609-4396-FB0E-1C0B-BDB909AF032F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKThumbFinger3_L_translateX";
	rename -uid "768FD512-4747-E0E0-A164-469DBD8B2D10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger3_L_translateY";
	rename -uid "C40B202E-4F92-8DF8-9275-D09D7A245AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKThumbFinger3_L_translateZ";
	rename -uid "CF4271CA-4B8B-E7AE-8B52-FD9583E5AAD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateX";
	rename -uid "975A8B2F-4FFF-77C0-5550-B9B8B2F363D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateY";
	rename -uid "A3AA521D-4468-D362-65EF-A189F40B8F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateZ";
	rename -uid "5F4F62D6-45D3-C015-FB9D-068F5B548F24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKThumbFinger3_L_scaleX";
	rename -uid "A247F39C-4472-4952-D6F3-B0A296329C1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger3_L_scaleY";
	rename -uid "76DC3B44-4EC6-D6C6-B7DF-A9A8A83B727B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKThumbFinger3_L_scaleZ";
	rename -uid "C1EC7B67-44F2-3857-EE6E-B49AB144E9F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollHeel_R_visibility";
	rename -uid "5321096B-40D9-E9FB-FCEB-EBBD2EE1949D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollHeel_R_translateX";
	rename -uid "347A9F65-41AE-B62F-F695-CD9D1CF9E7F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollHeel_R_translateY";
	rename -uid "AE4BEE25-4FA2-CA1F-8290-B3A16FDAD94A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollHeel_R_translateZ";
	rename -uid "1B27378F-406B-C770-E50B-819DA9A147D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_R_rotateX";
	rename -uid "87504856-49DB-F2EB-F70F-5F9E867E6725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_R_rotateY";
	rename -uid "58339B11-4322-AC13-FA54-5E8774DACE37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollHeel_R_rotateZ";
	rename -uid "10D2CEB8-49F9-11CB-E134-659543101EA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollHeel_R_scaleX";
	rename -uid "C1108CAC-4C98-0FE4-C0ED-158A5DE0D7A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollHeel_R_scaleY";
	rename -uid "0E6AD71A-4C30-AA78-9043-5C944AD5F998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollHeel_R_scaleZ";
	rename -uid "F7D382DE-4E17-7CA5-9B1C-9790C4443D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRoot_M_visibility";
	rename -uid "2971BE9D-4E52-C1A7-E2E3-0FBAEE190CC4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "F3D02830-4BAB-ED3B-3A67-79B946A7F818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "D7E82348-4644-E09A-1654-B794ABA01380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "7BB383BD-4BB6-F30E-82DB-15B1DAEB47ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "9A11AA9B-4921-F36A-A4FE-FD8E253C99FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -7.0694951379531865 20 -14.519632953930403;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "55E16D94-47F9-70E7-0D37-00A8BC774C4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 15.748550499432199 20 9.3701385583733181;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "99FD06EB-4E79-98E8-9D93-C0AA694ECA14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.4584599587149727 10 12.468684960684133
		 20 15.490272844482451;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "C869F4EE-4422-481F-D379-3CAFE1A6E037";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "9B65CA38-478B-766F-FCE7-6B98D21DF572";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "6880577A-4B0B-2FF2-5640-4CA05BDE139A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKRoot_M_w0";
	rename -uid "BDE726DD-407D-2075-0BC1-A9AC520E3360";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3333333330000001;
createNode animCurveTU -n "FKRoot_M_w1";
	rename -uid "F2526062-4EB7-70BB-D832-03BBF452D7D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6666666670000003;
createNode animCurveTU -n "FKRoot_M_w2";
	rename -uid "7B0D8A03-46FB-7ED3-3E2E-5C8B6FDF1BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "FKMiddleFinger1_R_visibility";
	rename -uid "BB802AEE-496E-352E-85B3-B1B71A23A2D8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FKMiddleFinger1_R_translateX";
	rename -uid "D2141ECE-4C15-19F6-D9B7-7BA3D46AB552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger1_R_translateY";
	rename -uid "CF3C36BF-41F7-EDF6-1192-61BC8BD9FAD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKMiddleFinger1_R_translateZ";
	rename -uid "307A3BB4-4DA6-F9A4-15DF-5FAB10FA62F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateX";
	rename -uid "8589F97B-44B0-0501-D7B2-2BBC0EF968CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateY";
	rename -uid "200858F3-430B-6F2C-2343-8B95C9A99FCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateZ";
	rename -uid "01A36F90-413C-8DE0-0781-11849B2FC236";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleX";
	rename -uid "E472E565-4CC9-0A74-9E66-A6BF4A431EEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleY";
	rename -uid "C275F6DC-4FA4-9F2C-6BE0-25ABA0BFB8C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleZ";
	rename -uid "7CC1F986-46DF-CE51-96C3-1E90E2414615";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToesEnd_L_visibility";
	rename -uid "AF1A1190-4DAF-9FF0-53B4-EFA77902314A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "RollToesEnd_L_translateX";
	rename -uid "2F8EAD5E-4ECB-5FB0-6B95-F797D16982ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToesEnd_L_translateY";
	rename -uid "AFE964EF-4DEE-C387-A069-3B945ACD7389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RollToesEnd_L_translateZ";
	rename -uid "E2A4D15C-4F65-CC05-1B1D-88BC8632B3A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_L_rotateX";
	rename -uid "B9490340-47AC-FEAC-49B7-24BE6D206266";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_L_rotateY";
	rename -uid "778617B3-450A-DFD3-4093-3FBBA263B831";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RollToesEnd_L_rotateZ";
	rename -uid "46E6015A-41F7-E607-D897-C6A65E8242A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RollToesEnd_L_scaleX";
	rename -uid "03ABA6CC-4B33-238D-552C-1E84FD96FB4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToesEnd_L_scaleY";
	rename -uid "01E025E8-44CA-3DEB-146C-3986495E8BE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RollToesEnd_L_scaleZ";
	rename -uid "9B6C1108-4EF6-A92A-13D2-D89CF602A8DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "PoleLeg_R_translateX";
	rename -uid "27062F41-4A4A-71A8-3136-4AAFBB0AC0E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 9.6781879090563336 10 12.056793691139163
		 19 -5.8550878731688352 20 -7.7117747688490486 59.999989158163267 -7.9285923665712463;
createNode animCurveTL -n "PoleLeg_R_translateY";
	rename -uid "F3956858-4774-1774-8C4F-ECAF1581A5EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.149712512338828 10 5.8423567455202985
		 20 -18.8489084226938 59.999989158163267 -5.3568978307827528;
createNode animCurveTL -n "PoleLeg_R_translateZ";
	rename -uid "BB39F2D7-48AA-C8BF-BAE5-23A0E9D2CC79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -21.565547629067222 10 -37.856229857828836
		 20 -58.472642325799654 59.999989158163267 -55.926925278061063;
createNode animCurveTU -n "PoleLeg_R_follow";
	rename -uid "C95409CE-4623-F326-7F1B-DE98559F878F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "PoleLeg_R_lock";
	rename -uid "902A8CE0-42B4-0311-E2CF-8F83CEA1CD9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode objectSet -n "AnimExport";
	rename -uid "512F2520-4D1C-C9BE-71B9-61A3E75073F0";
	setAttr ".ihi" 0;
	setAttr -s 143 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 70 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 71 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 254 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 244 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".mcfr" 30;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "modelRN.phl[1]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[2]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[3]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[4]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[5]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[6]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[7]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[8]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[9]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[10]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[11]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[12]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[13]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[14]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[15]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[16]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[17]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[18]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[19]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[20]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[21]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[22]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[23]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[24]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[25]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[26]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[27]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[28]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[29]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[30]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[31]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[32]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[33]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[34]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[35]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[36]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[37]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[38]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[39]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[40]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[41]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[42]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[43]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[44]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[45]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[46]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[47]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[48]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[49]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[50]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[51]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[52]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[53]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[54]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[55]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[56]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[57]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[58]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[59]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[60]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[61]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[62]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[63]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[64]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[65]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[66]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[67]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[68]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[69]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[70]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[71]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[72]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[73]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[74]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[75]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[76]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[77]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[78]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[79]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[80]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[81]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[82]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[83]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[84]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[85]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[86]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[87]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[88]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[89]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[90]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[91]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[92]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[93]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[94]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[95]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[96]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[97]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[98]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[99]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[100]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[101]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[102]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[103]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[104]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[105]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[106]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[107]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[108]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[109]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[110]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[111]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[112]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[113]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[114]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[115]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[116]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[117]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[118]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[119]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[120]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[121]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[122]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[123]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[124]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[125]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[126]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[127]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[128]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[129]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[130]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[131]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[132]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[133]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[134]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[135]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[136]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[137]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[138]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[139]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[140]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[141]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[142]" "AnimExport.dsm" -na;
connectAttr "modelRN.phl[143]" "AnimExport.dsm" -na;
connectAttr "Main_translateX.o" "modelRN.phl[144]";
connectAttr "Main_translateY.o" "modelRN.phl[145]";
connectAttr "Main_translateZ.o" "modelRN.phl[146]";
connectAttr "Main_rotateX.o" "modelRN.phl[147]";
connectAttr "Main_rotateY.o" "modelRN.phl[148]";
connectAttr "Main_rotateZ.o" "modelRN.phl[149]";
connectAttr "Main_scaleX.o" "modelRN.phl[150]";
connectAttr "Main_scaleY.o" "modelRN.phl[151]";
connectAttr "Main_scaleZ.o" "modelRN.phl[152]";
connectAttr "Main_visibility.o" "modelRN.phl[153]";
connectAttr "FKRoot_M_translateX.o" "modelRN.phl[154]";
connectAttr "FKRoot_M_translateY.o" "modelRN.phl[155]";
connectAttr "FKRoot_M_translateZ.o" "modelRN.phl[156]";
connectAttr "FKRoot_M_scaleX.o" "modelRN.phl[157]";
connectAttr "FKRoot_M_scaleY.o" "modelRN.phl[158]";
connectAttr "FKRoot_M_scaleZ.o" "modelRN.phl[159]";
connectAttr "FKRoot_M_rotateZ.o" "modelRN.phl[160]";
connectAttr "FKRoot_M_rotateX.o" "modelRN.phl[161]";
connectAttr "FKRoot_M_rotateY.o" "modelRN.phl[162]";
connectAttr "FKRoot_M_w0.o" "modelRN.phl[163]";
connectAttr "FKRoot_M_w1.o" "modelRN.phl[164]";
connectAttr "FKRoot_M_w2.o" "modelRN.phl[165]";
connectAttr "FKRoot_M_visibility.o" "modelRN.phl[166]";
connectAttr "HipSwinger_M_rotateX.o" "modelRN.phl[167]";
connectAttr "HipSwinger_M_rotateY.o" "modelRN.phl[168]";
connectAttr "HipSwinger_M_rotateZ.o" "modelRN.phl[169]";
connectAttr "HipSwinger_M_visibility.o" "modelRN.phl[170]";
connectAttr "FKSpine1_M_translateX.o" "modelRN.phl[171]";
connectAttr "FKSpine1_M_translateY.o" "modelRN.phl[172]";
connectAttr "FKSpine1_M_translateZ.o" "modelRN.phl[173]";
connectAttr "FKSpine1_M_scaleX.o" "modelRN.phl[174]";
connectAttr "FKSpine1_M_scaleY.o" "modelRN.phl[175]";
connectAttr "FKSpine1_M_scaleZ.o" "modelRN.phl[176]";
connectAttr "FKSpine1_M_rotateX.o" "modelRN.phl[177]";
connectAttr "FKSpine1_M_rotateY.o" "modelRN.phl[178]";
connectAttr "FKSpine1_M_rotateZ.o" "modelRN.phl[179]";
connectAttr "FKSpine1_M_w0.o" "modelRN.phl[180]";
connectAttr "FKSpine1_M_w1.o" "modelRN.phl[181]";
connectAttr "FKSpine1_M_w2.o" "modelRN.phl[182]";
connectAttr "FKSpine1_M_visibility.o" "modelRN.phl[183]";
connectAttr "FKChest_M_scaleX.o" "modelRN.phl[184]";
connectAttr "FKChest_M_scaleY.o" "modelRN.phl[185]";
connectAttr "FKChest_M_scaleZ.o" "modelRN.phl[186]";
connectAttr "FKChest_M_rotateX.o" "modelRN.phl[187]";
connectAttr "FKChest_M_rotateY.o" "modelRN.phl[188]";
connectAttr "FKChest_M_rotateZ.o" "modelRN.phl[189]";
connectAttr "FKChest_M_translateX.o" "modelRN.phl[190]";
connectAttr "FKChest_M_translateY.o" "modelRN.phl[191]";
connectAttr "FKChest_M_translateZ.o" "modelRN.phl[192]";
connectAttr "FKChest_M_visibility.o" "modelRN.phl[193]";
connectAttr "FKNeck_M_translateX.o" "modelRN.phl[194]";
connectAttr "FKNeck_M_translateY.o" "modelRN.phl[195]";
connectAttr "FKNeck_M_translateZ.o" "modelRN.phl[196]";
connectAttr "FKNeck_M_scaleX.o" "modelRN.phl[197]";
connectAttr "FKNeck_M_scaleY.o" "modelRN.phl[198]";
connectAttr "FKNeck_M_scaleZ.o" "modelRN.phl[199]";
connectAttr "FKNeck_M_rotateX.o" "modelRN.phl[200]";
connectAttr "FKNeck_M_rotateY.o" "modelRN.phl[201]";
connectAttr "FKNeck_M_rotateZ.o" "modelRN.phl[202]";
connectAttr "FKNeck_M_w0.o" "modelRN.phl[203]";
connectAttr "FKNeck_M_w1.o" "modelRN.phl[204]";
connectAttr "FKNeck_M_w2.o" "modelRN.phl[205]";
connectAttr "FKNeck_M_visibility.o" "modelRN.phl[206]";
connectAttr "FKHead_M_scaleX.o" "modelRN.phl[207]";
connectAttr "FKHead_M_scaleY.o" "modelRN.phl[208]";
connectAttr "FKHead_M_scaleZ.o" "modelRN.phl[209]";
connectAttr "FKHead_M_Global.o" "modelRN.phl[210]";
connectAttr "FKHead_M_rotateX.o" "modelRN.phl[211]";
connectAttr "FKHead_M_rotateY.o" "modelRN.phl[212]";
connectAttr "FKHead_M_rotateZ.o" "modelRN.phl[213]";
connectAttr "FKHead_M_translateX.o" "modelRN.phl[214]";
connectAttr "FKHead_M_translateY.o" "modelRN.phl[215]";
connectAttr "FKHead_M_translateZ.o" "modelRN.phl[216]";
connectAttr "FKHead_M_visibility.o" "modelRN.phl[217]";
connectAttr "FKJaw_M_scaleX.o" "modelRN.phl[218]";
connectAttr "FKJaw_M_scaleY.o" "modelRN.phl[219]";
connectAttr "FKJaw_M_scaleZ.o" "modelRN.phl[220]";
connectAttr "FKJaw_M_visibility.o" "modelRN.phl[221]";
connectAttr "FKJaw_M_translateX.o" "modelRN.phl[222]";
connectAttr "FKJaw_M_translateY.o" "modelRN.phl[223]";
connectAttr "FKJaw_M_translateZ.o" "modelRN.phl[224]";
connectAttr "FKJaw_M_rotateX.o" "modelRN.phl[225]";
connectAttr "FKJaw_M_rotateY.o" "modelRN.phl[226]";
connectAttr "FKJaw_M_rotateZ.o" "modelRN.phl[227]";
connectAttr "FKEye_R_scaleX.o" "modelRN.phl[228]";
connectAttr "FKEye_R_scaleY.o" "modelRN.phl[229]";
connectAttr "FKEye_R_scaleZ.o" "modelRN.phl[230]";
connectAttr "FKEye_R_visibility.o" "modelRN.phl[231]";
connectAttr "FKEye_R_translateX.o" "modelRN.phl[232]";
connectAttr "FKEye_R_translateY.o" "modelRN.phl[233]";
connectAttr "FKEye_R_translateZ.o" "modelRN.phl[234]";
connectAttr "FKEye_R_rotateX.o" "modelRN.phl[235]";
connectAttr "FKEye_R_rotateY.o" "modelRN.phl[236]";
connectAttr "FKEye_R_rotateZ.o" "modelRN.phl[237]";
connectAttr "FKEye_L_scaleX.o" "modelRN.phl[238]";
connectAttr "FKEye_L_scaleY.o" "modelRN.phl[239]";
connectAttr "FKEye_L_scaleZ.o" "modelRN.phl[240]";
connectAttr "FKEye_L_visibility.o" "modelRN.phl[241]";
connectAttr "FKEye_L_translateX.o" "modelRN.phl[242]";
connectAttr "FKEye_L_translateY.o" "modelRN.phl[243]";
connectAttr "FKEye_L_translateZ.o" "modelRN.phl[244]";
connectAttr "FKEye_L_rotateX.o" "modelRN.phl[245]";
connectAttr "FKEye_L_rotateY.o" "modelRN.phl[246]";
connectAttr "FKEye_L_rotateZ.o" "modelRN.phl[247]";
connectAttr "FKScapula_R_scaleX.o" "modelRN.phl[248]";
connectAttr "FKScapula_R_scaleY.o" "modelRN.phl[249]";
connectAttr "FKScapula_R_scaleZ.o" "modelRN.phl[250]";
connectAttr "FKScapula_R_rotateX.o" "modelRN.phl[251]";
connectAttr "FKScapula_R_rotateZ.o" "modelRN.phl[252]";
connectAttr "FKScapula_R_rotateY.o" "modelRN.phl[253]";
connectAttr "FKScapula_R_visibility.o" "modelRN.phl[254]";
connectAttr "FKScapula_R_translateX.o" "modelRN.phl[255]";
connectAttr "FKScapula_R_translateY.o" "modelRN.phl[256]";
connectAttr "FKScapula_R_translateZ.o" "modelRN.phl[257]";
connectAttr "FKScapula_L_scaleX.o" "modelRN.phl[258]";
connectAttr "FKScapula_L_scaleY.o" "modelRN.phl[259]";
connectAttr "FKScapula_L_scaleZ.o" "modelRN.phl[260]";
connectAttr "FKScapula_L_rotateX.o" "modelRN.phl[261]";
connectAttr "FKScapula_L_rotateY.o" "modelRN.phl[262]";
connectAttr "FKScapula_L_rotateZ.o" "modelRN.phl[263]";
connectAttr "FKScapula_L_visibility.o" "modelRN.phl[264]";
connectAttr "FKScapula_L_translateX.o" "modelRN.phl[265]";
connectAttr "FKScapula_L_translateY.o" "modelRN.phl[266]";
connectAttr "FKScapula_L_translateZ.o" "modelRN.phl[267]";
connectAttr "FKMiddleFinger1_R_scaleX.o" "modelRN.phl[268]";
connectAttr "FKMiddleFinger1_R_scaleY.o" "modelRN.phl[269]";
connectAttr "FKMiddleFinger1_R_scaleZ.o" "modelRN.phl[270]";
connectAttr "FKMiddleFinger1_R_visibility.o" "modelRN.phl[271]";
connectAttr "FKMiddleFinger1_R_translateX.o" "modelRN.phl[272]";
connectAttr "FKMiddleFinger1_R_translateY.o" "modelRN.phl[273]";
connectAttr "FKMiddleFinger1_R_translateZ.o" "modelRN.phl[274]";
connectAttr "FKMiddleFinger1_R_rotateX.o" "modelRN.phl[275]";
connectAttr "FKMiddleFinger1_R_rotateY.o" "modelRN.phl[276]";
connectAttr "FKMiddleFinger1_R_rotateZ.o" "modelRN.phl[277]";
connectAttr "FKMiddleFinger2_R_scaleX.o" "modelRN.phl[278]";
connectAttr "FKMiddleFinger2_R_scaleY.o" "modelRN.phl[279]";
connectAttr "FKMiddleFinger2_R_scaleZ.o" "modelRN.phl[280]";
connectAttr "FKMiddleFinger2_R_visibility.o" "modelRN.phl[281]";
connectAttr "FKMiddleFinger2_R_translateX.o" "modelRN.phl[282]";
connectAttr "FKMiddleFinger2_R_translateY.o" "modelRN.phl[283]";
connectAttr "FKMiddleFinger2_R_translateZ.o" "modelRN.phl[284]";
connectAttr "FKMiddleFinger2_R_rotateX.o" "modelRN.phl[285]";
connectAttr "FKMiddleFinger2_R_rotateY.o" "modelRN.phl[286]";
connectAttr "FKMiddleFinger2_R_rotateZ.o" "modelRN.phl[287]";
connectAttr "FKMiddleFinger3_R_scaleX.o" "modelRN.phl[288]";
connectAttr "FKMiddleFinger3_R_scaleY.o" "modelRN.phl[289]";
connectAttr "FKMiddleFinger3_R_scaleZ.o" "modelRN.phl[290]";
connectAttr "FKMiddleFinger3_R_visibility.o" "modelRN.phl[291]";
connectAttr "FKMiddleFinger3_R_translateX.o" "modelRN.phl[292]";
connectAttr "FKMiddleFinger3_R_translateY.o" "modelRN.phl[293]";
connectAttr "FKMiddleFinger3_R_translateZ.o" "modelRN.phl[294]";
connectAttr "FKMiddleFinger3_R_rotateX.o" "modelRN.phl[295]";
connectAttr "FKMiddleFinger3_R_rotateY.o" "modelRN.phl[296]";
connectAttr "FKMiddleFinger3_R_rotateZ.o" "modelRN.phl[297]";
connectAttr "FKThumbFinger1_R_scaleX.o" "modelRN.phl[298]";
connectAttr "FKThumbFinger1_R_scaleY.o" "modelRN.phl[299]";
connectAttr "FKThumbFinger1_R_scaleZ.o" "modelRN.phl[300]";
connectAttr "FKThumbFinger1_R_rotateX.o" "modelRN.phl[301]";
connectAttr "FKThumbFinger1_R_rotateY.o" "modelRN.phl[302]";
connectAttr "FKThumbFinger1_R_rotateZ.o" "modelRN.phl[303]";
connectAttr "FKThumbFinger1_R_visibility.o" "modelRN.phl[304]";
connectAttr "FKThumbFinger1_R_translateX.o" "modelRN.phl[305]";
connectAttr "FKThumbFinger1_R_translateY.o" "modelRN.phl[306]";
connectAttr "FKThumbFinger1_R_translateZ.o" "modelRN.phl[307]";
connectAttr "FKThumbFinger2_R_scaleX.o" "modelRN.phl[308]";
connectAttr "FKThumbFinger2_R_scaleY.o" "modelRN.phl[309]";
connectAttr "FKThumbFinger2_R_scaleZ.o" "modelRN.phl[310]";
connectAttr "FKThumbFinger2_R_visibility.o" "modelRN.phl[311]";
connectAttr "FKThumbFinger2_R_translateX.o" "modelRN.phl[312]";
connectAttr "FKThumbFinger2_R_translateY.o" "modelRN.phl[313]";
connectAttr "FKThumbFinger2_R_translateZ.o" "modelRN.phl[314]";
connectAttr "FKThumbFinger2_R_rotateX.o" "modelRN.phl[315]";
connectAttr "FKThumbFinger2_R_rotateY.o" "modelRN.phl[316]";
connectAttr "FKThumbFinger2_R_rotateZ.o" "modelRN.phl[317]";
connectAttr "FKThumbFinger3_R_scaleX.o" "modelRN.phl[318]";
connectAttr "FKThumbFinger3_R_scaleY.o" "modelRN.phl[319]";
connectAttr "FKThumbFinger3_R_scaleZ.o" "modelRN.phl[320]";
connectAttr "FKThumbFinger3_R_visibility.o" "modelRN.phl[321]";
connectAttr "FKThumbFinger3_R_translateX.o" "modelRN.phl[322]";
connectAttr "FKThumbFinger3_R_translateY.o" "modelRN.phl[323]";
connectAttr "FKThumbFinger3_R_translateZ.o" "modelRN.phl[324]";
connectAttr "FKThumbFinger3_R_rotateX.o" "modelRN.phl[325]";
connectAttr "FKThumbFinger3_R_rotateY.o" "modelRN.phl[326]";
connectAttr "FKThumbFinger3_R_rotateZ.o" "modelRN.phl[327]";
connectAttr "FKIndexFinger1_R_scaleX.o" "modelRN.phl[328]";
connectAttr "FKIndexFinger1_R_scaleY.o" "modelRN.phl[329]";
connectAttr "FKIndexFinger1_R_scaleZ.o" "modelRN.phl[330]";
connectAttr "FKIndexFinger1_R_visibility.o" "modelRN.phl[331]";
connectAttr "FKIndexFinger1_R_translateX.o" "modelRN.phl[332]";
connectAttr "FKIndexFinger1_R_translateY.o" "modelRN.phl[333]";
connectAttr "FKIndexFinger1_R_translateZ.o" "modelRN.phl[334]";
connectAttr "FKIndexFinger1_R_rotateX.o" "modelRN.phl[335]";
connectAttr "FKIndexFinger1_R_rotateY.o" "modelRN.phl[336]";
connectAttr "FKIndexFinger1_R_rotateZ.o" "modelRN.phl[337]";
connectAttr "FKIndexFinger2_R_scaleX.o" "modelRN.phl[338]";
connectAttr "FKIndexFinger2_R_scaleY.o" "modelRN.phl[339]";
connectAttr "FKIndexFinger2_R_scaleZ.o" "modelRN.phl[340]";
connectAttr "FKIndexFinger2_R_visibility.o" "modelRN.phl[341]";
connectAttr "FKIndexFinger2_R_translateX.o" "modelRN.phl[342]";
connectAttr "FKIndexFinger2_R_translateY.o" "modelRN.phl[343]";
connectAttr "FKIndexFinger2_R_translateZ.o" "modelRN.phl[344]";
connectAttr "FKIndexFinger2_R_rotateX.o" "modelRN.phl[345]";
connectAttr "FKIndexFinger2_R_rotateY.o" "modelRN.phl[346]";
connectAttr "FKIndexFinger2_R_rotateZ.o" "modelRN.phl[347]";
connectAttr "FKIndexFinger3_R_scaleX.o" "modelRN.phl[348]";
connectAttr "FKIndexFinger3_R_scaleY.o" "modelRN.phl[349]";
connectAttr "FKIndexFinger3_R_scaleZ.o" "modelRN.phl[350]";
connectAttr "FKIndexFinger3_R_visibility.o" "modelRN.phl[351]";
connectAttr "FKIndexFinger3_R_translateX.o" "modelRN.phl[352]";
connectAttr "FKIndexFinger3_R_translateY.o" "modelRN.phl[353]";
connectAttr "FKIndexFinger3_R_translateZ.o" "modelRN.phl[354]";
connectAttr "FKIndexFinger3_R_rotateX.o" "modelRN.phl[355]";
connectAttr "FKIndexFinger3_R_rotateY.o" "modelRN.phl[356]";
connectAttr "FKIndexFinger3_R_rotateZ.o" "modelRN.phl[357]";
connectAttr "FKCup_R_scaleX.o" "modelRN.phl[358]";
connectAttr "FKCup_R_scaleY.o" "modelRN.phl[359]";
connectAttr "FKCup_R_scaleZ.o" "modelRN.phl[360]";
connectAttr "FKCup_R_visibility.o" "modelRN.phl[361]";
connectAttr "FKCup_R_translateX.o" "modelRN.phl[362]";
connectAttr "FKCup_R_translateY.o" "modelRN.phl[363]";
connectAttr "FKCup_R_translateZ.o" "modelRN.phl[364]";
connectAttr "FKCup_R_rotateX.o" "modelRN.phl[365]";
connectAttr "FKCup_R_rotateY.o" "modelRN.phl[366]";
connectAttr "FKCup_R_rotateZ.o" "modelRN.phl[367]";
connectAttr "FKPinkyFinger1_R_scaleX.o" "modelRN.phl[368]";
connectAttr "FKPinkyFinger1_R_scaleY.o" "modelRN.phl[369]";
connectAttr "FKPinkyFinger1_R_scaleZ.o" "modelRN.phl[370]";
connectAttr "FKPinkyFinger1_R_visibility.o" "modelRN.phl[371]";
connectAttr "FKPinkyFinger1_R_translateX.o" "modelRN.phl[372]";
connectAttr "FKPinkyFinger1_R_translateY.o" "modelRN.phl[373]";
connectAttr "FKPinkyFinger1_R_translateZ.o" "modelRN.phl[374]";
connectAttr "FKPinkyFinger1_R_rotateX.o" "modelRN.phl[375]";
connectAttr "FKPinkyFinger1_R_rotateY.o" "modelRN.phl[376]";
connectAttr "FKPinkyFinger1_R_rotateZ.o" "modelRN.phl[377]";
connectAttr "FKPinkyFinger2_R_scaleX.o" "modelRN.phl[378]";
connectAttr "FKPinkyFinger2_R_scaleY.o" "modelRN.phl[379]";
connectAttr "FKPinkyFinger2_R_scaleZ.o" "modelRN.phl[380]";
connectAttr "FKPinkyFinger2_R_visibility.o" "modelRN.phl[381]";
connectAttr "FKPinkyFinger2_R_translateX.o" "modelRN.phl[382]";
connectAttr "FKPinkyFinger2_R_translateY.o" "modelRN.phl[383]";
connectAttr "FKPinkyFinger2_R_translateZ.o" "modelRN.phl[384]";
connectAttr "FKPinkyFinger2_R_rotateX.o" "modelRN.phl[385]";
connectAttr "FKPinkyFinger2_R_rotateY.o" "modelRN.phl[386]";
connectAttr "FKPinkyFinger2_R_rotateZ.o" "modelRN.phl[387]";
connectAttr "FKPinkyFinger3_R_scaleX.o" "modelRN.phl[388]";
connectAttr "FKPinkyFinger3_R_scaleY.o" "modelRN.phl[389]";
connectAttr "FKPinkyFinger3_R_scaleZ.o" "modelRN.phl[390]";
connectAttr "FKPinkyFinger3_R_visibility.o" "modelRN.phl[391]";
connectAttr "FKPinkyFinger3_R_translateX.o" "modelRN.phl[392]";
connectAttr "FKPinkyFinger3_R_translateY.o" "modelRN.phl[393]";
connectAttr "FKPinkyFinger3_R_translateZ.o" "modelRN.phl[394]";
connectAttr "FKPinkyFinger3_R_rotateX.o" "modelRN.phl[395]";
connectAttr "FKPinkyFinger3_R_rotateY.o" "modelRN.phl[396]";
connectAttr "FKPinkyFinger3_R_rotateZ.o" "modelRN.phl[397]";
connectAttr "FKRingFinger1_R_scaleX.o" "modelRN.phl[398]";
connectAttr "FKRingFinger1_R_scaleY.o" "modelRN.phl[399]";
connectAttr "FKRingFinger1_R_scaleZ.o" "modelRN.phl[400]";
connectAttr "FKRingFinger1_R_visibility.o" "modelRN.phl[401]";
connectAttr "FKRingFinger1_R_translateX.o" "modelRN.phl[402]";
connectAttr "FKRingFinger1_R_translateY.o" "modelRN.phl[403]";
connectAttr "FKRingFinger1_R_translateZ.o" "modelRN.phl[404]";
connectAttr "FKRingFinger1_R_rotateX.o" "modelRN.phl[405]";
connectAttr "FKRingFinger1_R_rotateY.o" "modelRN.phl[406]";
connectAttr "FKRingFinger1_R_rotateZ.o" "modelRN.phl[407]";
connectAttr "FKRingFinger2_R_scaleX.o" "modelRN.phl[408]";
connectAttr "FKRingFinger2_R_scaleY.o" "modelRN.phl[409]";
connectAttr "FKRingFinger2_R_scaleZ.o" "modelRN.phl[410]";
connectAttr "FKRingFinger2_R_visibility.o" "modelRN.phl[411]";
connectAttr "FKRingFinger2_R_translateX.o" "modelRN.phl[412]";
connectAttr "FKRingFinger2_R_translateY.o" "modelRN.phl[413]";
connectAttr "FKRingFinger2_R_translateZ.o" "modelRN.phl[414]";
connectAttr "FKRingFinger2_R_rotateX.o" "modelRN.phl[415]";
connectAttr "FKRingFinger2_R_rotateY.o" "modelRN.phl[416]";
connectAttr "FKRingFinger2_R_rotateZ.o" "modelRN.phl[417]";
connectAttr "FKRingFinger3_R_scaleX.o" "modelRN.phl[418]";
connectAttr "FKRingFinger3_R_scaleY.o" "modelRN.phl[419]";
connectAttr "FKRingFinger3_R_scaleZ.o" "modelRN.phl[420]";
connectAttr "FKRingFinger3_R_visibility.o" "modelRN.phl[421]";
connectAttr "FKRingFinger3_R_translateX.o" "modelRN.phl[422]";
connectAttr "FKRingFinger3_R_translateY.o" "modelRN.phl[423]";
connectAttr "FKRingFinger3_R_translateZ.o" "modelRN.phl[424]";
connectAttr "FKRingFinger3_R_rotateX.o" "modelRN.phl[425]";
connectAttr "FKRingFinger3_R_rotateY.o" "modelRN.phl[426]";
connectAttr "FKRingFinger3_R_rotateZ.o" "modelRN.phl[427]";
connectAttr "FKMiddleFinger1_L_scaleX.o" "modelRN.phl[428]";
connectAttr "FKMiddleFinger1_L_scaleY.o" "modelRN.phl[429]";
connectAttr "FKMiddleFinger1_L_scaleZ.o" "modelRN.phl[430]";
connectAttr "FKMiddleFinger1_L_visibility.o" "modelRN.phl[431]";
connectAttr "FKMiddleFinger1_L_translateX.o" "modelRN.phl[432]";
connectAttr "FKMiddleFinger1_L_translateY.o" "modelRN.phl[433]";
connectAttr "FKMiddleFinger1_L_translateZ.o" "modelRN.phl[434]";
connectAttr "FKMiddleFinger1_L_rotateX.o" "modelRN.phl[435]";
connectAttr "FKMiddleFinger1_L_rotateY.o" "modelRN.phl[436]";
connectAttr "FKMiddleFinger1_L_rotateZ.o" "modelRN.phl[437]";
connectAttr "FKMiddleFinger2_L_scaleX.o" "modelRN.phl[438]";
connectAttr "FKMiddleFinger2_L_scaleY.o" "modelRN.phl[439]";
connectAttr "FKMiddleFinger2_L_scaleZ.o" "modelRN.phl[440]";
connectAttr "FKMiddleFinger2_L_visibility.o" "modelRN.phl[441]";
connectAttr "FKMiddleFinger2_L_translateX.o" "modelRN.phl[442]";
connectAttr "FKMiddleFinger2_L_translateY.o" "modelRN.phl[443]";
connectAttr "FKMiddleFinger2_L_translateZ.o" "modelRN.phl[444]";
connectAttr "FKMiddleFinger2_L_rotateX.o" "modelRN.phl[445]";
connectAttr "FKMiddleFinger2_L_rotateY.o" "modelRN.phl[446]";
connectAttr "FKMiddleFinger2_L_rotateZ.o" "modelRN.phl[447]";
connectAttr "FKMiddleFinger3_L_scaleX.o" "modelRN.phl[448]";
connectAttr "FKMiddleFinger3_L_scaleY.o" "modelRN.phl[449]";
connectAttr "FKMiddleFinger3_L_scaleZ.o" "modelRN.phl[450]";
connectAttr "FKMiddleFinger3_L_visibility.o" "modelRN.phl[451]";
connectAttr "FKMiddleFinger3_L_translateX.o" "modelRN.phl[452]";
connectAttr "FKMiddleFinger3_L_translateY.o" "modelRN.phl[453]";
connectAttr "FKMiddleFinger3_L_translateZ.o" "modelRN.phl[454]";
connectAttr "FKMiddleFinger3_L_rotateX.o" "modelRN.phl[455]";
connectAttr "FKMiddleFinger3_L_rotateY.o" "modelRN.phl[456]";
connectAttr "FKMiddleFinger3_L_rotateZ.o" "modelRN.phl[457]";
connectAttr "FKThumbFinger1_L_scaleX.o" "modelRN.phl[458]";
connectAttr "FKThumbFinger1_L_scaleY.o" "modelRN.phl[459]";
connectAttr "FKThumbFinger1_L_scaleZ.o" "modelRN.phl[460]";
connectAttr "FKThumbFinger1_L_visibility.o" "modelRN.phl[461]";
connectAttr "FKThumbFinger1_L_translateX.o" "modelRN.phl[462]";
connectAttr "FKThumbFinger1_L_translateY.o" "modelRN.phl[463]";
connectAttr "FKThumbFinger1_L_translateZ.o" "modelRN.phl[464]";
connectAttr "FKThumbFinger1_L_rotateX.o" "modelRN.phl[465]";
connectAttr "FKThumbFinger1_L_rotateY.o" "modelRN.phl[466]";
connectAttr "FKThumbFinger1_L_rotateZ.o" "modelRN.phl[467]";
connectAttr "FKThumbFinger2_L_scaleX.o" "modelRN.phl[468]";
connectAttr "FKThumbFinger2_L_scaleY.o" "modelRN.phl[469]";
connectAttr "FKThumbFinger2_L_scaleZ.o" "modelRN.phl[470]";
connectAttr "FKThumbFinger2_L_visibility.o" "modelRN.phl[471]";
connectAttr "FKThumbFinger2_L_translateX.o" "modelRN.phl[472]";
connectAttr "FKThumbFinger2_L_translateY.o" "modelRN.phl[473]";
connectAttr "FKThumbFinger2_L_translateZ.o" "modelRN.phl[474]";
connectAttr "FKThumbFinger2_L_rotateX.o" "modelRN.phl[475]";
connectAttr "FKThumbFinger2_L_rotateY.o" "modelRN.phl[476]";
connectAttr "FKThumbFinger2_L_rotateZ.o" "modelRN.phl[477]";
connectAttr "FKThumbFinger3_L_scaleX.o" "modelRN.phl[478]";
connectAttr "FKThumbFinger3_L_scaleY.o" "modelRN.phl[479]";
connectAttr "FKThumbFinger3_L_scaleZ.o" "modelRN.phl[480]";
connectAttr "FKThumbFinger3_L_visibility.o" "modelRN.phl[481]";
connectAttr "FKThumbFinger3_L_translateX.o" "modelRN.phl[482]";
connectAttr "FKThumbFinger3_L_translateY.o" "modelRN.phl[483]";
connectAttr "FKThumbFinger3_L_translateZ.o" "modelRN.phl[484]";
connectAttr "FKThumbFinger3_L_rotateX.o" "modelRN.phl[485]";
connectAttr "FKThumbFinger3_L_rotateY.o" "modelRN.phl[486]";
connectAttr "FKThumbFinger3_L_rotateZ.o" "modelRN.phl[487]";
connectAttr "FKIndexFinger1_L_scaleX.o" "modelRN.phl[488]";
connectAttr "FKIndexFinger1_L_scaleY.o" "modelRN.phl[489]";
connectAttr "FKIndexFinger1_L_scaleZ.o" "modelRN.phl[490]";
connectAttr "FKIndexFinger1_L_visibility.o" "modelRN.phl[491]";
connectAttr "FKIndexFinger1_L_translateX.o" "modelRN.phl[492]";
connectAttr "FKIndexFinger1_L_translateY.o" "modelRN.phl[493]";
connectAttr "FKIndexFinger1_L_translateZ.o" "modelRN.phl[494]";
connectAttr "FKIndexFinger1_L_rotateX.o" "modelRN.phl[495]";
connectAttr "FKIndexFinger1_L_rotateY.o" "modelRN.phl[496]";
connectAttr "FKIndexFinger1_L_rotateZ.o" "modelRN.phl[497]";
connectAttr "FKIndexFinger2_L_scaleX.o" "modelRN.phl[498]";
connectAttr "FKIndexFinger2_L_scaleY.o" "modelRN.phl[499]";
connectAttr "FKIndexFinger2_L_scaleZ.o" "modelRN.phl[500]";
connectAttr "FKIndexFinger2_L_visibility.o" "modelRN.phl[501]";
connectAttr "FKIndexFinger2_L_translateX.o" "modelRN.phl[502]";
connectAttr "FKIndexFinger2_L_translateY.o" "modelRN.phl[503]";
connectAttr "FKIndexFinger2_L_translateZ.o" "modelRN.phl[504]";
connectAttr "FKIndexFinger2_L_rotateX.o" "modelRN.phl[505]";
connectAttr "FKIndexFinger2_L_rotateY.o" "modelRN.phl[506]";
connectAttr "FKIndexFinger2_L_rotateZ.o" "modelRN.phl[507]";
connectAttr "FKIndexFinger3_L_scaleX.o" "modelRN.phl[508]";
connectAttr "FKIndexFinger3_L_scaleY.o" "modelRN.phl[509]";
connectAttr "FKIndexFinger3_L_scaleZ.o" "modelRN.phl[510]";
connectAttr "FKIndexFinger3_L_visibility.o" "modelRN.phl[511]";
connectAttr "FKIndexFinger3_L_translateX.o" "modelRN.phl[512]";
connectAttr "FKIndexFinger3_L_translateY.o" "modelRN.phl[513]";
connectAttr "FKIndexFinger3_L_translateZ.o" "modelRN.phl[514]";
connectAttr "FKIndexFinger3_L_rotateX.o" "modelRN.phl[515]";
connectAttr "FKIndexFinger3_L_rotateY.o" "modelRN.phl[516]";
connectAttr "FKIndexFinger3_L_rotateZ.o" "modelRN.phl[517]";
connectAttr "FKCup_L_scaleX.o" "modelRN.phl[518]";
connectAttr "FKCup_L_scaleY.o" "modelRN.phl[519]";
connectAttr "FKCup_L_scaleZ.o" "modelRN.phl[520]";
connectAttr "FKCup_L_visibility.o" "modelRN.phl[521]";
connectAttr "FKCup_L_translateX.o" "modelRN.phl[522]";
connectAttr "FKCup_L_translateY.o" "modelRN.phl[523]";
connectAttr "FKCup_L_translateZ.o" "modelRN.phl[524]";
connectAttr "FKCup_L_rotateX.o" "modelRN.phl[525]";
connectAttr "FKCup_L_rotateY.o" "modelRN.phl[526]";
connectAttr "FKCup_L_rotateZ.o" "modelRN.phl[527]";
connectAttr "FKPinkyFinger1_L_scaleX.o" "modelRN.phl[528]";
connectAttr "FKPinkyFinger1_L_scaleY.o" "modelRN.phl[529]";
connectAttr "FKPinkyFinger1_L_scaleZ.o" "modelRN.phl[530]";
connectAttr "FKPinkyFinger1_L_visibility.o" "modelRN.phl[531]";
connectAttr "FKPinkyFinger1_L_translateX.o" "modelRN.phl[532]";
connectAttr "FKPinkyFinger1_L_translateY.o" "modelRN.phl[533]";
connectAttr "FKPinkyFinger1_L_translateZ.o" "modelRN.phl[534]";
connectAttr "FKPinkyFinger1_L_rotateX.o" "modelRN.phl[535]";
connectAttr "FKPinkyFinger1_L_rotateY.o" "modelRN.phl[536]";
connectAttr "FKPinkyFinger1_L_rotateZ.o" "modelRN.phl[537]";
connectAttr "FKPinkyFinger2_L_scaleX.o" "modelRN.phl[538]";
connectAttr "FKPinkyFinger2_L_scaleY.o" "modelRN.phl[539]";
connectAttr "FKPinkyFinger2_L_scaleZ.o" "modelRN.phl[540]";
connectAttr "FKPinkyFinger2_L_visibility.o" "modelRN.phl[541]";
connectAttr "FKPinkyFinger2_L_translateX.o" "modelRN.phl[542]";
connectAttr "FKPinkyFinger2_L_translateY.o" "modelRN.phl[543]";
connectAttr "FKPinkyFinger2_L_translateZ.o" "modelRN.phl[544]";
connectAttr "FKPinkyFinger2_L_rotateX.o" "modelRN.phl[545]";
connectAttr "FKPinkyFinger2_L_rotateY.o" "modelRN.phl[546]";
connectAttr "FKPinkyFinger2_L_rotateZ.o" "modelRN.phl[547]";
connectAttr "FKPinkyFinger3_L_scaleX.o" "modelRN.phl[548]";
connectAttr "FKPinkyFinger3_L_scaleY.o" "modelRN.phl[549]";
connectAttr "FKPinkyFinger3_L_scaleZ.o" "modelRN.phl[550]";
connectAttr "FKPinkyFinger3_L_visibility.o" "modelRN.phl[551]";
connectAttr "FKPinkyFinger3_L_translateX.o" "modelRN.phl[552]";
connectAttr "FKPinkyFinger3_L_translateY.o" "modelRN.phl[553]";
connectAttr "FKPinkyFinger3_L_translateZ.o" "modelRN.phl[554]";
connectAttr "FKPinkyFinger3_L_rotateX.o" "modelRN.phl[555]";
connectAttr "FKPinkyFinger3_L_rotateY.o" "modelRN.phl[556]";
connectAttr "FKPinkyFinger3_L_rotateZ.o" "modelRN.phl[557]";
connectAttr "FKRingFinger1_L_scaleX.o" "modelRN.phl[558]";
connectAttr "FKRingFinger1_L_scaleY.o" "modelRN.phl[559]";
connectAttr "FKRingFinger1_L_scaleZ.o" "modelRN.phl[560]";
connectAttr "FKRingFinger1_L_visibility.o" "modelRN.phl[561]";
connectAttr "FKRingFinger1_L_translateX.o" "modelRN.phl[562]";
connectAttr "FKRingFinger1_L_translateY.o" "modelRN.phl[563]";
connectAttr "FKRingFinger1_L_translateZ.o" "modelRN.phl[564]";
connectAttr "FKRingFinger1_L_rotateX.o" "modelRN.phl[565]";
connectAttr "FKRingFinger1_L_rotateY.o" "modelRN.phl[566]";
connectAttr "FKRingFinger1_L_rotateZ.o" "modelRN.phl[567]";
connectAttr "FKRingFinger2_L_scaleX.o" "modelRN.phl[568]";
connectAttr "FKRingFinger2_L_scaleY.o" "modelRN.phl[569]";
connectAttr "FKRingFinger2_L_scaleZ.o" "modelRN.phl[570]";
connectAttr "FKRingFinger2_L_visibility.o" "modelRN.phl[571]";
connectAttr "FKRingFinger2_L_translateX.o" "modelRN.phl[572]";
connectAttr "FKRingFinger2_L_translateY.o" "modelRN.phl[573]";
connectAttr "FKRingFinger2_L_translateZ.o" "modelRN.phl[574]";
connectAttr "FKRingFinger2_L_rotateX.o" "modelRN.phl[575]";
connectAttr "FKRingFinger2_L_rotateY.o" "modelRN.phl[576]";
connectAttr "FKRingFinger2_L_rotateZ.o" "modelRN.phl[577]";
connectAttr "FKRingFinger3_L_scaleX.o" "modelRN.phl[578]";
connectAttr "FKRingFinger3_L_scaleY.o" "modelRN.phl[579]";
connectAttr "FKRingFinger3_L_scaleZ.o" "modelRN.phl[580]";
connectAttr "FKRingFinger3_L_visibility.o" "modelRN.phl[581]";
connectAttr "FKRingFinger3_L_translateX.o" "modelRN.phl[582]";
connectAttr "FKRingFinger3_L_translateY.o" "modelRN.phl[583]";
connectAttr "FKRingFinger3_L_translateZ.o" "modelRN.phl[584]";
connectAttr "FKRingFinger3_L_rotateX.o" "modelRN.phl[585]";
connectAttr "FKRingFinger3_L_rotateY.o" "modelRN.phl[586]";
connectAttr "FKRingFinger3_L_rotateZ.o" "modelRN.phl[587]";
connectAttr "IKLeg_R_scaleY.o" "modelRN.phl[588]";
connectAttr "IKLeg_R_scaleZ.o" "modelRN.phl[589]";
connectAttr "IKLeg_R_scaleX.o" "modelRN.phl[590]";
connectAttr "IKLeg_R_translateX.o" "modelRN.phl[591]";
connectAttr "IKLeg_R_translateY.o" "modelRN.phl[592]";
connectAttr "IKLeg_R_translateZ.o" "modelRN.phl[593]";
connectAttr "IKLeg_R_rotateX.o" "modelRN.phl[594]";
connectAttr "IKLeg_R_rotateY.o" "modelRN.phl[595]";
connectAttr "IKLeg_R_rotateZ.o" "modelRN.phl[596]";
connectAttr "IKLeg_R_swivel.o" "modelRN.phl[597]";
connectAttr "IKLeg_R_rock.o" "modelRN.phl[598]";
connectAttr "IKLeg_R_roll.o" "modelRN.phl[599]";
connectAttr "IKLeg_R_rollStartAngle.o" "modelRN.phl[600]";
connectAttr "IKLeg_R_rollEndAngle.o" "modelRN.phl[601]";
connectAttr "IKLeg_R_stretchy.o" "modelRN.phl[602]";
connectAttr "IKLeg_R_antiPop.o" "modelRN.phl[603]";
connectAttr "IKLeg_R_Lenght1.o" "modelRN.phl[604]";
connectAttr "IKLeg_R_Lenght2.o" "modelRN.phl[605]";
connectAttr "IKLeg_R_Fatness1.o" "modelRN.phl[606]";
connectAttr "IKLeg_R_Fatness2.o" "modelRN.phl[607]";
connectAttr "IKLeg_R_volume.o" "modelRN.phl[608]";
connectAttr "IKLeg_R_visibility.o" "modelRN.phl[609]";
connectAttr "RollHeel_R_visibility.o" "modelRN.phl[610]";
connectAttr "RollHeel_R_translateX.o" "modelRN.phl[611]";
connectAttr "RollHeel_R_translateY.o" "modelRN.phl[612]";
connectAttr "RollHeel_R_translateZ.o" "modelRN.phl[613]";
connectAttr "RollHeel_R_rotateX.o" "modelRN.phl[614]";
connectAttr "RollHeel_R_rotateY.o" "modelRN.phl[615]";
connectAttr "RollHeel_R_rotateZ.o" "modelRN.phl[616]";
connectAttr "RollHeel_R_scaleX.o" "modelRN.phl[617]";
connectAttr "RollHeel_R_scaleY.o" "modelRN.phl[618]";
connectAttr "RollHeel_R_scaleZ.o" "modelRN.phl[619]";
connectAttr "RollToesEnd_R_visibility.o" "modelRN.phl[620]";
connectAttr "RollToesEnd_R_translateX.o" "modelRN.phl[621]";
connectAttr "RollToesEnd_R_translateY.o" "modelRN.phl[622]";
connectAttr "RollToesEnd_R_translateZ.o" "modelRN.phl[623]";
connectAttr "RollToesEnd_R_rotateX.o" "modelRN.phl[624]";
connectAttr "RollToesEnd_R_rotateY.o" "modelRN.phl[625]";
connectAttr "RollToesEnd_R_rotateZ.o" "modelRN.phl[626]";
connectAttr "RollToesEnd_R_scaleX.o" "modelRN.phl[627]";
connectAttr "RollToesEnd_R_scaleY.o" "modelRN.phl[628]";
connectAttr "RollToesEnd_R_scaleZ.o" "modelRN.phl[629]";
connectAttr "RollToes_R_visibility.o" "modelRN.phl[630]";
connectAttr "RollToes_R_translateX.o" "modelRN.phl[631]";
connectAttr "RollToes_R_translateY.o" "modelRN.phl[632]";
connectAttr "RollToes_R_translateZ.o" "modelRN.phl[633]";
connectAttr "RollToes_R_rotateX.o" "modelRN.phl[634]";
connectAttr "RollToes_R_rotateY.o" "modelRN.phl[635]";
connectAttr "RollToes_R_rotateZ.o" "modelRN.phl[636]";
connectAttr "RollToes_R_scaleX.o" "modelRN.phl[637]";
connectAttr "RollToes_R_scaleY.o" "modelRN.phl[638]";
connectAttr "RollToes_R_scaleZ.o" "modelRN.phl[639]";
connectAttr "IKToes_R_visibility.o" "modelRN.phl[640]";
connectAttr "IKToes_R_translateX.o" "modelRN.phl[641]";
connectAttr "IKToes_R_translateY.o" "modelRN.phl[642]";
connectAttr "IKToes_R_translateZ.o" "modelRN.phl[643]";
connectAttr "IKToes_R_rotateX.o" "modelRN.phl[644]";
connectAttr "IKToes_R_rotateY.o" "modelRN.phl[645]";
connectAttr "IKToes_R_rotateZ.o" "modelRN.phl[646]";
connectAttr "IKToes_R_scaleX.o" "modelRN.phl[647]";
connectAttr "IKToes_R_scaleY.o" "modelRN.phl[648]";
connectAttr "IKToes_R_scaleZ.o" "modelRN.phl[649]";
connectAttr "PoleLeg_R_translateX.o" "modelRN.phl[650]";
connectAttr "PoleLeg_R_translateY.o" "modelRN.phl[651]";
connectAttr "PoleLeg_R_translateZ.o" "modelRN.phl[652]";
connectAttr "PoleLeg_R_follow.o" "modelRN.phl[653]";
connectAttr "PoleLeg_R_lock.o" "modelRN.phl[654]";
connectAttr "IKArm_R_scaleX.o" "modelRN.phl[655]";
connectAttr "IKArm_R_scaleZ.o" "modelRN.phl[656]";
connectAttr "IKArm_R_scaleY.o" "modelRN.phl[657]";
connectAttr "IKArm_R_translateX.o" "modelRN.phl[658]";
connectAttr "IKArm_R_translateZ.o" "modelRN.phl[659]";
connectAttr "IKArm_R_translateY.o" "modelRN.phl[660]";
connectAttr "IKArm_R_rotateX.o" "modelRN.phl[661]";
connectAttr "IKArm_R_rotateY.o" "modelRN.phl[662]";
connectAttr "IKArm_R_rotateZ.o" "modelRN.phl[663]";
connectAttr "IKArm_R_follow.o" "modelRN.phl[664]";
connectAttr "IKArm_R_stretchy.o" "modelRN.phl[665]";
connectAttr "IKArm_R_antiPop.o" "modelRN.phl[666]";
connectAttr "IKArm_R_Lenght1.o" "modelRN.phl[667]";
connectAttr "IKArm_R_Lenght2.o" "modelRN.phl[668]";
connectAttr "IKArm_R_Fatness1.o" "modelRN.phl[669]";
connectAttr "IKArm_R_Fatness2.o" "modelRN.phl[670]";
connectAttr "IKArm_R_volume.o" "modelRN.phl[671]";
connectAttr "IKArm_R_visibility.o" "modelRN.phl[672]";
connectAttr "PoleArm_R_translateX.o" "modelRN.phl[673]";
connectAttr "PoleArm_R_translateZ.o" "modelRN.phl[674]";
connectAttr "PoleArm_R_translateY.o" "modelRN.phl[675]";
connectAttr "PoleArm_R_follow.o" "modelRN.phl[676]";
connectAttr "PoleArm_R_lock.o" "modelRN.phl[677]";
connectAttr "IKLeg_L_scaleY.o" "modelRN.phl[678]";
connectAttr "IKLeg_L_scaleZ.o" "modelRN.phl[679]";
connectAttr "IKLeg_L_scaleX.o" "modelRN.phl[680]";
connectAttr "IKLeg_L_translateX.o" "modelRN.phl[681]";
connectAttr "IKLeg_L_translateY.o" "modelRN.phl[682]";
connectAttr "IKLeg_L_translateZ.o" "modelRN.phl[683]";
connectAttr "IKLeg_L_rotateX.o" "modelRN.phl[684]";
connectAttr "IKLeg_L_rotateY.o" "modelRN.phl[685]";
connectAttr "IKLeg_L_rotateZ.o" "modelRN.phl[686]";
connectAttr "IKLeg_L_swivel.o" "modelRN.phl[687]";
connectAttr "IKLeg_L_rock.o" "modelRN.phl[688]";
connectAttr "IKLeg_L_roll.o" "modelRN.phl[689]";
connectAttr "IKLeg_L_rollStartAngle.o" "modelRN.phl[690]";
connectAttr "IKLeg_L_rollEndAngle.o" "modelRN.phl[691]";
connectAttr "IKLeg_L_stretchy.o" "modelRN.phl[692]";
connectAttr "IKLeg_L_antiPop.o" "modelRN.phl[693]";
connectAttr "IKLeg_L_Lenght1.o" "modelRN.phl[694]";
connectAttr "IKLeg_L_Lenght2.o" "modelRN.phl[695]";
connectAttr "IKLeg_L_Fatness1.o" "modelRN.phl[696]";
connectAttr "IKLeg_L_Fatness2.o" "modelRN.phl[697]";
connectAttr "IKLeg_L_volume.o" "modelRN.phl[698]";
connectAttr "IKLeg_L_visibility.o" "modelRN.phl[699]";
connectAttr "RollHeel_L_visibility.o" "modelRN.phl[700]";
connectAttr "RollHeel_L_translateX.o" "modelRN.phl[701]";
connectAttr "RollHeel_L_translateY.o" "modelRN.phl[702]";
connectAttr "RollHeel_L_translateZ.o" "modelRN.phl[703]";
connectAttr "RollHeel_L_rotateX.o" "modelRN.phl[704]";
connectAttr "RollHeel_L_rotateY.o" "modelRN.phl[705]";
connectAttr "RollHeel_L_rotateZ.o" "modelRN.phl[706]";
connectAttr "RollHeel_L_scaleX.o" "modelRN.phl[707]";
connectAttr "RollHeel_L_scaleY.o" "modelRN.phl[708]";
connectAttr "RollHeel_L_scaleZ.o" "modelRN.phl[709]";
connectAttr "RollToesEnd_L_visibility.o" "modelRN.phl[710]";
connectAttr "RollToesEnd_L_translateX.o" "modelRN.phl[711]";
connectAttr "RollToesEnd_L_translateY.o" "modelRN.phl[712]";
connectAttr "RollToesEnd_L_translateZ.o" "modelRN.phl[713]";
connectAttr "RollToesEnd_L_rotateX.o" "modelRN.phl[714]";
connectAttr "RollToesEnd_L_rotateY.o" "modelRN.phl[715]";
connectAttr "RollToesEnd_L_rotateZ.o" "modelRN.phl[716]";
connectAttr "RollToesEnd_L_scaleX.o" "modelRN.phl[717]";
connectAttr "RollToesEnd_L_scaleY.o" "modelRN.phl[718]";
connectAttr "RollToesEnd_L_scaleZ.o" "modelRN.phl[719]";
connectAttr "RollToes_L_visibility.o" "modelRN.phl[720]";
connectAttr "RollToes_L_translateX.o" "modelRN.phl[721]";
connectAttr "RollToes_L_translateY.o" "modelRN.phl[722]";
connectAttr "RollToes_L_translateZ.o" "modelRN.phl[723]";
connectAttr "RollToes_L_rotateX.o" "modelRN.phl[724]";
connectAttr "RollToes_L_rotateY.o" "modelRN.phl[725]";
connectAttr "RollToes_L_rotateZ.o" "modelRN.phl[726]";
connectAttr "RollToes_L_scaleX.o" "modelRN.phl[727]";
connectAttr "RollToes_L_scaleY.o" "modelRN.phl[728]";
connectAttr "RollToes_L_scaleZ.o" "modelRN.phl[729]";
connectAttr "IKToes_L_visibility.o" "modelRN.phl[730]";
connectAttr "IKToes_L_translateX.o" "modelRN.phl[731]";
connectAttr "IKToes_L_translateY.o" "modelRN.phl[732]";
connectAttr "IKToes_L_translateZ.o" "modelRN.phl[733]";
connectAttr "IKToes_L_rotateX.o" "modelRN.phl[734]";
connectAttr "IKToes_L_rotateY.o" "modelRN.phl[735]";
connectAttr "IKToes_L_rotateZ.o" "modelRN.phl[736]";
connectAttr "IKToes_L_scaleX.o" "modelRN.phl[737]";
connectAttr "IKToes_L_scaleY.o" "modelRN.phl[738]";
connectAttr "IKToes_L_scaleZ.o" "modelRN.phl[739]";
connectAttr "PoleLeg_L_translateX.o" "modelRN.phl[740]";
connectAttr "PoleLeg_L_translateY.o" "modelRN.phl[741]";
connectAttr "PoleLeg_L_translateZ.o" "modelRN.phl[742]";
connectAttr "PoleLeg_L_follow.o" "modelRN.phl[743]";
connectAttr "PoleLeg_L_lock.o" "modelRN.phl[744]";
connectAttr "IKArm_L_scaleX.o" "modelRN.phl[745]";
connectAttr "IKArm_L_scaleZ.o" "modelRN.phl[746]";
connectAttr "IKArm_L_scaleY.o" "modelRN.phl[747]";
connectAttr "IKArm_L_translateX.o" "modelRN.phl[748]";
connectAttr "IKArm_L_translateZ.o" "modelRN.phl[749]";
connectAttr "IKArm_L_translateY.o" "modelRN.phl[750]";
connectAttr "IKArm_L_rotateX.o" "modelRN.phl[751]";
connectAttr "IKArm_L_rotateY.o" "modelRN.phl[752]";
connectAttr "IKArm_L_rotateZ.o" "modelRN.phl[753]";
connectAttr "IKArm_L_follow.o" "modelRN.phl[754]";
connectAttr "IKArm_L_stretchy.o" "modelRN.phl[755]";
connectAttr "IKArm_L_antiPop.o" "modelRN.phl[756]";
connectAttr "IKArm_L_Lenght1.o" "modelRN.phl[757]";
connectAttr "IKArm_L_Lenght2.o" "modelRN.phl[758]";
connectAttr "IKArm_L_Fatness1.o" "modelRN.phl[759]";
connectAttr "IKArm_L_Fatness2.o" "modelRN.phl[760]";
connectAttr "IKArm_L_volume.o" "modelRN.phl[761]";
connectAttr "IKArm_L_visibility.o" "modelRN.phl[762]";
connectAttr "PoleArm_L_translateX.o" "modelRN.phl[763]";
connectAttr "PoleArm_L_translateZ.o" "modelRN.phl[764]";
connectAttr "PoleArm_L_translateY.o" "modelRN.phl[765]";
connectAttr "PoleArm_L_follow.o" "modelRN.phl[766]";
connectAttr "PoleArm_L_lock.o" "modelRN.phl[767]";
connectAttr "FKIKLeg_R_FKIKBlend.o" "modelRN.phl[768]";
connectAttr "FKIKLeg_R_IKVis.o" "modelRN.phl[769]";
connectAttr "FKIKLeg_R_FKVis.o" "modelRN.phl[770]";
connectAttr "FKIKArm_R_FKIKBlend.o" "modelRN.phl[771]";
connectAttr "FKIKArm_R_IKVis.o" "modelRN.phl[772]";
connectAttr "FKIKArm_R_FKVis.o" "modelRN.phl[773]";
connectAttr "FKIKSpine_M_FKIKBlend.o" "modelRN.phl[774]";
connectAttr "FKIKSpine_M_IKVis.o" "modelRN.phl[775]";
connectAttr "FKIKSpine_M_FKVis.o" "modelRN.phl[776]";
connectAttr "FKIKLeg_L_FKIKBlend.o" "modelRN.phl[777]";
connectAttr "FKIKLeg_L_IKVis.o" "modelRN.phl[778]";
connectAttr "FKIKLeg_L_FKVis.o" "modelRN.phl[779]";
connectAttr "FKIKArm_L_FKIKBlend.o" "modelRN.phl[780]";
connectAttr "FKIKArm_L_IKVis.o" "modelRN.phl[781]";
connectAttr "FKIKArm_L_FKVis.o" "modelRN.phl[782]";
connectAttr "AimEye_M_follow.o" "modelRN.phl[783]";
connectAttr "AimEye_M_visibility.o" "modelRN.phl[784]";
connectAttr "AimEye_M_translateX.o" "modelRN.phl[785]";
connectAttr "AimEye_M_translateY.o" "modelRN.phl[786]";
connectAttr "AimEye_M_translateZ.o" "modelRN.phl[787]";
connectAttr "AimEye_M_rotateX.o" "modelRN.phl[788]";
connectAttr "AimEye_M_rotateY.o" "modelRN.phl[789]";
connectAttr "AimEye_M_rotateZ.o" "modelRN.phl[790]";
connectAttr "AimEye_M_scaleX.o" "modelRN.phl[791]";
connectAttr "AimEye_M_scaleY.o" "modelRN.phl[792]";
connectAttr "AimEye_M_scaleZ.o" "modelRN.phl[793]";
connectAttr "AimEye_R_translateX.o" "modelRN.phl[794]";
connectAttr "AimEye_R_translateY.o" "modelRN.phl[795]";
connectAttr "AimEye_R_translateZ.o" "modelRN.phl[796]";
connectAttr "AimEye_L_translateX.o" "modelRN.phl[797]";
connectAttr "AimEye_L_translateY.o" "modelRN.phl[798]";
connectAttr "AimEye_L_translateZ.o" "modelRN.phl[799]";
connectAttr "RootX_M_translateX.o" "modelRN.phl[800]";
connectAttr "RootX_M_translateY.o" "modelRN.phl[801]";
connectAttr "RootX_M_translateZ.o" "modelRN.phl[802]";
connectAttr "RootX_M_rotateY.o" "modelRN.phl[803]";
connectAttr "RootX_M_rotateX.o" "modelRN.phl[804]";
connectAttr "RootX_M_rotateZ.o" "modelRN.phl[805]";
connectAttr "RootX_M_CenterBtwFeet.o" "modelRN.phl[806]";
connectAttr "RootX_M_visibility.o" "modelRN.phl[807]";
connectAttr "Fingers_R_spread.o" "modelRN.phl[808]";
connectAttr "Fingers_R_cup.o" "modelRN.phl[809]";
connectAttr "Fingers_R_indexCurl.o" "modelRN.phl[810]";
connectAttr "Fingers_R_middleCurl.o" "modelRN.phl[811]";
connectAttr "Fingers_R_ringCurl.o" "modelRN.phl[812]";
connectAttr "Fingers_R_pinkyCurl.o" "modelRN.phl[813]";
connectAttr "Fingers_R_thumbCurl.o" "modelRN.phl[814]";
connectAttr "Fingers_L_spread.o" "modelRN.phl[815]";
connectAttr "Fingers_L_cup.o" "modelRN.phl[816]";
connectAttr "Fingers_L_indexCurl.o" "modelRN.phl[817]";
connectAttr "Fingers_L_middleCurl.o" "modelRN.phl[818]";
connectAttr "Fingers_L_ringCurl.o" "modelRN.phl[819]";
connectAttr "Fingers_L_pinkyCurl.o" "modelRN.phl[820]";
connectAttr "Fingers_L_thumbCurl.o" "modelRN.phl[821]";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "cameraShape1.msg" "imagePlaneShape1.ltc";
connectAttr "timeToUnitConversion1.o" "imagePlaneShape1.fe";
connectAttr "camera1_aim.tx" "camera1_group.tg[0].ttx";
connectAttr "camera1_aim.ty" "camera1_group.tg[0].tty";
connectAttr "camera1_aim.tz" "camera1_group.tg[0].ttz";
connectAttr "camera1_aim.rp" "camera1_group.tg[0].trp";
connectAttr "camera1_aim.rpt" "camera1_group.tg[0].trt";
connectAttr "camera1_aim.pm" "camera1_group.tg[0].tpm";
connectAttr "camera1.pim" "camera1_group.cpim";
connectAttr "camera1.t" "camera1_group.ct";
connectAttr "camera1.rp" "camera1_group.crp";
connectAttr "camera1.rpt" "camera1_group.crt";
connectAttr "camera1_group.crx" "camera1.rx";
connectAttr "camera1_group.cry" "camera1.ry";
connectAttr "camera1_group.crz" "camera1.rz";
connectAttr "camera1_group.db" "cameraShape1.coi";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mesh_5SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mesh_5SG5.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Bitmaptexture.oc" "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.bc"
		;
connectAttr "Bitmaptexture_ncl1_1.oa" "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.s"
		;
connectAttr "Bitmaptexture_ncl1_21.oc" "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.sc"
		;
connectAttr "Bitmaptexture_ncl1_2.oa" "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.sr"
		;
connectAttr "place2dTexture1.o" "Bitmaptexture.uv";
connectAttr "place2dTexture1.ofu" "Bitmaptexture.ofu";
connectAttr "place2dTexture1.ofv" "Bitmaptexture.ofv";
connectAttr "place2dTexture1.rf" "Bitmaptexture.rf";
connectAttr "place2dTexture1.reu" "Bitmaptexture.reu";
connectAttr "place2dTexture1.rev" "Bitmaptexture.rev";
connectAttr "place2dTexture1.vt1" "Bitmaptexture.vt1";
connectAttr "place2dTexture1.vt2" "Bitmaptexture.vt2";
connectAttr "place2dTexture1.vt3" "Bitmaptexture.vt3";
connectAttr "place2dTexture1.vc1" "Bitmaptexture.vc1";
connectAttr "place2dTexture1.ofs" "Bitmaptexture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture.ws";
connectAttr "place2dTexture2.o" "Bitmaptexture_ncl1_1.uv";
connectAttr "place2dTexture2.ofu" "Bitmaptexture_ncl1_1.ofu";
connectAttr "place2dTexture2.ofv" "Bitmaptexture_ncl1_1.ofv";
connectAttr "place2dTexture2.rf" "Bitmaptexture_ncl1_1.rf";
connectAttr "place2dTexture2.reu" "Bitmaptexture_ncl1_1.reu";
connectAttr "place2dTexture2.rev" "Bitmaptexture_ncl1_1.rev";
connectAttr "place2dTexture2.vt1" "Bitmaptexture_ncl1_1.vt1";
connectAttr "place2dTexture2.vt2" "Bitmaptexture_ncl1_1.vt2";
connectAttr "place2dTexture2.vt3" "Bitmaptexture_ncl1_1.vt3";
connectAttr "place2dTexture2.vc1" "Bitmaptexture_ncl1_1.vc1";
connectAttr "place2dTexture2.ofs" "Bitmaptexture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_1.ws";
connectAttr "place2dTexture3.o" "Bitmaptexture_ncl1_3.uv";
connectAttr "place2dTexture3.ofu" "Bitmaptexture_ncl1_3.ofu";
connectAttr "place2dTexture3.ofv" "Bitmaptexture_ncl1_3.ofv";
connectAttr "place2dTexture3.rf" "Bitmaptexture_ncl1_3.rf";
connectAttr "place2dTexture3.reu" "Bitmaptexture_ncl1_3.reu";
connectAttr "place2dTexture3.rev" "Bitmaptexture_ncl1_3.rev";
connectAttr "place2dTexture3.vt1" "Bitmaptexture_ncl1_3.vt1";
connectAttr "place2dTexture3.vt2" "Bitmaptexture_ncl1_3.vt2";
connectAttr "place2dTexture3.vt3" "Bitmaptexture_ncl1_3.vt3";
connectAttr "place2dTexture3.vc1" "Bitmaptexture_ncl1_3.vc1";
connectAttr "place2dTexture3.ofs" "Bitmaptexture_ncl1_3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_3.ws";
connectAttr "place2dTexture4.o" "Bitmaptexture_ncl1_2.uv";
connectAttr "place2dTexture4.ofu" "Bitmaptexture_ncl1_2.ofu";
connectAttr "place2dTexture4.ofv" "Bitmaptexture_ncl1_2.ofv";
connectAttr "place2dTexture4.rf" "Bitmaptexture_ncl1_2.rf";
connectAttr "place2dTexture4.reu" "Bitmaptexture_ncl1_2.reu";
connectAttr "place2dTexture4.rev" "Bitmaptexture_ncl1_2.rev";
connectAttr "place2dTexture4.vt1" "Bitmaptexture_ncl1_2.vt1";
connectAttr "place2dTexture4.vt2" "Bitmaptexture_ncl1_2.vt2";
connectAttr "place2dTexture4.vt3" "Bitmaptexture_ncl1_2.vt3";
connectAttr "place2dTexture4.vc1" "Bitmaptexture_ncl1_2.vc1";
connectAttr "place2dTexture4.ofs" "Bitmaptexture_ncl1_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_2.ws";
connectAttr "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.oc" "mesh_5SG.ss"
		;
connectAttr "mesh_5SG.msg" "materialInfo1.sg";
connectAttr "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.msg" "materialInfo1.m"
		;
connectAttr "Bitmaptexture.msg" "materialInfo1.t" -na;
connectAttr "Bitmaptexture_ncl1_4.oc" "__1711D048FBXASC046png.bc";
connectAttr "place2dTexture5.o" "Bitmaptexture_ncl1_4.uv";
connectAttr "place2dTexture5.ofu" "Bitmaptexture_ncl1_4.ofu";
connectAttr "place2dTexture5.ofv" "Bitmaptexture_ncl1_4.ofv";
connectAttr "place2dTexture5.rf" "Bitmaptexture_ncl1_4.rf";
connectAttr "place2dTexture5.reu" "Bitmaptexture_ncl1_4.reu";
connectAttr "place2dTexture5.rev" "Bitmaptexture_ncl1_4.rev";
connectAttr "place2dTexture5.vt1" "Bitmaptexture_ncl1_4.vt1";
connectAttr "place2dTexture5.vt2" "Bitmaptexture_ncl1_4.vt2";
connectAttr "place2dTexture5.vt3" "Bitmaptexture_ncl1_4.vt3";
connectAttr "place2dTexture5.vc1" "Bitmaptexture_ncl1_4.vc1";
connectAttr "place2dTexture5.ofs" "Bitmaptexture_ncl1_4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_4.ws";
connectAttr "__1711D048FBXASC046png.oc" "mesh_5SG1.ss";
connectAttr "mesh_5SG1.msg" "materialInfo2.sg";
connectAttr "__1711D048FBXASC046png.msg" "materialInfo2.m";
connectAttr "Bitmaptexture_ncl1_4.msg" "materialInfo2.t" -na;
connectAttr "Bitmaptexture_ncl1_5.oc" "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.bc"
		;
connectAttr "Bitmaptexture_ncl1_6.oa" "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.s"
		;
connectAttr "Bitmaptexture_ncl1_22.oc" "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.sc"
		;
connectAttr "Bitmaptexture_ncl1_7.oa" "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.sr"
		;
connectAttr "place2dTexture6.o" "Bitmaptexture_ncl1_5.uv";
connectAttr "place2dTexture6.ofu" "Bitmaptexture_ncl1_5.ofu";
connectAttr "place2dTexture6.ofv" "Bitmaptexture_ncl1_5.ofv";
connectAttr "place2dTexture6.rf" "Bitmaptexture_ncl1_5.rf";
connectAttr "place2dTexture6.reu" "Bitmaptexture_ncl1_5.reu";
connectAttr "place2dTexture6.rev" "Bitmaptexture_ncl1_5.rev";
connectAttr "place2dTexture6.vt1" "Bitmaptexture_ncl1_5.vt1";
connectAttr "place2dTexture6.vt2" "Bitmaptexture_ncl1_5.vt2";
connectAttr "place2dTexture6.vt3" "Bitmaptexture_ncl1_5.vt3";
connectAttr "place2dTexture6.vc1" "Bitmaptexture_ncl1_5.vc1";
connectAttr "place2dTexture6.ofs" "Bitmaptexture_ncl1_5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_5.ws";
connectAttr "place2dTexture7.o" "Bitmaptexture_ncl1_6.uv";
connectAttr "place2dTexture7.ofu" "Bitmaptexture_ncl1_6.ofu";
connectAttr "place2dTexture7.ofv" "Bitmaptexture_ncl1_6.ofv";
connectAttr "place2dTexture7.rf" "Bitmaptexture_ncl1_6.rf";
connectAttr "place2dTexture7.reu" "Bitmaptexture_ncl1_6.reu";
connectAttr "place2dTexture7.rev" "Bitmaptexture_ncl1_6.rev";
connectAttr "place2dTexture7.vt1" "Bitmaptexture_ncl1_6.vt1";
connectAttr "place2dTexture7.vt2" "Bitmaptexture_ncl1_6.vt2";
connectAttr "place2dTexture7.vt3" "Bitmaptexture_ncl1_6.vt3";
connectAttr "place2dTexture7.vc1" "Bitmaptexture_ncl1_6.vc1";
connectAttr "place2dTexture7.ofs" "Bitmaptexture_ncl1_6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_6.ws";
connectAttr "place2dTexture8.o" "Bitmaptexture_ncl1_8.uv";
connectAttr "place2dTexture8.ofu" "Bitmaptexture_ncl1_8.ofu";
connectAttr "place2dTexture8.ofv" "Bitmaptexture_ncl1_8.ofv";
connectAttr "place2dTexture8.rf" "Bitmaptexture_ncl1_8.rf";
connectAttr "place2dTexture8.reu" "Bitmaptexture_ncl1_8.reu";
connectAttr "place2dTexture8.rev" "Bitmaptexture_ncl1_8.rev";
connectAttr "place2dTexture8.vt1" "Bitmaptexture_ncl1_8.vt1";
connectAttr "place2dTexture8.vt2" "Bitmaptexture_ncl1_8.vt2";
connectAttr "place2dTexture8.vt3" "Bitmaptexture_ncl1_8.vt3";
connectAttr "place2dTexture8.vc1" "Bitmaptexture_ncl1_8.vc1";
connectAttr "place2dTexture8.ofs" "Bitmaptexture_ncl1_8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_8.ws";
connectAttr "place2dTexture9.o" "Bitmaptexture_ncl1_7.uv";
connectAttr "place2dTexture9.ofu" "Bitmaptexture_ncl1_7.ofu";
connectAttr "place2dTexture9.ofv" "Bitmaptexture_ncl1_7.ofv";
connectAttr "place2dTexture9.rf" "Bitmaptexture_ncl1_7.rf";
connectAttr "place2dTexture9.reu" "Bitmaptexture_ncl1_7.reu";
connectAttr "place2dTexture9.rev" "Bitmaptexture_ncl1_7.rev";
connectAttr "place2dTexture9.vt1" "Bitmaptexture_ncl1_7.vt1";
connectAttr "place2dTexture9.vt2" "Bitmaptexture_ncl1_7.vt2";
connectAttr "place2dTexture9.vt3" "Bitmaptexture_ncl1_7.vt3";
connectAttr "place2dTexture9.vc1" "Bitmaptexture_ncl1_7.vc1";
connectAttr "place2dTexture9.ofs" "Bitmaptexture_ncl1_7.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_7.ws";
connectAttr "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.oc" "mesh_5SG2.ss"
		;
connectAttr "mesh_5SG2.msg" "materialInfo3.sg";
connectAttr "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.msg" "materialInfo3.m"
		;
connectAttr "Bitmaptexture_ncl1_5.msg" "materialInfo3.t" -na;
connectAttr "Bitmaptexture_ncl1_9.oc" "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.bc"
		;
connectAttr "Bitmaptexture_ncl1_10.oa" "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.s"
		;
connectAttr "Bitmaptexture_ncl1_23.oc" "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.sc"
		;
connectAttr "Bitmaptexture_ncl1_11.oa" "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.sr"
		;
connectAttr "place2dTexture10.o" "Bitmaptexture_ncl1_9.uv";
connectAttr "place2dTexture10.ofu" "Bitmaptexture_ncl1_9.ofu";
connectAttr "place2dTexture10.ofv" "Bitmaptexture_ncl1_9.ofv";
connectAttr "place2dTexture10.rf" "Bitmaptexture_ncl1_9.rf";
connectAttr "place2dTexture10.reu" "Bitmaptexture_ncl1_9.reu";
connectAttr "place2dTexture10.rev" "Bitmaptexture_ncl1_9.rev";
connectAttr "place2dTexture10.vt1" "Bitmaptexture_ncl1_9.vt1";
connectAttr "place2dTexture10.vt2" "Bitmaptexture_ncl1_9.vt2";
connectAttr "place2dTexture10.vt3" "Bitmaptexture_ncl1_9.vt3";
connectAttr "place2dTexture10.vc1" "Bitmaptexture_ncl1_9.vc1";
connectAttr "place2dTexture10.ofs" "Bitmaptexture_ncl1_9.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_9.ws";
connectAttr "place2dTexture11.o" "Bitmaptexture_ncl1_10.uv";
connectAttr "place2dTexture11.ofu" "Bitmaptexture_ncl1_10.ofu";
connectAttr "place2dTexture11.ofv" "Bitmaptexture_ncl1_10.ofv";
connectAttr "place2dTexture11.rf" "Bitmaptexture_ncl1_10.rf";
connectAttr "place2dTexture11.reu" "Bitmaptexture_ncl1_10.reu";
connectAttr "place2dTexture11.rev" "Bitmaptexture_ncl1_10.rev";
connectAttr "place2dTexture11.vt1" "Bitmaptexture_ncl1_10.vt1";
connectAttr "place2dTexture11.vt2" "Bitmaptexture_ncl1_10.vt2";
connectAttr "place2dTexture11.vt3" "Bitmaptexture_ncl1_10.vt3";
connectAttr "place2dTexture11.vc1" "Bitmaptexture_ncl1_10.vc1";
connectAttr "place2dTexture11.ofs" "Bitmaptexture_ncl1_10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_10.ws";
connectAttr "place2dTexture12.o" "Bitmaptexture_ncl1_12.uv";
connectAttr "place2dTexture12.ofu" "Bitmaptexture_ncl1_12.ofu";
connectAttr "place2dTexture12.ofv" "Bitmaptexture_ncl1_12.ofv";
connectAttr "place2dTexture12.rf" "Bitmaptexture_ncl1_12.rf";
connectAttr "place2dTexture12.reu" "Bitmaptexture_ncl1_12.reu";
connectAttr "place2dTexture12.rev" "Bitmaptexture_ncl1_12.rev";
connectAttr "place2dTexture12.vt1" "Bitmaptexture_ncl1_12.vt1";
connectAttr "place2dTexture12.vt2" "Bitmaptexture_ncl1_12.vt2";
connectAttr "place2dTexture12.vt3" "Bitmaptexture_ncl1_12.vt3";
connectAttr "place2dTexture12.vc1" "Bitmaptexture_ncl1_12.vc1";
connectAttr "place2dTexture12.ofs" "Bitmaptexture_ncl1_12.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_12.ws";
connectAttr "place2dTexture13.o" "Bitmaptexture_ncl1_11.uv";
connectAttr "place2dTexture13.ofu" "Bitmaptexture_ncl1_11.ofu";
connectAttr "place2dTexture13.ofv" "Bitmaptexture_ncl1_11.ofv";
connectAttr "place2dTexture13.rf" "Bitmaptexture_ncl1_11.rf";
connectAttr "place2dTexture13.reu" "Bitmaptexture_ncl1_11.reu";
connectAttr "place2dTexture13.rev" "Bitmaptexture_ncl1_11.rev";
connectAttr "place2dTexture13.vt1" "Bitmaptexture_ncl1_11.vt1";
connectAttr "place2dTexture13.vt2" "Bitmaptexture_ncl1_11.vt2";
connectAttr "place2dTexture13.vt3" "Bitmaptexture_ncl1_11.vt3";
connectAttr "place2dTexture13.vc1" "Bitmaptexture_ncl1_11.vc1";
connectAttr "place2dTexture13.ofs" "Bitmaptexture_ncl1_11.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_11.ws";
connectAttr "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.oc" "mesh_5SG3.ss"
		;
connectAttr "mesh_5SG3.msg" "materialInfo4.sg";
connectAttr "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.msg" "materialInfo4.m"
		;
connectAttr "Bitmaptexture_ncl1_9.msg" "materialInfo4.t" -na;
connectAttr "Bitmaptexture_ncl1_13.oc" "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.bc"
		;
connectAttr "Bitmaptexture_ncl1_14.oa" "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.s"
		;
connectAttr "Bitmaptexture_ncl1_24.oc" "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.sc"
		;
connectAttr "Bitmaptexture_ncl1_15.oa" "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.sr"
		;
connectAttr "place2dTexture14.o" "Bitmaptexture_ncl1_13.uv";
connectAttr "place2dTexture14.ofu" "Bitmaptexture_ncl1_13.ofu";
connectAttr "place2dTexture14.ofv" "Bitmaptexture_ncl1_13.ofv";
connectAttr "place2dTexture14.rf" "Bitmaptexture_ncl1_13.rf";
connectAttr "place2dTexture14.reu" "Bitmaptexture_ncl1_13.reu";
connectAttr "place2dTexture14.rev" "Bitmaptexture_ncl1_13.rev";
connectAttr "place2dTexture14.vt1" "Bitmaptexture_ncl1_13.vt1";
connectAttr "place2dTexture14.vt2" "Bitmaptexture_ncl1_13.vt2";
connectAttr "place2dTexture14.vt3" "Bitmaptexture_ncl1_13.vt3";
connectAttr "place2dTexture14.vc1" "Bitmaptexture_ncl1_13.vc1";
connectAttr "place2dTexture14.ofs" "Bitmaptexture_ncl1_13.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_13.ws";
connectAttr "place2dTexture15.o" "Bitmaptexture_ncl1_14.uv";
connectAttr "place2dTexture15.ofu" "Bitmaptexture_ncl1_14.ofu";
connectAttr "place2dTexture15.ofv" "Bitmaptexture_ncl1_14.ofv";
connectAttr "place2dTexture15.rf" "Bitmaptexture_ncl1_14.rf";
connectAttr "place2dTexture15.reu" "Bitmaptexture_ncl1_14.reu";
connectAttr "place2dTexture15.rev" "Bitmaptexture_ncl1_14.rev";
connectAttr "place2dTexture15.vt1" "Bitmaptexture_ncl1_14.vt1";
connectAttr "place2dTexture15.vt2" "Bitmaptexture_ncl1_14.vt2";
connectAttr "place2dTexture15.vt3" "Bitmaptexture_ncl1_14.vt3";
connectAttr "place2dTexture15.vc1" "Bitmaptexture_ncl1_14.vc1";
connectAttr "place2dTexture15.ofs" "Bitmaptexture_ncl1_14.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_14.ws";
connectAttr "place2dTexture16.o" "Bitmaptexture_ncl1_16.uv";
connectAttr "place2dTexture16.ofu" "Bitmaptexture_ncl1_16.ofu";
connectAttr "place2dTexture16.ofv" "Bitmaptexture_ncl1_16.ofv";
connectAttr "place2dTexture16.rf" "Bitmaptexture_ncl1_16.rf";
connectAttr "place2dTexture16.reu" "Bitmaptexture_ncl1_16.reu";
connectAttr "place2dTexture16.rev" "Bitmaptexture_ncl1_16.rev";
connectAttr "place2dTexture16.vt1" "Bitmaptexture_ncl1_16.vt1";
connectAttr "place2dTexture16.vt2" "Bitmaptexture_ncl1_16.vt2";
connectAttr "place2dTexture16.vt3" "Bitmaptexture_ncl1_16.vt3";
connectAttr "place2dTexture16.vc1" "Bitmaptexture_ncl1_16.vc1";
connectAttr "place2dTexture16.ofs" "Bitmaptexture_ncl1_16.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_16.ws";
connectAttr "place2dTexture17.o" "Bitmaptexture_ncl1_15.uv";
connectAttr "place2dTexture17.ofu" "Bitmaptexture_ncl1_15.ofu";
connectAttr "place2dTexture17.ofv" "Bitmaptexture_ncl1_15.ofv";
connectAttr "place2dTexture17.rf" "Bitmaptexture_ncl1_15.rf";
connectAttr "place2dTexture17.reu" "Bitmaptexture_ncl1_15.reu";
connectAttr "place2dTexture17.rev" "Bitmaptexture_ncl1_15.rev";
connectAttr "place2dTexture17.vt1" "Bitmaptexture_ncl1_15.vt1";
connectAttr "place2dTexture17.vt2" "Bitmaptexture_ncl1_15.vt2";
connectAttr "place2dTexture17.vt3" "Bitmaptexture_ncl1_15.vt3";
connectAttr "place2dTexture17.vc1" "Bitmaptexture_ncl1_15.vc1";
connectAttr "place2dTexture17.ofs" "Bitmaptexture_ncl1_15.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_15.ws";
connectAttr "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.oc" "mesh_5SG4.ss"
		;
connectAttr "mesh_5SG4.msg" "materialInfo5.sg";
connectAttr "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.msg" "materialInfo5.m"
		;
connectAttr "Bitmaptexture_ncl1_13.msg" "materialInfo5.t" -na;
connectAttr "Bitmaptexture_ncl1_17.oc" "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.bc"
		;
connectAttr "Bitmaptexture_ncl1_18.oa" "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.s"
		;
connectAttr "Bitmaptexture_ncl1_25.oc" "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.sc"
		;
connectAttr "Bitmaptexture_ncl1_19.oa" "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.sr"
		;
connectAttr "place2dTexture18.o" "Bitmaptexture_ncl1_17.uv";
connectAttr "place2dTexture18.ofu" "Bitmaptexture_ncl1_17.ofu";
connectAttr "place2dTexture18.ofv" "Bitmaptexture_ncl1_17.ofv";
connectAttr "place2dTexture18.rf" "Bitmaptexture_ncl1_17.rf";
connectAttr "place2dTexture18.reu" "Bitmaptexture_ncl1_17.reu";
connectAttr "place2dTexture18.rev" "Bitmaptexture_ncl1_17.rev";
connectAttr "place2dTexture18.vt1" "Bitmaptexture_ncl1_17.vt1";
connectAttr "place2dTexture18.vt2" "Bitmaptexture_ncl1_17.vt2";
connectAttr "place2dTexture18.vt3" "Bitmaptexture_ncl1_17.vt3";
connectAttr "place2dTexture18.vc1" "Bitmaptexture_ncl1_17.vc1";
connectAttr "place2dTexture18.ofs" "Bitmaptexture_ncl1_17.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_17.ws";
connectAttr "place2dTexture19.o" "Bitmaptexture_ncl1_18.uv";
connectAttr "place2dTexture19.ofu" "Bitmaptexture_ncl1_18.ofu";
connectAttr "place2dTexture19.ofv" "Bitmaptexture_ncl1_18.ofv";
connectAttr "place2dTexture19.rf" "Bitmaptexture_ncl1_18.rf";
connectAttr "place2dTexture19.reu" "Bitmaptexture_ncl1_18.reu";
connectAttr "place2dTexture19.rev" "Bitmaptexture_ncl1_18.rev";
connectAttr "place2dTexture19.vt1" "Bitmaptexture_ncl1_18.vt1";
connectAttr "place2dTexture19.vt2" "Bitmaptexture_ncl1_18.vt2";
connectAttr "place2dTexture19.vt3" "Bitmaptexture_ncl1_18.vt3";
connectAttr "place2dTexture19.vc1" "Bitmaptexture_ncl1_18.vc1";
connectAttr "place2dTexture19.ofs" "Bitmaptexture_ncl1_18.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_18.ws";
connectAttr "place2dTexture20.o" "Bitmaptexture_ncl1_20.uv";
connectAttr "place2dTexture20.ofu" "Bitmaptexture_ncl1_20.ofu";
connectAttr "place2dTexture20.ofv" "Bitmaptexture_ncl1_20.ofv";
connectAttr "place2dTexture20.rf" "Bitmaptexture_ncl1_20.rf";
connectAttr "place2dTexture20.reu" "Bitmaptexture_ncl1_20.reu";
connectAttr "place2dTexture20.rev" "Bitmaptexture_ncl1_20.rev";
connectAttr "place2dTexture20.vt1" "Bitmaptexture_ncl1_20.vt1";
connectAttr "place2dTexture20.vt2" "Bitmaptexture_ncl1_20.vt2";
connectAttr "place2dTexture20.vt3" "Bitmaptexture_ncl1_20.vt3";
connectAttr "place2dTexture20.vc1" "Bitmaptexture_ncl1_20.vc1";
connectAttr "place2dTexture20.ofs" "Bitmaptexture_ncl1_20.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_20.ws";
connectAttr "place2dTexture21.o" "Bitmaptexture_ncl1_19.uv";
connectAttr "place2dTexture21.ofu" "Bitmaptexture_ncl1_19.ofu";
connectAttr "place2dTexture21.ofv" "Bitmaptexture_ncl1_19.ofv";
connectAttr "place2dTexture21.rf" "Bitmaptexture_ncl1_19.rf";
connectAttr "place2dTexture21.reu" "Bitmaptexture_ncl1_19.reu";
connectAttr "place2dTexture21.rev" "Bitmaptexture_ncl1_19.rev";
connectAttr "place2dTexture21.vt1" "Bitmaptexture_ncl1_19.vt1";
connectAttr "place2dTexture21.vt2" "Bitmaptexture_ncl1_19.vt2";
connectAttr "place2dTexture21.vt3" "Bitmaptexture_ncl1_19.vt3";
connectAttr "place2dTexture21.vc1" "Bitmaptexture_ncl1_19.vc1";
connectAttr "place2dTexture21.ofs" "Bitmaptexture_ncl1_19.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_19.ws";
connectAttr "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.oc" "mesh_5SG5.ss"
		;
connectAttr "mesh_5SG5.msg" "materialInfo6.sg";
connectAttr "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.msg" "materialInfo6.m"
		;
connectAttr "Bitmaptexture_ncl1_17.msg" "materialInfo6.t" -na;
connectAttr "place2dTexture22.o" "Bitmaptexture_ncl1_21.uv";
connectAttr "place2dTexture22.ofu" "Bitmaptexture_ncl1_21.ofu";
connectAttr "place2dTexture22.ofv" "Bitmaptexture_ncl1_21.ofv";
connectAttr "place2dTexture22.rf" "Bitmaptexture_ncl1_21.rf";
connectAttr "place2dTexture22.reu" "Bitmaptexture_ncl1_21.reu";
connectAttr "place2dTexture22.rev" "Bitmaptexture_ncl1_21.rev";
connectAttr "place2dTexture22.vt1" "Bitmaptexture_ncl1_21.vt1";
connectAttr "place2dTexture22.vt2" "Bitmaptexture_ncl1_21.vt2";
connectAttr "place2dTexture22.vt3" "Bitmaptexture_ncl1_21.vt3";
connectAttr "place2dTexture22.vc1" "Bitmaptexture_ncl1_21.vc1";
connectAttr "place2dTexture22.ofs" "Bitmaptexture_ncl1_21.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_21.ws";
connectAttr "place2dTexture23.o" "Bitmaptexture_ncl1_22.uv";
connectAttr "place2dTexture23.ofu" "Bitmaptexture_ncl1_22.ofu";
connectAttr "place2dTexture23.ofv" "Bitmaptexture_ncl1_22.ofv";
connectAttr "place2dTexture23.rf" "Bitmaptexture_ncl1_22.rf";
connectAttr "place2dTexture23.reu" "Bitmaptexture_ncl1_22.reu";
connectAttr "place2dTexture23.rev" "Bitmaptexture_ncl1_22.rev";
connectAttr "place2dTexture23.vt1" "Bitmaptexture_ncl1_22.vt1";
connectAttr "place2dTexture23.vt2" "Bitmaptexture_ncl1_22.vt2";
connectAttr "place2dTexture23.vt3" "Bitmaptexture_ncl1_22.vt3";
connectAttr "place2dTexture23.vc1" "Bitmaptexture_ncl1_22.vc1";
connectAttr "place2dTexture23.ofs" "Bitmaptexture_ncl1_22.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_22.ws";
connectAttr "place2dTexture24.o" "Bitmaptexture_ncl1_23.uv";
connectAttr "place2dTexture24.ofu" "Bitmaptexture_ncl1_23.ofu";
connectAttr "place2dTexture24.ofv" "Bitmaptexture_ncl1_23.ofv";
connectAttr "place2dTexture24.rf" "Bitmaptexture_ncl1_23.rf";
connectAttr "place2dTexture24.reu" "Bitmaptexture_ncl1_23.reu";
connectAttr "place2dTexture24.rev" "Bitmaptexture_ncl1_23.rev";
connectAttr "place2dTexture24.vt1" "Bitmaptexture_ncl1_23.vt1";
connectAttr "place2dTexture24.vt2" "Bitmaptexture_ncl1_23.vt2";
connectAttr "place2dTexture24.vt3" "Bitmaptexture_ncl1_23.vt3";
connectAttr "place2dTexture24.vc1" "Bitmaptexture_ncl1_23.vc1";
connectAttr "place2dTexture24.ofs" "Bitmaptexture_ncl1_23.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_23.ws";
connectAttr "place2dTexture25.o" "Bitmaptexture_ncl1_24.uv";
connectAttr "place2dTexture25.ofu" "Bitmaptexture_ncl1_24.ofu";
connectAttr "place2dTexture25.ofv" "Bitmaptexture_ncl1_24.ofv";
connectAttr "place2dTexture25.rf" "Bitmaptexture_ncl1_24.rf";
connectAttr "place2dTexture25.reu" "Bitmaptexture_ncl1_24.reu";
connectAttr "place2dTexture25.rev" "Bitmaptexture_ncl1_24.rev";
connectAttr "place2dTexture25.vt1" "Bitmaptexture_ncl1_24.vt1";
connectAttr "place2dTexture25.vt2" "Bitmaptexture_ncl1_24.vt2";
connectAttr "place2dTexture25.vt3" "Bitmaptexture_ncl1_24.vt3";
connectAttr "place2dTexture25.vc1" "Bitmaptexture_ncl1_24.vc1";
connectAttr "place2dTexture25.ofs" "Bitmaptexture_ncl1_24.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_24.ws";
connectAttr "place2dTexture26.o" "Bitmaptexture_ncl1_25.uv";
connectAttr "place2dTexture26.ofu" "Bitmaptexture_ncl1_25.ofu";
connectAttr "place2dTexture26.ofv" "Bitmaptexture_ncl1_25.ofv";
connectAttr "place2dTexture26.rf" "Bitmaptexture_ncl1_25.rf";
connectAttr "place2dTexture26.reu" "Bitmaptexture_ncl1_25.reu";
connectAttr "place2dTexture26.rev" "Bitmaptexture_ncl1_25.rev";
connectAttr "place2dTexture26.vt1" "Bitmaptexture_ncl1_25.vt1";
connectAttr "place2dTexture26.vt2" "Bitmaptexture_ncl1_25.vt2";
connectAttr "place2dTexture26.vt3" "Bitmaptexture_ncl1_25.vt3";
connectAttr "place2dTexture26.vc1" "Bitmaptexture_ncl1_25.vc1";
connectAttr "place2dTexture26.ofs" "Bitmaptexture_ncl1_25.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Bitmaptexture_ncl1_25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Bitmaptexture_ncl1_25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Bitmaptexture_ncl1_25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Bitmaptexture_ncl1_25.ws";
connectAttr "layerManager.dli[1]" "Reference.id";
connectAttr "sharedReferenceNode.sr" "modelRN.sr";
connectAttr ":time1.o" "timeToUnitConversion1.i";
connectAttr "mesh_5SG.pa" ":renderPartition.st" -na;
connectAttr "mesh_5SG1.pa" ":renderPartition.st" -na;
connectAttr "mesh_5SG2.pa" ":renderPartition.st" -na;
connectAttr "mesh_5SG3.pa" ":renderPartition.st" -na;
connectAttr "mesh_5SG4.pa" ":renderPartition.st" -na;
connectAttr "mesh_5SG5.pa" ":renderPartition.st" -na;
connectAttr "__16D87F08FBXASC046png__16D88308FBXASC046png__170E4308FBXASC046png__170E4308FBXASC046png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "__1711D048FBXASC046png.msg" ":defaultShaderList1.s" -na;
connectAttr "__1711C648FBXASC046png__1711CC48FBXASC046png__1711DA08FBXASC046png__1711DA08FBXASC046png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "__1711AEC8FBXASC046png__1711E9C8FBXASC046png__1711DC08FBXASC046png__1711DC08FBXASC046png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "__1711E3C8FBXASC046png__1711E5C8FBXASC046png__16D890C8FBXASC046png__16D890C8FBXASC046png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "__16C44408FBXASC046png__16C44608FBXASC046png__16C44BC8FBXASC046png__16C44BC8FBXASC046png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Bitmaptexture.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_10.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_11.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_16.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_15.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_21.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_22.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_23.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bitmaptexture_ncl1_25.msg" ":defaultTextureList1.tx" -na;
// End of PlayerRig_BonfireSit.0003.ma
