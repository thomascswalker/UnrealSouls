//Maya ASCII 2024 scene
//Name: PlayerRig_BonfireSit.0001.ma
//Last modified: Tue, Jun 27, 2023 12:49:15 PM
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
fileInfo "UUID" "7E5213A3-4A65-9D3E-6F62-739AA3620B07";
createNode transform -s -n "persp";
	rename -uid "87FFBE54-42A2-E19F-08BC-40B55E2261FC";
	setAttr ".t" -type "double3" -119.95817432850083 264.2855776897473 113.63153161057078 ;
	setAttr ".r" -type "double3" -47.138352729876516 672.19999999993502 4.734937014024079e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F5A0726-4AFE-AB76-0C62-33B2EF12195B";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 279.67236689709773;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 48.60436091927545 24.300795268940924 44.267942556821495 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "imagePlane2" -p "perspShape";
	rename -uid "2C718E90-4860-54E1-A0BD-8C843ACB2A54";
createNode transform -s -n "top";
	rename -uid "B35311C3-42DC-6C51-737A-D39428662633";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EC40FE56-4690-3215-5B9B-81A39D1A8D4B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
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
	setAttr ".t" -type "double3" -1000.1 41.108481441379674 -19.970882044939732 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "C5944C37-4EE0-DC05-66E1-E3B74590F5DA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 116.42331144410939;
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
	setAttr ".db" 256.32418717504623;
	setAttr ".tws" -1.4787793334710982e-06;
createNode transform -n "camera1" -p "camera1_group";
	rename -uid "4FB25AB5-4833-3482-777F-719896624BF7";
	setAttr ".t" -type "double3" -251.46898990775873 83.321848527373191 4.5044269755204089 ;
	setAttr ".s" -type "double3" 17.393650881072332 17.393650881072332 17.393650881072332 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "8C331078-4A7E-BF8B-2593-1DB7A48FA9B2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 17.999987882312212;
	setAttr ".coi" 256.32418717504623;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 148.57207210424986 69.143556326901688 22.462862555654056 ;
	setAttr ".jc" yes;
createNode transform -n "camera1_aim" -p "camera1_group";
	rename -uid "D186C30B-4E2A-52AB-187A-51ACC4352A4A";
	setAttr ".t" -type "double3" 4.3269525713560881 66.877494631825897 4.8330104922901453 ;
	setAttr ".s" -type "double3" 10.003215234947048 10.003215234947048 10.003215234947048 ;
	setAttr ".drp" yes;
createNode locator -n "camera1_aimShape" -p "camera1_aim";
	rename -uid "D767288C-496B-D821-86C1-7489DFA35734";
	setAttr -k off ".v" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6F72025C-4EDE-3398-98CC-6D8D5744FC27";
	setAttr -s 70 ".lnk";
	setAttr -s 70 ".slnk";
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|left\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1_group|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 860\n            -height 1032\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 0\n            -pivots 0\n            -textures 1\n            -strokes 1\n            -motionTrails 0\n            -clipGhosts 0\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 859\n            -height 1032\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 860\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 860\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 859\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 859\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr -s 186 ".phl";
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
		"modelRN" 261
		2 "|model:SKM_Player_LodGroup|model:LOD0|model:PlayerCharacter|model:PlayerCharacterShape" 
		"visibility" " -k 0 1"
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
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R" 
		"rotate" " -type \"double3\" 8.07836214103581618 -23.98060498001251872 -14.43967531342903499"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R" 
		"rotate" " -type \"double3\" -2.90062542021600445 -3.06314447543070756 16.16616524561715451"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R|model:IKXKnee_R" 
		"rotate" " -type \"double3\" 0 0 -35.28685080946537056"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_R|model:IKXOffsetHip_R|model:IKXHip_R|model:IKXKnee_R|model:IKXAnkle_R|model:IKXToes_R" 
		"rotate" " -type \"double3\" -1.0893444309794913e-05 -7.461433247345721e-06 0.00010236958863125692"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_R|model:IKXOffsetShoulder_R|model:IKXShoulder_R" 
		"rotate" " -type \"double3\" -0.03245871344179143 -1.89151023671726914 -3.23073104365593711"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_R|model:IKXOffsetShoulder_R|model:IKXShoulder_R|model:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 19.62502165904720286"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M" 
		"translate" " -type \"double3\" -6.04635270893656696 -3.0467848522224088 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M" 
		"rotate" " -type \"double3\" 0 0 -0.00092543195343873627"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M" 
		"rotate" " -type \"double3\" 8.5377364620051143e-07 0 -2.38329923324887849"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 0 0 3.86414526475020903"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M|model:IKSpSpine1Part1_M" 
		"rotate" " -type \"double3\" 0 0 -1.47960748144894461"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintRoot_M|model:IKfake0Spine_M|model:IKSpRootPart1_M|model:IKSpRootPart2_M|model:IKSpSpine1_M|model:IKSpSpine1Part1_M|model:IKSpSpine1Part2_M" 
		"rotate" " -type \"double3\" 8.3679995599684134e-07 -1.6939679063660248e-07 -0.0003130463267859145"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L" 
		"rotate" " -type \"double3\" 51.43821780288438106 -4.33223242246373808 24.38745548559868226"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L|model:IKXKnee_L" 
		"rotate" " -type \"double3\" 0 0 -33.40277578722828622"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintHip_L|model:IKXOffsetHip_L|model:IKXHip_L|model:IKXKnee_L|model:IKXAnkle_L|model:IKXToes_L" 
		"rotate" " -type \"double3\" -7.7364550400034008e-06 1.5555359762539424e-06 9.8808137329670266e-05"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_L|model:IKXOffsetShoulder_L|model:IKXShoulder_L" 
		"rotate" " -type \"double3\" -3.50057599569555045 -18.58258134614847989 -22.88049835758174666"
		
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKJoints|model:IKParentConstraintShoulder_L|model:IKXOffsetShoulder_L|model:IKXShoulder_L|model:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 -9.39030898761779298"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetKnee_R|model:TwistFollowParentKnee_R|model:UnTwistKnee_R" 
		"rotate" " -type \"double3\" 0 0 -35.28685080946538477"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetHip_R|model:TwistFollowParentHip_R|model:UnTwistHip_R" 
		"rotate" " -type \"double3\" -0.30306268693938582 -2.13500984643424596 16.15640887144824234"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetWrist_R|model:TwistFollowParentWrist_R|model:UnTwistWrist_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetElbow_R|model:TwistFollowParentElbow_R|model:UnTwistElbow_R" 
		"rotate" " -type \"double3\" 0 0 12.36247383783833875"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetShoulder_R|model:TwistFollowParentShoulder_R|model:UnTwistShoulder_R" 
		"rotate" " -type \"double3\" -35.07120372181961443 57.97622953086850117 -59.39444743467361576"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetKnee_L|model:TwistFollowParentKnee_L|model:UnTwistKnee_L" 
		"rotate" " -type \"double3\" 0 0 -33.40277578722834306"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetHip_L|model:TwistFollowParentHip_L|model:UnTwistHip_L" 
		"rotate" " -type \"double3\" -3.32499063862698563 -23.00071381706147378 16.23736538270849294"
		
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetWrist_L|model:TwistFollowParentWrist_L|model:UnTwistWrist_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetElbow_L|model:TwistFollowParentElbow_L|model:UnTwistElbow_L" 
		"rotate" " -type \"double3\" 0 0 22.47560430101952633"
		2 "|model:Group|model:MotionSystem|model:TwistSystem|model:TwistFollowParentOffsetShoulder_L|model:TwistFollowParentShoulder_L|model:UnTwistShoulder_L" 
		"rotate" " -type \"double3\" -37.62456181319363679 62.57228904965735694 -58.55033605109787942"
		
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateX" 
		"modelRN.placeHolderList[1]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateY" 
		"modelRN.placeHolderList[2]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateZ" 
		"modelRN.placeHolderList[3]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleX" 
		"modelRN.placeHolderList[4]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleY" 
		"modelRN.placeHolderList[5]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleZ" 
		"modelRN.placeHolderList[6]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateZ" 
		"modelRN.placeHolderList[7]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateX" 
		"modelRN.placeHolderList[8]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateY" 
		"modelRN.placeHolderList[9]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w0" 
		"modelRN.placeHolderList[10]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w1" 
		"modelRN.placeHolderList[11]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.w2" 
		"modelRN.placeHolderList[12]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.visibility" 
		"modelRN.placeHolderList[13]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateX" 
		"modelRN.placeHolderList[14]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateY" 
		"modelRN.placeHolderList[15]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateZ" 
		"modelRN.placeHolderList[16]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleX" 
		"modelRN.placeHolderList[17]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleY" 
		"modelRN.placeHolderList[18]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleZ" 
		"modelRN.placeHolderList[19]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateX" 
		"modelRN.placeHolderList[20]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateY" 
		"modelRN.placeHolderList[21]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateZ" 
		"modelRN.placeHolderList[22]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w0" 
		"modelRN.placeHolderList[23]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w1" 
		"modelRN.placeHolderList[24]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.w2" 
		"modelRN.placeHolderList[25]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.visibility" 
		"modelRN.placeHolderList[26]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleX" 
		"modelRN.placeHolderList[27]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleY" 
		"modelRN.placeHolderList[28]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleZ" 
		"modelRN.placeHolderList[29]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateX" 
		"modelRN.placeHolderList[30]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateY" 
		"modelRN.placeHolderList[31]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateZ" 
		"modelRN.placeHolderList[32]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateX" 
		"modelRN.placeHolderList[33]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateY" 
		"modelRN.placeHolderList[34]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateZ" 
		"modelRN.placeHolderList[35]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKFollowRoot|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKInbetweenRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKInbetweenRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:HipSwingerStabilizer|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKInbetweenSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKInbetweenSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.visibility" 
		"modelRN.placeHolderList[36]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleX" 
		"modelRN.placeHolderList[37]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleY" 
		"modelRN.placeHolderList[38]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleZ" 
		"modelRN.placeHolderList[39]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.Global" 
		"modelRN.placeHolderList[40]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateX" 
		"modelRN.placeHolderList[41]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateY" 
		"modelRN.placeHolderList[42]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateZ" 
		"modelRN.placeHolderList[43]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateX" 
		"modelRN.placeHolderList[44]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateY" 
		"modelRN.placeHolderList[45]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateZ" 
		"modelRN.placeHolderList[46]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKInbetweenNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKInbetweenNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalStaticHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.visibility" 
		"modelRN.placeHolderList[47]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateX" 
		"modelRN.placeHolderList[48]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateZ" 
		"modelRN.placeHolderList[49]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateY" 
		"modelRN.placeHolderList[50]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleX" 
		"modelRN.placeHolderList[51]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleY" 
		"modelRN.placeHolderList[52]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleZ" 
		"modelRN.placeHolderList[53]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateX" 
		"modelRN.placeHolderList[54]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateY" 
		"modelRN.placeHolderList[55]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateZ" 
		"modelRN.placeHolderList[56]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[57]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateY" 
		"modelRN.placeHolderList[58]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[59]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.visibility" 
		"modelRN.placeHolderList[60]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleX" 
		"modelRN.placeHolderList[61]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleY" 
		"modelRN.placeHolderList[62]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleZ" 
		"modelRN.placeHolderList[63]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateX" 
		"modelRN.placeHolderList[64]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateY" 
		"modelRN.placeHolderList[65]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateZ" 
		"modelRN.placeHolderList[66]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateX" 
		"modelRN.placeHolderList[67]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateY" 
		"modelRN.placeHolderList[68]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateZ" 
		"modelRN.placeHolderList[69]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.visibility" 
		"modelRN.placeHolderList[70]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleX" 
		"modelRN.placeHolderList[71]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleY" 
		"modelRN.placeHolderList[72]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleZ" 
		"modelRN.placeHolderList[73]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateX" 
		"modelRN.placeHolderList[74]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateY" 
		"modelRN.placeHolderList[75]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateZ" 
		"modelRN.placeHolderList[76]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateY" 
		"modelRN.placeHolderList[77]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateZ" 
		"modelRN.placeHolderList[78]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateX" 
		"modelRN.placeHolderList[79]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.visibility" 
		"modelRN.placeHolderList[80]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleX" 
		"modelRN.placeHolderList[81]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleY" 
		"modelRN.placeHolderList[82]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleZ" 
		"modelRN.placeHolderList[83]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[84]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateY" 
		"modelRN.placeHolderList[85]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"modelRN.placeHolderList[86]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateY" 
		"modelRN.placeHolderList[87]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateZ" 
		"modelRN.placeHolderList[88]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateX" 
		"modelRN.placeHolderList[89]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.visibility" 
		"modelRN.placeHolderList[90]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleX" 
		"modelRN.placeHolderList[91]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleY" 
		"modelRN.placeHolderList[92]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleZ" 
		"modelRN.placeHolderList[93]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateX" 
		"modelRN.placeHolderList[94]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateY" 
		"modelRN.placeHolderList[95]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateZ" 
		"modelRN.placeHolderList[96]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateY" 
		"modelRN.placeHolderList[97]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateZ" 
		"modelRN.placeHolderList[98]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateX" 
		"modelRN.placeHolderList[99]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.visibility" 
		"modelRN.placeHolderList[100]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleX" 
		"modelRN.placeHolderList[101]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleY" 
		"modelRN.placeHolderList[102]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleZ" 
		"modelRN.placeHolderList[103]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateX" 
		"modelRN.placeHolderList[104]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateY" 
		"modelRN.placeHolderList[105]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateZ" 
		"modelRN.placeHolderList[106]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateX" 
		"modelRN.placeHolderList[107]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateY" 
		"modelRN.placeHolderList[108]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateZ" 
		"modelRN.placeHolderList[109]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.visibility" 
		"modelRN.placeHolderList[110]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleY" 
		"modelRN.placeHolderList[111]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleZ" 
		"modelRN.placeHolderList[112]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleX" 
		"modelRN.placeHolderList[113]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateX" 
		"modelRN.placeHolderList[114]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateY" 
		"modelRN.placeHolderList[115]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateZ" 
		"modelRN.placeHolderList[116]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateX" 
		"modelRN.placeHolderList[117]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateY" 
		"modelRN.placeHolderList[118]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateZ" 
		"modelRN.placeHolderList[119]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.swivel" 
		"modelRN.placeHolderList[120]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rock" 
		"modelRN.placeHolderList[121]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.roll" 
		"modelRN.placeHolderList[122]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollStartAngle" 
		"modelRN.placeHolderList[123]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollEndAngle" 
		"modelRN.placeHolderList[124]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.stretchy" 
		"modelRN.placeHolderList[125]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.antiPop" 
		"modelRN.placeHolderList[126]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght1" 
		"modelRN.placeHolderList[127]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght2" 
		"modelRN.placeHolderList[128]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness1" 
		"modelRN.placeHolderList[129]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness2" 
		"modelRN.placeHolderList[130]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.volume" 
		"modelRN.placeHolderList[131]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.visibility" 
		"modelRN.placeHolderList[132]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateX" 
		"modelRN.placeHolderList[133]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateY" 
		"modelRN.placeHolderList[134]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateZ" 
		"modelRN.placeHolderList[135]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.follow" 
		"modelRN.placeHolderList[136]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.lock" 
		"modelRN.placeHolderList[137]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleY" 
		"modelRN.placeHolderList[138]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleZ" 
		"modelRN.placeHolderList[139]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleX" 
		"modelRN.placeHolderList[140]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateX" 
		"modelRN.placeHolderList[141]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateY" 
		"modelRN.placeHolderList[142]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateZ" 
		"modelRN.placeHolderList[143]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateX" 
		"modelRN.placeHolderList[144]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateY" 
		"modelRN.placeHolderList[145]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateZ" 
		"modelRN.placeHolderList[146]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.swivel" 
		"modelRN.placeHolderList[147]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rock" 
		"modelRN.placeHolderList[148]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.roll" 
		"modelRN.placeHolderList[149]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollStartAngle" 
		"modelRN.placeHolderList[150]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollEndAngle" 
		"modelRN.placeHolderList[151]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.stretchy" 
		"modelRN.placeHolderList[152]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.antiPop" 
		"modelRN.placeHolderList[153]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght1" 
		"modelRN.placeHolderList[154]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght2" 
		"modelRN.placeHolderList[155]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness1" 
		"modelRN.placeHolderList[156]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness2" 
		"modelRN.placeHolderList[157]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.volume" 
		"modelRN.placeHolderList[158]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.visibility" 
		"modelRN.placeHolderList[159]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateX" 
		"modelRN.placeHolderList[160]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateY" 
		"modelRN.placeHolderList[161]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateZ" 
		"modelRN.placeHolderList[162]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.follow" 
		"modelRN.placeHolderList[163]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKHandleFollowMain|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.lock" 
		"modelRN.placeHolderList[164]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateX" 
		"modelRN.placeHolderList[165]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateY" 
		"modelRN.placeHolderList[166]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateZ" 
		"modelRN.placeHolderList[167]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateY" 
		"modelRN.placeHolderList[168]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateX" 
		"modelRN.placeHolderList[169]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateZ" 
		"modelRN.placeHolderList[170]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.CenterBtwFeet" 
		"modelRN.placeHolderList[171]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootCenterBtwLegsBlended_M|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.visibility" 
		"modelRN.placeHolderList[172]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.spread" 
		"modelRN.placeHolderList[173]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.cup" 
		"modelRN.placeHolderList[174]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.indexCurl" 
		"modelRN.placeHolderList[175]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.middleCurl" 
		"modelRN.placeHolderList[176]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.ringCurl" 
		"modelRN.placeHolderList[177]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.pinkyCurl" 
		"modelRN.placeHolderList[178]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.thumbCurl" 
		"modelRN.placeHolderList[179]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.spread" 
		"modelRN.placeHolderList[180]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.cup" 
		"modelRN.placeHolderList[181]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.indexCurl" 
		"modelRN.placeHolderList[182]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.middleCurl" 
		"modelRN.placeHolderList[183]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.ringCurl" 
		"modelRN.placeHolderList[184]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.pinkyCurl" 
		"modelRN.placeHolderList[185]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.thumbCurl" 
		"modelRN.placeHolderList[186]" "";
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
	rename -uid "57F58865-4CD8-3ECA-1200-5099144762B3";
	setAttr ".cf" 0.004;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "74976AFA-4CDA-B403-CE01-9FAAD6FD82BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6.4166651785714288 -6.6669723800886995
		 22.458326530612243 -6.6669723800886995 44.916651360544215 -24.125276604077094 64.166644982993191 -21.711968313501679;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.061941124665098463 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.99807980496312154 0 0;
	setAttr -s 5 ".kox[2:4]"  0.061941124665098463 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.99807980496312154 0 0;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "80EAA953-41C5-E44B-3569-54B198381B6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.4166649659863948 0 22.458327168367347 0
		 44.916651573129251 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "D5B867D7-4F0A-C5AD-E0B6-28A5767D434F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.99360793167866 6.4166651785714288 -11.147002779418877
		 22.458326530612243 -11.147002779418877 44.916651360544215 27.364114347715727 64.166644982993191 42.625666496852737;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.036178046083371246 0.025846082338454732 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.9993453602141702 0.99966593421390215 
		0;
	setAttr -s 5 ".kox[2:4]"  0.036178046083371246 0.025846082338454732 
		1;
	setAttr -s 5 ".koy[2:4]"  0.9993453602141702 0.99966593421390215 
		0;
createNode animCurveTU -n "IKLeg_R_visibility";
	rename -uid "087A5ED6-489D-C43F-A679-598C5F9E19C0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6.4166649659863948 1 22.458325042517007 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "D9C4DA90-496B-CF8F-0540-56945C1989D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.4166649659863948 0 22.458327168367347 0
		 44.916651573129251 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "F1ADA5BA-4465-1893-2D61-779C0051C43B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -14.147950117007882 6.4166651785714288 -80.007999209594558
		 22.458326530612243 -80.007999209594558 44.916651360544215 24.209449158853264 64.166644982993191 7.299260636254461;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.93514795030414444 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.35425740788578763 0 0;
	setAttr -s 5 ".kox[2:4]"  0.93514795030414444 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.35425740788578763 0 0;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "BB2E4696-46AA-60BD-C530-A4B4FCAB3030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.4166649659863948 0 22.458327168367347 0
		 44.916651573129251 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "C52BA2F5-461C-E09A-923E-1C8C61D5A57C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6.4166649659863948 1 22.458327168367347 1
		 44.916651573129251 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "715618D0-438B-4C3A-7299-20871EC22D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6.4166649659863948 1 22.458327168367347 1
		 44.916651573129251 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "6B94E28B-43D6-66F3-6053-53997351FDE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6.4166649659863948 1 22.458327168367347 1
		 44.916651573129251 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "862E8535-4E37-B5F5-FC88-4FB1295C79B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "72B3FE15-4041-2501-8CFB-0A8498DD044B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "2561E3E6-4AC5-8FE2-3DC4-B39A21A1B824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30 6.4166649659863948 30 22.458325042517007 30;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "98D51422-4BCA-89F6-FB1E-D6859A683C37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 60 6.4166649659863948 60 22.458325042517007 60;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "CFBDF6BD-4AB4-08E4-EDAC-DBBA15045669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "B05DE5A3-48C9-9895-B8E0-25BC91B45219";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "A2364F75-4071-4972-6C53-1BAAD5683389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "26AE385F-4ED5-33A2-B977-05B32457E0B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6.4166649659863948 1 22.458325042517007 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "9E9B2E6A-4A03-FB6C-9874-39958329158C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6.4166649659863948 1 22.458325042517007 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "F33007DD-4346-0A7B-B23C-3DA682063DBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "65749CA5-4E9E-123F-2894-6588D0F13ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6.4166649659863948 0 22.458325042517007 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "2C960B2D-4F71-6E2B-9F9E-EEB609C4EAF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10 6.4166649659863948 10 22.458325042517007 10;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "F6428B89-49EC-3102-9382-549314FF2159";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.559483151099954 32.083323341836731 13.490456202881496;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "BCD4EAA8-4D38-9E24-0066-8381750A531C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "92EB76F4-475C-74B7-A59E-8495C1AFB5E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7416953133109132 32.083323341836731 23.061668928615674;
createNode animCurveTU -n "IKLeg_L_visibility";
	rename -uid "DBC20E54-4B9C-D92F-AB35-CDB0D15A752F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "C4D25514-458E-FF0C-6E5B-1DBAF8D70616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "B0D9AD43-4B49-2954-1B6A-FDAEAFC16DAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.1035649679103026 18 -35.935535538543249
		 25 -0.33950810853734531 32 34.578192435372706;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "ABB1AA4F-4E03-94C5-937C-08BCDCD444E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "5D046187-499C-ED74-A997-E982252E8272";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "41A3F2DD-44AA-1EC7-DBF8-EC9CACB30603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "4AFBA030-460F-18E5-9FC1-F88BAE813FB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "ADC0228A-4029-2190-A846-88AF893E6A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "D026E3A0-44CD-C758-348E-1CB7108B3D2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "51C9822F-46B6-A3B0-CCDE-7295245E769D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 30;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "61972D9A-4ED1-897C-BB76-E8AA1EF3F5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 60;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "2957F8E3-4949-1FFF-92A3-748CBEAC4F0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "DE78D3D6-4D80-BAFF-7CA0-85B0C8B8E1C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "849A1D7D-4644-ED93-33D3-F6AAD39CFCAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "CFAEC35A-4BB6-BA5E-D9AA-F78515D7EDB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "94BA6717-4EDF-3840-F542-F4BF1D558982";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "7035783E-4E52-9BBB-492D-7E9FF212C6A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "FE92359D-4791-1ACA-BD37-238F8C6DF3B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "F12C41AE-4671-3978-B3C6-23BD7AB1CF25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "8CEA630A-4C64-8616-1CCF-3E80AE6DA1FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16.041661777210884 4 64.166644982993191 0;
createNode animCurveTU -n "Fingers_R_cup";
	rename -uid "0A7448DE-4847-CF06-7CB5-21B23DEAE01E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "D3B25F26-435F-7AB3-3ABF-E7892D71EC33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 16.041661777210884 0 64.166644982993191 5;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "5D1B4050-4FAA-2CCF-FDE5-0880219CEC43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 16.041661777210884 0 64.166644982993191 5;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "465E3672-49DF-6D09-6794-1DA90DBE24D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 16.041661777210884 0 64.166644982993191 5;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "A5DE1E49-4DAF-2BDD-E029-39B600F7892C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 16.041661777210884 0 64.166644982993191 5;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "B83D3791-4080-86D4-6EC7-AF91E4E700E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 16.041661777210884 0 64.166644982993191 5;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "15004A62-4DB6-F5D7-9373-5C9E248AEC2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Fingers_L_cup";
	rename -uid "63DEBA83-45BA-1DFD-F9B5-5E92BF0C0A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "AC676956-4CE7-A22C-43A0-9A8EAE353253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "4F63FC62-4B13-7613-534E-608609D9DBEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "760B617A-43BA-36F2-39DB-9FAAC50210DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "9A6F26E7-4876-298F-03E8-38B015349CAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "C3A56D41-4326-5A36-E8D0-659BECD8B22B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "D81C6133-4C30-EC49-4766-1C96FD1D8B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "333A507A-4945-5E65-9001-4F9769C71151";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "F169E8A6-4401-3438-193A-BF96950BCC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKHead_M_visibility";
	rename -uid "C4E512F8-41DB-CCB1-D472-7F8BA0988E62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "DAB24E50-482E-A589-873B-05ACECDB727E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.057730961435684 32.083323341836731 -12.645109952138878;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "52C20635-4E40-9DF8-5F93-39A7C6D7703C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "A62EECBB-430D-97BF-C430-A88B1E6F66F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "90BF4246-474B-C926-36FA-FC8E55998CBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "D1A02322-4444-1CF6-E467-A0B47CE4843B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "07E04D3F-4850-91DB-ACC2-7E84CD402049";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "A8145C6A-42F7-145C-C25B-21ADDBD1ABB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "4DEC2600-45F8-2095-FF53-46ACEDDAC845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "952835C9-4F60-CDB7-09E3-E29BAA8716C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "AEFBB13A-44C3-8003-439A-BF8D58335716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKShoulder_L_visibility";
	rename -uid "CF49CCE6-4DF7-D292-6F26-D195601AD6C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "763BDCE6-4D46-D304-895B-5C804A1F1058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.6783501670130834 16.041661777210884 4.6030271134627938
		 32.083323767006803 27.730205444899454 54.541648809523807 42.14951170700612 64.166644982993191 44.022612336456334;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "C9C45A68-41D3-9E5B-60B4-00ABA76F7AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 75.391909468171946 16.041661777210884 44.49841210863945
		 32.083323767006803 63.406655177555919 54.541648809523807 28.681824866061849 64.166644982993191 29.624520010454198;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "AB25D2D7-4EFC-B612-00A8-26864231CEC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.650636348805904 16.041661777210884 -26.721376648857063
		 32.083323767006803 -45.762312012118244 54.541648809523807 -0.053347944794783747 64.166644982993191 12.533312842353061;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "55EA6256-4757-FFC9-84CE-E985DC51BAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "59A74EB2-4F24-1D30-32F2-C0ACE3AE1FB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "83A23331-47CB-B9AA-39EF-8D860DCF99F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTL -n "FKElbow_L_translateX";
	rename -uid "FD6F6867-4F4E-CCF4-749A-A686E0E5BFB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKElbow_L_translateY";
	rename -uid "4470BDE1-4496-9189-BEFB-69A895C002FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKElbow_L_translateZ";
	rename -uid "A0F01144-4431-C8F0-C499-BBBD7423C34B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKElbow_L_visibility";
	rename -uid "0C355503-4F7E-C500-3798-978118F7D860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKElbow_L_rotateX";
	rename -uid "9F16A7CD-4378-5C10-8351-74B43E3378A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16.041661777210884 0 54.541648809523807 -9.8634583919914895
		 64.166644982993191 -46.273568361752588;
createNode animCurveTA -n "FKElbow_L_rotateY";
	rename -uid "F77357F3-4E30-4FB8-EFA7-52AA672EFC0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16.041661777210884 0 54.541648809523807 7.3068365461585687
		 64.166644982993191 33.422993283004438;
createNode animCurveTA -n "FKElbow_L_rotateZ";
	rename -uid "36084064-4B78-3A84-5725-DCB47A1B1D0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 22.475604301019299 16.041661777210884 93.52654703456146
		 18 51.282791541979449 32.083323767006803 47.59628935047045 54.541648809523807 48.527095462363448
		 64.166644982993191 62.217168450053776;
createNode animCurveTU -n "FKElbow_L_scaleX";
	rename -uid "BF2F9256-4D7B-94DF-077C-188BDC6AF520";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKElbow_L_scaleY";
	rename -uid "6D7A723A-4686-0EDC-147B-E2B8F89A79DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKElbow_L_scaleZ";
	rename -uid "443991D9-48F0-C87F-2463-8E9E5AAA2B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "72052DA8-4CE7-E535-533A-05BF048C23BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "77DC1A63-435E-FCAA-4B17-66A62770F2E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "CA81549B-4FAA-E3F8-6437-8D9795DCA7FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKWrist_L_visibility";
	rename -uid "15C9A240-4A3D-95F7-7CDE-4B82D0BFB7D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKWrist_L_rotateX";
	rename -uid "948AD394-42E8-C1D5-B032-92814678A8C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "64CC7A38-4C95-2147-35C3-748546C2400D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "9A502B49-4062-E6EB-71CC-64812E9864E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "F6EE985F-41C6-AE16-50E9-D69B201CD7B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "745D9C49-4202-622B-D8A0-A084DFA28EDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "805C2FD3-4100-B517-F0D4-60B7149D507F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "A78A5992-45A2-3714-7434-BE8F50D849B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "D814DA10-4A6D-CC48-C221-12A90E048F73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "454025D9-4449-79C5-88CB-69A5150164BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKWrist_R_visibility";
	rename -uid "591E48F6-427E-2181-86AA-148FDA8D598D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "EB497012-4DC1-CF3B-D0C0-36B103DFA8A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "613E5011-45A9-C695-FC86-F58EF9D48FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 18 -89.587845687771377 19 -90.745684723866901
		 20 -81.232660388302349 21 -67.315063250940199 64.166644982993191 42.326770625841405;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "E66F32D0-4710-5833-2E4E-8589A109AC31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "8D7902ED-477F-3835-53F4-76969883E2F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "C075973F-4CD4-98B8-E498-64ADE9003308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "ADD35748-4220-C1C7-F670-7790D41B5032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "FKElbow_R_translateX";
	rename -uid "BABF80BB-4AE1-086A-ACAE-5196DFD4B57F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKElbow_R_translateY";
	rename -uid "430F7778-4AF7-C437-5310-A4901F650C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKElbow_R_translateZ";
	rename -uid "3B2ADF84-4830-80A7-3FB5-329E328FAB92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKElbow_R_visibility";
	rename -uid "B5FD5995-4EE5-697A-8D86-6E880F5D52F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKElbow_R_rotateX";
	rename -uid "FF3C03E0-457D-7AC6-F86F-D9B4839EA9A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 12 -4.3568043258791569 16 -5.0218753015773538
		 16.041661777210884 -9.8783733425329494 17 -9.4530444211861244 18 -9.8098307177410273
		 19 -6.9475701597097475 21 -6.5319835329167031 38 -9.2844178274797677 64.166644982993191 -9.2814558218517025;
createNode animCurveTA -n "FKElbow_R_rotateY";
	rename -uid "C8EFA35F-4D89-BB97-DAFA-AC84CC98FF85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 12 18.010528442341165 16 21.77000680169732
		 16.041661777210884 38.051394374131611 17 37.35219496167489 18 38.867295899788942
		 19 29.631913071518923 21 28.287317917977045 38 58.201880956718043 64.166644982993191 46.54147631643368;
createNode animCurveTA -n "FKElbow_R_rotateZ";
	rename -uid "B4D2F12B-4268-59B2-8DD8-938CDB6BF772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 12.36247383783814 12 13.549178016692816
		 16 13.329193749965286 16.041661777210884 15.776279822283263 17 15.164838811220067
		 18 14.734790961070331 19 12.326994851027727 21 10.758989495572205 32.083323767006803 -2.7783063090479252
		 38 -3.9061604502105038 50 24.776066093346387 64.166644982993191 -3.181118857947991;
createNode animCurveTU -n "FKElbow_R_scaleX";
	rename -uid "B4A190D2-4CBC-8E51-533E-76A3A75BE56F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKElbow_R_scaleY";
	rename -uid "C3F7AFA2-427D-C0DC-938E-EE8BF14CD082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKElbow_R_scaleZ";
	rename -uid "27593459-4DD9-4F6B-7FAF-A1BFBE85D1F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "A8DB3A39-48BA-4888-76AC-2CAB6E8A95E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "84094A50-4E98-7E3B-AC52-688D96C971ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "13E7E147-47D9-D4B8-BA26-87BF5E84EA2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKShoulder_R_visibility";
	rename -uid "67DC3750-43BA-90E8-DF5F-88B43EF12853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "5F39628B-4176-D929-B790-59BE57D165CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5179535081849327 12 10.608718403677388
		 15 10.271350935924632 18 19.038967464887275 21 20.634609394922283 38 36.937610450123749
		 44 42.126436513412337 48.12498405612245 40.62742402039364 51.333316964285714 44.50959572793127
		 64.166644982993191 9.1108621425699994;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "F9620940-4B78-639B-D992-A099C2E9F6FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 71.919886215651289 12 23.837944638140574
		 15 20.977248486165909 18 0.67174930287171963 21 18.589526739086917 38 39.058167107160287
		 44 32.20865038134599 48.12498405612245 46.271549809333941 51.333316964285714 44.886253231599383
		 64.166644982993191 73.709341082091299;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "69EFFA74-4717-A174-4017-318154117BE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -29.551582054876786 12 22.789785793521713
		 15 22.391058780294866 18 15.879984259664907 21 37.390053902098622 32.083323767006803 -42.391222803082158
		 38 -21.027772775851389 44 9.2704640435811001 48.12498405612245 33.14534491625448
		 51.333316964285714 46.415434281008707 57.74997980442177 84.452784481613506 64 71.705554244187638
		 64.166644982993191 86.310952504979184;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "569AF7D9-473D-868F-D841-55B7EB0A9E4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "CBB6F96E-4308-FC0C-2126-4086A24861AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "BF3E5738-4A42-1193-AA43-36A4B7000CBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "868768B6-44FA-5F49-D319-D197572D5C0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "361AFE0C-4069-8BCE-AE25-C3B3FBE0044C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "D6F7FE50-4125-B2DC-EC85-B18DF8CCC57E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKChest_M_visibility";
	rename -uid "104E28C3-4A68-E891-C74B-2CA0EF05DDC8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "8FD27F0D-4059-0696-5CB1-6E9853655C47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16.041661777210884 5.4336799092971741
		 21 20.373393206063508 32.083323767006803 4.7103148959049408 64.166644982993191 5.2011606917702302;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "695A5A0C-40EC-F598-A345-CCA0566ECEAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16.041661777210884 0 32.083323767006803 -2.7118977225065111
		 64.166644982993191 -1.5746809302718032;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "47862794-46F0-24B3-470A-28A057385567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.1030732086960757 16.041661777210884 0.070178108377373691
		 32.083323767006803 29.93564944177492 64.166644982993191 16.868486766700254;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "E08E8EA2-4231-9124-9C48-78B12154B42B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "9C82048F-48D5-698F-89FB-3D840D33617F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "0271DD2F-44AD-5FDD-1D99-A89795CD6F91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "3A8FFB17-4759-0F72-A5A1-0296C84CB411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "88C4A542-44B9-8A93-08A4-6F8814B06E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "0862E222-44D8-42AA-FEF0-0D981C67D812";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "64DF311B-4373-2465-98B4-5084DAAFB2A1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "44243B00-408F-4261-1412-E0AF42849E3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "0AB29FAA-4314-1692-AFF8-4F9E68A4A1E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "36C92DD2-4079-EFB9-B21E-72981D6B15CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3857147564112164 16.041661564625851 26.599946695290061;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "0D5B8E9E-4A20-F106-FBF5-749A1DDC1B62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "42C3BD8F-4371-5881-7484-FE9763185599";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "6153FF5D-419E-4342-0EB6-20A753180B6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKSpine1_M_w0";
	rename -uid "F088FA74-411B-E59C-2228-B9BFEDA857A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.3333333330000001 16.041661564625851 3.3333333330000001;
createNode animCurveTU -n "FKSpine1_M_w1";
	rename -uid "2BD24388-4D8A-5B39-D67F-298E8CD4021A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.6666666670000003 16.041661564625851 6.6666666670000003;
createNode animCurveTU -n "FKSpine1_M_w2";
	rename -uid "1242960C-4625-7B65-835E-69AEF30AF806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10 16.041661564625851 10;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "33453DB2-4228-D01F-107C-13AC7928C273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "E3EC4E27-4F4D-8DB9-17D9-E7922C34B79B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "62AAB32B-40B9-B66B-10A3-AB89A2D4D3F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTU -n "FKRoot_M_visibility";
	rename -uid "36DBE223-459B-6C3D-254A-7FA93BCD2E47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "CFAC131A-4124-7B43-219A-6483D0DC2AF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "E75A97E7-48F5-47EF-7211-4094A5F7F7DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "47C39C82-413E-E2DC-FEA1-36A5EF5CBEFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.4584599587149727 16.041661564625851 61.939406991511923;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "5B47887D-48BF-C15F-6E98-11AF8C36799A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "F6DF0821-484E-3D6C-8E10-D28AACE2C4F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "B93EA055-43FD-4D14-2DEA-37AD78096A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
createNode animCurveTU -n "FKRoot_M_w0";
	rename -uid "62F4A7BF-4E70-F2C6-BE69-C9B35FD0E676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.3333333330000001 16.041661564625851 3.3333333330000001;
createNode animCurveTU -n "FKRoot_M_w1";
	rename -uid "FE9237DE-4A2E-3C8E-E945-3B858CEB073D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.6666666670000003 16.041661564625851 6.6666666670000003;
createNode animCurveTU -n "FKRoot_M_w2";
	rename -uid "F05E65F6-4849-D321-D459-F1B4BE7A0D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10 16.041661564625851 10;
createNode animCurveTL -n "PoleLeg_R_translateX";
	rename -uid "5C58A31E-4C91-7C4A-1032-D28EC1883204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.9261674210251973 16.041661777210884 -4.0893721839558168
		 64.166644982993191 -10.975632666977218;
createNode animCurveTL -n "PoleLeg_R_translateY";
	rename -uid "390AD20B-4625-BBEB-FF7F-CF9487BF4311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.8043507627144035 16.041661777210884 -3.5984235919140808
		 64.166644982993191 -28.773098671448011;
createNode animCurveTL -n "PoleLeg_R_translateZ";
	rename -uid "851A324C-45F9-60BF-C287-AF94B7BC9126";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.3663286319788677 16.041661777210884 -3.9878189871015568
		 64.166644982993191 -4.157600595253065;
createNode animCurveTU -n "PoleLeg_R_follow";
	rename -uid "35295BB5-494C-0577-29F9-EE9C12718C20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16.041661564625851 10;
createNode animCurveTU -n "PoleLeg_R_lock";
	rename -uid "353FFC49-4ED2-ED8D-9BC5-81B3C3705730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16.041661564625851 0;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "5B23EC74-4089-B245-AC3D-11B6BFADA86E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 5.1254994568507009 16 2.7916199696670252
		 16.041661777210884 2.5385567197759324 21 -32.272359930538911 32.083323767006803 -80.811345539725835
		 64.166644982993191 -51.651071003173158;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "5B8ECD4B-41DA-0174-664C-8C939B47782B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.713226909738005 12 -77.647095755790204
		 16 -79.169809409647371 16.041661777210884 -78.713181911670418 21 -55.027789917563886
		 32.083323767006803 -40.168093328862454 64.166644982993191 -11.085130619303007;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "0DBDC960-4460-FEA0-3DDA-228EB0870D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 21.912948332779276 16 26.787174114972949
		 16.041661777210884 17.792296375503071 21 27.726092703927122 32.083323767006803 1.2124293536194237
		 64.166644982993191 -1.353014432629021;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "7A0FB95C-42E6-4DA2-049D-41BBB622431A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16.041661564625851 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "978A4076-40AB-B409-D47A-5C8CDC1FBE23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 -12.770945609861478;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "18535D5B-4A76-3D7B-8890-39B93E0E4253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.6680401771349551 16.041663265306124 -50.393740097674026
		 32.083323341836731 -84.664859966537463;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "BE566ABB-49EB-2B3D-10C8-FD9562F43DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.7033227738046537 16.041663265306124 -25.393616004774778
		 32.083323341836731 -29.616275545477585;
createNode animCurveTU -n "RootX_M_CenterBtwFeet";
	rename -uid "AC0B8510-4867-5ADC-504F-F8A11B5E6F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16.041661564625851 0;
createNode animCurveTL -n "PoleLeg_L_translateX";
	rename -uid "3C545479-4D39-2CE7-01A1-34B8C6BFE4C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.482999055501789 16.041661777210884 -52.766587456373856
		 18 -32.730456526028838 32.083323767006803 -20.984645703800059 64.166644982993191 6.0377350849787765;
createNode animCurveTL -n "PoleLeg_L_translateY";
	rename -uid "A82B828D-4C23-CAAA-4182-2AB902808B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.7421463560064678 16.041661777210884 -16.976340455030115
		 18 5.185545764517804 32.083323767006803 -18.087020513276116 64.166644982993191 -18.792237914102468;
createNode animCurveTL -n "PoleLeg_L_translateZ";
	rename -uid "82DC69E6-4F1A-27CE-C177-59B88BA0C6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -39.463001576850722 16.041661777210884 -66.994558939734191
		 18 -55.899754670401649 32.083323767006803 -71.181742494700046 64.166644982993191 -60.63461237866872;
createNode animCurveTU -n "PoleLeg_L_follow";
	rename -uid "4BD28E2E-4CB4-798B-9674-9CA4482F4D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16.041661564625851 10;
createNode animCurveTU -n "PoleLeg_L_lock";
	rename -uid "19E72C64-4B79-5716-6691-AD8B13F17EFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16.041661564625851 0;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "971B8AE9-4B86-5951-A331-1FAC6B4FB6D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0.8337381369669834 21 -6.3555409397933049;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "7407FC17-4CAF-9604-261E-15A55840076B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 -2.5670281603679688 21 34.58594725019767;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "4B80AF17-4107-7F71-692E-4DB6E39F0B7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 15.653689042923773 15 10.372506504637595
		 16 15.034836929518333 17 28.146899580255308 21 -17.851510007602748;
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
	setAttr -s 3 ".sol";
connectAttr "FKRoot_M_translateX.o" "modelRN.phl[1]";
connectAttr "FKRoot_M_translateY.o" "modelRN.phl[2]";
connectAttr "FKRoot_M_translateZ.o" "modelRN.phl[3]";
connectAttr "FKRoot_M_scaleX.o" "modelRN.phl[4]";
connectAttr "FKRoot_M_scaleY.o" "modelRN.phl[5]";
connectAttr "FKRoot_M_scaleZ.o" "modelRN.phl[6]";
connectAttr "FKRoot_M_rotateZ.o" "modelRN.phl[7]";
connectAttr "FKRoot_M_rotateX.o" "modelRN.phl[8]";
connectAttr "FKRoot_M_rotateY.o" "modelRN.phl[9]";
connectAttr "FKRoot_M_w0.o" "modelRN.phl[10]";
connectAttr "FKRoot_M_w1.o" "modelRN.phl[11]";
connectAttr "FKRoot_M_w2.o" "modelRN.phl[12]";
connectAttr "FKRoot_M_visibility.o" "modelRN.phl[13]";
connectAttr "FKSpine1_M_translateX.o" "modelRN.phl[14]";
connectAttr "FKSpine1_M_translateY.o" "modelRN.phl[15]";
connectAttr "FKSpine1_M_translateZ.o" "modelRN.phl[16]";
connectAttr "FKSpine1_M_scaleX.o" "modelRN.phl[17]";
connectAttr "FKSpine1_M_scaleY.o" "modelRN.phl[18]";
connectAttr "FKSpine1_M_scaleZ.o" "modelRN.phl[19]";
connectAttr "FKSpine1_M_rotateX.o" "modelRN.phl[20]";
connectAttr "FKSpine1_M_rotateY.o" "modelRN.phl[21]";
connectAttr "FKSpine1_M_rotateZ.o" "modelRN.phl[22]";
connectAttr "FKSpine1_M_w0.o" "modelRN.phl[23]";
connectAttr "FKSpine1_M_w1.o" "modelRN.phl[24]";
connectAttr "FKSpine1_M_w2.o" "modelRN.phl[25]";
connectAttr "FKSpine1_M_visibility.o" "modelRN.phl[26]";
connectAttr "FKChest_M_scaleX.o" "modelRN.phl[27]";
connectAttr "FKChest_M_scaleY.o" "modelRN.phl[28]";
connectAttr "FKChest_M_scaleZ.o" "modelRN.phl[29]";
connectAttr "FKChest_M_rotateX.o" "modelRN.phl[30]";
connectAttr "FKChest_M_rotateY.o" "modelRN.phl[31]";
connectAttr "FKChest_M_rotateZ.o" "modelRN.phl[32]";
connectAttr "FKChest_M_translateX.o" "modelRN.phl[33]";
connectAttr "FKChest_M_translateY.o" "modelRN.phl[34]";
connectAttr "FKChest_M_translateZ.o" "modelRN.phl[35]";
connectAttr "FKChest_M_visibility.o" "modelRN.phl[36]";
connectAttr "FKHead_M_scaleX.o" "modelRN.phl[37]";
connectAttr "FKHead_M_scaleY.o" "modelRN.phl[38]";
connectAttr "FKHead_M_scaleZ.o" "modelRN.phl[39]";
connectAttr "FKHead_M_Global.o" "modelRN.phl[40]";
connectAttr "FKHead_M_rotateX.o" "modelRN.phl[41]";
connectAttr "FKHead_M_rotateY.o" "modelRN.phl[42]";
connectAttr "FKHead_M_rotateZ.o" "modelRN.phl[43]";
connectAttr "FKHead_M_translateX.o" "modelRN.phl[44]";
connectAttr "FKHead_M_translateY.o" "modelRN.phl[45]";
connectAttr "FKHead_M_translateZ.o" "modelRN.phl[46]";
connectAttr "FKHead_M_visibility.o" "modelRN.phl[47]";
connectAttr "FKScapula_R_rotateX.o" "modelRN.phl[48]";
connectAttr "FKScapula_R_rotateZ.o" "modelRN.phl[49]";
connectAttr "FKScapula_R_rotateY.o" "modelRN.phl[50]";
connectAttr "FKShoulder_R_scaleX.o" "modelRN.phl[51]";
connectAttr "FKShoulder_R_scaleY.o" "modelRN.phl[52]";
connectAttr "FKShoulder_R_scaleZ.o" "modelRN.phl[53]";
connectAttr "FKShoulder_R_translateX.o" "modelRN.phl[54]";
connectAttr "FKShoulder_R_translateY.o" "modelRN.phl[55]";
connectAttr "FKShoulder_R_translateZ.o" "modelRN.phl[56]";
connectAttr "FKShoulder_R_rotateX.o" "modelRN.phl[57]";
connectAttr "FKShoulder_R_rotateY.o" "modelRN.phl[58]";
connectAttr "FKShoulder_R_rotateZ.o" "modelRN.phl[59]";
connectAttr "FKShoulder_R_visibility.o" "modelRN.phl[60]";
connectAttr "FKElbow_R_scaleX.o" "modelRN.phl[61]";
connectAttr "FKElbow_R_scaleY.o" "modelRN.phl[62]";
connectAttr "FKElbow_R_scaleZ.o" "modelRN.phl[63]";
connectAttr "FKElbow_R_rotateX.o" "modelRN.phl[64]";
connectAttr "FKElbow_R_rotateY.o" "modelRN.phl[65]";
connectAttr "FKElbow_R_rotateZ.o" "modelRN.phl[66]";
connectAttr "FKElbow_R_translateX.o" "modelRN.phl[67]";
connectAttr "FKElbow_R_translateY.o" "modelRN.phl[68]";
connectAttr "FKElbow_R_translateZ.o" "modelRN.phl[69]";
connectAttr "FKElbow_R_visibility.o" "modelRN.phl[70]";
connectAttr "FKWrist_R_scaleX.o" "modelRN.phl[71]";
connectAttr "FKWrist_R_scaleY.o" "modelRN.phl[72]";
connectAttr "FKWrist_R_scaleZ.o" "modelRN.phl[73]";
connectAttr "FKWrist_R_rotateX.o" "modelRN.phl[74]";
connectAttr "FKWrist_R_rotateY.o" "modelRN.phl[75]";
connectAttr "FKWrist_R_rotateZ.o" "modelRN.phl[76]";
connectAttr "FKWrist_R_translateY.o" "modelRN.phl[77]";
connectAttr "FKWrist_R_translateZ.o" "modelRN.phl[78]";
connectAttr "FKWrist_R_translateX.o" "modelRN.phl[79]";
connectAttr "FKWrist_R_visibility.o" "modelRN.phl[80]";
connectAttr "FKShoulder_L_scaleX.o" "modelRN.phl[81]";
connectAttr "FKShoulder_L_scaleY.o" "modelRN.phl[82]";
connectAttr "FKShoulder_L_scaleZ.o" "modelRN.phl[83]";
connectAttr "FKShoulder_L_rotateX.o" "modelRN.phl[84]";
connectAttr "FKShoulder_L_rotateY.o" "modelRN.phl[85]";
connectAttr "FKShoulder_L_rotateZ.o" "modelRN.phl[86]";
connectAttr "FKShoulder_L_translateY.o" "modelRN.phl[87]";
connectAttr "FKShoulder_L_translateZ.o" "modelRN.phl[88]";
connectAttr "FKShoulder_L_translateX.o" "modelRN.phl[89]";
connectAttr "FKShoulder_L_visibility.o" "modelRN.phl[90]";
connectAttr "FKElbow_L_scaleX.o" "modelRN.phl[91]";
connectAttr "FKElbow_L_scaleY.o" "modelRN.phl[92]";
connectAttr "FKElbow_L_scaleZ.o" "modelRN.phl[93]";
connectAttr "FKElbow_L_rotateX.o" "modelRN.phl[94]";
connectAttr "FKElbow_L_rotateY.o" "modelRN.phl[95]";
connectAttr "FKElbow_L_rotateZ.o" "modelRN.phl[96]";
connectAttr "FKElbow_L_translateY.o" "modelRN.phl[97]";
connectAttr "FKElbow_L_translateZ.o" "modelRN.phl[98]";
connectAttr "FKElbow_L_translateX.o" "modelRN.phl[99]";
connectAttr "FKElbow_L_visibility.o" "modelRN.phl[100]";
connectAttr "FKWrist_L_scaleX.o" "modelRN.phl[101]";
connectAttr "FKWrist_L_scaleY.o" "modelRN.phl[102]";
connectAttr "FKWrist_L_scaleZ.o" "modelRN.phl[103]";
connectAttr "FKWrist_L_rotateX.o" "modelRN.phl[104]";
connectAttr "FKWrist_L_rotateY.o" "modelRN.phl[105]";
connectAttr "FKWrist_L_rotateZ.o" "modelRN.phl[106]";
connectAttr "FKWrist_L_translateX.o" "modelRN.phl[107]";
connectAttr "FKWrist_L_translateY.o" "modelRN.phl[108]";
connectAttr "FKWrist_L_translateZ.o" "modelRN.phl[109]";
connectAttr "FKWrist_L_visibility.o" "modelRN.phl[110]";
connectAttr "IKLeg_R_scaleY.o" "modelRN.phl[111]";
connectAttr "IKLeg_R_scaleZ.o" "modelRN.phl[112]";
connectAttr "IKLeg_R_scaleX.o" "modelRN.phl[113]";
connectAttr "IKLeg_R_translateX.o" "modelRN.phl[114]";
connectAttr "IKLeg_R_translateY.o" "modelRN.phl[115]";
connectAttr "IKLeg_R_translateZ.o" "modelRN.phl[116]";
connectAttr "IKLeg_R_rotateX.o" "modelRN.phl[117]";
connectAttr "IKLeg_R_rotateY.o" "modelRN.phl[118]";
connectAttr "IKLeg_R_rotateZ.o" "modelRN.phl[119]";
connectAttr "IKLeg_R_swivel.o" "modelRN.phl[120]";
connectAttr "IKLeg_R_rock.o" "modelRN.phl[121]";
connectAttr "IKLeg_R_roll.o" "modelRN.phl[122]";
connectAttr "IKLeg_R_rollStartAngle.o" "modelRN.phl[123]";
connectAttr "IKLeg_R_rollEndAngle.o" "modelRN.phl[124]";
connectAttr "IKLeg_R_stretchy.o" "modelRN.phl[125]";
connectAttr "IKLeg_R_antiPop.o" "modelRN.phl[126]";
connectAttr "IKLeg_R_Lenght1.o" "modelRN.phl[127]";
connectAttr "IKLeg_R_Lenght2.o" "modelRN.phl[128]";
connectAttr "IKLeg_R_Fatness1.o" "modelRN.phl[129]";
connectAttr "IKLeg_R_Fatness2.o" "modelRN.phl[130]";
connectAttr "IKLeg_R_volume.o" "modelRN.phl[131]";
connectAttr "IKLeg_R_visibility.o" "modelRN.phl[132]";
connectAttr "PoleLeg_R_translateX.o" "modelRN.phl[133]";
connectAttr "PoleLeg_R_translateY.o" "modelRN.phl[134]";
connectAttr "PoleLeg_R_translateZ.o" "modelRN.phl[135]";
connectAttr "PoleLeg_R_follow.o" "modelRN.phl[136]";
connectAttr "PoleLeg_R_lock.o" "modelRN.phl[137]";
connectAttr "IKLeg_L_scaleY.o" "modelRN.phl[138]";
connectAttr "IKLeg_L_scaleZ.o" "modelRN.phl[139]";
connectAttr "IKLeg_L_scaleX.o" "modelRN.phl[140]";
connectAttr "IKLeg_L_translateX.o" "modelRN.phl[141]";
connectAttr "IKLeg_L_translateY.o" "modelRN.phl[142]";
connectAttr "IKLeg_L_translateZ.o" "modelRN.phl[143]";
connectAttr "IKLeg_L_rotateX.o" "modelRN.phl[144]";
connectAttr "IKLeg_L_rotateY.o" "modelRN.phl[145]";
connectAttr "IKLeg_L_rotateZ.o" "modelRN.phl[146]";
connectAttr "IKLeg_L_swivel.o" "modelRN.phl[147]";
connectAttr "IKLeg_L_rock.o" "modelRN.phl[148]";
connectAttr "IKLeg_L_roll.o" "modelRN.phl[149]";
connectAttr "IKLeg_L_rollStartAngle.o" "modelRN.phl[150]";
connectAttr "IKLeg_L_rollEndAngle.o" "modelRN.phl[151]";
connectAttr "IKLeg_L_stretchy.o" "modelRN.phl[152]";
connectAttr "IKLeg_L_antiPop.o" "modelRN.phl[153]";
connectAttr "IKLeg_L_Lenght1.o" "modelRN.phl[154]";
connectAttr "IKLeg_L_Lenght2.o" "modelRN.phl[155]";
connectAttr "IKLeg_L_Fatness1.o" "modelRN.phl[156]";
connectAttr "IKLeg_L_Fatness2.o" "modelRN.phl[157]";
connectAttr "IKLeg_L_volume.o" "modelRN.phl[158]";
connectAttr "IKLeg_L_visibility.o" "modelRN.phl[159]";
connectAttr "PoleLeg_L_translateX.o" "modelRN.phl[160]";
connectAttr "PoleLeg_L_translateY.o" "modelRN.phl[161]";
connectAttr "PoleLeg_L_translateZ.o" "modelRN.phl[162]";
connectAttr "PoleLeg_L_follow.o" "modelRN.phl[163]";
connectAttr "PoleLeg_L_lock.o" "modelRN.phl[164]";
connectAttr "RootX_M_translateX.o" "modelRN.phl[165]";
connectAttr "RootX_M_translateY.o" "modelRN.phl[166]";
connectAttr "RootX_M_translateZ.o" "modelRN.phl[167]";
connectAttr "RootX_M_rotateY.o" "modelRN.phl[168]";
connectAttr "RootX_M_rotateX.o" "modelRN.phl[169]";
connectAttr "RootX_M_rotateZ.o" "modelRN.phl[170]";
connectAttr "RootX_M_CenterBtwFeet.o" "modelRN.phl[171]";
connectAttr "RootX_M_visibility.o" "modelRN.phl[172]";
connectAttr "Fingers_R_spread.o" "modelRN.phl[173]";
connectAttr "Fingers_R_cup.o" "modelRN.phl[174]";
connectAttr "Fingers_R_indexCurl.o" "modelRN.phl[175]";
connectAttr "Fingers_R_middleCurl.o" "modelRN.phl[176]";
connectAttr "Fingers_R_ringCurl.o" "modelRN.phl[177]";
connectAttr "Fingers_R_pinkyCurl.o" "modelRN.phl[178]";
connectAttr "Fingers_R_thumbCurl.o" "modelRN.phl[179]";
connectAttr "Fingers_L_spread.o" "modelRN.phl[180]";
connectAttr "Fingers_L_cup.o" "modelRN.phl[181]";
connectAttr "Fingers_L_indexCurl.o" "modelRN.phl[182]";
connectAttr "Fingers_L_middleCurl.o" "modelRN.phl[183]";
connectAttr "Fingers_L_ringCurl.o" "modelRN.phl[184]";
connectAttr "Fingers_L_pinkyCurl.o" "modelRN.phl[185]";
connectAttr "Fingers_L_thumbCurl.o" "modelRN.phl[186]";
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
// End of PlayerRig_BonfireSit.0001.ma
