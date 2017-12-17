//Maya ASCII 2017ff05 scene
//Name: CyborgIdle_02_Dom.ma
//Last modified: Fri, Dec 08, 2017 07:58:32 AM
//Codeset: 1252
file -rdi 1 -ns "Cyborg_46_Dom" -rfn "Cyborg_46_DomRN" -op "v=0;" -typ "mayaAscii"
		 "E:/Junior Year/IGM Project 3/Cyborg/scenes/edits/Cyborg_46_Dom.ma";
file -rdi 2 -ns "AstronautModel_18_Dom" -dr 1 -rfn "Cyborg_46_Dom:AstronautModel_18_DomRN"
		 -op "VERS|2016|UVER|undef|MADE|undef|CHNG|Mon, Oct 02, 2017 06:38:42 PM|ICON|undef|INFO|undef|OBJN|983|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|"
		 -typ "mayaBinary" "E:/Junior Year/Film/AstronautModel/scenes/edits/AstronautModel_18_Dom.mb";
file -r -ns "Cyborg_46_Dom" -dr 1 -rfn "Cyborg_46_DomRN" -op "v=0;" -typ "mayaAscii"
		 "E:/Junior Year/IGM Project 3/Cyborg/scenes/edits/Cyborg_46_Dom.ma";
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "0DA54024-4F06-95DB-E490-4AACBAC59805";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.2646533929536208 5.2461278395546938 12.537203914217164 ;
	setAttr ".r" -type "double3" 2.6616472704193006 -18.999999999999144 5.2559693886888768e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "89A50DB5-4940-83EF-4C65-9C9B275336F5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.233433320546393;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "82991B99-49E2-A54F-FE59-33A911B887D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E7051BB8-4874-9A30-D2ED-9C89F47585BE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "8526F51C-4602-2255-60D4-75B4E9AF0B27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.79700137657432846 7.520087253873136 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E36CF218-41B8-503A-1F70-4E9780F9F812";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 20.871071056607217;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "720E82EA-44EF-667F-FA8A-7F911E44EEAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7524B7A6-4EA8-B80F-4E2E-DAB2E06EC159";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C6E3F0A9-4BCB-48E9-C9B1-E59BE646D05F";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "60CC18B2-428D-BC2E-9DEE-DC81FB9BDB9D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8C81A4A9-4BD0-724F-E7FD-75A4D55044FE";
createNode displayLayerManager -n "layerManager";
	rename -uid "E176B9EF-496F-6B37-F97E-91820A5360D1";
createNode displayLayer -n "defaultLayer";
	rename -uid "E5D0AE1B-4BA0-3A34-0E6C-C493AC0B17DF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3DFAE1A4-427E-B4F6-70C8-D680A19EDA96";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C6D0FAA9-4191-8395-F7E4-3DB3386254FD";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B8A09B15-4F99-8106-2168-98A8E255FD4C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 457\n            -height 818\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 199\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 457\n            -height 508\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 456\n            -height 818\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 78 -ps 2 50 78 -ps 3 0 22 -ps 4 100 22 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 457\\n    -height 818\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 457\\n    -height 818\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 456\\n    -height 818\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 456\\n    -height 818\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 0\\n    -height 199\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 0\\n    -height 199\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showAssignedMaterials 0\\n                -showTimeEditor 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -isSet 0\\n                -isSetMember 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                -ignoreOutlinerColor 0\\n                -renderFilterVisible 0\\n                -selectionOrder \\\"display\\\" \\n                -expandAttribute 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -displayValues 0\\n                -autoFit 1\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -showCurveNames 0\\n                -showActiveCurveNames 0\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                -valueLinesToggle 1\\n                -outliner \\\"graphEditor1OutlineEd\\\" \\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showAssignedMaterials 0\\n                -showTimeEditor 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -isSet 0\\n                -isSetMember 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                -ignoreOutlinerColor 0\\n                -renderFilterVisible 0\\n                -selectionOrder \\\"display\\\" \\n                -expandAttribute 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -displayValues 0\\n                -autoFit 1\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -showCurveNames 0\\n                -showActiveCurveNames 0\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                -valueLinesToggle 1\\n                -outliner \\\"graphEditor1OutlineEd\\\" \\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AEEE78AB-4B34-7933-59EF-729D0F36868D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 77 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "Cyborg_46_DomRN";
	rename -uid "B9FD4C90-403F-F135-34BD-F39D9C5CA76C";
	setAttr -s 139 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Cyborg_46_DomRN"
		"Cyborg_46_DomRN" 0
		"Cyborg_46_DomRN" 205
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"translate" " -type \"double3\" 0.00018693577056306371 -0.14315767084408948 -0.74886377778388291"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"translateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"translateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"translateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"rotate" " -type \"double3\" 4.840868125905387 0 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt" 
		"rotate" " -type \"double3\" 0 -21.002088920426488 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL" 
		"rotate" " -type \"double3\" 4.6964970673754598 -9.8971559849239945 -0.808993899822808"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL" 
		"rotate" " -type \"double3\" 8.0063691852423613 7.6471771459372357 1.0722917369597122"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL" 
		"rotate" " -type \"double3\" -12.596385043127809 0.0079057355515973586 -0.0017701382482134148"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL" 
		"rotate" " -type \"double3\" -8.4397064942154287 0 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"translate" " -type \"double3\" 2.0572041359946889 -2.7874066172135059 0.00061216984032920756"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"translateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"translateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"translateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"rotate" " -type \"double3\" 0 36.17580459884153 69.333862616408453"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL" 
		"translate" " -type \"double3\" 0.16826690379742981 0 0.49126969445665825"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL" 
		"translateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL" 
		"translateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL" 
		"rotate" " -type \"double3\" 0 11.279890922423128 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL" 
		"translate" " -type \"double3\" 0.19157498691982289 0 -1.3317149947283791"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL" 
		"translateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL" 
		"translateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL" 
		"rotate" " -type \"double3\" 0 11.760355519099473 0"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"translate" " -type \"double3\" -2.2051066296538306 -2.3552405780925572 0.76866498626751512"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"translateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"translateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"translateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"rotate" " -type \"double3\" 42.380938374535241 -36.852314487251178 -83.562163459802804"
		
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"rotateX" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"rotateY" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"rotateZ" " -av"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Index01" " -av -k 1 -4.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Index02" " -av -k 1 -4.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Index03" " -av -k 1 -4.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"________________" " -cb 1 -4.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Middle01" " -av -k 1 -4.8"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Middle02" " -av -k 1 -4.8"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Middle03" " -av -k 1 -4.8"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"______________" " -cb 1 -4.8"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Pinky01" " -av -k 1 -5.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Pinky02" " -av -k 1 -5.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Pinky03" " -av -k 1 -5.3999999999999995"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Thumb01" " -av -k 1 -3.2"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Thumb02" " -av -k 1 -3"
		2 "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL" 
		"Thumb03" " -av -k 1 1.5"
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.instObjGroups" "Cyborg_46_DomRN.placeHolderList[1]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.visibility" "Cyborg_46_DomRN.placeHolderList[2]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.translateX" "Cyborg_46_DomRN.placeHolderList[3]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.translateY" "Cyborg_46_DomRN.placeHolderList[4]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.translateZ" "Cyborg_46_DomRN.placeHolderList[5]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.rotateX" "Cyborg_46_DomRN.placeHolderList[6]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.rotateY" "Cyborg_46_DomRN.placeHolderList[7]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.rotateZ" "Cyborg_46_DomRN.placeHolderList[8]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.scaleX" "Cyborg_46_DomRN.placeHolderList[9]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.scaleY" "Cyborg_46_DomRN.placeHolderList[10]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL.scaleZ" "Cyborg_46_DomRN.placeHolderList[11]" 
		""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.translateX" 
		"Cyborg_46_DomRN.placeHolderList[12]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.translateY" 
		"Cyborg_46_DomRN.placeHolderList[13]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[14]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[15]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[16]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[17]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[18]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl.visibility" 
		"Cyborg_46_DomRN.placeHolderList[19]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[20]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[21]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[22]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[23]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt.visibility" 
		"Cyborg_46_DomRN.placeHolderList[24]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[25]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[26]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[27]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[28]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[29]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[30]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[31]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[32]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[33]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[34]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:L_ClavicleCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[35]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:L_ClavicleCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[36]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:L_ClavicleCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[37]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:L_ClavicleCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[38]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:L_ClavicleCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[39]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:R_ClavicleCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[40]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:R_ClavicleCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[41]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:R_ClavicleCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[42]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:R_ClavicleCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[43]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:R_ClavicleCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[44]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[45]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[46]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[47]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[48]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[49]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[50]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[51]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[52]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[53]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:MidSpineCTRLGRP|Cyborg_46_Dom:MidSpineCTRL|Cyborg_46_Dom:UpperChestCTRLGRP|Cyborg_46_Dom:UpperChestCTRL|Cyborg_46_Dom:ClavicleCTRLGRP|Cyborg_46_Dom:NeckCTRL|Cyborg_46_Dom:HeadCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[54]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[55]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[56]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[57]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[58]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:COGctrl|Cyborg_46_Dom:LowerSpineCTRLGRP|Cyborg_46_Dom:LowerSpinejnt|Cyborg_46_Dom:HipjntCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[59]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_elbowPVGRP|Cyborg_46_Dom:L_elbowPV.translateX" 
		"Cyborg_46_DomRN.placeHolderList[60]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_elbowPVGRP|Cyborg_46_Dom:L_elbowPV.translateY" 
		"Cyborg_46_DomRN.placeHolderList[61]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_elbowPVGRP|Cyborg_46_Dom:L_elbowPV.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[62]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_elbowPVGRP|Cyborg_46_Dom:L_elbowPV.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[63]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_elbowPVGRP|Cyborg_46_Dom:L_elbowPV.visibility" 
		"Cyborg_46_DomRN.placeHolderList[64]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[65]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[66]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[67]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[68]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[69]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[70]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[71]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[72]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.scaleX" 
		"Cyborg_46_DomRN.placeHolderList[73]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.scaleY" 
		"Cyborg_46_DomRN.placeHolderList[74]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_wristCTRLGRP|Cyborg_46_Dom:R_wristCTRL.scaleZ" 
		"Cyborg_46_DomRN.placeHolderList[75]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_elbowCTRLGRP|Cyborg_46_Dom:R_elbowCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[76]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_elbowCTRLGRP|Cyborg_46_Dom:R_elbowCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[77]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_elbowCTRLGRP|Cyborg_46_Dom:R_elbowCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[78]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_elbowCTRLGRP|Cyborg_46_Dom:R_elbowCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[79]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_elbowCTRLGRP|Cyborg_46_Dom:R_elbowCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[80]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.ToeTap" 
		"Cyborg_46_DomRN.placeHolderList[81]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.ToeTip" 
		"Cyborg_46_DomRN.placeHolderList[82]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.Swivel" 
		"Cyborg_46_DomRN.placeHolderList[83]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.HeelPeel" 
		"Cyborg_46_DomRN.placeHolderList[84]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.Ankle" 
		"Cyborg_46_DomRN.placeHolderList[85]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[86]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[87]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[88]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[89]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[90]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[91]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[92]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_FootCTRLGRP|Cyborg_46_Dom:L_FootCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[93]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.Toetap" 
		"Cyborg_46_DomRN.placeHolderList[94]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.HeelPeel" 
		"Cyborg_46_DomRN.placeHolderList[95]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.Swivel" 
		"Cyborg_46_DomRN.placeHolderList[96]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.ToeTip" 
		"Cyborg_46_DomRN.placeHolderList[97]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.Ankle" 
		"Cyborg_46_DomRN.placeHolderList[98]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[99]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[100]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[101]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[102]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[103]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[104]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[105]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_FootCTRLGRP|Cyborg_46_Dom:R_FootCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[106]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_KneePVGRP|Cyborg_46_Dom:L_kneePVCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[107]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_KneePVGRP|Cyborg_46_Dom:L_kneePVCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[108]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_KneePVGRP|Cyborg_46_Dom:L_kneePVCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[109]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_KneePVGRP|Cyborg_46_Dom:L_kneePVCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[110]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_KneePVGRP|Cyborg_46_Dom:L_kneePVCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[111]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_KneePVGRP|Cyborg_46_Dom:R_kneePVCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[112]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_KneePVGRP|Cyborg_46_Dom:R_kneePVCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[113]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_KneePVGRP|Cyborg_46_Dom:R_kneePVCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[114]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_KneePVGRP|Cyborg_46_Dom:R_kneePVCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[115]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:R_KneePVGRP|Cyborg_46_Dom:R_kneePVCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[116]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Index01" 
		"Cyborg_46_DomRN.placeHolderList[117]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Index02" 
		"Cyborg_46_DomRN.placeHolderList[118]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Index03" 
		"Cyborg_46_DomRN.placeHolderList[119]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Middle01" 
		"Cyborg_46_DomRN.placeHolderList[120]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Middle02" 
		"Cyborg_46_DomRN.placeHolderList[121]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Middle03" 
		"Cyborg_46_DomRN.placeHolderList[122]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Pinky01" 
		"Cyborg_46_DomRN.placeHolderList[123]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Pinky02" 
		"Cyborg_46_DomRN.placeHolderList[124]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Pinky03" 
		"Cyborg_46_DomRN.placeHolderList[125]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Thumb01" 
		"Cyborg_46_DomRN.placeHolderList[126]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Thumb02" 
		"Cyborg_46_DomRN.placeHolderList[127]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.Thumb03" 
		"Cyborg_46_DomRN.placeHolderList[128]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.rotateX" 
		"Cyborg_46_DomRN.placeHolderList[129]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.rotateY" 
		"Cyborg_46_DomRN.placeHolderList[130]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.rotateZ" 
		"Cyborg_46_DomRN.placeHolderList[131]" ""
		5 3 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.instObjGroups" 
		"Cyborg_46_DomRN.placeHolderList[132]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.visibility" 
		"Cyborg_46_DomRN.placeHolderList[133]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.translateX" 
		"Cyborg_46_DomRN.placeHolderList[134]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.translateY" 
		"Cyborg_46_DomRN.placeHolderList[135]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.translateZ" 
		"Cyborg_46_DomRN.placeHolderList[136]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.scaleX" 
		"Cyborg_46_DomRN.placeHolderList[137]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.scaleY" 
		"Cyborg_46_DomRN.placeHolderList[138]" ""
		5 4 "Cyborg_46_DomRN" "|Cyborg_46_Dom:MasterCTRL|Cyborg_46_Dom:CTRLGRP|Cyborg_46_Dom:L_wristCTRLGRP|Cyborg_46_Dom:L_wristCTRL.scaleZ" 
		"Cyborg_46_DomRN.placeHolderList[139]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode unknown -s -n "mentalrayItemsList";
	rename -uid "5DCF8DF0-4F07-78EE-1C40-4894249C9400";
createNode unknown -s -n "mentalrayGlobals";
	rename -uid "591816A1-4A5E-B9EC-CC1B-22A94E0D0DEE";
createNode unknown -s -n "miDefaultOptions";
	rename -uid "3010B45A-4DB3-C377-28EB-C1AB986D5FA4";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "50";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
	setAttr ".miSamplesMax" 50;
createNode unknown -s -n "miDefaultFramebuffer";
	rename -uid "87049995-472A-FF48-D653-4998D029B8B2";
createNode vectorRenderGlobals -s -n "vectorRenderGlobals";
	rename -uid "D55F1EEE-453C-853B-2FED-309DD49FF21F";
createNode objectSet -n "CyborgIdleCTRLS";
	rename -uid "5BE7A02E-461A-B305-C977-90ACE88921C0";
	setAttr ".ihi" 0;
	setAttr -s 18 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode animCurveTU -n "HeadCTRL_visibility";
	rename -uid "B39AA3FC-4673-EC74-A500-D3815F949D8D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "HeadCTRL_rotateX";
	rename -uid "AE4EDAE6-462A-1BA5-7531-5EA4CDA917B5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -8.4397064942154287 40 -8.4397064942154287
		 77 -8.4397064942154287;
createNode animCurveTA -n "HeadCTRL_rotateY";
	rename -uid "B9C398B4-4A66-CB2B-0386-1E9E93E92661";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "HeadCTRL_rotateZ";
	rename -uid "4B123868-42DB-2A06-42B5-8F848112A7D2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_wristCTRL_visibility";
	rename -uid "0E5D892C-4B8A-6BEF-DFCA-519A2D3DF589";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "R_wristCTRL_translateX";
	rename -uid "C6934165-4FA4-D5B7-A7A7-1EB3C43B0207";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 2.0569728768285183 40 2.1762603766379502
		 77 2.0569728768285183;
createNode animCurveTL -n "R_wristCTRL_translateY";
	rename -uid "635FD5A4-49E5-3455-3FFD-E28E00C82149";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7868181365651896 40 -3.0903666894127664
		 77 -2.7868181365651896;
createNode animCurveTL -n "R_wristCTRL_translateZ";
	rename -uid "B4F1C9F5-4D95-CFFD-A7DB-C484381DDE4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0.31576785007381103 77 0;
createNode animCurveTA -n "R_wristCTRL_rotateX";
	rename -uid "D2822F07-41B7-6F15-7BE5-CD864088AA7E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -7.8803683638901968e-015 40 -7.8803683638901968e-015
		 77 -7.8803683638901968e-015;
createNode animCurveTA -n "R_wristCTRL_rotateY";
	rename -uid "BECBCF4F-4AB9-984C-EAA5-EF883E62145F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 36.17580459884153 40 36.17580459884153
		 77 36.17580459884153;
createNode animCurveTA -n "R_wristCTRL_rotateZ";
	rename -uid "0BEC2999-4DDE-63F8-3E45-C08B472A8030";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 69.333862616408453 40 69.333862616408453
		 77 69.333862616408453;
createNode animCurveTU -n "R_wristCTRL_scaleX";
	rename -uid "84AD8221-44AB-8D4C-3698-0D99147BB7C7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "R_wristCTRL_scaleY";
	rename -uid "5253DB20-4EBB-426D-DB4E-6585D06E2694";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "R_wristCTRL_scaleZ";
	rename -uid "0E30F331-4F06-9926-2489-6EBA50C2274A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "UpperChestCTRL_visibility";
	rename -uid "75D68241-4C1D-0D67-E200-D985A7039794";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "UpperChestCTRL_rotateX";
	rename -uid "2DC8F374-4A8F-3843-7823-98B91D800ED0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 8.0063691852423613 40 8.0063691852423613
		 77 8.0063691852423613;
createNode animCurveTA -n "UpperChestCTRL_rotateY";
	rename -uid "1CC6F7FA-4DEE-3B38-4C21-4A8DE7F13264";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 7.6471771459372357 40 7.6471771459372357
		 77 7.6471771459372357;
createNode animCurveTA -n "UpperChestCTRL_rotateZ";
	rename -uid "A335C3A9-48B9-D9A7-C98D-6DBACAA67300";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.0722917369597122 40 1.0722917369597122
		 77 1.0722917369597122;
createNode animCurveTU -n "L_ClavicleCTRL_visibility";
	rename -uid "D3A78486-48B0-6ADB-E14E-5F81C03AAA21";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "L_ClavicleCTRL_rotateX";
	rename -uid "66987C63-42A1-986C-63BE-129BE44F90AD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "L_ClavicleCTRL_rotateY";
	rename -uid "70B2E95C-4483-4FC7-A055-A69E3F273D51";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "L_ClavicleCTRL_rotateZ";
	rename -uid "D50FB4B5-44E1-02F7-2AD4-80A145FDA924";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "HipjntCTRL_visibility";
	rename -uid "5C067B03-4373-AF5A-3BE0-E4B9CAB7D462";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "HipjntCTRL_rotateX";
	rename -uid "6C6FB48C-405C-8671-E479-DB9938F67FD2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "HipjntCTRL_rotateY";
	rename -uid "FAA5FA86-4CA9-21DD-C5E6-14A5AE5FEDB9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "HipjntCTRL_rotateZ";
	rename -uid "13A7E933-4811-39B3-EAE2-EE90494DB16F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "NeckCTRL_visibility";
	rename -uid "9F0D7D99-4CA7-2D33-2EEF-6CB276315662";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "NeckCTRL_rotateX";
	rename -uid "165C332B-41B2-7A0A-9CF1-199C6453F47B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -12.599532286172451 40 -10.976129589084282
		 77 -12.599532286172451;
createNode animCurveTA -n "NeckCTRL_rotateY";
	rename -uid "2B204E10-4464-104E-8C78-BA8581ED2E89";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 4.0779158885669888 77 0;
createNode animCurveTA -n "NeckCTRL_rotateZ";
	rename -uid "A1142308-4869-9996-CDC2-B6B62F4AA873";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 -0.91306809344149198 77 0;
createNode animCurveTU -n "R_ClavicleCTRL_visibility";
	rename -uid "CE6F4E74-412D-A8A0-EA78-199E8366719D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "R_ClavicleCTRL_rotateX";
	rename -uid "F8C84F11-4994-1141-9D01-F89AEDCEA67F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "R_ClavicleCTRL_rotateY";
	rename -uid "077655DC-48B6-306E-E05C-758F112C84E2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "R_ClavicleCTRL_rotateZ";
	rename -uid "98AF6E79-476F-44C3-4E61-9B9394F2743A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_elbowPV_visibility";
	rename -uid "24D382AF-4CCD-9B29-D995-84AA82123334";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "L_elbowPV_translateX";
	rename -uid "42EE2BB9-4C87-EC2B-B63A-E4A2BCAF63A4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "L_elbowPV_translateY";
	rename -uid "4B8F6350-4F37-0F17-954B-C5B118C6DA13";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "L_elbowPV_translateZ";
	rename -uid "82D6B5EA-4BDB-4FDD-53CC-F9847E7BF8E4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_visibility";
	rename -uid "E80D7FD7-42D0-45C6-1A08-568207E8E578";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "L_FootCTRL_translateX";
	rename -uid "3E263474-4AEE-776F-351A-1FA4A7237AD6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.16826690379742981 40 0.16826690379742981
		 77 0.16826690379742981;
createNode animCurveTL -n "L_FootCTRL_translateY";
	rename -uid "48AD7335-4D32-AA70-9F48-3CA6D24A7CFA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "L_FootCTRL_translateZ";
	rename -uid "D2C8F53A-49E6-741E-DAEA-2A92794ECC14";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.49126969445665825 40 0.49126969445665825
		 77 0.49126969445665825;
createNode animCurveTA -n "L_FootCTRL_rotateX";
	rename -uid "A0D5529C-4AFA-CEC0-737B-2987D8255132";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "L_FootCTRL_rotateY";
	rename -uid "4A789A2A-406A-2F7F-0EF5-9FBAA311B04B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 11.279890922423128 40 11.279890922423128
		 77 11.279890922423128;
createNode animCurveTA -n "L_FootCTRL_rotateZ";
	rename -uid "AA5C69E2-4BE5-9409-F96E-A39C7C2D7F96";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_ToeTap";
	rename -uid "BCD249F3-4942-7AA0-AA10-EBB4650A3CBA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_ToeTip";
	rename -uid "A6CF924B-4250-7F43-738A-1CBC95ED27EA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_Swivel";
	rename -uid "B11AD7D5-4F77-1BEC-E556-3DA25389893C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_HeelPeel";
	rename -uid "20B04679-44C2-45D8-7769-C4A8A5A6421F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_FootCTRL_Ankle";
	rename -uid "4AB08B7C-4873-7A65-D2EC-B1BD2C17C3FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_visibility";
	rename -uid "50DDD3F6-4979-02A3-8514-649069829FA6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "R_FootCTRL_translateX";
	rename -uid "E36A440C-4E0F-2D39-D98A-B6827499D8A8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.19157498691982289 40 0.19157498691982289
		 77 0.19157498691982289;
createNode animCurveTL -n "R_FootCTRL_translateY";
	rename -uid "B77A4BA2-4557-BB97-7E2D-218255DBD84A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "R_FootCTRL_translateZ";
	rename -uid "FCCD0738-4020-7D48-B2A6-BAAD971097B5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3317149947283791 40 -1.3317149947283791
		 77 -1.3317149947283791;
createNode animCurveTA -n "R_FootCTRL_rotateX";
	rename -uid "E8A31EC5-43F0-F6FD-AC0B-DCB15E409200";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "R_FootCTRL_rotateY";
	rename -uid "53ABCBC0-41AD-C188-AC07-A38DCCCE731B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 11.760355519099473 40 11.760355519099473
		 77 11.760355519099473;
createNode animCurveTA -n "R_FootCTRL_rotateZ";
	rename -uid "B2291177-45A9-B4EF-0BFA-FDB5DA8F35A6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_Toetap";
	rename -uid "07EA03FE-406C-53B9-524F-67A79A5DD62F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_HeelPeel";
	rename -uid "914646D5-4552-D6A2-8419-1DB05EB22175";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_Swivel";
	rename -uid "EA4AF559-45A6-C9F5-21CF-8581373F4D52";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_ToeTip";
	rename -uid "32FD6E45-4A49-6555-B3E3-B38F2CC20CCC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_FootCTRL_Ankle";
	rename -uid "3F50891F-4B34-385F-BC57-4FAF6A70406B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "R_elbowCTRL_visibility";
	rename -uid "AD31BFF4-49BB-D46C-C050-B2BB2307D995";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "R_elbowCTRL_translateX";
	rename -uid "86EC2348-491F-EBE5-AE14-E197801BAD52";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "R_elbowCTRL_translateY";
	rename -uid "B25822B0-40F0-28BC-2E2E-46A7FA82C974";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "R_elbowCTRL_translateZ";
	rename -uid "E40DA5C5-4D59-4DB6-6A7E-55B35505F165";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_wristCTRL_visibility";
	rename -uid "1FCED9AE-4212-8A88-7E56-82833F30CEFD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "L_wristCTRL_translateX";
	rename -uid "A1963EE0-4A9E-A65C-1F2F-D9B8BC949908";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -2.2056200518173137 40 -1.9407879708115461
		 77 -2.2056200518173137;
createNode animCurveTL -n "L_wristCTRL_translateY";
	rename -uid "E9E3186F-4CE9-4A4B-3FCA-79BCF47BA8F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3546706937472441 40 -2.6486269500918134
		 77 -2.3546706937472441;
createNode animCurveTL -n "L_wristCTRL_translateZ";
	rename -uid "47FFC84F-4059-D62F-F935-B0956EDB7F1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.76849616699561951 40 0.85557608342672764
		 77 0.76849616699561951;
createNode animCurveTA -n "L_wristCTRL_rotateX";
	rename -uid "D35632FB-4B56-EC0D-13FA-DFA681B9099B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 42.380938374535241 40 42.380938374535241
		 77 42.380938374535241;
createNode animCurveTA -n "L_wristCTRL_rotateY";
	rename -uid "590CADE3-4264-FF8B-19B1-5FB38292A990";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -36.852314487251178 40 -36.852314487251178
		 77 -36.852314487251178;
createNode animCurveTA -n "L_wristCTRL_rotateZ";
	rename -uid "C774931B-4A6C-9D53-5345-3ABD0E227F62";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -83.562163459802804 40 -83.562163459802804
		 77 -83.562163459802804;
createNode animCurveTU -n "L_wristCTRL_scaleX";
	rename -uid "8B1E6600-4558-4E18-F853-40BF79C3A515";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "L_wristCTRL_scaleY";
	rename -uid "FD65FAB0-49DF-4CFC-67A1-28A3657F17B9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "L_wristCTRL_scaleZ";
	rename -uid "4F0BA6AD-4BFD-6D9C-41E9-2B94BAA83943";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "L_wristCTRL_Index01";
	rename -uid "B92CED9D-4895-7D75-8E7E-669E00AD84B8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.3999999999999995 40 -4.3999999999999995
		 77 -4.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Index02";
	rename -uid "757C6717-4C59-EB0D-E1D3-DC84019F4B26";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.3999999999999995 40 -4.3999999999999995
		 77 -4.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Index03";
	rename -uid "97C31C6A-44FC-51D7-DEF8-13B855C35284";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.3999999999999995 40 -4.3999999999999995
		 77 -4.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Middle01";
	rename -uid "2278338F-49CA-3419-9D20-D2933E3EC2FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.8 40 -4.8 77 -4.8;
createNode animCurveTU -n "L_wristCTRL_Middle02";
	rename -uid "A37683E2-4632-6595-8EEE-91A52FF8CAA2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.8 40 -4.8 77 -4.8;
createNode animCurveTU -n "L_wristCTRL_Middle03";
	rename -uid "5DBFC526-48AE-43BE-791E-53A8C080CC9A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -4.8 40 -4.8 77 -4.8;
createNode animCurveTU -n "L_wristCTRL_Pinky01";
	rename -uid "1F4F663D-4070-0E8E-D33B-85B105219CF0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -5.3999999999999995 40 -5.3999999999999995
		 77 -5.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Pinky02";
	rename -uid "01A6EACE-4575-D3F7-D7DD-82AD41354C18";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -5.3999999999999995 40 -5.3999999999999995
		 77 -5.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Pinky03";
	rename -uid "DAED96ED-4550-E5C2-BEEA-E3877AD655B4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -5.3999999999999995 40 -5.3999999999999995
		 77 -5.3999999999999995;
createNode animCurveTU -n "L_wristCTRL_Thumb01";
	rename -uid "C7AEB60C-4F9A-36C0-15D2-01A684BFCED1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -3.2 40 -3.2 77 -3.2;
createNode animCurveTU -n "L_wristCTRL_Thumb02";
	rename -uid "A7EC97E1-46CD-20C0-4904-41BAE9D141E5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -3 40 -3 77 -3;
createNode animCurveTU -n "L_wristCTRL_Thumb03";
	rename -uid "F9EE22FD-4A33-E18A-853B-378B1C75A1E7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.5 40 1.5 77 1.5;
createNode animCurveTU -n "R_kneePVCTRL_visibility";
	rename -uid "3520B269-482B-02B8-9EBA-528033F5B66B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "R_kneePVCTRL_translateX";
	rename -uid "1729C977-4E9E-37F9-A85A-EF96DFA39FAC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "R_kneePVCTRL_translateY";
	rename -uid "FEF45F62-4D07-3A06-AF30-2C8E9A58815D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "R_kneePVCTRL_translateZ";
	rename -uid "25A2B1E0-4FAE-154D-C09E-CA9DB05AFD55";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "L_kneePVCTRL_visibility";
	rename -uid "9F4A8B79-4E31-F739-2B66-4C90FD822EE2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "L_kneePVCTRL_translateX";
	rename -uid "A7AE3B33-49E2-B09E-0DAD-3A91DEF12B49";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "L_kneePVCTRL_translateY";
	rename -uid "098EC514-41B6-2D88-55D9-9C92CF607B92";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "L_kneePVCTRL_translateZ";
	rename -uid "68148961-4EF1-18EB-9350-9681185C740D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "LowerSpinejnt_visibility";
	rename -uid "42EA7DF7-4A63-8DDC-5FB2-BF9DB5A7521E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "LowerSpinejnt_rotateX";
	rename -uid "44A7CCF6-40DC-73F2-7598-F0BDEE056FB6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "LowerSpinejnt_rotateY";
	rename -uid "4C2DC9ED-4F9B-F440-D7E8-27BF1589DF44";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -21.002088920426488 40 -21.002088920426488
		 77 -21.002088920426488;
createNode animCurveTA -n "LowerSpinejnt_rotateZ";
	rename -uid "C7F7D744-4B43-B706-2482-3997089B3D09";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "MidSpineCTRL_visibility";
	rename -uid "CCB122E1-4CC1-1D46-5592-0AB4D2D868FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTA -n "MidSpineCTRL_rotateX";
	rename -uid "D742FB9B-416F-43D0-9DF7-FA88EAD51FDE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 4.6964970673754598 40 4.6964970673754598
		 77 4.6964970673754598;
createNode animCurveTA -n "MidSpineCTRL_rotateY";
	rename -uid "D8B6B4D8-49D9-423C-FB72-87AEEE7967FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -9.8971559849239945 40 -9.8971559849239945
		 77 -9.8971559849239945;
createNode animCurveTA -n "MidSpineCTRL_rotateZ";
	rename -uid "BEFADD6F-42B7-C3D2-5615-E281BA57BB3B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.808993899822808 40 -0.808993899822808
		 77 -0.808993899822808;
createNode animCurveTU -n "MasterCTRL_visibility";
	rename -uid "35544C1E-4784-8C61-F3F2-8AB0495B0ADC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "MasterCTRL_translateX";
	rename -uid "A699EF59-4733-B1D2-0873-84A7CAA9F63D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "MasterCTRL_translateY";
	rename -uid "CCBA5A9E-40BE-CED7-FBD3-EB9BDC9A350E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTL -n "MasterCTRL_translateZ";
	rename -uid "EE65872A-496F-9982-EB9F-1FA296718F99";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "MasterCTRL_rotateX";
	rename -uid "E8CA6B85-4234-2853-96BB-349F5BB8C702";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "MasterCTRL_rotateY";
	rename -uid "F3C6D63B-4205-143C-AD3D-1A89747B1FF0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "MasterCTRL_rotateZ";
	rename -uid "513BE552-422F-FFFF-B4EC-3DA6CCBC7598";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTU -n "MasterCTRL_scaleX";
	rename -uid "BE42324B-4293-D470-E905-E1A806684FE5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "MasterCTRL_scaleY";
	rename -uid "DBDCCE6F-42BC-E7AD-D023-B5AEAF0D6114";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "MasterCTRL_scaleZ";
	rename -uid "2503ED73-449F-D837-028C-2785A3AA3C04";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTU -n "COGctrl_visibility";
	rename -uid "4918F148-4BDB-3C75-DB96-D281D423BA7A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 1 77 1;
createNode animCurveTL -n "COGctrl_translateX";
	rename -uid "85F0C588-411D-155F-30F3-339EF3448CF7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0.09642472151330761 77 0;
createNode animCurveTL -n "COGctrl_translateY";
	rename -uid "A4452D76-4F96-C262-E98D-668903CEC0C1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.14280872594311056 40 -0.32280057447501598
		 77 -0.14280872594311056;
createNode animCurveTL -n "COGctrl_translateZ";
	rename -uid "FD52BF88-4241-EC3F-D89B-CEB475AD6773";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.74973829913044998 40 -0.29864497950423002
		 77 -0.74973829913044998;
createNode animCurveTA -n "COGctrl_rotateX";
	rename -uid "DC1150BC-455B-B5ED-49DB-A2BB0BF640FA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 4.840868125905387 40 4.840868125905387
		 77 4.840868125905387;
createNode animCurveTA -n "COGctrl_rotateY";
	rename -uid "C1B46C28-4FB7-A577-6F90-90BD38CD5FC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
createNode animCurveTA -n "COGctrl_rotateZ";
	rename -uid "37A2C42B-4D83-C458-001F-81B6672BD7B8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 0 77 0;
select -ne :time1;
	setAttr ".o" 2;
	setAttr ".unw" 2;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 18 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 62 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :defaultTextureList1;
	setAttr -s 52 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 6 ".sol";
connectAttr "Cyborg_46_DomRN.phl[1]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "MasterCTRL_visibility.o" "Cyborg_46_DomRN.phl[2]";
connectAttr "MasterCTRL_translateX.o" "Cyborg_46_DomRN.phl[3]";
connectAttr "MasterCTRL_translateY.o" "Cyborg_46_DomRN.phl[4]";
connectAttr "MasterCTRL_translateZ.o" "Cyborg_46_DomRN.phl[5]";
connectAttr "MasterCTRL_rotateX.o" "Cyborg_46_DomRN.phl[6]";
connectAttr "MasterCTRL_rotateY.o" "Cyborg_46_DomRN.phl[7]";
connectAttr "MasterCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[8]";
connectAttr "MasterCTRL_scaleX.o" "Cyborg_46_DomRN.phl[9]";
connectAttr "MasterCTRL_scaleY.o" "Cyborg_46_DomRN.phl[10]";
connectAttr "MasterCTRL_scaleZ.o" "Cyborg_46_DomRN.phl[11]";
connectAttr "COGctrl_translateX.o" "Cyborg_46_DomRN.phl[12]";
connectAttr "COGctrl_translateY.o" "Cyborg_46_DomRN.phl[13]";
connectAttr "COGctrl_translateZ.o" "Cyborg_46_DomRN.phl[14]";
connectAttr "COGctrl_rotateX.o" "Cyborg_46_DomRN.phl[15]";
connectAttr "COGctrl_rotateY.o" "Cyborg_46_DomRN.phl[16]";
connectAttr "COGctrl_rotateZ.o" "Cyborg_46_DomRN.phl[17]";
connectAttr "Cyborg_46_DomRN.phl[18]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "COGctrl_visibility.o" "Cyborg_46_DomRN.phl[19]";
connectAttr "LowerSpinejnt_rotateX.o" "Cyborg_46_DomRN.phl[20]";
connectAttr "LowerSpinejnt_rotateY.o" "Cyborg_46_DomRN.phl[21]";
connectAttr "LowerSpinejnt_rotateZ.o" "Cyborg_46_DomRN.phl[22]";
connectAttr "Cyborg_46_DomRN.phl[23]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "LowerSpinejnt_visibility.o" "Cyborg_46_DomRN.phl[24]";
connectAttr "MidSpineCTRL_rotateX.o" "Cyborg_46_DomRN.phl[25]";
connectAttr "MidSpineCTRL_rotateY.o" "Cyborg_46_DomRN.phl[26]";
connectAttr "MidSpineCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[27]";
connectAttr "Cyborg_46_DomRN.phl[28]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "MidSpineCTRL_visibility.o" "Cyborg_46_DomRN.phl[29]";
connectAttr "UpperChestCTRL_rotateX.o" "Cyborg_46_DomRN.phl[30]";
connectAttr "UpperChestCTRL_rotateY.o" "Cyborg_46_DomRN.phl[31]";
connectAttr "UpperChestCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[32]";
connectAttr "Cyborg_46_DomRN.phl[33]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "UpperChestCTRL_visibility.o" "Cyborg_46_DomRN.phl[34]";
connectAttr "L_ClavicleCTRL_rotateX.o" "Cyborg_46_DomRN.phl[35]";
connectAttr "L_ClavicleCTRL_rotateY.o" "Cyborg_46_DomRN.phl[36]";
connectAttr "L_ClavicleCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[37]";
connectAttr "Cyborg_46_DomRN.phl[38]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "L_ClavicleCTRL_visibility.o" "Cyborg_46_DomRN.phl[39]";
connectAttr "R_ClavicleCTRL_rotateX.o" "Cyborg_46_DomRN.phl[40]";
connectAttr "R_ClavicleCTRL_rotateY.o" "Cyborg_46_DomRN.phl[41]";
connectAttr "R_ClavicleCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[42]";
connectAttr "Cyborg_46_DomRN.phl[43]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "R_ClavicleCTRL_visibility.o" "Cyborg_46_DomRN.phl[44]";
connectAttr "NeckCTRL_rotateX.o" "Cyborg_46_DomRN.phl[45]";
connectAttr "NeckCTRL_rotateY.o" "Cyborg_46_DomRN.phl[46]";
connectAttr "NeckCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[47]";
connectAttr "Cyborg_46_DomRN.phl[48]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "NeckCTRL_visibility.o" "Cyborg_46_DomRN.phl[49]";
connectAttr "HeadCTRL_rotateX.o" "Cyborg_46_DomRN.phl[50]";
connectAttr "HeadCTRL_rotateY.o" "Cyborg_46_DomRN.phl[51]";
connectAttr "HeadCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[52]";
connectAttr "Cyborg_46_DomRN.phl[53]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "HeadCTRL_visibility.o" "Cyborg_46_DomRN.phl[54]";
connectAttr "HipjntCTRL_rotateX.o" "Cyborg_46_DomRN.phl[55]";
connectAttr "HipjntCTRL_rotateY.o" "Cyborg_46_DomRN.phl[56]";
connectAttr "HipjntCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[57]";
connectAttr "Cyborg_46_DomRN.phl[58]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "HipjntCTRL_visibility.o" "Cyborg_46_DomRN.phl[59]";
connectAttr "L_elbowPV_translateX.o" "Cyborg_46_DomRN.phl[60]";
connectAttr "L_elbowPV_translateY.o" "Cyborg_46_DomRN.phl[61]";
connectAttr "L_elbowPV_translateZ.o" "Cyborg_46_DomRN.phl[62]";
connectAttr "Cyborg_46_DomRN.phl[63]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "L_elbowPV_visibility.o" "Cyborg_46_DomRN.phl[64]";
connectAttr "R_wristCTRL_rotateX.o" "Cyborg_46_DomRN.phl[65]";
connectAttr "R_wristCTRL_rotateY.o" "Cyborg_46_DomRN.phl[66]";
connectAttr "R_wristCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[67]";
connectAttr "Cyborg_46_DomRN.phl[68]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "R_wristCTRL_visibility.o" "Cyborg_46_DomRN.phl[69]";
connectAttr "R_wristCTRL_translateX.o" "Cyborg_46_DomRN.phl[70]";
connectAttr "R_wristCTRL_translateY.o" "Cyborg_46_DomRN.phl[71]";
connectAttr "R_wristCTRL_translateZ.o" "Cyborg_46_DomRN.phl[72]";
connectAttr "R_wristCTRL_scaleX.o" "Cyborg_46_DomRN.phl[73]";
connectAttr "R_wristCTRL_scaleY.o" "Cyborg_46_DomRN.phl[74]";
connectAttr "R_wristCTRL_scaleZ.o" "Cyborg_46_DomRN.phl[75]";
connectAttr "R_elbowCTRL_translateX.o" "Cyborg_46_DomRN.phl[76]";
connectAttr "R_elbowCTRL_translateY.o" "Cyborg_46_DomRN.phl[77]";
connectAttr "R_elbowCTRL_translateZ.o" "Cyborg_46_DomRN.phl[78]";
connectAttr "Cyborg_46_DomRN.phl[79]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "R_elbowCTRL_visibility.o" "Cyborg_46_DomRN.phl[80]";
connectAttr "L_FootCTRL_ToeTap.o" "Cyborg_46_DomRN.phl[81]";
connectAttr "L_FootCTRL_ToeTip.o" "Cyborg_46_DomRN.phl[82]";
connectAttr "L_FootCTRL_Swivel.o" "Cyborg_46_DomRN.phl[83]";
connectAttr "L_FootCTRL_HeelPeel.o" "Cyborg_46_DomRN.phl[84]";
connectAttr "L_FootCTRL_Ankle.o" "Cyborg_46_DomRN.phl[85]";
connectAttr "Cyborg_46_DomRN.phl[86]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "L_FootCTRL_visibility.o" "Cyborg_46_DomRN.phl[87]";
connectAttr "L_FootCTRL_translateX.o" "Cyborg_46_DomRN.phl[88]";
connectAttr "L_FootCTRL_translateY.o" "Cyborg_46_DomRN.phl[89]";
connectAttr "L_FootCTRL_translateZ.o" "Cyborg_46_DomRN.phl[90]";
connectAttr "L_FootCTRL_rotateX.o" "Cyborg_46_DomRN.phl[91]";
connectAttr "L_FootCTRL_rotateY.o" "Cyborg_46_DomRN.phl[92]";
connectAttr "L_FootCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[93]";
connectAttr "R_FootCTRL_Toetap.o" "Cyborg_46_DomRN.phl[94]";
connectAttr "R_FootCTRL_HeelPeel.o" "Cyborg_46_DomRN.phl[95]";
connectAttr "R_FootCTRL_Swivel.o" "Cyborg_46_DomRN.phl[96]";
connectAttr "R_FootCTRL_ToeTip.o" "Cyborg_46_DomRN.phl[97]";
connectAttr "R_FootCTRL_Ankle.o" "Cyborg_46_DomRN.phl[98]";
connectAttr "Cyborg_46_DomRN.phl[99]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "R_FootCTRL_visibility.o" "Cyborg_46_DomRN.phl[100]";
connectAttr "R_FootCTRL_translateX.o" "Cyborg_46_DomRN.phl[101]";
connectAttr "R_FootCTRL_translateY.o" "Cyborg_46_DomRN.phl[102]";
connectAttr "R_FootCTRL_translateZ.o" "Cyborg_46_DomRN.phl[103]";
connectAttr "R_FootCTRL_rotateX.o" "Cyborg_46_DomRN.phl[104]";
connectAttr "R_FootCTRL_rotateY.o" "Cyborg_46_DomRN.phl[105]";
connectAttr "R_FootCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[106]";
connectAttr "L_kneePVCTRL_translateX.o" "Cyborg_46_DomRN.phl[107]";
connectAttr "L_kneePVCTRL_translateY.o" "Cyborg_46_DomRN.phl[108]";
connectAttr "L_kneePVCTRL_translateZ.o" "Cyborg_46_DomRN.phl[109]";
connectAttr "Cyborg_46_DomRN.phl[110]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "L_kneePVCTRL_visibility.o" "Cyborg_46_DomRN.phl[111]";
connectAttr "R_kneePVCTRL_translateX.o" "Cyborg_46_DomRN.phl[112]";
connectAttr "R_kneePVCTRL_translateY.o" "Cyborg_46_DomRN.phl[113]";
connectAttr "R_kneePVCTRL_translateZ.o" "Cyborg_46_DomRN.phl[114]";
connectAttr "Cyborg_46_DomRN.phl[115]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "R_kneePVCTRL_visibility.o" "Cyborg_46_DomRN.phl[116]";
connectAttr "L_wristCTRL_Index01.o" "Cyborg_46_DomRN.phl[117]";
connectAttr "L_wristCTRL_Index02.o" "Cyborg_46_DomRN.phl[118]";
connectAttr "L_wristCTRL_Index03.o" "Cyborg_46_DomRN.phl[119]";
connectAttr "L_wristCTRL_Middle01.o" "Cyborg_46_DomRN.phl[120]";
connectAttr "L_wristCTRL_Middle02.o" "Cyborg_46_DomRN.phl[121]";
connectAttr "L_wristCTRL_Middle03.o" "Cyborg_46_DomRN.phl[122]";
connectAttr "L_wristCTRL_Pinky01.o" "Cyborg_46_DomRN.phl[123]";
connectAttr "L_wristCTRL_Pinky02.o" "Cyborg_46_DomRN.phl[124]";
connectAttr "L_wristCTRL_Pinky03.o" "Cyborg_46_DomRN.phl[125]";
connectAttr "L_wristCTRL_Thumb01.o" "Cyborg_46_DomRN.phl[126]";
connectAttr "L_wristCTRL_Thumb02.o" "Cyborg_46_DomRN.phl[127]";
connectAttr "L_wristCTRL_Thumb03.o" "Cyborg_46_DomRN.phl[128]";
connectAttr "L_wristCTRL_rotateX.o" "Cyborg_46_DomRN.phl[129]";
connectAttr "L_wristCTRL_rotateY.o" "Cyborg_46_DomRN.phl[130]";
connectAttr "L_wristCTRL_rotateZ.o" "Cyborg_46_DomRN.phl[131]";
connectAttr "Cyborg_46_DomRN.phl[132]" "CyborgIdleCTRLS.dsm" -na;
connectAttr "L_wristCTRL_visibility.o" "Cyborg_46_DomRN.phl[133]";
connectAttr "L_wristCTRL_translateX.o" "Cyborg_46_DomRN.phl[134]";
connectAttr "L_wristCTRL_translateY.o" "Cyborg_46_DomRN.phl[135]";
connectAttr "L_wristCTRL_translateZ.o" "Cyborg_46_DomRN.phl[136]";
connectAttr "L_wristCTRL_scaleX.o" "Cyborg_46_DomRN.phl[137]";
connectAttr "L_wristCTRL_scaleY.o" "Cyborg_46_DomRN.phl[138]";
connectAttr "L_wristCTRL_scaleZ.o" "Cyborg_46_DomRN.phl[139]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CyborgIdle_02_Dom.ma
