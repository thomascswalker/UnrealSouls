//Maya ASCII 2024 scene
//Name: HollowRig.ma
//Last modified: Thu, Jun 22, 2023 04:15:02 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "075477B4-41B6-9A54-AD56-E5B1FA07F578";
createNode transform -s -n "persp";
	rename -uid "53EC84BC-40B4-EB5C-7474-29B48CA1E05A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 63.663457146840159 201.40921000563716 226.83469047648819 ;
	setAttr ".r" -type "double3" -23.400000000004546 -345.99999999997738 4.0974037545115587e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "34E1C719-448A-BBCC-9A8E-6FA84E6DC161";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 288.22279434153688;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 83.483348846435547 144.70646667480469 1.8340438604354858 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6CB14682-4BFE-1E45-8FD3-BB9A6886D78E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 78.95084462503894 1000.1080374275466 1.5542506993248466 ;
	setAttr ".r" -type "double3" -90 -2.7880153965920727e-17 2.7880153965920727e-17 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A9490901-4238-2761-F5DB-33BFEFEAC65A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 912.63618855226241;
	setAttr ".ow" 16.684472258360415;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 3.6627341953068151 87.471848875284195 7.423695980275248 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B2D81743-4C81-8082-9166-2BBD906C9243";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 87.471848875284195 1003.932614123445 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EC335CED-4DDC-ADB1-A77E-18B114178CEC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1024144049696;
	setAttr ".ow" 335.88076821816213;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 87.471848875284195 3.8301997184753418 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "06BD783A-46DE-B805-5C17-508F3CE0326A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1003.9252984039917 87.471848875284195 3.8301997184753418 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C3AC2A14-415C-C2C3-3ADC-2C9B21602C9A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.9252984039917;
	setAttr ".ow" 335.50506266087115;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 87.471848875284195 3.8301997184753418 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "root";
	rename -uid "67C39F2E-4644-DEAC-CA3C-A7B25B873FBD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "jointTRSData" -ln "jointTRSData" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".jo" -type "double3" -90 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".jointTRSData" -type "string" (
		"(dp0&lf;Vupperarm_bicep_l&lf;p1&lf;(dp2&lf;S'rotation'&lf;p3&lf;(F-2.112087093159394e-16&lf;F1.6101558074909054e-14&lf;F-1.948089742396404e-14&lf;tp4&lf;sS'translate'&lf;p5&lf;(F0.4296336514963315&lf;F-3.0014054840172104&lf;F-0.33568228722386095&lf;tp6&lf;sS'scale'&lf;p7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp8&lf;ssVthigh_fwd_r&lf;p9&lf;(dp10&lf;g3&lf;(F-3.2351075555054503e-09&lf;F-3.554814002738346e-09&lf;F4.6893499014910565e-09&lf;tp11&lf;sg5&lf;(F-5.8879919004175605&lf;F7.159845239867742&lf;F-0.8596299999494192&lf;tp12&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp13&lf;ssVupperarm_twist_02_r&lf;p14&lf;(dp15&lf;g3&lf;(F-5.715515410477199e-05&lf;F0.239297380467856&lf;F-0.013684890989370199&lf;tp16&lf;sg5&lf;(F-16.831266561863387&lf;F1.8815802156346706e-05&lf;F-0.00023473533977380612&lf;tp17&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp18&lf;ssVthigh_fwd_l&lf;p19&lf;(dp20&lf;g3&lf;(F-3.0625942677403114e-09&lf;F3.73169190518625e-08&lf;F5.2113571248109e-09&lf;tp21&lf;sg5&lf;(F5.892345071609&lf;F-7.144273484161924&lf;F0.8632194689173218&lf;tp22&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp23&lf;ssVupperarm_twist_02_l&lf;p24&lf;(dp25&lf;g3&lf;(F-5.715515410371704e-05&lf;F0.2392973804688322&lf;F-0.013684890989424315&lf;tp26&lf;sg5&lf;(F16.83153379318587&lf;F1.7763568394002505e-15&lf;F0.0&lf;tp27&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp28&lf;ssVspine_02&lf;p29&lf;(dp30&lf;g3&lf;(F-1.2132853246549658e-20&lf;F-5.763105292111093e-19&lf;F-2.3854160140597598e-15&lf;tp31&lf;sg5&lf;(F4.64819543873827&lf;F0.0&lf;F9.247810850432359e-15&lf;tp32&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp33&lf;ssVspine_03&lf;p34&lf;(dp35&lf;g3&lf;(F3.8839555994523184e-42&lf;F9.390828412829445e-18&lf;F4.739395799433465e-23&lf;tp36&lf;sg5&lf;(F7.10706776307444&lf;F7.105427357601002e-15&lf;F-1.6302063865492045e-14&lf;tp37&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp38&lf;ssVspine_04&lf;p39&lf;(dp40&lf;g3&lf;(F-5.823769558343841e-19&lf;F4.246498636292384e-20&lf;F1.590277269640821e-15&lf;tp41&lf;sg5&lf;(F8.248942899748158&lf;F3.552713678800501e-15&lf;F-2.1010970741031088e-14&lf;tp42&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp43&lf;ssVspine_05&lf;p44&lf;(dp45&lf;g3&lf;(F-1.4559423895859602e-19&lf;F4.659679162086993e-18&lf;F1.4908847995874568e-16&lf;tp46&lf;sg5&lf;(F16.308254953927232&lf;F-7.105427357601002e-15&lf;F2.3062281251373662e-14&lf;tp47&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp48&lf;ssVindex_metacarpal_r&lf;p49&lf;(dp50&lf;g3&lf;(F-4.808104147368675e-15&lf;F2.4351121779955047e-15&lf;F2.2363275104040347e-15&lf;tp51&lf;sg5&lf;(F-3.457892340165678&lf;F-0.010593711576447618&lf;F1.529324513338704&lf;tp52&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp53&lf;ssVupperarm_bicep_r&lf;p54&lf;(dp55&lf;g3&lf;(F3.1557065980145833e-14&lf;F5.367186024969683e-15&lf;F6.361109362927035e-15&lf;tp56&lf;sg5&lf;(F-0.570192043047129&lf;F3.0080906171650774&lf;F0.15133974465763345&lf;tp57&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp58&lf;ssVlowerarm_in_r&lf;p59&lf;(dp60&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp61&lf;sg5&lf;(F-1.5514355804486115&lf;F-0.21415705989632272&lf;F2.2829596952656743&lf;tp62&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp63&lf;ssVwrist_inner_l&lf;p64&lf;(dp65&lf;g3&lf;(F-5.1497652947915144e-14&lf;F-9.541664044390552e-15&lf;F-4.174478019420861e-15&lf;tp66&lf;sg5&lf;(F-0.08634634823715714&lf;F1.6269678363065907&lf;F-0.47525639176425827&lf;tp67&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp68&lf;ssVthigh_out_r&lf;p69&lf;(dp70&lf;g3&lf;(F-1.122660004060381e-09&lf;F7.74599041022121e-09&lf;F1.0052238419628676e-08&lf;tp71&lf;sg5&lf;(F-5.490222724311039&lf;F-1.2357139686785958&lf;F4.529304741894016&lf;tp72&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp73&lf;ssVclavicle_l&lf;p74&lf;(dp75&lf;g3&lf;(F-2.7034714792439897e-14&lf;F6.659286364314223e-15&lf;F359.99999999999994&lf;tp76&lf;sg5&lf;(F5.434344857110261&lf;F0.9364505906511198&lf;F-0.866799571158099&lf;tp77&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp78&lf;ssVupperarm_twist_01_r&lf;p79&lf;(dp80&lf;g3&lf;(F-6.1858806299137406e-15&lf;F-2.4343783062529425e-15&lf;F-9.660793900053754e-15&lf;tp81&lf;sg5&lf;(F-8.639670830686583&lf;F0.09629670980522409&lf;F0.16541554783053414&lf;tp82&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp83&lf;ssVball_r&lf;p84&lf;(dp85&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp86&lf;sg5&lf;(F5.70729832865123&lf;F11.471707953183119&lf;F0.00175755891641316&lf;tp87&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp88&lf;ssVthigh_twistCor_01_r&lf;p89&lf;(dp90&lf;g3&lf;(F-7.966473664013811e-13&lf;F7.136261186895984e-18&lf;F-1.5803581998339445e-10&lf;tp91&lf;sg5&lf;(F-6.110667527536862e-13&lf;F-2.0383694732117874e-13&lf;F7.105427357601002e-15&lf;tp92&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp93&lf;ssVthigh_twistCor_01_l&lf;p94&lf;(dp95&lf;g3&lf;(F-7.679131785889907e-13&lf;F-6.227958139655539e-18&lf;F-1.5803582267887843e-10&lf;tp96&lf;sg5&lf;(F6.252776074688882e-13&lf;F2.0294876890147862e-13&lf;F-1.0658141036401503e-14&lf;tp97&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp98&lf;ssVindex_03_l&lf;p99&lf;(dp100&lf;g3&lf;(F-5.308123295365481e-21&lf;F2.1581542102166356e-40&lf;F4.6590149061444796e-18&lf;tp101&lf;sg5&lf;(F2.3173075307279305&lf;F2.842170943040401e-14&lf;F9.769962616701378e-15&lf;tp102&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp103&lf;ssVball_l&lf;p104&lf;(dp105&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp106&lf;sg5&lf;(F-5.707299374390027&lf;F-11.471697092323957&lf;F-0.0017138404028358423&lf;tp107&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp108&lf;ssVupperarm_twist_01_l&lf;p109&lf;(dp110&lf;g3&lf;(F2.5988450325576927e-15&lf;F1.4877974460841166e-16&lf;F3.2046487033437818e-15&lf;tp111&lf;sg5&lf;(F8.63996069843948&lf;F-0.09628023891043291&lf;F-0.16557725147991675&lf;tp112&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp113&lf;ssVclavicle_r&lf;p114&lf;(dp115&lf;g3&lf;(F180.0&lf;F180.0&lf;F-180.0&lf;tp116&lf;sg5&lf;(F5.433600703058573&lf;F0.9365499957792274&lf;F0.8688515061571342&lf;tp117&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp118&lf;ssVwrist_inner_r&lf;p119&lf;(dp120&lf;g3&lf;(F-1.2709794684129601e-14&lf;F3.1805546814635168e-15&lf;F-3.578124016646457e-15&lf;tp121&lf;sg5&lf;(F0.05073241165543152&lf;F-1.456593948087047&lf;F0.4146242448130657&lf;tp122&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp123&lf;ssVthigh_out_l&lf;p124&lf;(dp125&lf;g3&lf;(F-7.841617927850014e-09&lf;F-1.611360794686607e-08&lf;F-6.402664334885883e-09&lf;tp126&lf;sg5&lf;(F5.488080642544915&lf;F1.2215333393427994&lf;F-4.541695609589556&lf;tp127&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp128&lf;ssVclavicle_out_l&lf;p129&lf;(dp130&lf;g3&lf;(F2.1369351765716433e-15&lf;F-3.0719030044415276e-10&lf;F1.3674210922985612e-14&lf;tp131&lf;sg5&lf;(F10.05977550712825&lf;F0.047623277898917404&lf;F5.124009981794558&lf;tp132&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp133&lf;ssVthigh_l&lf;p134&lf;(dp135&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp136&lf;sg5&lf;(F-3.011926735188311&lf;F-0.06340308345171675&lf;F-10.395847431675032&lf;tp137&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp138&lf;ssVcalf_correctiveRoot_l&lf;p139&lf;(dp140&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp141&lf;sg5&lf;(F7.105427357601002e-15&lf;F-4.440892098500626e-16&lf;F-8.881784197001252e-15&lf;tp142&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp143&lf;ssVclavicle_out_r&lf;p144&lf;(dp145&lf;g3&lf;(F1.5853077242196556e-14&lf;F-1.733539619516481e-08&lf;F-1.1745378447666112e-14&lf;tp146&lf;sg5&lf;(F-10.296855532639404&lf;F0.1711587055647632&lf;F-5.132314944700084&lf;tp147&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp148&lf;ssVfoot_l&lf;p149&lf;(dp150&lf;g3&lf;(F3.1060104311167183e-18&lf;F-3.975696764194372e-15&lf;F-7.450785178706153e-17&lf;tp151&lf;sg5&lf;(F-38.868305766260185&lf;F-1.8835664532534935e-06&lf;F-6.242941395839807e-06&lf;tp152&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp153&lf;ssVthigh_correctiveRoot_l&lf;p154&lf;(dp155&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp156&lf;sg5&lf;(F1.4210854715202004e-14&lf;F2.6645352591003757e-15&lf;F3.552713678800501e-15&lf;tp157&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp158&lf;ssVspine_01&lf;p159&lf;(dp160&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp161&lf;sg5&lf;(F2.303684184416582&lf;F3.552713678800501e-15&lf;F8.632417697329586e-16&lf;tp162&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp163&lf;ssVupperarm_out_r&lf;p164&lf;(dp165&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp166&lf;sg5&lf;(F-0.0015998720624850193&lf;F-0.26206737267851477&lf;F-5.478375142778077&lf;tp167&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp168&lf;ssVmiddle_03_l&lf;p169&lf;(dp170&lf;g3&lf;(F-6.212020862233431e-18&lf;F-7.442292181433567e-17&lf;F3.975754016095629e-16&lf;tp171&lf;sg5&lf;(F2.7046150315646855&lf;F-7.105427357601002e-15&lf;F-7.105427357601002e-15&lf;tp172&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp173&lf;ssVring_02_r&lf;p174&lf;(dp175&lf;g3&lf;(F3.7272125173400593e-17&lf;F-9.93923337957349e-17&lf;F-9.541615512977564e-15&lf;tp176&lf;sg5&lf;(F-3.9621715292690425&lf;F1.5004568538756757e-05&lf;F-4.923994394800957e-05&lf;tp177&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp178&lf;ssVthumb_01_r&lf;p179&lf;(dp180&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp181&lf;sg5&lf;(F-2.4749759005593006&lf;F-1.2059805117236948&lf;F2.2430633666914694&lf;tp182&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp183&lf;ssVthumb_01_l&lf;p184&lf;(dp185&lf;g3&lf;(F-1.3517357396219944e-14&lf;F-7.951386703658789e-15&lf;F3.1805546814635168e-15&lf;tp186&lf;sg5&lf;(F2.4749410357123125&lf;F1.2059493890390485&lf;F-2.242953361528688&lf;tp187&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp188&lf;ssVring_02_l&lf;p189&lf;(dp190&lf;g3&lf;(F2.4848083448933737e-17&lf;F-1.4287647983136886e-16&lf;F-1.272226725726705e-14&lf;tp191&lf;sg5&lf;(F3.962151505953962&lf;F-1.4210854715202004e-14&lf;F-3.907985046680551e-14&lf;tp192&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp193&lf;ssVupperarm_out_l&lf;p194&lf;(dp195&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp196&lf;sg5&lf;(F-0.13826645305934449&lf;F0.26872367525577534&lf;F5.293475235855169&lf;tp197&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp198&lf;ssVmiddle_03_r&lf;p199&lf;(dp200&lf;g3&lf;(F-1.5530052155583591e-18&lf;F-7.454425034680117e-17&lf;F1.5902788573384142e-15&lf;tp201&lf;sg5&lf;(F-2.7046326736289075&lf;F1.1443238847164139e-05&lf;F2.466278816015688e-05&lf;tp202&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp203&lf;ssVankle_fwd_r&lf;p204&lf;(dp205&lf;g3&lf;(F3.602972100095387e-16&lf;F-2.882377680076312e-15&lf;F1.1927080055488187e-14&lf;tp206&lf;sg5&lf;(F-1.6349691499013561&lf;F4.197070299797255&lf;F-0.4635870315139865&lf;tp207&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp208&lf;ssVthigh_correctiveRoot_r&lf;p209&lf;(dp210&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp211&lf;sg5&lf;(F0.0&lf;F-1.7763568394002505e-15&lf;F-5.329070518200751e-15&lf;tp212&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp213&lf;ssVcalf_correctiveRoot_r&lf;p214&lf;(dp215&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp216&lf;sg5&lf;(F7.105427357601002e-15&lf;F-8.881784197001252e-16&lf;F-1.7763568394002505e-15&lf;tp217&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp218&lf;ssVthigh_bck_lwr_l&lf;p219&lf;(dp220&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp221&lf;sg5&lf;(F-5.597656441629496&lf;F9.947071814613224&lf;F1.4709560480788824&lf;tp222&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp223&lf;ssVupperarm_twistCor_01_r&lf;p224&lf;(dp225&lf;g3&lf;(F-5.715515408476811e-05&lf;F0.2392973804678571&lf;F-0.013684890989359285&lf;tp226&lf;sg5&lf;(F0.22332124117612295&lf;F-0.09634080925396127&lf;F-0.16646707192127508&lf;tp227&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp228&lf;ssVhand_r&lf;p229&lf;(dp230&lf;g3&lf;(F-1.9878466759146967e-16&lf;F-4.770832022195275e-15&lf;F-3.1805546814635168e-15&lf;tp231&lf;sg5&lf;(F-24.320337470574643&lf;F-0.0002950651889577216&lf;F0.0003046297929785169&lf;tp232&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp233&lf;ssVthumb_03_l&lf;p234&lf;(dp235&lf;g3&lf;(F-3.416611474228386e-17&lf;F-4.7366659074529904e-17&lf;F-4.246498636292382e-20&lf;tp236&lf;sg5&lf;(F2.5261795391662645&lf;F3.552713678800501e-14&lf;F-4.263256414560601e-14&lf;tp237&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp238&lf;ssVhand_l&lf;p239&lf;(dp240&lf;g3&lf;(F-6.6592863643142385e-15&lf;F-3.1805546814635168e-15&lf;F-3.1805546814635164e-15&lf;tp241&lf;sg5&lf;(F24.32004358863988&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp242&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp243&lf;ssVthumb_03_r&lf;p244&lf;(dp245&lf;g3&lf;(F-2.174207301781701e-17&lf;F-2.348920388532016e-17&lf;F-4.770874487181638e-15&lf;tp246&lf;sg5&lf;(F-2.526164976356057&lf;F-4.6664516247574284e-05&lf;F7.370655225713563e-06&lf;tp247&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp248&lf;ssVupperarm_twistCor_01_l&lf;p249&lf;(dp250&lf;g3&lf;(F-5.7155154111593384e-05&lf;F0.23929738046885052&lf;F-0.013684890989412526&lf;tp251&lf;sg5&lf;(F-0.22347730841758562&lf;F0.09633378358038591&lf;F0.16651206011033537&lf;tp252&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp253&lf;ssVthigh_bck_lwr_r&lf;p254&lf;(dp255&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp256&lf;sg5&lf;(F5.844458568800249&lf;F-10.021941949068122&lf;F-1.8531909603709966&lf;tp257&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp258&lf;ssVupperarm_in_r&lf;p259&lf;(dp260&lf;g3&lf;(F-4.0183257565534246e-10&lf;F-4.683048712998474e-10&lf;F-3.3057467384465757e-10&lf;tp261&lf;sg5&lf;(F-5.2225564187980495&lf;F1.2711843167447734&lf;F3.8834782317378966&lf;tp262&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp263&lf;ssVlowerarm_fwd_r&lf;p264&lf;(dp265&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp266&lf;sg5&lf;(F-1.3920519520020491&lf;F2.2598182327670386&lf;F-0.5667739685873983&lf;tp267&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp268&lf;ssVlowerarm_out_r&lf;p269&lf;(dp270&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp271&lf;sg5&lf;(F-0.6170078789895399&lf;F-1.280766963895374&lf;F-2.1175791102128443&lf;tp272&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp273&lf;ssVankle_bck_r&lf;p274&lf;(dp275&lf;g3&lf;(F-1.8803787149980595e-14&lf;F3.9756933518293936e-15&lf;F-1.1877383888590321e-14&lf;tp276&lf;sg5&lf;(F-0.6507357602611608&lf;F-3.799005098240129&lf;F0.5425226013393445&lf;tp277&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp278&lf;ssVupperarm_bck_r&lf;p279&lf;(dp280&lf;g3&lf;(F-1.631032968523696e-08&lf;F-1.793436243543718e-08&lf;F6.623600521598822e-09&lf;tp281&lf;sg5&lf;(F-1.613973273688245&lf;F-5.899539327146831&lf;F-0.6838130492740362&lf;tp282&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp283&lf;ssVupperarm_bck_l&lf;p284&lf;(dp285&lf;g3&lf;(F-1.631031696301823e-08&lf;F-1.7934362477562443e-08&lf;F6.623600333685193e-09&lf;tp286&lf;sg5&lf;(F1.453320472410553&lf;F5.922331709928633&lf;F0.5193119630590957&lf;tp287&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp288&lf;ssVankle_bck_l&lf;p289&lf;(dp290&lf;g3&lf;(F4.821925894076175e-14&lf;F4.709965190659037e-08&lf;F7.032007635867419e-15&lf;tp291&lf;sg5&lf;(F0.7196897359995171&lf;F3.149843256350702&lf;F-0.1865279959374142&lf;tp292&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp293&lf;ssVlowerarm_fwd_l&lf;p294&lf;(dp295&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp296&lf;sg5&lf;(F1.3286701233338505&lf;F-2.523348037160204&lf;F0.4477197471650243&lf;tp297&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp298&lf;ssVmiddle_01_r&lf;p299&lf;(dp300&lf;g3&lf;(F-2.3854160110976384e-15&lf;F5.665363026356887e-15&lf;F-1.8884543421189624e-14&lf;tp301&lf;sg5&lf;(F-5.182307875635303&lf;F1.2473883217012371e-05&lf;F4.441538994015559e-05&lf;tp302&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp303&lf;ssVcalf_twist_02_l&lf;p304&lf;(dp305&lf;g3&lf;(F-1.2813263656616176e-15&lf;F1.2695893467522358e-18&lf;F-7.368169808403853e-17&lf;tp306&lf;sg5&lf;(F-12.958133997348298&lf;F-0.13437907398599447&lf;F0.11553495636094979&lf;tp307&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp308&lf;ssVlowerarm_twist_01_r&lf;p309&lf;(dp310&lf;g3&lf;(F-1.6743337480238544e-18&lf;F-1.428764306601375e-15&lf;F-1.2424050610833987e-17&lf;tp311&lf;sg5&lf;(F-15.709295982891412&lf;F0.0653041102279559&lf;F0.03263931215387572&lf;tp312&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp313&lf;ssVspine_04_latissimus_r&lf;p314&lf;(dp315&lf;g3&lf;(F-2.1200329155989934e-09&lf;F-2.0738501467058974e-08&lf;F9.430233311509153e-09&lf;tp316&lf;sg5&lf;(F-7.8201672809249345&lf;F3.0343685369015496&lf;F11.943057680552283&lf;tp317&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp318&lf;ssVspine_04_latissimus_l&lf;p319&lf;(dp320&lf;g3&lf;(F5.5057566312661764e-09&lf;F1.6766699921248585e-08&lf;F7.858422271679882e-09&lf;tp321&lf;sg5&lf;(F-7.810114020338162&lf;F3.0346754472192004&lf;F-11.935268925526474&lf;tp322&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp323&lf;ssVlowerarm_twist_01_l&lf;p324&lf;(dp325&lf;g3&lf;(F2.0627063804459095e-16&lf;F1.0062276329226985e-15&lf;F-1.2320628108123222e-17&lf;tp326&lf;sg5&lf;(F15.709011726426546&lf;F-0.06554904986637666&lf;F-0.03229837036940353&lf;tp327&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp328&lf;ssVcalf_twist_02_r&lf;p329&lf;(dp330&lf;g3&lf;(F-1.0969433948738022e-15&lf;F-1.1337156085782787e-17&lf;F-7.38058228600257e-17&lf;tp331&lf;sg5&lf;(F12.958172261711361&lf;F0.13438813926951898&lf;F-0.11546192380812315&lf;tp332&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp333&lf;ssVmiddle_01_l&lf;p334&lf;(dp335&lf;g3&lf;(F-1.5902773407317584e-15&lf;F-2.087239009710433e-15&lf;F2.8966260080954173e-32&lf;tp336&lf;sg5&lf;(F5.182243307643894&lf;F4.263256414560601e-14&lf;F-2.4868995751603507e-14&lf;tp337&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp338&lf;ssVcalf_knee_r&lf;p339&lf;(dp340&lf;g3&lf;(F-9.373939481779854e-15&lf;F-6.433371167720549e-09&lf;F1.1927080056014457e-14&lf;tp341&lf;sg5&lf;(F-0.04499406685729923&lf;F4.304237479045141&lf;F-0.11863616250326992&lf;tp342&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp343&lf;ssVclavicle_scap_r&lf;p344&lf;(dp345&lf;g3&lf;(F-7.2333774824279544e-12&lf;F-5.447464020267169e-09&lf;F2.099599539267737e-08&lf;tp346&lf;sg5&lf;(F-8.497017971073436&lf;F-5.6879741751418536&lf;F2.203234247844506&lf;tp347&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp348&lf;ssVclavicle_pec_l&lf;p349&lf;(dp350&lf;g3&lf;(F5.934906090541604e-09&lf;F-4.328964219255888e-09&lf;F-6.3721458878959175e-09&lf;tp351&lf;sg5&lf;(F-7.859747892191649&lf;F-9.235935633950017&lf;F-9.161680251024567&lf;tp352&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp353&lf;ssVcalf_knee_l&lf;p354&lf;(dp355&lf;g3&lf;(F1.1771779534322956e-14&lf;F-6.4333697762278764e-09&lf;F-6.9574633663623315e-15&lf;tp356&lf;sg5&lf;(F0.04207871964077725&lf;F-4.30754958067433&lf;F0.1160674853346002&lf;tp357&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp358&lf;ssVclavicle_scap_l&lf;p359&lf;(dp360&lf;g3&lf;(F-2.0063835062731552e-11&lf;F-8.936741229731349e-09&lf;F2.0529569357960723e-08&lf;tp361&lf;sg5&lf;(F8.269065264677947&lf;F5.697957688764333&lf;F-2.2342434592936797&lf;tp362&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp363&lf;ssVfoot_r&lf;p364&lf;(dp365&lf;g3&lf;(F3.4942617350063054e-18&lf;F2.2716118211881422e-36&lf;F-7.449571893381498e-17&lf;tp366&lf;sg5&lf;(F38.8683479675059&lf;F4.218847493575595e-15&lf;F-1.7763568394002505e-15&lf;tp367&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp368&lf;ssVupperarm_in_l&lf;p369&lf;(dp370&lf;g3&lf;(F-4.0185802536309686e-10&lf;F-4.683430379560251e-10&lf;F-3.305746816879782e-10&lf;tp371&lf;sg5&lf;(F5.574552996471354&lf;F-1.4832878115397845&lf;F-4.299906325106548&lf;tp372&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp373&lf;ssVlowerarm_out_l&lf;p374&lf;(dp375&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp376&lf;sg5&lf;(F0.5829331297469622&lf;F0.9090844050165288&lf;F1.8502389625441538&lf;tp377&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp378&lf;ssVthumb_02_l&lf;p379&lf;(dp380&lf;g3&lf;(F6.0918383961604464e-33&lf;F7.299124513124281e-17&lf;F9.563794368712256e-15&lf;tp381&lf;sg5&lf;(F4.316671956003702&lf;F0.0&lf;F3.552713678800501e-14&lf;tp382&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp383&lf;ssVankle_fwd_l&lf;p384&lf;(dp385&lf;g3&lf;(F2.4532823392578864e-14&lf;F-3.8486528438178006e-08&lf;F-7.156248041532465e-15&lf;tp386&lf;sg5&lf;(F1.2908153718236504&lf;F-3.768957865912955&lf;F-0.07680916272578031&lf;tp387&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp388&lf;ssVthumb_02_r&lf;p389&lf;(dp390&lf;g3&lf;(F3.975693351829394e-16&lf;F-1.584065319869525e-15&lf;F1.2723383479765737e-14&lf;tp391&lf;sg5&lf;(F-4.316661343859899&lf;F-2.3635732418370026e-05&lf;F-4.3211523554020914e-05&lf;tp392&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp393&lf;ssVindex_metacarpal_l&lf;p394&lf;(dp395&lf;g3&lf;(F-4.708711813572941e-15&lf;F9.939233379573501e-17&lf;F2.4848083448933726e-15&lf;tp396&lf;sg5&lf;(F3.4579468886887668&lf;F0.010562601629231949&lf;F-1.5292670130053594&lf;tp397&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp398&lf;ssVlowerarm_in_l&lf;p399&lf;(dp400&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp401&lf;sg5&lf;(F1.3306420256329048&lf;F0.24547389055802427&lf;F-2.7035021548269356&lf;tp402&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp403&lf;ssVlowerarm_twist_02_r&lf;p404&lf;(dp405&lf;g3&lf;(F-6.721600698588516e-18&lf;F-5.715057220481254e-15&lf;F-3.2583346120769835e-23&lf;tp406&lf;sg5&lf;(F-7.8497274814736855&lf;F0.10257835424635431&lf;F0.03918630802392897&lf;tp407&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp408&lf;ssVcalf_twist_01_l&lf;p409&lf;(dp410&lf;g3&lf;(F-8.492997272584769e-20&lf;F-1.1848489498583718e-23&lf;F-7.454422664982217e-17&lf;tp411&lf;sg5&lf;(F-25.92498684096225&lf;F-0.08807316453161773&lf;F0.10071990957672128&lf;tp412&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp413&lf;ssVupperarm_r&lf;p414&lf;(dp415&lf;g3&lf;(F-1.0933156717530838e-15&lf;F1.2424041724466842e-17&lf;F-1.987846675914698e-15&lf;tp416&lf;sg5&lf;(F-14.246069020159924&lf;F-3.984049673277923e-06&lf;F-0.00038072217765261485&lf;tp417&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp418&lf;ssVcalf_twistCor_02_r&lf;p419&lf;(dp420&lf;g3&lf;(F7.504981906187296e-13&lf;F5.256448295143624e-18&lf;F5.706716964926347e-10&lf;tp421&lf;sg5&lf;(F-1.2789769243681803e-12&lf;F2.353672812205332e-14&lf;F0.0&lf;tp422&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp423&lf;ssVthigh_bck_l&lf;p424&lf;(dp425&lf;g3&lf;(F-3.3281960298549105e-10&lf;F7.492530405354367e-09&lf;F-1.1907707579416888e-10&lf;tp426&lf;sg5&lf;(F3.5690050994295888&lf;F10.405499415408876&lf;F2.1497621859770657&lf;tp427&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp428&lf;ssVindex_02_l&lf;p429&lf;(dp430&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.8825130388958945e-18&lf;F-7.279711947929802e-20&lf;tp431&lf;sg5&lf;(F4.25400585260217&lf;F-2.842170943040401e-14&lf;F-7.105427357601002e-15&lf;tp432&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp433&lf;ssVthigh_bck_r&lf;p434&lf;(dp435&lf;g3&lf;(F4.547938750138404e-10&lf;F1.2473182494297477e-09&lf;F1.8459230383879978e-10&lf;tp436&lf;sg5&lf;(F-3.570662230365997&lf;F-10.412042020771928&lf;F-2.17580140441963&lf;tp437&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp438&lf;ssVindex_02_r&lf;p439&lf;(dp440&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.1060104311167156e-18&lf;F-8.492997272584769e-20&lf;tp441&lf;sg5&lf;(F-4.254001839627506&lf;F2.1309285713755344e-05&lf;F8.939731338131196e-05&lf;tp442&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp443&lf;ssVneck_02&lf;p444&lf;(dp445&lf;g3&lf;(F-2.426570649309934e-19&lf;F-3.727212517340059e-17&lf;F2.84363747966008e-22&lf;tp446&lf;sg5&lf;(F5.450919182046334&lf;F1.4210854715202004e-14&lf;F1.3086753902769033e-14&lf;tp447&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp448&lf;ssVneck_01&lf;p449&lf;(dp450&lf;g3&lf;(F3.1060104311167156e-18&lf;F-1.941256519447947e-18&lf;F-9.541663760026802e-15&lf;tp451&lf;sg5&lf;(F11.10442132885018&lf;F1.4210854715202004e-14&lf;F1.2705114738054135e-14&lf;tp452&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp453&lf;ssVcalf_twist_01_r&lf;p454&lf;(dp455&lf;g3&lf;(F-6.066426623274834e-20&lf;F-1.2424077269935359e-17&lf;F-7.454424442255643e-17&lf;tp456&lf;sg5&lf;(F25.925076009789063&lf;F0.08808086210734589&lf;F-0.10067777201496497&lf;tp457&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp458&lf;ssVupperarm_l&lf;p459&lf;(dp460&lf;g3&lf;(F-3.578124016646457e-15&lf;F-7.454425034680119e-17&lf;F-3.975693351829396e-16&lf;tp461&lf;sg5&lf;(F14.246126391528867&lf;F3.9968028886505635e-15&lf;F-2.842170943040401e-14&lf;tp462&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp463&lf;ssVlowerarm_twist_02_l&lf;p464&lf;(dp465&lf;g3&lf;(F8.251007514582334e-16&lf;F4.01248648404208e-15&lf;F-4.9282568712817974e-17&lf;tp466&lf;sg5&lf;(F7.849649281922929&lf;F-0.10263520133286619&lf;F-0.039097261663499694&lf;tp467&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp468&lf;ssVhead&lf;p469&lf;(dp470&lf;g3&lf;(F-4.6590156466750695e-18&lf;F5.056973233161904e-17&lf;F1.113193759360567e-14&lf;tp471&lf;sg5&lf;(F5.366716115241388&lf;F-7.105427357601002e-15&lf;F3.309852392163748e-14&lf;tp472&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp473&lf;ssVthigh_twist_02_l&lf;p474&lf;(dp475&lf;g3&lf;(F-9.220968467377749e-16&lf;F-4.926728712348722e-17&lf;F2.279365015779531e-18&lf;tp476&lf;sg5&lf;(F-28.47903032534198&lf;F0.17386366818659837&lf;F0.0056687508871462455&lf;tp477&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp478&lf;ssVthigh_fwd_lwr_r&lf;p479&lf;(dp480&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp481&lf;sg5&lf;(F-0.4782982245318834&lf;F6.809431755534755&lf;F-0.7662289287193396&lf;tp482&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp483&lf;ssVring_metacarpal_r&lf;p484&lf;(dp485&lf;g3&lf;(F-6.957463365701443e-16&lf;F4.969616689786745e-16&lf;F-3.1805546814635168e-15&lf;tp486&lf;sg5&lf;(F-2.804780390195006&lf;F-0.22716314349776212&lf;F-1.059677422149715&lf;tp487&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp488&lf;ssVpinky_03_l&lf;p489&lf;(dp490&lf;g3&lf;(F-1.1647539116687691e-18&lf;F3.7344922292879887e-17&lf;F-2.385414873642646e-15&lf;tp491&lf;sg5&lf;(F1.6696361810729314&lf;F-4.973799150320701e-14&lf;F7.105427357601002e-15&lf;tp492&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp493&lf;ssVlowerarm_r&lf;p494&lf;(dp495&lf;g3&lf;(F-1.1181637552020177e-16&lf;F1.2734642767578534e-16&lf;F1.2132853246549658e-19&lf;tp496&lf;sg5&lf;(F-25.246899842795102&lf;F2.8223703232299613e-05&lf;F-0.0003521030096464983&lf;tp497&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp498&lf;ssVpinky_01_r&lf;p499&lf;(dp500&lf;g3&lf;(F1.7393658414253607e-16&lf;F-1.8636062586700284e-17&lf;F-6.359944609015365e-15&lf;tp501&lf;sg5&lf;(F-4.397007478658836&lf;F-4.320010107505823e-05&lf;F-2.742241442632576e-05&lf;tp502&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp503&lf;ssVthigh_twist_01_r&lf;p504&lf;(dp505&lf;g3&lf;(F-2.4265706493099345e-18&lf;F-4.9695017594386094e-17&lf;F1.2430155545048131e-17&lf;tp506&lf;sg5&lf;(F14.287114027195173&lf;F-0.2111677104455696&lf;F-0.0656104539200193&lf;tp507&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp508&lf;ssVclavicle_pec_r&lf;p509&lf;(dp510&lf;g3&lf;(F9.293300890747829e-09&lf;F-5.707670764203161e-09&lf;F-6.492766834151767e-09&lf;tp511&lf;sg5&lf;(F-7.865587754738414&lf;F-9.462906268526464&lf;F9.48653599414189&lf;tp512&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp513&lf;ssVpinky_01_l&lf;p514&lf;(dp515&lf;g3&lf;(F2.4848083448933823e-17&lf;F-1.0094533901129326e-15&lf;F-1.113038837990675e-14&lf;tp516&lf;sg5&lf;(F4.3969685310509234&lf;F-1.4210854715202004e-14&lf;F-6.039613253960852e-14&lf;tp517&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp518&lf;ssVthigh_twist_01_l&lf;p519&lf;(dp520&lf;g3&lf;(F-2.4209895368165213e-16&lf;F-4.9583558853672917e-17&lf;F6.810511763785889e-18&lf;tp521&lf;sg5&lf;(F-14.287183632223432&lf;F0.21116362092060248&lf;F0.06561795810833893&lf;tp522&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp523&lf;ssVlowerarm_l&lf;p524&lf;(dp525&lf;g3&lf;(F-7.454425034680117e-17&lf;F8.386228164015132e-17&lf;F7.279711947929797e-20&lf;tp526&lf;sg5&lf;(F25.247300689778797&lf;F-5.329070518200751e-15&lf;F-4.263256414560601e-14&lf;tp527&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp528&lf;ssVpinky_03_r&lf;p529&lf;(dp530&lf;g3&lf;(F3.8825130388958945e-19&lf;F1.2436174577713411e-17&lf;F3.791516639546773e-22&lf;tp531&lf;sg5&lf;(F-1.669605250518572&lf;F-8.182164268788483e-05&lf;F-2.731165606206787e-05&lf;tp532&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp533&lf;ssVthigh_fwd_lwr_l&lf;p534&lf;(dp535&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp536&lf;sg5&lf;(F0.39812935021383566&lf;F-7.309934383244445&lf;F0.6883540989376549&lf;tp537&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp538&lf;ssVring_metacarpal_l&lf;p539&lf;(dp540&lf;g3&lf;(F1.2827915178708273e-31&lf;F-6.1623246953355635e-15&lf;F-2.3854160110976376e-15&lf;tp541&lf;sg5&lf;(F2.8047746330326007&lf;F0.22714913893837263&lf;F1.0596930230372124&lf;tp542&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp543&lf;ssVlowerarm_bck_r&lf;p544&lf;(dp545&lf;g3&lf;(F2.5444437451708134e-14&lf;F1.821991149690184e-07&lf;F7.600179899673703e-23&lf;tp546&lf;sg5&lf;(F-1.5862762297890214&lf;F-3.40166381371057&lf;F0.8892462340683522&lf;tp547&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp548&lf;ssVlowerarm_correctiveRoot_l&lf;p549&lf;(dp550&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp551&lf;sg5&lf;(F-3.552713678800501e-14&lf;F0.0&lf;F-5.684341886080802e-14&lf;tp552&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp553&lf;ssVpinky_02_l&lf;p554&lf;(dp555&lf;g3&lf;(F1.8636062586700294e-17&lf;F-7.76502607779179e-18&lf;F1.2722218725854067e-14&lf;tp556&lf;sg5&lf;(F2.6964561558300915&lf;F2.842170943040401e-14&lf;F3.552713678800501e-15&lf;tp557&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp558&lf;ssVcalf_twistCor_02_l&lf;p559&lf;(dp560&lf;g3&lf;(F7.786203609148045e-13&lf;F2.2381283947562397e-18&lf;F5.706716775610707e-10&lf;tp561&lf;sg5&lf;(F1.2931877790833823e-12&lf;F-2.3092638912203256e-14&lf;F-5.329070518200751e-15&lf;tp562&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp563&lf;ssVlowerarm_correctiveRoot_r&lf;p564&lf;(dp565&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp566&lf;sg5&lf;(F3.552713678800501e-14&lf;F0.0&lf;F-1.4210854715202004e-14&lf;tp567&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp568&lf;ssVpelvis&lf;p569&lf;(dp570&lf;g3&lf;(F-8.746525374024675e-15&lf;F1.9369081048443843e-14&lf;F-8.348956038841735e-15&lf;tp571&lf;sg5&lf;(F0.00010491341864091094&lf;F-2.2175793100900107&lf;F91.97877241348029&lf;tp572&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp573&lf;ssVlowerarm_bck_l&lf;p574&lf;(dp575&lf;g3&lf;(F0.0&lf;F1.821991149690184e-07&lf;F0.0&lf;tp576&lf;sg5&lf;(F1.3859786452671514&lf;F3.3413824665105096&lf;F-1.1761296577728615&lf;tp577&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp578&lf;ssVthigh_in_r&lf;p579&lf;(dp580&lf;g3&lf;(F-1.799777415242335e-11&lf;F1.7811260677643742e-08&lf;F-1.1301263803149778e-08&lf;tp581&lf;sg5&lf;(F9.68590753589298&lf;F0.7278592457790922&lf;F-8.591039347640994&lf;tp582&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp583&lf;ssVindex_01_l&lf;p584&lf;(dp585&lf;g3&lf;(F5.367186024969684e-15&lf;F-1.5902773407317588e-15&lf;F9.442271710594815e-15&lf;tp586&lf;sg5&lf;(F5.011096571254832&lf;F-4.263256414560601e-14&lf;F-3.552713678800501e-14&lf;tp587&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp588&lf;ssVupperarm_tricep_r&lf;p589&lf;(dp590&lf;g3&lf;(F3.7924387363587275e-14&lf;F6.075963094069785e-09&lf;F-6.5598940285076466e-15&lf;tp591&lf;sg5&lf;(F-0.2668024100145914&lf;F-4.4614700865646535&lf;F-0.06149644816963473&lf;tp592&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp593&lf;ssVthigh_twistCor_02_l&lf;p594&lf;(dp595&lf;g3&lf;(F-9.700266400628902e-13&lf;F4.420414151584964e-17&lf;F-1.9859764446290498e-10&lf;tp596&lf;sg5&lf;(F6.039613253960852e-13&lf;F1.8474111129762605e-13&lf;F-7.105427357601002e-15&lf;tp597&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp598&lf;ssVindex_03_r&lf;p599&lf;(dp600&lf;g3&lf;(F-4.549819967456126e-21&lf;F1.849846171874749e-40&lf;F4.659014165613886e-18&lf;tp601&lf;sg5&lf;(F-2.317379606058509&lf;F-3.482151544176304e-05&lf;F-1.4542190249322573e-05&lf;tp602&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp603&lf;ssVwrist_outer_r&lf;p604&lf;(dp605&lf;g3&lf;(F-2.5456861493432594e-14&lf;F-3.379339349054985e-15&lf;F3.1805546814635168e-15&lf;tp606&lf;sg5&lf;(F-0.03274741621405042&lf;F1.6563393407212317&lf;F0.025852490706835596&lf;tp607&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp608&lf;ssVwrist_outer_l&lf;p609&lf;(dp610&lf;g3&lf;(F-5.783391422739323e-14&lf;F9.34287937679908e-15&lf;F4.373262687012329e-15&lf;tp611&lf;sg5&lf;(F-0.03377910590610611&lf;F-1.4964501513575073&lf;F-0.18007976338952147&lf;tp612&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp613&lf;ssVpinky_metacarpal_r&lf;p614&lf;(dp615&lf;g3&lf;(F1.3914926731402885e-14&lf;F-1.5902773407317588e-15&lf;F1.5902773407317582e-15&lf;tp616&lf;sg5&lf;(F-2.558789946909897&lf;F-0.5003207482651391&lf;F-2.0640128067549632&lf;tp617&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp618&lf;ssVupperarm_tricep_l&lf;p619&lf;(dp620&lf;g3&lf;(F1.2424042072290844e-17&lf;F6.0759658770551315e-09&lf;F6.5598940305191614e-15&lf;tp621&lf;sg5&lf;(F0.11027252258691078&lf;F4.4684969383725015&lf;F-0.13297608266564964&lf;tp622&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp623&lf;ssVthigh_twistCor_02_r&lf;p624&lf;(dp625&lf;g3&lf;(F-9.971666437558038e-13&lf;F7.130715464304176e-18&lf;F-1.9859764570803904e-10&lf;tp626&lf;sg5&lf;(F-6.252776074688882e-13&lf;F-1.829647544582258e-13&lf;F7.105427357601002e-15&lf;tp627&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp628&lf;ssVindex_01_r&lf;p629&lf;(dp630&lf;g3&lf;(F-1.987846675914698e-16&lf;F-1.7241821476758432e-34&lf;F-9.93923337957349e-17&lf;tp631&lf;sg5&lf;(F-5.011125795495047&lf;F1.255617310391699e-05&lf;F-3.957483904848402e-05&lf;tp632&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp633&lf;ssVthigh_in_l&lf;p634&lf;(dp635&lf;g3&lf;(F7.81972953015046e-10&lf;F1.783717115280913e-08&lf;F2.898665566940874e-09&lf;tp636&lf;sg5&lf;(F-9.624813217005851&lf;F-0.7872489589315337&lf;F8.569114048741081&lf;tp637&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp638&lf;ssVmiddle_metacarpal_l&lf;p639&lf;(dp640&lf;g3&lf;(F5.168401357378214e-15&lf;F4.721135855297406e-15&lf;F6.162324695335562e-15&lf;tp641&lf;sg5&lf;(F2.9473948030703525&lf;F-1.4210854715202004e-14&lf;F2.4868995751603507e-14&lf;tp642&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp643&lf;ssVring_01_r&lf;p644&lf;(dp645&lf;g3&lf;(F3.7272125173400585e-16&lf;F-9.939233379573484e-17&lf;F-1.90833280887811e-14&lf;tp646&lf;sg5&lf;(F-4.653074699202811&lf;F-2.4532645610975123e-05&lf;F5.51067713736586e-05&lf;tp647&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp648&lf;ssVupperarm_correctiveRoot_r&lf;p649&lf;(dp650&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp651&lf;sg5&lf;(F1.4210854715202004e-14&lf;F-4.440892098500626e-15&lf;F2.842170943040401e-14&lf;tp652&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp653&lf;ssVcalf_kneeBack_l&lf;p654&lf;(dp655&lf;g3&lf;(F8.63470899849898e-15&lf;F-9.039156283186074e-11&lf;F6.957463365694632e-15&lf;tp656&lf;sg5&lf;(F0.2417278422375233&lf;F4.878562416091983&lf;F0.29022114718005376&lf;tp657&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp658&lf;ssVcalf_kneeBack_r&lf;p659&lf;(dp660&lf;g3&lf;(F-2.35124989635446e-14&lf;F-9.039096647785796e-11&lf;F-1.1330726052695231e-14&lf;tp661&lf;sg5&lf;(F-0.2449349235955367&lf;F-4.883272954147831&lf;F-0.3136576664737962&lf;tp662&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp663&lf;ssVring_01_l&lf;p664&lf;(dp665&lf;g3&lf;(F3.354491265606054e-16&lf;F-3.975693351829396e-16&lf;F-1.9084881093996662e-14&lf;tp666&lf;sg5&lf;(F4.653086398712624&lf;F4.263256414560601e-14&lf;F-1.0658141036401503e-14&lf;tp667&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp668&lf;ssVupperarm_correctiveRoot_l&lf;p669&lf;(dp670&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp671&lf;sg5&lf;(F2.842170943040401e-14&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp672&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp673&lf;ssVmiddle_metacarpal_r&lf;p674&lf;(dp675&lf;g3&lf;(F2.5842006786891076e-15&lf;F3.0811623476677818e-15&lf;F4.721135855297408e-15&lf;tp676&lf;sg5&lf;(F-2.9473407769463975&lf;F-3.6594834583070224e-05&lf;F5.6656297143575785e-05&lf;tp677&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp678&lf;ssVthigh_twist_02_r&lf;p679&lf;(dp680&lf;g3&lf;(F7.939739164542105e-16&lf;F-5.006542507309081e-17&lf;F1.0461552711837454e-17&lf;tp681&lf;sg5&lf;(F28.47895122626658&lf;F-0.17387919837305565&lf;F-0.005720635786287787&lf;tp682&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp683&lf;ssVring_03_r&lf;p684&lf;(dp685&lf;g3&lf;(F-3.1060104311167156e-18&lf;F-1.9897879324341458e-16&lf;F-4.2464986362923846e-20&lf;tp686&lf;sg5&lf;(F-3.0146802324974686&lf;F-4.5867904766794254e-05&lf;F6.070594956142372e-05&lf;tp687&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp688&lf;ssVupperarm_fwd_r&lf;p689&lf;(dp690&lf;g3&lf;(F2.5414619751459016e-11&lf;F-1.8553765734468644e-11&lf;F6.818250487293744e-10&lf;tp691&lf;sg5&lf;(F-3.1383986238786576&lf;F6.085192473500279&lf;F0.3701752564989107&lf;tp692&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp693&lf;ssVcalf_r&lf;p694&lf;(dp695&lf;g3&lf;(F7.765026077791785e-19&lf;F-7.453211749355463e-17&lf;F5.963577942910489e-16&lf;tp696&lf;sg5&lf;(F42.6392716823317&lf;F-1.7763568394002505e-15&lf;F1.2434497875801753e-14&lf;tp697&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp698&lf;ssVupperarm_twistCor_02_r&lf;p699&lf;(dp700&lf;g3&lf;(F-5.7155154104789345e-05&lf;F0.2392973804678591&lf;F-0.01368489098937418&lf;tp701&lf;sg5&lf;(F-4.263256414560601e-14&lf;F7.105427357601002e-15&lf;F5.684341886080802e-14&lf;tp702&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp703&lf;ssVmiddle_02_r&lf;p704&lf;(dp705&lf;g3&lf;(F-7.45442503468011e-17&lf;F4.080521203879585e-16&lf;F2.2263640113179687e-14&lf;tp706&lf;sg5&lf;(F-4.584910207198277&lf;F-3.1438676543871225e-05&lf;F-3.066261484363508e-05&lf;tp707&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp708&lf;ssVpinky_metacarpal_l&lf;p709&lf;(dp710&lf;g3&lf;(F-3.180554681463515e-15&lf;F1.3318572728628474e-14&lf;F3.180554681463515e-15&lf;tp711&lf;sg5&lf;(F2.558828022670248&lf;F0.5003618244700903&lf;F2.064049345253842&lf;tp712&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp713&lf;ssVthigh_r&lf;p714&lf;(dp715&lf;g3&lf;(F-3.620782510119271e-33&lf;F-2.3854160110976376e-15&lf;F1.7393658414253607e-16&lf;tp716&lf;sg5&lf;(F-3.012337184531063&lf;F-0.06336612202783964&lf;F10.395765560224552&lf;tp717&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp718&lf;ssVmiddle_02_l&lf;p719&lf;(dp720&lf;g3&lf;(F-8.696829207126799e-17&lf;F4.158171464657503e-16&lf;F1.9082854907504484e-14&lf;tp721&lf;sg5&lf;(F4.58496782082122&lf;F-1.4210854715202004e-14&lf;F-2.842170943040401e-14&lf;tp722&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp723&lf;ssVpinky_02_r&lf;p724&lf;(dp725&lf;g3&lf;(F1.2424041724466862e-17&lf;F-7.765026077791789e-17&lf;F-9.706282597239736e-20&lf;tp726&lf;sg5&lf;(F-2.696477533033118&lf;F3.068206100920179e-05&lf;F5.3911045487353704e-05&lf;tp727&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp728&lf;ssVupperarm_twistCor_02_l&lf;p729&lf;(dp730&lf;g3&lf;(F-5.715515410377221e-05&lf;F0.23929738046881302&lf;F-0.013684890989438625&lf;tp731&lf;sg5&lf;(F8.526512829121202e-14&lf;F7.105427357601002e-15&lf;F-4.263256414560601e-14&lf;tp732&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp733&lf;ssVcalf_l&lf;p734&lf;(dp735&lf;g3&lf;(F2.717759127227125e-18&lf;F-7.451998464030805e-17&lf;F5.963555193810652e-16&lf;tp736&lf;sg5&lf;(F-42.63936190162267&lf;F-7.829074149423576e-06&lf;F-4.4586872256502375e-05&lf;tp737&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp738&lf;ssVring_03_l&lf;p739&lf;(dp740&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp741&lf;sg5&lf;(F3.0147511882823608&lf;F-4.973799150320701e-14&lf;F-1.0658141036401503e-14&lf;tp742&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp743&lf;ssVupperarm_fwd_l&lf;p744&lf;(dp745&lf;g3&lf;(F2.5408755603765092e-11&lf;F-1.8548994902446404e-11&lf;F6.818210730360224e-10&lf;tp746&lf;sg5&lf;(F2.998532437400442&lf;F-6.078429423751953&lf;F-0.5550002675375794&lf;tp747&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp748&lf;ss.");
	setAttr -k on ".MaxHandle" -type "string" "344";
	setAttr -k on ".filmboxTypeID" -type "string" "2";
createNode joint -n "pelvis" -p "root";
	rename -uid "35FCB766-45F2-AC8C-C0CC-4497AA746FFE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.4314998759166215e-17 -2.2808661460876465 95.896781921386719 ;
	setAttr ".r" -type "double3" -90 -86.366893050032431 90 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99799027986901867 -0.063367194090933054 0 0 -0.063367194090933054 -0.99799027986901856 0
		 -1 0 0 0 -3.4314998759166215e-17 95.896781921386719 2.2808661460876465 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "345";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "spine_01" -p "pelvis";
	rename -uid "1F884200-435B-3B9F-F09C-FDBD5FBA1C3E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.6770534515381001 7.1054273576010019e-15 -4.6633694517662434e-16 ;
	setAttr ".r" -type "double3" -4.8675251569697186e-17 2.170350449737156e-16 -14.457321828304911 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98220797016103356 0.18779644126591361 0 0 0.18779644126591366 -0.98220797016103356 0
		 -1 0 0 0 4.3202194641745812e-16 99.566445524580573 2.0478615863412895 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "346";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "spine_02" -p "spine_01";
	rename -uid "5D7544A4-41AE-958C-7A45-6B8B9B5B73A2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 6.7950572967529155 1.7763568394002505e-14 1.8559423937125917e-16 ;
	setAttr ".r" -type "double3" -8.746765652515045e-18 2.1960301960102212e-16 3.4644695084247532 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99176140629857157 0.12809884065314411 0 0 0.12809884065314417 -0.99176140629857157 0
		 -1 0 0 0 2.4642770704619895e-16 106.24060495915218 3.3239491648694486 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "347";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "spine_03" -p "spine_02";
	rename -uid "F6CCA3A6-4826-F34B-BD15-7BB586FD8820";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 7.2382278442382812 -2.1316282072803006e-14 1.2292061026365006e-16 ;
	setAttr ".r" -type "double3" 7.7116540289205113e-17 2.1691490646910103e-16 10.946079405533537 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99804167658749543 -0.062552472328609832 0 0 -0.062552472328609776 -0.99804167658749543 0
		 -1 0 0 0 1.2350709678254889e-16 113.41919998506341 4.2511577600996997 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "348";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "spine_04" -p "spine_03";
	rename -uid "F144F9FD-4BD0-7C3C-F632-C2BBA54195E6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 8.5238933563232422 -7.1054273576010019e-15 2.5229931328786566e-16 ;
	setAttr ".r" -type "double3" 0.00044952872062768446 -2.3921337171503338e-12 5.8669839318741532 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 5.2939559203393771e-23 0.98641974755132855 -0.16424396987644224 0
		 -7.8457562571503496e-06 -0.16424396987138709 -0.98641974752096839 0 -0.99999999996922206 1.2886181543573101e-06 7.7392089065275053e-06 0
		 -1.2879221650531677e-16 121.92640080146128 3.7179671567962762 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "349";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "spine_05" -p "spine_04";
	rename -uid "016CA895-487E-D496-42F4-BE86A88D56D6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 19.439800262451158 -1.7817309228007616e-07 8.1130192624775943e-13 ;
	setAttr ".r" -type "double3" -0.0004494978431558535 5.3458782907563942e-06 0.68138935939447021 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -1.8369095114106268e-13 0.98439676970875745 -0.17596306370077883 0
		 1.5897534121574511e-11 -0.17596306370077877 -0.98439676970875722 0 -1 -2.9782035875482524e-12 -1.561715840808363e-11 0
		 5.8647193620207408e-13 141.10220369806046 0.525097363839651 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "350";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "neck_01" -p "spine_05";
	rename -uid "C74CB559-4158-6E3A-7FDD-EB9F5D9949FC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 11.887765884399442 1.4210854715202004e-14 1.5994409771696148e-15 ;
	setAttr ".r" -type "double3" 0 0 -63.431083850119741 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -1.430086734105515e-11 0.59767585135526535 0.80173784786971314 0
		 6.9462599149253823e-12 0.80173784786971325 -0.59767585135526524 0 -1 -2.9782035875482524e-12 -1.561715840808363e-11 0
		 -1.5988025270224795e-12 152.80448203371725 -1.5667103417368877 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "351";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "neck_02" -p "neck_01";
	rename -uid "527F58CF-4A71-3B01-F044-21947F4F7954";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.1102595329284384 -6.3948846218409017e-14 -4.1190754660921805e-14 ;
	setAttr ".r" -type "double3" -8.8008613067743125e-05 4.3017613063269318e-05 28.566883055025269 ;
	setAttr ".s" -type "double3" 2.6414885812536553 2.6414885812536548 2.6414885812536553 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.9832025410409944e-06 2.3992454735483926 1.1050262813829672 0
		 4.0574664787559382e-06 1.1050262813792084 -2.3992454735475119 0 -2.6414885812497944 3.4987078422993147e-06 -2.8557258235434299e-06 0
		 -7.4638755431134043e-11 155.85876075070655 2.5303781382488819 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "352";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "head" -p "neck_02";
	rename -uid "A0BD4C16-4B23-716B-81C3-EABF991A8CFA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 4.9129710197448446 -5.6843418860808015e-14 2.0180004314720307e-14 ;
	setAttr ".r" -type "double3" 9.5867333842692594e-05 -2.0167398412977789e-05 11.88016967271599 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.8462443473479728e-06 2.5753411378595201 0.58743505899671611 0
		 -8.5745658712419622e-07 0.58743505899741322 -2.5753411378598803 0 -2.641488581252871 1.6093232382645947e-06 1.246566766642931e-06 0
		 9.7433419183578301e-06 167.64618423150375 7.9593402347399493 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "353";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "clavicle_l" -p "spine_05";
	rename -uid "25CBFCCE-48AD-1BD3-F750-13AE233458DE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.5162687301636026 1.3147660493850672 -1.4279042482376099 ;
	setAttr ".r" -type "double3" 275.08463377508809 81.696844293391024 266.48927019730849 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999944 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98951783679139727 0.016658186516883368 0.14344669913819327 0
		 0.14384242652924226 -0.025658995449682018 -0.98926789712529006 0 -0.012798710945019172 0.99953195085223845 -0.027786187641774884 0
		 1.4279042482580846 146.30105055478364 -1.739813634031846 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "354";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_l" -p "clavicle_l";
	rename -uid "5C66834B-4977-1ECD-6343-6CBDEC4D4DDF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 17.809522628784183 1.9984014443252818e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -2.0688285108398583 6.3910159431698554 7.3063306209168655 ;
	setAttr ".s" -type "double3" 0.80473951427761992 0.80473951427761969 0.80473951427761958 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.80070602314923545 -0.078931784529596954 0.015662813389990808 0
		 0.010674084537645999 -0.051071460216919953 -0.80304635962712301 0 0.07975972825680637 0.79922910681610171 -0.049768528269535747 0
		 19.050744554180053 146.59772490451067 0.81490360029418163 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "355";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_l" -p "upperarm_l";
	rename -uid "7EDF1771-4630-0C44-B3F0-6BA748D22317";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 27.771139144897504 1.3322676295501878e-14 -1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" -19.281423276099421 -9.0659147478011057 -0.012765687109375073 ;
	setAttr ".s" -type "double3" 1.3202014147625982 1.3202014147625976 1.3202014147625982 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0604766085017672 0.063370359057423747 0.010299916737796771 0
		 0.034189194198143973 -0.41315037600841714 -0.97819752283241124 0 -0.054341417831649946 0.97674126168004016 -0.4144346099338348 0
		 41.287262937214983 144.40569933338406 1.2498777703481752 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "356";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_twist_02_l" -p "lowerarm_l";
	rename -uid "B0F7451F-4AEA-3C92-936D-7EB1F86EDDE6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 9.0836915969848633 -4.9737991503207013e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267101 -1.727533123096282 1.9858280815512837 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0589039958903761 0.078438813356848991 -0.036086118076720415 0
		 -0.0045150579565083849 -0.39312124777250879 -0.98699940560909905 0 -0.08622337044170203 0.98388798395967536 -0.39148753911295608 0
		 50.920305394661483 144.98133613145197 1.3434390374689684 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "357";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_twist_01_l" -p "lowerarm_l";
	rename -uid "1EE0204F-41B8-283E-8E60-53BDF0871208";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 18.167383193969734 -2.8421709430404007e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.2856768693497371 -1.7275255464775015 1.9858281662294912 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0589040072989975 0.078438683836474357 -0.036086064836849736 0
		 -0.0045150564174857031 -0.39312124721127956 -0.98699940583967671 0 -0.086223230413587731 0.9838879945097051 -0.39148754343911918 0
		 60.553347852108004 145.55697292951979 1.4370003045897159 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "358";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "hand_l" -p "lowerarm_l";
	rename -uid "DB1EFE77-43F5-3B2F-B8F1-78A6DB23938E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 27.251073837280281 -2.8421709430404007e-14 7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.4734707800079314 1.8489162697849657 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0620740835710396 0.024874911514987063 -0.010602247645703874 0
		 0.02501380543338972 -1.0620312820785771 0.014014039230536235 0 -0.010270268533967043 -0.014259121113730566 -1.0622729060465506 0
		 70.186389298205214 146.13260966715296 1.5305615618877124 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "364";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_metacarpal_l" -p "hand_l";
	rename -uid "18CF3EA0-4A9C-4F50-3A4E-6AB1CA5FBD60";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.4445061683654821 -0.38468080759049883 -2.3793244361877477 ;
	setAttr ".r" -type "double3" 3.2877464546581607 7.3255016683865284 -0.60616237917610682 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.054393312084134 0.03763249543732583 0.12478407987677127 0
		 0.043368669790786699 -1.0605082705892519 -0.046625040092772851 0 0.12290821691046759 0.051366634795698432 -1.0540339496035858 0
		 73.859524000340826 146.66076157988471 4.0161430058014682 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "367";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_01_l" -p "index_metacarpal_l";
	rename -uid "42E258E8-4454-F55F-41B0-73927077C1A4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.8770980834960831 0.043181736022262385 0.24087569117546437 ;
	setAttr ".r" -type "double3" 1.2722218725854078e-14 -6.3611093629270335e-15 23.372999646513961 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98507658332577386 -0.38617548351472425 0.096047638110848182 0
		 -0.37848411204486904 -0.98841413012624157 -0.092302828600604958 0 0.12290821691046759 0.051366634795698432 -1.0540339496035858 0
		 80.087775250191569 146.84850983216634 4.4936067761895808 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "368";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_02_l" -p "index_01_l";
	rename -uid "5EB9C2B2-4600-4769-8B84-9EBE4DD673E6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 4.0799999237060334 1.4210854715202004e-14 -9.2370555648813024e-14 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-14 -1.2722218725854067e-14 14.892568419110988 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.85471405701765124 -0.62723341791417764 0.069098828205759119 0
		 -0.61894262967063474 -0.85596275395179688 -0.11388728153282131 0 0.12290821691046762 0.051366634795698446 -1.054033949603586 0
		 84.106887635005307 145.27291388888912 4.8854811323540819 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "369";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_03_l" -p "index_02_l";
	rename -uid "06F4CFC7-4978-F962-2323-51904AAA3E97";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 2.5950000286102579 2.8421709430404007e-14 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 1.9083328088781113e-14 -1.9083328088781094e-14 12.516400997546961 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.7002642603097069 -0.79783004838499827 0.04277508034093562 0
		 -0.7894656824840911 -0.69968650879878824 -0.12615567151805579 0 0.12290821691046759 0.051366634795698432 -1.0540339496035858 0
		 86.324870637419679 143.6452431514565 5.0647925935249853 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "370";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_metacarpal_l" -p "hand_l";
	rename -uid "183160C6-4B96-B505-F5BA-1FB1ABCCAFE0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.3758335113525355 -0.75357073545457354 -0.18286436796188532 ;
	setAttr ".r" -type "double3" -4.2725003027381483 -0.13075114456697293 -2.3183915821069561 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0601666658299453 0.067783681582905125 -0.013584588524013867 0
		 0.068713437338868796 -1.056135715849321 0.092673303101811461 0 -0.0075915784509416814 -0.0933555038002052 -1.0582814586479881 0
		 73.754802975470668 147.01950640651904 1.67846143270728 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "371";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_01_l" -p "middle_metacarpal_l";
	rename -uid "4B64A15F-4115-A32B-705F-68A95788D0FA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 6.0982089042663503 8.5265128291212022e-14 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 1.908332808878111e-14 9.541664044390544e-15 31.57268201739824 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.93921422789956377 -0.49522116165827756 0.036948112646465192 0
		 -0.49653955524100291 -0.93529315127788493 0.086068107479083708 0 -0.0075915784509416832 -0.093355503800205214 -1.0582814586479883 0
		 80.21992077704121 147.43286545711177 1.5956197740093294 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "372";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_02_l" -p "middle_01_l";
	rename -uid "10408A76-4BDA-129C-AEC5-90A485252044";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.1690001487732076 0 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 6.3611093629270351e-15 9.5416640443905456e-15 20.769210477739534 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.70210548792332461 -0.79469910461248539 0.065067233131189742 0
		 -0.79732225582624849 -0.69890672547172228 0.067373120202484274 0 -0.0075915784509416849 -0.093355503800205228 -1.0582814586479885 0
		 85.074719260783965 144.87306719882449 1.7866045737757521 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "373";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_03_l" -p "middle_02_l";
	rename -uid "05CC7D66-400E-D20B-0370-9EA9427960C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 2.473999977111788 3.5527136788005009e-14 0 ;
	setAttr ".r" -type "double3" 6.3611093629270375e-15 0 9.9999999709533842 ;
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.55298537166167216 -0.90398971849258669 0.075777935173636429 0
		 -0.90712847741436753 -0.55029071102571314 0.055050764699385815 0 -0.0075915784509416832 -0.093355503800205214 -1.0582814586479883 0
		 86.811728221836304 142.90698163220242 1.9475809070530452 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "374";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_01_l" -p "hand_l";
	rename -uid "B05E03DC-4C9C-C7EC-9D18-7B9BB8C4B0A1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 1.9924465417861867 1.3566048145294189 -2.5815360546112096 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023169 20.508675504416587 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.77640897481775051 -0.25841092166572793 0.67760270605835216 0
		 0.51125261089279206 -0.50900337331050294 -0.77991593244728197 0 0.51433685416178032 0.89603118773493473 -0.24762519849273329 0
		 72.362962050528679 144.77822528339175 4.2707444701178154 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "375";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_02_l" -p "thumb_01_l";
	rename -uid "F11E6C17-4D26-6BB3-BF3C-B8B433B993B5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 4.3779997825622416 9.9475983006414026e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" 3.5306280002014678 -1.932290495770159 23.246005781061349 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.93198243566667061 -0.40786412844344422 0.30624846156213548 0
		 0.19276120431754809 -0.30893992052709773 -0.99806401171770553 0 0.47221222515957079 0.93109371499600446 -0.19700922865710191 0
		 75.762080373460165 143.64690232452733 7.2372889699048146 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "376";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_03_l" -p "thumb_02_l";
	rename -uid "72A643FC-4A12-A7DA-DEA9-13A6405504AD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.0859999656677104 5.6843418860808015e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 0 1.5902773407317588e-15 9.9999999709533878 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95129616015617091 -0.45531460995643247 0.12828386298997721 0
		 0.027995677403055336 -0.23342156654097221 -1.0360806639405948 0 0.4722122251595709 0.93109371499600468 -0.19700922865710196 0
		 78.638178137930467 142.38823363815382 8.18237171177128 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "377";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_metacarpal_l" -p "hand_l";
	rename -uid "EB0B0EB8-4074-EBD1-1AA0-8684F91C1D08";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.3143784999847448 -0.30591726303100586 2.3911108970642072 ;
	setAttr ".r" -type "double3" -27.769049129171471 -19.527703069996914 11.850627289629651 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98105733024336061 -0.18737647808417554 -0.36214513403858273 0
		 -0.004140815031839387 -0.94812449847569746 0.47934884678317619 0 -0.40772772323932682 -0.4412284201207568 -0.87624660504397711 0
		 73.674295300280548 146.50585310225645 -1.0488777575901067 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "378";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_01_l" -p "pinky_metacarpal_l";
	rename -uid "23C0006A-4D16-B5AB-3284-27ABB3C8381D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 4.9575676918029785 -0.14312039315700531 -0.19884027540683036 ;
	setAttr ".r" -type "double3" 10.491640062438075 0.60504264270136865 14.83368088285882 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95155428561484556 -0.41918207690757386 -0.21809024691342382 0
		 -0.32331957889657847 -0.93518918538331131 0.38680507405606535 0 -0.34458876839131669 -0.28007160122517255 -0.96516890063708705 0
		 78.619618752356772 145.80035145986028 -2.7386082529831643 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "379";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_02_l" -p "pinky_01_l";
	rename -uid "AAEF56DB-48DC-5573-A710-CE96674713BC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.8159999847412109 1.9895196601282805e-13 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.8278125961003172e-32 -1.5902773407317598e-15 21.286999049243864 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.76925531060992736 -0.73009371059233563 -0.062785099531834282 0
		 -0.64671274586810445 -0.71920483856267448 0.43959020961692696 0 -0.34458876839131664 -0.2800716012251725 -0.96516890063708694 0
		 82.250749891743368 144.200752660777 -3.5708406318769743 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "380";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_03_l" -p "pinky_02_l";
	rename -uid "FDF127CA-4880-20DA-6787-B6ADCBF38C80";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 2.0399999618530131 -1.4210854715202004e-14 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 -3.1805546814635152e-15 4.9170000470223689 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71099298746385897 -0.78905177375449753 -0.024875650411239458 0
		 -0.71026761178238762 -0.65397991130716671 0.44335394791395949 0 -0.34458876839131664 -0.2800716012251725 -0.96516890063708694 0
		 83.820030696042849 142.7113615190195 -3.6989222325268774 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "381";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_metacarpal_l" -p "hand_l";
	rename -uid "40F404A3-4D3C-064C-A724-8CAF2986CDD4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 3.374303817749027 -0.54251688718795776 1.0917565822601265 ;
	setAttr ".r" -type "double3" -13.299834889366403 -11.809318654920903 -1.5945633604277292 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.03640858881788 0.050348185336155066 -0.22815526539874056 0
		 0.10535823616563847 -1.0267003919337068 0.2520287188923504 0 -0.20854113974916133 -0.26848443773859559 -1.0065581093983547 0
		 73.745366887997292 146.7771475919605 0.3274400669068982 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "382";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_01_l" -p "ring_metacarpal_l";
	rename -uid "E79F2888-4CCE-04B3-B243-85A75FB1E19D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.645516872406013 -0.041624534875140284 -0.020689174532876109 ;
	setAttr ".r" -type "double3" 6.395844444585113 -0.11693801365856014 29.414482479749058 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95412118851397187 -0.46092637336963072 -0.077020541625524533 0
		 -0.4380795783537727 -0.94315860143280672 0.21741817643420108 0 -0.1627008559576445 -0.16349696861689014 -1.0370774805167731 0
		 79.59635811933704 147.10967976943289 -0.95028005522621073 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "383";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_02_l" -p "ring_01_l";
	rename -uid "C2BAEB80-4E6C-347D-5772-7587D3752CC6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 4.9770002365112163 -9.9475983006414026e-14 -9.5923269327613525e-14 ;
	setAttr ".r" -type "double3" -1.272221872585407e-14 1.7493050748049337e-14 18.963999541971834 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.75996983594635137 -0.74241066990934446 -0.0021848404328670967 0
		 -0.72436648721045138 -0.74217765146164727 0.23064703281972962 0 -0.16270085595764447 -0.16349696861689011 -1.0370774805167728 0
		 84.345019500231501 144.81564910015808 -1.3336113091125905 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "384";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_03_l" -p "ring_02_l";
	rename -uid "A143ABEE-497B-0CE0-7A5A-B8A13FC2A3CE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 2.265000104904189 3.5527136788005009e-14 1.6342482922482304e-13 ;
	setAttr ".r" -type "double3" -6.3611093629270351e-15 2.5444437451708122e-14 9.1679997480249895 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.63484833534465401 -0.85117771989004087 0.034592024285901496 0
		 -0.83619887015712679 -0.61440846208947975 0.22804872096125889 0 -0.1627008559576445 -0.16349696861689014 -1.0370774805167731 0
		 86.066351258373956 143.13408885493138 -1.3385599729223947 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "385";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_01_l" -p "upperarm_l";
	rename -uid "A2796565-4834-415C-B57B-7EAC653B9985";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 9.2570457458496378 1.1546319456101628e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" 2.6828436514387616e-10 -2.1533312395632254 -0.32660888591551879 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.80306368534135486 -0.04855371173885048 0.018355930979471059 0
		 0.015238231348945537 -0.051520570788063928 -0.80294402851681235 0 0.049620554522279474 0.80161951928694453 -0.050493887816732766 0
		 26.462916839449857 145.86704976431855 0.95989498035402843 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "387";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_02_l" -p "upperarm_l";
	rename -uid "834F5952-418B-0579-5249-E8975659CC8D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 18.514091491699276 1.0658141036401503e-14 -1.4210854715202004e-13 ;
	setAttr ".r" -type "double3" -2.7829853462805776e-15 1.0821340342010633e-14 7.951386703658788e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.80070602314923578 -0.078931784529596996 0.015662813389990815 0
		 0.010674084537645998 -0.051071460216919946 -0.8030463596271229 0 0.079759728256806384 0.79922910681610193 -0.049768528269535761 0
		 33.875089124719665 145.13637462412652 1.1048863604138823 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "389";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "clavicle_r" -p "spine_05";
	rename -uid "1320CBBA-42B0-27F1-2CE6-118D2FB4A1B2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 5.5162200927734375 1.314811229705807 1.4278726577758791 ;
	setAttr ".r" -type "double3" 275.08463377509014 81.696844293391095 86.489270197311185 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98951783679597716 -0.016658186510996053 -0.14344669910728455 0
		 0.14384242649818879 0.025658995450550406 0.98926789712978314 0 -0.012798710939938545 -0.99953195085231439 0.027786187641387589 0
		 -1.4278726577554037 146.30099472621771 -1.7398495510540521 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "400";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_r" -p "clavicle_r";
	rename -uid "7A5064B4-4095-816A-5E59-61AD151E630A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -17.809625625610355 2.8716144657714437e-06 0.00043809693306684494 ;
	setAttr ".r" -type "double3" -2.0688285108398681 6.3910159431697995 7.3063306209168779 ;
	setAttr ".s" -type "double3" 0.80473951427761992 0.80473951427761969 0.80473951427761936 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.8007060231492551 0.078931784534361366 -0.015662813364980779 0
		 0.010674084512257914 0.05107146021699361 0.80304635962745607 0 0.079759728260007462 -0.79922910681562642 0.04976852827203726 0
		 -19.050820074971579 146.59723297338073 0.81489747111585187 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "401";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_r" -p "upperarm_r";
	rename -uid "378A60DB-4C76-52BF-6D4A-FD92BC613FEC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -27.770694732666016 -3.6415315207705135e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -19.281423276099421 -9.0659147478011057 -0.012765687109375073 ;
	setAttr ".s" -type "double3" 1.3202014147625976 1.3202014147625976 1.3202014147625982 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0604766085024655 -0.063370359051113434 -0.010299916704670687 0
		 0.034189194165130325 0.41315037600863297 0.97819752283347428 0 -0.054341417838783435 -0.97674126168035824 0.41443460993214981 0
		 -41.286982614456548 144.40524248037235 1.2498646797294279 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "402";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_twist_02_r" -p "lowerarm_r";
	rename -uid "AC52FE32-4DE0-26EA-ECF3-C4804F4CAE1D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -9.0836620330810547 -1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267176 -1.7275331230962716 1.9858280815512903 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0589039958897148 -0.078438813350547212 0.036086118109797602 0
		 -0.0045150579896778955 0.39312124777249441 0.98699940560895372 0 -0.08622337044807607 -0.98388798396018418 0.39148753911027545 0
		 -50.919993720080953 144.98087740490766 1.3434256420435227 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "403";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "lowerarm_twist_01_r" -p "lowerarm_r";
	rename -uid "C86D8E8E-4DE0-2F1E-2147-9B8CE9F94CEB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -18.167304992675795 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.285676869349748 -1.7275255464774926 1.9858281662294843 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0589040072983369 -0.078438683830172717 0.036086064869926715 0
		 -0.0045150564506549803 0.39312124721126512 0.98699940583953161 0 -0.08622323041996173 -0.98388799451021325 0.39148754343643821 0
		 -60.552984598719284 145.55651112074929 1.4369864079023356 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "404";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "hand_r" -p "lowerarm_r";
	rename -uid "37713B47-4140-97FA-0385-0389F4CBB108";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -27.251010894775405 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.4734707800079545 1.8489162697849562 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.062074083570856 -0.024874911508666643 0.010602247678879049 0
		 0.025013805427507751 1.0620312820787261 -0.014014039229768238 0 -0.01027026856723303 0.014259121113682827 1.0622729060462301 0
		 -70.186042226411701 146.13214882528007 1.530547822063681 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "410";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_metacarpal_r" -p "hand_r";
	rename -uid "3E0ADC2E-4739-3886-A805-D6853C72BEA8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.3146772384643555 0.3059353530407094 -2.3912868499755877 ;
	setAttr ".r" -type "double3" -27.769049129171506 -19.527703069996939 11.850627289629648 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98105733023093278 0.18737647809001812 0.36214513406922499 0
		 -0.0041408150225078974 0.94812449847566671 -0.47934884678331796 0 -0.40772772326932288 0.44122842011834207 0.87624660503123597 0
		 -73.674263251222015 146.50541639467832 -1.0490818283470498 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "413";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_01_r" -p "pinky_metacarpal_r";
	rename -uid "021CC276-4AFE-92EF-F71A-3AA33949BADA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -4.9573006629943777 0.14326146245001325 0.19892024993895774 ;
	setAttr ".r" -type "double3" 10.491640062438091 0.60504264270136898 14.833680882858809 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95155428560553779 0.41918207691323867 0.2180902469431415 0
		 -0.32331957889006058 0.93518918538138296 -0.38680507406617659 0 -0.34458876842313135 0.28007160122313424 0.96516890062632033 0
		 -78.619357924646948 145.80013382545954 -2.7387131647015357 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "414";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_02_r" -p "pinky_01_r";
	rename -uid "E50B4E3B-42B2-28EC-9952-B9B39DB9F7E1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.8160362243652202 3.0366025399075625e-05 3.26292065402356e-05 ;
	setAttr ".r" -type "double3" -9.5416640443905471e-15 -7.9513867036587903e-15 21.286999049243828 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.76925531060362129 0.73009371059691364 0.062785099555853902 0
		 -0.64671274585865213 0.719204838558822 -0.4395902096371373 0 -0.34458876842313135 0.28007160122313424 0.96516890062632033 0
		 -82.250544609556286 144.20055737184666 -3.5709337002546189 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "415";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "pinky_03_r" -p "pinky_02_r";
	rename -uid "89DDB44D-4D6A-DA1B-A5A4-0D89736EB8EA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.0399997234344767 -1.752387652231846e-05 -3.1002964533399791e-05 ;
	setAttr ".r" -type "double3" 1.7075472734198601e-06 1.5902773288832689e-15 4.9170000470223734 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71099298745838591 0.78905177375872815 0.024875650433438375 0
		 -0.7102676220419748 0.6539799196497198 -0.44335391917187966 0 -0.34458874725550703 0.28007158173301416 0.96516891383929682 0
		 -83.819803214250513 142.711145117841 -3.6990375057570075 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "416";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_metacarpal_r" -p "hand_r";
	rename -uid "12DB02EC-4B4A-FAF5-69B5-DDB01F89655E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.3742079734802175 0.54299175739289751 -1.0917816162109411 ;
	setAttr ".r" -type "double3" -13.299834889366419 -11.809318654920897 -1.5945633604277316 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0364085888110521 -0.050348185329984689 0.22815526543111433 0
		 0.10535823616740143 1.0267003919343309 -0.2520287188890728 0 -0.20854113978219957 0.26848443773736763 1.0065581093918377 0
		 -73.744905887039764 146.77718833599914 0.32739409539900399 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "417";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_01_r" -p "ring_metacarpal_r";
	rename -uid "2937E9FF-4FB0-6626-C563-A3836A9794FB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -5.6457118988036932 0.041443493217229843 0.020674973726276136 ;
	setAttr ".r" -type "double3" 6.3958444445851077 -0.11693801365858834 29.414482479749026 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95412118850882233 0.46092637337530895 0.077020541655322031 0
		 -0.43807957835259292 0.94315860143019792 -0.21741817644789724 0 -0.16270085599101183 0.16349696861593505 1.0370774805116885 0
		 -79.596115358152531 147.10954064442521 -0.95033918945633311 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "418";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_02_r" -p "ring_01_r";
	rename -uid "9948C339-4616-62EA-97F9-4CB1361C490C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -4.9770674705505655 -2.0846833635346229e-05 -2.3612021330166044e-05 ;
	setAttr ".r" -type "double3" -6.361109362927032e-15 3.1805546814635152e-15 18.963999541971834 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.75996983594186518 0.74241066991386706 0.0021848404565963792 0
		 -0.7243664872076625 0.74217765145733516 -0.2306470328423659 0 -0.16270085599101192 0.16349696861593513 1.0370774805116889 0
		 -84.344827914174658 144.81545546281575 -1.3336955769082584 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "419";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ring_03_r" -p "ring_02_r";
	rename -uid "AA4BEC1C-44D0-0DA7-E496-19B40D30DFC4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.2649745941161967 5.0017570160321156e-05 -1.1221488417589853e-05 ;
	setAttr ".r" -type "double3" -1.2722218725854064e-14 7.9513867036587919e-15 9.1679997480249771 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.63484833534066942 0.8511777198938183 -0.034592024266081919 0
		 -0.8361988701536589 0.61440846208450262 -0.22804872098738685 0 -0.16270085599101194 0.16349696861593516 1.0370774805116891 0
		 -86.066174690183459 143.13394944430345 -1.3386673589917295 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "420";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_metacarpal_r" -p "hand_r";
	rename -uid "9A40DD22-4E2A-8127-057C-1E9BB90CE0C9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.3758001327514542 0.75400394201280108 0.18280552327632549 ;
	setAttr ".r" -type "double3" -4.2725003027381572 -0.13075114456697923 -2.3183915821069649 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0601666658299238 -0.067783681576596186 0.013584588557130118 0
		 0.068713437335479063 1.0561357158497289 -0.092673303099678611 0 -0.0075915784845537538 0.093355503800173545 1.05828145864775 0
		 -73.754409012644615 147.01950397417812 1.678379466571134 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "421";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_01_r" -p "middle_metacarpal_r";
	rename -uid "D452AA69-46F5-03A4-895B-37867E3278F0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -6.0983657836914098 -0.00012385072479048631 1.430381875167086e-06 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 -9.5416640443905535e-15 31.572682017398236 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.93921422789777043 0.49522116166386582 -0.036948112617134175 0
		 -0.4965395552438796 0.93529315127492973 -0.086068107494605611 0 -0.0075915784845537529 0.093355503800173531 1.0582814586477498 0
		 -80.219701653619893 147.43274298895761 1.5955486679311808 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "422";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_02_r" -p "middle_01_r";
	rename -uid "E19FA23B-4F6F-E5BC-6E96-8F9AB2344CF5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -5.1689915657043457 -7.7438591702616577e-05 -3.7045669163404682e-05 ;
	setAttr ".r" -type "double3" -1.2722218725854073e-14 -1.113194138512231e-14 20.769210477739502 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.70210548792062766 0.7946991046166616 -0.065067233109268818 0
		 -0.79732225582830174 0.69890672546697785 -0.067373120227398442 0 -0.007591578484553752 0.093355503800173517 1.0582814586477496 0
		 -85.074453343453996 144.87287309495721 1.7865006106660777 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "423";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "middle_03_r" -p "middle_02_r";
	rename -uid "BA479758-4765-7F56-5A72-AC933E1213F8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.4740469455718994 4.5777305793137657e-05 3.4385015165838695e-05 ;
	setAttr ".r" -type "double3" -9.5416640443905456e-15 -1.4312496066585827e-14 9.9999999709533895 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.55298537165865957 0.90398971849587573 -0.075777935156374848 0
		 -0.90712847741592229 0.55029071102031613 -0.05505076472772806 0 -0.0075915784845537555 0.093355503800173559 1.05828145864775 0
		 -86.811532041614555 142.90678540662896 1.9475133048609574 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "424";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_metacarpal_r" -p "hand_r";
	rename -uid "3F74B321-4BF5-6C74-AD36-52B0F3FF0F3D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.4445140361785747 0.38516682386398315 2.3793087005615163 ;
	setAttr ".r" -type "double3" 3.287746454658151 7.3255016683865124 -0.60616237917611115 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0543933120882552 -0.037632495431052904 -0.12478407984383565 0
		 0.043368669783019696 1.0605082705895108 0.046625040094114049 0 0.12290821687784911 -0.05136663479495359 1.0540339496074262 0
		 -73.859172966102861 146.66081687381097 4.0161056558656671 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "425";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_01_r" -p "index_metacarpal_r";
	rename -uid "8CAB7DC6-40B8-D2B1-89EB-E3A0D79F2B27";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -5.8772053718567072 -0.043412361294002721 -0.2409516423940623 ;
	setAttr ".r" -type "double3" -3.1805546814635183e-15 -9.5416640443905487e-15 23.372999646513961 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98507658332647552 0.38617548352058512 -0.096047638080083125 0
		 -0.37848411205363375 0.98841413012399104 0.092302828588770064 0 0.12290821687784911 -0.05136663479495359 1.0540339496074262 0
		 -80.087556677039643 146.84832848493471 4.4934920058631311 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "426";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_02_r" -p "index_01_r";
	rename -uid "F02C2AAC-462F-D73A-6C49-DC93A27B9216";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -4.0799326896667338 5.0402058775489422e-06 3.2106661807418391e-05 ;
	setAttr ".r" -type "double3" -1.908332808878111e-14 -4.7708320221952791e-15 14.892568419110978 ;
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.85471405701607606 0.62723341791926246 -0.069098828179069094 0
		 -0.61894262967928482 0.85596275394811538 0.11388728151347703 0 0.12290821687784911 -0.05136663479495359 1.0540339496074262 0
		 -84.106600792643846 145.27276183837077 4.8853942109681547 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "427";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "index_03_r" -p "index_02_r";
	rename -uid "BE11C739-4B32-24A1-576D-138FA8102139";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.595076322555542 3.9602186021170382e-05 -3.5606819821509816e-06 ;
	setAttr ".r" -type "double3" -1.5902773407317584e-14 3.1805546814635156e-15 12.516400997546951 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.70026426030629463 0.79783004838916416 -0.042775080319072206 0
		 -0.78946568249219451 0.69968650879409278 0.12615567149338708 0 0.12290821687784909 -0.051366634794953576 1.054033949607426 0
		 -86.324673953679877 143.64507732770937 5.0647117009976057 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "428";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_01_r" -p "hand_r";
	rename -uid "CAC80D00-4BD6-A315-881B-40B7ECEA1B4C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -1.9928325414657522 -1.3566571474075175 2.581325531005854 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023133 20.508675504416566 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.77640897483737803 0.25841092167033958 -0.677602706034103 0
		 0.5112526108654013 0.50900337331355505 0.77991593246324586 0 0.51433685415937691 -0.89603118773187107 0.24762519850881057 0
		 -72.363024085979092 144.77771546217861 4.2705037376345629 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "429";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_02_r" -p "thumb_01_r";
	rename -uid "333BE74D-489E-F2A2-45C9-09897DF2EB69";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -4.3778247833252024 0.00042712956202706209 -0.00013574546028394252 ;
	setAttr ".r" -type "double3" 3.5306280002014532 -1.9322904957701399 23.246005781061324 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.93198243567380834 0.40786412844898623 -0.30624846153302893 0
		 0.1927612042845343 0.30893992052825781 0.99806401172372317 0 0.47221222515895739 -0.93109371499319171 0.19700922867186388 0
		 -75.761857985807524 143.64677676756222 7.2372291685129824 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "430";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thumb_03_r" -p "thumb_02_r";
	rename -uid "95E6D3A6-4FC3-A5EC-F78D-08BC356FEB23";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -3.0859522819519114 -1.4851160827333842e-05 4.5825581764802337e-05 ;
	setAttr ".r" -type "double3" 0 -9.5416640443905566e-15 9.9999999709533718 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.95129616015746732 0.45531460996209161 -0.1282838629602682 0
		 0.027995677369303917 0.23342156654115237 1.0360806639414666 0 0.4722122251589575 -0.93109371499319193 0.19700922867186393 0
		 -78.637892533241924 142.38808027362111 8.1822915128784572 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "431";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_01_r" -p "upperarm_r";
	rename -uid "C141A565-45AD-F318-3A32-C8AA088FE469";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -9.2568979263305522 1.0202637897194222e-05 -0.00010078256310919187 ;
	setAttr ".r" -type "double3" 2.6828754950018744e-10 -2.153331239563208 -0.32660888591551801 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.80306368534163919 0.04855371174362913 -0.018355930954387003 0
		 0.015238231323557965 0.051520570788164743 0.80294402851728797 0 0.049620554525472371 -0.80161951928664854 0.050493887818292872 0
		 -26.462881929748328 145.86665057022455 0.95988971306602544 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "433";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_02_r" -p "upperarm_r";
	rename -uid "47A42BED-4F01-594A-CFB8-5BA62084D565";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -18.513795852661133 2.0405275791723909e-05 -0.00020156512620417288 ;
	setAttr ".r" -type "double3" 1.1927080055488188e-15 1.0548011424072363e-14 -3.975693351829395e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.80070602314925532 0.078931784534361379 -0.015662813364980783 0
		 0.010674084512257914 0.05107146021699361 0.80304635962745607 0 0.079759728260007476 -0.79922910681562664 0.049768528272037274 0
		 -33.874943784525101 145.13606816706834 1.1048819550161979 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "435";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_r" -p "pelvis";
	rename -uid "223FEB80-4422-0790-4D25-0AB4C5804678";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.3657262325286723 -0.11948779225349782 9.9690914154052734 ;
	setAttr ".r" -type "double3" 8.4774903051507433 1.887191530326112 179.33805058375921 ;
	setAttr ".s" -type "double3" 1.0608213694388235 1.0608213694388233 1.0608213694388235 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.034934704661503814 -1.0588207514149091 0.054955988221873184 0
		 -0.15630236057704097 0.049241848768899948 1.0480872054680974 0 -1.0486615833272044 -0.042612610352452542 -0.15438596746690383 0
		 -9.9690914154052734 93.543381742615168 2.550023234662302 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "450";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_r" -p "thigh_r";
	rename -uid "0BFB0718-4117-A1ED-4907-73A3E229F001";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 43.341262817382777 -2.5757174171303632e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 -3.5625344172827726 -15.357605784179137 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0097760621821524202 -1.0347029584680612 -0.23374386452635085 0
		 -0.14146885683860846 -0.23293743625462943 1.0252164118828559 0 -1.0513006082995715 0.021723636588356292 -0.14013241045664293 0
		 -8.4549771992233964 47.652753279042876 4.9318851635754708 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "451";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "foot_r" -p "calf_r";
	rename -uid "28507C5F-4B55-20CB-D948-E6A1722B3284";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 42.217948913574233 -7.7715611723760958e-16 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.2552056673980627 2.814170070447251 26.801161166459824 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0033799185685435065 -1.0284083211363106 0.26020545541192219 0
		 -0.15370937067518867 0.25793551567444173 1.0174402572035655 0 -1.049620876019131 -0.034461175682433884 -0.14983464837438953 0
		 -8.0422519054413684 3.96971663771415 -4.9363013678594267 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "452";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ball_r" -p "foot_r";
	rename -uid "A7ED3C3C-4863-0F64-0E00-64B69EFA3710";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 7.0094366073608363 15.237594604492184 -0.53894561529159546 ;
	setAttr ".r" -type "double3" 5.2578544577943763e-14 -5.0888874903416268e-14 -90.000000000000014 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15370937067518864 -0.25793551567444145 -1.0174402572035652 0
		 -0.0033799185685434714 -1.0284083211363104 0.26020545541192192 0 -1.0496208760191312 -0.034461175682433891 -0.14983464837438956 0
		 -9.8424157387967259 0.71004322570641909 12.471687177058223 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "453";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_twist_02_r" -p "calf_r";
	rename -uid "B0866B48-4862-DD4F-3E24-C8B92FA2725D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 14.072649955749519 6.2172489379008766e-15 0.037728950381280768 ;
	setAttr ".r" -type "double3" -0.004655912874655054 0.25816272471228802 2.6643342814062043 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0079262551205888029 -1.044499743928917 -0.18520107254076737 0
		 -0.14168493826655529 -0.18458921091252012 1.0349851106857308 0 -1.0512870828685315 0.017002529375962659 -0.14088421219800959 0
		 -8.3570665666746695 33.092560346350361 1.6372025300310766 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "456";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_twist_01_r" -p "calf_r";
	rename -uid "5D89FC37-44D0-43AC-17D7-0AB2F8D1DDB7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 28.145299911499034 7.5495165674510645e-15 0.075457900762563312 ;
	setAttr ".r" -type "double3" -0.004655912874655054 0.25816272471228802 2.6643342814062043 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0079262551205888029 -1.044499743928917 -0.18520107254076737 0
		 -0.14168493826655529 -0.18458921091252012 1.0349851106857308 0 -1.0512870828685315 0.017002529375962659 -0.14088421219800959 0
		 -8.2591559341259462 18.532367413657852 -1.657480103513322 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "458";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_twist_01_r" -p "thigh_r";
	rename -uid "44FD7F6F-4571-5DCB-1650-B0BE248FB39D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 14.447087287902804 -2.6645352591003757e-15 0 ;
	setAttr ".r" -type "double3" -2.065027893746282e-10 0.25820470285918773 -1.3073006136480809 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043217016027288703 -1.0594657961108367 0.031725293615490702 0
		 -0.15546465118006075 0.025072332296679802 1.0490682047630304 0 -1.0484774721553247 -0.047387581521922913 -0.15424456346446708 0
		 -9.4643866877834224 78.246505924681145 3.3439771934966593 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "462";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_twist_02_r" -p "thigh_r";
	rename -uid "962A0FED-42C0-B4BF-4B46-97BD5FA292E5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 28.894174575805629 -1.1546319456101628e-14 -3.0198066269804258e-14 ;
	setAttr ".r" -type "double3" -2.065027893746282e-10 0.25820470285918773 -1.3073006136480809 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043217016027288703 -1.0594657961108367 0.031725293615490702 0
		 -0.15546465118006075 0.025072332296679802 1.0490682047630304 0 -1.0484774721553247 -0.047387581521922913 -0.15424456346446708 0
		 -8.9596819601615376 62.949630106747094 4.1379311523310163 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "464";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_l" -p "pelvis";
	rename -uid "11F3CB71-406D-DE5B-6EF4-D597A3973D38";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -2.3657112121582031 -0.11004376411438344 -9.969202995300293 ;
	setAttr ".r" -type "double3" 8.477490305150754 1.8871915303261084 -0.66194941624075543 ;
	setAttr ".s" -type "double3" 1.0608213694388235 1.0608213694388235 1.0608213694388235 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.034934704661503738 1.0588207514149088 -0.054955988221873683 0
		 -0.15630236057704122 -0.049241848768900462 -1.0480872054680976 0 -1.0486615833272042 0.042612610352452548 0.154385967466904 0
		 9.969202995300293 93.542798291234817 2.5405972345779255 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr -k on ".MaxHandle" -type "string" "473";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_l" -p "thigh_l";
	rename -uid "A3702492-44EF-419D-734E-74BFBBD1D4B2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -43.341308593749993 7.1054273576010019e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 9.9584774038434478e-17 -3.5625344172827722 -15.357605784179121 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0097760621821524202 1.0347029584680614 0.23374386452635015 0
		 -0.14146885683860871 0.23293743625462851 -1.0252164118828562 0 -1.0513006082995711 -0.021723636588356264 0.14013241045664315 0
		 8.4550871799345373 47.652121358695005 4.922461679176636 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "474";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "foot_l" -p "calf_l";
	rename -uid "C2AA27AB-4BB2-88F3-73FC-609E76BA72FC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -42.217914581298842 -3.9968028886505635e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.2552056673980649 2.8141700704472559 26.801161166459877 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0033799185685436661 1.0284083211363109 -0.26020545541192397 0
		 -0.15370937067518903 -0.25793551567444373 -1.0174402572035659 0 -1.0496208760191312 0.034461175682434037 0.14983464837438981 0
		 8.0423622217869539 3.9691202410731847 -4.9457168272994982 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "475";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ball_l" -p "foot_l";
	rename -uid "A79AA58A-445D-F58E-464D-7B8DFE4FCCFF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -7.0094366073608345 -15.237588882446286 0.53888744115829645 ;
	setAttr ".r" -type "double3" -9.1440947092076103e-15 9.5416640443905566e-15 -90.000000000000014 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15370937067518892 0.25793551567444334 1.0174402572035652 0
		 -0.0033799185685436314 1.0284083211363106 -0.26020545541192369 0 -1.049620876019131 0.03446117568243403 0.14983464837438978 0
		 9.8425862363949985 0.70944334839759682 12.462257179277508 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "476";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_twist_02_l" -p "calf_l";
	rename -uid "5979ECAE-412B-2EDC-BCBB-26AA214C46CB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -14.072638511657715 1.1102230246251565e-15 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -0.0046559128746534615 0.25816272471229079 2.6643342814062074 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0079262551205888342 1.0444997439289176 0.1852010725407667 0
		 -0.14168493826655568 0.18458921091251931 -1.034985110685732 0 -1.0512870828685317 -0.017002529375962597 0.14088421219800989 0
		 8.3175121907775953 33.091120657231194 1.633068769379419 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "479";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "calf_twist_01_l" -p "calf_l";
	rename -uid "AA390F16-4E7A-76B5-F857-7383C70F3AB5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -28.145277023315437 5.0670109875694536e-06 -0.075448110699653625 ;
	setAttr ".r" -type "double3" -0.0046559128746534615 0.25816272471229079 2.6643342814062074 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0079262551205888342 1.0444997439289176 0.1852010725407667 0
		 -0.14168493826655568 0.18458921091251931 -1.034985110685732 0 -1.0512870828685317 -0.017002529375962597 0.14088421219800989 0
		 8.2592551294700467 18.531760143402039 -1.6669020608173692 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "481";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_twist_01_l" -p "thigh_l";
	rename -uid "3F6D45D8-4B6B-27DB-6811-7393D4EC53E5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -14.447102546691895 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -2.0649642897718216e-10 0.25820470285919295 -1.3073006136480436 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043217016027288627 1.0594657961108367 -0.031725293615491888 0
		 -0.15546465118006103 -0.025072332296681012 -1.0490682047630306 0 -1.0484774721553243 0.04738758152192301 0.15424456346446722 0
		 9.464497734617149 78.245906316978264 3.3345520319741251 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "485";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "thigh_twist_02_l" -p "thigh_l";
	rename -uid "402AE4C5-46ED-376C-DB40-C4A1CF344989";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -28.894205093383796 -2.2688980125806779e-06 -8.0748641266836785e-06 ;
	setAttr ".r" -type "double3" -2.0649642897718216e-10 0.25820470285919295 -1.3073006136480436 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043217016027288627 1.0594657961108367 -0.031725293615491888 0
		 -0.15546465118006103 -0.025072332296681012 -1.0490682047630306 0 -1.0484774721553243 0.04738758152192301 0.15424456346446722 0
		 8.9598012963679281 62.949014110355392 4.1285079607275952 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "487";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_foot_root" -p "root";
	rename -uid "6D43D7D9-43DB-4DD8-771E-D49B58058908";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
	setAttr -k on ".MaxHandle" -type "string" "496";
createNode joint -n "ik_hand_root" -p "root";
	rename -uid "151AB75F-4FB8-B307-B2AE-86A98C4FBE37";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	setAttr ".r" -type "double3" -4.7581055552135618 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.082949189435633924 -0.99655377776212928 0
		 0 0.99655377776212928 -0.082949189435633924 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
	setAttr -k on ".MaxHandle" -type "string" "499";
createNode joint -n "interaction" -p "root";
	rename -uid "D5C0170F-4C61-514A-DE62-ECB2D83312A0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "503";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "center_of_mass" -p "root";
	rename -uid "EF0D9E76-404D-4F50-0109-23B9A70784FC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "MaxHandle" -ln "MaxHandle" -dt "string";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".MaxHandle" -type "string" "504";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode lodGroup -n "SKM_Hollow_LodGroup";
	rename -uid "AD721B43-497A-6658-AC14-1FB1947EA533";
	addAttr -is true -ci true -k true -sn "Manny_lod0_mesh_currentUVSet" -ln "Manny_lod0_mesh_currentUVSet" 
		-dt "string";
	addAttr -is true -ci true -k true -sn "Manny_lod0_mesh_update_rig" -ln "Manny_lod0_mesh_update_rig" 
		-dt "string";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".dl[0]"  0;
	setAttr ".ush" yes;
	setAttr ".ws" no;
	setAttr -k on ".Manny_lod0_mesh_currentUVSet" -type "string" "map1";
	setAttr -k on ".Manny_lod0_mesh_update_rig" -type "string" "";
createNode transform -n "LOD0" -p "SKM_Hollow_LodGroup";
	rename -uid "FB2AD03E-49FC-31C4-0E24-CA9EE4D3DD7F";
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "HollowClothes" -p "LOD0";
	rename -uid "1E19B2D0-437D-8F5D-30E0-7DB8AA7E38E3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HollowClothesShape" -p "HollowClothes";
	rename -uid "D61CC280-4013-6503-80AE-26B49646CBD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "HollowClothesShapeOrig" -p "HollowClothes";
	rename -uid "1021E1D1-4593-BFC5-9752-59883D1BCCFF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 520 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.89060003 -0.875 0.89359999
		 -0.90329999 0.90139973 -0.87789971 0.90429968 -0.90139973 0.91210002 -0.87789971
		 0.91409999 -0.90329969 0.92580003 -0.90719998 0.92290002 -0.88090003 0.86619997 -0.91799998
		 0.875 -0.79979998 0.86040002 -0.8301 0.86430001 -0.69340003 0.86619997 -0.667 0.8720997
		 -0.6875 0.99409997 -0.78710002 0.91799998 -0.833 0.95609987 -0.80470002 0.94730002
		 -0.90719968 0.9648 -0.93260002 0.98930001 -0.93849999 0.99409968 -0.78809971 0.88569999
		 -0.79390001 0.89060003 -0.69339985 0.91599941 -0.69919968 0.95209968 -0.62989968
		 0.9971 -0.64840001 0.95209998 -0.66799998 0.91799986 -0.64840001 0.88959998 -0.6669997
		 0.88279992 -0.68749994 0.8779 -0.68650001 0.8721 -0.6875 0.8779 -0.66210002 0.8779
		 -0.62499994 0.89059985 -0.62599999 0.92290002 -0.61040002 0.99709994 -0.6045 0.95509994
		 -0.5898 0.92290002 -0.53119999 0.89839971 -0.54099971 0.87889993 -0.54299998 0.86519992
		 -0.62400001 0.86619967 -0.667 0.83789968 -0.64840001 0.83399987 -0.61040002 0.85739994
		 -0.53710002 0.84569973 -0.44139999 0.87889969 -0.46880001 0.87889969 -0.44139999
		 0.89649999 -0.44139999 0.89839971 -0.46880001 0.92089999 -0.49709997 0.91989994 -0.46779978
		 0.91799998 -0.44139999 0.94819999 -0.44139999 0.98629993 -0.44139999 0.94730002 -0.46880001
		 0.94819999 -0.4912 0.99119967 -0.49899971 0.98829973 -0.4756 0.95410001 -0.52149999
		 0.9970994 -0.5352 0.95309985 -0.50099999 0.95799994 -0.52929997 0.95609999 -0.57810003
		 0.99509996 -0.56840003 0.84380001 -0.4677999 0.83499998 -0.53119999 0.79979998 -0.52929997
		 0.80760002 -0.44139999 0.8095997 -0.46880001 0.80659997 -0.44139999 0.76859999 -0.44139999
		 0.77249992 -0.47559997 0.8096 -0.4912 0.79979998 -0.57810003 0.76369971 -0.5352 0.76169997
		 -0.60549998 0.76369971 -0.56839973 0.80080003 -0.58299994 0.80180001 -0.62889999
		 0.75880003 -0.64840001 0.80470002 -0.79790002 0.80180001 -0.6669997 0.83979988 -0.69919997
		 0.86040002 -0.8301 0.83889979 -0.76169997 0.86430001 -0.69339973 0.7676 -0.88959998
		 0.7881 -0.78119999 0.76370001 -0.78319985 0.95209998 -0.66799998 0.99409997 -0.78710002
		 0.9970997 -0.65140003 0.94630003 -0.81539971 0.95700002 -0.86909997 0.96480006 -0.93260002
		 0.99409997 -0.7881 0.96479994 -0.78219998 0.92290002 -0.7773 0.96090001 -0.6494 0.92189997
		 -0.65429997 0.89060003 -0.79979998 0.8818 -0.77340001 0.88279998 -0.6875 0.89649999
		 -0.66500008 0.91600001 -0.62889993 0.95609939 -0.57809973 0.9971 -0.6045 0.99509996
		 -0.56840003 0.9569996 -0.60739988 0.9970997 -0.64840001 0.95209998 -0.62989998 0.99709994
		 -0.60549998 0.87789965 -0.68649995 0.8721 -0.6875 0.86129999 -0.93360001 0.8769998
		 -0.79589987 0.85839993 -0.79099995 0.85840011 -0.66500008 0.8779 -0.67089999 0.87789965
		 -0.60639989 0.90719998 -0.59960002 0.99709994 -0.5352 0.95699984 -0.55079997 0.91600001
		 -0.57029992 0.91890001 -0.5449 0.87889969 -0.57620001 0.84859997 -0.59960002 0.83979988
		 -0.62889993 0.83399999 -0.65429997 0.85640001 -0.90429997 0.83199996 -0.79000008
		 0.8301 -0.93949997 0.80659997 -0.96969998 0.78909999 -0.95899999 0.79979998 -0.78420001
		 0.7949 -0.6494 0.76169997 -0.60549968 0.76370001 -0.56840003 0.79879999 -0.6074 0.79979998
		 -0.57809973 0.76370001 -0.5352 0.79979998 -0.55079997 0.84179991 -0.57029992 0.84079999
		 -0.52340001 0.87789959 -0.52929997 0.83979964 -0.50489992 0.84179968 -0.44139999
		 0.80659997 -0.44139999 0.77249998 -0.4756 0.80959982 -0.49119994 0.80180001 -0.62889999
		 0.75879955 -0.64840001 0.78809965 -0.78119963 0.76370001 -0.78320003 0.78219998 -0.90820003
		 0.7881 -0.78119999 0.7676 -0.88959998 0.95020002 -0.92479998 0.94819999 -0.96480006
		 0.91799998 -0.92479998 0.88090003 -0.92479998 0.88380003 -0.97359997 0.91890001 -0.99409968
		 0.95020002 -0.92479998 0.94819999 -0.96480006 0.91890001 -0.99409997 0.91799986 -0.92479986
		 0.88090003 -0.92479998 0.88380003 -0.97359997 0.67580003 -0.83789998 0.65530002 -0.86819971
		 0.6904 -0.99319971 0.67869997 -0.9932 0.65529996 -0.91699994 0.65530002 -0.99320006
		 0.6845997 -0.92379963 0.67580003 -0.8378998 0.6699 -0.73830003 0.68159997 -0.73339999
		 0.71090001 -0.82229972 0.71780002 -0.99319971 0.71880001 -0.92379975 0.7548998 -0.9102
		 0.76660001 -0.94239998 0.76560003 -0.99319959 0.75199974 -0.9932 0.74800003 -0.81739998
		 0.73339999 -0.82029998 0.74409997 -0.72559971 0.7256 -0.7256 0.70120001 -0.72750002
		 0.6796999 -0.65719998 0.66109997 -0.66499972 0.6602 -0.61229992 0.68159997 -0.60549998
		 0.69919997 -0.65429997 0.73140001 -0.66499972 0.71780002 -0.65719998 0.73339999 -0.60349971
		 0.71479994 -0.60159999 0.70309985 -0.6006 0.7226997 -0.56050003 0.70999998 -0.5625
		 0.71969998 -0.5352 0.7119 -0.4736 0.70310003 -0.47850001 0.70899999 -0.53320003 0.70020002
		 -0.5596 0.68260002 -0.55659997 0.67869997 -0.49020001 0.69819999 -0.53030002 0.66210002
		 -0.50489998 0.6601997 -0.56150001 0.64649999 -0.51459998 0.6426 -0.56349999 0.62889999
		 -0.5244 0.6426 -0.56349999 0.62010002 -0.55269998 0.90819973 -0.44139999 0.99119997
		 -0.49900001 0.95410001 -0.52149993 0.94819999 -0.49119994 0.98830003 -0.4756 0.98629999
		 -0.44139999 0.93649971 -0.44139999 0.79100001 -0.9932 0.76459998 -0.99319971 0.76660001
		 -0.94239998 0.74609983 -0.9404 0.76069981 -0.86229998 0.75980002 -0.8096 0.75489968
		 -0.75489968 0.7119 -0.80080003 0.71880001 -0.86329997 0.7432 -0.99319971 0.72359997
		 -0.94140005 0.71679997 -0.99319971 0.70020002 -0.93649966 0.70119995 -0.85839993
		 0.67579973 -0.83789998 0.6904 -0.78809994 0.67290002 -0.7676 0.6874997 -0.74609971
		 0.71090001 -0.75489986 0.74409997 -0.6942997 0.70999998 -0.68849999 0.68649989 -0.68849993
		 0.66600001 -0.70119995;
	setAttr ".uvst[0].uvsp[250:499]" 0.67479998 -0.64749998 0.6904 -0.6395998 0.71679991
		 -0.64259988 0.73629999 -0.64450002 0.72849971 -0.60549968 0.69730002 -0.5976997 0.68260002
		 -0.6006 0.66409969 -0.65530002 0.66600001 -0.60639983 0.65619999 -0.61330003 0.63479972
		 -0.56449997 0.62010002 -0.55269998 0.6045 -0.54100001 0.6426 -0.56349999 0.62889969
		 -0.5243997 0.65139973 -0.56049973 0.66600001 -0.55659997 0.6845997 -0.56050003 0.69919997
		 -0.56349999 0.71969998 -0.56639999 0.70999992 -0.52829993 0.69819993 -0.5273 0.6845997
		 -0.52829999 0.69340003 -0.4804998 0.69819999 -0.53030002 0.66210002 -0.50489992 0.67869997
		 -0.49019995 0.68260002 -0.55659997 0.64649999 -0.51459998 0.6602 -0.56150001 0.7148
		 -0.52640003 0.7119 -0.4736 0.70899999 -0.53320003 0.70310003 -0.47850001 0.65530002
		 -0.917 0.69729972 -0.99319971 0.67679971 -0.9307 0.67869997 -0.99320006 0.0020000041
		 -0.69040006 0.0038999999 -0.72849971 0.032199994 -0.69039989 0.032199983 -0.73540002
		 0.0098000001 -0.75099969 0.0098000001 -0.7773 0.0361 -0.75389999 0.037099998 -0.77539998
		 0.050799999 -0.6904 0.06539996 -0.73629969 0.0713 -0.6904 0.093799993 -0.74319988
		 0.066399999 -0.75489992 0.068399966 -0.7773 0.092799991 -0.75779957 0.088899985 -0.80369973
		 0.1113 -0.8301 0.1426 -0.83789998 0.1436 -0.82129997 0.1143 -0.79589999 0.1494 -0.6904
		 0.097699963 -0.6904 0.1182 -0.74220002 0.1201 -0.6904 0.1494 -0.74319988 0.1455 -0.79790008
		 0.1807 -0.82029998 0.1758 -0.84960002 0.2129 -0.87399971 0.2148 -0.82909995 0.18359998
		 -0.792 0.18549995 -0.75389999 0.21879987 -0.79879999 0.19140001 -0.69039989 0.22169995
		 -0.75099999 0.2314 -0.6904 0.26660001 -0.6904 0.26069984 -0.74019969 0.2559 -0.80080003
		 0.2529 -0.86430001 0.2773 -0.84859967 0.2764 -0.80079997 0.27829999 -0.7645998 0.28029981
		 -0.6904 0.27929986 -0.75489986 0.292 -0.6904 0.29199994 -0.75879985 0.292 -0.77049994
		 0.29300001 -0.79690003 0.29589999 -0.83200002 0.3193 -0.76559973 0.3154 -0.69039989
		 0.34279999 -0.6904 0.36719999 -0.69040006 0.3477 -0.73930001 0.37400001 -0.72659969
		 0.35159999 -0.76270002 0.32319999 -0.792 0.35640001 -0.78909969 0.38569999 -0.7744
		 0.37989986 -0.75 0.88090003 -0.92479998 0.88380003 -0.97359997 0.91890001 -0.99409997
		 0.95020002 -0.92479998 0.91799986 -0.92479986 0.94819999 -0.96480006 0.60939997 -0.71969998
		 0.59380001 -0.71289998 0.58890003 -0.75880003 0.60939997 -0.80269998 0.60939991 -0.75679976
		 0.59380001 -0.79299998 0.60939997 -0.80269998 0.59380001 -0.79299998 0.58890003 -0.75880003
		 0.60939991 -0.75679976 0.60939997 -0.71969998 0.59380001 -0.71289998 0.1074 -0.8369
		 0.090799965 -0.95209998 0.064499997 -0.99019998 0.065399989 -0.94730002 0.072300002
		 -0.83689982 0.0361 -0.82810003 0.0049000001 -0.8301 0.037099998 -0.9795 0.0381 -0.9374997
		 0.0077999998 -0.94139999 0.3994 -0.82319999 0.4023 -0.85250002 0.36229986 -0.84079969
		 0.36519995 -0.87009972 0.4023 -0.90719968 0.36519995 -0.92479998 0.36520001 -0.98729968
		 0.32620001 -0.99220008 0.32619998 -0.9296999 0.29879999 -0.92479998 0.32619995 -0.875
		 0.32709998 -0.8446998 0.29300001 -0.84079999 0.29879999 -0.87009972 0.63870001 -0.59570003
		 0.60939997 -0.60159999 0.6074 -0.61430001 0.63959998 -0.6699 0.63959998 -0.60839993
		 0.61430001 -0.66109997 0.4971 -0.5801 0.4668 -0.59380001 0.49899986 -0.59179997 0.46879986
		 -0.6006 0.49609986 -0.63279969 0.46779984 -0.63769972 0.48730001 -0.68360001 0.46779984
		 -0.69239968 0.46579999 -0.75489998 0.48339996 -0.75099999 0.65820003 -0.79390001
		 0.65920001 -0.8095997 0.62599999 -0.8057 0.62599999 -0.82620001 0.59570003 -0.8125
		 0.56349999 -0.80659997 0.5625 -0.82520008 0.59570003 -0.83110005 0.65429997 -0.8506
		 0.62699986 -0.85839999 0.65039998 -0.88569999 0.62889993 -0.89359993 0.59570003 -0.86619967
		 0.5625 -0.86129999 0.5273 -0.85249996 0.5352 -0.79790008 0.49799985 -0.78319973 0.49119994
		 -0.83889979 0.51949972 -0.99219972 0.52149969 -0.8925997 0.55860001 -0.98049998 0.56349999
		 -0.90920001 0.59570003 -0.98140001 0.63279969 -0.9647997 0.59960002 -0.90619951 0.46679986
		 -0.76859999 0.45899993 -0.83110005 0.48630002 -0.89839971 0.4756 -0.99799973 0.44530001
		 -0.97070009 0.45210001 -0.89749968 0.42089984 -0.92969972 0.40619999 -0.86519998
		 0.42680001 -0.88480002 0.417 -0.80080003 0.4307 -0.75 0.43849999 -0.82029998 0.45019984
		 -0.75979972 0.127 -0.9346 0.16500001 -0.9345997 0.1279 -0.94919997 0.1328 -0.96580005
		 0.16799998 -0.95509994 0.2051 -0.9345997 0.24119993 -0.9345997 0.2744 -0.9346 0.2764
		 -0.94529998 0.27250001 -0.96679991 0.2441 -0.95020002 0.24019992 -0.99019969 0.20609993
		 -0.95209968 0.17289993 -0.9795 0.2119 -0.99509996 0.1172 -0.8818 0.1611 -0.88180006
		 0.16410001 -0.92089999 0.1982 -0.92769998 0.1982 -0.88179994 0.22459993 -0.92089999
		 0.22559993 -0.8818 0.2529 -0.90139973 0.25490001 -0.8818 0.27339986 -0.90039968 0.28909999
		 -0.8818 0.27540001 -0.8818 0.46290001 -0.62010002 0.4258 -0.6221 0.46290001 -0.63769972
		 0.3955 -0.62889999 0.46090001 -0.69630003 0.3955 -0.65039998 0.42579985 -0.64649969
		 0.42969999 -0.7256 0.39649999 -0.71390003 0.3662 -0.61519998 0.3955 -0.62889999 0.36719999
		 -0.64059973 0.3955 -0.65039998 0.39649999 -0.71390003 0.3682 -0.67769998 0.76660001
		 -0.94239998 0.79100001 -0.9932 0.76560009 -0.99319977 0.54100001 -0.79299998 0.51949972
		 -0.73049998 0.50099999 -0.667 0.50489998 -0.53119999 0.51950002 -0.6699 0.5381 -0.52340001
		 0.53999972 -0.6669997 0.56739998 -0.78419971 0.5977 -0.66600001 0.59960002 -0.54100001;
	setAttr ".uvst[0].uvsp[500:519]" 0.5654 -0.5244 0.56449997 -0.66500002 0.6631
		 -0.78219998 0.66210002 -0.7295 0.64160001 -0.79100001 0.62699997 -0.78119969 0.6426
		 -0.72950006 0.64649999 -0.70509988 0.65819979 -0.70899999 0.66109997 -0.70120001
		 0.64649987 -0.69630003 0.6395998 -0.70409995 0.62699991 -0.72659999 0.61619997 -0.72359967
		 0.6279 -0.70120001 0.64060003 -0.69239998 0.64059997 -0.68360001 0.61330003 -0.67869997
		 0.6279 -0.6875 0.62889999 -0.6807;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 517 ".vt";
	setAttr ".vt[0:165]"  8.4861002 114.1678009 0.2102 5.12400007 108.9076004 -2.18199992
		 4.46099997 115.31039429 -1.79760003 9.1111002 108.68439484 0.1079 10.38639927 113.12340546 4.40829992
		 10.60809994 107.47489929 4.37130022 8.91489983 111.47399902 8.8930006 9.95870018 105.45500183 9.15240002
		 -0.58170003 75.11689758 3.95000005 -3.064800024 72.50090027 -3.47790003 -2.10560012 64.88580322 3.66050005
		 -0.99250001 84.80830383 3.89569998 -2.32470012 84.25980377 -2.59719992 -2.091500044 86.49759674 -2.63860011
		 12.85709953 86.49190521 -1.99319994 13.50020027 74.66850281 -1.14719999 15.22880077 76.14710236 3.39720011
		 6.6402998 83.77400208 -4.057898998 6.89389992 72.23830414 -3.2420001 11.98939991 65.84140015 -1.16270006
		 15.11780071 76.11240387 3.43260002 14.30719852 63.17560196 3.43059993 14.94929981 63.67409897 7.77059984
		 1.29499996 75.56500244 -0.80339998 2.1184001 84.25980377 -2.57080007 0.78890002 84.74160004 3.89569998
		 2.039999962 86.49740601 -2.72950006 6.90380001 88.11190033 -4.050799847 12.85690022 89.73649597 -2.87520003
		 15.66170025 88.1364975 3.12190008 7.75619888 91.41939545 -6.14260006 2.22090006 90.061096191 -5.95720005
		 0.046500001 90.13079834 -5.34630013 -0.0197 86.9253006 -2.19169998 -0.0197 84.8302002 4.096099854
		 -0.99250001 84.80830383 3.89569998 -2.091500044 86.49759674 -2.63860011 -2.20219994 90.2338028 -5.89160013
		 0.1128 97.2098999 -5.8435998 3.49889994 97.40650177 -6.24700022 7.74590015 98.21469879 -5.43790007
		 13.27180004 93.14200592 -3.6796 15.67810059 91.93759918 2.54530001 15.38860035 95.075500488 2.54299998
		 13.74270058 98.41809845 -2.99589992 12.92320061 100.86610413 -1.91939998 7.4229002 101.20309448 -4.70749998
		 3.43720007 103.64521027 -5.31330013 0.1128 103.62039185 -5.2512002 -3.64120007 97.71229553 -6.0043001175
		 -7.66309977 91.41939545 -6.13999987 -6.94339991 88.11190033 -4.042699814 -6.6796999 83.77400208 -4.057898998
		 -2.32470012 84.25980377 -2.59719992 -13.25320053 86.51950073 -1.92480004 -13.24310017 89.82119751 -2.72950006
		 -13.28909969 93.81410217 -4.59399986 -7.39519978 98.21469879 -5.63999987 -6.019899845 103.68470001 -4.83890009
		 -5.52600002 106.2973938 -4.49709988 0.1128 107.1342926 -5.52510023 3.19370008 107.2983017 -5.5948
		 6.91349983 107.63859558 -4.84200001 7.15479994 103.68470001 -4.37650013 12.008099556 103.60020447 -0.71710002
		 12.15580082 107.59919739 -1.62419999 13.77190113 106.69709778 4.11789989 14.14050007 103.067192078 4.17759991
		 14.74819946 100.99079895 3.82410002 12.11740017 101.67369843 10.12309933 15.64260006 97.93479919 3.30369997
		 13.064599991 99.089599609 10.73099995 13.49289989 94.17599487 10.024900436 -12.14229965 105.4878006 -1.92349994
		 -11.77029991 103.60020447 -0.75650001 -13.5170002 98.41809845 -3.42930007 -15.42800045 95.075500488 2.54299998
		 -15.41700077 97.93479919 3.30369997 -13.93820095 103.041511536 4.10090017 -14.63360023 104.71429443 4.021900177
		 -12.35340023 103.52129364 9.9878006 -11.89180088 101.67369843 10.12309933 -13.5323 94.17599487 10.024900436
		 -15.75279999 91.79570007 2.56170011 -16.28470039 88.13189697 3.12190008 -15.32679939 76.51800537 4.14169979
		 -12.66669941 75.24659729 -0.37740001 -6.74389982 78.38720703 -3.98440003 -3.064800024 72.50090027 -3.47790003
		 -14.72139931 66.61670685 4.071800232 -15.62529945 76.72870636 9.37779999 15.22880077 76.14710236 3.39720011
		 15.67019939 87.87350464 3.19199991 12.85709953 86.49190521 -1.99319994 15.050600052 76.59259796 8.3295002
		 14.39049911 88.077201843 10.15999985 11.81640053 73.73690033 11.8448 13.64659977 69.089202881 10.55679989
		 14.94929981 63.67409897 7.77059984 15.11780071 76.11240387 3.43260002 7.75320005 77.025405884 12.27840042
		 7.5323 87.61629486 11.99290085 2.15019989 75.074203491 10.34119987 13.61629963 91.62939453 9.66280079
		 15.66170025 88.1364975 3.12190008 6.51870012 89.79930115 11.83820057 3.2263 86.68950653 9.75859928
		 0.6609 77.3628006 6.33949995 0.78890002 84.74160004 3.89569998 -0.0197 84.8302002 4.096099854
		 -0.0197 86.20960236 10.48250008 5.089300156 92.32220459 12.60369968 13.49289989 94.17599487 10.024900436
		 15.38860035 95.075500488 2.54299998 15.67810059 91.93759918 2.54530001 15.65610027 91.79789734 2.57249999
		 12.85690022 89.73649597 -2.87520003 -3.35529995 86.68950653 9.75859928 -0.99250001 84.80830383 3.89569998
		 -0.25999999 75.45729828 6.60319996 -3.33260012 75.81580353 10.42420006 -3.75379992 66.097198486 10.49940014
		 -2.91170001 63.60420227 5.84600019 -7.90759993 75.92939758 12.51000023 -7.57189989 87.61629486 11.99290085
		 -6.55810022 89.79930115 11.83809853 -5.12879992 92.32220459 12.60369968 -0.0197 91.72989655 12.97159958
		 0.1128 94.36219788 13.39070129 6.53679991 94.876297 13.057099342 13.72410107 96.52819824 10.59310055
		 15.64260006 97.93479919 3.30369997 13.064599991 99.089599609 10.73099995 7.03219986 97.08669281 13.89950085
		 -0.0309 98.37579346 14.17109966 -6.31110001 94.876297 13.057099342 -13.49839973 96.52819824 10.59310055
		 -13.5323 94.17599487 10.024900436 -13.64389992 91.65310669 9.66280079 -14.42450047 88.088005066 10.15999985
		 -13.48399925 76.4726944 12.013900757 -8.3621006 63.045196533 12.90809917 -12.33260059 60.45569611 12.96850014
		 -15.41420078 61.41129684 10.73799992 -15.62529945 76.72870636 9.37779999 -16.28470039 88.13189697 3.12190008
		 -15.75279999 91.79570007 2.56170011 -15.42800045 95.075500488 2.54299998 -15.41700077 97.93479919 3.30369997
		 -11.89180088 101.67369843 10.12309933 -6.45959997 98.88130188 13.53579998 -6.54659986 100.477005 13.4963007
		 -6.22629976 101.76049805 14.27219963 -12.35340023 103.52129364 9.9878006 -13.93820095 103.041511536 4.10090017
		 -13.24310017 89.82119751 -2.72950006 -15.32679939 76.51800537 4.14169979 -16.63790131 64.99359894 8.60730076
		 -14.72139931 66.61670685 4.071800232 14.84800053 86.73149872 -2.43700004 15.67810059 91.93759918 2.54530001
		 12.85690022 89.73649597 -2.87520003 18.42639923 85.62489319 2.91230011 13.61629963 91.62939453 9.66280079
		 16.5258007 87.83310699 9.59789944 13.96359921 82.68410492 -2.27880001;
	setAttr ".vt[166:331]" 15.66170025 88.1364975 3.12190008 12.85709953 86.49190521 -1.99319994
		 17.4625988 81.0082015991 2.86120009 17.24770164 83.35850525 8.71020031 14.39049911 88.077201843 10.15999985
		 -12.65610027 117.6269989 3.73769999 -12.43719959 122.17960358 3.49429989 -11.12930012 125.05279541 9.37469959
		 -9.97389984 118.54969788 -1.065199971 -11.4545002 125.96579742 -1.80120003 -9.61299992 114.39440155 -0.38839999
		 -12.31659985 113.36229706 3.73990011 -10.37549973 111.64139557 9.41049957 -4.49020004 114.72760773 -1.98529994
		 -4.64569998 119.057502747 -2.18869996 -5.71210003 126.45640564 -4.86180019 -11.2798996 134.85380554 -5.30060005
		 -13.49360085 134.33580017 -2.21810007 -15.21659946 141.29669189 -5.579 -11.65030003 141.99020386 -7.81269979
		 -7.54419994 135.35679626 -7.27269983 -3.1178 135.59159851 -8.33619976 -1.41480005 126.56969452 -5.19610023
		 0.74919999 119.96029663 -2.032999992 -0.1267 115.15330505 -1.81239998 1.98269999 117.93359375 -1.99409997
		 1.98979998 115.29350281 -1.99409997 1.24020004 126.95839691 -4.061900139 0.55220002 135.53430176 -6.41270018
		 -1.87530005 141.29299927 -6.91160011 -4.48710012 142.020706177 -8.6824007 -7.99420118 142.25 -7.66209984
		 -11.26369953 146.80630493 -6.47739983 -15.31809998 146.24769592 -6.26100016 -15.47580147 149.97360229 -2.97839999
		 -19.038999557 148.69459534 -2.63540006 -10.75740147 150.10899353 -4.10470009 -7.27489996 147.26319885 -6.61080122
		 -5.062200069 147.25280762 -7.61289978 -1.64300001 146.98631287 -6.86490011 -2.55579996 149.86619568 -5.094200134
		 -5.21509981 150.19309998 -5.56400013 -7.40999985 150.1631012 -5.044300079 -5.38950014 151.78819275 -3.43519998
		 -3.21359992 152.054595947 -3.12260008 -4.14669991 153.45199585 -0.0228 -7.53879976 152.17240906 -3.43070006
		 -5.7894001 152.99940491 -0.017899999 -10.1406002 151.97109985 0.1248 -13.26500034 152.59928894 1.41770005
		 -16.22070122 151.51950073 1.01820004 -19.65299988 150.66340637 1.01820004 -23.40359879 147.63209534 -1.30970001
		 6.66739988 100.80660248 14.020000458 12.11740017 101.67369843 10.12309933 11.85140038 104.10499573 10.49440002
		 14.74819946 100.99079895 3.82410002 14.14050007 103.067192078 4.17759991 13.77190113 106.69709778 4.11789989
		 4.92180014 110.63249969 14.23320007 5.48979998 115.82160187 13.70689964 8.91489983 111.47399902 8.8930006
		 0.903 115.1618042 15.59200001 0.4061 110.51019287 14.0033006668 3.88319993 122.70510101 16.95660019
		 -3.44939995 115.20620728 14.89509869 -4.40360022 122.67620087 16.45050049 -5.53429985 128.51080322 15.60389996
		 3.34610009 127.70860291 17.34829903 2.50979996 132.84080505 16.84700012 -5.87150002 132.81768799 15.13559914
		 0.551 138.53160095 15.10909939 -10.13539982 133.66749573 13.6821003 -9.70870018 129.71809387 13.9109993
		 -7.63560009 123.13670349 14.40380096 -7.23339987 115.87849426 12.54100037 -4.76280022 110.63310242 13.90469933
		 -8.57540035 110.85319519 12.60759926 -11.020000458 116.67589569 9.55889893 -11.12930012 125.05279541 9.37469959
		 -13.037599564 131.63519287 10.015099525 -14.20239925 137.89588928 10.080500603 -10.42640018 139.083312988 13.12730026
		 -5.92539978 139.04510498 14.081298828 -1.030099988 143.16641235 12.78639984 -4.72100019 143.39329529 12.55359936
		 -9.7303009 143.63500977 12.044500351 -12.53080082 142.93659973 9.64500046 -14.69979954 142.17520142 9.043300629
		 -14.19839954 146.79930115 8.37800026 -11.13070011 147.29879761 8.40240002 -8.39169979 147.59709167 9.66219997
		 -2.39380002 146.87150574 9.97140026 -3.90910006 149.64048767 7.63009977 -7.82969999 150.75630188 7.78620005
		 -10.20660019 150.053207397 6.28319979 -13.60000038 150.85910034 5.71460009 -16.32119942 150.42840576 5.22100019
		 -16.060899734 146.095001221 7.8453002 -19.59620094 149.60340881 4.8288002 -19.65299988 150.66340637 1.01820004
		 -24.36650085 148.92900085 1.01820004 -23.40359879 147.63209534 -1.30970001 -16.22070122 151.51950073 1.01820004
		 -19.038999557 148.69459534 -2.63540006 -13.26500034 152.59928894 1.41770005 -9.67439938 151.47981262 3.72399998
		 -7.50740099 152.41049194 4.4144001 -5.24919987 151.81289673 4.64400005 -4.42059994 152.15100098 4.7638998
		 -5.7894001 152.99940491 -0.017899999 -7.69339991 153.42169189 -0.0228 -10.1406002 151.97109985 0.1248
		 -7.53879976 152.17240906 -3.43070006 -10.75740147 150.10899353 -4.10470009 -15.47580147 149.97360229 -2.97839999
		 -4.14669991 153.45199585 -0.0228 -5.38950014 151.78819275 -3.43519998 -12.65610027 117.6269989 3.73769999
		 -10.37549973 111.64139557 9.41049957 -10.37549973 111.64139557 9.41049957 -13.52779961 109.69530487 3.44799995
		 -12.31659985 113.36229706 3.73990011 -12.22060013 107.644104 9.44700146 -13.22759914 107.065795898 4.13870001
		 -6.074800014 105.98020172 13.74480057 -8.57540035 110.85319519 12.60759926 -11.47410011 105.539505 9.65159988
		 -14.63360023 104.71429443 4.021900177 -12.35340023 103.52129364 9.9878006 -5.96439981 104.096702576 13.12119961
		 -6.22629976 101.76049805 14.27219963 0.1128 105.33469391 14.24610043 -4.76280022 110.63310242 13.90469933
		 0.4061 110.51019287 14.0033006668 5.18030024 106.19528961 12.90219975 0.1128 103.7480011 14.19270039
		 -0.0309 98.37579346 14.17109966 6.52470016 101.13629913 15.19539928 7.03219986 97.08669281 13.89950085
		 13.15600014 101.68590546 10.64680004 13.95009995 100.10850525 10.79329967 16.033100128 101.8792038 4.10830021
		 15.66709995 104.71369934 4.027900219 12.87260056 104.10510254 11.0333004 10.0083007813 107.73500061 8.81999969
		 8.91489983 111.47399902 8.8930006 4.92180014 110.63249969 14.23320007 10.38639927 113.12340546 4.40829992
		 13.51930046 109.84189606 4.40829992 14.075901031 106.69709778 4.11789989 13.68039989 105.54360199 -2.23180008
		 14.05150032 101.83000946 -2.79349995 7.86490011 102.71619415 -5.6573 6.91349983 107.63859558 -4.98500013
		 12.23800087 107.59919739 -1.62419999 11.12729931 111.056495667 -0.90289998 8.4861002 114.1678009 0.2102
		 5.37839985 111.63760376 -3.087599993 4.46099997 115.31039429 -1.79760003 1.98979998 115.29350281 -1.99409997
		 2.45830011 110.057502747 -3.33990002 2.59249997 109.82489777 -4.19460011 3.19370008 107.2983017 -5.7894001
		 3.52740002 103.48550415 -5.80140018 0.1257 104.15250397 -5.71560001;
	setAttr ".vt[332:497]" 0.1128 107.1342926 -5.67269993 0.1128 109.18669891 -4.56169987
		 0.086099997 109.48840332 -3.63109994 -0.1267 115.15330505 -1.81239998 -4.49020004 114.72760773 -1.98529994
		 -5.10340023 108.63549805 -4.15420008 -5.52600002 106.2973938 -4.49709988 -10.9836998 107.90499115 -1.44490004
		 -11.1736002 110.30079651 -2.28530002 -9.61299992 114.39440155 -0.38839999 -12.31659985 113.36229706 3.73990011
		 -13.52779961 109.69530487 3.44799995 -13.22759914 107.065795898 4.13870001 -12.14229965 105.4878006 -1.92349994
		 -14.63360023 104.71429443 4.021900177 15.22880077 76.14710236 3.39720011 16.92009926 71.60630035 8.30760002
		 15.050600052 76.59259796 8.3295002 17.03550148 70.30570221 3.63579988 14.028499603 70.79540253 -0.84630001
		 13.50020027 74.66850281 -1.14719999 -16.25659943 151.56060791 1.01820004 -19.041801453 149.86360168 -2.63540006
		 -15.53830147 150.029296875 -2.97839999 -19.56329918 151.90420532 1.01820004 -19.25110054 150.90890503 4.8288002
		 -16.32079887 150.41760254 5.22100019 -10.35119915 153.84559631 3.72399998 -7.69490004 153.37789917 -0.0228
		 -7.52680016 152.41148376 4.40119982 -11.3696003 154.60639954 0.1248 -10.73330021 152.36569214 -4.10470009
		 -7.5939002 152.15119934 -3.43070006 -12.32120037 76.397995 13.096100807 -14.42450047 88.088005066 10.15999985
		 -7.51170015 87.46990204 12.19260025 -16.83080101 77.2437973 10.82180023 -18.13489914 73.17379761 11.68359947
		 -17.62479973 72.95749664 6.083399773 -17.41629982 77.23860168 5.31330013 -16.41279984 87.94000244 3.18409991
		 -13.25809956 86.5585022 -2.25449991 -14.99609947 75.6269989 -0.088100001 14.14020061 93.7029953 11.42269993
		 6.60860014 94.83359528 13.044799805 13.62659931 96.45869446 10.56010056 7.12220001 92.0779953 13.9073
		 14.14020061 88.65910339 10.80510044 0.1128 94.4272995 13.41569996 7.12220001 87.033996582 13.28970146
		 -0.0197 91.60540009 14.332201 -0.0197 86.56140137 13.71459961 7.12220001 81.21959686 13.28970146
		 -0.0197 80.74690247 13.71459961 -5.12879992 87.033996582 13.20189953 -5.12879992 92.0779953 13.81949902
		 -6.31110001 94.83359528 12.95689964 0.046399999 103.57180023 14.91699982 -5.96439981 104.096702576 13.12119961
		 0.1128 103.76499939 13.64279938 -6.51270008 103.55060577 14.26580048 -5.83330011 99.26490021 16.56879807
		 -0.7802 97.85879517 17.074501038 13.46780014 98.0041046143 11.59980011 7.03219986 97.08669281 13.89950085
		 13.064599991 99.089599609 10.73099995 7.45190001 96.46810913 15.2446003 13.45359993 93.81830597 12.29110146
		 7.75150013 92.65119934 14.74279976 12.20590019 88.41400146 12.18620014 8.31729984 87.16790009 13.64319992
		 12.037199974 81.5707016 12.25799942 8.4725008 80.79519653 13.04129982 -0.2165 98.051902771 15.4048996
		 -6.54659986 100.477005 13.4963007 0.1268 98.70459747 13.88070011 -7.80490017 99.26890564 15.068300247
		 -2.81839991 94.43319702 15.46679974 -11.89180088 101.67369843 10.12309933 -8.67709923 95.48889923 15.094799995
		 -13.20849895 100.37360382 10.81379986 -15.46829987 101.87249756 3.98519993 -13.93820095 103.041511536 4.10090017
		 -11.77029991 103.55279541 -0.86189997 -13.64430046 98.53040314 -3.87120008 -17.23009872 98.058807373 3.8684001
		 -14.84249973 96.70550537 11.22959995 -9.22549915 91.79090118 14.10290146 -4.63910007 91.34469604 14.35159969
		 -10.2123003 84.26390076 13.65409946 -14.9963007 92.14559937 11.24340057 -17.35569954 92.60519409 3.8527
		 -13.59490013 93.84980011 -4.64750004 -6.63290024 98.26200104 -6.74420023 -6.019899845 103.75540161 -5.040100098
		 0.1128 103.71211243 -5.45679998 0.1128 97.48099518 -6.63009977 -6.99069977 92.0046920776 -7.94789982
		 -14.11219978 83.20300293 -3.84940004 -18.62560081 85.27619934 2.69490004 -17.61319923 84.59089661 10.22619915
		 3.43720007 103.75100708 -5.51719999 4.25159979 97.73310089 -6.98400021 0.1128 90.64729309 -7.54330015
		 -6.23029995 81.35800171 -7.54269981 0.1078 83.13570404 -7.15280008 5.50479984 86.28450012 -6.62400007
		 5.40719986 90.80879974 -7.78270006 9.30630016 91.9852066 -5.90460014 8.71780014 98.49069977 -5.68380022
		 7.15479994 103.75540161 -4.56879997 -10.9836998 107.90499115 -1.44490004 -5.54640007 107.60049438 -5.28070021
		 -5.11100006 108.62919617 -4.15420008 -12.37339973 106.76460266 -2.40930009 -13.22759914 107.065795898 4.13870001
		 -6.541399 105.96769714 -5.4847002 -13.61539936 104.44589233 -2.4914999 -14.82059956 106.35639191 4.2493
		 -11.47410011 105.539505 9.65159988 -12.51129913 104.97480011 10.91020012 -5.96439981 104.096794128 13.12119961
		 -6.51270008 103.55060577 14.26580048 -8.4720993 101.47889709 14.37480068 -15.24890041 101.34619141 10.41849995
		 -17.27059937 102.40380096 4.6882 8.91740036 111.47190094 8.8927002 11.70760059 109.24819946 8.36390018
		 5.25299978 106.19528961 12.90219975 10.39449978 113.12340546 4.40829992 13.65390015 110.71339417 3.28590012
		 11.3281002 112.42300415 -2.092099905 8.49710083 114.1678009 0.2102 5.40409994 114.80660248 -3.7967
		 4.46260023 115.40709686 -1.77390003 2.11689997 117.46970367 -3.90149999 2.08920002 117.91080475 -1.99409997
		 0.7942 120.055603027 -2.045300007 14.74819946 100.99079895 3.82410002 14.41449928 97.98960114 10.70839977
		 13.064599991 99.089599609 10.73099995 16.42630005 99.10389709 3.41910005 12.92320061 100.86610413 -1.91939998
		 16.14989853 92.4588089 9.38739967 14.49010086 99.41080475 -2.96399999 18.16180038 90.93659973 2.74550009
		 15.70989895 92.60799408 -3.64459991 8.73700047 99.13939667 -5.614501 12.92320061 100.86610413 -1.91939998
		 7.4229002 101.20309448 -4.70749998 14.49010086 99.41080475 -2.96399999 9.86490059 95.53379822 -6.027400017
		 15.70989895 92.60799408 -3.64459991 1.98269999 117.93359375 -1.99409997 4.46099997 115.31039429 -1.79760003
		 0.104 74.74430084 -5.068799019 0.57480001 60.34690094 -2.72860003 5.19490004 67.60879517 -3.88269997
		 -5.61329985 61.076400757 -2.7729001 4.91149998 74.60849762 -4.94969988 8.89050007 75.19309998 -3.5302999
		 7.66060019 91.26350403 -6.24690008 -0.054000001 91.33719635 -6.32999992 -6.22809982 90.93060303 -6.7198
		 -5.68459988 74.71099854 -5.26539993 -12.38659954 74.75110626 -1.80900002;
	setAttr ".vt[498:516]" -13.092300415 89.24250031 -2.46160007 -5.54419994 100.51930237 -7.37890005
		 -0.92809999 106.84169769 -6.54650021 -5.39680004 106.36379242 -5.47949982 -0.54830003 99.75320435 -7.96159983
		 -4.80189991 108.80480194 -5.16860008 2.78379989 100.86180115 -7.2968998 2.71000004 107.070899963 -6.043000221
		 5.073999882 107.39379883 -5.86660004 -0.1698 109.66049194 -5.38079977 -2.093300104 110.12840271 -5.83459997
		 -1.91799998 110.61290741 -4.26359987 -5.10300016 108.63829803 -4.15420008 0.063000001 109.7831955 -3.36989999
		 -0.1566 109.99319458 -4.22359991 2.45679998 109.78269196 -5.19659996 5.4145999 111.6765976 -3.33640003
		 2.51079988 110.45030212 -3.97250009 2.40170002 110.2480011 -3.19980001;
	setAttr -s 1121 ".ed";
	setAttr ".ed[0:165]"  0 2 0 2 1 0 1 0 0 1 3 0 3 0 0 4 0 0 3 4 0 3 5 0 5 4 0
		 6 4 0 5 6 0 5 7 0 7 6 0 8 10 0 10 9 0 9 8 0 9 11 0 11 8 0 9 12 0 12 11 0 12 13 0
		 13 11 0 14 16 0 16 15 0 15 14 0 15 17 0 17 14 0 18 17 0 15 18 0 15 19 0 19 18 0 15 20 0
		 20 19 0 20 21 0 21 19 0 22 21 0 20 22 0 18 23 0 23 17 0 23 24 0 24 17 0 23 25 0 25 24 0
		 26 17 0 24 26 0 25 26 0 26 27 0 27 17 0 27 14 0 27 28 0 28 14 0 28 29 0 29 14 0 30 28 0
		 27 30 0 27 31 0 31 30 0 26 31 0 26 32 0 32 31 0 33 32 0 26 33 0 25 33 0 34 33 0 25 34 0
		 34 35 0 35 33 0 35 36 0 36 33 0 36 32 0 36 37 0 37 32 0 38 32 0 37 38 0 38 31 0 38 39 0
		 39 31 0 39 30 0 39 40 0 40 30 0 41 30 0 40 41 0 41 28 0 41 42 0 42 28 0 43 42 0 41 43 0
		 41 44 0 44 43 0 40 44 0 40 45 0 45 44 0 46 45 0 40 46 0 39 46 0 47 46 0 39 47 0 39 48 0
		 48 47 0 38 48 0 38 49 0 49 48 0 37 49 0 37 50 0 50 49 0 51 50 0 37 51 0 36 51 0 52 51 0
		 36 52 0 36 53 0 53 52 0 52 54 0 54 51 0 54 55 0 55 51 0 55 50 0 55 56 0 56 50 0 57 50 0
		 56 57 0 57 49 0 57 58 0 58 49 0 58 48 0 58 59 0 59 48 0 60 48 0 59 60 0 60 47 0 60 61 0
		 61 47 0 62 47 0 61 62 0 62 63 0 63 47 0 63 46 0 63 64 0 64 46 0 64 45 0 65 64 0 63 65 0
		 62 65 0 65 66 0 66 64 0 66 67 0 67 64 0 68 64 0 67 68 0 68 45 0 69 68 0 67 69 0 70 45 0
		 68 70 0 68 71 0 71 70 0 70 44 0 70 43 0 72 43 0 70 72 0 73 59 0 58 73 0 58 74 0 74 73 0
		 57 74 0 57 75 0;
	setAttr ".ed[166:331]" 75 74 0 56 75 0 56 76 0 76 75 0 77 75 0 76 77 0 77 74 0
		 77 78 0 78 74 0 79 74 0 78 79 0 79 73 0 80 79 0 78 80 0 81 78 0 77 81 0 82 77 0 76 82 0
		 55 83 0 83 76 0 76 55 0 84 55 0 54 84 0 54 85 0 85 84 0 86 85 0 54 86 0 54 87 0 87 86 0
		 52 87 0 53 87 0 88 87 0 53 88 0 86 89 0 89 85 0 89 90 0 90 85 0 91 93 0 93 92 0 92 91 0
		 92 94 0 94 91 0 92 95 0 95 94 0 95 96 0 96 94 0 97 94 0 96 97 0 97 98 0 98 94 0 98 99 0
		 99 94 0 100 96 0 95 100 0 95 101 0 101 100 0 102 100 0 101 102 0 103 101 0 95 103 0
		 95 104 0 104 103 0 103 105 0 105 101 0 105 106 0 106 101 0 106 102 0 106 107 0 107 102 0
		 108 107 0 106 108 0 106 109 0 109 108 0 110 109 0 106 110 0 106 111 0 111 110 0 105 111 0
		 105 112 0 112 111 0 103 112 0 103 113 0 113 112 0 114 113 0 103 114 0 115 103 0 104 115 0
		 104 116 0 116 115 0 110 117 0 117 109 0 117 118 0 118 109 0 119 118 0 117 119 0 117 120 0
		 120 119 0 121 119 0 120 121 0 122 119 0 121 122 0 123 121 0 120 123 0 120 124 0 124 123 0
		 117 124 0 117 125 0 125 124 0 126 125 0 117 126 0 110 126 0 127 126 0 110 127 0 111 127 0
		 128 127 0 111 128 0 128 126 0 129 128 0 111 129 0 111 130 0 130 129 0 112 130 0 112 131 0
		 131 130 0 132 130 0 131 132 0 132 133 0 133 130 0 133 129 0 133 128 0 133 134 0 134 128 0
		 135 128 0 134 135 0 135 126 0 135 136 0 136 126 0 137 126 0 136 137 0 137 125 0 137 138 0
		 138 125 0 138 124 0 138 139 0 139 124 0 140 124 0 139 140 0 140 123 0 140 141 0 141 123 0
		 141 121 0 142 141 0 140 142 0 140 143 0 143 142 0 144 143 0 140 144 0 139 144 0 145 144 0
		 139 145 0 138 145 0 146 145 0 138 146 0 138 147 0 147 146 0 137 147 0;
	setAttr ".ed[332:497]" 148 137 0 136 148 0 136 149 0 149 148 0 150 149 0 136 150 0
		 135 150 0 134 150 0 134 151 0 151 150 0 151 149 0 134 152 0 152 151 0 152 149 0 152 153 0
		 153 149 0 153 154 0 154 149 0 155 145 0 146 155 0 145 156 0 156 144 0 157 144 0 144 158 0
		 158 157 0 159 161 0 161 160 0 160 159 0 160 162 0 162 159 0 160 163 0 163 162 0 163 164 0
		 164 162 0 165 167 0 167 166 0 166 165 0 166 168 0 168 165 0 169 168 0 166 169 0 166 170 0
		 170 169 0 171 173 0 173 172 0 172 171 0 172 174 0 174 171 0 172 175 0 175 174 0 174 176 0
		 176 171 0 176 177 0 177 171 0 178 171 0 177 178 0 179 176 0 174 179 0 174 180 0 180 179 0
		 181 180 0 174 181 0 175 181 0 182 181 0 175 182 0 175 183 0 183 182 0 184 182 0 183 184 0
		 184 185 0 185 182 0 185 186 0 186 182 0 186 181 0 186 187 0 187 181 0 188 181 0 187 188 0
		 188 180 0 188 189 0 189 180 0 190 180 0 189 190 0 190 179 0 189 191 0 191 190 0 191 192 0
		 192 190 0 193 189 0 188 193 0 188 194 0 194 193 0 187 194 0 187 195 0 195 194 0 196 195 0
		 187 196 0 186 196 0 197 196 0 186 197 0 185 197 0 198 197 0 185 198 0 185 199 0 199 198 0
		 184 199 0 200 198 0 199 200 0 199 201 0 201 200 0 200 202 0 202 198 0 202 203 0 203 198 0
		 203 197 0 203 204 0 204 197 0 204 196 0 204 205 0 205 196 0 205 195 0 206 205 0 204 206 0
		 204 207 0 207 206 0 203 207 0 203 208 0 208 207 0 202 208 0 208 209 0 209 207 0 209 210 0
		 210 207 0 210 206 0 211 210 0 209 211 0 208 212 0 212 209 0 212 213 0 213 209 0 202 212 0
		 202 214 0 214 212 0 215 202 0 200 215 0 216 200 0 201 216 0 217 201 0 201 218 0 218 217 0
		 219 133 0 132 219 0 132 220 0 220 219 0 221 219 0 220 221 0 222 220 0 132 222 0 220 223 0
		 223 221 0 223 224 0 224 221 0 225 227 0 227 226 0 226 225 0 226 228 0;
	setAttr ".ed[498:663]" 228 225 0 229 225 0 228 229 0 230 228 0 226 230 0 231 229 0
		 228 231 0 228 232 0 232 231 0 230 232 0 230 233 0 233 232 0 230 234 0 234 233 0 234 235 0
		 235 233 0 236 233 0 235 236 0 235 237 0 237 236 0 236 238 0 238 233 0 238 239 0 239 233 0
		 239 232 0 239 240 0 240 232 0 240 231 0 240 241 0 241 231 0 242 231 0 241 242 0 242 229 0
		 243 242 0 241 243 0 241 244 0 244 243 0 245 244 0 241 245 0 240 245 0 239 245 0 246 245 0
		 239 246 0 238 246 0 247 246 0 238 247 0 238 248 0 248 247 0 249 248 0 238 249 0 236 249 0
		 237 249 0 237 250 0 250 249 0 250 251 0 251 249 0 252 249 0 251 252 0 252 248 0 252 253 0
		 253 248 0 253 247 0 253 254 0 254 247 0 255 254 0 253 255 0 253 256 0 256 255 0 252 256 0
		 252 257 0 257 256 0 251 257 0 251 258 0 258 257 0 250 258 0 258 259 0 259 257 0 259 260 0
		 260 257 0 261 257 0 260 261 0 261 256 0 261 262 0 262 256 0 262 255 0 262 263 0 263 255 0
		 264 255 0 263 264 0 264 254 0 265 264 0 263 265 0 263 266 0 266 265 0 267 265 0 266 267 0
		 266 268 0 268 267 0 263 269 0 269 266 0 269 270 0 270 266 0 271 269 0 263 271 0 262 271 0
		 272 271 0 262 272 0 261 272 0 273 272 0 261 273 0 260 273 0 274 273 0 260 274 0 259 274 0
		 275 274 0 259 275 0 275 276 0 276 274 0 276 273 0 276 277 0 277 273 0 277 272 0 277 278 0
		 278 272 0 278 271 0 279 278 0 277 279 0 276 279 0 278 280 0 280 271 0 271 281 0 281 269 0
		 275 282 0 282 276 0 282 283 0 283 276 0 245 284 0 284 244 0 284 285 0 285 244 0 285 243 0
		 286 288 0 288 287 0 287 286 0 287 289 0 289 286 0 290 289 0 287 290 0 289 291 0 291 286 0
		 291 292 0 292 286 0 293 291 0 289 293 0 290 293 0 294 293 0 290 294 0 294 295 0 295 293 0
		 295 296 0 296 293 0 296 291 0 295 297 0 297 296 0 296 298 0 298 291 0;
	setAttr ".ed[664:829]" 298 299 0 299 291 0 299 292 0 300 299 0 298 300 0 298 301 0
		 301 300 0 302 301 0 298 302 0 296 302 0 297 302 0 297 303 0 303 302 0 303 301 0 304 301 0
		 303 304 0 303 305 0 305 304 0 306 304 0 305 306 0 305 307 0 307 306 0 308 306 0 307 308 0
		 308 309 0 309 306 0 309 310 0 310 306 0 310 304 0 310 311 0 311 304 0 311 301 0 311 312 0
		 312 301 0 313 301 0 312 313 0 313 300 0 314 312 0 311 314 0 311 315 0 315 314 0 310 315 0
		 310 316 0 316 315 0 309 316 0 309 317 0 317 316 0 318 317 0 309 318 0 308 318 0 318 319 0
		 319 317 0 319 320 0 320 317 0 321 317 0 320 321 0 321 316 0 321 315 0 321 322 0 322 315 0
		 322 314 0 320 322 0 323 314 0 322 323 0 322 324 0 324 323 0 320 324 0 325 323 0 324 325 0
		 324 326 0 326 325 0 327 326 0 324 327 0 324 328 0 328 327 0 320 328 0 320 329 0 329 328 0
		 330 329 0 320 330 0 319 330 0 330 331 0 331 329 0 331 332 0 332 329 0 333 329 0 332 333 0
		 333 328 0 333 334 0 334 328 0 334 327 0 334 335 0 335 327 0 335 326 0 336 335 0 334 336 0
		 334 337 0 337 336 0 333 337 0 332 337 0 338 337 0 332 338 0 331 338 0 338 339 0 339 337 0
		 339 340 0 340 337 0 340 336 0 340 341 0 341 336 0 342 341 0 340 342 0 340 343 0 343 342 0
		 339 343 0 339 344 0 344 343 0 345 344 0 339 345 0 338 345 0 346 344 0 345 346 0 347 349 0
		 349 348 0 348 347 0 348 350 0 350 347 0 351 347 0 350 351 0 352 347 0 351 352 0 353 355 0
		 355 354 0 354 353 0 354 356 0 356 353 0 357 353 0 356 357 0 358 353 0 357 358 0 359 361 0
		 361 360 0 360 359 0 360 362 0 362 359 0 363 362 0 360 363 0 360 364 0 364 363 0 365 367 0
		 367 366 0 366 365 0 366 368 0 368 365 0 369 365 0 368 369 0 368 370 0 370 369 0 371 370 0
		 368 371 0 366 371 0 372 371 0 366 372 0 372 373 0 373 371 0 373 374 0;
	setAttr ".ed[830:995]" 374 371 0 374 370 0 375 377 0 377 376 0 376 375 0 376 378 0
		 378 375 0 379 375 0 378 379 0 380 378 0 376 380 0 381 379 0 378 381 0 380 382 0 382 378 0
		 382 381 0 382 383 0 383 381 0 383 384 0 384 381 0 384 379 0 385 384 0 383 385 0 383 386 0
		 386 385 0 382 386 0 382 387 0 387 386 0 380 387 0 380 388 0 388 387 0 389 391 0 391 390 0
		 390 389 0 390 392 0 392 389 0 393 389 0 392 393 0 394 389 0 393 394 0 395 397 0 397 396 0
		 396 395 0 396 398 0 398 395 0 399 395 0 398 399 0 398 400 0 400 399 0 401 399 0 400 401 0
		 400 402 0 402 401 0 403 401 0 402 403 0 402 404 0 404 403 0 405 407 0 407 406 0 406 405 0
		 406 408 0 408 405 0 409 405 0 408 409 0 410 408 0 406 410 0 411 409 0 408 411 0 410 412 0
		 412 408 0 412 411 0 413 412 0 410 413 0 410 414 0 414 413 0 415 413 0 414 415 0 415 416 0
		 416 413 0 416 417 0 417 413 0 417 412 0 417 418 0 418 412 0 418 411 0 418 419 0 419 411 0
		 420 411 0 419 420 0 420 409 0 421 420 0 419 421 0 419 422 0 422 421 0 418 422 0 418 423 0
		 423 422 0 417 423 0 417 424 0 424 423 0 416 424 0 416 425 0 425 424 0 426 425 0 416 426 0
		 415 426 0 426 427 0 427 425 0 427 428 0 428 425 0 429 425 0 428 429 0 429 424 0 429 430 0
		 430 424 0 431 424 0 430 431 0 431 423 0 431 432 0 432 423 0 432 422 0 432 421 0 427 433 0
		 433 428 0 433 434 0 434 428 0 435 428 0 434 435 0 435 429 0 435 436 0 436 429 0 436 430 0
		 437 436 0 435 437 0 435 438 0 438 437 0 439 438 0 435 439 0 434 439 0 440 438 0 439 440 0
		 439 441 0 441 440 0 434 441 0 434 442 0 442 441 0 433 442 0 443 445 0 445 444 0 444 443 0
		 444 446 0 446 443 0 447 443 0 446 447 0 444 448 0 448 446 0 448 449 0 449 446 0 450 446 0
		 449 450 0 450 447 0 450 451 0 451 447 0 450 452 0 452 451 0 452 453 0;
	setAttr ".ed[996:1120]" 453 451 0 454 453 0 452 454 0 452 455 0 455 454 0 456 455 0
		 452 456 0 450 456 0 457 456 0 450 457 0 449 457 0 458 460 0 460 459 0 459 458 0 459 461 0
		 461 458 0 459 462 0 462 461 0 462 463 0 463 461 0 464 461 0 463 464 0 463 465 0 465 464 0
		 466 464 0 465 466 0 465 467 0 467 466 0 468 466 0 467 468 0 467 469 0 469 468 0 470 472 0
		 472 471 0 471 470 0 471 473 0 473 470 0 474 470 0 473 474 0 475 473 0 471 475 0 476 474 0
		 473 476 0 475 477 0 477 473 0 478 476 0 473 478 0 477 478 0 479 481 0 481 480 0 480 479 0
		 480 482 0 482 479 0 483 479 0 482 483 0 482 484 0 484 483 0 485 486 0 486 192 0 192 485 0
		 487 489 0 489 488 0 488 487 0 488 490 0 490 487 0 487 491 0 491 489 0 491 492 0 492 489 0
		 493 492 0 491 493 0 491 494 0 494 493 0 487 494 0 487 495 0 495 494 0 496 495 0 487 496 0
		 490 496 0 497 496 0 490 497 0 497 498 0 498 496 0 498 495 0 499 501 0 501 500 0 500 499 0
		 500 502 0 502 499 0 503 500 0 501 503 0 504 502 0 500 504 0 500 505 0 505 504 0 506 504 0
		 505 506 0 507 505 0 500 507 0 500 508 0 508 507 0 503 508 0 509 507 0 508 509 0 503 509 0
		 510 509 0 503 510 0 510 511 0 511 509 0 511 512 0 512 509 0 512 507 0 512 513 0 513 507 0
		 513 505 0 513 506 0 514 506 0 513 514 0 513 515 0 515 514 0 512 515 0 511 515 0 516 515 0
		 511 516 0 516 514 0;
	setAttr -s 1881 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.68535 -0.104448 0.72068501 -0.46691301
		 -0.10109 0.878506 -0.484781 -0.085983001 0.870399 -0.484781 -0.085983001 0.870399
		 -0.79066598 -0.076141 0.60749501 -0.68535 -0.104448 0.72068501 -0.99518597 -0.064505003
		 0.073778003 -0.68535 -0.104448 0.72068501 -0.79066598 -0.076141 0.60749501 -0.79066598
		 -0.076141 0.60749501 -0.99491698 -0.092093997 -0.040722001 -0.99518597 -0.064505003
		 0.073778003 -0.95801699 -0.103148 -0.26751301 -0.99518597 -0.064505003 0.073778003
		 -0.99491698 -0.092093997 -0.040722001 -0.99491698 -0.092093997 -0.040722001 -0.96283197
		 -0.175809 -0.205053 -0.95801699 -0.103148 -0.26751301 0.95109999 -0.029841 -0.307437
		 0.95307702 -0.13428199 -0.27131599 0.959364 -0.066150002 -0.27430901 0.959364 -0.066150002
		 -0.27430901 0.969266 -0.018518999 -0.245318 0.95109999 -0.029841 -0.307437 0.969266
		 -0.018518999 -0.245318 0.959364 -0.066150002 -0.27430901 0.97900999 -0.055137001
		 -0.19621401 0.97900999 -0.055137001 -0.19621401 0.97586697 -0.105235 -0.19133499
		 0.969266 -0.018518999 -0.245318 0.52097201 -0.0801 -0.84980702 0.931678 0.024742
		 -0.36244199 0.65834099 -0.06825 -0.74961901 0.65834099 -0.06825 -0.74961901 0.067166999
		 -0.066482 -0.99552399 0.52097201 -0.0801 -0.84980702 0.094627 -0.066142 -0.99331301
		 0.067166999 -0.066482 -0.99552399 0.65834099 -0.06825 -0.74961901 0.65834099 -0.06825
		 -0.74961901 0.77226901 -0.069835998 -0.631446 0.094627 -0.066142 -0.99331301 0.77226901
		 -0.069835998 -0.631446 0.65834099 -0.06825 -0.74961901 0.94044298 -0.100703 -0.32469299
		 0.94044298 -0.100703 -0.32469299 0.95045501 -0.059507001 -0.30511299 0.77226901 -0.069835998
		 -0.631446 0.98833901 -0.061905999 -0.13911401 0.95045501 -0.059507001 -0.30511299
		 0.94044298 -0.100703 -0.32469299 0.067166999 -0.066482 -0.99552399 0.094627 -0.066142
		 -0.99331301 -0.60435402 -0.057835001 -0.79461402 -0.60435402 -0.057835001 -0.79461402
		 -0.78793299 -0.055025 -0.61329699 0.067166999 -0.066482 -0.99552399 -0.78793299 -0.055025
		 -0.61329699 -0.60435402 -0.057835001 -0.79461402 -0.95787901 -0.13959999 -0.250958
		 -0.39971599 -0.51409 -0.75890601 0.067166999 -0.066482 -0.99552399 -0.78793299 -0.055025
		 -0.61329699 -0.78793299 -0.055025 -0.61329699 -0.95787901 -0.13959999 -0.250958 -0.39971599
		 -0.51409 -0.75890601 0.067166999 -0.066482 -0.99552399 -0.39971599 -0.51409 -0.75890601
		 0.14491899 -0.34305501 -0.928069 0.14491899 -0.34305501 -0.928069 0.52097201 -0.0801
		 -0.84980702 0.067166999 -0.066482 -0.99552399 0.52097201 -0.0801 -0.84980702 0.14491899
		 -0.34305501 -0.928069 0.62825 -0.27746201 -0.72685403 0.62825 -0.27746201 -0.72685403
		 0.886298 -0.121433 -0.44691199 0.52097201 -0.0801 -0.84980702 0.22564 -0.162058 -0.96063697
		 0.62825 -0.27746201 -0.72685403 0.14491899 -0.34305501 -0.928069 0.14491899 -0.34305501
		 -0.928069 -0.073340997 -0.304795 -0.94959003 0.22564 -0.162058 -0.96063697 -0.073340997
		 -0.304795 -0.94959003 0.14491899 -0.34305501 -0.928069 -0.39971599 -0.51409 -0.75890601
		 -0.39971599 -0.51409 -0.75890601 -0.026384 -0.34511301 -0.93818998 -0.073340997 -0.304795
		 -0.94959003 -0.012781 -0.88037699 -0.474103 -0.026384 -0.34511301 -0.93818998 -0.39971599
		 -0.51409 -0.75890601 -0.39971599 -0.51409 -0.75890601 -0.95787901 -0.13959999 -0.250958
		 -0.012781 -0.88037699 -0.474103 -0.035055999 -0.948138 -0.31592 -0.012781 -0.88037699
		 -0.474103 -0.95787901 -0.13959999 -0.250958 -0.012781 -0.88037699 -0.474103 -0.035055999
		 -0.948138 -0.31592 0.136913 -0.942204 -0.30578801 0.136913 -0.942204 -0.30578801
		 0.209554 -0.56903201 -0.79516602 -0.012781 -0.88037699 -0.474103 -0.026384 -0.34511301
		 -0.93818998 -0.012781 -0.88037699 -0.474103 0.209554 -0.56903201 -0.79516602 0.209554
		 -0.56903201 -0.79516602 0.067036003 -0.283454 -0.95664001 -0.026384 -0.34511301 -0.93818998
		 -0.031233 0.031514999 -0.99901497 -0.026384 -0.34511301 -0.93818998 0.067036003 -0.283454
		 -0.95664001 -0.073340997 -0.304795 -0.94959003 -0.026384 -0.34511301 -0.93818998
		 -0.031233 0.031514999 -0.99901497 -0.031233 0.031514999 -0.99901497 0.023154 0.065641999
		 -0.99757499 -0.073340997 -0.304795 -0.94959003 0.22564 -0.162058 -0.96063697 -0.073340997
		 -0.304795 -0.94959003 0.023154 0.065641999 -0.99757499 0.023154 0.065641999 -0.99757499
		 0.298026 0.16186 -0.94073498 0.22564 -0.162058 -0.96063697 0.68410701 -0.040963002
		 -0.72823 0.22564 -0.162058 -0.96063697 0.298026 0.16186 -0.94073498 0.62825 -0.27746201
		 -0.72685403 0.22564 -0.162058 -0.96063697 0.68410701 -0.040963002 -0.72823 0.68410701
		 -0.040963002 -0.72823 0.93277198 0.00054600002 -0.36046699 0.62825 -0.27746201 -0.72685403
		 0.98631001 -0.035820998 -0.160963 0.93277198 0.00054600002 -0.36046699 0.68410701
		 -0.040963002 -0.72823 0.68410701 -0.040963002 -0.72823 0.72120202 0.18809199 -0.66670102
		 0.98631001 -0.035820998 -0.160963 0.72120202 0.18809199 -0.66670102 0.68410701 -0.040963002
		 -0.72823 0.298026 0.16186 -0.94073498 0.298026 0.16186 -0.94073498 0.679021 0.449348
		 -0.58053201 0.72120202 0.18809199 -0.66670102 0.36296499 0.223241 -0.90466601 0.679021
		 0.449348 -0.58053201 0.298026 0.16186 -0.94073498 0.298026 0.16186 -0.94073498 0.023154
		 0.065641999 -0.99757499 0.36296499 0.223241 -0.90466601 0.114737 0.060038 -0.99158001
		 0.36296499 0.223241 -0.90466601 0.023154 0.065641999 -0.99757499 0.023154 0.065641999
		 -0.99757499 -0.061386999 0.073494002 -0.99540502 0.114737 0.060038 -0.99158001 -0.061386999
		 0.073494002 -0.99540502 0.023154 0.065641999 -0.99757499 -0.031233 0.031514999 -0.99901497
		 -0.031233 0.031514999 -0.99901497 -0.01238 0.077811003 -0.99689102 -0.061386999 0.073494002
		 -0.99540502 -0.01238 0.077811003 -0.99689102;
	setAttr ".n[166:331]" -type "float3"  -0.031233 0.031514999 -0.99901497 0.067036003
		 -0.283454 -0.95664001 0.067036003 -0.283454 -0.95664001 -0.169313 -0.19375201 -0.96632999
		 -0.01238 0.077811003 -0.99689102 -0.13973799 -0.335648 -0.93156499 -0.169313 -0.19375201
		 -0.96632999 0.067036003 -0.283454 -0.95664001 0.067036003 -0.283454 -0.95664001 0.209554
		 -0.56903201 -0.79516602 -0.13973799 -0.335648 -0.93156499 -0.069407001 -0.0096429996
		 -0.99754202 -0.13973799 -0.335648 -0.93156499 0.209554 -0.56903201 -0.79516602 0.209554
		 -0.56903201 -0.79516602 0.281203 0.0065100002 -0.95962602 -0.069407001 -0.0096429996
		 -0.99754202 -0.13973799 -0.335648 -0.93156499 -0.069407001 -0.0096429996 -0.99754202
		 -0.68489403 -0.125614 -0.71773398 -0.68489403 -0.125614 -0.71773398 -0.678514 -0.26186299
		 -0.68632799 -0.13973799 -0.335648 -0.93156499 -0.169313 -0.19375201 -0.96632999 -0.13973799
		 -0.335648 -0.93156499 -0.678514 -0.26186299 -0.68632799 -0.678514 -0.26186299 -0.68632799
		 -0.67477798 -0.051038001 -0.73625398 -0.169313 -0.19375201 -0.96632999 -0.26809901
		 0.217097 -0.93861198 -0.169313 -0.19375201 -0.96632999 -0.67477798 -0.051038001 -0.73625398
		 -0.01238 0.077811003 -0.99689102 -0.169313 -0.19375201 -0.96632999 -0.26809901 0.217097
		 -0.93861198 -0.26809901 0.217097 -0.93861198 -0.30848199 0.183726 -0.93331897 -0.01238
		 0.077811003 -0.99689102 -0.061386999 0.073494002 -0.99540502 -0.01238 0.077811003
		 -0.99689102 -0.30848199 0.183726 -0.93331897 -0.30848199 0.183726 -0.93331897 -0.223077
		 0.119499 -0.96744901 -0.061386999 0.073494002 -0.99540502 -0.108778 -0.077321 -0.991054
		 -0.061386999 0.073494002 -0.99540502 -0.223077 0.119499 -0.96744901 0.114737 0.060038
		 -0.99158001 -0.061386999 0.073494002 -0.99540502 -0.108778 -0.077321 -0.991054 -0.108778
		 -0.077321 -0.991054 0.104708 -0.069467999 -0.99207401 0.114737 0.060038 -0.99158001
		 0.410126 -0.074405998 -0.90898901 0.114737 0.060038 -0.99158001 0.104708 -0.069467999
		 -0.99207401 0.114737 0.060038 -0.99158001 0.410126 -0.074405998 -0.90898901 0.45666301
		 -0.0071459999 -0.88961101 0.45666301 -0.0071459999 -0.88961101 0.36296499 0.223241
		 -0.90466601 0.114737 0.060038 -0.99158001 0.36296499 0.223241 -0.90466601 0.45666301
		 -0.0071459999 -0.88961101 0.799142 0.119197 -0.58920598 0.799142 0.119197 -0.58920598
		 0.679021 0.449348 -0.58053201 0.36296499 0.223241 -0.90466601 0.764835 -0.138384
		 -0.629188 0.799142 0.119197 -0.58920598 0.45666301 -0.0071459999 -0.88961101 0.45666301
		 -0.0071459999 -0.88961101 0.410126 -0.074405998 -0.90898901 0.764835 -0.138384 -0.629188
		 0.799142 0.119197 -0.58920598 0.764835 -0.138384 -0.629188 0.938281 0.0055320002
		 -0.34582901 0.938281 0.0055320002 -0.34582901 0.968633 0.202703 -0.143741 0.799142
		 0.119197 -0.58920598 0.95717698 0.28936499 0.0089889998 0.799142 0.119197 -0.58920598
		 0.968633 0.202703 -0.143741 0.679021 0.449348 -0.58053201 0.799142 0.119197 -0.58920598
		 0.95717698 0.28936499 0.0089889998 0.91076899 0.20558999 0.35809699 0.95717698 0.28936499
		 0.0089889998 0.968633 0.202703 -0.143741 0.993967 0.109215 -0.010127 0.679021 0.449348
		 -0.58053201 0.95717698 0.28936499 0.0089889998 0.95717698 0.28936499 0.0089889998
		 0.93107599 0.22338 0.288443 0.993967 0.109215 -0.010127 0.72120202 0.18809199 -0.66670102
		 0.679021 0.449348 -0.58053201 0.993967 0.109215 -0.010127 0.993967 0.109215 -0.010127
		 0.98631001 -0.035820998 -0.160963 0.72120202 0.18809199 -0.66670102 0.96304202 -0.145803
		 0.226477 0.98631001 -0.035820998 -0.160963 0.993967 0.109215 -0.010127 -0.61115801
		 -0.396382 -0.68510401 -0.223077 0.119499 -0.96744901 -0.30848199 0.183726 -0.93331897
		 -0.30848199 0.183726 -0.93331897 -0.75990802 0.18343601 -0.62361199 -0.61115801 -0.396382
		 -0.68510401 -0.75990802 0.18343601 -0.62361199 -0.30848199 0.183726 -0.93331897 -0.26809901
		 0.217097 -0.93861198 -0.26809901 0.217097 -0.93861198 -0.69839501 0.345265 -0.626926
		 -0.75990802 0.18343601 -0.62361199 -0.69839501 0.345265 -0.626926 -0.26809901 0.217097
		 -0.93861198 -0.67477798 -0.051038001 -0.73625398 -0.67477798 -0.051038001 -0.73625398
		 -0.98664802 -0.0037100001 -0.162828 -0.69839501 0.345265 -0.626926 -0.97905099 0.20068701
		 -0.034403 -0.69839501 0.345265 -0.626926 -0.98664802 -0.0037100001 -0.162828 -0.75990802
		 0.18343601 -0.62361199 -0.69839501 0.345265 -0.626926 -0.97905099 0.20068701 -0.034403
		 -0.97905099 0.20068701 -0.034403 -0.99322402 0.115537 0.012516 -0.75990802 0.18343601
		 -0.62361199 -0.91352302 -0.39222601 -0.107865 -0.75990802 0.18343601 -0.62361199
		 -0.99322402 0.115537 0.012516 -0.61115801 -0.396382 -0.68510401 -0.75990802 0.18343601
		 -0.62361199 -0.91352302 -0.39222601 -0.107865 -0.89359498 -0.35873899 0.269804 -0.91352302
		 -0.39222601 -0.107865 -0.99322402 0.115537 0.012516 -0.91074699 0.20804401 0.35673299
		 -0.99322402 0.115537 0.012516 -0.97905099 0.20068701 -0.034403 -0.96932501 -0.059702002
		 0.23841999 -0.97905099 0.20068701 -0.034403 -0.98664802 -0.0037100001 -0.162828 -0.678514
		 -0.26186299 -0.68632799 -0.88752198 0.085309997 -0.45280001 -0.98664802 -0.0037100001
		 -0.162828 -0.98664802 -0.0037100001 -0.162828 -0.67477798 -0.051038001 -0.73625398
		 -0.678514 -0.26186299 -0.68632799 -0.86730802 -0.114212 -0.484492 -0.678514 -0.26186299
		 -0.68632799 -0.68489403 -0.125614 -0.71773398 -0.68489403 -0.125614 -0.71773398 -0.93055898
		 -0.081632003 -0.35692501 -0.86730802 -0.114212 -0.484492 -0.74777699 -0.11045 -0.65469903
		 -0.93055898 -0.081632003 -0.35692501 -0.68489403 -0.125614 -0.71773398 -0.68489403
		 -0.125614 -0.71773398 -0.12862299 -0.043963 -0.99071902 -0.74777699 -0.11045 -0.65469903
		 -0.12862299 -0.043963 -0.99071902 -0.68489403 -0.125614 -0.71773398;
	setAttr ".n[332:497]" -type "float3"  -0.069407001 -0.0096429996 -0.99754202
		 -0.069407001 -0.0096429996 -0.99754202 0.281203 0.0065100002 -0.95962602 -0.12862299
		 -0.043963 -0.99071902 0.227401 0.058490001 -0.97204298 -0.12862299 -0.043963 -0.99071902
		 0.281203 0.0065100002 -0.95962602 -0.93055898 -0.081632003 -0.35692501 -0.74777699
		 -0.11045 -0.65469903 -0.95274299 -0.056146 -0.29854301 -0.95274299 -0.056146 -0.29854301
		 -0.99668199 -0.060557 -0.054382 -0.93055898 -0.081632003 -0.35692501 0.99294901 -0.039333001
		 -0.111826 0.882806 -0.041418001 -0.46790799 0.99190497 -0.010339 -0.126564 0.99190497
		 -0.010339 -0.126564 0.94698602 -0.023002001 0.32045001 0.99294901 -0.039333001 -0.111826
		 0.94698602 -0.023002001 0.32045001 0.99190497 -0.010339 -0.126564 0.75016803 0.085363999
		 0.65571499 0.75016803 0.085363999 0.65571499 0.51776701 0.043294001 0.85442603 0.94698602
		 -0.023002001 0.32045001 0.85391903 -0.0053119999 0.52037901 0.94698602 -0.023002001
		 0.32045001 0.51776701 0.043294001 0.85442603 0.94698602 -0.023002001 0.32045001 0.85391903
		 -0.0053119999 0.52037901 0.97665602 -0.016922999 0.21414299 0.97665602 -0.016922999
		 0.21414299 0.99985802 -0.0084699998 0.014552 0.94698602 -0.023002001 0.32045001 -0.030731
		 0.049699999 0.99829102 0.51776701 0.043294001 0.85442603 0.75016803 0.085363999 0.65571499
		 0.75016803 0.085363999 0.65571499 -0.0048369998 0.057629 0.998326 -0.030731 0.049699999
		 0.99829102 -0.64670599 0.070964999 0.759431 -0.030731 0.049699999 0.99829102 -0.0048369998
		 0.057629 0.998326 0.746957 0.091149002 0.65859503 -0.0048369998 0.057629 0.998326
		 0.75016803 0.085363999 0.65571499 0.75016803 0.085363999 0.65571499 0.99922299 0.037831001
		 -0.011035 0.746957 0.091149002 0.65859503 -0.0048369998 0.057629 0.998326 0.746957
		 0.091149002 0.65859503 0.082262002 -0.120583 0.98928899 0.082262002 -0.120583 0.98928899
		 -0.50689399 -0.17025401 0.84502798 -0.0048369998 0.057629 0.998326 -0.64670599 0.070964999
		 0.759431 -0.0048369998 0.057629 0.998326 -0.50689399 -0.17025401 0.84502798 -0.50689399
		 -0.17025401 0.84502798 -0.91734201 0.112311 0.38192999 -0.64670599 0.070964999 0.759431
		 -0.92570001 0.021693001 0.37763599 -0.91734201 0.112311 0.38192999 -0.50689399 -0.17025401
		 0.84502798 -0.50689399 -0.17025401 0.84502798 -0.01414 -0.96790397 0.25092399 -0.92570001
		 0.021693001 0.37763599 -0.000162 -0.75721002 0.65317202 -0.01414 -0.96790397 0.25092399
		 -0.50689399 -0.17025401 0.84502798 -0.50689399 -0.17025401 0.84502798 0.171617 -0.28176299
		 0.94401097 -0.000162 -0.75721002 0.65317202 0.171617 -0.28176299 0.94401097 -0.50689399
		 -0.17025401 0.84502798 0.082262002 -0.120583 0.98928899 0.082262002 -0.120583 0.98928899
		 0.69471997 -0.15083501 0.70328701 0.171617 -0.28176299 0.94401097 0.69471997 -0.15083501
		 0.70328701 0.082262002 -0.120583 0.98928899 0.746957 0.091149002 0.65859503 0.746957
		 0.091149002 0.65859503 0.95881599 0.073636003 0.27431601 0.69471997 -0.15083501 0.70328701
		 0.95572299 0.088380001 0.280682 0.95881599 0.073636003 0.27431601 0.746957 0.091149002
		 0.65859503 0.99841499 -0.0068560001 -0.05587 0.746957 0.091149002 0.65859503 0.99922299
		 0.037831001 -0.011035 0.99922299 0.037831001 -0.011035 0.89728099 -0.064166002 -0.43677199
		 0.99841499 -0.0068560001 -0.05587 -0.01414 -0.96790397 0.25092399 -0.000162 -0.75721002
		 0.65317202 0.53558201 -0.174629 0.826231 0.53558201 -0.174629 0.826231 0.93255597
		 0.063902996 0.35532501 -0.01414 -0.96790397 0.25092399 0.85145199 0.0063720001 0.52439398
		 0.93255597 0.063902996 0.35532501 0.53558201 -0.174629 0.826231 0.53558201 -0.174629
		 0.826231 0.61323202 0.011237 0.789823 0.85145199 0.0063720001 0.52439398 0.712843
		 -0.090104997 0.69551098 0.85145199 0.0063720001 0.52439398 0.61323202 0.011237 0.789823
		 0.92993498 -0.22654299 0.289653 0.85145199 0.0063720001 0.52439398 0.712843 -0.090104997
		 0.69551098 0.14826401 0.028682999 0.98853201 0.712843 -0.090104997 0.69551098 0.61323202
		 0.011237 0.789823 0.61323202 0.011237 0.789823 0.025986999 0.093552999 0.99527502
		 0.14826401 0.028682999 0.98853201 0.025986999 0.093552999 0.99527502 0.61323202 0.011237
		 0.789823 0.53558201 -0.174629 0.826231 0.53558201 -0.174629 0.826231 -0.082755998
		 -0.120746 0.98922801 0.025986999 0.093552999 0.99527502 -0.174908 -0.275868 0.94514799
		 -0.082755998 -0.120746 0.98922801 0.53558201 -0.174629 0.826231 0.53558201 -0.174629
		 0.826231 -0.000162 -0.75721002 0.65317202 -0.174908 -0.275868 0.94514799 -0.00085499999
		 -0.34187999 0.93974298 -0.174908 -0.275868 0.94514799 -0.000162 -0.75721002 0.65317202
		 -0.000162 -0.75721002 0.65317202 0.171617 -0.28176299 0.94401097 -0.00085499999 -0.34187999
		 0.93974298 -0.015636999 -0.19211499 0.98124802 -0.00085499999 -0.34187999 0.93974298
		 0.171617 -0.28176299 0.94401097 -0.174908 -0.275868 0.94514799 -0.00085499999 -0.34187999
		 0.93974298 -0.015636999 -0.19211499 0.98124802 0.25838101 -0.356554 0.89783502 -0.015636999
		 -0.19211499 0.98124802 0.171617 -0.28176299 0.94401097 0.171617 -0.28176299 0.94401097
		 0.76268202 -0.056519002 0.64429897 0.25838101 -0.356554 0.89783502 0.76268202 -0.056519002
		 0.64429897 0.171617 -0.28176299 0.94401097 0.69471997 -0.15083501 0.70328701 0.69471997
		 -0.15083501 0.70328701 0.96293098 0.055087999 0.26406401 0.76268202 -0.056519002
		 0.64429897 0.70868099 0.239217 0.663737 0.76268202 -0.056519002 0.64429897 0.96293098
		 0.055087999 0.26406401 0.76268202 -0.056519002 0.64429897 0.70868099 0.239217 0.663737
		 0.320097 -0.190817 0.92796898 0.320097 -0.190817 0.92796898 0.25838101 -0.356554
		 0.89783502 0.76268202 -0.056519002 0.64429897 -0.015636999 -0.19211499 0.98124802
		 0.25838101 -0.356554 0.89783502 0.320097 -0.190817 0.92796898;
	setAttr ".n[498:663]" -type "float3"  0.320097 -0.190817 0.92796898 -0.048113
		 -0.181376 0.98223603 -0.015636999 -0.19211499 0.98124802 -0.24577799 -0.200426 0.94837898
		 -0.015636999 -0.19211499 0.98124802 -0.048113 -0.181376 0.98223603 -0.174908 -0.275868
		 0.94514799 -0.015636999 -0.19211499 0.98124802 -0.24577799 -0.200426 0.94837898 -0.24577799
		 -0.200426 0.94837898 -0.73912197 0.102264 0.66576397 -0.174908 -0.275868 0.94514799
		 -0.69966 -0.115482 0.70508099 -0.174908 -0.275868 0.94514799 -0.73912197 0.102264
		 0.66576397 -0.082755998 -0.120746 0.98922801 -0.174908 -0.275868 0.94514799 -0.69966
		 -0.115482 0.70508099 -0.69966 -0.115482 0.70508099 -0.73733503 0.106318 0.667108
		 -0.082755998 -0.120746 0.98922801 0.025986999 0.093552999 0.99527502 -0.082755998
		 -0.120746 0.98922801 -0.73733503 0.106318 0.667108 -0.73733503 0.106318 0.667108
		 -0.71245098 0.15030301 0.68543601 0.025986999 0.093552999 0.99527502 -0.389918 0.056588002
		 0.91910899 0.025986999 0.093552999 0.99527502 -0.71245098 0.15030301 0.68543601 0.14826401
		 0.028682999 0.98853201 0.025986999 0.093552999 0.99527502 -0.389918 0.056588002 0.91910899
		 -0.389918 0.056588002 0.91910899 0.118352 0.041563999 0.99210101 0.14826401 0.028682999
		 0.98853201 0.712843 -0.090104997 0.69551098 0.14826401 0.028682999 0.98853201 0.118352
		 0.041563999 0.99210101 -0.32283899 0.033165999 0.94587302 0.118352 0.041563999 0.99210101
		 -0.389918 0.056588002 0.91910899 -0.389918 0.056588002 0.91910899 -0.60662198 0.010402
		 0.79492199 -0.32283899 0.033165999 0.94587302 -0.91981101 0.01613 0.39203101 -0.60662198
		 0.010402 0.79492199 -0.389918 0.056588002 0.91910899 -0.389918 0.056588002 0.91910899
		 -0.71245098 0.15030301 0.68543601 -0.91981101 0.01613 0.39203101 -0.98817402 0.088852003
		 0.12497 -0.91981101 0.01613 0.39203101 -0.71245098 0.15030301 0.68543601 -0.71245098
		 0.15030301 0.68543601 -0.73733503 0.106318 0.667108 -0.98817402 0.088852003 0.12497
		 -0.98985398 0.123124 0.070919 -0.98817402 0.088852003 0.12497 -0.73733503 0.106318
		 0.667108 -0.73733503 0.106318 0.667108 -0.95718598 0.079857998 0.27824101 -0.98985398
		 0.123124 0.070919 -0.69966 -0.115482 0.70508099 -0.95718598 0.079857998 0.27824101
		 -0.73733503 0.106318 0.667108 -0.92333102 0.25020099 0.29130501 -0.69966 -0.115482
		 0.70508099 -0.73912197 0.102264 0.66576397 -0.73912197 0.102264 0.66576397 -0.72907197
		 0.150609 0.66766101 -0.92333102 0.25020099 0.29130501 -0.28535399 -0.025996 0.95806998
		 -0.72907197 0.150609 0.66766101 -0.73912197 0.102264 0.66576397 -0.73912197 0.102264
		 0.66576397 -0.24577799 -0.200426 0.94837898 -0.28535399 -0.025996 0.95806998 -0.048113
		 -0.181376 0.98223603 -0.28535399 -0.025996 0.95806998 -0.24577799 -0.200426 0.94837898
		 -0.28535399 -0.025996 0.95806998 -0.048113 -0.181376 0.98223603 -0.396889 -0.21375
		 0.89263099 -0.396889 -0.21375 0.89263099 -0.72907197 0.150609 0.66766101 -0.28535399
		 -0.025996 0.95806998 -0.396889 -0.21375 0.89263099 -0.048113 -0.181376 0.98223603
		 -0.40376601 -0.37408099 0.83488703 -0.40376601 -0.37408099 0.83488703 -0.72907197
		 0.150609 0.66766101 -0.396889 -0.21375 0.89263099 -0.72907197 0.150609 0.66766101
		 -0.40376601 -0.37408099 0.83488703 -0.83179301 -0.16909599 0.52870202 -0.83179301
		 -0.16909599 0.52870202 -0.93856901 -0.21470501 0.27016699 -0.72907197 0.150609 0.66766101
		 -0.89275402 0.061361998 -0.44634601 -0.98817402 0.088852003 0.12497 -0.98985398 0.123124
		 0.070919 -0.91981101 0.01613 0.39203101 -0.98817402 0.088852003 0.12497 -0.99480999
		 -0.086723998 -0.053222999 -0.92893302 0.103496 -0.355488 -0.92893302 0.103496 -0.355488
		 -0.92893302 0.103496 -0.355488 0.785667 0.35775 -0.50471997 0.73276001 0.40587601
		 -0.54619402 0.91272902 0.40763801 -0.027504999 0.91272902 0.40763801 -0.027504999
		 0.898987 0.423228 -0.112699 0.785667 0.35775 -0.50471997 0.898987 0.423228 -0.112699
		 0.91272902 0.40763801 -0.027504999 0.85697699 0.482274 0.181666 0.85697699 0.482274
		 0.181666 0.79366499 0.60784602 0.024859 0.898987 0.423228 -0.112699 0.82786602 0.242955
		 -0.50558001 0.80374998 0.273202 -0.52853298 0.925924 0.317956 -0.20388401 0.925924
		 0.317956 -0.20388401 0.92346799 0.244131 -0.295984 0.82786602 0.242955 -0.50558001
		 0.93181801 0.36029801 0.043598 0.92346799 0.244131 -0.295984 0.925924 0.317956 -0.20388401
		 0.925924 0.317956 -0.20388401 0.86539799 0.47475001 0.16030601 0.93181801 0.36029801
		 0.043598 -0.96533501 -0.037232 -0.25834399 -0.980111 0.057284001 0.19000199 -0.98760098
		 -0.058049001 -0.14585599 -0.98760098 -0.058049001 -0.14585599 -0.596735 -0.20856
		 -0.77486098 -0.96533501 -0.037232 -0.25834399 -0.596735 -0.20856 -0.77486098 -0.98760098
		 -0.058049001 -0.14585599 -0.57007903 -0.25488901 -0.78105199 -0.96533501 -0.037232
		 -0.25834399 -0.596735 -0.20856 -0.77486098 -0.62386501 -0.156736 -0.76565403 -0.62386501
		 -0.156736 -0.76565403 -0.99631399 -0.079331003 -0.032628998 -0.96533501 -0.037232
		 -0.25834399 -0.95020199 -0.075487003 0.30235499 -0.96533501 -0.037232 -0.25834399
		 -0.99631399 -0.079331003 -0.032628998 -0.115242 -0.079607002 -0.99014199 -0.62386501
		 -0.156736 -0.76565403 -0.596735 -0.20856 -0.77486098 -0.596735 -0.20856 -0.77486098
		 -0.069058001 -0.26090899 -0.96289003 -0.115242 -0.079607002 -0.99014199 -0.25935701
		 -0.313743 -0.91339999 -0.069058001 -0.26090899 -0.96289003 -0.596735 -0.20856 -0.77486098
		 -0.596735 -0.20856 -0.77486098 -0.57007903 -0.25488901 -0.78105199 -0.25935701 -0.313743
		 -0.91339999 -0.53744298 -0.33327299 -0.77465099 -0.25935701 -0.313743 -0.91339999
		 -0.57007903 -0.25488901 -0.78105199 -0.57007903 -0.25488901 -0.78105199;
	setAttr ".n[664:829]" -type "float3"  -0.74629098 -0.31140801 -0.58828098 -0.53744298
		 -0.33327299 -0.77465099 -0.52375501 -0.278411 -0.805089 -0.53744298 -0.33327299 -0.77465099
		 -0.74629098 -0.31140801 -0.58828098 -0.53744298 -0.33327299 -0.77465099 -0.52375501
		 -0.278411 -0.805089 -0.257552 -0.082068004 -0.96277303 -0.257552 -0.082068004 -0.96277303
		 -0.29573399 -0.254691 -0.92069203 -0.53744298 -0.33327299 -0.77465099 -0.25935701
		 -0.313743 -0.91339999 -0.53744298 -0.33327299 -0.77465099 -0.29573399 -0.254691 -0.92069203
		 -0.29573399 -0.254691 -0.92069203 0.107599 -0.16843601 -0.97982198 -0.25935701 -0.313743
		 -0.91339999 0.14455999 -0.31935 -0.93654603 -0.25935701 -0.313743 -0.91339999 0.107599
		 -0.16843601 -0.97982198 -0.069058001 -0.26090899 -0.96289003 -0.25935701 -0.313743
		 -0.91339999 0.14455999 -0.31935 -0.93654603 0.14455999 -0.31935 -0.93654603 0.097506002
		 -0.275343 -0.956388 -0.069058001 -0.26090899 -0.96289003 0.022603 -0.044456001 -0.99875599
		 -0.069058001 -0.26090899 -0.96289003 0.097506002 -0.275343 -0.956388 -0.115242 -0.079607002
		 -0.99014199 -0.069058001 -0.26090899 -0.96289003 0.022603 -0.044456001 -0.99875599
		 0.022603 -0.044456001 -0.99875599 0.097506002 -0.275343 -0.956388 -0.043894 -0.031954002
		 -0.99852502 -0.043894 -0.031954002 -0.99852502 -0.085519001 -0.00023000001 -0.996337
		 0.022603 -0.044456001 -0.99875599 0.410909 -0.241567 -0.87909001 0.097506002 -0.275343
		 -0.956388 0.14455999 -0.31935 -0.93654603 0.14455999 -0.31935 -0.93654603 0.455971
		 -0.11531 -0.88249302 0.410909 -0.241567 -0.87909001 0.455971 -0.11531 -0.88249302
		 0.14455999 -0.31935 -0.93654603 0.107599 -0.16843601 -0.97982198 0.107599 -0.16843601
		 -0.97982198 0.54390597 0.054373 -0.83738297 0.455971 -0.11531 -0.88249302 0.066031002
		 0.034557 -0.99721903 0.54390597 0.054373 -0.83738297 0.107599 -0.16843601 -0.97982198
		 0.107599 -0.16843601 -0.97982198 -0.29573399 -0.254691 -0.92069203 0.066031002 0.034557
		 -0.99721903 -0.126376 0.061942 -0.99004698 0.066031002 0.034557 -0.99721903 -0.29573399
		 -0.254691 -0.92069203 -0.29573399 -0.254691 -0.92069203 -0.257552 -0.082068004 -0.96277303
		 -0.126376 0.061942 -0.99004698 -0.097891003 0.43481699 -0.89518303 -0.126376 0.061942
		 -0.99004698 -0.257552 -0.082068004 -0.96277303 -0.257552 -0.082068004 -0.96277303
		 -0.23921899 0.42219001 -0.87437397 -0.097891003 0.43481699 -0.89518303 -0.23921899
		 0.42219001 -0.87437397 -0.257552 -0.082068004 -0.96277303 -0.52375501 -0.278411 -0.805089
		 -0.22808 0.77004898 -0.59582198 -0.097891003 0.43481699 -0.89518303 -0.23921899 0.42219001
		 -0.87437397 -0.23921899 0.42219001 -0.87437397 -0.322595 0.74066901 -0.58935702 -0.22808
		 0.77004898 -0.59582198 -0.097891003 0.43481699 -0.89518303 -0.22808 0.77004898 -0.59582198
		 -0.229137 0.72303301 -0.65170503 -0.229137 0.72303301 -0.65170503 -0.212401 0.36743301
		 -0.90547198 -0.097891003 0.43481699 -0.89518303 -0.126376 0.061942 -0.99004698 -0.097891003
		 0.43481699 -0.89518303 -0.212401 0.36743301 -0.90547198 -0.212401 0.36743301 -0.90547198
		 -0.038424 0.34722701 -0.93699402 -0.126376 0.061942 -0.99004698 0.066031002 0.034557
		 -0.99721903 -0.126376 0.061942 -0.99004698 -0.038424 0.34722701 -0.93699402 -0.038424
		 0.34722701 -0.93699402 0.305819 0.298329 -0.90414298 0.066031002 0.034557 -0.99721903
		 0.54390597 0.054373 -0.83738297 0.066031002 0.034557 -0.99721903 0.305819 0.298329
		 -0.90414298 0.21274801 0.60988998 -0.76339602 0.305819 0.298329 -0.90414298 -0.038424
		 0.34722701 -0.93699402 -0.038424 0.34722701 -0.93699402 -0.003303 0.63935298 -0.76890701
		 0.21274801 0.60988998 -0.76339602 -0.003303 0.63935298 -0.76890701 -0.038424 0.34722701
		 -0.93699402 -0.212401 0.36743301 -0.90547198 -0.212401 0.36743301 -0.90547198 -0.197749
		 0.54686803 -0.81353003 -0.003303 0.63935298 -0.76890701 -0.229137 0.72303301 -0.65170503
		 -0.197749 0.54686803 -0.81353003 -0.212401 0.36743301 -0.90547198 -0.003303 0.63935298
		 -0.76890701 -0.197749 0.54686803 -0.81353003 0.030792 0.85478097 -0.51807398 0.030792
		 0.85478097 -0.51807398 0.032749999 0.83582503 -0.54801899 -0.003303 0.63935298 -0.76890701
		 0.21274801 0.60988998 -0.76339602 -0.003303 0.63935298 -0.76890701 0.032749999 0.83582503
		 -0.54801899 -0.050014999 0.90477699 -0.42293999 0.032749999 0.83582503 -0.54801899
		 0.030792 0.85478097 -0.51807398 0.030792 0.85478097 -0.51807398 -0.197749 0.54686803
		 -0.81353003 -0.206994 0.83068103 -0.51683903 -0.206994 0.83068103 -0.51683903 0.166555
		 0.935359 -0.31202999 0.030792 0.85478097 -0.51807398 -0.206994 0.83068103 -0.51683903
		 -0.197749 0.54686803 -0.81353003 -0.229137 0.72303301 -0.65170503 -0.229137 0.72303301
		 -0.65170503 -0.470433 0.83088201 -0.29719901 -0.206994 0.83068103 -0.51683903 -0.134413
		 0.87902999 -0.45742801 -0.229137 0.72303301 -0.65170503 -0.22808 0.77004898 -0.59582198
		 -0.34389001 0.85243398 -0.393823 -0.22808 0.77004898 -0.59582198 -0.322595 0.74066901
		 -0.58935702 -0.34377801 0.80132902 -0.48958001 -0.34377801 0.80132902 -0.48958001
		 -0.34377801 0.80132902 -0.48958001 0.48923501 0.064622 0.86975402 0.320097 -0.190817
		 0.92796898 0.70868099 0.239217 0.663737 0.70868099 0.239217 0.663737 0.767129 0.22044
		 0.60242802 0.48923501 0.064622 0.86975402 0.84030199 0.02115 0.54170698 0.48923501
		 0.064622 0.86975402 0.767129 0.22044 0.60242802 0.86347198 0.391361 0.318203 0.767129
		 0.22044 0.60242802 0.70868099 0.239217 0.663737 0.84030199 0.02115 0.54170698 0.767129
		 0.22044 0.60242802 0.94086701 0.093686 0.32556301 0.94086701 0.093686 0.32556301
		 0.94057 0.100843 0.32428101 0.84030199 0.02115 0.54170698 0.54350698 -0.081120998
		 0.83547598 0.802634 -0.027423 0.595842;
	setAttr ".n[830:995]" -type "float3"  0.53768498 -0.131478 0.83283103 0.53768498
		 -0.131478 0.83283103 0.060352001 -0.217784 0.97412902 0.54350698 -0.081120998 0.83547598
		 -0.062697001 -0.28175899 0.95743501 0.54350698 -0.081120998 0.83547598 0.060352001
		 -0.217784 0.97412902 -0.030398 -0.120035 0.99230403 0.060352001 -0.217784 0.97412902
		 0.53768498 -0.131478 0.83283103 -0.31287101 -0.206056 0.92717499 -0.062697001 -0.28175899
		 0.95743501 0.060352001 -0.217784 0.97412902 0.060352001 -0.217784 0.97412902 -0.224564
		 -0.063228004 0.97240603 -0.31287101 -0.206056 0.92717499 -0.224564 -0.063228004 0.97240603
		 0.060352001 -0.217784 0.97412902 -0.030398 -0.120035 0.99230403 -0.030398 -0.120035
		 0.99230403 -0.22676601 0.066156 0.97170001 -0.224564 -0.063228004 0.97240603 -0.22676601
		 0.066156 0.97170001 -0.030398 -0.120035 0.99230403 -0.195072 -0.027556 0.98040199
		 -0.195072 -0.027556 0.98040199 -0.19288699 0.139495 0.971255 -0.22676601 0.066156
		 0.97170001 -0.22528701 0.13935401 0.964275 -0.22676601 0.066156 0.97170001 -0.19288699
		 0.139495 0.971255 -0.19288699 0.139495 0.971255 -0.15852199 0.26404101 0.95139498
		 -0.22528701 0.13935401 0.964275 -0.22676601 0.066156 0.97170001 -0.22528701 0.13935401
		 0.964275 -0.53471398 0.017793 0.84484601 -0.53471398 0.017793 0.84484601 -0.68674099
		 -0.13663501 0.71394497 -0.22676601 0.066156 0.97170001 -0.224564 -0.063228004 0.97240603
		 -0.22676601 0.066156 0.97170001 -0.68674099 -0.13663501 0.71394497 -0.68674099 -0.13663501
		 0.71394497 -0.72527897 -0.189265 0.661928 -0.224564 -0.063228004 0.97240603 -0.31287101
		 -0.206056 0.92717499 -0.224564 -0.063228004 0.97240603 -0.72527897 -0.189265 0.661928
		 -0.72527897 -0.189265 0.661928 -0.61118901 -0.057006001 0.78942901 -0.31287101 -0.206056
		 0.92717499 -0.246967 -0.073407002 0.96623898 -0.31287101 -0.206056 0.92717499 -0.61118901
		 -0.057006001 0.78942901 -0.062697001 -0.28175899 0.95743501 -0.31287101 -0.206056
		 0.92717499 -0.246967 -0.073407002 0.96623898 -0.55820698 0.071176 0.82664299 -0.246967
		 -0.073407002 0.96623898 -0.61118901 -0.057006001 0.78942901 -0.61118901 -0.057006001
		 0.78942901 -0.85921103 -0.020819001 0.51119798 -0.55820698 0.071176 0.82664299 -0.84971797
		 -0.15359899 0.50436801 -0.85921103 -0.020819001 0.51119798 -0.61118901 -0.057006001
		 0.78942901 -0.61118901 -0.057006001 0.78942901 -0.72527897 -0.189265 0.661928 -0.84971797
		 -0.15359899 0.50436801 -0.68674099 -0.13663501 0.71394497 -0.84971797 -0.15359899
		 0.50436801 -0.72527897 -0.189265 0.661928 -0.76960301 -0.18608201 0.610807 -0.84971797
		 -0.15359899 0.50436801 -0.68674099 -0.13663501 0.71394497 -0.68674099 -0.13663501
		 0.71394497 -0.53471398 0.017793 0.84484601 -0.76960301 -0.18608201 0.610807 -0.66820598
		 0.077863999 0.73989099 -0.76960301 -0.18608201 0.610807 -0.53471398 0.017793 0.84484601
		 -0.53471398 0.017793 0.84484601 -0.45288599 0.16838799 0.87552297 -0.66820598 0.077863999
		 0.73989099 -0.15513299 0.235429 0.95943099 -0.45288599 0.16838799 0.87552297 -0.53471398
		 0.017793 0.84484601 -0.53471398 0.017793 0.84484601 -0.22528701 0.13935401 0.964275
		 -0.15513299 0.235429 0.95943099 -0.15852199 0.26404101 0.95139498 -0.15513299 0.235429
		 0.95943099 -0.22528701 0.13935401 0.964275 -0.15513299 0.235429 0.95943099 -0.15852199
		 0.26404101 0.95139498 -0.069507003 0.456296 0.88710898 -0.069507003 0.456296 0.88710898
		 -0.032593999 0.46987599 0.88213003 -0.15513299 0.235429 0.95943099 -0.33511099 0.409908
		 0.84833699 -0.15513299 0.235429 0.95943099 -0.032593999 0.46987599 0.88213003 -0.45288599
		 0.16838799 0.87552297 -0.15513299 0.235429 0.95943099 -0.33511099 0.409908 0.84833699
		 -0.33511099 0.409908 0.84833699 -0.53190398 0.28836599 0.796193 -0.45288599 0.16838799
		 0.87552297 -0.66820598 0.077863999 0.73989099 -0.45288599 0.16838799 0.87552297 -0.53190398
		 0.28836599 0.796193 -0.53190398 0.28836599 0.796193 -0.32207099 0.178528 0.92973
		 -0.66820598 0.077863999 0.73989099 -0.209415 0.40104601 0.89179999 -0.32207099 0.178528
		 0.92973 -0.53190398 0.28836599 0.796193 -0.53190398 0.28836599 0.796193 -0.27822801
		 0.53096199 0.80041802 -0.209415 0.40104601 0.89179999 -0.27822801 0.53096199 0.80041802
		 -0.53190398 0.28836599 0.796193 -0.33511099 0.409908 0.84833699 -0.33511099 0.409908
		 0.84833699 -0.130806 0.58408898 0.80107999 -0.27822801 0.53096199 0.80041802 -0.130806
		 0.58408898 0.80107999 -0.33511099 0.409908 0.84833699 -0.032593999 0.46987599 0.88213003
		 -0.032593999 0.46987599 0.88213003 0.024564 0.61129701 0.79101998 -0.130806 0.58408898
		 0.80107999 0.024564 0.61129701 0.79101998 -0.032593999 0.46987599 0.88213003 -0.069507003
		 0.456296 0.88710898 -0.130806 0.58408898 0.80107999 0.024564 0.61129701 0.79101998
		 0.124252 0.68615401 0.71676701 0.124252 0.68615401 0.71676701 -0.106687 0.71715099
		 0.688703 -0.130806 0.58408898 0.80107999 -0.21528301 0.74349999 0.63313597 -0.130806
		 0.58408898 0.80107999 -0.106687 0.71715099 0.688703 -0.27822801 0.53096199 0.80041802
		 -0.130806 0.58408898 0.80107999 -0.21528301 0.74349999 0.63313597 -0.21528301 0.74349999
		 0.63313597 -0.096346997 0.78916198 0.60658097 -0.27822801 0.53096199 0.80041802 -0.209415
		 0.40104601 0.89179999 -0.27822801 0.53096199 0.80041802 -0.096346997 0.78916198 0.60658097
		 -0.096346997 0.78916198 0.60658097 -0.268125 0.76345098 0.58758098 -0.209415 0.40104601
		 0.89179999 -0.33342099 0.37366199 0.86556798 -0.209415 0.40104601 0.89179999 -0.268125
		 0.76345098 0.58758098 -0.32207099 0.178528 0.92973 -0.209415 0.40104601 0.89179999
		 -0.33342099 0.37366199 0.86556798 -0.29163501 0.83644998 0.46400499 -0.33342099 0.37366199
		 0.86556798 -0.268125 0.76345098 0.58758098;
	setAttr ".n[996:1161]" -type "float3"  -0.268125 0.76345098 0.58758098 -0.292519
		 0.95588797 -0.026672 -0.29163501 0.83644998 0.46400499 -0.33511701 0.91073 -0.241385
		 -0.29163501 0.83644998 0.46400499 -0.292519 0.95588797 -0.026672 -0.292519 0.95588797
		 -0.026672 -0.28746101 0.78121698 -0.55413502 -0.33511701 0.91073 -0.241385 -0.292519
		 0.95588797 -0.026672 -0.268125 0.76345098 0.58758098 -0.291345 0.95429301 -0.066651002
		 -0.291345 0.95429301 -0.066651002 -0.210838 0.84530097 -0.490931 -0.292519 0.95588797
		 -0.026672 -0.085382 0.99457902 0.059344999 -0.291345 0.95429301 -0.066651002 -0.268125
		 0.76345098 0.58758098 -0.268125 0.76345098 0.58758098 -0.096346997 0.78916198 0.60658097
		 -0.085382 0.99457902 0.059344999 -0.154393 0.93541002 0.318075 -0.085382 0.99457902
		 0.059344999 -0.096346997 0.78916198 0.60658097 -0.096346997 0.78916198 0.60658097
		 -0.21528301 0.74349999 0.63313597 -0.154393 0.93541002 0.318075 -0.11414 0.94147199
		 0.31717801 -0.154393 0.93541002 0.318075 -0.21528301 0.74349999 0.63313597 -0.21528301
		 0.74349999 0.63313597 -0.106687 0.71715099 0.688703 -0.11414 0.94147199 0.31717801
		 0.087632999 0.90881401 0.40789399 -0.11414 0.94147199 0.31717801 -0.106687 0.71715099
		 0.688703 -0.106687 0.71715099 0.688703 0.124252 0.68615401 0.71676701 0.087632999
		 0.90881401 0.40789399 -0.365161 0.82895899 0.42365599 0.087632999 0.90881401 0.40789399
		 0.124252 0.68615401 0.71676701 0.087632999 0.90881401 0.40789399 -0.365161 0.82895899
		 0.42365599 -0.0090279998 0.99993098 0.0075039999 -0.0090279998 0.99993098 0.0075039999
		 -0.11414 0.94147199 0.31717801 0.087632999 0.90881401 0.40789399 -0.11414 0.94147199
		 0.31717801 -0.0090279998 0.99993098 0.0075039999 -0.20563801 0.97724497 -0.052009001
		 -0.20563801 0.97724497 -0.052009001 -0.154393 0.93541002 0.318075 -0.11414 0.94147199
		 0.31717801 -0.154393 0.93541002 0.318075 -0.20563801 0.97724497 -0.052009001 -0.133285
		 0.97894502 -0.154605 -0.133285 0.97894502 -0.154605 -0.085382 0.99457902 0.059344999
		 -0.154393 0.93541002 0.318075 -0.27790499 0.89777398 -0.34171799 -0.133285 0.97894502
		 -0.154605 -0.20563801 0.97724497 -0.052009001 -0.20563801 0.97724497 -0.052009001
		 -0.0090279998 0.99993098 0.0075039999 -0.27790499 0.89777398 -0.34171799 -0.085382
		 0.99457902 0.059344999 -0.133285 0.97894502 -0.154605 0.016272999 0.914226 -0.40487701
		 -0.291345 0.95429301 -0.066651002 -0.085382 0.99457902 0.059344999 -0.26883301 0.880409
		 -0.39065099 -0.0090279998 0.99993098 0.0075039999 -0.365161 0.82895899 0.42365599
		 -0.26549199 0.96385598 0.022283001 -0.26549199 0.96385598 0.022283001 -0.249854 0.90307498
		 -0.34932601 -0.0090279998 0.99993098 0.0075039999 -0.85921103 -0.020819001 0.51119798
		 -0.84971797 -0.15359899 0.50436801 -0.96360898 -0.039329 0.264406 -0.96360898 -0.039329
		 0.264406 -0.91770899 -0.128562 0.37587401 -0.85921103 -0.020819001 0.51119798 -0.55820698
		 0.071176 0.82664299 -0.85921103 -0.020819001 0.51119798 -0.91770899 -0.128562 0.37587401
		 -0.77060097 0.251849 0.58544499 -0.885867 0.262128 0.38279 -0.917467 0.230683 0.324099
		 -0.917467 0.230683 0.324099 -0.78391999 0.158944 0.60017198 -0.77060097 0.251849
		 0.58544499 -0.94117898 0.164075 0.29539999 -0.78391999 0.158944 0.60017198 -0.917467
		 0.230683 0.324099 -0.77060097 0.251849 0.58544499 -0.78391999 0.158944 0.60017198
		 -0.33061901 -0.076925002 0.940624 -0.33061901 -0.076925002 0.940624 -0.73618299 -0.229166
		 0.63680297 -0.77060097 0.251849 0.58544499 -0.73243701 0.122782 0.66967201 -0.33061901
		 -0.076925002 0.940624 -0.78391999 0.158944 0.60017198 -0.78391999 0.158944 0.60017198
		 -0.94117898 0.164075 0.29539999 -0.73243701 0.122782 0.66967201 -0.80441499 0.45229501
		 0.38515601 -0.73243701 0.122782 0.66967201 -0.94117898 0.164075 0.29539999 -0.73243701
		 0.122782 0.66967201 -0.80441499 0.45229501 0.38515601 -0.634619 0.40448701 0.65851998
		 -0.634619 0.40448701 0.65851998 -0.34839299 0.163252 0.92302299 -0.73243701 0.122782
		 0.66967201 -0.33061901 -0.076925002 0.940624 -0.73243701 0.122782 0.66967201 -0.34839299
		 0.163252 0.92302299 -0.34839299 0.163252 0.92302299 -0.634619 0.40448701 0.65851998
		 -0.177755 0.27949899 0.94354802 -0.33061901 -0.076925002 0.940624 -0.34839299 0.163252
		 0.92302299 0.072561003 -0.002265 0.997361 0.072561003 -0.002265 0.997361 -0.144031
		 0.028188 0.98917198 -0.33061901 -0.076925002 0.940624 -0.73618299 -0.229166 0.63680297
		 -0.33061901 -0.076925002 0.940624 -0.144031 0.028188 0.98917198 0.058694001 -0.025382999
		 0.997953 -0.144031 0.028188 0.98917198 0.072561003 -0.002265 0.997361 0.072561003
		 -0.002265 0.997361 0.36441499 0.200148 0.90947402 0.058694001 -0.025382999 0.997953
		 0.108825 0.010708 0.994003 0.36441499 0.200148 0.90947402 0.072561003 -0.002265 0.997361
		 0.072561003 -0.002265 0.997361 -0.34839299 0.163252 0.92302299 0.108825 0.010708
		 0.994003 -0.177755 0.27949899 0.94354802 0.108825 0.010708 0.994003 -0.34839299 0.163252
		 0.92302299 0.108825 0.010708 0.994003 -0.177755 0.27949899 0.94354802 -0.034607001
		 0.032370999 0.99887699 -0.034607001 0.032370999 0.99887699 0.36441499 0.200148 0.90947402
		 0.108825 0.010708 0.994003 0.148807 0.155624 0.97654402 0.36441499 0.200148 0.90947402
		 -0.034607001 0.032370999 0.99887699 -0.034607001 0.032370999 0.99887699 0.30783999
		 -0.236644 0.92153901 0.148807 0.155624 0.97654402 0.71535599 0.093332998 0.69249898
		 0.148807 0.155624 0.97654402 0.30783999 -0.236644 0.92153901 0.30783999 -0.236644
		 0.92153901 0.576033 0.358228 0.73475099 0.71535599 0.093332998 0.69249898 0.985219
		 0.146235 0.089217;
	setAttr ".n[1162:1327]" -type "float3"  0.71535599 0.093332998 0.69249898 0.576033
		 0.358228 0.73475099 0.71535599 0.093332998 0.69249898 0.985219 0.146235 0.089217
		 0.93748301 0.34208 0.064089 0.93748301 0.34208 0.064089 0.53823698 0.43663299 0.720869
		 0.71535599 0.093332998 0.69249898 0.148807 0.155624 0.97654402 0.71535599 0.093332998
		 0.69249898 0.53823698 0.43663299 0.720869 0.53823698 0.43663299 0.720869 0.47722399
		 0.50772101 0.71727002 0.148807 0.155624 0.97654402 0.36441499 0.200148 0.90947402
		 0.148807 0.155624 0.97654402 0.47722399 0.50772101 0.71727002 0.47722399 0.50772101
		 0.71727002 0.802854 0.132569 0.58125001 0.36441499 0.200148 0.90947402 0.49758801
		 -0.222497 0.83839202 0.36441499 0.200148 0.90947402 0.802854 0.132569 0.58125001
		 0.058694001 -0.025382999 0.997953 0.36441499 0.200148 0.90947402 0.49758801 -0.222497
		 0.83839202 0.751894 0.62797898 0.200743 0.802854 0.132569 0.58125001 0.47722399 0.50772101
		 0.71727002 0.47722399 0.50772101 0.71727002 0.82948899 0.51265299 0.22166599 0.751894
		 0.62797898 0.200743 0.82948899 0.51265299 0.22166599 0.47722399 0.50772101 0.71727002
		 0.53823698 0.43663299 0.720869 0.53823698 0.43663299 0.720869 0.92228299 0.38293299
		 0.052506998 0.82948899 0.51265299 0.22166599 0.92228299 0.38293299 0.052506998 0.53823698
		 0.43663299 0.720869 0.93748301 0.34208 0.064089 0.93748301 0.34208 0.064089 0.72340602
		 0.320072 -0.61175001 0.92228299 0.38293299 0.052506998 0.74684203 0.169282 -0.643094
		 0.72340602 0.320072 -0.61175001 0.93748301 0.34208 0.064089 0.93748301 0.34208 0.064089
		 0.985219 0.146235 0.089217 0.74684203 0.169282 -0.643094 0.72340602 0.320072 -0.61175001
		 0.74684203 0.169282 -0.643094 0.320003 0.184223 -0.92933297 0.320003 0.184223 -0.92933297
		 0.31352901 0.320236 -0.893951 0.72340602 0.320072 -0.61175001 0.70573699 0.45320299
		 -0.54455799 0.72340602 0.320072 -0.61175001 0.31352901 0.320236 -0.893951 0.92228299
		 0.38293299 0.052506998 0.72340602 0.320072 -0.61175001 0.70573699 0.45320299 -0.54455799
		 0.70573699 0.45320299 -0.54455799 0.82948899 0.51265299 0.22166599 0.92228299 0.38293299
		 0.052506998 0.82948899 0.51265299 0.22166599 0.70573699 0.45320299 -0.54455799 0.64886802
		 0.53076601 -0.545214 0.64886802 0.53076601 -0.545214 0.751894 0.62797898 0.200743
		 0.82948899 0.51265299 0.22166599 0.31352901 0.320236 -0.893951 0.64886802 0.53076601
		 -0.545214 0.70573699 0.45320299 -0.54455799 0.552068 0.60738802 -0.57122701 0.751894
		 0.62797898 0.200743 0.64886802 0.53076601 -0.545214 0.64886802 0.53076601 -0.545214
		 0.241383 0.44819599 -0.86072898 0.552068 0.60738802 -0.57122701 0.31352901 0.320236
		 -0.893951 0.241383 0.44819599 -0.86072898 0.64886802 0.53076601 -0.545214 0.322896
		 0.38441601 -0.86484802 0.552068 0.60738802 -0.57122701 0.241383 0.44819599 -0.86072898
		 0.241383 0.44819599 -0.86072898 -0.046324 0.26590201 -0.96288598 0.322896 0.38441601
		 -0.86484802 -0.068190999 0.39824 -0.91474301 -0.046324 0.26590201 -0.96288598 0.241383
		 0.44819599 -0.86072898 0.241383 0.44819599 -0.86072898 3.9999999e-05 0.58765399 -0.80911303
		 -0.068190999 0.39824 -0.91474301 3.9999999e-05 0.58765399 -0.80911303 0.241383 0.44819599
		 -0.86072898 0.31352901 0.320236 -0.893951 0.31352901 0.320236 -0.893951 0.094153002
		 0.24048799 -0.966075 3.9999999e-05 0.58765399 -0.80911303 0.066059001 0.070448004
		 -0.99532598 0.094153002 0.24048799 -0.966075 0.31352901 0.320236 -0.893951 0.31352901
		 0.320236 -0.893951 0.320003 0.184223 -0.92933297 0.066059001 0.070448004 -0.99532598
		 0.094153002 0.24048799 -0.966075 0.066059001 0.070448004 -0.99532598 -0.120552 0.0095939999
		 -0.992661 -0.120552 0.0095939999 -0.992661 -0.134986 0.199782 -0.97049803 0.094153002
		 0.24048799 -0.966075 -0.103708 0.63503897 -0.76548702 0.094153002 0.24048799 -0.966075
		 -0.134986 0.199782 -0.97049803 3.9999999e-05 0.58765399 -0.80911303 0.094153002 0.24048799
		 -0.966075 -0.103708 0.63503897 -0.76548702 -0.103708 0.63503897 -0.76548702 0.0081890002
		 0.42794499 -0.903768 3.9999999e-05 0.58765399 -0.80911303 -0.068190999 0.39824 -0.91474301
		 3.9999999e-05 0.58765399 -0.80911303 0.0081890002 0.42794499 -0.903768 0.0081890002
		 0.42794499 -0.903768 -0.012973 0.291262 -0.95655501 -0.068190999 0.39824 -0.91474301
		 -0.046324 0.26590201 -0.96288598 -0.068190999 0.39824 -0.91474301 -0.012973 0.291262
		 -0.95655501 -0.099076003 0.35757899 -0.92861301 -0.012973 0.291262 -0.95655501 0.0081890002
		 0.42794499 -0.903768 0.0081890002 0.42794499 -0.903768 -0.17070299 0.28819501 -0.94223398
		 -0.099076003 0.35757899 -0.92861301 -0.17070299 0.28819501 -0.94223398 0.0081890002
		 0.42794499 -0.903768 -0.103708 0.63503897 -0.76548702 -0.103708 0.63503897 -0.76548702
		 -0.134986 0.199782 -0.97049803 -0.17070299 0.28819501 -0.94223398 -0.32662001 0.188033
		 -0.92626297 -0.17070299 0.28819501 -0.94223398 -0.134986 0.199782 -0.97049803 -0.134986
		 0.199782 -0.97049803 -0.120552 0.0095939999 -0.992661 -0.32662001 0.188033 -0.92626297
		 -0.17070299 0.28819501 -0.94223398 -0.32662001 0.188033 -0.92626297 -0.70893401 0.086680003
		 -0.69992799 -0.70893401 0.086680003 -0.69992799 -0.57619703 0.221204 -0.786807 -0.17070299
		 0.28819501 -0.94223398 -0.099076003 0.35757899 -0.92861301 -0.17070299 0.28819501
		 -0.94223398 -0.57619703 0.221204 -0.786807 -0.57619703 0.221204 -0.786807 -0.54128897
		 0.51452202 -0.66503602 -0.099076003 0.35757899 -0.92861301 -0.84943497 0.3876 -0.358087
		 -0.54128897 0.51452202 -0.66503602 -0.57619703 0.221204 -0.786807 -0.57619703 0.221204
		 -0.786807 -0.92478001 0.081964999 -0.37156901;
	setAttr ".n[1328:1493]" -type "float3"  -0.84943497 0.3876 -0.358087 -0.92478001
		 0.081964999 -0.37156901 -0.57619703 0.221204 -0.786807 -0.70893401 0.086680003 -0.69992799
		 -0.70893401 0.086680003 -0.69992799 -0.90874201 0.240142 -0.341351 -0.92478001 0.081964999
		 -0.37156901 -0.697411 0.45349199 -0.55494398 -0.90874201 0.240142 -0.341351 -0.70893401
		 0.086680003 -0.69992799 -0.70893401 0.086680003 -0.69992799 -0.32662001 0.188033
		 -0.92626297 -0.697411 0.45349199 -0.55494398 -0.81844199 0.503142 -0.27749199 -0.90874201
		 0.240142 -0.341351 -0.697411 0.45349199 -0.55494398 0.93098903 0.27057001 -0.24505299
		 0.93635201 0.351055 0.0021220001 0.94785899 0.316935 -0.033392999 0.94785899 0.316935
		 -0.033392999 0.91287899 0.26983401 -0.306337 0.93098903 0.27057001 -0.24505299 0.85708702
		 0.188069 -0.47961599 0.93098903 0.27057001 -0.24505299 0.91287899 0.26983401 -0.306337
		 0.91960198 0.095838003 -0.38098201 0.93098903 0.27057001 -0.24505299 0.85708702 0.188069
		 -0.47961599 0.060872 0.98927897 -0.132745 -0.079930998 0.92592901 -0.369142 -0.012283
		 0.91041899 -0.413506 -0.012283 0.91041899 -0.413506 0.102531 0.98673701 -0.125844
		 0.060872 0.98927897 -0.132745 0.115028 0.96017897 0.25460801 0.060872 0.98927897
		 -0.132745 0.102531 0.98673701 -0.125844 0.12534299 0.95685399 0.262146 0.060872 0.98927897
		 -0.132745 0.115028 0.96017897 0.25460801 0.37042001 0.91697401 0.148147 0.410788
		 0.89385599 0.17965201 0.30395901 0.94005197 -0.154634 0.30395901 0.94005197 -0.154634
		 0.30456299 0.93365699 -0.188483 0.37042001 0.91697401 0.148147 0.220797 0.89550698
		 -0.38641301 0.30456299 0.93365699 -0.188483 0.30395901 0.94005197 -0.154634 0.30395901
		 0.94005197 -0.154634 0.135067 0.93354797 -0.332032 0.220797 0.89550698 -0.38641301
		 -0.35729101 0.184328 0.91562402 -0.261186 0.19067401 0.94626898 -0.69271398 0.198909
		 0.69323999 -0.69271398 0.198909 0.69323999 -0.814035 0.236083 0.530671 -0.35729101
		 0.184328 0.91562402 -0.886958 0.348396 0.30319101 -0.35729101 0.184328 0.91562402
		 -0.814035 0.236083 0.530671 -0.814035 0.236083 0.530671 -0.98459101 0.088621996 -0.150757
		 -0.886958 0.348396 0.30319101 -0.98452598 0.095201999 -0.14712401 -0.98459101 0.088621996
		 -0.150757 -0.814035 0.236083 0.530671 -0.814035 0.236083 0.530671 -0.69271398 0.198909
		 0.69323999 -0.98452598 0.095201999 -0.14712401 -0.99016798 0.068595998 -0.121908
		 -0.98452598 0.095201999 -0.14712401 -0.69271398 0.198909 0.69323999 -0.98452598 0.095201999
		 -0.14712401 -0.99016798 0.068595998 -0.121908 -0.88010901 0.0071990001 -0.474718
		 -0.88010901 0.0071990001 -0.474718 -0.90613401 0.047823999 -0.420279 -0.98452598
		 0.095201999 -0.14712401 -0.98459101 0.088621996 -0.150757 -0.98452598 0.095201999
		 -0.14712401 -0.90613401 0.047823999 -0.420279 0.31786701 0.072639003 0.94534898 0.24589901
		 0.33100399 0.91102701 0.15057001 0.320757 0.93511701 0.15057001 0.320757 0.93511701
		 0.204693 0.029028 0.978396 0.31786701 0.072639003 0.94534898 0.34960401 -0.082988001
		 0.93321502 0.31786701 0.072639003 0.94534898 0.204693 0.029028 0.978396 -0.0053019999
		 0.30398801 0.95266098 0.204693 0.029028 0.978396 0.15057001 0.320757 0.93511701 0.210076
		 -0.053094 0.97624201 0.34960401 -0.082988001 0.93321502 0.204693 0.029028 0.978396
		 0.204693 0.029028 0.978396 -0.0053019999 0.30398801 0.95266098 -0.0078429999 0.026970999
		 0.999605 -0.0078429999 0.026970999 0.999605 0.210076 -0.053094 0.97624201 0.204693
		 0.029028 0.978396 0.210076 -0.053094 0.97624201 -0.0078429999 0.026970999 0.999605
		 -0.0072309999 -0.054030001 0.99851298 -0.0072309999 -0.054030001 0.99851298 0.15211099
		 0 0.98836398 0.210076 -0.053094 0.97624201 0.34960401 -0.082988001 0.93321502 0.210076
		 -0.053094 0.97624201 0.15211099 0 0.98836398 0.020230999 0 0.99979502 0.15211099
		 0 0.98836398 -0.0072309999 -0.054030001 0.99851298 -0.0072309999 -0.054030001 0.99851298
		 -0.10669 -0.078054003 0.99122399 0.020230999 0 0.99979502 -0.10669 -0.078054003 0.99122399
		 -0.0072309999 -0.054030001 0.99851298 -0.0078429999 0.026970999 0.999605 -0.0078429999
		 0.026970999 0.999605 -0.085312001 0.075652003 0.993478 -0.10669 -0.078054003 0.99122399
		 -0.085312001 0.075652003 0.993478 -0.0078429999 0.026970999 0.999605 -0.0053019999
		 0.30398801 0.95266098 -0.0053019999 0.30398801 0.95266098 -0.050893001 0.27840099
		 0.95911598 -0.085312001 0.075652003 0.993478 -0.028041 0.56462997 0.82486802 0.040867999
		 0.98755801 0.15185501 -0.035542 0.92091799 0.38813201 -0.035542 0.92091799 0.38813201
		 -0.083121002 0.56813502 0.81872702 -0.028041 0.56462997 0.82486802 -0.044555001 0.41018301
		 0.910914 -0.028041 0.56462997 0.82486802 -0.083121002 0.56813502 0.81872702 0.0045050001
		 0.35271901 0.935718 -0.028041 0.56462997 0.82486802 -0.044555001 0.41018301 0.910914
		 0.396727 0.338963 0.85306001 0.17036401 0.65352899 0.73747897 0.03407 0.89181602
		 0.45111299 0.03407 0.89181602 0.45111299 0.38852099 0.248285 0.88735902 0.396727
		 0.338963 0.85306001 0.44608501 -0.0035089999 0.89498401 0.396727 0.338963 0.85306001
		 0.38852099 0.248285 0.88735902 0.38852099 0.248285 0.88735902 0.40536699 -0.107613
		 0.90779799 0.44608501 -0.0035089999 0.89498401 0.383461 -0.077829003 0.92027199 0.44608501
		 -0.0035089999 0.89498401 0.40536699 -0.107613 0.90779799 0.40536699 -0.107613 0.90779799
		 0.34814599 -0.073351003 0.93456602 0.383461 -0.077829003 0.92027199 0.27958599 -0.051458001
		 0.95874101 0.383461 -0.077829003 0.92027199 0.34814599 -0.073351003 0.93456602 0.34814599
		 -0.073351003 0.93456602 0.231612 -0.085882001 0.96901 0.27958599 -0.051458001 0.95874101;
	setAttr ".n[1494:1659]" -type "float3"  0.053250998 0.40358299 0.91339201 0.20951299
		 0.88089597 0.42441401 -0.0056340001 0.80560303 0.59242803 -0.0056340001 0.80560303
		 0.59242803 -0.26378599 0.35421601 0.89718902 0.053250998 0.40358299 0.91339201 -0.064329997
		 -0.060005002 0.99612302 0.053250998 0.40358299 0.91339201 -0.26378599 0.35421601
		 0.89718902 -0.44442099 0.75019097 0.489595 -0.26378599 0.35421601 0.89718902 -0.0056340001
		 0.80560303 0.59242803 -0.36197501 -0.028626001 0.93174797 -0.064329997 -0.060005002
		 0.99612302 -0.26378599 0.35421601 0.89718902 -0.26378599 0.35421601 0.89718902 -0.44442099
		 0.75019097 0.489595 -0.66177601 0.464876 0.58816898 -0.66177601 0.464876 0.58816898
		 -0.36197501 -0.028626001 0.93174797 -0.26378599 0.35421601 0.89718902 -0.84968901
		 0.52518803 -0.046974 -0.66177601 0.464876 0.58816898 -0.44442099 0.75019097 0.489595
		 -0.44442099 0.75019097 0.489595 -0.608522 0.78497797 0.116234 -0.84968901 0.52518803
		 -0.046974 -0.62868297 0.56516099 -0.53418201 -0.84968901 0.52518803 -0.046974 -0.608522
		 0.78497797 0.116234 -0.84968901 0.52518803 -0.046974 -0.62868297 0.56516099 -0.53418201
		 -0.67902601 0.30338401 -0.66849202 -0.67902601 0.30338401 -0.66849202 -0.97859502
		 0.19667 -0.060603 -0.84968901 0.52518803 -0.046974 -0.66177601 0.464876 0.58816898
		 -0.84968901 0.52518803 -0.046974 -0.97859502 0.19667 -0.060603 -0.97859502 0.19667
		 -0.060603 -0.780312 0.176799 0.59987998 -0.66177601 0.464876 0.58816898 -0.36197501
		 -0.028626001 0.93174797 -0.66177601 0.464876 0.58816898 -0.780312 0.176799 0.59987998
		 -0.780312 0.176799 0.59987998 -0.315617 -0.067420997 0.94648802 -0.36197501 -0.028626001
		 0.93174797 -0.081201002 -0.16823199 0.98239702 -0.36197501 -0.028626001 0.93174797
		 -0.315617 -0.067420997 0.94648802 -0.064329997 -0.060005002 0.99612302 -0.36197501
		 -0.028626001 0.93174797 -0.081201002 -0.16823199 0.98239702 -0.37134999 0.0048850002
		 0.92848003 -0.081201002 -0.16823199 0.98239702 -0.315617 -0.067420997 0.94648802
		 -0.315617 -0.067420997 0.94648802 -0.73340398 0.104816 0.671664 -0.37134999 0.0048850002
		 0.92848003 -0.73340398 0.104816 0.671664 -0.315617 -0.067420997 0.94648802 -0.780312
		 0.176799 0.59987998 -0.780312 0.176799 0.59987998 -0.985277 0.149763 -0.082469001
		 -0.73340398 0.104816 0.671664 -0.985277 0.149763 -0.082469001 -0.780312 0.176799
		 0.59987998 -0.97859502 0.19667 -0.060603 -0.97859502 0.19667 -0.060603 -0.68479502
		 0.060773998 -0.726197 -0.985277 0.149763 -0.082469001 -0.68479502 0.060773998 -0.726197
		 -0.97859502 0.19667 -0.060603 -0.67902601 0.30338401 -0.66849202 -0.67902601 0.30338401
		 -0.66849202 -0.186754 0.23408601 -0.95411003 -0.68479502 0.060773998 -0.726197 -0.26473701
		 0.38257599 -0.88518298 -0.186754 0.23408601 -0.95411003 -0.67902601 0.30338401 -0.66849202
		 -0.67902601 0.30338401 -0.66849202 -0.62868297 0.56516099 -0.53418201 -0.26473701
		 0.38257599 -0.88518298 -0.186754 0.23408601 -0.95411003 -0.26473701 0.38257599 -0.88518298
		 -0.008595 0.21636599 -0.97627503 -0.008595 0.21636599 -0.97627503 0.00079700002 0.16887701
		 -0.98563701 -0.186754 0.23408601 -0.95411003 -0.223682 0.032078002 -0.97413403 -0.186754
		 0.23408601 -0.95411003 0.00079700002 0.16887701 -0.98563701 -0.68479502 0.060773998
		 -0.726197 -0.186754 0.23408601 -0.95411003 -0.223682 0.032078002 -0.97413403 -0.223682
		 0.032078002 -0.97413403 -0.63478899 -0.033971999 -0.77193803 -0.68479502 0.060773998
		 -0.726197 -0.95519203 0.114451 -0.27296501 -0.68479502 0.060773998 -0.726197 -0.63478899
		 -0.033971999 -0.77193803 -0.985277 0.149763 -0.082469001 -0.68479502 0.060773998
		 -0.726197 -0.95519203 0.114451 -0.27296501 -0.95519203 0.114451 -0.27296501 -0.793791
		 0.14447901 0.59078002 -0.985277 0.149763 -0.082469001 -0.73340398 0.104816 0.671664
		 -0.985277 0.149763 -0.082469001 -0.793791 0.14447901 0.59078002 -0.793791 0.14447901
		 0.59078002 -0.37134999 0.0048850002 0.92848003 -0.73340398 0.104816 0.671664 0.00079700002
		 0.16887701 -0.98563701 -0.008595 0.21636599 -0.97627503 0.089130998 0.232154 -0.96858698
		 0.089130998 0.232154 -0.96858698 0.080825001 0.18319599 -0.97974801 0.00079700002
		 0.16887701 -0.98563701 0.044500999 0.014517 -0.99890399 0.00079700002 0.16887701
		 -0.98563701 0.080825001 0.18319599 -0.97974801 -0.223682 0.032078002 -0.97413403
		 0.00079700002 0.16887701 -0.98563701 0.044500999 0.014517 -0.99890399 0.044500999
		 0.014517 -0.99890399 -0.240385 -0.057316002 -0.96898401 -0.223682 0.032078002 -0.97413403
		 -0.63478899 -0.033971999 -0.77193803 -0.223682 0.032078002 -0.97413403 -0.240385
		 -0.057316002 -0.96898401 0.092662998 -0.051754002 -0.99435198 -0.240385 -0.057316002
		 -0.96898401 0.044500999 0.014517 -0.99890399 0.044500999 0.014517 -0.99890399 0.148633
		 -0.13035101 -0.98026401 0.092662998 -0.051754002 -0.99435198 0.170141 -0.041127998
		 -0.98456103 0.148633 -0.13035101 -0.98026401 0.044500999 0.014517 -0.99890399 0.044500999
		 0.014517 -0.99890399 0.080825001 0.18319599 -0.97974801 0.170141 -0.041127998 -0.98456103
		 0.43289599 0.0043190001 -0.901434 0.148633 -0.13035101 -0.98026401 0.170141 -0.041127998
		 -0.98456103 0.170141 -0.041127998 -0.98456103 0.271368 0.190533 -0.94342798 0.43289599
		 0.0043190001 -0.901434 0.271368 0.190533 -0.94342798 0.170141 -0.041127998 -0.98456103
		 0.080825001 0.18319599 -0.97974801 0.080825001 0.18319599 -0.97974801 0.233776 0.26272699
		 -0.93612099 0.271368 0.190533 -0.94342798 0.233776 0.26272699 -0.93612099 0.080825001
		 0.18319599 -0.97974801 0.089130998 0.232154 -0.96858698 -0.44445801 0.82641703 -0.345678
		 -0.34906599 0.75524402 -0.55476099 -0.377967 0.61371797 -0.693174 -0.377967 0.61371797
		 -0.693174 -0.60807598 0.56257302 -0.560139 -0.44445801 0.82641703 -0.345678 -0.41666201
		 0.90393901 0.096367002;
	setAttr ".n[1660:1825]" -type "float3"  -0.44445801 0.82641703 -0.345678 -0.60807598
		 0.56257302 -0.560139 -0.60807598 0.56257302 -0.560139 -0.377967 0.61371797 -0.693174
		 -0.40416199 0.33176601 -0.85239899 -0.40416199 0.33176601 -0.85239899 -0.77172297
		 0.43929601 -0.459851 -0.60807598 0.56257302 -0.560139 -0.77261698 0.63392198 0.034724999
		 -0.60807598 0.56257302 -0.560139 -0.77172297 0.43929601 -0.459851 -0.41666201 0.90393901
		 0.096367002 -0.60807598 0.56257302 -0.560139 -0.77261698 0.63392198 0.034724999 -0.77261698
		 0.63392198 0.034724999 -0.12531 0.934156 0.33414099 -0.41666201 0.90393901 0.096367002
		 -0.12531 0.934156 0.33414099 -0.77261698 0.63392198 0.034724999 -0.54967397 0.55898201
		 0.62080503 -0.54967397 0.55898201 0.62080503 -0.019671001 0.90788198 0.41876301 -0.12531
		 0.934156 0.33414099 -0.25011501 0.64593297 0.72125798 -0.019671001 0.90788198 0.41876301
		 -0.54967397 0.55898201 0.62080503 -0.54967397 0.55898201 0.62080503 -0.420836 0.34515801
		 0.83890599 -0.25011501 0.64593297 0.72125798 -0.70213097 0.45216599 0.550053 -0.420836
		 0.34515801 0.83890599 -0.54967397 0.55898201 0.62080503 -0.54967397 0.55898201 0.62080503
		 -0.77261698 0.63392198 0.034724999 -0.70213097 0.45216599 0.550053 -0.84080201 0.53218102
		 0.099179 -0.70213097 0.45216599 0.550053 -0.77261698 0.63392198 0.034724999 -0.77261698
		 0.63392198 0.034724999 -0.77172297 0.43929601 -0.459851 -0.84080201 0.53218102 0.099179
		 0.512236 0.47212401 0.717435 0.428684 0.33872199 0.83755499 0.55157501 0.52912301
		 0.64482099 0.55157501 0.52912301 0.64482099 0.61266398 0.76122701 0.212547 0.512236
		 0.47212401 0.717435 0.61266398 0.76122701 0.212547 0.55157501 0.52912301 0.64482099
		 0.62545902 0.75600803 0.193011 0.62545902 0.75600803 0.193011 0.50654697 0.859375
		 -0.069889002 0.61266398 0.76122701 0.212547 0.45496801 0.88496798 -0.099173002 0.61266398
		 0.76122701 0.212547 0.50654697 0.859375 -0.069889002 0.50654697 0.859375 -0.069889002
		 0.451038 0.88774401 -0.092056997 0.45496801 0.88496798 -0.099173002 0.506899 0.86046702
		 -0.051483002 0.45496801 0.88496798 -0.099173002 0.451038 0.88774401 -0.092056997
		 0.451038 0.88774401 -0.092056997 0.73365599 0.67541403 -0.074593 0.506899 0.86046702
		 -0.051483002 0.78792399 0.60235202 -0.127859 0.506899 0.86046702 -0.051483002 0.73365599
		 0.67541403 -0.074593 0.73365599 0.67541403 -0.074593 0.85235 0.512106 -0.106051 0.78792399
		 0.60235202 -0.127859 0.74501902 0.66399598 0.063689999 0.59640503 0.72481102 0.344892
		 0.87835801 0.36206099 0.312089 0.87835801 0.36206099 0.312089 0.94502503 0.326996
		 -0.001222 0.74501902 0.66399598 0.063689999 0.63655603 0.75241101 -0.16933499 0.74501902
		 0.66399598 0.063689999 0.94502503 0.326996 -0.001222 0.94319499 0.19943 0.265726
		 0.94502503 0.326996 -0.001222 0.87835801 0.36206099 0.312089 0.90414202 0.34062701
		 -0.25787699 0.63655603 0.75241101 -0.16933499 0.94502503 0.326996 -0.001222 0.94502503
		 0.326996 -0.001222 0.94319499 0.19943 0.265726 0.97649598 0.211091 -0.043547001 0.93327302
		 0.212191 -0.28978801 0.90414202 0.34062701 -0.25787699 0.94502503 0.326996 -0.001222
		 0.94502503 0.326996 -0.001222 0.97649598 0.211091 -0.043547001 0.93327302 0.212191
		 -0.28978801 0.395836 0.40786001 -0.822779 0.39905199 0.56982899 -0.71836799 0.29105401
		 0.69694 -0.65540999 0.29105401 0.69694 -0.65540999 0.40783301 0.31387499 -0.85741198
		 0.395836 0.40786001 -0.822779 0.42601901 0.19058201 -0.884413 0.395836 0.40786001
		 -0.822779 0.40783301 0.31387499 -0.85741198 0.40783301 0.31387499 -0.85741198 0.44292101
		 0.167537 -0.880768 0.42601901 0.19058201 -0.884413 0.079264 0.00021300001 -0.99685401
		 0.079264 0.00021300001 -0.99685401 0.079264 0.00021300001 -0.99685401 0.02682 -0.117596
		 -0.99269903 0.038644001 -0.156895 -0.98685902 -0.0076279999 -0.160676 -0.98697799
		 -0.0076279999 -0.160676 -0.98697799 -0.124299 -0.167826 -0.97794902 0.02682 -0.117596
		 -0.99269903 0.038644001 -0.156895 -0.98685902 0.02682 -0.117596 -0.99269903 0.151636
		 -0.110604 -0.98222899 0.151636 -0.110604 -0.98222899 0.349976 -0.129448 -0.92777199
		 0.038644001 -0.156895 -0.98685902 0.040233999 -0.084187999 -0.995637 0.349976 -0.129448
		 -0.92777199 0.151636 -0.110604 -0.98222899 0.151636 -0.110604 -0.98222899 0.03717
		 -0.077106997 -0.99633002 0.040233999 -0.084187999 -0.995637 0.03717 -0.077106997
		 -0.99633002 0.151636 -0.110604 -0.98222899 0.02682 -0.117596 -0.99269903 0.02682
		 -0.117596 -0.99269903 -0.246861 -0.089988999 -0.96486402 0.03717 -0.077106997 -0.99633002
		 -0.249706 -0.125624 -0.96013802 -0.246861 -0.089988999 -0.96486402 0.02682 -0.117596
		 -0.99269903 0.02682 -0.117596 -0.99269903 -0.124299 -0.167826 -0.97794902 -0.249706
		 -0.125624 -0.96013802 -0.456422 -0.102722 -0.88381398 -0.249706 -0.125624 -0.96013802
		 -0.124299 -0.167826 -0.97794902 -0.249706 -0.125624 -0.96013802 -0.456422 -0.102722
		 -0.88381398 -0.49645799 -0.086421996 -0.86374801 -0.49645799 -0.086421996 -0.86374801
		 -0.246861 -0.089988999 -0.96486402 -0.249706 -0.125624 -0.96013802 -0.136896 0.22690199
		 -0.964248 -0.25105399 0.27620399 -0.92773002 -0.043609001 0.23727 -0.97046399 -0.043609001
		 0.23727 -0.97046399 -0.001219 0.19570801 -0.98066199 -0.136896 0.22690199 -0.964248
		 -0.38025001 0.388004 -0.83956099 -0.043609001 0.23727 -0.97046399 -0.25105399 0.27620399
		 -0.92773002 0.117757 0.19983301 -0.97272801 -0.001219 0.19570801 -0.98066199 -0.043609001
		 0.23727 -0.97046399 -0.043609001 0.23727 -0.97046399 0.082189001 0.234676 -0.968593
		 0.117757 0.19983301 -0.97272801 0.109354 0.32399499 -0.93971801 0.117757 0.19983301
		 -0.97272801;
	setAttr ".n[1826:1880]" -type "float3"  0.082189001 0.234676 -0.968593 0.16697399
		 0.52595001 -0.83396399 0.082189001 0.234676 -0.968593 -0.043609001 0.23727 -0.97046399
		 -0.043609001 0.23727 -0.97046399 -0.180243 0.49623901 -0.84926999 0.16697399 0.52595001
		 -0.83396399 -0.38025001 0.388004 -0.83956099 -0.180243 0.49623901 -0.84926999 -0.043609001
		 0.23727 -0.97046399 -0.24281999 0.80251497 0.54498398 0.16697399 0.52595001 -0.83396399
		 -0.180243 0.49623901 -0.84926999 -0.180243 0.49623901 -0.84926999 -0.38025001 0.388004
		 -0.83956099 -0.24281999 0.80251497 0.54498398 -0.47838199 0.79256999 0.378131 -0.24281999
		 0.80251497 0.54498398 -0.38025001 0.388004 -0.83956099 -0.24281999 0.80251497 0.54498398
		 -0.47838199 0.79256999 0.378131 -0.15439899 0.78348601 0.60192198 -0.15439899 0.78348601
		 0.60192198 0.090645 0.98947698 -0.112775 -0.24281999 0.80251497 0.54498398 0.16697399
		 0.52595001 -0.83396399 -0.24281999 0.80251497 0.54498398 0.090645 0.98947698 -0.112775
		 0.090645 0.98947698 -0.112775 0.087861001 0.52595299 -0.845963 0.16697399 0.52595001
		 -0.83396399 0.082189001 0.234676 -0.968593 0.16697399 0.52595001 -0.83396399 0.087861001
		 0.52595299 -0.845963 0.087861001 0.52595299 -0.845963 0.109354 0.32399499 -0.93971801
		 0.082189001 0.234676 -0.968593 0.15286399 0.57302701 -0.80515403 0.109354 0.32399499
		 -0.93971801 0.087861001 0.52595299 -0.845963 0.087861001 0.52595299 -0.845963 -0.25953799
		 0.93465197 -0.243036 0.15286399 0.57302701 -0.80515403 -0.25953799 0.93465197 -0.243036
		 0.087861001 0.52595299 -0.845963 0.090645 0.98947698 -0.112775 0.090645 0.98947698
		 -0.112775 -0.15439899 0.78348601 0.60192198 -0.25953799 0.93465197 -0.243036 -0.31463599
		 0.92820698 0.198585 -0.25953799 0.93465197 -0.243036 -0.15439899 0.78348601 0.60192198
		 0.15286399 0.57302701 -0.80515403 -0.25953799 0.93465197 -0.243036 -0.31463599 0.92820698
		 0.198585;
	setAttr -s 627 -ch 1881 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 2 0 1
		f 3 3 4 -3
		mu 0 3 1 3 2
		f 3 5 -5 6
		mu 0 3 4 2 3
		f 3 7 8 -7
		mu 0 3 3 5 4
		f 3 9 -9 10
		mu 0 3 7 4 5
		f 3 11 12 -11
		mu 0 3 5 6 7
		f 3 13 14 15
		mu 0 3 9 8 10
		f 3 16 17 -16
		mu 0 3 10 13 9
		f 3 -17 18 19
		mu 0 3 13 10 11
		f 3 20 21 -20
		mu 0 3 11 12 13
		f 3 22 23 24
		mu 0 3 26 14 16
		f 3 25 26 -25
		mu 0 3 16 23 26
		f 3 27 -26 28
		mu 0 3 15 23 16
		f 3 29 30 -29
		mu 0 3 16 17 15
		f 3 -30 31 32
		mu 0 3 17 16 20
		f 3 33 34 -33
		mu 0 3 20 19 17
		f 3 35 -34 36
		mu 0 3 18 19 20
		f 3 -28 37 38
		mu 0 3 23 15 21
		f 3 39 40 -39
		mu 0 3 21 22 23
		f 3 -40 41 42
		mu 0 3 22 21 29
		f 3 43 -41 44
		mu 0 3 28 23 22
		f 3 -43 45 -45
		mu 0 3 22 29 28
		f 3 -44 46 47
		mu 0 3 23 28 27
		f 3 48 -27 -48
		mu 0 3 27 26 23
		f 3 -49 49 50
		mu 0 3 26 27 24
		f 3 51 52 -51
		mu 0 3 24 25 26
		f 3 53 -50 54
		mu 0 3 35 24 27
		f 3 55 56 -55
		mu 0 3 27 34 35
		f 3 -56 -47 57
		mu 0 3 34 27 28
		f 3 58 59 -58
		mu 0 3 28 33 34
		f 3 60 -59 61
		mu 0 3 32 33 28
		f 3 -46 62 -62
		mu 0 3 28 29 32
		f 3 63 -63 64
		mu 0 3 30 32 29
		f 3 -64 65 66
		mu 0 3 32 30 31
		f 3 67 68 -67
		mu 0 3 31 42 32
		f 3 -61 -69 69
		mu 0 3 33 32 42
		f 3 70 71 -70
		mu 0 3 42 41 33
		f 3 72 -72 73
		mu 0 3 40 33 41
		f 3 -60 -73 74
		mu 0 3 34 33 40
		f 3 75 76 -75
		mu 0 3 40 39 34
		f 3 -57 -77 77
		mu 0 3 35 34 39
		f 3 78 79 -78
		mu 0 3 39 38 35
		f 3 80 -80 81
		mu 0 3 37 35 38
		f 3 -54 -81 82
		mu 0 3 24 35 37
		f 3 83 84 -83
		mu 0 3 37 36 24
		f 3 85 -84 86
		mu 0 3 65 36 37
		f 3 87 88 -87
		mu 0 3 37 63 65
		f 3 -88 -82 89
		mu 0 3 63 37 38
		f 3 90 91 -90
		mu 0 3 38 62 63
		f 3 92 -91 93
		mu 0 3 51 62 38
		f 3 -79 94 -94
		mu 0 3 38 39 51
		f 3 95 -95 96
		mu 0 3 50 51 39
		f 3 97 98 -97
		mu 0 3 39 47 50
		f 3 -98 -76 99
		mu 0 3 47 39 40
		f 3 100 101 -100
		mu 0 3 40 45 47
		f 3 -101 -74 102
		mu 0 3 45 40 41
		f 3 103 104 -103
		mu 0 3 41 44 45
		f 3 105 -104 106
		mu 0 3 43 44 41
		f 3 -71 107 -107
		mu 0 3 41 42 43
		f 3 108 -108 109
		mu 0 3 84 43 42
		f 3 110 111 -110
		mu 0 3 42 87 84
		f 3 -109 112 113
		mu 0 3 43 84 83
		f 3 114 115 -114
		mu 0 3 83 80 43
		f 3 -106 -116 116
		mu 0 3 44 43 80
		f 3 117 118 -117
		mu 0 3 80 79 44
		f 3 119 -119 120
		mu 0 3 67 44 79
		f 3 -105 -120 121
		mu 0 3 45 44 67
		f 3 122 123 -122
		mu 0 3 67 66 45
		f 3 -102 -124 124
		mu 0 3 47 45 66
		f 3 125 126 -125
		mu 0 3 66 46 47
		f 3 127 -127 128
		mu 0 3 48 47 46
		f 3 -99 -128 129
		mu 0 3 50 47 48
		f 3 130 131 -130
		mu 0 3 48 49 50
		f 3 132 -132 133
		mu 0 3 53 50 49
		f 3 -133 134 135
		mu 0 3 50 53 52
		f 3 136 -96 -136
		mu 0 3 52 51 50
		f 3 -137 137 138
		mu 0 3 51 52 56
		f 3 139 -93 -139
		mu 0 3 56 62 51
		f 3 140 -138 141
		mu 0 3 54 56 52
		f 3 -135 142 -142
		mu 0 3 52 53 54
		f 3 -141 143 144
		mu 0 3 56 54 55
		f 3 145 146 -145
		mu 0 3 55 59 56
		f 3 147 -147 148
		mu 0 3 58 56 59
		f 3 -140 -148 149
		mu 0 3 62 56 58
		f 3 150 -149 151
		mu 0 3 57 58 59
		f 3 152 -150 153
		mu 0 3 61 62 58
		f 3 154 155 -154
		mu 0 3 58 60 61
		f 3 -92 -153 156
		mu 0 3 63 62 61
		f 3 157 -89 -157
		mu 0 3 61 65 63
		f 3 158 -158 159
		mu 0 3 64 65 61
		f 3 160 -126 161
		mu 0 3 69 46 66
		f 3 162 163 -162
		mu 0 3 66 70 69
		f 3 -163 -123 164
		mu 0 3 70 66 67
		f 3 165 166 -165
		mu 0 3 67 68 70
		f 3 -166 -121 167
		mu 0 3 68 67 79
		f 3 168 169 -168
		mu 0 3 79 78 68
		f 3 170 -170 171
		mu 0 3 76 68 78
		f 3 -167 -171 172
		mu 0 3 70 68 76
		f 3 173 174 -173
		mu 0 3 76 73 70
		f 3 175 -175 176
		mu 0 3 72 70 73
		f 3 -164 -176 177
		mu 0 3 69 70 72
		f 3 178 -177 179
		mu 0 3 71 72 73
		f 3 180 -174 181
		mu 0 3 74 73 76
		f 3 182 -172 183
		mu 0 3 75 76 78
		f 3 184 185 186
		mu 0 3 80 77 78
		f 3 -169 -118 -187
		mu 0 3 78 79 80
		f 3 187 -115 188
		mu 0 3 81 80 83
		f 3 189 190 -189
		mu 0 3 83 90 81
		f 3 191 -190 192
		mu 0 3 82 90 83
		f 3 193 194 -193
		mu 0 3 83 86 82
		f 3 -194 -113 195
		mu 0 3 86 83 84
		f 3 -112 196 -196
		mu 0 3 84 87 86
		f 3 197 -197 198
		mu 0 3 85 86 87
		f 3 -192 199 200
		mu 0 3 90 82 88
		f 3 201 202 -201
		mu 0 3 88 89 90
		f 3 203 204 205
		mu 0 3 92 91 93
		f 3 206 207 -206
		mu 0 3 93 98 92
		f 3 -207 208 209
		mu 0 3 98 93 100
		f 3 210 211 -210
		mu 0 3 100 94 98
		f 3 212 -212 213
		mu 0 3 95 98 94
		f 3 -213 214 215
		mu 0 3 98 95 96
		f 3 216 217 -216
		mu 0 3 96 97 98
		f 3 218 -211 219
		mu 0 3 99 94 100
		f 3 220 221 -220
		mu 0 3 100 101 99
		f 3 222 -222 223
		mu 0 3 102 99 101
		f 3 224 -221 225
		mu 0 3 110 101 100
		f 3 226 227 -226
		mu 0 3 100 111 110
		f 3 -225 228 229
		mu 0 3 101 110 106
		f 3 230 231 -230
		mu 0 3 106 105 101
		f 3 -224 -232 232
		mu 0 3 102 101 105
		f 3 233 234 -233
		mu 0 3 105 103 102
		f 3 235 -234 236
		mu 0 3 104 103 105
		f 3 237 238 -237
		mu 0 3 105 114 104
		f 3 239 -238 240
		mu 0 3 120 114 105
		f 3 241 242 -241
		mu 0 3 105 122 120
		f 3 -242 -231 243
		mu 0 3 122 105 106
		f 3 244 245 -244
		mu 0 3 106 107 122
		f 3 -245 -229 246
		mu 0 3 107 106 110
		f 3 247 248 -247
		mu 0 3 110 109 107
		f 3 249 -248 250
		mu 0 3 108 109 110
		f 3 251 -228 252
		mu 0 3 113 110 111
		f 3 253 254 -253
		mu 0 3 111 112 113
		f 3 -240 255 256
		mu 0 3 114 120 119
		f 3 257 258 -257
		mu 0 3 119 115 114
		f 3 259 -258 260
		mu 0 3 117 115 119
		f 3 261 262 -261
		mu 0 3 119 118 117
		f 3 263 -263 264
		mu 0 3 131 117 118
		f 3 265 -264 266
		mu 0 3 116 117 131
		f 3 267 -265 268
		mu 0 3 132 131 118
		f 3 269 270 -269
		mu 0 3 118 130 132
		f 3 -270 -262 271
		mu 0 3 130 118 119
		f 3 272 273 -272
		mu 0 3 119 129 130
		f 3 274 -273 275
		mu 0 3 128 129 119
		f 3 -256 276 -276
		mu 0 3 119 120 128
		f 3 277 -277 278
		mu 0 3 121 128 120
		f 3 -243 279 -279
		mu 0 3 120 122 121
		f 3 280 -280 281
		mu 0 3 127 121 122
		f 3 -278 -281 282
		mu 0 3 128 121 127
		f 3 283 -282 284
		mu 0 3 125 127 122
		f 3 285 286 -285
		mu 0 3 122 124 125
		f 3 -286 -246 287
		mu 0 3 124 122 107
		f 3 288 289 -288
		mu 0 3 107 123 124
		f 3 290 -290 291
		mu 0 3 222 124 123
		f 3 -291 292 293
		mu 0 3 124 222 126
		f 3 294 -287 -294
		mu 0 3 126 125 124
		f 3 -284 -295 295
		mu 0 3 127 125 126
		f 3 296 297 -296
		mu 0 3 126 146 127
		f 3 298 -298 299
		mu 0 3 144 127 146
		f 3 -283 -299 300
		mu 0 3 128 127 144
		f 3 301 302 -301
		mu 0 3 144 143 128
		f 3 303 -303 304
		mu 0 3 141 128 143
		f 3 -275 -304 305
		mu 0 3 129 128 141
		f 3 306 307 -306
		mu 0 3 141 140 129
		f 3 -274 -308 308
		mu 0 3 130 129 140
		f 3 309 310 -309
		mu 0 3 140 137 130
		f 3 311 -311 312
		mu 0 3 136 130 137
		f 3 -271 -312 313
		mu 0 3 132 130 136
		f 3 314 315 -314
		mu 0 3 136 133 132
		f 3 -268 -316 316
		mu 0 3 131 132 133
		f 3 317 -315 318
		mu 0 3 134 133 136
		f 3 319 320 -319
		mu 0 3 136 135 134
		f 3 321 -320 322
		mu 0 3 154 135 136
		f 3 -313 323 -323
		mu 0 3 136 137 154
		f 3 324 -324 325
		mu 0 3 153 154 137
		f 3 -310 326 -326
		mu 0 3 137 140 153
		f 3 327 -327 328
		mu 0 3 138 153 140
		f 3 329 330 -329
		mu 0 3 140 139 138
		f 3 331 -330 -307
		mu 0 3 141 139 140
		f 3 332 -305 333
		mu 0 3 142 141 143
		f 3 334 335 -334
		mu 0 3 143 151 142
		f 3 336 -335 337
		mu 0 3 145 151 143
		f 3 -302 338 -338
		mu 0 3 143 144 145
		f 3 339 -339 -300
		mu 0 3 146 145 144
		f 3 -340 340 341
		mu 0 3 145 146 147
		f 3 342 -337 -342
		mu 0 3 147 151 145
		f 3 -341 343 344
		mu 0 3 147 146 148
		f 3 345 -343 -345
		mu 0 3 148 151 147
		f 3 -346 346 347
		mu 0 3 151 148 149
		f 3 348 349 -348
		mu 0 3 149 150 151
		f 3 350 -328 351
		mu 0 3 152 153 138
		f 3 -325 352 353
		mu 0 3 154 153 155
		f 3 354 355 356
		mu 0 3 156 157 158
		f 3 357 358 359
		mu 0 3 160 159 161
		f 3 360 361 -360
		mu 0 3 161 164 160
		f 3 -361 362 363
		mu 0 3 164 161 162
		f 3 364 365 -364
		mu 0 3 162 163 164
		f 3 366 367 368
		mu 0 3 166 165 168
		f 3 369 370 -369
		mu 0 3 168 167 166
		f 3 371 -370 372
		mu 0 3 170 167 168
		f 3 373 374 -373
		mu 0 3 168 169 170
		f 3 375 376 377
		mu 0 3 175 171 172
		f 3 378 379 -378
		mu 0 3 172 177 175
		f 3 -379 380 381
		mu 0 3 177 172 178
		f 3 -380 382 383
		mu 0 3 175 177 173
		f 3 384 385 -384
		mu 0 3 173 176 175
		f 3 386 -386 387
		mu 0 3 174 175 176
		f 3 388 -383 389
		mu 0 3 182 173 177
		f 3 390 391 -390
		mu 0 3 177 183 182
		f 3 392 -391 393
		mu 0 3 181 183 177
		f 3 -382 394 -394
		mu 0 3 177 178 181
		f 3 395 -395 396
		mu 0 3 180 181 178
		f 3 397 398 -397
		mu 0 3 178 179 180
		f 3 399 -399 400
		mu 0 3 194 180 179
		f 3 -400 401 402
		mu 0 3 180 194 193
		f 3 403 404 -403
		mu 0 3 193 192 180
		f 3 -396 -405 405
		mu 0 3 181 180 192
		f 3 406 407 -406
		mu 0 3 192 191 181
		f 3 408 -408 409
		mu 0 3 189 181 191
		f 3 -393 -409 410
		mu 0 3 183 181 189
		f 3 411 412 -411
		mu 0 3 189 184 183
		f 3 413 -413 414
		mu 0 3 187 183 184
		f 3 -392 -414 415
		mu 0 3 182 183 187
		f 3 -415 416 417
		mu 0 3 187 184 185
		f 3 418 419 -418
		mu 0 3 185 186 187
		f 3 420 -412 421
		mu 0 3 188 184 189
		f 3 422 423 -422
		mu 0 3 189 190 188
		f 3 -423 -410 424
		mu 0 3 190 189 191
		f 3 425 426 -425
		mu 0 3 191 198 190
		f 3 427 -426 428
		mu 0 3 199 198 191
		f 3 -407 429 -429
		mu 0 3 191 192 199
		f 3 430 -430 431
		mu 0 3 197 199 192
		f 3 -404 432 -432
		mu 0 3 192 193 197
		f 3 433 -433 434
		mu 0 3 196 197 193
		f 3 435 436 -435
		mu 0 3 193 195 196
		f 3 -436 -402 437
		mu 0 3 195 193 194
		f 3 438 -437 439
		mu 0 3 214 196 195
		f 3 440 441 -440
		mu 0 3 195 216 214
		f 3 -439 442 443
		mu 0 3 196 214 210
		f 3 444 445 -444
		mu 0 3 210 202 196
		f 3 -434 -446 446
		mu 0 3 197 196 202
		f 3 447 448 -447
		mu 0 3 202 201 197
		f 3 -431 -449 449
		mu 0 3 199 197 201
		f 3 450 451 -450
		mu 0 3 201 200 199
		f 3 -428 -452 452
		mu 0 3 198 199 200
		f 3 453 -451 454
		mu 0 3 203 200 201
		f 3 455 456 -455
		mu 0 3 201 204 203
		f 3 -456 -448 457
		mu 0 3 204 201 202
		f 3 458 459 -458
		mu 0 3 202 209 204
		f 3 460 -459 -445
		mu 0 3 210 209 202
		f 3 -460 461 462
		mu 0 3 204 209 208
		f 3 463 464 -463
		mu 0 3 208 205 204
		f 3 -457 -465 465
		mu 0 3 203 204 205
		f 3 466 -464 467
		mu 0 3 206 205 208
		f 3 -462 468 469
		mu 0 3 208 209 212
		f 3 470 471 -470
		mu 0 3 212 207 208
		f 3 -469 -461 472
		mu 0 3 212 209 210
		f 3 473 474 -473
		mu 0 3 210 211 212
		f 3 475 -443 476
		mu 0 3 213 210 214
		f 3 477 -442 478
		mu 0 3 215 214 216
		f 3 479 480 481
		mu 0 3 217 218 219
		f 3 482 -293 483
		mu 0 3 220 126 222
		f 3 484 485 -484
		mu 0 3 222 223 220
		f 3 486 -486 487
		mu 0 3 226 220 223
		f 3 488 -485 489
		mu 0 3 221 223 222
		f 3 -488 490 491
		mu 0 3 226 223 224
		f 3 492 493 -492
		mu 0 3 224 225 226
		f 3 494 495 496
		mu 0 3 228 227 229
		f 3 497 498 -497
		mu 0 3 229 230 228
		f 3 499 -499 500
		mu 0 3 236 228 230
		f 3 501 -498 502
		mu 0 3 231 230 229
		f 3 503 -501 504
		mu 0 3 237 236 230
		f 3 505 506 -505
		mu 0 3 230 235 237
		f 3 -506 -502 507
		mu 0 3 235 230 231
		f 3 508 509 -508
		mu 0 3 231 234 235
		f 3 -509 510 511
		mu 0 3 234 231 232
		f 3 512 513 -512
		mu 0 3 232 233 234
		f 3 514 -514 515
		mu 0 3 245 234 233
		f 3 516 517 -516
		mu 0 3 233 246 245
		f 3 -515 518 519
		mu 0 3 234 245 244
		f 3 520 521 -520
		mu 0 3 244 242 234
		f 3 -510 -522 522
		mu 0 3 235 234 242
		f 3 523 524 -523
		mu 0 3 242 240 235
		f 3 -507 -525 525
		mu 0 3 237 235 240
		f 3 526 527 -526
		mu 0 3 240 239 237
		f 3 528 -528 529
		mu 0 3 238 237 239
		f 3 -504 -529 530
		mu 0 3 236 237 238
		f 3 531 -530 532
		mu 0 3 285 238 239
		f 3 533 534 -533
		mu 0 3 239 286 285
		f 3 535 -534 536
		mu 0 3 241 286 239
		f 3 -527 537 -537
		mu 0 3 239 240 241
		f 3 538 -538 -524
		mu 0 3 242 241 240
		f 3 539 -539 540
		mu 0 3 243 241 242
		f 3 -521 541 -541
		mu 0 3 242 244 243
		f 3 542 -542 543
		mu 0 3 249 243 244
		f 3 544 545 -544
		mu 0 3 244 248 249
		f 3 546 -545 547
		mu 0 3 247 248 244
		f 3 -519 548 -548
		mu 0 3 244 245 247
		f 3 549 -549 -518
		mu 0 3 246 247 245
		f 3 -550 550 551
		mu 0 3 247 246 253
		f 3 552 553 -552
		mu 0 3 253 252 247
		f 3 554 -554 555
		mu 0 3 251 247 252
		f 3 -547 -555 556
		mu 0 3 248 247 251
		f 3 557 558 -557
		mu 0 3 251 250 248
		f 3 -546 -559 559
		mu 0 3 249 248 250
		f 3 560 561 -560
		mu 0 3 250 257 249
		f 3 562 -561 563
		mu 0 3 258 257 250
		f 3 564 565 -564
		mu 0 3 250 256 258
		f 3 -565 -558 566
		mu 0 3 256 250 251
		f 3 567 568 -567
		mu 0 3 251 255 256
		f 3 -568 -556 569
		mu 0 3 255 251 252
		f 3 570 571 -570
		mu 0 3 252 254 255
		f 3 -571 -553 572
		mu 0 3 254 252 253
		f 3 -572 573 574
		mu 0 3 255 254 269
		f 3 575 576 -575
		mu 0 3 269 268 255
		f 3 577 -577 578
		mu 0 3 267 255 268
		f 3 -569 -578 579
		mu 0 3 256 255 267
		f 3 580 581 -580
		mu 0 3 267 266 256
		f 3 -566 -582 582
		mu 0 3 258 256 266
		f 3 583 584 -583
		mu 0 3 266 265 258
		f 3 585 -585 586
		mu 0 3 259 258 265
		f 3 -563 -586 587
		mu 0 3 257 258 259
		f 3 588 -587 589
		mu 0 3 260 259 265
		f 3 590 591 -590
		mu 0 3 265 264 260
		f 3 592 -592 593
		mu 0 3 262 260 264
		f 3 594 595 -594
		mu 0 3 264 261 262
		f 3 -591 596 597
		mu 0 3 264 265 278
		f 3 598 599 -598
		mu 0 3 278 263 264
		f 3 600 -597 601
		mu 0 3 275 278 265
		f 3 -584 602 -602
		mu 0 3 265 266 275
		f 3 603 -603 604
		mu 0 3 272 275 266
		f 3 -581 605 -605
		mu 0 3 266 267 272
		f 3 606 -606 607
		mu 0 3 271 272 267
		f 3 -579 608 -608
		mu 0 3 267 268 271
		f 3 609 -609 610
		mu 0 3 270 271 268
		f 3 -576 611 -611
		mu 0 3 268 269 270
		f 3 612 -612 613
		mu 0 3 280 270 269
		f 3 -613 614 615
		mu 0 3 270 280 283
		f 3 616 -610 -616
		mu 0 3 283 271 270
		f 3 -617 617 618
		mu 0 3 271 283 273
		f 3 619 -607 -619
		mu 0 3 273 272 271
		f 3 -620 620 621
		mu 0 3 272 273 276
		f 3 622 -604 -622
		mu 0 3 276 275 272
		f 3 623 -621 624
		mu 0 3 274 276 273
		f 3 -618 625 -625
		mu 0 3 273 283 274
		f 3 -623 626 627
		mu 0 3 275 276 277
		f 3 -601 628 629
		mu 0 3 278 275 279
		f 3 -615 630 631
		mu 0 3 283 280 281
		f 3 632 633 -632
		mu 0 3 281 282 283
		f 3 -536 634 635
		mu 0 3 286 241 284
		f 3 636 637 -636
		mu 0 3 284 287 286
		f 3 -535 -638 638
		mu 0 3 285 286 287
		f 3 639 640 641
		mu 0 3 290 288 289
		f 3 642 643 -642
		mu 0 3 289 291 290
		f 3 644 -643 645
		mu 0 3 292 291 289
		f 3 -644 646 647
		mu 0 3 290 291 297
		f 3 648 649 -648
		mu 0 3 297 296 290
		f 3 650 -647 651
		mu 0 3 294 297 291
		f 3 -645 652 -652
		mu 0 3 291 292 294
		f 3 653 -653 654
		mu 0 3 293 294 292
		f 3 -654 655 656
		mu 0 3 294 293 295
		f 3 657 658 -657
		mu 0 3 295 300 294
		f 3 -651 -659 659
		mu 0 3 297 294 300
		f 3 -658 660 661
		mu 0 3 300 295 301
		f 3 -660 662 663
		mu 0 3 297 300 299
		f 3 664 665 -664
		mu 0 3 299 298 297
		f 3 -649 -666 666
		mu 0 3 296 297 298
		f 3 667 -665 668
		mu 0 3 309 298 299
		f 3 669 670 -669
		mu 0 3 299 310 309
		f 3 671 -670 672
		mu 0 3 302 310 299
		f 3 -663 673 -673
		mu 0 3 299 300 302
		f 3 674 -674 -662
		mu 0 3 301 302 300
		f 3 -675 675 676
		mu 0 3 302 301 303
		f 3 677 -672 -677
		mu 0 3 303 310 302
		f 3 678 -678 679
		mu 0 3 307 310 303
		f 3 680 681 -680
		mu 0 3 303 304 307
		f 3 682 -682 683
		mu 0 3 306 307 304
		f 3 684 685 -684
		mu 0 3 304 305 306
		f 3 686 -686 687
		mu 0 3 315 306 305
		f 3 -687 688 689
		mu 0 3 306 315 314
		f 3 690 691 -690
		mu 0 3 314 313 306
		f 3 -683 -692 692
		mu 0 3 307 306 313
		f 3 693 694 -693
		mu 0 3 313 312 307
		f 3 -679 -695 695
		mu 0 3 310 307 312
		f 3 696 697 -696
		mu 0 3 312 308 310
		f 3 698 -698 699
		mu 0 3 311 310 308
		f 3 -671 -699 700
		mu 0 3 309 310 311
		f 3 701 -697 702
		mu 0 3 321 308 312
		f 3 703 704 -703
		mu 0 3 312 319 321
		f 3 -704 -694 705
		mu 0 3 319 312 313
		f 3 706 707 -706
		mu 0 3 313 318 319
		f 3 -707 -691 708
		mu 0 3 318 313 314
		f 3 709 710 -709
		mu 0 3 314 317 318
		f 3 711 -710 712
		mu 0 3 316 317 314
		f 3 -689 713 -713
		mu 0 3 314 315 316
		f 3 -712 714 715
		mu 0 3 317 316 327
		f 3 716 717 -716
		mu 0 3 327 326 317
		f 3 718 -718 719
		mu 0 3 320 317 326
		f 3 -711 -719 720
		mu 0 3 318 317 320
		f 3 721 -708 -721
		mu 0 3 320 319 318
		f 3 -722 722 723
		mu 0 3 319 320 322
		f 3 724 -705 -724
		mu 0 3 322 321 319
		f 3 725 -723 -720
		mu 0 3 326 322 320
		f 3 726 -725 727
		mu 0 3 323 321 322
		f 3 728 729 -728
		mu 0 3 322 325 323
		f 3 730 -729 -726
		mu 0 3 326 325 322
		f 3 731 -730 732
		mu 0 3 324 323 325
		f 3 733 734 -733
		mu 0 3 325 331 324
		f 3 735 -734 736
		mu 0 3 332 331 325
		f 3 737 738 -737
		mu 0 3 325 330 332
		f 3 -738 -731 739
		mu 0 3 330 325 326
		f 3 740 741 -740
		mu 0 3 326 329 330
		f 3 742 -741 743
		mu 0 3 328 329 326
		f 3 -717 744 -744
		mu 0 3 326 327 328
		f 3 -743 745 746
		mu 0 3 329 328 337
		f 3 747 748 -747
		mu 0 3 337 336 329
		f 3 749 -749 750
		mu 0 3 335 329 336
		f 3 -742 -750 751
		mu 0 3 330 329 335
		f 3 752 753 -752
		mu 0 3 335 334 330
		f 3 -739 -754 754
		mu 0 3 332 330 334
		f 3 755 756 -755
		mu 0 3 334 333 332
		f 3 -736 -757 757
		mu 0 3 331 332 333
		f 3 758 -756 759
		mu 0 3 339 333 334
		f 3 760 761 -760
		mu 0 3 334 338 339
		f 3 -761 -753 762
		mu 0 3 338 334 335
		f 3 -751 763 -763
		mu 0 3 335 336 338
		f 3 764 -764 765
		mu 0 3 345 338 336
		f 3 -748 766 -766
		mu 0 3 336 337 345
		f 3 -765 767 768
		mu 0 3 338 345 344
		f 3 769 770 -769
		mu 0 3 344 342 338
		f 3 -762 -771 771
		mu 0 3 339 338 342
		f 3 772 773 -772
		mu 0 3 342 340 339
		f 3 774 -773 775
		mu 0 3 341 340 342
		f 3 776 777 -776
		mu 0 3 342 343 341
		f 3 -777 -770 778
		mu 0 3 343 342 344
		f 3 779 780 -779
		mu 0 3 344 348 343
		f 3 781 -780 782
		mu 0 3 346 348 344
		f 3 -768 783 -783
		mu 0 3 344 345 346
		f 3 784 -782 785
		mu 0 3 347 348 346
		f 3 786 787 788
		mu 0 3 353 349 350
		f 3 789 790 -789
		mu 0 3 350 351 353
		f 3 791 -791 792
		mu 0 3 354 353 351
		f 3 793 -792 794
		mu 0 3 352 353 354
		f 3 795 796 797
		mu 0 3 359 355 356
		f 3 798 799 -798
		mu 0 3 356 357 359
		f 3 800 -800 801
		mu 0 3 360 359 357
		f 3 802 -801 803
		mu 0 3 358 359 360
		f 3 804 805 806
		mu 0 3 362 361 364
		f 3 807 808 -807
		mu 0 3 364 363 362
		f 3 809 -808 810
		mu 0 3 366 363 364
		f 3 811 812 -811
		mu 0 3 364 365 366
		f 3 813 814 815
		mu 0 3 368 367 371
		f 3 816 817 -816
		mu 0 3 371 370 368
		f 3 818 -818 819
		mu 0 3 369 368 370
		f 3 820 821 -820
		mu 0 3 370 374 369
		f 3 822 -821 823
		mu 0 3 375 374 370
		f 3 -817 824 -824
		mu 0 3 370 371 375
		f 3 825 -825 826
		mu 0 3 372 375 371
		f 3 -826 827 828
		mu 0 3 375 372 373
		f 3 829 830 -829
		mu 0 3 373 376 375
		f 3 -823 -831 831
		mu 0 3 374 375 376
		f 3 832 833 834
		mu 0 3 378 377 379
		f 3 835 836 -835
		mu 0 3 379 380 378
		f 3 837 -837 838
		mu 0 3 381 378 380
		f 3 839 -836 840
		mu 0 3 388 380 379
		f 3 841 -839 842
		mu 0 3 382 381 380
		f 3 -840 843 844
		mu 0 3 380 388 387
		f 3 845 -843 -845
		mu 0 3 387 382 380
		f 3 -846 846 847
		mu 0 3 382 387 385
		f 3 848 849 -848
		mu 0 3 385 383 382
		f 3 -842 -850 850
		mu 0 3 381 382 383
		f 3 851 -849 852
		mu 0 3 384 383 385
		f 3 853 854 -853
		mu 0 3 385 386 384
		f 3 -854 -847 855
		mu 0 3 386 385 387
		f 3 856 857 -856
		mu 0 3 387 390 386
		f 3 -857 -844 858
		mu 0 3 390 387 388
		f 3 859 860 -859
		mu 0 3 388 389 390
		f 3 861 862 863
		mu 0 3 395 391 392
		f 3 864 865 -864
		mu 0 3 392 393 395
		f 3 866 -866 867
		mu 0 3 396 395 393
		f 3 868 -867 869
		mu 0 3 394 395 396
		f 3 870 871 872
		mu 0 3 399 397 398
		f 3 873 874 -873
		mu 0 3 398 400 399
		f 3 875 -875 876
		mu 0 3 401 399 400
		f 3 877 878 -877
		mu 0 3 400 402 401
		f 3 879 -879 880
		mu 0 3 403 401 402
		f 3 881 882 -881
		mu 0 3 402 404 403
		f 3 883 -883 884
		mu 0 3 406 403 404
		f 3 885 886 -885
		mu 0 3 404 405 406
		f 3 887 888 889
		mu 0 3 408 407 409
		f 3 890 891 -890
		mu 0 3 409 410 408;
	setAttr ".fc[500:626]"
		f 3 892 -892 893
		mu 0 3 415 408 410
		f 3 894 -891 895
		mu 0 3 411 410 409
		f 3 896 -894 897
		mu 0 3 416 415 410
		f 3 -895 898 899
		mu 0 3 410 411 414
		f 3 900 -898 -900
		mu 0 3 414 416 410
		f 3 901 -899 902
		mu 0 3 413 414 411
		f 3 903 904 -903
		mu 0 3 411 412 413
		f 3 905 -905 906
		mu 0 3 422 413 412
		f 3 -906 907 908
		mu 0 3 413 422 421
		f 3 909 910 -909
		mu 0 3 421 420 413
		f 3 -902 -911 911
		mu 0 3 414 413 420
		f 3 912 913 -912
		mu 0 3 420 419 414
		f 3 -901 -914 914
		mu 0 3 416 414 419
		f 3 915 916 -915
		mu 0 3 419 418 416
		f 3 917 -917 918
		mu 0 3 417 416 418
		f 3 -897 -918 919
		mu 0 3 415 416 417
		f 3 920 -919 921
		mu 0 3 430 417 418
		f 3 922 923 -922
		mu 0 3 418 431 430
		f 3 -923 -916 924
		mu 0 3 431 418 419
		f 3 925 926 -925
		mu 0 3 419 428 431
		f 3 -926 -913 927
		mu 0 3 428 419 420
		f 3 928 929 -928
		mu 0 3 420 426 428
		f 3 -929 -910 930
		mu 0 3 426 420 421
		f 3 931 932 -931
		mu 0 3 421 424 426
		f 3 933 -932 934
		mu 0 3 423 424 421
		f 3 -908 935 -935
		mu 0 3 421 422 423
		f 3 -934 936 937
		mu 0 3 424 423 432
		f 3 938 939 -938
		mu 0 3 432 433 424
		f 3 940 -940 941
		mu 0 3 434 424 433
		f 3 -933 -941 942
		mu 0 3 426 424 434
		f 3 943 944 -943
		mu 0 3 434 425 426
		f 3 945 -945 946
		mu 0 3 427 426 425
		f 3 -930 -946 947
		mu 0 3 428 426 427
		f 3 948 949 -948
		mu 0 3 427 429 428
		f 3 -927 -950 950
		mu 0 3 431 428 429
		f 3 951 -924 -951
		mu 0 3 429 430 431
		f 3 -939 952 953
		mu 0 3 433 432 444
		f 3 954 955 -954
		mu 0 3 444 443 433
		f 3 956 -956 957
		mu 0 3 437 433 443
		f 3 -942 -957 958
		mu 0 3 434 433 437
		f 3 959 960 -959
		mu 0 3 437 435 434
		f 3 -944 -961 961
		mu 0 3 425 434 435
		f 3 962 -960 963
		mu 0 3 436 435 437
		f 3 964 965 -964
		mu 0 3 437 438 436
		f 3 966 -965 967
		mu 0 3 440 438 437
		f 3 -958 968 -968
		mu 0 3 437 443 440
		f 3 969 -967 970
		mu 0 3 439 438 440
		f 3 971 972 -971
		mu 0 3 440 441 439
		f 3 -972 -969 973
		mu 0 3 441 440 443
		f 3 974 975 -974
		mu 0 3 443 442 441
		f 3 -975 -955 976
		mu 0 3 442 443 444
		f 3 977 978 979
		mu 0 3 446 445 447
		f 3 980 981 -980
		mu 0 3 447 449 446
		f 3 982 -982 983
		mu 0 3 450 446 449
		f 3 -981 984 985
		mu 0 3 449 447 448
		f 3 986 987 -986
		mu 0 3 448 458 449
		f 3 988 -988 989
		mu 0 3 457 449 458
		f 3 -984 -989 990
		mu 0 3 450 449 457
		f 3 991 992 -991
		mu 0 3 457 451 450
		f 3 -992 993 994
		mu 0 3 451 457 455
		f 3 995 996 -995
		mu 0 3 455 452 451
		f 3 997 -996 998
		mu 0 3 453 452 455
		f 3 999 1000 -999
		mu 0 3 455 454 453
		f 3 1001 -1000 1002
		mu 0 3 456 454 455
		f 3 -994 1003 -1003
		mu 0 3 455 457 456
		f 3 1004 -1004 1005
		mu 0 3 459 456 457
		f 3 -990 1006 -1006
		mu 0 3 457 458 459
		f 3 1007 1008 1009
		mu 0 3 461 460 462
		f 3 1010 1011 -1010
		mu 0 3 462 464 461
		f 3 -1011 1012 1013
		mu 0 3 464 462 463
		f 3 1014 1015 -1014
		mu 0 3 463 465 464
		f 3 1016 -1016 1017
		mu 0 3 466 464 465
		f 3 1018 1019 -1018
		mu 0 3 465 467 466
		f 3 1020 -1020 1021
		mu 0 3 468 466 467
		f 3 1022 1023 -1022
		mu 0 3 467 469 468
		f 3 1024 -1024 1025
		mu 0 3 471 468 469
		f 3 1026 1027 -1026
		mu 0 3 469 470 471
		f 3 1028 1029 1030
		mu 0 3 473 472 474
		f 3 1031 1032 -1031
		mu 0 3 474 478 473
		f 3 1033 -1033 1034
		mu 0 3 475 473 478
		f 3 1035 -1032 1036
		mu 0 3 476 478 474
		f 3 1037 -1035 1038
		mu 0 3 477 475 478
		f 3 -1036 1039 1040
		mu 0 3 478 476 479
		f 3 1041 -1039 1042
		mu 0 3 480 477 478
		f 3 -1041 1043 -1043
		mu 0 3 478 479 480
		f 3 1044 1045 1046
		mu 0 3 483 481 482
		f 3 1047 1048 -1047
		mu 0 3 482 484 483
		f 3 1049 -1049 1050
		mu 0 3 486 483 484
		f 3 1051 1052 -1051
		mu 0 3 484 485 486
		f 3 1053 1054 1055
		mu 0 3 487 488 489
		f 3 1056 1057 1058
		mu 0 3 496 491 490
		f 3 1059 1060 -1059
		mu 0 3 490 497 496
		f 3 -1057 1061 1062
		mu 0 3 491 496 494
		f 3 1063 1064 -1063
		mu 0 3 494 492 491
		f 3 1065 -1064 1066
		mu 0 3 493 492 494
		f 3 1067 1068 -1067
		mu 0 3 494 495 493
		f 3 -1068 -1062 1069
		mu 0 3 495 494 496
		f 3 1070 1071 -1070
		mu 0 3 496 500 495
		f 3 1072 -1071 1073
		mu 0 3 501 500 496
		f 3 -1061 1074 -1074
		mu 0 3 496 497 501
		f 3 1075 -1075 1076
		mu 0 3 498 501 497
		f 3 -1076 1077 1078
		mu 0 3 501 498 499
		f 3 1079 -1073 -1079
		mu 0 3 499 500 501
		f 3 1080 1081 1082
		mu 0 3 502 503 506
		f 3 1083 1084 -1083
		mu 0 3 506 504 502
		f 3 1085 -1082 1086
		mu 0 3 508 506 503
		f 3 1087 -1084 1088
		mu 0 3 505 504 506
		f 3 1089 1090 -1089
		mu 0 3 506 512 505
		f 3 1091 -1091 1092
		mu 0 3 513 505 512
		f 3 1093 -1090 1094
		mu 0 3 511 512 506
		f 3 1095 1096 -1095
		mu 0 3 506 507 511
		f 3 1097 -1096 -1086
		mu 0 3 508 507 506
		f 3 1098 -1097 1099
		mu 0 3 510 511 507
		f 3 -1098 1100 -1100
		mu 0 3 507 508 510
		f 3 1101 -1101 1102
		mu 0 3 509 510 508
		f 3 -1102 1103 1104
		mu 0 3 510 509 516
		f 3 1105 1106 -1105
		mu 0 3 516 515 510
		f 3 -1099 -1107 1107
		mu 0 3 511 510 515
		f 3 1108 1109 -1108
		mu 0 3 515 514 511
		f 3 -1094 -1110 1110
		mu 0 3 512 511 514
		f 3 1111 -1093 -1111
		mu 0 3 514 513 512
		f 3 1112 -1112 1113
		mu 0 3 517 513 514
		f 3 1114 1115 -1114
		mu 0 3 514 518 517
		f 3 -1115 -1109 1116
		mu 0 3 518 514 515
		f 3 -1106 1117 -1117
		mu 0 3 515 516 518
		f 3 1118 -1118 1119
		mu 0 3 519 518 516
		f 3 -1116 -1119 1120
		mu 0 3 517 518 519;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "HollowSkin" -p "LOD0";
	rename -uid "45D8C56A-4F25-2F7D-2517-EFB65BD03EB5";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 87.471848875284195 3.0145502090454102 ;
	setAttr ".sp" -type "double3" 0 87.471848875284195 3.0145502090454102 ;
createNode mesh -n "HollowSkinShape" -p "HollowSkin";
	rename -uid "63AE0D95-4937-FF50-9F85-899E423CE86D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6371999979019165 0.87740007042884827 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "SculptFreezeColorTemp";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[745]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[757]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[758]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[918]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[929]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[930]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "HollowSkinShapeOrig" -p "HollowSkin";
	rename -uid "4F2928CC-4907-A672-1E7C-DBAF9E5E7963";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1492 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.86720002 0.82320011 0.8721
		 0.82710004 0.86330003 0.83200008 0.8749997 0.84860015 0.86430001 0.85840005 0.86330003
		 0.88480008 0.87209958 0.88770008 0.86330003 0.92090017 0.88480002 0.9004001 0.86330003
		 0.93260008 0.88959998 0.92190009 0.86619997 0.9521001 0.87300003 0.95800012 0.87599993
		 0.93070006 0.88870001 0.93260008 0.89060003 0.94340008 0.88769996 0.95020008 0.8818
		 0.96090007 0.88870001 0.95610011 0.19140002 0.95120013 0.19140002 0.96780008 0.20120001
		 0.95510012 0.21000001 0.96780008 0.20120001 0.96780008 0.19140002 0.98440009 0.19140002
		 0.96780008 0.20120001 0.96780008 0.20999999 0.96780008 0.20120001 0.9805001 0.93549973
		 0.70900005 0.9443 0.70410007 0.91500002 0.58399999 0.9199 0.59179997 0.92290002 0.58590001
		 0.92769974 0.59569997 0.93649971 0.59280014 0.92769986 0.5898 0.94340003 0.58590001
		 0.98439997 0.85160005 0.96679991 0.89160007 0.98239988 0.87600011 0.9932 0.85350007
		 0.98729998 0.85740006 0.9932 0.94430012 0.99319994 0.90620011 0.97849995 0.93550014
		 0.9795 0.89450008 0.96389967 0.9180001 0.97070003 0.95120007 0.98339987 0.95020008
		 0.44139999 0.39060003 0.44240001 0.47749999 0.43259999 0.39360011 0.42680001 0.39260036
		 0.41890001 0.39060032 0.41209999 0.39060032 0.40720001 0.39359999 0.4014 0.3926003
		 0.38870001 0.39060003 0.39359984 0.48240027 0.4014 0.45999995 0.40719998 0.45510003
		 0.41209999 0.46189997 0.41800001 0.47560009 0.42579994 0.49019995 0.4346 0.49119994
		 0.45209986 0.53709996 0.45609999 0.61230004 0.44139999 0.542 0.4316 0.5449 0.42480001
		 0.54690003 0.41499987 0.5449 0.40720001 0.54300016 0.3994 0.54299998 0.38569999 0.54100001
		 0.3838 0.61520004 0.39750001 0.60839999 0.40719977 0.60840005 0.41600001 0.60940015
		 0.42680001 0.61130005 0.43549985 0.61720014 0.44529998 0.61910003 0.45309985 0.70700002
		 0.44919986 0.72660017 0.44239986 0.70900005 0.43359998 0.71000016 0.42769986 0.70900005
		 0.417 0.70510006 0.40720001 0.69630003 0.39750001 0.70310003 0.3838 0.70900005 0.3809
		 0.73240006 0.38960001 0.72460008 0.38569999 0.74710006 0.3994 0.72460008 0.4071998
		 0.71680003 0.41599998 0.72660005 0.42480001 0.72560006 0.43459985 0.73140019 0.44240001
		 0.73340005 0.45209989 0.73340005 0.44429997 0.74710006 0.4316 0.74800014 0.41889998
		 0.75200009 0.40720001 0.75590003 0.39750001 0.75100005 0.3818 0.81540006 0.39449996
		 0.82520008 0.37400001 0.88870007 0.36129999 0.96780008 0.39359987 0.9004001 0.40719977
		 0.83010006 0.42189986 0.82810009 0.43649989 0.81640011 0.45019984 0.79690003 0.46389985
		 0.78710008 0.46289998 0.86820012 0.47659999 0.85160005 0.4463 0.89160007 0.42869997
		 0.90530008 0.40719998 0.90330011 0.53030002 0.81450009 0.52829999 0.80660009 0.54000002
		 0.80370015 0.54979968 0.80080009 0.55659997 0.79590005 0.55659997 0.78030008 0.54879969
		 0.75680006 0.55269969 0.78420013 0.54689997 0.78810018 0.53909999 0.79390007 0.53119993
		 0.77730006 0.52439982 0.79300004 0.52929997 0.76270008 0.54000002 0.76760006 0.54689997
		 0.75880015 0.5448997 0.7275002 0.5381 0.72560006 0.5449 0.68260008 0.53609997 0.68650007
		 0.52640003 0.74020004 0.51859981 0.78520006 0.51270002 0.78710008 0.51169997 0.74710006
		 0.5068 0.78710008 0.50199997 0.74410003 0.51169997 0.70800006 0.52249998 0.70510006
		 0.53609997 0.66800004 0.54390001 0.66409999 0.53419995 0.64260006 0.5273 0.65620005
		 0.51370001 0.6455 0.49799994 0.64840001 0.49709997 0.66600007 0.48829994 0.69730008
		 0.48629999 0.66500014 0.4989998 0.70020002 0.47459999 0.71390003 0.48629969 0.74120003
		 0.49609995 0.76170003 0.49019995 0.77440006 0.49799979 0.79880005 0.49509999 0.81250006
		 0.48539999 0.80270016 0.48539999 0.79200006 0.48729986 0.76950008 0.47949994 0.76170009
		 0.4736 0.75680006 0.4707 0.77730006 0.4707 0.79100007 0.4736 0.77930015 0.47949994
		 0.78520006 0.47659996 0.79690015 0.54000002 0.63090003 0.53119999 0.61040002 0.52639973
		 0.62990016 0.51269996 0.61720002 0.51370001 0.59569997 0.50199997 0.61720002 0.49899986
		 0.60350001 0.4971 0.63090014 0.48729998 0.64649999 0.48829997 0.62400001 0.4619 0.57620001
		 0.46970001 0.54790014 0.4727 0.59670001 0.48730001 0.54980016 0.4912 0.59180015 0.5029
		 0.58789998 0.50099999 0.55960011 0.54689997 0.5205 0.51370001 0.53119999 0.52249998
		 0.49019995 0.49709997 0.51660025 0.49509984 0.47169998 0.46970001 0.4355 0.4736 0.50200003
		 0.70899999 0.53219998 0.70609999 0.5596 0.72070003 0.54100007 0.7294997 0.60159999
		 0.71679991 0.58399999 0.72749972 0.62210017 0.708 0.6182 0.7051 0.6602 0.73339969
		 0.63870019 0.74800009 0.63280004 0.74900001 0.61720002 0.74900001 0.60550004 0.73540002
		 0.61230004 0.73629999 0.57620019 0.73439997 0.56050014 0.73830003 0.50289994 0.73729968
		 0.5273 0.75199997 0.51459998 0.74509984 0.52050006 0.75389969 0.52249998 0.74220002
		 0.53120017 0.75099975 0.56639999 0.75289971 0.54790014 0.74019998 0.55860001 0.74119991
		 0.66600001 0.70700002 0.6875 0.71090001 0.71880007 0.71579999 0.73630005 0.74019998
		 0.74800003 0.76270002 0.74410003 0.77249998 0.72460002 0.74409997 0.71880019 0.77539998
		 0.70210004 0.76950002 0.65330017 0.7432 0.69730002 0.77539998 0.66800004 0.9619 0.99220008
		 0.9551 0.9424001 0.94340003 0.98930007 0.95609969 0.9072001 0.94239998 0.93950009
		 0.94239998 0.89940006 0.95799989 0.87790006 0.96289968 0.83980006 0.97170001 0.82320011
		 0.99509996 0.79790008 0.99609971 0.77730006 0.99509972 0.76370007 0.97170007 0.76460004
		 0.96969998 0.74320018 0.98629969 0.71580005 0.98049998 0.69139999;
	setAttr ".uvst[0].uvsp[250:499]" 0.9756 0.65430015 0.97359997 0.6426 0.97750002
		 0.60250002 0.95699984 0.63280004 0.94529998 0.62700003 0.94239968 0.63960016 0.95899987
		 0.6494 0.96189958 0.67970002 0.96389973 0.70120019 0.95899987 0.73930007 0.95999998
		 0.75780004 0.96780008 0.79300004 0.96090001 0.792 0.95899987 0.77730006 0.94919997
		 0.77640009 0.94919997 0.75680006 0.95120001 0.74020004 0.94730002 0.71780002 0.9443
		 0.71000022 0.9364996 0.71680003 0.9374997 0.72170007 0.93650007 0.73930007 0.93649966
		 0.75390005 0.93549991 0.78220004 0.94139999 0.78610003 0.94039994 0.79980004 0.95119971
		 0.79000014 0.95609987 0.8105002 0.94629991 0.81250006 0.95899969 0.82130015 0.94239998
		 0.82520008 0.93259972 0.80860013 0.93159997 0.78420007 0.92969972 0.74710006 0.94339973
		 0.84470004 0.94339997 0.87300009 0.92693764 0.66210008 0.93549961 0.66409999 0.9374997
		 0.65619999 0.94819993 0.66890013 0.95209986 0.6943 0.9345997 0.66890019 0.94529998
		 0.67480016 0.94340003 0.67870003 0.75980002 0.583 0.79000002 0.57129997 0.78710002
		 0.62400001 0.79589999 0.68849999 0.79390001 0.6631 0.81050003 0.67090005 0.81050003
		 0.72070014 0.79489988 0.71580005 0.77829999 0.72360003 0.79389989 0.73630005 0.79299998
		 0.77150005 0.7744 0.76270008 0.79000002 0.81050009 0.76660001 0.81540006 0.76459998
		 0.85550004 0.78809994 0.84670007 0.7705 0.90140015 0.81050003 0.89060009 0.79099995
		 0.89060009 0.7773 0.92870009 0.78119999 0.9805001 0.79389989 0.9277001 0.79689997
		 0.9902001 0.18468121 0.80860007 0.2158 0.80570006 0.2148 0.73440003 0.21389994 0.67870003
		 0.21289992 0.62700015 0.2051 0.542 0.2148 0.42290023 0.24510001 0.4355 0.2432 0.5596
		 0.27340001 0.45510003 0.3398 0.48439994 0.30179998 0.46969995 0.28119999 0.57320005
		 0.25099999 0.62010008 0.2344 0.66990006 0.23339993 0.7305001 0.23339993 0.80570006
		 0.23139997 0.85160011 0.21189998 0.85550004 0.2265999 0.88570005 0.2432 0.88570005
		 0.24609999 0.84470004 0.24709985 0.80570006 0.25 0.73440003 0.25679985 0.67290002
		 0.28220004 0.63089991 0.3096 0.56839997 0.34079984 0.56150013 0.34279999 0.63480014
		 0.30759984 0.63770002 0.28119984 0.68460017 0.26660001 0.76370007 0.28609991 0.77930003
		 0.30759999 0.69820005 0.3389 0.68550009 0.35159996 0.90430009 0.34959984 0.84180015
		 0.33590001 0.78030014 0.30569997 0.79200006 0.31449991 0.84670007 0.34079999 0.84860009
		 0.34379998 0.90330011 0.34079999 0.93160009 0.31740001 0.89360005 0.3193 0.93160009
		 0.3213 0.97460008 0.30860001 0.96190012 0.29789996 0.92290008 0.292 0.94730014 0.28220001
		 0.94140011 0.28909999 0.91700011 0.29100001 0.88180006 0.29980001 0.88770008 0.2969
		 0.84470004 0.29199997 0.85060006 0.2881 0.81450015 0.28709984 0.83890009 0.26949984
		 0.81840008 0.27339986 0.84860015 0.25979999 0.83690012 0.26949999 0.86720008 0.2588
		 0.88870007 0.2705 0.89060014 0.27339986 0.92870009 0.27829999 0.96390009 0.26069984
		 0.92680013 0.26859993 0.9697001 0.25389999 0.93550009 0.2344 0.91410011 0.23339993
		 0.9248001 0.2559 0.95410007 0.2334 0.9902001 0.2246 0.95020008 0.24799992 0.98240012
		 0.1963 0.92870009 0.19729999 0.91410011 0.20020001 0.8975001 0.43259999 0.99320006
		 0.24609999 0.33890003 0.458 0.97750008 0.30269992 0.33790028 0.40719986 0.99220008
		 0.93069971 0.75880015 0.48049977 0.94140011 0.39159989 0.98440009 0.86720002 0.82320011
		 0.8721 0.82710004 0.86330003 0.83200008 0.8749997 0.84860015 0.86430001 0.85840005
		 0.86330003 0.88480008 0.87209958 0.88770008 0.86330003 0.92090017 0.88480002 0.9004001
		 0.86330003 0.93260008 0.88959998 0.92190009 0.86619997 0.9521001 0.87300003 0.95800012
		 0.87599993 0.93070006 0.88870001 0.93260008 0.89060003 0.94340008 0.88769996 0.95020008
		 0.88870001 0.95610011 0.8818 0.96090007 0.18354739 0.95610011 0.18360001 0.96780008
		 0.17574738 0.95120013 0.17574738 0.96780008 0.16594739 0.95510012 0.16594739 0.96780008
		 0.15714739 0.96780008 0.18360001 0.98240012 0.18354739 0.96780008 0.17574738 0.98440009
		 0.17574738 0.96780008 0.16594739 0.96780008 0.16594739 0.9805001 0.15714741 0.96780008
		 0.92693776 0.70800006 0.91823786 0.70900005 0.9094376 0.70410007 0.9131 0.57519996
		 0.91500002 0.58399999 0.9199 0.59179997 0.92290002 0.58590001 0.91989994 0.57519996
		 0.92769974 0.59569997 0.93649971 0.59280014 0.92769986 0.57519996 0.92769986 0.5898
		 0.94630003 0.57519996 0.94039994 0.57519996 0.94340003 0.58590001 0.98439997 0.85160005
		 0.96679991 0.89160007 0.98239988 0.87600011 0.9932 0.85350007 0.99319983 0.90620011
		 0.98729998 0.85740006 0.9932 0.94430012 0.97849995 0.93550014 0.9795 0.89450008 0.97070003
		 0.95120007 0.96389967 0.9180001 0.98339987 0.95020008 0.44139999 0.39060003 0.44240001
		 0.47749999 0.43259999 0.39360011 0.42680001 0.39260036 0.41890001 0.39060032 0.41209999
		 0.39060032 0.40720001 0.39359999 0.4014 0.3926003 0.38870001 0.39060003 0.39359984
		 0.48240027 0.4014 0.45999995 0.40719998 0.45510003 0.41209999 0.46189997 0.41800001
		 0.47560009 0.42579994 0.49019995 0.4346 0.49119994 0.45209986 0.53709996 0.45609999
		 0.61230004 0.44139999 0.542 0.4316 0.5449 0.42480001 0.54690003 0.41499987 0.5449
		 0.40720001 0.54300016 0.3994 0.54299998 0.38569999 0.54100001 0.3838 0.61520004 0.39750001
		 0.60839999 0.40719977 0.60840005 0.41600001 0.60940015 0.42680001 0.61130005 0.43549985
		 0.61720014 0.44529998 0.61910003 0.45309985 0.70700002 0.44919986 0.72660017 0.44239986
		 0.70900005 0.43359998 0.71000016 0.42769986 0.70900005 0.417 0.70510006;
	setAttr ".uvst[0].uvsp[500:749]" 0.40720001 0.69630003 0.39750001 0.70310003
		 0.3838 0.70900005 0.3809 0.73240006 0.38960001 0.72460008 0.38569999 0.74710006 0.3994
		 0.72460008 0.4071998 0.71680003 0.41599998 0.72660005 0.42480001 0.72560006 0.43459985
		 0.73140019 0.44240001 0.73340005 0.45209989 0.73340005 0.44429997 0.74710006 0.4316
		 0.74800014 0.41889998 0.75200009 0.40720001 0.75590003 0.39750001 0.75100005 0.3818
		 0.81540006 0.39449996 0.82520008 0.37400001 0.88870007 0.36129999 0.96780008 0.39359987
		 0.9004001 0.40719977 0.83010006 0.42189986 0.82810009 0.43649989 0.81640011 0.45019984
		 0.79690003 0.46389985 0.78710008 0.46289998 0.86820012 0.47659999 0.85160005 0.4463
		 0.89160007 0.42869997 0.90530008 0.40719998 0.90330011 0.53030002 0.81450009 0.52829999
		 0.80660009 0.54000002 0.80370015 0.54979968 0.80080009 0.55659997 0.79590005 0.55659997
		 0.78030008 0.54879969 0.75680006 0.55269969 0.78420013 0.54689997 0.78810018 0.53909999
		 0.79390007 0.53119993 0.77730006 0.52439982 0.79300004 0.52929997 0.76270008 0.54000002
		 0.76760006 0.54689997 0.75880015 0.5448997 0.7275002 0.5381 0.72560006 0.5449 0.68260008
		 0.53609997 0.68650007 0.52640003 0.74020004 0.51859981 0.78520006 0.51270002 0.78710008
		 0.51169997 0.74710006 0.5068 0.78710008 0.50199997 0.74410003 0.51169997 0.70800006
		 0.52249998 0.70510006 0.53609997 0.66800004 0.54390001 0.66409999 0.53419995 0.64260006
		 0.5273 0.65620005 0.51370001 0.6455 0.49799994 0.64840001 0.49709997 0.66600007 0.48829991
		 0.69730008 0.4989998 0.70020002 0.48629999 0.66500014 0.47459999 0.71390003 0.48629969
		 0.74120003 0.49609995 0.76170003 0.49019995 0.77440006 0.49799979 0.79880005 0.49509999
		 0.81250006 0.48539999 0.80270016 0.48539999 0.79200006 0.48729986 0.76950008 0.47949994
		 0.76170009 0.4736 0.75680006 0.4707 0.77730006 0.4707 0.79100007 0.4736 0.77930015
		 0.47659996 0.79690015 0.47949994 0.78520006 0.54000002 0.63090003 0.53119999 0.61040002
		 0.52639973 0.62990016 0.51269996 0.61720002 0.51370001 0.59569997 0.50199997 0.61720002
		 0.49899986 0.60350001 0.4971 0.63090014 0.48829997 0.62400001 0.48729995 0.64650005
		 0.4619 0.57620001 0.46970001 0.54790014 0.4727 0.59670001 0.48730001 0.54980016 0.4912
		 0.59180015 0.51169991 0.57320005 0.51459998 0.59179997 0.5029 0.58789998 0.50099999
		 0.55960011 0.52339995 0.55270004 0.56249994 0.53030008 0.54689997 0.5205 0.51370001
		 0.53119999 0.52249998 0.49019995 0.49709997 0.51660025 0.49509984 0.47169998 0.4736
		 0.50200003 0.46970001 0.4355 0.74900001 0.99410009 0.73930001 0.97460008 0.75779969
		 0.97460008 0.74220002 0.94140011 0.75879973 0.94140011 0.76169997 0.90620011 0.76169997
		 0.87790006 0.74609971 0.90620011 0.74610001 0.87790006 0.75879973 0.84770012 0.75589973
		 0.81840014 0.74409992 0.84770006 0.7421999 0.81930006 0.75389969 0.80180007 0.75289971
		 0.78710008 0.74610001 0.75490004 0.73540002 0.76760012 0.74019998 0.80080009 0.70899999
		 0.53219998 0.70609999 0.5596 0.72070003 0.54100007 0.71679991 0.58399999 0.72749972
		 0.62210017 0.708 0.6182 0.7051 0.6602 0.73339969 0.63870019 0.74800009 0.63280004
		 0.74900001 0.61720002 0.74900001 0.60550004 0.73540002 0.61230004 0.7294997 0.60159999
		 0.73439997 0.56050014 0.73629999 0.57620019 0.73830003 0.50289994 0.73729968 0.5273
		 0.75199997 0.51459998 0.74509984 0.52050006 0.75389969 0.52249998 0.74220002 0.53120017
		 0.75099975 0.56639999 0.74019998 0.55860001 0.75289971 0.54790014 0.74119991 0.66600001
		 0.70700002 0.6875 0.71090001 0.71880007 0.71579999 0.73630005 0.74019998 0.74800003
		 0.76270002 0.74410003 0.77249998 0.72460002 0.74409997 0.71880019 0.77539998 0.70210004
		 0.76950002 0.65330017 0.77539998 0.66800004 0.7432 0.69730002 0.8918376 0.99220008
		 0.89863759 0.9424001 0.91033757 0.98930007 0.8976379 0.9072001 0.91133761 0.93950009
		 0.92693776 0.98930007 0.92693764 0.94040012 0.91133761 0.89940006 0.89573771 0.87790006
		 0.89083791 0.83980006 0.88203758 0.82320011 0.85863763 0.79790008 0.85763788 0.77730006
		 0.85863787 0.76370007 0.88203752 0.76460004 0.88403761 0.74320018 0.8674379 0.71580005
		 0.87323761 0.69139999 0.87813759 0.65430015 0.88013762 0.6426 0.87623757 0.60250002
		 0.89373797 0.5898 0.89673775 0.63280004 0.90843761 0.62700003 0.91623789 0.61520004
		 0.91133791 0.63960016 0.89473772 0.6494 0.89183801 0.67970002 0.88983786 0.70120019
		 0.89473772 0.73930007 0.89373761 0.75780004 0.88593751 0.79300004 0.89283758 0.792
		 0.89473772 0.77730006 0.90453762 0.77640009 0.90453762 0.75680006 0.90253758 0.74020004
		 0.90163773 0.6943 0.9094376 0.71000022 0.90643758 0.71780002 0.917238 0.71680003
		 0.92693764 0.71390015 0.91623789 0.72170007 0.9269377 0.7197001 0.91723758 0.73930007
		 0.91723794 0.75390005 0.91823769 0.78220004 0.9123376 0.78610003 0.91333765 0.79980004
		 0.90253788 0.79000014 0.89763772 0.8105002 0.90743768 0.81250006 0.8947379 0.82130015
		 0.91133761 0.82520008 0.92113787 0.80860013 0.92693764 0.80960011 0.92213762 0.78420007
		 0.92693776 0.75980008 0.92693764 0.78420007 0.92403787 0.74710006 0.92663789 0.7451334
		 0.92693752 0.82230008 0.91033787 0.84470004 0.92693764 0.84470004 0.91033763 0.87300009
		 0.92693776 0.87110013 0.92693764 0.89840007 0.92693764 0.6279 0.92693776 0.65430009
		 0.92693776 0.6680001 0.91823798 0.66409999 0.91623789 0.65619999 0.90553766 0.66890013
		 0.9191379 0.66890019 0.91033757 0.67870003 0.90843761 0.67480016 0.81050003 0.583
		 0.79000002 0.57129997 0.75980002 0.583 0.81050003 0.61520004 0.78709996 0.62400007
		 0.81050003 0.64260006;
	setAttr ".uvst[0].uvsp[750:999]" 0.81050003 0.66110003 0.79389995 0.6631 0.79589999
		 0.68849999 0.81050003 0.69140011 0.79489988 0.71580005 0.77829999 0.72360003 0.79389989
		 0.73630005 0.81050003 0.73930007 0.81050003 0.77050006 0.81050003 0.80960011 0.79299998
		 0.77150005 0.7744 0.76270008 0.79000002 0.81050009 0.76660001 0.81540006 0.76459998
		 0.85550004 0.78809994 0.84670007 0.7705 0.90140015 0.81050003 0.84470004 0.81050003
		 0.98930007 0.81050003 0.93360007 0.79099995 0.89060009 0.7773 0.92870009 0.78119999
		 0.9805001 0.79689997 0.9902001 0.79389989 0.9277001 0.18468121 0.41209999 0.18468118
		 0.53709996 0.18468121 0.63480008 0.18468121 0.68360001 0.18468121 0.74510002 0.15348119
		 0.80570006 0.15448117 0.73440003 0.15538123 0.67870003 0.15638125 0.62700015 0.16418117
		 0.542 0.15448117 0.42290023 0.12418115 0.4355 0.12608117 0.5596 0.095881164 0.45510003
		 0.0088812113 0.4844 0.029481173 0.48439994 0.0088813305 0.55760002 0.06748119 0.46969995
		 0.088081181 0.57320005 0.11828119 0.62010008 0.13488117 0.66990006 0.13588125 0.7305001
		 0.13588125 0.80570006 0.13788122 0.85160011 0.15738118 0.85550004 0.14268127 0.88570005
		 0.12608117 0.88570005 0.12318116 0.84470004 0.12218133 0.80570006 0.11928117 0.73440003
		 0.11248133 0.67290002 0.087081134 0.63089991 0.059681177 0.56839997 0.028481334 0.56150013
		 0.0088813305 0.63480002 0.026481181 0.63480014 0.0088813305 0.68360013 0.06168133
		 0.63770002 0.08808133 0.68460017 0.10268116 0.76370007 0.083181262 0.77930003 0.061681181
		 0.69820005 0.030381173 0.68550009 0.0088813305 0.77730006 0.0088812113 0.84180009
		 0.0088813305 0.90530014 0.0088811815 0.94340008 0.017681211 0.90430009 0.019681334
		 0.84180015 0.033381164 0.78030014 0.063581198 0.79200006 0.054781258 0.84670007 0.028481185
		 0.84860009 0.025481194 0.90330011 0.028481185 0.93160009 0.051881164 0.89360005 0.060681164
		 0.96190012 0.047981173 0.97460008 0.049981177 0.93160009 0.071381211 0.92290008 0.087081164
		 0.94140011 0.077281177 0.94730014 0.080181181 0.91700011 0.078281164 0.88180006 0.069481164
		 0.88770008 0.072381169 0.84470004 0.077281207 0.85060006 0.081181169 0.81450015 0.082181334
		 0.83890009 0.099781334 0.81840008 0.095881313 0.84860015 0.10948119 0.83690012 0.099781185
		 0.86720008 0.11048117 0.88870007 0.098781168 0.89060014 0.10068128 0.9697001 0.090981185
		 0.96390009 0.095881313 0.92870009 0.10858133 0.92680013 0.11538118 0.93550009 0.13488117
		 0.91410011 0.13588125 0.9248001 0.11338118 0.95410007 0.13588119 0.9902001 0.12128127
		 0.98240012 0.14468122 0.95020008 0.17298117 0.92870009 0.18468121 0.91600013 0.17198119
		 0.91410011 0.18468121 0.89060009 0.16908115 0.8975001 0.18468121 0.85350007 0.066581249
		 0.33790028 0.36039996 0.34570003 0.43259999 0.99320006 0.12318116 0.33890003 0.458
		 0.97750008 0.18468118 0.32130003 0.40719986 0.99220008 0.92639118 0.74344909 0.9269377
		 0.7197001 0.92693776 0.75980008 0.92303789 0.75880015 0.92672795 0.74776685 0.48049977
		 0.94140011 0.39159989 0.98440009 0.92679983 0.75980008 0.92700964 0.74776685 0.92734641
		 0.74344909 0.92679989 0.7197001 0.1846 0.32130003 0.0088812113 0.34570003 0.18459997
		 0.89060009 0.18459997 0.85350007 0.56249994 0.53030008 0.18459997 0.91600013 0.36039984
		 0.90530014 0.36039999 0.94340008 0.81050003 0.583 0.36039996 0.84180009 0.36039984
		 0.77730006 0.36039984 0.68360013 0.36039984 0.63480002 0.36039984 0.55760002 0.36039996
		 0.4844 0.18459997 0.80860007 0.18459997 0.74510002 0.18459997 0.68360001 0.18459997
		 0.63480008 0.1846 0.53709996 0.18459997 0.41209999 0.81050003 0.89060009 0.81050003
		 0.93360007 0.81050003 0.98930007 0.92679983 0.98930007 0.81050003 0.84470004 0.81050003
		 0.80960011 0.81050003 0.77050006 0.81050003 0.73930007 0.81050003 0.72070014 0.81050003
		 0.69140011 0.81050003 0.67090005 0.81050003 0.66110003 0.81050003 0.64260006 0.81050003
		 0.61520004 0.94630003 0.57519996 0.92679983 0.6680001 0.92679995 0.66210008 0.92679983
		 0.65430009 0.92679995 0.6279 0.92679995 0.89840007 0.92679983 0.87110013 0.92679995
		 0.84470004 0.92680007 0.82230008 0.9270997 0.7451334 0.92679983 0.75980008 0.92679995
		 0.78420007 0.92679995 0.80960011 0.92679989 0.7197001 0.92679995 0.71390015 0.9374997
		 0.61520004 0.95999962 0.5898 0.51459998 0.59179997 0.92679995 0.94040012 0.52339995
		 0.55270004 0.51169991 0.57320005 0.94039994 0.57519996 0.92769986 0.57519996 0.91989994
		 0.57519996 0.92679983 0.70800006 0.9131 0.57519996 0.18354739 0.98240012 0.18360001
		 0.96780008 0.18354739 0.96780008 0.18360001 0.95610011 0.51445603 0.85181642 0.5136832
		 0.84202069 0.5205496 0.85128582 0.5210954 0.83898044 0.51008266 0.83787304 0.50317639
		 0.84184098 0.50926995 0.84237164 0.50240356 0.85163677 0.50981575 0.85467696 0.49880296
		 0.8557843 0.49364102 0.81638104 0.50465375 0.82174039 0.49397153 0.8290242 0.49397153
		 0.8290242 0.49364102 0.84166729 0.50465375 0.83630782 0.48723006 0.81638104 0.49332374
		 0.81988204 0.48675191 0.82389808 0.4910835 0.83216017 0.4910835 0.83216017 0.48540646
		 0.82804567 0.48675191 0.84042251 0.48540646 0.83627486 0.49332374 0.84443855 0.48723006
		 0.84793961 0.51273268 0.83184367 0.50983888 0.83769929 0.50739849 0.82701719 0.50744534
		 0.82701719 0.51289856 0.83139998 0.51161164 0.82786 0.51410222 0.81638104 0.52132082
		 0.83201742 0.52469993 0.84351218 0.51564372 0.8371219 0.52703953 0.8371219 0.52874631
		 0.84615517 0.52520633 0.84486812 0.52112204 0.82701719 0.51690894 0.82786 0.5144183
		 0.81638104 0.51562196 0.83139998 0.5157879 0.83184367 0.52136236 0.83201742 0.51798326
		 0.84351218 0.51187706 0.82701719 0.51721108 0.83184367 0.50211114 0.83184367 0.50948346
		 0.83769929;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.5869 0.52249998 0.58200002 0.51370001 0.58200002
		 0.52150011 0.58200002 0.55080014 0.5869 0.55080014 0.58200002 0.57910001 0.5869 0.57910001
		 0.58789974 0.61520004 0.583 0.6182 0.65139979 0.52150005 0.65140003 0.51370001 0.64649999
		 0.52249998 0.64649999 0.55080014 0.65139979 0.55080014 0.64649999 0.57910013 0.65140003
		 0.57910001 0.64709401 0.60544622 0.6470539 0.61089873 0.65139991 0.59886968 0.59280002
		 0.6182 0.60619986 0.61720008 0.59769976 0.61430001 0.63768297 0.61051065 0.63785452
		 0.61900514 0.64059997 0.62500006 0.64059997 0.60493737 0.64060003 0.57910013 0.63669974
		 0.57910013 0.63749856 0.6013782 0.64059991 0.55080014 0.63669968 0.55080014 0.64059985
		 0.52150005 0.63669997 0.52249998 0.64060003 0.51370001 0.59280002 0.57910001 0.58789998
		 0.57910001 0.58789998 0.55080014 0.59280002 0.55080014 0.58789998 0.52249998 0.59280002
		 0.52150011 0.59280002 0.51370001 0.64307767 0.62004459 0.64311677 0.61020875 0.64316517
		 0.59799999 0.6455 0.57910001 0.6455 0.55079997 0.6455 0.52249998 0.61129975 0.59080005
		 0.60639971 0.59280014 0.61129969 0.5703001 0.60640001 0.57129997 0.60639971 0.55369997
		 0.61129993 0.55269998 0.61129999 0.5449 0.73930001 0.97460008 0.74900001 0.99410009
		 0.75779969 0.97460008 0.74220002 0.94140011 0.69919968 0.94920009 0.75879973 0.94140011
		 0.70120001 0.9277001 0.65819979 0.9521001 0.72169995 0.90920007 0.74609971 0.90620011
		 0.76169997 0.90620011 0.76169997 0.87790006 0.74610001 0.87790006 0.75879973 0.84770012
		 0.72169971 0.87790006 0.74409992 0.84770006 0.75589973 0.81840014 0.7421999 0.81930006
		 0.75389969 0.80180007 0.72169971 0.84960014 0.68549973 0.85740012 0.68550003 0.87790006
		 0.6845997 0.90430009 0.65529996 0.9277001 0.64749998 0.93070006 0.64749998 0.95900011
		 0.65820003 0.90230012 0.6602 0.87790006 0.6602 0.85940009 0.65919995 0.83300006 0.70119971
		 0.82420015 0.74019998 0.80080009 0.75289971 0.78710008 0.73540002 0.76760012 0.74610001
		 0.75490004 0.69819969 0.79690015 0.65819979 0.8047002 0.64649987 0.82710004 0.64840001
		 0.79790008 0.6455 0.86130005 0.64649969 0.87790006 0.64649987 0.9004001 0.63669997
		 0.92970014 0.63669997 0.96090007 0.62599999 0.95900011 0.62209994 0.93070006 0.55860001
		 0.94630009 0.63669997 0.90530008 0.63569993 0.87790006 0.61229986 0.90140009 0.55759972
		 0.92090011 0.5352 0.93750012 0.5352 0.91500008 0.55369997 0.89840007 0.53320003 0.8975001
		 0.6074 0.87790006 0.63279998 0.85740006 0.63279998 0.82420009 0.63869971 0.79390007
		 0.62599999 0.79390007 0.61129975 0.82420009 0.55860001 0.80960006 0.60640001 0.85550004
		 0.55659997 0.83590007 0.53420001 0.8174001 0.5352 0.84280008 0.55269992 0.85940009
		 0.55180001 0.87790006 0.53219998 0.87790006 0.53320003 0.85940009 0.65139979 0.62500012
		 0.64700377 0.61769819 0.64599985 0.62500012 0.64060003 0.71190006 0.63179976 0.62500012
		 0.63619983 0.62500012 0.63456577 0.61741114 0.63473171 0.61241239 0.63179982 0.60669458
		 0.63491184 0.60698718 0.63569969 0.57910013 0.6318 0.57809997 0.6318 0.54980016 0.63569969
		 0.55080014 0.6318 0.52150005 0.63569999 0.52249998 0.6318 0.51370001 0.62699997 0.52249998
		 0.62699997 0.55080014 0.62699997 0.57910013 0.62899488 0.60036522 0.6289463 0.61234552
		 0.62891644 0.61971378 0.62693983 0.62444794 0.62599999 0.70410007 0.62300003 0.62400019
		 0.61719978 0.67870003 0.62599999 0.71580005 0.61129969 0.71090019 0.61519969 0.73930019
		 0.6279 0.72750002 0.64059997 0.74220014 0.62989998 0.75000006 0.61720002 0.76070005
		 0.60349971 0.77050006 0.59469998 0.73540002 0.58789998 0.78120005 0.57909971 0.74900007
		 0.56840003 0.6904 0.56050003 0.72070003 0.55760002 0.6523 0.57809985 0.68160003 0.59569973
		 0.67480016 0.61040002 0.67290002 0.61129975 0.64160019 0.61720002 0.63670003 0.61719972
		 0.61520004 0.5800997 0.63960016 0.56539994 0.64450002 0.55897826 0.65334707 0.5596
		 0.62300003 0.55180001 0.6221 0.54299998 0.60250002 0.55079997 0.59670001 0.53909999
		 0.58199996 0.54299998 0.57029998 0.54979998 0.56639999 0.55760002 0.58499998 0.5625
		 0.60839999 0.57130003 0.63570005 0.57519972 0.6279 0.57619971 0.6182 0.57709998 0.57910001
		 0.57709968 0.55080014 0.57709968 0.52249998 0.65039998 0.74610007 0.65820003 0.75200003
		 0.66409969 0.72660017 0.65329999 0.71680003 0.67089999 0.69139999 0.65530002 0.63090003
		 0.667 0.64840001 0.68259972 0.6455 0.69139999 0.6523 0.69339985 0.63280004 0.68849993
		 0.62700003 0.69340008 0.60250002 0.70020002 0.61230004 0.7051 0.59080011 0.69819987
		 0.58500004 0.70209998 0.57519996 0.6942997 0.57519996 0.68650001 0.59380001 0.68260002
		 0.61720002 0.67579973 0.63569999 0.66409999 0.62599999 0.6602 0.61820006 0.65370959
		 0.6029135 0.65619993 0.57910019 0.65619999 0.55080014 0.65619999 0.52249998 0.67580003
		 0.62300003 0.61619991 0.55369997 0.61719978 0.57130003 0.62209994 0.55369997 0.6221
		 0.54589999 0.62699997 0.55369997 0.62699997 0.57229996 0.62209994 0.57130003 0.62699997
		 0.59180015 0.61720002 0.5898 0.62209994 0.59080005 0.62464762 0.60400635 0.62501383
		 0.62007308 0.62480879 0.61107904 0.62250358 0.60569137 0.59670001 0.57910001 0.59670001
		 0.54980016 0.59670001 0.52150011 0.60549968 0.52150011 0.6006 0.51370001 0.60159987
		 0.52050006 0.60159975 0.54980028 0.60639971 0.54980016 0.60159975 0.57810009 0.60640001
		 0.57809997 0.59670001 0.52249998 0.5977 0.54979998 0.5977 0.57910013 0.64549977 0.61520004
		 0.63569975 0.61430007 0.62699986 0.61620003 0.5869 0.52249998 0.58200002 0.52150011
		 0.58200002 0.51370001 0.58200002 0.55080014;
	setAttr ".uvst[0].uvsp[1250:1491]" 0.5869 0.55080014 0.58200002 0.57910001 0.5869
		 0.57910001 0.58789974 0.61520004 0.583 0.6182 0.65139979 0.52150005 0.64649999 0.52249998
		 0.65140003 0.51370001 0.64649999 0.55080014 0.65139979 0.55080014 0.64649999 0.57910013
		 0.65140003 0.57910001 0.64709401 0.60544622 0.65139991 0.59886968 0.6470539 0.61089873
		 0.59280002 0.6182 0.59769976 0.61430001 0.60619986 0.61720008 0.63768297 0.61051065
		 0.64059997 0.60493737 0.64059997 0.62500006 0.63785452 0.61900514 0.64060003 0.57910013
		 0.63749856 0.6013782 0.63669974 0.57910013 0.64059991 0.55080014 0.63669968 0.55080014
		 0.64059985 0.52150005 0.63669997 0.52249998 0.64060003 0.51370001 0.59280002 0.57910001
		 0.58789998 0.57910001 0.58789998 0.55080014 0.59280002 0.55080014 0.58789998 0.52249998
		 0.59280002 0.52150011 0.59280002 0.51370001 0.64307767 0.62004459 0.64311677 0.61020875
		 0.64316517 0.59799999 0.6455 0.57910001 0.6455 0.55079997 0.6455 0.52249998 0.61129975
		 0.59080005 0.60639971 0.59280014 0.61129969 0.5703001 0.60640001 0.57129997 0.60639971
		 0.55369997 0.61129993 0.55269998 0.61129999 0.5449 0.73930001 0.97460008 0.75779969
		 0.97460008 0.74900001 0.99410009 0.74220002 0.94140011 0.69919968 0.94920009 0.75879973
		 0.94140011 0.70120001 0.9277001 0.65819979 0.9521001 0.72169995 0.90920007 0.74609971
		 0.90620011 0.76169997 0.90620011 0.76169997 0.87790006 0.74610001 0.87790006 0.75879973
		 0.84770012 0.72169971 0.87790006 0.74409992 0.84770006 0.75589973 0.81840014 0.7421999
		 0.81930006 0.75389969 0.80180007 0.72169971 0.84960014 0.68549973 0.85740012 0.68550003
		 0.87790006 0.6845997 0.90430009 0.65529996 0.9277001 0.64749998 0.93070006 0.64749998
		 0.95900011 0.65820003 0.90230012 0.6602 0.87790006 0.6602 0.85940009 0.65919995 0.83300006
		 0.70119971 0.82420015 0.74019998 0.80080009 0.75289971 0.78710008 0.73540002 0.76760012
		 0.74610001 0.75490004 0.69819969 0.79690015 0.65819979 0.8047002 0.64649987 0.82710004
		 0.64840001 0.79790008 0.6455 0.86130005 0.64649969 0.87790006 0.64649987 0.9004001
		 0.63669997 0.92970014 0.63669997 0.96090007 0.62599999 0.95900011 0.62209994 0.93070006
		 0.55860001 0.94630009 0.63669997 0.90530008 0.63569993 0.87790006 0.61229986 0.90140009
		 0.55759972 0.92090011 0.5352 0.93750012 0.5352 0.91500008 0.55369997 0.89840007 0.53320003
		 0.8975001 0.6074 0.87790006 0.63279998 0.85740006 0.63279998 0.82420009 0.63869971
		 0.79390007 0.62599999 0.79390007 0.61129975 0.82420009 0.55860001 0.80960006 0.60640001
		 0.85550004 0.55659997 0.83590007 0.53420001 0.8174001 0.5352 0.84280008 0.55269992
		 0.85940009 0.55180001 0.87790006 0.53219998 0.87790006 0.53320003 0.85940009 0.65139979
		 0.62500012 0.64599985 0.62500012 0.64700377 0.61769819 0.64060003 0.71190006 0.63179976
		 0.62500012 0.63619983 0.62500012 0.63456577 0.61741114 0.63179982 0.60669458 0.63473171
		 0.61241239 0.63491184 0.60698718 0.6318 0.57809997 0.63569969 0.57910013 0.6318 0.54980016
		 0.63569969 0.55080014 0.6318 0.52150005 0.63569999 0.52249998 0.6318 0.51370001 0.62699997
		 0.52249998 0.62699997 0.55080014 0.62699997 0.57910013 0.62899488 0.60036522 0.62891644
		 0.61971378 0.6289463 0.61234552 0.62693983 0.62444794 0.62599999 0.70410007 0.62300003
		 0.62400019 0.61719978 0.67870003 0.62599999 0.71580005 0.61129969 0.71090019 0.61519969
		 0.73930019 0.6279 0.72750002 0.64059997 0.74220014 0.62989998 0.75000006 0.61720002
		 0.76070005 0.60349971 0.77050006 0.59469998 0.73540002 0.58789998 0.78120005 0.57909971
		 0.74900007 0.56840003 0.6904 0.56050003 0.72070003 0.55760002 0.6523 0.57809985 0.68160003
		 0.59569973 0.67480016 0.61040002 0.67290002 0.61129975 0.64160019 0.61720002 0.63670003
		 0.61719972 0.61520004 0.5800997 0.63960016 0.56539994 0.64450002 0.55897826 0.65334707
		 0.5596 0.62300003 0.55180001 0.6221 0.54299998 0.60250002 0.55079997 0.59670001 0.53909999
		 0.58199996 0.54299998 0.57029998 0.54979998 0.56639999 0.55760002 0.58499998 0.5625
		 0.60839999 0.57130003 0.63570005 0.57519972 0.6279 0.57619971 0.6182 0.57709998 0.57910001
		 0.57709968 0.55080014 0.57709968 0.52249998 0.65039998 0.74610007 0.66409969 0.72660017
		 0.65820003 0.75200003 0.65329999 0.71680003 0.67089999 0.69139999 0.65530002 0.63090003
		 0.667 0.64840001 0.68259972 0.6455 0.69139999 0.6523 0.69339985 0.63280004 0.68849993
		 0.62700003 0.69340008 0.60250002 0.70020002 0.61230004 0.7051 0.59080011 0.69819987
		 0.58500004 0.70209998 0.57519996 0.6942997 0.57519996 0.68650001 0.59380001 0.68260002
		 0.61720002 0.67579973 0.63569999 0.66409999 0.62599999 0.6602 0.61820006 0.65370959
		 0.6029135 0.65619993 0.57910019 0.65619999 0.55080014 0.65619999 0.52249998 0.67580003
		 0.62300003 0.61619991 0.55369997 0.61719978 0.57130003 0.62209994 0.55369997 0.6221
		 0.54589999 0.62699997 0.55369997 0.62699997 0.57229996 0.62209994 0.57130003 0.62699997
		 0.59180015 0.61720002 0.5898 0.62209994 0.59080005 0.62464762 0.60400635 0.62250358
		 0.60569137 0.62480879 0.61107904 0.62501383 0.62007308 0.59670001 0.57910001 0.59670001
		 0.54980016 0.59670001 0.52150011 0.60549968 0.52150011 0.60159987 0.52050006 0.6006
		 0.51370001 0.60159975 0.54980028 0.60639971 0.54980016 0.60159975 0.57810009 0.60640001
		 0.57809997 0.59670001 0.52249998 0.5977 0.54979998 0.5977 0.57910013 0.64549977 0.61520004
		 0.63569975 0.61430007 0.62699986 0.61620003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1042 ".vt";
	setAttr ".vt[0:165]"  6.28679991 -0.29260001 -8.69970036 9.46850014 -0.3066 -8.68839931
		 7.89599991 0.98019999 -9.68789959 6.28200006 -0.3335 -5.13980007 10.21949959 0.41670001 -4.37680006
		 8.66180038 0.17739999 0.84640002 11.24419975 0.1066 -0.086499996 12.81740093 -0.2985 6.83160019
		 8.84539986 -0.2863 10.26130104 4.82149982 0.1184 5.21479988 13.049300194 -0.072499998 9.61069965
		 4.17929983 -0.096699998 9.7553997 12.79000092 -0.2836 12.88810158 4.64639997 -0.051600002 11.46240044
		 10.95750046 -0.2811 14.34259987 8.015899658 -0.2714 15.49569988 5.80410004 -0.509 14.17569923
		 4.47139978 -0.30070001 13.2741003 5.6487999 -0.26300001 15.15430069 0 157.8196106 14.25699997
		 0 157.06489563 14.22940063 1.12740004 156.91200256 13.78880024 0.97729999 157.93328857 14.061300278
		 2.0065000057 157.51689148 12.95789909 1.7651 158.30589294 13.24209976 2.5079999 158.77079773 12.33180046
		 0 158.91070557 14.51970005 0 159.82888794 14.49699974 1.060500026 159.90270996 14.1237011
		 1.014099956 158.85560608 14.16600037 1.88730001 159.5164032 13.18510056 1.78279996 158.75680542 13.26429939
		 0 156.89050293 12.98120022 0 159.85308838 14.52489853 0 160.28871155 14.97280025
		 1.43050003 160.32270813 14.4109993 1.041200042 159.92829895 14.14439964 2.1257 159.80960083 13.35079956
		 1.88399994 159.53460693 13.18760109 2.51670003 158.77449036 12.31779957 0 160.15280151 12.95900059
		 0 159.32119751 10.54179955 1.42620003 159.90649414 12.4411993 2.065500021 158.73149109 11.5927
		 2.0055000782 157.49630737 12.95599937 1.10930002 156.87979126 13.80299854 0 157.029296875 14.25220013
		 5.48950005 161.32350159 5.76800013 5.27510023 163.22439575 4.9224 4.79470015 161.23239136 6.019999981
		 6.22130013 162.19259644 5.32520008 6.73680019 163.12590027 5.076200008 5.2512002 164.85949707 4.86780024
		 5.41470003 163.98379517 5.86619997 7.17129993 165.26708984 4.82070017 6.75029993 166.13009644 5.039700031
		 5.73080015 165.98570251 5.72399998 8.19670105 9.57470131 -8.18300056 6.56949997 20.78359985 -3.37680006
		 6.40030098 9.19190025 -6.11159992 8.2638998 22.57679939 -4.9698 6.40369987 29.40030098 -2.17720008
		 10.20470047 22.022098541 -3.85840011 9.31519985 9.37110043 -7.058199883 10.46570015 19.5291996 -2.54419994
		 9.68099976 9.031000137 -4.17810011 9.78279972 17.47780037 -1.66359997 9.41259956 9.25790024 -1.86960006
		 8.7560997 16.95249939 -1.19630003 8.18710041 9.80840111 -0.98820001 6.97200012 9.53240013 -2.29229999
		 7.40799999 17.47559929 -1.9023 7.33769989 28.73220062 1.27939999 9.40200043 28.50559807 2.41330004
		 11.32579994 28.76670074 1.33790004 12.19260025 29.36939812 -1.075799942 11.36080074 29.5700016 -3.29460001
		 8.66180038 29.69709778 -4.10669994 6.75680017 38.93379974 0.1719 8.9557991 40.083202362 -2.11269999
		 6.23140001 45.99140167 3.024300098 11.7489996 39.67169952 -1.204 12.76900101 38.34980392 1.23670006
		 12.10840034 37.4951973 4.26340008 9.63059998 37.10589981 5.54099989 7.53490019 37.5041008 3.72909999
		 6.50530005 44.94720078 6.63570023 8.95030022 44.1536026 8.048400879 11.26900005 45.64160156 6.70160007
		 12.29629993 46.5725975 3.97720003 11.18540001 46.87209702 2.35089993 8.80860043 46.72060013 1.35710001
		 6.68989992 48.91110229 2.61750007 8.50139999 49.87660217 1.52470005 5.44540024 50.48799896 3.24309993
		 10.4633007 49.46289825 2.73769999 12.55629921 48.64180374 4.66219997 11.32409954 48.15499878 7.41069984
		 8.63379955 46.4557991 9.042600632 6.23360014 47.3472023 7.41069984 5.16750002 47.58649826 4.49900007
		 6.091700077 50.88409805 6.74209976 3.73270011 62.088603973 3.061199903 8.67510033 51.34420013 8.54189968
		 11.48980045 51.3492012 6.41730022 11.92910004 51.31570053 3.1170001 8.23649979 51.65449905 1.3721
		 8.17689991 61.43529892 0.53560001 12.98110104 62.83990097 2.55200005 12.37650013 63.7385025 8.63220024
		 8.15229988 63.9090004 10.55649853 4.75699997 63.34319687 7.96159983 4.42350006 74.39969635 2.70350003
		 5.03429985 75.56019592 8.007399559 2.39590001 84.72449493 0.46329999 3.70090008 86.25969696 8.58820057
		 7.92229986 75.84819794 10.38939953 13.46710014 76.13610077 8.51150036 12.76910019 75.35520172 2.50510001
		 7.5296998 73.91410065 -0.2361 6.55140018 83.96639252 -3.32620001 13.77259922 87.20489502 0.40439999
		 14.19270039 87.90000153 9.21519947 7.43149996 87.46990204 10.53899956 8.14930058 6.029300213 -8.44580078
		 9.42280006 5.60239983 -7.49700022 10.13469982 3.094099998 -8.65740013 7.98180008 3.033900023 -9.52190018
		 10.016199112 1.064700007 -8.84679985 10.79969978 1.067399979 -4.45510006 10.28480053 3.33299994 -4.66760015
		 11.1189003 6.18639994 -4.63339901 10.42029953 5.45480013 -2.66729999 10.18279934 4.43170023 0.72490001
		 12.073999405 1.7119 0.30340001 13.030099869 1.79289997 6.45909977 13.08780098 1.69330001 9.38409996
		 9.90990067 3.39709997 5.39470005 7.59579897 4.34840012 5.46670008 7.72480011 6.53130007 1.066400051
		 5.79279995 5.44810009 0.72469997 5.53679991 5.53439999 -2.83940005 4.65030003 2.052599907 -1.68509996
		 5.34969997 2.77909994 5.97389984 4.46320009 2.37579989 9.95259953 8.072701454 2.42799997 12.1796999
		 11.020500183 2.065000057 11.03069973 12.7489996 1.59060001 12.39410019 10.86089993 1.76619995 13.9231987
		 7.98920107 1.99430001 15.28139973 4.44630098 1.75370002 13.71610069 4.75390005 2.19930005 11.83450031
		 4.51789999 1.065799952 -5.34189987 5.20120001 3.93860006 -5.13940001 4.69040012 5.22650003 -5.22419977
		 6.56470013 5.4685998 -7.96589994 5.74490023 3.29559994 -8.67440033 5.54990005 0.92500001 -8.8355999
		 5.56599998 1.3678 15.25399971 2.56739998 155.89509583 1.028499961 3.22079992 158.64929199 3.79819989
		 2.34850001 158.18191528 1.6825 3.083600044 154.85490417 3.73609996 3.77130008 152.57710266 -0.50959998
		 3.53760004 157.25999451 6.39629984 3.95679998 152.16540527 3.17499995;
	setAttr ".vt[166:331]" 1.87030005 154.4763031 5.59579992 1.87059999 156.11331177 7.30049992
		 0 154.55799866 6.61859989 0 155.16929626 8.86329937 0 150.96360779 6.2249999 2.34139991 151.30599976 5.48680019
		 0 146.13839722 7.82210112 1.61919999 147.57989502 7.61129999 6.25619984 149.67901611 5.48400021
		 6.94890022 151.10699463 1.56239998 8.76469994 149.85061646 -2.45630002 15.070300102 142.091888428 -2.99320006
		 15.59570122 140.94340515 -0.27469999 15.35589981 145.83329773 -3.14319992 15.58320045 149.42150879 -1.42139995
		 15.94299889 150.92480469 0.95999998 15.94000053 149.26438904 4.072500229 15.76689911 145.87640381 5.37540007
		 15.88010025 143.59439087 5.45959997 15.68359947 141.89390564 4.074999809 2.34069991 160.52540588 1.77269995
		 3.72589993 162.24459839 3.23569989 3.83130002 160.22019958 6.064599991 4.80049992 164.56829834 1.87150002
		 5.29799986 167.78739929 1.53050005 5.76840019 168.10189819 6.94390011 5.52930021 169.81568909 1.75960004
		 5.40259981 165.50550842 7.85979986 4.49090004 166.95791626 10.9453001 5.87120008 164.34120178 7.87750006
		 5.73460007 163.47190857 7.93569994 4.63310003 160.58621216 8.47789955 4.47060013 159.91349792 6.80149984
		 4.375 157.34469604 7.018599987 4.42329979 156.6558075 9.3920002 4.33720016 159.013198853 8.98820019
		 5.85340023 170.56109619 7.22179985 5.15770006 172.21289063 2.32570004 5.34649992 172.24780273 7.39370012
		 4.65360022 173.47608948 3.12649989 4.21299982 174.29110718 6.68190002 3.77920008 173.95721436 10.018300056
		 3.93300009 172.4236145 11.56769943 4.14449978 170.68130493 12.027900696 4.4993 168.0073852539 11.9236002
		 4.038799763 156.18940735 7.75110006 3.8908999 156.10569763 9.15580082 2.076999903 175.28889465 7.353899
		 2.23600006 174.58590698 10.79839993 0 175.45269775 7.51599979 2.47129989 172.58770752 12.88549995
		 0 174.71440125 11.017000198 0 172.61360168 13.24180031 2.53180003 170.83349609 13.58329964
		 2.52489996 168.76800537 13.76989937 4.38000011 166.8993988 12.67289925 4.70039988 165.086807251 11.3689003
		 5.35930014 163.28840637 10.96409988 4.68009996 161.91500854 10.9406004 4.41099977 162.77389526 12.52759933
		 3.71029997 161.67489624 12.19030094 3.45050001 159.38520813 11.0051994324 3.22340012 157.96359253 11.05189991
		 3.0697999 156.041702271 10.95950031 2.40170002 155.15019226 10.65569973 1.43050003 154.24349976 11.90310001
		 0 154.12420654 12.43099976 2.075200081 154.62930298 12.92199898 0 154.27909851 13.64960003
		 1.40050006 156.012588501 13.47959995 2.2744 157.034591675 12.43729973 2.17420006 160.30349731 13.055199623
		 2.7112999 161.84989929 12.77320004 2.94300008 162.8421936 13.37999916 3.92840004 164.010299683 12.23960018
		 4.31169987 164.96730042 12.073300362 3.8908999 166.16171265 12.7682991 2.47359991 165.036697388 11.52950001
		 2.68039989 164.10379028 12.87260056 1.5072 164.82060242 13.45610046 0.83450001 164.57020569 13.87959957
		 1.16149998 162.72470093 14.24040031 1.1595 161.8302002 14.10599899 1.40569997 160.68910217 14.22359943
		 0 160.71730042 14.81699944 0.39179999 162.26780701 15.082099915 0.59759998 163.033401489 15.15680027
		 0.41960001 164.6927948 14.42539978 0.69770002 166.39230347 13.99729919 1.43840003 165.77909851 13.43760014
		 2.51950002 166.45368958 13.5437994 2.2974999 167.3624115 14.21529961 0 167.42651367 14.31710052
		 0 166.49899292 14.17039871 0 164.68479919 14.90770054 0 163.0048980713 15.71700001
		 0 168.99710083 13.83570004 0 170.87449646 13.84810066 0 156.052185059 13.88310146
		 0 156.605896 14.33440018 1.37049997 156.53439331 13.9222002 2.30649996 157.332901 12.87279987
		 0 152.64111328 -2.45810008 0 150.19949341 -3.93140006 3.50020003 149.13339233 -3.79390001
		 0 154.68299866 -1.62940001 0 156.046188354 -0.132 0 156.77549744 -0.4535 0 158.34190369 0.81209999
		 0 160.55540466 0.90259999 0 161.94419861 -0.26710001 2.58069992 161.95419312 0.80049998
		 2.96079993 164.41558838 -0.80159998 0 164.25059509 -1.96430004 0 167.15010071 -2.33509994
		 0 169.82440186 -1.48989999 3.50300002 167.30099487 -1.1401 3.56480002 169.84030151 -0.57209998
		 3.19250011 172.87509155 0.1636 0 173.17500305 -0.52469999 0 174.8184967 2.12540007
		 2.57990003 174.57040405 2.25099993 0 146.77589417 -4.85599995 0 135.2354126 -5.074100018
		 0 126.84370422 -2.46359992 0 122.39580536 -0.7105 0 115.44490051 0.1236 0 108.9076004 -3.11750007
		 0 93.57450104 -5.47910023 0 132.34690857 14.1260004 0 126.83730316 13.14599991 0 122.37550354 10.63519955
		 0 113.63689423 10.76889992 0 102.37369537 13.17950058 0 91.36599731 13.17950058 5.5935998 103.32218933 12.63999939
		 11.043700218 93.38089752 8.73790073 3.7888999 114.10289764 10.12760067 3.87280011 121.32860565 9.81280041
		 5.013500214 125.30340576 12.40120029 5.66590023 131.39309692 13.5302 5.86289978 137.76089478 13.045499802
		 0 138.082092285 13.51430035 0 141.96539307 12.063399315 5.12939978 142.59069824 11.54249954
		 9.3878994 142.43161011 10.6406002 9.76430035 137.625 11.53850079 9.49259853 130.1697998 11.73099995
		 7.98000002 123.70749664 10.43080044 7.40980005 120.2201004 6.79470015 6.74160004 115.84459686 7.29180002
		 9.95870018 105.45500183 9.15240002 10.60809994 107.47489929 4.37130022 11.37190056 93.87180328 -2.33010006
		 7.32329988 116.96620178 3.67190003 9.1111002 108.68439484 0.1079 3.81150007 108.9076004 -2.94849992
		 3.62089992 115.79120636 -0.2377 6.2494998 116.48600769 1.23239994 8.45030022 120.9730072 3.21309996
		 10.55959988 123.59909821 7.31330013 12.14249992 129.95870972 9.24329853 12.28700066 137.40940857 9.51659966
		 12.026599884 141.57521057 9.14070034 11.09829998 145.58789063 8.029399872 7.7803998 145.43739319 9.20950031;
	setAttr ".vt[332:497]" 2.52150011 146.12361145 9.88239956 8.91409969 147.97409058 7.421
		 13.58749962 149.15339661 4.97520018 13.62489986 145.72050476 6.20620012 13.8616991 140.50338745 6.77689981
		 13.80310059 138.48890686 4.47550011 13.15129948 132.78160095 5.48029995 10.79920006 124.95649719 2.89470005
		 7.21990013 121.75669861 0.59680003 3.19039989 122.39580536 -1.17250001 3.90809989 126.94779968 -2.90409994
		 9.16650009 126.54930878 -1.40209997 12.88069916 134.24490356 0.89179999 13.85229969 137.99681091 -0.108
		 11.18190002 135.47669983 -3.42269993 4.38399982 135.46809387 -4.39870024 2.0046999454 141.055496216 -4.66270018
		 0 141.06199646 -5.78719997 1.62979996 146.67680359 -3.95420003 3.056299925 146.581604 -5.11920023
		 3.50029993 141.63999939 -5.3427 9.46379948 141.45669556 -4.5474 13.64000034 141.35038757 -3.24609995
		 13.28109932 146.22019958 -3.5006001 9.15170097 146.25769043 -3.85489988 13.65470028 149.87838745 -1.94799995
		 9.87880039 150.26309204 1.26289999 13.947999 150.75090027 0.94559997 12.41540146 150.33029175 5.45319986
		 12.13080025 150.34919739 3.38930011 8.51589966 149.087799072 7.40570021 1.72979999 147.28300476 9.0043001175
		 0 144.85139465 9.85400009 2.5079999 158.77079773 12.33180046 0 160.71730042 14.81699944
		 0 162.10343933 14.89202404 0 162.18899536 15.043916702 0 163.0048980713 15.71700001
		 0 162.36779785 15.057407379 0 93.57450104 -5.47910023 0 88.3640213 2.84052205 0 87.90857697 1.62088704
		 0 88.30768585 1.471632 0 91.36599731 13.17950058 -6.28679991 -0.29260001 -8.69970036
		 -9.46850014 -0.3066 -8.68839931 -7.89599991 0.98019999 -9.68789959 -6.28200006 -0.3335 -5.13980007
		 -10.21949959 0.41670001 -4.37680006 -8.66180038 0.17739999 0.84640002 -11.24419975 0.1066 -0.086499996
		 -12.81740093 -0.2985 6.83160019 -8.84539986 -0.2863 10.26130104 -4.82149982 0.1184 5.21479988
		 -13.049300194 -0.072499998 9.61069965 -4.17929983 -0.096699998 9.7553997 -12.79000092 -0.2836 12.88810158
		 -4.64639997 -0.051600002 11.46240044 -10.95750046 -0.2811 14.34259987 -8.015899658 -0.2714 15.49569988
		 -5.80410004 -0.509 14.17569923 -4.47139978 -0.30070001 13.2741003 -5.6487999 -0.26300001 15.15430069
		 -1.12740004 156.91200256 13.78880024 -0.97729999 157.93328857 14.061300278 -2.0065000057 157.51689148 12.95789909
		 -1.7651 158.30589294 13.24209976 -2.5079999 158.77079773 12.33180046 -1.060500026 159.90270996 14.1237011
		 -1.014099956 158.85560608 14.16600037 -1.88730001 159.5164032 13.18510056 -1.78279996 158.75680542 13.26429939
		 -1.43050003 160.32270813 14.4109993 -1.041200042 159.92829895 14.14439964 -2.1257 159.80960083 13.35079956
		 -1.88399994 159.53460693 13.18760109 -2.51670003 158.77449036 12.31779957 -1.42620003 159.90649414 12.4411993
		 -2.065500021 158.73149109 11.5927 -2.0055000782 157.49630737 12.95599937 -1.10930002 156.87979126 13.80299854
		 -5.48950005 161.32350159 5.76800013 -5.27510023 163.22439575 4.9224 -4.79470015 161.23239136 6.019999981
		 -6.22130013 162.19259644 5.32520008 -6.73680019 163.12590027 5.076200008 -5.2512002 164.85949707 4.86780024
		 -5.41470003 163.98379517 5.86619997 -7.17129993 165.26708984 4.82070017 -6.75029993 166.13009644 5.039700031
		 -5.73080015 165.98570251 5.72399998 -8.19670105 9.57470131 -8.18300056 -6.56949997 20.78359985 -3.37680006
		 -6.40030098 9.19190025 -6.11159992 -8.2638998 22.57679939 -4.9698 -6.40369987 29.40030098 -2.17720008
		 -10.20470047 22.022098541 -3.85840011 -9.31519985 9.37110043 -7.058199883 -10.46570015 19.5291996 -2.54419994
		 -9.68099976 9.031000137 -4.17810011 -9.78279972 17.47780037 -1.66359997 -9.41259956 9.25790024 -1.86960006
		 -8.7560997 16.95249939 -1.19630003 -8.18710041 9.80840111 -0.98820001 -6.97200012 9.53240013 -2.29229999
		 -7.40799999 17.47559929 -1.9023 -7.33769989 28.73220062 1.27939999 -9.40200043 28.50559807 2.41330004
		 -11.32579994 28.76670074 1.33790004 -12.19260025 29.36939812 -1.075799942 -11.36080074 29.5700016 -3.29460001
		 -8.66180038 29.69709778 -4.10669994 -6.75680017 38.93379974 0.1719 -8.9557991 40.083202362 -2.11269999
		 -6.23140001 45.99140167 3.024300098 -11.7489996 39.67169952 -1.204 -12.76900101 38.34980392 1.23670006
		 -12.10840034 37.4951973 4.26340008 -9.63059998 37.10589981 5.54099989 -7.53490019 37.5041008 3.72909999
		 -6.50530005 44.94720078 6.63570023 -8.95030022 44.1536026 8.048400879 -11.26900005 45.64160156 6.70160007
		 -12.29629993 46.5725975 3.97720003 -11.18540001 46.87209702 2.35089993 -8.80860043 46.72060013 1.35710001
		 -6.68989992 48.91110229 2.61750007 -8.50139999 49.87660217 1.52470005 -5.44540024 50.48799896 3.24309993
		 -10.4633007 49.46289825 2.73769999 -12.55629921 48.64180374 4.66219997 -11.32409954 48.15499878 7.41069984
		 -8.63379955 46.4557991 9.042600632 -6.23360014 47.3472023 7.41069984 -5.16750002 47.58649826 4.49900007
		 -6.091700077 50.88409805 6.74209976 -3.73270011 62.088603973 3.061199903 -8.67510033 51.34420013 8.54189968
		 -11.48980045 51.3492012 6.41730022 -11.92910004 51.31570053 3.1170001 -8.23649979 51.65449905 1.3721
		 -8.17689991 61.43529892 0.53560001 -12.98110104 62.83990097 2.55200005 -12.37650013 63.7385025 8.63220024
		 -8.15229988 63.9090004 10.55649853 -4.75699997 63.34319687 7.96159983 -4.42350006 74.39969635 2.70350003
		 -5.03429985 75.56019592 8.007399559 -2.39590001 84.72449493 0.46329999 -3.70090008 86.25969696 8.58820057
		 -7.92229986 75.84819794 10.38939953 -13.46710014 76.13610077 8.51150036 -12.76910019 75.35520172 2.50510001
		 -7.5296998 73.91410065 -0.2361 -6.55140018 83.96639252 -3.32620001 -13.77259922 87.20489502 0.40439999
		 -14.19270039 87.90000153 9.21519947 -7.43149996 87.46990204 10.53899956 -8.14930058 6.029300213 -8.44580078
		 -9.42280006 5.60239983 -7.49700022 -10.13469982 3.094099998 -8.65740013 -7.98180008 3.033900023 -9.52190018
		 -10.016199112 1.064700007 -8.84679985 -10.79969978 1.067399979 -4.45510006 -10.28480053 3.33299994 -4.66760015
		 -11.1189003 6.18639994 -4.63339901;
	setAttr ".vt[498:663]" -10.42029953 5.45480013 -2.66729999 -10.18279934 4.43170023 0.72490001
		 -12.073999405 1.7119 0.30340001 -13.030099869 1.79289997 6.45909977 -13.08780098 1.69330001 9.38409996
		 -9.90990067 3.39709997 5.39470005 -7.59579897 4.34840012 5.46670008 -7.72480011 6.53130007 1.066400051
		 -5.79279995 5.44810009 0.72469997 -5.53679991 5.53439999 -2.83940005 -4.65030003 2.052599907 -1.68509996
		 -5.34969997 2.77909994 5.97389984 -4.46320009 2.37579989 9.95259953 -8.072701454 2.42799997 12.1796999
		 -11.020500183 2.065000057 11.03069973 -12.7489996 1.59060001 12.39410019 -10.86089993 1.76619995 13.9231987
		 -7.98920107 1.99430001 15.28139973 -4.44630098 1.75370002 13.71610069 -4.75390005 2.19930005 11.83450031
		 -4.51789999 1.065799952 -5.34189987 -5.20120001 3.93860006 -5.13940001 -4.69040012 5.22650003 -5.22419977
		 -6.56470013 5.4685998 -7.96589994 -5.74490023 3.29559994 -8.67440033 -5.54990005 0.92500001 -8.8355999
		 -5.56599998 1.3678 15.25399971 -2.56739998 155.89509583 1.028499961 -3.22079992 158.64929199 3.79819989
		 -2.34850001 158.18191528 1.6825 -3.083600044 154.85490417 3.73609996 -3.77130008 152.57710266 -0.50959998
		 -3.53760004 157.25999451 6.39629984 -3.95679998 152.16540527 3.17499995 -1.87030005 154.4763031 5.59579992
		 -1.87059999 156.11331177 7.30049992 -2.34139991 151.30599976 5.48680019 -1.61919999 147.57989502 7.61129999
		 -6.25619984 149.67901611 5.48400021 -6.94890022 151.10699463 1.56239998 -8.76469994 149.85061646 -2.45630002
		 -18.39179993 141.9750061 -0.292 -15.070300102 142.091888428 -2.99320006 -15.59570122 140.94340515 -0.27469999
		 -18.87190056 144.6809082 -2.90120006 -15.35589981 145.83329773 -3.14319992 -18.96979904 148.36820984 -1.63059998
		 -15.58320045 149.42150879 -1.42139995 -15.94299889 150.92480469 0.95999998 -19.49679947 149.89550781 1.25699997
		 -15.94000053 149.26438904 4.072500229 -19.17849922 148.12818909 4.22700024 -15.76689911 145.87640381 5.37540007
		 -18.97670174 144.73300171 4.44570017 -15.88010025 143.59439087 5.45959997 -18.75479889 142.81950378 3.66020012
		 -15.68359947 141.89390564 4.074999809 -2.34069991 160.52540588 1.77269995 -3.72589993 162.24459839 3.23569989
		 -3.83130002 160.22019958 6.064599991 -4.80049992 164.56829834 1.87150002 -5.29799986 167.78739929 1.53050005
		 -5.76840019 168.10189819 6.94390011 -5.52930021 169.81568909 1.75960004 -5.40259981 165.50550842 7.85979986
		 -4.49090004 166.95791626 10.9453001 -5.87120008 164.34120178 7.87750006 -5.73460007 163.47190857 7.93569994
		 -4.63310003 160.58621216 8.47789955 -4.47060013 159.91349792 6.80149984 -4.375 157.34469604 7.018599987
		 -4.42329979 156.6558075 9.3920002 -4.33720016 159.013198853 8.98820019 -5.85340023 170.56109619 7.22179985
		 -5.15770006 172.21289063 2.32570004 -5.34649992 172.24780273 7.39370012 -4.65360022 173.47608948 3.12649989
		 -4.21299982 174.29110718 6.68190002 -3.77920008 173.95721436 10.018300056 -3.93300009 172.4236145 11.56769943
		 -4.14449978 170.68130493 12.027900696 -4.4993 168.0073852539 11.9236002 -4.038799763 156.18940735 7.75110006
		 -3.8908999 156.10569763 9.15580082 -2.076999903 175.28889465 7.353899 -2.23600006 174.58590698 10.79839993
		 -2.47129989 172.58770752 12.88549995 -2.53180003 170.83349609 13.58329964 -2.52489996 168.76800537 13.76989937
		 -4.38000011 166.8993988 12.67289925 -4.70039988 165.086807251 11.3689003 -5.35930014 163.28840637 10.96409988
		 -4.68009996 161.91500854 10.9406004 -4.41099977 162.77389526 12.52759933 -3.71029997 161.67489624 12.19030094
		 -3.45050001 159.38520813 11.0051994324 -3.22340012 157.96359253 11.05189991 -3.0697999 156.041702271 10.95950031
		 -2.40170002 155.15019226 10.65569973 -1.43050003 154.24349976 11.90310001 -2.075200081 154.62930298 12.92199898
		 -1.40050006 156.012588501 13.47959995 -2.2744 157.034591675 12.43729973 -2.17420006 160.30349731 13.055199623
		 -2.7112999 161.84989929 12.77320004 -2.94300008 162.8421936 13.37999916 -3.92840004 164.010299683 12.23960018
		 -4.31169987 164.96730042 12.073300362 -3.8908999 166.16171265 12.7682991 -2.47359991 165.036697388 11.52950001
		 -2.68039989 164.10379028 12.87260056 -1.5072 164.82060242 13.45610046 -0.83450001 164.57020569 13.87959957
		 -1.16149998 162.72470093 14.24040031 -1.1595 161.8302002 14.10599899 -1.40569997 160.68910217 14.22359943
		 -0.39179999 162.26780701 15.082099915 -0.59759998 163.033401489 15.15680027 -0.41960001 164.6927948 14.42539978
		 -0.69770002 166.39230347 13.99729919 -1.43840003 165.77909851 13.43760014 -2.51950002 166.45368958 13.5437994
		 -2.2974999 167.3624115 14.21529961 -1.37049997 156.53439331 13.9222002 -2.30649996 157.332901 12.87279987
		 -3.50020003 149.13339233 -3.79390001 -2.58069992 161.95419312 0.80049998 -2.96079993 164.41558838 -0.80159998
		 -3.50300002 167.30099487 -1.1401 -3.56480002 169.84030151 -0.57209998 -3.19250011 172.87509155 0.1636
		 -2.57990003 174.57040405 2.25099993 -5.5935998 103.32218933 12.63999939 -11.043700218 93.38089752 8.73790073
		 -3.7888999 114.10289764 10.12760067 -3.87280011 121.32860565 9.81280041 -5.013500214 125.30340576 12.40120029
		 -5.66590023 131.39309692 13.5302 -5.86289978 137.76089478 13.045499802 -5.12939978 142.59069824 11.54249954
		 -9.3878994 142.43161011 10.6406002 -9.76430035 137.625 11.53850079 -9.49259853 130.1697998 11.73099995
		 -7.98000002 123.70749664 10.43080044 -7.40980005 120.2201004 6.79470015 -6.74160004 115.84459686 7.29180002
		 -9.95870018 105.45500183 9.15240002 -10.60809994 107.47489929 4.37130022 -11.37190056 93.87180328 -2.33010006
		 -7.32329988 116.96620178 3.67190003 -9.1111002 108.68439484 0.1079 -3.81150007 108.9076004 -2.94849992
		 -3.62089992 115.79120636 -0.2377 -6.2494998 116.48600769 1.23239994 -8.45030022 120.9730072 3.21309996
		 -10.55959988 123.59909821 7.31330013 -12.14249992 129.95870972 9.24329853 -12.28700066 137.40940857 9.51659966
		 -12.026599884 141.57521057 9.14070034 -11.09829998 145.58789063 8.029399872 -7.7803998 145.43739319 9.20950031
		 -2.52150011 146.12361145 9.88239956 -8.91409969 147.97409058 7.421 -13.58749962 149.15339661 4.97520018
		 -13.62489986 145.72050476 6.20620012 -13.8616991 140.50338745 6.77689981;
	setAttr ".vt[664:829]" -13.80310059 138.48890686 4.47550011 -13.15129948 132.78160095 5.48029995
		 -10.79920006 124.95649719 2.89470005 -7.21990013 121.75669861 0.59680003 -3.19039989 122.39580536 -1.17250001
		 -3.90809989 126.94779968 -2.90409994 -9.16650009 126.54930878 -1.40209997 -12.88069916 134.24490356 0.89179999
		 -13.85229969 137.99681091 -0.108 -11.18190002 135.47669983 -3.42269993 -4.38399982 135.46809387 -4.39870024
		 -2.0046999454 141.055496216 -4.66270018 -1.62979996 146.67680359 -3.95420003 -3.056299925 146.581604 -5.11920023
		 -3.50029993 141.63999939 -5.3427 -9.46379948 141.45669556 -4.5474 -13.64000034 141.35038757 -3.24609995
		 -13.28109932 146.22019958 -3.5006001 -9.15170097 146.25769043 -3.85489988 -13.65470028 149.87838745 -1.94799995
		 -9.87880039 150.26309204 1.26289999 -13.947999 150.75090027 0.94559997 -12.41540146 150.33029175 5.45319986
		 -12.13080025 150.34919739 3.38930011 -8.51589966 149.087799072 7.40570021 -1.72979999 147.28300476 9.0043001175
		 -2.5079999 158.77079773 12.33180046 85.40730286 143.62182617 4.26103258 85.12759399 142.62637329 4.95782471
		 85.97924805 143.14131165 4.97706127 83.34616089 143.99375916 4.82906199 83.28937531 145.023086548 3.89836359
		 80.94748688 144.52297974 4.4285903 80.92350006 145.9961853 3.88257504 79.07636261 145.88368225 3.51448011
		 77.58399963 145.067092896 4.098229408 85.52112579 144.37117004 4.88792992 83.25701141 145.77981567 4.69897461
		 80.51062012 146.77734375 4.61619329 76.84929657 147.28695679 4.17873859 78.6716156 145.3134613 1.97314942
		 79.0885849 147.15119934 0.55524814 80.67266846 147.043106079 1.96065521 76.95716858 147.49180603 1.34116054
		 80.75489044 146.98408508 0.80814981 83.38293457 145.82798767 1.82735085 83.10595703 145.2689209 0.87850219
		 86.30150604 143.96183777 2.093620777 86.031089783 143.26216125 1.36272502 86.53458405 142.67108154 2.12842035
		 80.99980927 144.84494019 1.38788617 80.56505585 146.30819702 2.6070528 83.0022964478 145.046539307 2.63758278
		 83.078445435 143.71214294 1.70615458 85.95398712 143.19241333 2.81291771 85.70835876 142.39041138 2.14002013
		 78.76152802 146.23948669 -1.64511514 80.311409 144.65411377 -2.58161211 80.64396667 145.62872314 -2.36826563
		 81.58650208 143.78657532 -3.10896158 81.85050201 144.75511169 -2.91124105 83.36450195 143.61296082 -3.23844671
		 82.64002228 142.745224 -3.29010725 83.72947693 143.090759277 -3.37567997 18.39179993 141.9750061 -0.292
		 18.87190056 144.6809082 -2.90120006 27.87989998 142.25619507 -0.2035 27.87810135 144.052200317 -1.98039997
		 37.95660019 141.41011047 0.3565 23.84430122 146.90559387 -1.75740004 18.96979904 148.36820984 -1.63059998
		 19.49679947 149.89550781 1.25699997 23.84430122 148.51989746 1.14349997 19.17849922 148.12818909 4.22700024
		 18.97670174 144.73300171 4.44570017 23.84430122 147.058105469 3.84039998 31.91559982 146.5710144 2.90490007
		 31.91559982 147.71121216 0.88529998 31.91559982 145.96090698 -1.18180001 38.57169724 143.145401 -2.0039000511
		 40.56699753 142.85540771 -2.18390012 40.63700104 140.62001038 0.51660001 38.15659714 146.050888062 -1.13370001
		 37.87659836 146.79100037 1.41670001 37.65650177 145.90090942 3.02699995 37.63650131 143.11039734 3.25699997
		 27.87989998 143.46760559 2.80279994 18.75479889 142.81950378 3.66020012 40.73210144 142.86039734 3.086999893
		 40.70709991 146.64100647 3.10700011 40.63700104 147.32110596 1.46669996 40.66699982 146.50100708 -1.073699951
		 43.092498779 143.23049927 -1.54879999 43.097400665 140.66999817 0.81660002 45.42309952 141.49668884 0.98930001
		 46.35099792 143.28311157 -1.34640002 59.48020172 142.47439575 1.13670003 43.087398529 145.99090576 -0.9637
		 43.087398529 147.8611908 1.55669999 48.57049942 146.36109924 -0.80500001 59.99530029 143.82229614 -1.11870003
		 64.53099823 143.11340332 1.12670004 64.77100372 144.14460754 -1.018700004 60.86040115 146.10110474 -0.60360003
		 65.31110382 145.95610046 -0.61360002 49.76160049 147.77560425 1.35029995 43.46749878 146.74099731 3.81710005
		 43.64749908 142.86039734 3.62210011 48.66339874 143.062698364 3.85840011 49.9211998 146.75450134 3.91980004
		 60.10029602 143.80400085 3.39199996 64.73249817 144.088897705 3.55209994 61.050395966 146.062515259 3.036999941
		 61.27050018 146.8565979 1.33669996 65.74119568 146.72050476 1.27670002 65.23110199 145.83670044 3.14700007
		 68.61170197 146.85560608 1.2967 76.70909882 147.57209778 -0.62442672 80.93202209 146.34877014 -1.17620087
		 81.37917328 145.68565369 -0.18609115 84.56584167 144.85548401 -1.4957695 84.14061737 144.45977783 -0.74777937
		 85.89250183 143.70281982 -1.37029433 85.31407928 143.43113708 -0.64436865 85.53782654 142.91789246 -1.14530015
		 85.55450439 143.30548096 -1.88466895 84.38323212 144.36686707 -1.95929158 81.52910614 145.2660675 -1.7544241
		 76.44894409 146.96438599 -2.44295239 69.47131348 145.92330933 -1.30387044 71.98465729 144.84083557 -2.78927183
		 68.43170166 145.84663391 -1.56999803 68.64071655 143.36439514 -2.051841021 66.46129608 143.91751099 -1.3937
		 67.37149811 146.15000916 -1.28369999 67.47650146 142.20269775 1.52170002 67.49900055 143.32749939 4.09469986
		 71.69143677 141.80378723 5.55252123 70.71968842 143.11947632 6.25948048 73.62467194 141.88166809 6.19510412
		 72.08114624 141.64801025 3.50079751 72.85240173 142.79040527 0.69660002 72.76168823 142.78437805 -2.4540832
		 76.089447021 143.71728516 -2.30048513 76.088882446 145.57374573 -2.86071062 78.094306946 146.18540955 -3.16202354
		 74.61600494 143.43261719 4.26625252 73.99347687 142.23616028 5.76161623 76.497612 142.49313354 6.29210329
		 75.7416687 141.42050171 7.18844652 77.53130341 140.92912292 7.51888466 77.85431671 142.10786438 6.44711304
		 78.81451416 141.14015198 7.84316254 79.42410278 142.046966553 7.84711218 78.95504761 142.87297058 8.2819519
		 77.39965057 143.17379761 7.77631569 76.014251709 143.47053528 7.12728786 74.85614777 143.49691772 5.95389223
		 75.22245789 144.93803406 5.31541443 76.50391388 146.34898376 5.040297985 80.45264435 146.25665283 5.51806593
		 83.21973419 144.87348938 5.66157055 85.22075653 143.69058228 5.71532488 68.11660004 145.56159973 3.67709994
		 75.54140472 146.68768311 4.51996231 73.065803528 144.79859924 5.73643255;
	setAttr ".vt[830:995]" 73.86645508 143.42558289 7.72286987 74.98416138 142.49975586 7.99036741
		 77.17224884 142.076370239 8.72684479 78.98569489 141.98234558 8.92685127 74.50092316 144.19668579 6.46657467
		 83.42974854 143.059707642 -4.049301624 81.95500946 144.18527222 -3.93228674 83.59254456 143.61419678 -3.9241128
		 82.070724487 144.64772034 -3.67779016 80.11338806 145.3805542 -3.50827146 79.71522522 146.28961182 -3.070730925
		 84.51346588 142.92430115 -1.14399445 83.85514832 143.71324158 -1.21932936 82.20294189 144.10302734 -0.66005731
		 78.63056183 147.9460907 2.050750732 78.5346756 147.84646606 -0.67656243 78.18317413 147.12145996 -2.85450745
		 78.87638855 147.32670593 4.53485775 78.33971405 147.27940369 4.8157444 79.64413452 146.70352173 3.91894531
		 78.98049927 146.96539307 3.9280653 78.36309814 147.095703125 3.83743191 77.15563202 147.54862976 3.044342518
		 78.077285767 147.28915405 3.36507678 78.75926208 147.27850342 3.22223806 79.60112762 147.13691711 3.037418365
		 79.35020447 147.91571045 0.89166313 78.56866455 148.17694092 0.9405781 77.85703278 148.13294983 0.70474291
		 76.93292236 147.63209534 0.2484203 78.14450073 148.053619385 0.47315836 78.65330505 148.0089111328 0.36842516
		 79.37480164 147.63919067 0.18438646 79.75882721 146.66929626 -1.7149291 78.42010498 147.51074219 -1.54335046
		 77.70233917 147.55532837 -1.44064426 77.056007385 147.52825928 -1.65685642 77.66334534 147.42918396 -1.97277474
		 78.35500336 147.29597473 -2.15610123 79.15373993 146.84895325 -2.32144594 -85.40730286 143.62182617 4.26103258
		 -85.12759399 142.62637329 4.95782471 -85.97924805 143.14131165 4.97706127 -83.34616089 143.99375916 4.82906199
		 -83.28937531 145.023086548 3.89836359 -80.94748688 144.52297974 4.4285903 -80.92350006 145.9961853 3.88257504
		 -79.07636261 145.88368225 3.51448011 -77.58399963 145.067092896 4.098229408 -85.52112579 144.37117004 4.88792992
		 -83.25701141 145.77981567 4.69897461 -80.51062012 146.77734375 4.61619329 -76.84929657 147.28695679 4.17873859
		 -78.6716156 145.3134613 1.97314942 -79.0885849 147.15119934 0.55524814 -80.67266846 147.043106079 1.96065521
		 -76.95716858 147.49180603 1.34116054 -80.75489044 146.98408508 0.80814981 -83.38293457 145.82798767 1.82735085
		 -83.10595703 145.2689209 0.87850219 -86.30150604 143.96183777 2.093620777 -86.031089783 143.26216125 1.36272502
		 -86.53458405 142.67108154 2.12842035 -80.99980927 144.84494019 1.38788617 -80.56505585 146.30819702 2.6070528
		 -83.0022964478 145.046539307 2.63758278 -83.078445435 143.71214294 1.70615458 -85.95398712 143.19241333 2.81291771
		 -85.70835876 142.39041138 2.14002013 -78.76152802 146.23948669 -1.64511514 -80.311409 144.65411377 -2.58161211
		 -80.64396667 145.62872314 -2.36826563 -81.58650208 143.78657532 -3.10896158 -81.85050201 144.75511169 -2.91124105
		 -83.36450195 143.61296082 -3.23844671 -82.64002228 142.745224 -3.29010725 -83.72947693 143.090759277 -3.37567997
		 -27.87989998 142.25619507 -0.2035 -27.87810135 144.052200317 -1.98039997 -37.95660019 141.41011047 0.3565
		 -23.84430122 146.90559387 -1.75740004 -23.84430122 148.51989746 1.14349997 -23.84430122 147.058105469 3.84039998
		 -31.91559982 146.5710144 2.90490007 -31.91559982 147.71121216 0.88529998 -31.91559982 145.96090698 -1.18180001
		 -38.57169724 143.145401 -2.0039000511 -40.56699753 142.85540771 -2.18390012 -40.63700104 140.62001038 0.51660001
		 -38.15659714 146.050888062 -1.13370001 -37.87659836 146.79100037 1.41670001 -37.65650177 145.90090942 3.02699995
		 -37.63650131 143.11039734 3.25699997 -27.87989998 143.46760559 2.80279994 -40.73210144 142.86039734 3.086999893
		 -40.70709991 146.64100647 3.10700011 -40.63700104 147.32110596 1.46669996 -40.66699982 146.50100708 -1.073699951
		 -43.092498779 143.23049927 -1.54879999 -43.097400665 140.66999817 0.81660002 -45.42309952 141.49668884 0.98930001
		 -46.35099792 143.28311157 -1.34640002 -59.48020172 142.47439575 1.13670003 -43.087398529 145.99090576 -0.9637
		 -43.087398529 147.8611908 1.55669999 -48.57049942 146.36109924 -0.80500001 -59.99530029 143.82229614 -1.11870003
		 -64.53099823 143.11340332 1.12670004 -64.77100372 144.14460754 -1.018700004 -60.86040115 146.10110474 -0.60360003
		 -65.31110382 145.95610046 -0.61360002 -49.76160049 147.77560425 1.35029995 -43.46749878 146.74099731 3.81710005
		 -43.64749908 142.86039734 3.62210011 -48.66339874 143.062698364 3.85840011 -49.9211998 146.75450134 3.91980004
		 -60.10029602 143.80400085 3.39199996 -64.73249817 144.088897705 3.55209994 -61.050395966 146.062515259 3.036999941
		 -61.27050018 146.8565979 1.33669996 -65.74119568 146.72050476 1.27670002 -65.23110199 145.83670044 3.14700007
		 -68.61170197 146.85560608 1.2967 -76.70909882 147.57209778 -0.62442672 -80.93202209 146.34877014 -1.17620087
		 -81.37917328 145.68565369 -0.18609115 -84.56584167 144.85548401 -1.4957695 -84.14061737 144.45977783 -0.74777937
		 -85.89250183 143.70281982 -1.37029433 -85.31407928 143.43113708 -0.64436865 -85.53782654 142.91789246 -1.14530015
		 -85.55450439 143.30548096 -1.88466895 -84.38323212 144.36686707 -1.95929158 -81.52910614 145.2660675 -1.7544241
		 -76.44894409 146.96438599 -2.44295239 -69.47131348 145.92330933 -1.30387044 -71.98465729 144.84083557 -2.78927183
		 -68.43170166 145.84663391 -1.56999803 -68.64071655 143.36439514 -2.051841021 -66.46129608 143.91751099 -1.3937
		 -67.37149811 146.15000916 -1.28369999 -67.47650146 142.20269775 1.52170002 -67.49900055 143.32749939 4.09469986
		 -71.69143677 141.80378723 5.55252123 -70.71968842 143.11947632 6.25948048 -73.62467194 141.88166809 6.19510412
		 -72.08114624 141.64801025 3.50079751 -72.85240173 142.79040527 0.69660002 -72.76168823 142.78437805 -2.4540832
		 -76.089447021 143.71728516 -2.30048513 -76.088882446 145.57374573 -2.86071062 -78.094306946 146.18540955 -3.16202354
		 -74.61600494 143.43261719 4.26625252 -73.99347687 142.23616028 5.76161623 -76.497612 142.49313354 6.29210329
		 -75.7416687 141.42050171 7.18844652 -77.53130341 140.92912292 7.51888466 -77.85431671 142.10786438 6.44711304
		 -78.81451416 141.14015198 7.84316254 -79.42410278 142.046966553 7.84711218 -78.95504761 142.87297058 8.2819519
		 -77.39965057 143.17379761 7.77631569 -76.014251709 143.47053528 7.12728786 -74.85614777 143.49691772 5.95389223
		 -75.22245789 144.93803406 5.31541443 -76.50391388 146.34898376 5.040297985;
	setAttr ".vt[996:1041]" -80.45264435 146.25665283 5.51806593 -83.21973419 144.87348938 5.66157055
		 -85.22075653 143.69058228 5.71532488 -68.11660004 145.56159973 3.67709994 -75.54140472 146.68768311 4.51996231
		 -73.065803528 144.79859924 5.73643255 -73.86645508 143.42558289 7.72286987 -74.98416138 142.49975586 7.99036741
		 -77.17224884 142.076370239 8.72684479 -78.98569489 141.98234558 8.92685127 -74.50092316 144.19668579 6.46657467
		 -83.42974854 143.059707642 -4.049301624 -81.95500946 144.18527222 -3.93228674 -83.59254456 143.61419678 -3.9241128
		 -82.070724487 144.64772034 -3.67779016 -80.11338806 145.3805542 -3.50827146 -79.71522522 146.28961182 -3.070730925
		 -84.51346588 142.92430115 -1.14399445 -83.85514832 143.71324158 -1.21932936 -82.20294189 144.10302734 -0.66005731
		 -78.63056183 147.9460907 2.050750732 -78.5346756 147.84646606 -0.67656243 -78.18317413 147.12145996 -2.85450745
		 -78.87638855 147.32670593 4.53485775 -78.33971405 147.27940369 4.8157444 -79.64413452 146.70352173 3.91894531
		 -78.98049927 146.96539307 3.9280653 -78.36309814 147.095703125 3.83743191 -77.15563202 147.54862976 3.044342518
		 -78.077285767 147.28915405 3.36507678 -78.75926208 147.27850342 3.22223806 -79.60112762 147.13691711 3.037418365
		 -79.35020447 147.91571045 0.89166313 -78.56866455 148.17694092 0.9405781 -77.85703278 148.13294983 0.70474291
		 -76.93292236 147.63209534 0.2484203 -78.14450073 148.053619385 0.47315836 -78.65330505 148.0089111328 0.36842516
		 -79.37480164 147.63919067 0.18438646 -79.75882721 146.66929626 -1.7149291 -78.42010498 147.51074219 -1.54335046
		 -77.70233917 147.55532837 -1.44064426 -77.056007385 147.52825928 -1.65685642 -77.66334534 147.42918396 -1.97277474
		 -78.35500336 147.29597473 -2.15610123 -79.15373993 146.84895325 -2.32144594;
	setAttr -s 3036 ".ed";
	setAttr ".ed[0:165]"  0 2 0 2 1 0 1 0 0 1 3 0 3 0 0 1 4 0 4 3 0 4 5 0 5 3 0
		 4 6 0 6 5 0 6 7 0 7 5 0 8 5 0 7 8 0 9 5 0 8 9 0 7 10 0 10 8 0 11 9 0 8 11 0 12 8 0
		 10 12 0 13 11 0 8 13 0 12 14 0 14 8 0 14 15 0 15 8 0 16 8 0 15 16 0 16 13 0 16 17 0
		 17 13 0 18 17 0 16 18 0 15 18 0 20 21 0 21 19 0 19 20 0 22 19 0 21 22 0 21 23 0 23 22 0
		 24 22 0 23 24 0 23 365 0 365 24 0 26 28 0 28 27 0 27 26 0 26 29 0 29 28 0 29 30 0
		 30 28 0 29 31 0 31 30 0 31 25 0 25 30 0 33 35 0 35 34 0 34 33 0 33 36 0 36 35 0 36 37 0
		 37 35 0 36 38 0 38 37 0 38 39 0 39 37 0 40 36 0 33 40 0 40 42 0 42 36 0 42 38 0 42 39 0
		 42 43 0 43 39 0 41 43 0 42 41 0 40 41 0 44 39 0 43 44 0 43 32 0 32 44 0 45 44 0 32 45 0
		 41 32 0 46 45 0 32 46 0 47 49 0 49 48 0 48 47 0 48 50 0 50 47 0 51 50 0 48 51 0 48 52 0
		 52 51 0 51 53 0 53 50 0 53 47 0 53 49 0 51 54 0 54 53 0 54 55 0 55 53 0 56 53 0 55 56 0
		 52 55 0 54 52 0 52 56 0 57 59 0 59 58 0 58 57 0 58 60 0 60 57 0 61 60 0 58 61 0 60 62 0
		 62 57 0 62 63 0 63 57 0 62 64 0 64 63 0 64 65 0 65 63 0 64 66 0 66 65 0 66 67 0 67 65 0
		 66 68 0 68 67 0 68 69 0 69 67 0 70 69 0 68 70 0 68 71 0 71 70 0 59 70 0 71 59 0 71 58 0
		 71 72 0 72 58 0 72 61 0 73 72 0 71 73 0 68 73 0 66 73 0 74 73 0 66 74 0 64 74 0 75 74 0
		 64 75 0 62 75 0 76 75 0 62 76 0 60 76 0 77 76 0 60 77 0 61 77 0 78 77 0 61 78 0 79 77 0
		 78 79 0 78 80 0;
	setAttr ".ed[166:331]" 80 79 0 79 81 0 81 77 0 81 76 0 81 82 0 82 76 0 82 75 0
		 82 83 0 83 75 0 83 74 0 83 84 0 84 74 0 84 73 0 84 85 0 85 73 0 85 72 0 85 61 0 85 78 0
		 85 80 0 85 86 0 86 80 0 87 86 0 85 87 0 84 87 0 83 87 0 88 87 0 83 88 0 83 89 0 89 88 0
		 82 89 0 81 89 0 90 89 0 81 90 0 81 91 0 91 90 0 79 91 0 80 91 0 92 91 0 80 92 0 93 91 0
		 92 93 0 92 94 0 94 93 0 93 95 0 95 91 0 95 90 0 95 89 0 95 96 0 96 89 0 96 88 0 96 97 0
		 97 88 0 97 87 0 97 98 0 98 87 0 99 87 0 98 99 0 99 86 0 99 100 0 100 86 0 100 80 0
		 100 92 0 100 94 0 100 101 0 101 94 0 99 101 0 102 94 0 101 102 0 103 101 0 99 103 0
		 98 103 0 97 103 0 104 103 0 97 104 0 96 104 0 105 104 0 96 105 0 95 105 0 106 105 0
		 95 106 0 93 106 0 94 106 0 107 106 0 94 107 0 102 107 0 107 105 0 107 108 0 108 105 0
		 108 104 0 108 109 0 109 104 0 109 103 0 109 110 0 110 103 0 111 103 0 110 111 0 111 101 0
		 111 102 0 112 102 0 111 112 0 111 113 0 113 112 0 110 113 0 114 112 0 113 114 0 113 115 0
		 115 114 0 116 115 0 113 116 0 110 116 0 109 116 0 117 116 0 109 117 0 109 118 0 118 117 0
		 108 118 0 108 119 0 119 118 0 107 119 0 102 119 0 112 119 0 112 120 0 120 119 0 120 118 0
		 114 120 0 120 121 0 121 118 0 121 117 0 121 122 0 122 117 0 122 123 0 123 117 0 123 116 0
		 123 115 0 124 57 0 63 124 0 63 125 0 125 124 0 65 125 0 125 126 0 126 124 0 126 127 0
		 127 124 0 126 128 0 128 127 0 128 2 0 2 127 0 128 1 0 128 4 0 128 129 0 129 4 0 129 6 0
		 130 129 0 128 130 0 126 130 0 125 130 0 131 130 0 125 131 0 65 131 0 132 130 0 131 132 0
		 65 132 0 67 132 0 67 133 0 133 132 0 133 130 0;
	setAttr ".ed[332:497]" 133 134 0 134 130 0 134 129 0 134 6 0 134 7 0 135 7 0
		 134 135 0 133 135 0 135 136 0 136 7 0 136 10 0 137 136 0 135 137 0 133 137 0 138 137 0
		 133 138 0 133 139 0 139 138 0 67 139 0 69 139 0 70 139 0 70 140 0 140 139 0 140 138 0
		 141 140 0 70 141 0 59 141 0 141 142 0 142 140 0 142 9 0 9 140 0 143 140 0 9 143 0
		 143 138 0 143 144 0 144 138 0 145 138 0 144 145 0 145 137 0 145 146 0 146 137 0 146 136 0
		 146 147 0 147 136 0 147 10 0 147 12 0 148 12 0 147 148 0 146 148 0 145 148 0 149 148 0
		 145 149 0 145 150 0 150 149 0 151 150 0 145 151 0 144 151 0 13 151 0 144 13 0 13 150 0
		 144 11 0 143 11 0 142 5 0 142 3 0 152 3 0 142 152 0 142 153 0 153 152 0 141 153 0
		 141 154 0 154 153 0 59 154 0 59 155 0 155 154 0 155 153 0 124 155 0 59 124 0 127 155 0
		 127 156 0 156 155 0 156 153 0 156 157 0 157 153 0 157 152 0 157 3 0 157 0 0 157 2 0
		 157 127 0 148 14 0 148 15 0 149 15 0 149 158 0 158 15 0 150 158 0 158 18 0 150 18 0
		 150 17 0 159 161 0 161 160 0 160 159 0 160 162 0 162 159 0 163 159 0 162 163 0 160 164 0
		 164 162 0 165 163 0 162 165 0 164 166 0 166 162 0 166 165 0 164 167 0 167 166 0 167 168 0
		 168 166 0 167 169 0 169 168 0 170 166 0 168 170 0 170 171 0 171 166 0 171 165 0 172 171 0
		 170 172 0 172 173 0 173 171 0 173 174 0 174 171 0 174 165 0 174 175 0 175 165 0 175 163 0
		 175 176 0 176 163 0 178 177 0 177 179 0 179 180 0 180 181 0 181 182 0 182 183 0 183 184 0
		 184 185 0 185 178 0 161 186 0 186 160 0 186 187 0 187 160 0 188 160 0 187 188 0 188 164 0
		 48 188 0 187 48 0 187 52 0 187 189 0 189 52 0 189 56 0 189 190 0 190 56 0 190 191 0
		 191 56 0 192 191 0 190 192 0 191 193 0 193 56 0 193 53 0 194 193 0;
	setAttr ".ed[498:663]" 191 194 0 193 195 0 195 53 0 195 196 0 196 53 0 197 53 0
		 196 197 0 197 49 0 197 198 0 198 49 0 188 49 0 198 188 0 198 164 0 198 199 0 199 164 0
		 211 164 0 199 211 0 211 167 0 200 212 0 212 211 0 211 200 0 199 200 0 201 200 0 199 201 0
		 198 201 0 197 201 0 202 194 0 191 202 0 192 202 0 203 202 0 192 203 0 204 202 0 203 204 0
		 203 205 0 205 204 0 206 204 0 205 206 0 206 207 0 207 204 0 207 208 0 208 204 0 209 204 0
		 208 209 0 209 202 0 209 210 0 210 202 0 210 194 0 206 213 0 213 207 0 213 214 0 214 207 0
		 214 208 0 215 214 0 213 215 0 214 216 0 216 208 0 216 209 0 217 216 0 214 217 0 215 217 0
		 218 216 0 217 218 0 218 219 0 219 216 0 219 209 0 219 220 0 220 209 0 220 210 0 220 221 0
		 221 210 0 221 194 0 221 222 0 222 194 0 222 193 0 222 195 0 222 223 0 223 195 0 223 196 0
		 223 224 0 224 196 0 224 197 0 225 224 0 223 225 0 222 225 0 225 226 0 226 224 0 226 227 0
		 227 224 0 227 197 0 227 201 0 227 228 0 228 201 0 228 200 0 228 229 0 229 200 0 229 212 0
		 229 230 0 230 212 0 230 167 0 167 212 0 230 169 0 230 231 0 231 169 0 232 169 0 231 232 0
		 233 231 0 230 233 0 229 233 0 233 232 0 233 234 0 234 232 0 235 234 0 233 235 0 233 236 0
		 236 235 0 229 236 0 228 236 0 39 236 0 228 39 0 227 39 0 237 39 0 227 237 0 226 237 0
		 238 237 0 226 238 0 226 239 0 239 238 0 225 239 0 225 240 0 240 239 0 222 240 0 222 241 0
		 241 240 0 242 241 0 222 242 0 221 242 0 242 243 0 243 241 0 243 240 0 243 244 0 244 240 0
		 244 239 0 245 239 0 244 245 0 243 245 0 245 246 0 246 239 0 246 247 0 247 239 0 247 238 0
		 247 248 0 248 238 0 248 237 0 248 249 0 249 237 0 37 237 0 249 37 0 249 35 0 249 34 0
		 250 34 0 249 250 0 248 366 0 366 250 0 251 368 0 368 367 0 367 248 0;
	setAttr ".ed[664:829]" 248 251 0 248 252 0 252 251 0 247 252 0 247 253 0 253 252 0
		 246 253 0 246 254 0 254 253 0 255 254 0 246 255 0 245 255 0 243 255 0 243 256 0 256 255 0
		 256 254 0 242 256 0 221 256 0 257 256 0 221 257 0 257 254 0 220 257 0 258 254 0 257 258 0
		 220 258 0 258 259 0 259 254 0 259 253 0 259 260 0 260 253 0 260 252 0 260 261 0 261 369 0
		 369 252 0 252 370 0 370 368 0 262 258 0 220 262 0 219 262 0 263 262 0 219 263 0 218 263 0
		 235 264 0 264 234 0 235 265 0 265 264 0 266 46 0 46 265 0 265 266 0 235 266 0 266 45 0
		 235 267 0 267 266 0 267 45 0 236 267 0 39 267 0 44 267 0 268 270 0 270 269 0 269 268 0
		 268 163 0 163 270 0 176 270 0 271 163 0 268 271 0 272 159 0 159 271 0 271 272 0 273 159 0
		 272 273 0 273 274 0 274 161 0 161 273 0 274 186 0 274 275 0 275 186 0 275 276 0 276 277 0
		 277 275 0 277 186 0 277 187 0 277 189 0 278 189 0 277 278 0 276 278 0 279 278 0 276 279 0
		 279 280 0 280 278 0 281 282 0 282 280 0 280 281 0 282 278 0 282 189 0 282 190 0 282 283 0
		 283 190 0 281 283 0 283 192 0 283 203 0 284 203 0 283 284 0 281 284 0 284 205 0 285 284 0
		 281 285 0 213 286 0 286 215 0 287 286 0 213 287 0 285 286 0 287 285 0 287 284 0 287 205 0
		 287 206 0 299 300 0 300 301 0 301 299 0 301 298 0 298 299 0 300 302 0 302 301 0 301 303 0
		 303 298 0 303 304 0 304 298 0 297 298 0 304 297 0 304 305 0 305 297 0 296 297 0 305 296 0
		 305 306 0 306 296 0 295 296 0 306 295 0 306 307 0 307 295 0 308 295 0 307 308 0 310 309 0
		 309 308 0 308 310 0 307 310 0 311 310 0 307 311 0 307 312 0 312 311 0 306 312 0 306 313 0
		 313 312 0 305 313 0 305 314 0 314 313 0 304 314 0 304 315 0 315 314 0 316 315 0 304 316 0
		 303 316 0 317 316 0 303 317 0 301 317 0 302 317 0 302 318 0 318 317 0;
	setAttr ".ed[830:995]" 318 316 0 319 318 0 302 319 0 318 320 0 320 316 0 320 315 0
		 321 320 0 318 321 0 319 321 0 322 321 0 319 322 0 319 294 0 294 322 0 293 322 0 294 293 0
		 293 292 0 292 322 0 292 323 0 323 322 0 323 321 0 291 323 0 292 291 0 323 324 0 324 321 0
		 324 320 0 324 325 0 325 320 0 325 315 0 325 326 0 326 315 0 326 314 0 326 327 0 327 314 0
		 327 313 0 327 328 0 328 313 0 328 312 0 328 329 0 329 312 0 329 311 0 329 330 0 330 311 0
		 330 331 0 331 311 0 331 310 0 331 332 0 332 310 0 332 309 0 333 332 0 331 333 0 330 333 0
		 334 333 0 330 334 0 330 335 0 335 334 0 329 335 0 329 336 0 336 335 0 328 336 0 328 337 0
		 337 336 0 338 337 0 328 338 0 327 338 0 339 338 0 327 339 0 326 339 0 325 339 0 340 339 0
		 325 340 0 324 340 0 323 340 0 341 340 0 323 341 0 291 341 0 290 341 0 291 290 0 290 342 0
		 342 341 0 342 340 0 289 342 0 290 289 0 342 343 0 343 340 0 343 339 0 343 344 0 344 339 0
		 344 338 0 344 337 0 344 345 0 345 337 0 346 345 0 344 346 0 343 346 0 347 346 0 343 347 0
		 342 347 0 289 347 0 348 347 0 289 348 0 289 349 0 349 348 0 288 348 0 349 288 0 350 348 0
		 288 350 0 288 269 0 269 350 0 270 350 0 270 351 0 351 350 0 351 348 0 351 352 0 352 348 0
		 352 347 0 352 353 0 353 347 0 353 346 0 353 354 0 354 346 0 354 345 0 355 354 0 353 355 0
		 353 356 0 356 355 0 352 356 0 351 356 0 270 356 0 176 356 0 176 355 0 357 355 0 176 357 0
		 176 358 0 358 357 0 175 358 0 358 359 0 359 357 0 359 180 0 180 357 0 180 355 0 359 181 0
		 179 355 0 177 355 0 177 354 0 177 345 0 178 345 0 178 337 0 185 337 0 185 336 0 184 336 0
		 184 335 0 183 335 0 183 334 0 182 334 0 182 359 0 359 334 0 359 360 0 360 334 0 360 333 0
		 361 360 0 359 361 0 358 361 0 361 362 0 362 360 0 362 333 0 362 332 0;
	setAttr ".ed[996:1161]" 362 363 0 363 332 0 174 363 0 362 174 0 361 174 0 358 174 0
		 173 363 0 172 363 0 364 363 0 172 364 0 364 332 0 364 309 0 120 319 0 319 121 0 120 371 0
		 371 294 0 122 302 0 302 123 0 300 123 0 121 302 0 115 372 0 372 373 0 373 114 0 300 375 0
		 375 115 0 367 366 0 369 370 0 374 371 0 120 374 0 373 374 0 375 372 0 376 377 0 377 378 0
		 378 376 0 376 379 0 379 377 0 379 380 0 380 377 0 379 381 0 381 380 0 381 382 0 382 380 0
		 381 383 0 383 382 0 384 383 0 381 384 0 385 384 0 381 385 0 384 386 0 386 383 0 387 384 0
		 385 387 0 388 386 0 384 388 0 389 384 0 387 389 0 384 390 0 390 388 0 384 391 0 391 390 0
		 392 391 0 384 392 0 389 392 0 389 393 0 393 392 0 394 392 0 393 394 0 394 391 0 19 395 0
		 395 20 0 396 395 0 19 396 0 396 397 0 397 395 0 398 397 0 396 398 0 398 690 0 690 397 0
		 27 400 0 400 26 0 400 401 0 401 26 0 400 402 0 402 401 0 402 403 0 403 401 0 402 399 0
		 399 403 0 34 404 0 404 33 0 404 405 0 405 33 0 404 406 0 406 405 0 406 407 0 407 405 0
		 406 408 0 408 407 0 405 40 0 405 409 0 409 40 0 407 409 0 408 409 0 408 410 0 410 409 0
		 41 409 0 410 41 0 411 410 0 408 411 0 411 32 0 32 410 0 412 32 0 411 412 0 412 46 0
		 413 414 0 414 415 0 415 413 0 413 416 0 416 414 0 417 414 0 416 417 0 417 418 0 418 414 0
		 416 419 0 419 417 0 413 419 0 415 419 0 419 420 0 420 417 0 419 421 0 421 420 0 422 421 0
		 419 422 0 418 420 0 421 418 0 422 418 0 423 424 0 424 425 0 425 423 0 423 426 0 426 424 0
		 427 424 0 426 427 0 423 428 0 428 426 0 423 429 0 429 428 0 429 430 0 430 428 0 429 431 0
		 431 430 0 431 432 0 432 430 0 431 433 0 433 432 0 433 434 0 434 432 0 433 435 0 435 434 0
		 436 434 0 435 436 0 436 437 0 437 434 0 425 437 0 436 425 0 424 437 0;
	setAttr ".ed[1162:1327]" 424 438 0 438 437 0 427 438 0 439 437 0 438 439 0 439 434 0
		 439 432 0 440 432 0 439 440 0 440 430 0 441 430 0 440 441 0 441 428 0 442 428 0 441 442 0
		 442 426 0 443 426 0 442 443 0 443 427 0 444 427 0 443 444 0 445 444 0 443 445 0 445 446 0
		 446 444 0 443 447 0 447 445 0 442 447 0 442 448 0 448 447 0 441 448 0 441 449 0 449 448 0
		 440 449 0 440 450 0 450 449 0 439 450 0 439 451 0 451 450 0 438 451 0 427 451 0 444 451 0
		 446 451 0 446 452 0 452 451 0 453 451 0 452 453 0 453 450 0 453 449 0 454 449 0 453 454 0
		 454 455 0 455 449 0 455 448 0 455 447 0 456 447 0 455 456 0 456 457 0 457 447 0 457 445 0
		 457 446 0 458 446 0 457 458 0 459 458 0 457 459 0 459 460 0 460 458 0 457 461 0 461 459 0
		 456 461 0 455 461 0 455 462 0 462 461 0 454 462 0 454 463 0 463 462 0 453 463 0 453 464 0
		 464 463 0 465 464 0 453 465 0 452 465 0 452 466 0 466 465 0 446 466 0 458 466 0 460 466 0
		 460 467 0 467 466 0 467 465 0 468 467 0 460 468 0 469 465 0 467 469 0 469 464 0 469 463 0
		 470 463 0 469 470 0 470 462 0 471 462 0 470 471 0 471 461 0 472 461 0 471 472 0 472 459 0
		 472 460 0 473 460 0 472 473 0 473 468 0 471 473 0 471 474 0 474 473 0 470 474 0 470 475 0
		 475 474 0 469 475 0 469 476 0 476 475 0 477 476 0 469 477 0 467 477 0 468 477 0 478 477 0
		 468 478 0 478 479 0 479 477 0 479 476 0 480 479 0 478 480 0 480 481 0 481 479 0 482 479 0
		 481 482 0 482 476 0 482 475 0 483 475 0 482 483 0 483 484 0 484 475 0 484 474 0 484 485 0
		 485 474 0 485 473 0 485 468 0 485 478 0 485 486 0 486 478 0 484 486 0 486 480 0 484 487 0
		 487 486 0 483 487 0 483 488 0 488 487 0 483 489 0 489 488 0 482 489 0 481 489 0 490 429 0
		 423 490 0 490 491 0 491 429 0 491 431 0 490 492 0 492 491 0 490 493 0;
	setAttr ".ed[1328:1493]" 493 492 0 493 494 0 494 492 0 493 378 0 378 494 0 377 494 0
		 380 494 0 380 495 0 495 494 0 382 495 0 496 494 0 495 496 0 496 492 0 496 491 0 497 491 0
		 496 497 0 497 431 0 498 497 0 496 498 0 498 431 0 498 433 0 498 499 0 499 433 0 496 499 0
		 496 500 0 500 499 0 495 500 0 382 500 0 383 500 0 501 500 0 383 501 0 501 499 0 383 502 0
		 502 501 0 386 502 0 503 501 0 502 503 0 503 499 0 504 499 0 503 504 0 504 505 0 505 499 0
		 505 433 0 505 435 0 505 436 0 505 506 0 506 436 0 504 506 0 507 436 0 506 507 0 507 425 0
		 506 508 0 508 507 0 506 385 0 385 508 0 509 385 0 506 509 0 504 509 0 504 510 0 510 509 0
		 511 510 0 504 511 0 503 511 0 503 512 0 512 511 0 502 512 0 502 513 0 513 512 0 386 513 0
		 388 513 0 514 513 0 388 514 0 514 512 0 514 511 0 515 511 0 514 515 0 515 516 0 516 511 0
		 517 511 0 516 517 0 517 510 0 389 510 0 517 389 0 516 389 0 387 510 0 387 509 0 381 508 0
		 379 508 0 518 508 0 379 518 0 518 519 0 519 508 0 519 507 0 519 520 0 520 507 0 520 425 0
		 520 521 0 521 425 0 519 521 0 490 425 0 521 490 0 521 493 0 521 522 0 522 493 0 519 522 0
		 519 523 0 523 522 0 518 523 0 379 523 0 376 523 0 378 523 0 493 523 0 390 514 0 391 514 0
		 391 515 0 391 524 0 524 515 0 524 516 0 394 524 0 394 516 0 393 516 0 525 526 0 526 527 0
		 527 525 0 525 528 0 528 526 0 529 528 0 525 529 0 528 530 0 530 526 0 531 528 0 529 531 0
		 528 532 0 532 530 0 531 532 0 532 533 0 533 530 0 532 168 0 168 533 0 169 533 0 532 170 0
		 532 534 0 534 170 0 531 534 0 534 172 0 534 535 0 535 172 0 534 536 0 536 535 0 531 536 0
		 531 537 0 537 536 0 529 537 0 529 538 0 538 537 0 539 540 0 540 541 0 541 539 0 539 542 0
		 542 540 0 542 543 0 543 540 0 544 542 0 544 543 0 544 545 0 545 543 0;
	setAttr ".ed[1494:1659]" 546 545 0 544 546 0 547 546 0 544 547 0 547 548 0 548 546 0
		 549 547 0 549 548 0 550 548 0 549 550 0 551 550 0 549 551 0 551 552 0 552 550 0 553 551 0
		 553 552 0 554 552 0 553 554 0 539 554 0 553 539 0 541 554 0 526 555 0 555 527 0 526 556 0
		 556 555 0 557 556 0 526 557 0 530 557 0 414 556 0 557 414 0 418 556 0 418 558 0 558 556 0
		 422 558 0 422 559 0 559 558 0 422 560 0 560 559 0 561 559 0 560 561 0 422 562 0 562 560 0
		 419 562 0 563 560 0 562 563 0 419 564 0 564 562 0 419 565 0 565 564 0 566 565 0 419 566 0
		 415 566 0 415 567 0 567 566 0 557 567 0 415 557 0 530 567 0 530 568 0 568 567 0 580 568 0
		 530 580 0 533 580 0 569 580 0 580 581 0 581 569 0 569 568 0 570 568 0 569 570 0 570 567 0
		 570 566 0 571 560 0 563 571 0 571 561 0 572 561 0 571 572 0 573 572 0 571 573 0 573 574 0
		 574 572 0 575 574 0 573 575 0 573 576 0 576 575 0 573 577 0 577 576 0 578 577 0 573 578 0
		 571 578 0 571 579 0 579 578 0 563 579 0 576 582 0 582 575 0 576 583 0 583 582 0 577 583 0
		 215 582 0 583 215 0 577 584 0 584 583 0 578 584 0 217 583 0 584 217 0 584 218 0 584 585 0
		 585 218 0 578 585 0 578 586 0 586 585 0 579 586 0 579 587 0 587 586 0 563 587 0 563 588 0
		 588 587 0 562 588 0 564 588 0 564 589 0 589 588 0 565 589 0 565 590 0 590 589 0 566 590 0
		 591 589 0 590 591 0 591 588 0 590 592 0 592 591 0 590 593 0 593 592 0 566 593 0 570 593 0
		 570 594 0 594 593 0 569 594 0 569 595 0 595 594 0 581 595 0 581 596 0 596 595 0 581 533 0
		 533 596 0 169 596 0 169 597 0 597 596 0 232 597 0 598 596 0 597 598 0 598 595 0 232 598 0
		 234 598 0 599 598 0 234 599 0 599 600 0 600 598 0 600 595 0 600 594 0 408 594 0 600 408 0
		 408 593 0 601 593 0 408 601 0 601 592 0 602 592 0 601 602 0 602 603 0;
	setAttr ".ed[1660:1825]" 603 592 0 603 591 0 603 604 0 604 591 0 604 588 0 604 605 0
		 605 588 0 606 588 0 605 606 0 606 587 0 605 607 0 607 606 0 604 607 0 604 608 0 608 607 0
		 603 608 0 609 608 0 603 609 0 609 607 0 603 610 0 610 609 0 603 611 0 611 610 0 602 611 0
		 602 612 0 612 611 0 601 612 0 601 613 0 613 612 0 406 613 0 601 406 0 404 613 0 34 613 0
		 250 613 0 366 612 0 614 612 0 612 367 0 368 614 0 614 615 0 615 612 0 615 611 0 615 616 0
		 616 611 0 616 610 0 616 617 0 617 610 0 618 610 0 617 618 0 618 609 0 618 607 0 618 619 0
		 619 607 0 617 619 0 619 606 0 619 587 0 620 587 0 619 620 0 617 620 0 620 586 0 258 620 0
		 617 258 0 258 586 0 617 259 0 616 259 0 616 260 0 615 260 0 615 369 0 370 615 0 262 586 0
		 262 585 0 263 585 0 264 599 0 265 599 0 621 265 0 46 621 0 621 599 0 412 621 0 621 622 0
		 622 599 0 412 622 0 622 600 0 622 408 0 622 411 0 269 623 0 623 268 0 623 529 0 529 268 0
		 623 538 0 529 271 0 271 525 0 525 272 0 525 273 0 273 527 0 527 274 0 555 274 0 555 275 0
		 275 624 0 624 276 0 555 624 0 556 624 0 558 624 0 625 624 0 558 625 0 625 276 0 625 279 0
		 625 280 0 280 626 0 626 281 0 625 626 0 558 626 0 559 626 0 559 627 0 627 626 0 627 281 0
		 561 627 0 572 627 0 628 627 0 572 628 0 628 281 0 574 628 0 628 285 0 286 582 0 629 582 0
		 286 629 0 285 629 0 628 629 0 574 629 0 575 629 0 299 630 0 630 300 0 298 630 0 630 631 0
		 631 300 0 298 632 0 632 630 0 298 633 0 633 632 0 297 633 0 297 634 0 634 633 0 296 634 0
		 296 635 0 635 634 0 295 635 0 295 636 0 636 635 0 308 636 0 637 308 0 309 637 0 637 636 0
		 638 636 0 637 638 0 638 639 0 639 636 0 639 635 0 639 640 0 640 635 0 640 634 0 640 641 0
		 641 634 0 641 633 0 641 642 0 642 633 0 643 633 0 642 643 0 643 632 0;
	setAttr ".ed[1826:1991]" 644 632 0 643 644 0 644 630 0 644 631 0 644 645 0 645 631 0
		 643 645 0 646 631 0 645 646 0 643 647 0 647 645 0 642 647 0 648 645 0 647 648 0 648 646 0
		 649 646 0 648 649 0 649 294 0 294 646 0 649 293 0 649 292 0 649 650 0 650 292 0 648 650 0
		 650 291 0 648 651 0 651 650 0 647 651 0 647 652 0 652 651 0 642 652 0 642 653 0 653 652 0
		 641 653 0 641 654 0 654 653 0 640 654 0 640 655 0 655 654 0 639 655 0 639 656 0 656 655 0
		 638 656 0 638 657 0 657 656 0 638 658 0 658 657 0 637 658 0 637 659 0 659 658 0 309 659 0
		 660 658 0 659 660 0 660 657 0 661 657 0 660 661 0 661 662 0 662 657 0 662 656 0 662 663 0
		 663 656 0 663 655 0 663 664 0 664 655 0 665 655 0 664 665 0 665 654 0 666 654 0 665 666 0
		 666 653 0 666 652 0 667 652 0 666 667 0 667 651 0 667 650 0 668 650 0 667 668 0 668 291 0
		 668 290 0 668 669 0 669 290 0 667 669 0 669 289 0 667 670 0 670 669 0 666 670 0 666 671 0
		 671 670 0 665 671 0 664 671 0 664 672 0 672 671 0 673 671 0 672 673 0 673 670 0 674 670 0
		 673 674 0 674 669 0 674 289 0 675 289 0 674 675 0 675 349 0 675 288 0 676 288 0 675 676 0
		 676 269 0 676 623 0 676 677 0 677 623 0 675 677 0 675 678 0 678 677 0 674 678 0 674 679 0
		 679 678 0 673 679 0 673 680 0 680 679 0 672 680 0 681 679 0 680 681 0 681 682 0 682 679 0
		 682 678 0 682 677 0 682 623 0 682 538 0 681 538 0 683 538 0 681 683 0 683 684 0 684 538 0
		 684 537 0 683 685 0 685 684 0 683 545 0 545 685 0 681 545 0 546 685 0 681 543 0 681 540 0
		 680 540 0 672 540 0 672 541 0 664 541 0 664 554 0 663 554 0 663 552 0 662 552 0 662 550 0
		 661 550 0 661 548 0 661 685 0 685 548 0 661 686 0 686 685 0 660 686 0 687 685 0 686 687 0
		 687 684 0 686 688 0 688 687 0 660 688 0 659 688 0 659 689 0 689 688 0;
	setAttr ".ed[1992:2157]" 536 688 0 689 536 0 536 687 0 536 684 0 689 535 0 689 172 0
		 689 364 0 659 364 0 487 646 0 646 486 0 371 486 0 489 631 0 631 488 0 489 300 0 631 487 0
		 480 373 0 372 481 0 481 375 0 374 486 0 691 693 0 693 692 0 692 691 0 692 694 0 694 691 0
		 695 691 0 694 695 0 694 696 0 696 695 0 697 695 0 696 697 0 696 698 0 698 697 0 696 699 0
		 699 698 0 700 693 0 691 700 0 695 700 0 701 700 0 695 701 0 697 701 0 702 701 0 697 702 0
		 697 849 0 849 702 0 849 850 0 850 847 0 847 702 0 704 720 0 720 705 0 705 704 0 857 858 0
		 858 707 0 707 844 0 844 857 0 706 708 0 708 856 0 856 706 0 706 709 0 709 708 0 709 710 0
		 710 708 0 709 711 0 711 710 0 711 712 0 712 710 0 713 712 0 711 713 0 698 704 0 704 714 0
		 714 698 0 714 715 0 715 698 0 716 715 0 714 716 0 714 717 0 717 716 0 718 716 0 717 718 0
		 717 719 0 719 718 0 713 718 0 719 713 0 853 854 0 854 844 0 707 853 0 855 715 0 715 706 0
		 706 855 0 716 706 0 716 709 0 716 711 0 718 711 0 721 722 0 722 720 0 720 721 0 721 723 0
		 723 722 0 723 724 0 724 722 0 725 724 0 723 725 0 723 726 0 726 725 0 727 725 0 726 727 0
		 728 178 0 177 728 0 177 729 0 729 728 0 730 728 0 729 730 0 179 729 0 729 731 0 731 730 0
		 731 732 0 732 730 0 733 731 0 729 733 0 729 734 0 734 733 0 179 734 0 180 734 0 181 734 0
		 735 734 0 181 735 0 182 735 0 735 736 0 736 734 0 736 733 0 737 736 0 735 737 0 182 737 0
		 183 737 0 738 737 0 183 738 0 184 738 0 738 739 0 739 737 0 739 736 0 739 740 0 740 736 0
		 740 741 0 741 736 0 741 733 0 741 742 0 742 733 0 742 731 0 742 743 0 743 731 0 743 732 0
		 743 744 0 744 732 0 745 732 0 744 745 0 746 744 0 743 746 0 742 746 0 747 746 0 742 747 0
		 741 747 0 740 747 0 748 747 0 740 748 0 740 749 0 749 748 0 750 749 0;
	setAttr ".ed[2158:2323]" 740 750 0 739 750 0 738 750 0 751 750 0 738 751 0 184 751 0
		 185 751 0 728 751 0 185 728 0 730 751 0 730 750 0 732 750 0 732 749 0 752 749 0 732 752 0
		 745 752 0 752 753 0 753 749 0 753 748 0 753 747 0 753 754 0 754 747 0 755 747 0 754 755 0
		 755 746 0 755 744 0 755 756 0 756 744 0 756 745 0 757 745 0 756 757 0 756 758 0 758 757 0
		 756 759 0 759 758 0 759 760 0 760 758 0 761 759 0 756 761 0 755 761 0 754 761 0 762 761 0
		 754 762 0 753 762 0 762 763 0 763 761 0 763 759 0 763 764 0 764 759 0 764 760 0 765 760 0
		 764 765 0 764 766 0 766 765 0 767 766 0 764 767 0 763 767 0 768 766 0 767 768 0 769 767 0
		 763 769 0 762 769 0 770 769 0 762 770 0 753 770 0 771 770 0 753 771 0 752 771 0 757 771 0
		 752 757 0 758 771 0 758 772 0 772 771 0 772 770 0 760 772 0 772 773 0 773 770 0 773 769 0
		 774 773 0 772 774 0 760 774 0 765 774 0 765 775 0 775 774 0 775 776 0 776 774 0 776 773 0
		 776 769 0 776 777 0 777 769 0 777 767 0 777 768 0 777 778 0 778 768 0 779 778 0 777 779 0
		 776 779 0 775 779 0 703 851 0 851 852 0 852 703 0 707 780 0 780 703 0 852 707 0 781 780 0
		 707 859 0 859 781 0 858 859 0 860 861 0 861 845 0 845 781 0 781 860 0 862 783 0 783 782 0
		 782 862 0 784 782 0 783 784 0 783 785 0 785 784 0 786 784 0 785 786 0 785 787 0 787 786 0
		 788 786 0 787 788 0 788 789 0 789 786 0 789 790 0 790 786 0 790 784 0 790 791 0 791 784 0
		 791 782 0 791 863 0 863 782 0 845 864 0 864 865 0 865 781 0 865 866 0 866 781 0 793 781 0
		 866 792 0 792 793 0 793 780 0 794 793 0 792 794 0 795 780 0 793 795 0 793 796 0 796 795 0
		 794 796 0 796 797 0 797 795 0 797 798 0 798 795 0 798 780 0 798 778 0 778 780 0 798 768 0
		 797 768 0 797 766 0 797 765 0 799 765 0 797 799 0 796 799 0 799 775 0;
	setAttr ".ed[2324:2489]" 799 800 0 800 775 0 799 801 0 801 800 0 801 802 0 802 800 0
		 803 802 0 801 803 0 801 804 0 804 803 0 799 804 0 799 805 0 805 804 0 796 805 0 796 806 0
		 806 805 0 794 806 0 794 807 0 807 806 0 807 805 0 808 807 0 794 808 0 792 808 0 809 808 0
		 792 809 0 809 720 0 720 808 0 720 807 0 809 721 0 704 807 0 704 805 0 704 810 0 810 805 0
		 810 804 0 810 811 0 811 804 0 811 803 0 811 812 0 812 803 0 813 803 0 812 813 0 812 814 0
		 814 813 0 812 815 0 815 814 0 815 816 0 816 814 0 817 816 0 815 817 0 815 818 0 818 817 0
		 819 818 0 815 819 0 812 819 0 820 819 0 812 820 0 812 821 0 821 820 0 811 821 0 810 821 0
		 822 821 0 810 822 0 810 699 0 699 822 0 704 699 0 823 822 0 699 823 0 696 823 0 824 823 0
		 696 824 0 696 825 0 825 824 0 694 825 0 694 826 0 826 825 0 692 826 0 693 826 0 800 779 0
		 800 827 0 827 779 0 827 778 0 802 827 0 827 780 0 827 828 0 828 780 0 828 703 0 829 828 0
		 827 829 0 802 829 0 830 829 0 802 830 0 803 830 0 813 830 0 831 830 0 813 831 0 813 832 0
		 832 831 0 814 832 0 816 832 0 833 832 0 816 833 0 817 833 0 818 832 0 833 818 0 819 832 0
		 820 832 0 820 831 0 820 830 0 820 834 0 834 830 0 834 829 0 834 822 0 822 829 0 822 828 0
		 823 828 0 823 703 0 848 823 0 824 848 0 824 702 0 847 848 0 824 701 0 825 701 0 825 700 0
		 826 700 0 821 834 0 835 727 0 726 835 0 723 835 0 836 835 0 723 836 0 721 836 0 836 837 0
		 837 835 0 837 727 0 837 725 0 837 724 0 838 724 0 837 838 0 836 838 0 838 722 0 839 838 0
		 836 839 0 721 839 0 809 839 0 809 840 0 840 839 0 840 838 0 840 722 0 840 869 0 869 722 0
		 792 867 0 867 868 0 868 846 0 846 792 0 846 809 0 705 714 0 705 708 0 708 714 0 710 714 0
		 710 717 0 712 717 0 712 719 0 788 841 0 841 789 0 841 842 0 842 789 0;
	setAttr ".ed[2490:2655]" 842 790 0 842 843 0 843 790 0 843 791 0 843 720 0 720 791 0
		 787 841 0 787 842 0 785 842 0 783 842 0 783 843 0 783 705 0 705 843 0 706 844 0 854 855 0
		 856 857 0 782 845 0 861 862 0 863 864 0 868 869 0 840 846 0 703 847 0 850 851 0 703 848 0
		 698 849 0 698 850 0 698 851 0 852 853 0 698 853 0 698 854 0 698 855 0 705 856 0 705 857 0
		 705 858 0 859 860 0 705 860 0 705 861 0 705 862 0 720 863 0 720 864 0 720 865 0 866 867 0
		 720 867 0 720 868 0 720 869 0 870 872 0 872 871 0 871 870 0 871 873 0 873 870 0 874 870 0
		 873 874 0 873 875 0 875 874 0 876 874 0 875 876 0 875 877 0 877 876 0 875 878 0 878 877 0
		 879 872 0 870 879 0 874 879 0 880 879 0 874 880 0 876 880 0 881 880 0 876 881 0 876 1021 0
		 1021 881 0 1021 1022 0 1022 1019 0 1019 881 0 883 899 0 899 884 0 884 883 0 1029 1030 0
		 1030 886 0 886 1016 0 1016 1029 0 885 887 0 887 1028 0 1028 885 0 885 888 0 888 887 0
		 888 889 0 889 887 0 888 890 0 890 889 0 890 891 0 891 889 0 892 891 0 890 892 0 877 883 0
		 883 893 0 893 877 0 893 894 0 894 877 0 895 894 0 893 895 0 893 896 0 896 895 0 897 895 0
		 896 897 0 896 898 0 898 897 0 892 897 0 898 892 0 1025 1026 0 1026 1016 0 886 1025 0
		 1027 894 0 894 885 0 885 1027 0 895 885 0 895 888 0 895 890 0 897 890 0 900 901 0
		 901 899 0 899 900 0 900 902 0 902 901 0 902 903 0 903 901 0 904 903 0 902 904 0 902 905 0
		 905 904 0 906 904 0 905 906 0 907 539 0 542 907 0 542 908 0 908 907 0 908 909 0 909 907 0
		 910 908 0 542 910 0 544 910 0 547 911 0 911 544 0 911 910 0 549 911 0 551 912 0 912 549 0
		 912 911 0 912 913 0 913 911 0 913 914 0 914 911 0 914 910 0 914 915 0 915 910 0 915 908 0
		 915 916 0 916 908 0 916 909 0 916 917 0 917 909 0 918 909 0 917 918 0 919 917 0 916 919 0
		 915 919 0 920 919 0;
	setAttr ".ed[2656:2821]" 915 920 0 914 920 0 913 920 0 921 920 0 913 921 0 913 922 0
		 922 921 0 923 922 0 913 923 0 912 923 0 551 923 0 553 923 0 907 553 0 907 923 0 909 923 0
		 909 922 0 924 922 0 909 924 0 918 924 0 924 925 0 925 922 0 925 921 0 925 920 0 925 926 0
		 926 920 0 927 920 0 926 927 0 927 919 0 927 917 0 927 928 0 928 917 0 928 918 0 929 918 0
		 928 929 0 928 930 0 930 929 0 928 931 0 931 930 0 931 932 0 932 930 0 933 931 0 928 933 0
		 927 933 0 926 933 0 934 933 0 926 934 0 925 934 0 934 935 0 935 933 0 935 931 0 935 936 0
		 936 931 0 936 932 0 937 932 0 936 937 0 936 938 0 938 937 0 939 938 0 936 939 0 935 939 0
		 940 938 0 939 940 0 941 939 0 935 941 0 934 941 0 942 941 0 934 942 0 925 942 0 943 942 0
		 925 943 0 924 943 0 929 943 0 924 929 0 930 943 0 930 944 0 944 943 0 944 942 0 932 944 0
		 944 945 0 945 942 0 945 941 0 946 945 0 944 946 0 932 946 0 937 946 0 937 947 0 947 946 0
		 947 948 0 948 946 0 948 945 0 948 941 0 948 949 0 949 941 0 949 939 0 949 940 0 949 950 0
		 950 940 0 951 950 0 949 951 0 948 951 0 947 951 0 882 1023 0 1023 1024 0 1024 882 0
		 886 952 0 952 882 0 1024 886 0 953 952 0 886 1031 0 1031 953 0 1030 1031 0 1032 1033 0
		 1033 1017 0 1017 953 0 953 1032 0 1034 955 0 955 954 0 954 1034 0 956 954 0 955 956 0
		 955 957 0 957 956 0 958 956 0 957 958 0 957 959 0 959 958 0 960 958 0 959 960 0 960 961 0
		 961 958 0 961 962 0 962 958 0 962 956 0 962 963 0 963 956 0 963 954 0 963 1035 0
		 1035 954 0 1017 1036 0 1036 1037 0 1037 953 0 1037 1038 0 1038 953 0 965 953 0 1038 964 0
		 964 965 0 965 952 0 966 965 0 964 966 0 967 952 0 965 967 0 965 968 0 968 967 0 966 968 0
		 968 969 0 969 967 0 969 970 0 970 967 0 970 952 0 970 950 0 950 952 0 970 940 0 969 940 0
		 969 938 0 969 937 0 971 937 0;
	setAttr ".ed[2822:2987]" 969 971 0 968 971 0 971 947 0 971 972 0 972 947 0 971 973 0
		 973 972 0 973 974 0 974 972 0 975 974 0 973 975 0 973 976 0 976 975 0 971 976 0 971 977 0
		 977 976 0 968 977 0 968 978 0 978 977 0 966 978 0 966 979 0 979 978 0 979 977 0 980 979 0
		 966 980 0 964 980 0 981 980 0 964 981 0 981 899 0 899 980 0 899 979 0 981 900 0 883 979 0
		 883 977 0 883 982 0 982 977 0 982 976 0 982 983 0 983 976 0 983 975 0 983 984 0 984 975 0
		 985 975 0 984 985 0 984 986 0 986 985 0 984 987 0 987 986 0 987 988 0 988 986 0 989 988 0
		 987 989 0 987 990 0 990 989 0 991 990 0 987 991 0 984 991 0 992 991 0 984 992 0 984 993 0
		 993 992 0 983 993 0 982 993 0 994 993 0 982 994 0 982 878 0 878 994 0 883 878 0 995 994 0
		 878 995 0 875 995 0 996 995 0 875 996 0 875 997 0 997 996 0 873 997 0 873 998 0 998 997 0
		 871 998 0 872 998 0 972 951 0 972 999 0 999 951 0 999 950 0 974 999 0 999 952 0 999 1000 0
		 1000 952 0 1000 882 0 1001 1000 0 999 1001 0 974 1001 0 1002 1001 0 974 1002 0 975 1002 0
		 985 1002 0 1003 1002 0 985 1003 0 985 1004 0 1004 1003 0 986 1004 0 988 1004 0 1005 1004 0
		 988 1005 0 989 1005 0 990 1004 0 1005 990 0 991 1004 0 992 1004 0 992 1003 0 992 1002 0
		 992 1006 0 1006 1002 0 1006 1001 0 1006 994 0 994 1001 0 994 1000 0 995 1000 0 995 882 0
		 1020 995 0 996 1020 0 996 881 0 1019 1020 0 996 880 0 997 880 0 997 879 0 998 879 0
		 993 1006 0 1007 906 0 905 1007 0 902 1007 0 1008 1007 0 902 1008 0 900 1008 0 1008 1009 0
		 1009 1007 0 1009 906 0 1009 904 0 1009 903 0 1010 903 0 1009 1010 0 1008 1010 0 1010 901 0
		 1011 1010 0 1008 1011 0 900 1011 0 981 1011 0 981 1012 0 1012 1011 0 1012 1010 0
		 1012 901 0 1012 1041 0 1041 901 0 964 1039 0 1039 1040 0 1040 1018 0 1018 964 0 1018 981 0
		 884 893 0 884 887 0 887 893 0 889 893 0 889 896 0 891 896 0 891 898 0 960 1013 0;
	setAttr ".ed[2988:3035]" 1013 961 0 1013 1014 0 1014 961 0 1014 962 0 1014 1015 0
		 1015 962 0 1015 963 0 1015 899 0 899 963 0 959 1013 0 959 1014 0 957 1014 0 955 1014 0
		 955 1015 0 955 884 0 884 1015 0 885 1016 0 1026 1027 0 1028 1029 0 954 1017 0 1033 1034 0
		 1035 1036 0 1040 1041 0 1012 1018 0 882 1019 0 1022 1023 0 882 1020 0 877 1021 0
		 877 1022 0 877 1023 0 1024 1025 0 877 1025 0 877 1026 0 877 1027 0 884 1028 0 884 1029 0
		 884 1030 0 1031 1032 0 884 1032 0 884 1033 0 884 1034 0 899 1035 0 899 1036 0 899 1037 0
		 1038 1039 0 899 1039 0 899 1040 0 899 1041 0;
	setAttr -s 6086 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.369407 -0.75969899 -0.53516001 0.015262
		 -0.22076 -0.975209 0.36986601 -0.82592201 -0.42550099 0.36986601 -0.82592201 -0.42550099
		 -0.36579901 -0.92738003 0.078474 -0.369407 -0.75969899 -0.53516001 -0.36579901 -0.92738003
		 0.078474 0.36986601 -0.82592201 -0.42550099 0.494463 -0.86663002 -0.066771999 0.494463
		 -0.86663002 -0.066771999 -0.120862 -0.99237299 -0.024256 -0.36579901 -0.92738003
		 0.078474 -0.120862 -0.99237299 -0.024256 0.494463 -0.86663002 -0.066771999 0.55928898
		 -0.81107402 -0.17133 0.55928898 -0.81107402 -0.17133 0.71995902 -0.68761402 -0.094057001
		 -0.120862 -0.99237299 -0.024256 -0.005874 -0.99978 -0.020153999 -0.120862 -0.99237299
		 -0.024256 0.71995902 -0.68761402 -0.094057001 -0.81928402 -0.56579 -0.093036003 -0.120862
		 -0.99237299 -0.024256 -0.005874 -0.99978 -0.020153999 -0.005874 -0.99978 -0.020153999
		 0.71995902 -0.68761402 -0.094057001 0.840352 -0.54093301 0.034655999 -0.886554 -0.461979
		 -0.024436001 -0.81928402 -0.56579 -0.093036003 -0.005874 -0.99978 -0.020153999 0.72034198
		 -0.49282199 0.48809099 -0.005874 -0.99978 -0.020153999 0.840352 -0.54093301 0.034655999
		 -0.828969 -0.559187 -0.010963 -0.886554 -0.461979 -0.024436001 -0.005874 -0.99978
		 -0.020153999 -0.005874 -0.99978 -0.020153999 0.72034198 -0.49282199 0.48809099 0.38304499
		 -0.63822103 0.66779602 0.38304499 -0.63822103 0.66779602 0.136676 -0.54184997 0.82928801
		 -0.005874 -0.99978 -0.020153999 -0.075383998 -0.99647999 0.036674 -0.005874 -0.99978
		 -0.020153999 0.136676 -0.54184997 0.82928801 -0.828969 -0.559187 -0.010963 -0.005874
		 -0.99978 -0.020153999 -0.075383998 -0.99647999 0.036674 -0.075383998 -0.99647999
		 0.036674 -0.718548 -0.67674899 0.160312 -0.828969 -0.559187 -0.010963 -0.53545201
		 -0.552441 0.63882703 -0.718548 -0.67674899 0.160312 -0.075383998 -0.99647999 0.036674
		 -0.075383998 -0.99647999 0.036674 0.136676 -0.54184997 0.82928801 -0.53545201 -0.552441
		 0.63882703 0.35976699 -0.034097001 0.932419 0.44414201 -0.116033 0.88841099 0.290034
		 -0.12891901 0.94829297 0.57492298 -0.113879 0.81024402 0.290034 -0.12891901 0.94829297
		 0.44414201 -0.116033 0.88841099 0.44414201 -0.116033 0.88841099 0.73850399 -0.032795999
		 0.67345101 0.57492298 -0.113879 0.81024402 0.75008303 -0.008711 0.66128701 0.57492298
		 -0.113879 0.81024402 0.73850399 -0.032795999 0.67345101 0.73850399 -0.032795999 0.67345101
		 0.77275801 0.0078269998 0.63465202 0.75008303 -0.008711 0.66128701 0.33043301 0.023401
		 0.94353902 0.48389101 0.013856 0.87501901 0.33049101 0.023326 0.94352102 0.48389101
		 0.013856 0.87501901 0.33043301 0.023401 0.94353902 0.631486 -0.0066889999 0.77535802
		 0.631486 -0.0066889999 0.77535802 0.76587802 -0.029207001 0.642322 0.48389101 0.013856
		 0.87501901 0.76587802 -0.029207001 0.642322 0.631486 -0.0066889999 0.77535802 0.77394599
		 -0.040585 0.63195002 0.77394599 -0.040585 0.63195002 0.78891599 -0.044633001 0.61287701
		 0.76587802 -0.029207001 0.642322 0 -0.90497202 0.42546999 0.516855 -0.34940901 0.78152102
		 0.378061 0.030074 0.92529202 0.516855 -0.34940901 0.78152102 0 -0.90497202 0.42546999
		 0.05979 -0.95461798 0.291769 0.05979 -0.95461798 0.291769 0.721205 -0.30032399 0.62423402
		 0.516855 -0.34940901 0.78152102 0.721205 -0.30032399 0.62423402 0.05979 -0.95461798
		 0.291769 -0.191811 -0.89097202 0.41155401 -0.191811 -0.89097202 0.41155401 0.53571999
		 -0.273408 0.79890698 0.721205 -0.30032399 0.62423402 0 -0.99930102 0.037395 0.05979
		 -0.95461798 0.291769 0 -0.90497202 0.42546999 0.05979 -0.95461798 0.291769 0 -0.99930102
		 0.037395 -0.45872301 -0.858675 0.22858401 -0.45872301 -0.858675 0.22858401 -0.191811
		 -0.89097202 0.41155401 0.05979 -0.95461798 0.291769 0.53571999 -0.273408 0.79890698
		 -0.191811 -0.89097202 0.41155401 -0.45872301 -0.858675 0.22858401 -0.45872301 -0.858675
		 0.22858401 -0.61465198 0.17208999 0.76979703 0.53571999 -0.273408 0.79890698 0 -0.498999
		 0.86660302 -0.61465198 0.17208999 0.76979703 -0.45872301 -0.858675 0.22858401 -0.45872301
		 -0.858675 0.22858401 0 -0.99930102 0.037395 0 -0.498999 0.86660302 -0.088997997 0.67123097
		 0.73588598 0.53571999 -0.273408 0.79890698 -0.61465198 0.17208999 0.76979703 -0.61465198
		 0.17208999 0.76979703 0 0.89937103 0.437186 -0.088997997 0.67123097 0.73588598 0.235339
		 0.77764302 0.58299798 -0.088997997 0.67123097 0.73588598 0 0.89937103 0.437186 0
		 -0.498999 0.86660302 0 0.89937103 0.437186 -0.61465198 0.17208999 0.76979703 0 0.73555702
		 0.677463 0.235339 0.77764302 0.58299798 0 0.89937103 0.437186 0.53646499 -0.84390599
		 0.0052959998 0.795111 -0.50352699 -0.33802199 0.29966801 -0.35346001 -0.88615203
		 0.29966801 -0.35346001 -0.88615203 0.800973 -0.58829802 -0.111126 0.53646499 -0.84390599
		 0.0052959998 0.67308599 -0.27762401 -0.68547797 0.800973 -0.58829802 -0.111126 0.29966801
		 -0.35346001 -0.88615203 0.29966801 -0.35346001 -0.88615203 0.431696 -0.015275 -0.90188998
		 0.67308599 -0.27762401 -0.68547797 0.800973 -0.58829802 -0.111126 0.67308599 -0.27762401
		 -0.68547797 0.85277998 -0.072292998 0.51724398 0.85277998 -0.072292998 0.51724398
		 0.53646499 -0.84390599 0.0052959998 0.800973 -0.58829802 -0.111126 0.795111 -0.50352699
		 -0.33802199 0.53646499 -0.84390599 0.0052959998 0.85277998 -0.072292998 0.51724398
		 0.85277998 -0.072292998 0.51724398 0.67308599 -0.27762401 -0.68547797 0.96166003
		 0.119154 -0.247008 0.96166003 0.119154 -0.247008 0.50245702 0.85403001 0.134795 0.85277998
		 -0.072292998 0.51724398 0.99960399 -0.014182 0.024289999;
	setAttr ".n[166:331]" -type "float3"  0.85277998 -0.072292998 0.51724398 0.50245702
		 0.85403001 0.134795 0.431696 -0.015275 -0.90188998 0.50245702 0.85403001 0.134795
		 0.96166003 0.119154 -0.247008 0.96166003 0.119154 -0.247008 0.67308599 -0.27762401
		 -0.68547797 0.431696 -0.015275 -0.90188998 0.99960399 -0.014182 0.024289999 0.50245702
		 0.85403001 0.134795 0.431696 -0.015275 -0.90188998 -0.077096999 0.177293 -0.981134
		 -0.93872201 0.228833 -0.25775501 -0.98043102 0.034265999 -0.193859 -0.98043102 0.034265999
		 -0.193859 -0.171478 0.13624801 -0.975721 -0.077096999 0.177293 -0.981134 -0.95810002
		 0.057177 -0.28066999 -0.171478 0.13624801 -0.975721 -0.98043102 0.034265999 -0.193859
		 -0.077096999 0.177293 -0.981134 -0.171478 0.13624801 -0.975721 0.80674398 0.014341
		 -0.59072697 0.80674398 0.014341 -0.59072697 0.88347101 0.044222999 -0.46639499 -0.077096999
		 0.177293 -0.981134 0.88347101 0.044222999 -0.46639499 0.80674398 0.014341 -0.59072697
		 0.99157101 -0.123742 0.038392 0.99157101 -0.123742 0.038392 0.99046803 0.13164 0.040550999
		 0.88347101 0.044222999 -0.46639499 0.99046803 0.13164 0.040550999 0.99157101 -0.123742
		 0.038392 0.77779001 -0.179258 0.60241997 0.77779001 -0.179258 0.60241997 0.81114602
		 0.18549301 0.55464703 0.99046803 0.13164 0.040550999 0.81114602 0.18549301 0.55464703
		 0.77779001 -0.179258 0.60241997 -0.041434001 -0.104063 0.993707 -0.041434001 -0.104063
		 0.993707 -0.075065002 0.29415199 0.952806 0.81114602 0.18549301 0.55464703 -0.82509601
		 0.28628001 0.48709401 -0.075065002 0.29415199 0.952806 -0.041434001 -0.104063 0.993707
		 -0.041434001 -0.104063 0.993707 -0.78437197 -0.109953 0.61046797 -0.82509601 0.28628001
		 0.48709401 -0.93872201 0.228833 -0.25775501 -0.82509601 0.28628001 0.48709401 -0.78437197
		 -0.109953 0.61046797 -0.78437197 -0.109953 0.61046797 -0.98043102 0.034265999 -0.193859
		 -0.93872201 0.228833 -0.25775501 -0.98043102 0.034265999 -0.193859 -0.78437197 -0.109953
		 0.61046797 -0.82962102 -0.142893 0.53973198 -0.82962102 -0.142893 0.53973198 -0.95810002
		 0.057177 -0.28066999 -0.98043102 0.034265999 -0.193859 -0.108735 -0.30286801 0.94680899
		 -0.82962102 -0.142893 0.53973198 -0.78437197 -0.109953 0.61046797 -0.78437197 -0.109953
		 0.61046797 -0.041434001 -0.104063 0.993707 -0.108735 -0.30286801 0.94680899 0.77779001
		 -0.179258 0.60241997 -0.108735 -0.30286801 0.94680899 -0.041434001 -0.104063 0.993707
		 0.76376402 -0.267483 0.58746701 -0.108735 -0.30286801 0.94680899 0.77779001 -0.179258
		 0.60241997 0.77779001 -0.179258 0.60241997 0.99157101 -0.123742 0.038392 0.76376402
		 -0.267483 0.58746701 0.99096203 -0.121076 -0.057744 0.76376402 -0.267483 0.58746701
		 0.99157101 -0.123742 0.038392 0.99157101 -0.123742 0.038392 0.80674398 0.014341 -0.59072697
		 0.99096203 -0.121076 -0.057744 0.70988703 0.041453 -0.70309502 0.99096203 -0.121076
		 -0.057744 0.80674398 0.014341 -0.59072697 0.80674398 0.014341 -0.59072697 -0.171478
		 0.13624801 -0.975721 0.70988703 0.041453 -0.70309502 -0.221783 0.17989001 -0.958359
		 0.70988703 0.041453 -0.70309502 -0.171478 0.13624801 -0.975721 -0.171478 0.13624801
		 -0.975721 -0.95810002 0.057177 -0.28066999 -0.221783 0.17989001 -0.958359 -0.92526299
		 0.088881001 -0.368765 -0.221783 0.17989001 -0.958359 -0.95810002 0.057177 -0.28066999
		 -0.334333 0.312383 -0.88917899 -0.221783 0.17989001 -0.958359 -0.92526299 0.088881001
		 -0.368765 -0.92526299 0.088881001 -0.368765 -0.89658201 -0.035333 -0.44146499 -0.334333
		 0.312383 -0.88917899 -0.221783 0.17989001 -0.958359 -0.334333 0.312383 -0.88917899
		 0.61886799 0.2721 -0.73686099 0.61886799 0.2721 -0.73686099 0.70988703 0.041453 -0.70309502
		 -0.221783 0.17989001 -0.958359 0.70988703 0.041453 -0.70309502 0.61886799 0.2721
		 -0.73686099 0.99110198 0.021436 -0.13136899 0.99110198 0.021436 -0.13136899 0.99096203
		 -0.121076 -0.057744 0.70988703 0.041453 -0.70309502 0.99096203 -0.121076 -0.057744
		 0.99110198 0.021436 -0.13136899 0.82611901 -0.164171 0.539051 0.82611901 -0.164171
		 0.539051 0.76376402 -0.267483 0.58746701 0.99096203 -0.121076 -0.057744 0.76376402
		 -0.267483 0.58746701 0.82611901 -0.164171 0.539051 0.030996 -0.345873 0.937769 0.030996
		 -0.345873 0.937769 -0.108735 -0.30286801 0.94680899 0.76376402 -0.267483 0.58746701
		 -0.108735 -0.30286801 0.94680899 0.030996 -0.345873 0.937769 -0.84676099 -0.20168
		 0.49226099 -0.84676099 -0.20168 0.49226099 -0.82962102 -0.142893 0.53973198 -0.108735
		 -0.30286801 0.94680899 -0.95810002 0.057177 -0.28066999 -0.82962102 -0.142893 0.53973198
		 -0.84676099 -0.20168 0.49226099 -0.84676099 -0.20168 0.49226099 -0.92526299 0.088881001
		 -0.368765 -0.95810002 0.057177 -0.28066999 -0.89658201 -0.035333 -0.44146499 -0.92526299
		 0.088881001 -0.368765 -0.84676099 -0.20168 0.49226099 -0.84676099 -0.20168 0.49226099
		 -0.85347903 -0.33909601 0.395711 -0.89658201 -0.035333 -0.44146499 -0.017151 -0.35133299
		 0.93609399 -0.85347903 -0.33909601 0.395711 -0.84676099 -0.20168 0.49226099 -0.84676099
		 -0.20168 0.49226099 0.030996 -0.345873 0.937769 -0.017151 -0.35133299 0.93609399
		 0.82611901 -0.164171 0.539051 -0.017151 -0.35133299 0.93609399 0.030996 -0.345873
		 0.937769 0.826801 -0.158169 0.53979802 -0.017151 -0.35133299 0.93609399 0.82611901
		 -0.164171 0.539051 0.82611901 -0.164171 0.539051 0.97660899 0.108227 -0.185803 0.826801
		 -0.158169 0.53979802 0.97660899 0.108227 -0.185803 0.82611901 -0.164171 0.539051
		 0.99110198 0.021436 -0.13136899 0.99110198 0.021436 -0.13136899 0.61886799 0.2721
		 -0.73686099;
	setAttr ".n[332:497]" -type "float3"  0.97660899 0.108227 -0.185803 0.60677803
		 0.33774099 -0.719549 0.97660899 0.108227 -0.185803 0.61886799 0.2721 -0.73686099
		 0.61886799 0.2721 -0.73686099 -0.011362 0.25568399 -0.966694 0.60677803 0.33774099
		 -0.719549 -0.011362 0.25568399 -0.966694 0.61886799 0.2721 -0.73686099 -0.334333
		 0.312383 -0.88917899 -0.334333 0.312383 -0.88917899 -0.89658201 -0.035333 -0.44146499
		 -0.011362 0.25568399 -0.966694 -0.61009902 -0.059012 -0.79012501 -0.011362 0.25568399
		 -0.966694 -0.89658201 -0.035333 -0.44146499 -0.105924 -0.023112999 -0.99410599 -0.011362
		 0.25568399 -0.966694 -0.61009902 -0.059012 -0.79012501 -0.61009902 -0.059012 -0.79012501
		 -0.77295703 -0.096437 -0.627087 -0.105924 -0.023112999 -0.99410599 -0.011362 0.25568399
		 -0.966694 -0.105924 -0.023112999 -0.99410599 0.58437198 0.050330002 -0.80992401 0.58437198
		 0.050330002 -0.80992401 0.60677803 0.33774099 -0.719549 -0.011362 0.25568399 -0.966694
		 0.97660899 0.108227 -0.185803 0.60677803 0.33774099 -0.719549 0.58437198 0.050330002
		 -0.80992401 0.58437198 0.050330002 -0.80992401 0.99847901 -0.024276 -0.049492002
		 0.97660899 0.108227 -0.185803 0.826801 -0.158169 0.53979802 0.97660899 0.108227 -0.185803
		 0.99847901 -0.024276 -0.049492002 0.99847901 -0.024276 -0.049492002 0.71540803 -0.038469002
		 0.69764799 0.826801 -0.158169 0.53979802 -0.017151 -0.35133299 0.93609399 0.826801
		 -0.158169 0.53979802 0.71540803 -0.038469002 0.69764799 0.71540803 -0.038469002 0.69764799
		 -0.019489 -0.140562 0.98988003 -0.017151 -0.35133299 0.93609399 -0.73407602 -0.116432
		 0.669011 -0.017151 -0.35133299 0.93609399 -0.019489 -0.140562 0.98988003 -0.85347903
		 -0.33909601 0.395711 -0.017151 -0.35133299 0.93609399 -0.73407602 -0.116432 0.669011
		 -0.73407602 -0.116432 0.669011 -0.98438197 -0.13813099 -0.109144 -0.85347903 -0.33909601
		 0.395711 -0.89658201 -0.035333 -0.44146499 -0.85347903 -0.33909601 0.395711 -0.98438197
		 -0.13813099 -0.109144 -0.98438197 -0.13813099 -0.109144 -0.61009902 -0.059012 -0.79012501
		 -0.89658201 -0.035333 -0.44146499 -0.77295703 -0.096437 -0.627087 -0.61009902 -0.059012
		 -0.79012501 -0.98438197 -0.13813099 -0.109144 -0.98438197 -0.13813099 -0.109144 -0.88896298
		 -0.015487 0.45771801 -0.77295703 -0.096437 -0.627087 -0.73407602 -0.116432 0.669011
		 -0.88896298 -0.015487 0.45771801 -0.98438197 -0.13813099 -0.109144 -0.92680299 -0.071556002
		 -0.36866799 -0.77295703 -0.096437 -0.627087 -0.88896298 -0.015487 0.45771801 -0.028384
		 -0.012984 0.99951297 -0.88896298 -0.015487 0.45771801 -0.73407602 -0.116432 0.669011
		 -0.73407602 -0.116432 0.669011 -0.019489 -0.140562 0.98988003 -0.028384 -0.012984
		 0.99951297 0.71540803 -0.038469002 0.69764799 -0.028384 -0.012984 0.99951297 -0.019489
		 -0.140562 0.98988003 0.90441 0.041924 0.42459899 -0.028384 -0.012984 0.99951297 0.71540803
		 -0.038469002 0.69764799 0.71540803 -0.038469002 0.69764799 0.99847901 -0.024276 -0.049492002
		 0.90441 0.041924 0.42459899 0.75686002 -0.078818001 -0.64880699 0.90441 0.041924
		 0.42459899 0.99847901 -0.024276 -0.049492002 0.99847901 -0.024276 -0.049492002 0.58437198
		 0.050330002 -0.80992401 0.75686002 -0.078818001 -0.64880699 0.072838001 -0.099310003
		 -0.992387 0.75686002 -0.078818001 -0.64880699 0.58437198 0.050330002 -0.80992401
		 0.58437198 0.050330002 -0.80992401 -0.105924 -0.023112999 -0.99410599 0.072838001
		 -0.099310003 -0.992387 -0.77295703 -0.096437 -0.627087 0.072838001 -0.099310003 -0.992387
		 -0.105924 -0.023112999 -0.99410599 -0.059059002 -0.081680998 -0.99490702 0.072838001
		 -0.099310003 -0.992387 -0.77295703 -0.096437 -0.627087 -0.77295703 -0.096437 -0.627087
		 -0.92680299 -0.071556002 -0.36866799 -0.059059002 -0.081680998 -0.99490702 0.75686002
		 -0.078818001 -0.64880699 0.072838001 -0.099310003 -0.992387 -0.059059002 -0.081680998
		 -0.99490702 -0.059059002 -0.081680998 -0.99490702 0.87103599 -0.055645999 -0.48805699
		 0.75686002 -0.078818001 -0.64880699 0.90441 0.041924 0.42459899 0.75686002 -0.078818001
		 -0.64880699 0.87103599 -0.055645999 -0.48805699 0.87103599 -0.055645999 -0.48805699
		 0.78809798 -0.078759998 0.61049098 0.90441 0.041924 0.42459899 -0.028384 -0.012984
		 0.99951297 0.90441 0.041924 0.42459899 0.78809798 -0.078759998 0.61049098 0.78809798
		 -0.078759998 0.61049098 -0.23390099 -0.058125999 0.97052199 -0.028384 -0.012984 0.99951297
		 -0.84466702 -0.058541998 0.53208202 -0.028384 -0.012984 0.99951297 -0.23390099 -0.058125999
		 0.97052199 -0.88896298 -0.015487 0.45771801 -0.028384 -0.012984 0.99951297 -0.84466702
		 -0.058541998 0.53208202 -0.84466702 -0.058541998 0.53208202 -0.92680299 -0.071556002
		 -0.36866799 -0.88896298 -0.015487 0.45771801 -0.943573 -0.116191 -0.310114 -0.92680299
		 -0.071556002 -0.36866799 -0.84466702 -0.058541998 0.53208202 -0.84466702 -0.058541998
		 0.53208202 -0.86432201 -0.068094 0.498308 -0.943573 -0.116191 -0.310114 -0.23390099
		 -0.058125999 0.97052199 -0.86432201 -0.068094 0.498308 -0.84466702 -0.058541998 0.53208202
		 -0.92359197 -0.335998 -0.184615 -0.943573 -0.116191 -0.310114 -0.86432201 -0.068094
		 0.498308 -0.86432201 -0.068094 0.498308 -0.69241899 -0.44406 0.568654 -0.92359197
		 -0.335998 -0.184615 -0.124746 -0.028194999 0.99178803 -0.69241899 -0.44406 0.568654
		 -0.86432201 -0.068094 0.498308 -0.86432201 -0.068094 0.498308 -0.23390099 -0.058125999
		 0.97052199 -0.124746 -0.028194999 0.99178803 0.78809798 -0.078759998 0.61049098 -0.124746
		 -0.028194999 0.99178803 -0.23390099 -0.058125999 0.97052199 0.82185102 -0.072639003
		 0.56505197 -0.124746 -0.028194999 0.99178803 0.78809798 -0.078759998 0.61049098 0.78809798
		 -0.078759998 0.61049098 0.85242498 -0.109135 -0.511334 0.82185102 -0.072639003 0.56505197;
	setAttr ".n[498:663]" -type "float3"  0.85242498 -0.109135 -0.511334 0.78809798
		 -0.078759998 0.61049098 0.87103599 -0.055645999 -0.48805699 0.87103599 -0.055645999
		 -0.48805699 -0.103393 -0.116314 -0.98781598 0.85242498 -0.109135 -0.511334 -0.103393
		 -0.116314 -0.98781598 0.87103599 -0.055645999 -0.48805699 -0.059059002 -0.081680998
		 -0.99490702 -0.059059002 -0.081680998 -0.99490702 -0.92680299 -0.071556002 -0.36866799
		 -0.103393 -0.116314 -0.98781598 -0.943573 -0.116191 -0.310114 -0.103393 -0.116314
		 -0.98781598 -0.92680299 -0.071556002 -0.36866799 -0.103393 -0.116314 -0.98781598
		 -0.943573 -0.116191 -0.310114 -0.14756399 -0.31198499 -0.93855798 -0.14756399 -0.31198499
		 -0.93855798 0.85242498 -0.109135 -0.511334 -0.103393 -0.116314 -0.98781598 -0.14756399
		 -0.31198499 -0.93855798 -0.943573 -0.116191 -0.310114 -0.92359197 -0.335998 -0.184615
		 0.85242498 -0.109135 -0.511334 -0.14756399 -0.31198499 -0.93855798 0.93088698 0.063801996
		 -0.359694 0.93088698 0.063801996 -0.359694 0.82185102 -0.072639003 0.56505197 0.85242498
		 -0.109135 -0.511334 0.82185102 -0.072639003 0.56505197 0.93088698 0.063801996 -0.359694
		 0.76198202 0.186526 0.62015498 0.76198202 0.186526 0.62015498 0.086684003 -0.103714
		 0.99082297 0.82185102 -0.072639003 0.56505197 -0.124746 -0.028194999 0.99178803 0.82185102
		 -0.072639003 0.56505197 0.086684003 -0.103714 0.99082297 0.086684003 -0.103714 0.99082297
		 -0.69241899 -0.44406 0.568654 -0.124746 -0.028194999 0.99178803 0.136336 0.30119899
		 -0.94376498 -0.077096999 0.177293 -0.981134 0.88347101 0.044222999 -0.46639499 0.88347101
		 0.044222999 -0.46639499 0.86282098 0.20249601 -0.46318099 0.136336 0.30119899 -0.94376498
		 0.86282098 0.20249601 -0.46318099 0.88347101 0.044222999 -0.46639499 0.99046803 0.13164
		 0.040550999 0.136336 0.30119899 -0.94376498 0.86282098 0.20249601 -0.46318099 0.767946
		 0.249908 -0.58974999 0.767946 0.249908 -0.58974999 -0.040801 0.204803 -0.97795302
		 0.136336 0.30119899 -0.94376498 -0.040801 0.204803 -0.97795302 0.767946 0.249908
		 -0.58974999 0.81559998 -0.177155 -0.55082899 0.81559998 -0.177155 -0.55082899 0.015262
		 -0.22076 -0.975209 -0.040801 0.204803 -0.97795302 0.36986601 -0.82592201 -0.42550099
		 0.015262 -0.22076 -0.975209 0.81559998 -0.177155 -0.55082899 0.81559998 -0.177155
		 -0.55082899 0.494463 -0.86663002 -0.066771999 0.36986601 -0.82592201 -0.42550099
		 0.494463 -0.86663002 -0.066771999 0.81559998 -0.177155 -0.55082899 0.93017501 -0.297566
		 -0.21501 0.93017501 -0.297566 -0.21501 0.55928898 -0.81107402 -0.17133 0.494463 -0.86663002
		 -0.066771999 0.990816 0.078367002 -0.110193 0.93017501 -0.297566 -0.21501 0.81559998
		 -0.177155 -0.55082899 0.81559998 -0.177155 -0.55082899 0.767946 0.249908 -0.58974999
		 0.990816 0.078367002 -0.110193 0.86282098 0.20249601 -0.46318099 0.990816 0.078367002
		 -0.110193 0.767946 0.249908 -0.58974999 0.99191803 0.083678998 -0.095376998 0.990816
		 0.078367002 -0.110193 0.86282098 0.20249601 -0.46318099 0.86282098 0.20249601 -0.46318099
		 0.99046803 0.13164 0.040550999 0.99191803 0.083678998 -0.095376998 0.977144 0.091839001
		 0.191716 0.990816 0.078367002 -0.110193 0.99191803 0.083678998 -0.095376998 0.99191803
		 0.083678998 -0.095376998 0.99046803 0.13164 0.040550999 0.977144 0.091839001 0.191716
		 0.81114602 0.18549301 0.55464703 0.977144 0.091839001 0.191716 0.99046803 0.13164
		 0.040550999 0.977144 0.091839001 0.191716 0.81114602 0.18549301 0.55464703 0.77356499
		 0.59883898 0.20733801 0.77356499 0.59883898 0.20733801 0.990816 0.078367002 -0.110193
		 0.977144 0.091839001 0.191716 0.990816 0.078367002 -0.110193 0.77356499 0.59883898
		 0.20733801 0.97763097 0.073562004 -0.197046 0.97763097 0.073562004 -0.197046 0.93017501
		 -0.297566 -0.21501 0.990816 0.078367002 -0.110193 0.55928898 -0.81107402 -0.17133
		 0.93017501 -0.297566 -0.21501 0.97763097 0.073562004 -0.197046 0.97763097 0.073562004
		 -0.197046 0.71995902 -0.68761402 -0.094057001 0.55928898 -0.81107402 -0.17133 0.86086798
		 0.50860101 -0.015201 0.71995902 -0.68761402 -0.094057001 0.97763097 0.073562004 -0.197046
		 0.97763097 0.073562004 -0.197046 0.77356499 0.59883898 0.20733801 0.86086798 0.50860101
		 -0.015201 0.71995902 -0.68761402 -0.094057001 0.86086798 0.50860101 -0.015201 0.828592
		 0.55738401 0.052522998 0.828592 0.55738401 0.052522998 0.840352 -0.54093301 0.034655999
		 0.71995902 -0.68761402 -0.094057001 0.34903601 0.920515 0.17557 0.828592 0.55738401
		 0.052522998 0.86086798 0.50860101 -0.015201 0.86086798 0.50860101 -0.015201 0.77356499
		 0.59883898 0.20733801 0.34903601 0.920515 0.17557 -0.058844998 0.954373 0.29276299
		 0.34903601 0.920515 0.17557 0.77356499 0.59883898 0.20733801 0.77356499 0.59883898
		 0.20733801 0.026008001 0.70537001 0.70836198 -0.058844998 0.954373 0.29276299 0.026008001
		 0.70537001 0.70836198 0.77356499 0.59883898 0.20733801 0.81114602 0.18549301 0.55464703
		 0.81114602 0.18549301 0.55464703 -0.075065002 0.29415199 0.952806 0.026008001 0.70537001
		 0.70836198 -0.82509601 0.28628001 0.48709401 0.026008001 0.70537001 0.70836198 -0.075065002
		 0.29415199 0.952806 0.026008001 0.70537001 0.70836198 -0.82509601 0.28628001 0.48709401
		 -0.82418102 0.50464398 0.25702301 -0.82418102 0.50464398 0.25702301 -0.058844998
		 0.954373 0.29276299 0.026008001 0.70537001 0.70836198 -0.96456701 0.21939801 0.146543
		 -0.82418102 0.50464398 0.25702301 -0.82509601 0.28628001 0.48709401 -0.82509601 0.28628001
		 0.48709401 -0.93872201 0.228833 -0.25775501 -0.96456701 0.21939801 0.146543 -0.82418102
		 0.50464398 0.25702301 -0.96456701 0.21939801 0.146543 -0.96158999 -0.26591799 0.068065003
		 -0.96158999 -0.26591799 0.068065003;
	setAttr ".n[664:829]" -type "float3"  -0.81928402 -0.56579 -0.093036003 -0.82418102
		 0.50464398 0.25702301 -0.87859499 0.47756699 0.001073 -0.82418102 0.50464398 0.25702301
		 -0.81928402 -0.56579 -0.093036003 -0.058844998 0.954373 0.29276299 -0.82418102 0.50464398
		 0.25702301 -0.87859499 0.47756699 0.001073 -0.87859499 0.47756699 0.001073 -0.77857101
		 0.61705297 0.114335 -0.058844998 0.954373 0.29276299 0.050246999 0.98247302 0.17950401
		 -0.058844998 0.954373 0.29276299 -0.77857101 0.61705297 0.114335 0.34903601 0.920515
		 0.17557 -0.058844998 0.954373 0.29276299 0.050246999 0.98247302 0.17950401 0.050246999
		 0.98247302 0.17950401 0.211952 0.96902698 0.126743 0.34903601 0.920515 0.17557 0.828592
		 0.55738401 0.052522998 0.34903601 0.920515 0.17557 0.211952 0.96902698 0.126743 0.211952
		 0.96902698 0.126743 0.77474898 0.56417203 0.285438 0.828592 0.55738401 0.052522998
		 0.840352 -0.54093301 0.034655999 0.828592 0.55738401 0.052522998 0.77474898 0.56417203
		 0.285438 0.77474898 0.56417203 0.285438 0.72034198 -0.49282199 0.48809099 0.840352
		 -0.54093301 0.034655999 0.43727201 0.63053101 0.64126801 0.72034198 -0.49282199 0.48809099
		 0.77474898 0.56417203 0.285438 0.77474898 0.56417203 0.285438 0.211952 0.96902698
		 0.126743 0.43727201 0.63053101 0.64126801 0.050246999 0.98247302 0.17950401 0.43727201
		 0.63053101 0.64126801 0.211952 0.96902698 0.126743 0.045364998 0.76347202 0.64424598
		 0.43727201 0.63053101 0.64126801 0.050246999 0.98247302 0.17950401 0.050246999 0.98247302
		 0.17950401 -0.79096103 0.52699399 0.31089699 0.045364998 0.76347202 0.64424598 -0.71717602
		 0.68803799 0.110736 -0.79096103 0.52699399 0.31089699 0.050246999 0.98247302 0.17950401
		 0.050246999 0.98247302 0.17950401 -0.77857101 0.61705297 0.114335 -0.71717602 0.68803799
		 0.110736 -0.828969 -0.559187 -0.010963 -0.71717602 0.68803799 0.110736 -0.77857101
		 0.61705297 0.114335 -0.79096103 0.52699399 0.31089699 -0.71717602 0.68803799 0.110736
		 -0.828969 -0.559187 -0.010963 -0.886554 -0.461979 -0.024436001 -0.828969 -0.559187
		 -0.010963 -0.77857101 0.61705297 0.114335 -0.77857101 0.61705297 0.114335 -0.87859499
		 0.47756699 0.001073 -0.886554 -0.461979 -0.024436001 -0.81928402 -0.56579 -0.093036003
		 -0.886554 -0.461979 -0.024436001 -0.87859499 0.47756699 0.001073 -0.120862 -0.99237299
		 -0.024256 -0.81928402 -0.56579 -0.093036003 -0.96158999 -0.26591799 0.068065003 -0.96158999
		 -0.26591799 0.068065003 -0.36579901 -0.92738003 0.078474 -0.120862 -0.99237299 -0.024256
		 -0.94468302 -0.32030299 -0.070565999 -0.36579901 -0.92738003 0.078474 -0.96158999
		 -0.26591799 0.068065003 -0.96158999 -0.26591799 0.068065003 -0.986413 0.084408998
		 -0.14094 -0.94468302 -0.32030299 -0.070565999 -0.986413 0.084408998 -0.14094 -0.96158999
		 -0.26591799 0.068065003 -0.96456701 0.21939801 0.146543 -0.96456701 0.21939801 0.146543
		 -0.98966497 -0.00076999998 -0.143399 -0.986413 0.084408998 -0.14094 -0.98966497 -0.00076999998
		 -0.143399 -0.96456701 0.21939801 0.146543 -0.93872201 0.228833 -0.25775501 -0.93872201
		 0.228833 -0.25775501 -0.649979 0.261538 -0.71353 -0.98966497 -0.00076999998 -0.143399
		 -0.986413 0.084408998 -0.14094 -0.98966497 -0.00076999998 -0.143399 -0.649979 0.261538
		 -0.71353 0.136336 0.30119899 -0.94376498 -0.649979 0.261538 -0.71353 -0.93872201
		 0.228833 -0.25775501 -0.93872201 0.228833 -0.25775501 -0.077096999 0.177293 -0.981134
		 0.136336 0.30119899 -0.94376498 -0.649979 0.261538 -0.71353 0.136336 0.30119899 -0.94376498
		 -0.040801 0.204803 -0.97795302 -0.040801 0.204803 -0.97795302 -0.72183901 0.28323299
		 -0.63144797 -0.649979 0.261538 -0.71353 -0.986413 0.084408998 -0.14094 -0.649979
		 0.261538 -0.71353 -0.72183901 0.28323299 -0.63144797 -0.72183901 0.28323299 -0.63144797
		 -0.77692199 -0.191999 -0.59960699 -0.986413 0.084408998 -0.14094 -0.94468302 -0.32030299
		 -0.070565999 -0.986413 0.084408998 -0.14094 -0.77692199 -0.191999 -0.59960699 -0.77692199
		 -0.191999 -0.59960699 -0.36579901 -0.92738003 0.078474 -0.94468302 -0.32030299 -0.070565999
		 -0.369407 -0.75969899 -0.53516001 -0.36579901 -0.92738003 0.078474 -0.77692199 -0.191999
		 -0.59960699 -0.77692199 -0.191999 -0.59960699 0.015262 -0.22076 -0.975209 -0.369407
		 -0.75969899 -0.53516001 -0.040801 0.204803 -0.97795302 0.015262 -0.22076 -0.975209
		 -0.77692199 -0.191999 -0.59960699 -0.77692199 -0.191999 -0.59960699 -0.72183901 0.28323299
		 -0.63144797 -0.040801 0.204803 -0.97795302 0.38304499 -0.63822103 0.66779602 0.72034198
		 -0.49282199 0.48809099 0.43727201 0.63053101 0.64126801 0.43727201 0.63053101 0.64126801
		 0.136676 -0.54184997 0.82928801 0.38304499 -0.63822103 0.66779602 0.136676 -0.54184997
		 0.82928801 0.43727201 0.63053101 0.64126801 0.045364998 0.76347202 0.64424598 0.045364998
		 0.76347202 0.64424598 -0.37155801 0.25381199 0.89304203 0.136676 -0.54184997 0.82928801
		 -0.79096103 0.52699399 0.31089699 -0.37155801 0.25381199 0.89304203 0.045364998 0.76347202
		 0.64424598 -0.53545201 -0.552441 0.63882703 0.136676 -0.54184997 0.82928801 -0.37155801
		 0.25381199 0.89304203 -0.37155801 0.25381199 0.89304203 -0.79096103 0.52699399 0.31089699
		 -0.53545201 -0.552441 0.63882703 -0.718548 -0.67674899 0.160312 -0.53545201 -0.552441
		 0.63882703 -0.79096103 0.52699399 0.31089699 -0.79096103 0.52699399 0.31089699 -0.828969
		 -0.559187 -0.010963 -0.718548 -0.67674899 0.160312 0.75125301 0.27081299 -0.60189599
		 0.65943402 0.246786 -0.71010101 0.95509303 -0.047014002 -0.29255399 0.95509303 -0.047014002
		 -0.29255399 0.99435002 0.036178999 0.099799 0.75125301 0.27081299 -0.60189599 0.59630799
		 0.67439198 -0.43544501 0.75125301 0.27081299 -0.60189599;
	setAttr ".n[830:995]" -type "float3"  0.99435002 0.036178999 0.099799 0.99435002
		 0.036178999 0.099799 0.95509303 -0.047014002 -0.29255399 0.83483702 -0.43305099 -0.33987501
		 0.70898002 0.57954299 0.40184301 0.59630799 0.67439198 -0.43544501 0.99435002 0.036178999
		 0.099799 0.99435002 0.036178999 0.099799 0.83483702 -0.43305099 -0.33987501 0.649849
		 -0.25532299 0.71589601 0.649849 -0.25532299 0.71589601 0.70898002 0.57954299 0.40184301
		 0.99435002 0.036178999 0.099799 0.649849 -0.25532299 0.71589601 0.83483702 -0.43305099
		 -0.33987501 0.434232 -0.90040302 0.02678 0.434232 -0.90040302 0.02678 0.50727397
		 -0.57562798 0.64134699 0.649849 -0.25532299 0.71589601 0.50727397 -0.57562798 0.64134699
		 0.434232 -0.90040302 0.02678 0 -0.97722101 -0.21222299 0 0.079910003 0.99680197 0.649849
		 -0.25532299 0.71589601 0.50727397 -0.57562798 0.64134699 0.649849 -0.25532299 0.71589601
		 0 0.079910003 0.99680197 0.28196299 0.40712801 0.86875999 0.28196299 0.40712801 0.86875999
		 0.70898002 0.57954299 0.40184301 0.649849 -0.25532299 0.71589601 0 0.68795502 0.72575402
		 0.28196299 0.40712801 0.86875999 0 0.079910003 0.99680197 0.28196299 0.40712801 0.86875999
		 0 0.68795502 0.72575402 -0.31524301 0.74534899 0.58743298 -0.31524301 0.74534899
		 0.58743298 0.100455 0.90016198 0.42381299 0.28196299 0.40712801 0.86875999 0.70898002
		 0.57954299 0.40184301 0.28196299 0.40712801 0.86875999 0.100455 0.90016198 0.42381299
		 0.100455 0.90016198 0.42381299 0.38361901 0.915748 0.119345 0.70898002 0.57954299
		 0.40184301 0.59630799 0.67439198 -0.43544501 0.70898002 0.57954299 0.40184301 0.38361901
		 0.915748 0.119345 0.38361901 0.915748 0.119345 0.18987399 0.75586998 -0.62658501
		 0.59630799 0.67439198 -0.43544501 0.95509303 -0.047014002 -0.29255399 0.65943402
		 0.246786 -0.71010101 0.65994602 -0.19637699 -0.72519499 0.65994602 -0.19637699 -0.72519499
		 0.86405998 -0.338045 -0.37299699 0.95509303 -0.047014002 -0.29255399 0.79323697 -0.35210299
		 -0.496788 0.95509303 -0.047014002 -0.29255399 0.86405998 -0.338045 -0.37299699 0.83483702
		 -0.43305099 -0.33987501 0.95509303 -0.047014002 -0.29255399 0.79323697 -0.35210299
		 -0.496788 0.29966801 -0.35346001 -0.88615203 0.79323697 -0.35210299 -0.496788 0.86405998
		 -0.338045 -0.37299699 0.86405998 -0.338045 -0.37299699 0.431696 -0.015275 -0.90188998
		 0.29966801 -0.35346001 -0.88615203 0.431696 -0.015275 -0.90188998 0.86405998 -0.338045
		 -0.37299699 0.87984198 -0.34226999 -0.329743 0.87984198 -0.34226999 -0.329743 0.99960399
		 -0.014182 0.024289999 0.431696 -0.015275 -0.90188998 0.99960399 -0.014182 0.024289999
		 0.87984198 -0.34226999 -0.329743 0.931036 -0.057264999 -0.360405 0.931036 -0.057264999
		 -0.360405 0.995377 -0.048613999 0.082837 0.99960399 -0.014182 0.024289999 0.94757402
		 0.060546 -0.31374699 0.995377 -0.048613999 0.082837 0.931036 -0.057264999 -0.360405
		 0.99960399 -0.014182 0.024289999 0.995377 -0.048613999 0.082837 0.98663902 0.105734
		 0.123951 0.98663902 0.105734 0.123951 0.85277998 -0.072292998 0.51724398 0.99960399
		 -0.014182 0.024289999 0.98242199 -0.0094929999 0.186433 0.98663902 0.105734 0.123951
		 0.995377 -0.048613999 0.082837 0.85277998 -0.072292998 0.51724398 0.98663902 0.105734
		 0.123951 0.98877001 0.146878 0.027589999 0.98877001 0.146878 0.027589999 0.95400602
		 -0.299458 -0.014055 0.85277998 -0.072292998 0.51724398 0.960473 -0.26714101 0.078285001
		 0.85277998 -0.072292998 0.51724398 0.95400602 -0.299458 -0.014055 0.795111 -0.50352699
		 -0.33802199 0.85277998 -0.072292998 0.51724398 0.960473 -0.26714101 0.078285001 0.960473
		 -0.26714101 0.078285001 0.89042002 -0.22776499 -0.39405 0.795111 -0.50352699 -0.33802199
		 0.79323697 -0.35210299 -0.496788 0.795111 -0.50352699 -0.33802199 0.89042002 -0.22776499
		 -0.39405 0.29966801 -0.35346001 -0.88615203 0.795111 -0.50352699 -0.33802199 0.79323697
		 -0.35210299 -0.496788 0.83483702 -0.43305099 -0.33987501 0.79323697 -0.35210299 -0.496788
		 0.89042002 -0.22776499 -0.39405 0.89042002 -0.22776499 -0.39405 0.91314298 -0.223456
		 -0.34093499 0.83483702 -0.43305099 -0.33987501 0.65056199 -0.65600502 -0.38265699
		 0.83483702 -0.43305099 -0.33987501 0.91314298 -0.223456 -0.34093499 0.434232 -0.90040302
		 0.02678 0.83483702 -0.43305099 -0.33987501 0.65056199 -0.65600502 -0.38265699 0.91488999
		 -0.32032499 0.2457 0.61523598 -0.78457999 0.076930001 0.65056199 -0.65600502 -0.38265699
		 0.65056199 -0.65600502 -0.38265699 0.91314298 -0.223456 -0.34093499 0.91488999 -0.32032499
		 0.2457 0.971147 -0.041067999 0.234918 0.91488999 -0.32032499 0.2457 0.91314298 -0.223456
		 -0.34093499 0.91314298 -0.223456 -0.34093499 0.89042002 -0.22776499 -0.39405 0.971147
		 -0.041067999 0.234918 0.960473 -0.26714101 0.078285001 0.971147 -0.041067999 0.234918
		 0.89042002 -0.22776499 -0.39405 0.98706102 0.080236003 0.138826 0.98242199 -0.0094929999
		 0.186433 0.995377 -0.048613999 0.082837 0.995377 -0.048613999 0.082837 0.94757402
		 0.060546 -0.31374699 0.98706102 0.080236003 0.138826 0.88442498 0.33658299 -0.32327199
		 0.98706102 0.080236003 0.138826 0.94757402 0.060546 -0.31374699 0.920147 0.363841
		 0.144741 0.98706102 0.080236003 0.138826 0.88442498 0.33658299 -0.32327199 0.88442498
		 0.33658299 -0.32327199 0.74397701 0.63111198 -0.21953601 0.920147 0.363841 0.144741
		 0.64417702 0.76467502 0.017538 0.920147 0.363841 0.144741 0.74397701 0.63111198 -0.21953601
		 0.920147 0.363841 0.144741 0.64417702 0.76467502 0.017538 0.66617399 0.69220102 0.277614
		 0.66617399 0.69220102 0.277614 0.74717999 0.436719 0.50099802 0.920147 0.363841 0.144741;
	setAttr ".n[996:1161]" -type "float3"  0.812208 0.181457 0.55442899 0.920147
		 0.363841 0.144741 0.74717999 0.436719 0.50099802 0.98706102 0.080236003 0.138826
		 0.920147 0.363841 0.144741 0.812208 0.181457 0.55442899 0.812208 0.181457 0.55442899
		 0.91263598 0.058084 0.40462601 0.98706102 0.080236003 0.138826 0.98242199 -0.0094929999
		 0.186433 0.98706102 0.080236003 0.138826 0.91263598 0.058084 0.40462601 0.66617399
		 0.69220102 0.277614 0.64417702 0.76467502 0.017538 0.26666099 0.96336502 0.028644999
		 0.26666099 0.96336502 0.028644999 0.32095799 0.851336 0.414985 0.66617399 0.69220102
		 0.277614 0.74717999 0.436719 0.50099802 0.66617399 0.69220102 0.277614 0.32095799
		 0.851336 0.414985 0 0.99536902 0.096128002 0.32095799 0.851336 0.414985 0.26666099
		 0.96336502 0.028644999 0.74717999 0.436719 0.50099802 0.32095799 0.851336 0.414985
		 0.39926401 0.53355902 0.74558902 0.39926401 0.53355902 0.74558902 0.812208 0.181457
		 0.55442899 0.74717999 0.436719 0.50099802 0 0.83927602 0.54370499 0.39926401 0.53355902
		 0.74558902 0.32095799 0.851336 0.414985 0.32095799 0.851336 0.414985 0 0.99536902
		 0.096128002 0 0.83927602 0.54370499 0 0.488029 0.87282801 0.39926401 0.53355902 0.74558902
		 0 0.83927602 0.54370499 0.39926401 0.53355902 0.74558902 0 0.488029 0.87282801 0.3107
		 0.201276 0.92895299 0.3107 0.201276 0.92895299 0.812208 0.181457 0.55442899 0.39926401
		 0.53355902 0.74558902 0.812208 0.181457 0.55442899 0.3107 0.201276 0.92895299 0.435763
		 0.19798 0.87801802 0.435763 0.19798 0.87801802 0.91263598 0.058084 0.40462601 0.812208
		 0.181457 0.55442899 0.91263598 0.058084 0.40462601 0.435763 0.19798 0.87801802 0.786035
		 -0.071276002 0.61405897 0.786035 -0.071276002 0.61405897 0.98242199 -0.0094929999
		 0.186433 0.91263598 0.058084 0.40462601 0.98242199 -0.0094929999 0.186433 0.786035
		 -0.071276002 0.61405897 0.88996398 0.103742 0.444074 0.88996398 0.103742 0.444074
		 0.98663902 0.105734 0.123951 0.98242199 -0.0094929999 0.186433 0.98877001 0.146878
		 0.027589999 0.98663902 0.105734 0.123951 0.88996398 0.103742 0.444074 0.88996398
		 0.103742 0.444074 0.949359 -0.117325 0.29146701 0.98877001 0.146878 0.027589999 0.95400602
		 -0.299458 -0.014055 0.98877001 0.146878 0.027589999 0.949359 -0.117325 0.29146701
		 0.949359 -0.117325 0.29146701 0.84968501 -0.43231499 0.30189401 0.95400602 -0.299458
		 -0.014055 0.960473 -0.26714101 0.078285001 0.95400602 -0.299458 -0.014055 0.84968501
		 -0.43231499 0.30189401 0.69696099 -0.111079 0.70845401 0.84968501 -0.43231499 0.30189401
		 0.949359 -0.117325 0.29146701 0.949359 -0.117325 0.29146701 0.88996398 0.103742 0.444074
		 0.69696099 -0.111079 0.70845401 0.84968501 -0.43231499 0.30189401 0.69696099 -0.111079
		 0.70845401 0.59579599 -0.41597101 0.68701899 0.59579599 -0.41597101 0.68701899 0.84964502
		 -0.22507299 0.47691301 0.84968501 -0.43231499 0.30189401 0.960473 -0.26714101 0.078285001
		 0.84968501 -0.43231499 0.30189401 0.84964502 -0.22507299 0.47691301 0.84964502 -0.22507299
		 0.47691301 0.971147 -0.041067999 0.234918 0.960473 -0.26714101 0.078285001 0.971147
		 -0.041067999 0.234918 0.84964502 -0.22507299 0.47691301 0.846403 -0.065787002 0.52846497
		 0.846403 -0.065787002 0.52846497 0.91488999 -0.32032499 0.2457 0.971147 -0.041067999
		 0.234918 0.91488999 -0.32032499 0.2457 0.846403 -0.065787002 0.52846497 0.83851498
		 -0.38222301 0.38832799 0.83851498 -0.38222301 0.38832799 0.61523598 -0.78457999 0.076930001
		 0.91488999 -0.32032499 0.2457 0.61523598 -0.78457999 0.076930001 0.83851498 -0.38222301
		 0.38832799 0.51982802 -0.84166998 -0.146184 0.51982802 -0.84166998 -0.146184 0.434232
		 -0.90040302 0.02678 0.61523598 -0.78457999 0.076930001 0 -0.97722101 -0.21222299
		 0.434232 -0.90040302 0.02678 0.51982802 -0.84166998 -0.146184 0.51982802 -0.84166998
		 -0.146184 0.28134501 -0.94942099 -0.139442 0 -0.97722101 -0.21222299 0 -0.99947 0.032561999
		 0 -0.97722101 -0.21222299 0.28134501 -0.94942099 -0.139442 0.674375 -0.609559 0.41672099
		 0.28134501 -0.94942099 -0.139442 0.51982802 -0.84166998 -0.146184 0.51982802 -0.84166998
		 -0.146184 0.83851498 -0.38222301 0.38832799 0.674375 -0.609559 0.41672099 0 -0.99947
		 0.032561999 0.28134501 -0.94942099 -0.139442 0.674375 -0.609559 0.41672099 0.674375
		 -0.609559 0.41672099 0 -0.54422098 0.83894199 0 -0.99947 0.032561999 0.540214 -0.36476901
		 0.758362 0 -0.54422098 0.83894199 0.674375 -0.609559 0.41672099 0.674375 -0.609559
		 0.41672099 0.89532399 -0.117932 0.429519 0.540214 -0.36476901 0.758362 0.89532399
		 -0.117932 0.429519 0.674375 -0.609559 0.41672099 0.83851498 -0.38222301 0.38832799
		 0.83851498 -0.38222301 0.38832799 0.846403 -0.065787002 0.52846497 0.89532399 -0.117932
		 0.429519 0.53571999 -0.273408 0.79890698 0.89532399 -0.117932 0.429519 0.846403 -0.065787002
		 0.52846497 0.846403 -0.065787002 0.52846497 0.84964502 -0.22507299 0.47691301 0.53571999
		 -0.273408 0.79890698 0.79701602 -0.008955 0.60389203 0.53571999 -0.273408 0.79890698
		 0.84964502 -0.22507299 0.47691301 0.84964502 -0.22507299 0.47691301 0.59579599 -0.41597101
		 0.68701899 0.79701602 -0.008955 0.60389203 0.52775598 -0.272172 0.804609 0.79701602
		 -0.008955 0.60389203 0.59579599 -0.41597101 0.68701899 0.59579599 -0.41597101 0.68701899
		 0.487425 0.017162999 0.87299597 0.52775598 -0.272172 0.804609 0.487425 0.017162999
		 0.87299597;
	setAttr ".n[1162:1327]" -type "float3"  0.59579599 -0.41597101 0.68701899 0.69696099
		 -0.111079 0.70845401 0.69696099 -0.111079 0.70845401 0.43301699 0.37212899 0.82098502
		 0.487425 0.017162999 0.87299597 0.43301699 0.37212899 0.82098502 0.69696099 -0.111079
		 0.70845401 0.88996398 0.103742 0.444074 0.88996398 0.103742 0.444074 0.41180101 -0.17983
		 0.893354 0.43301699 0.37212899 0.82098502 0.43807 -0.43750301 0.785294 0.41180101
		 -0.17983 0.893354 0.88996398 0.103742 0.444074 0.88996398 0.103742 0.444074 0.786035
		 -0.071276002 0.61405897 0.43807 -0.43750301 0.785294 0.41180101 -0.17983 0.893354
		 0.43807 -0.43750301 0.785294 0.408723 -0.061475001 0.910586 0.408723 -0.061475001
		 0.910586 0.43301699 0.37212899 0.82098502 0.41180101 -0.17983 0.893354 0.43301699
		 0.37212899 0.82098502 0.408723 -0.061475001 0.910586 0.50827497 0.59829003 0.61944002
		 0.50827497 0.59829003 0.61944002 0.487425 0.017162999 0.87299597 0.43301699 0.37212899
		 0.82098502 0.64845699 0.31971899 0.69085699 0.487425 0.017162999 0.87299597 0.50827497
		 0.59829003 0.61944002 0.50827497 0.59829003 0.61944002 0.408723 -0.061475001 0.910586
		 0.64845699 0.31971899 0.69085699 0.487425 0.017162999 0.87299597 0.64845699 0.31971899
		 0.69085699 0.609864 0.144629 0.77919698 0.609864 0.144629 0.77919698 0.71092498 0.005905
		 0.70324302 0.487425 0.017162999 0.87299597 0.52775598 -0.272172 0.804609 0.487425
		 0.017162999 0.87299597 0.71092498 0.005905 0.70324302 0.71092498 0.005905 0.70324302
		 0.65208298 -0.142894 0.74456 0.52775598 -0.272172 0.804609 0.79701602 -0.008955 0.60389203
		 0.52775598 -0.272172 0.804609 0.65208298 -0.142894 0.74456 0.65208298 -0.142894 0.74456
		 0.64159 0.29352999 0.70866197 0.79701602 -0.008955 0.60389203 0.721205 -0.30032399
		 0.62423402 0.79701602 -0.008955 0.60389203 0.64159 0.29352999 0.70866197 0.53571999
		 -0.273408 0.79890698 0.79701602 -0.008955 0.60389203 0.721205 -0.30032399 0.62423402
		 0.516855 -0.34940901 0.78152102 0.721205 -0.30032399 0.62423402 0.64159 0.29352999
		 0.70866197 0.64159 0.29352999 0.70866197 0.378061 0.030074 0.92529202 0.516855 -0.34940901
		 0.78152102 0.38103801 0.247344 0.89086002 0.378061 0.030074 0.92529202 0.64159 0.29352999
		 0.70866197 0.64159 0.29352999 0.70866197 0.65208298 -0.142894 0.74456 0.47445101
		 0.066462003 0.87776899 0.38103801 0.247344 0.89086002 0.29083899 -0.46478999 0.83629102
		 1e-06 -0.53566802 0.84442902 0 -0.567689 0.82324302 0.65208298 -0.142894 0.74456
		 0.65208298 -0.142894 0.74456 0.68219298 -0.0064269998 0.73114401 0.29083899 -0.46478999
		 0.83629102 0.68219298 -0.0064269998 0.73114401 0.65208298 -0.142894 0.74456 0.71092498
		 0.005905 0.70324302 0.71092498 0.005905 0.70324302 0.71813899 0.234418 0.65522802
		 0.68219298 -0.0064269998 0.73114401 0.71813899 0.234418 0.65522802 0.71092498 0.005905
		 0.70324302 0.609864 0.144629 0.77919698 0.609864 0.144629 0.77919698 0.36296901 -0.193244
		 0.91154301 0.71813899 0.234418 0.65522802 0.58790898 -0.24934299 0.769539 0.36296901
		 -0.193244 0.91154301 0.609864 0.144629 0.77919698 0.609864 0.144629 0.77919698 0.64845699
		 0.31971899 0.69085699 0.58790898 -0.24934299 0.769539 0.408723 -0.061475001 0.910586
		 0.58790898 -0.24934299 0.769539 0.64845699 0.31971899 0.69085699 0.58790898 -0.24934299
		 0.769539 0.408723 -0.061475001 0.910586 0.33424401 -0.560965 0.75736398 0.33424401
		 -0.560965 0.75736398 0.36296901 -0.193244 0.91154301 0.58790898 -0.24934299 0.769539
		 0.33424401 -0.560965 0.75736398 0.408723 -0.061475001 0.910586 0.43807 -0.43750301
		 0.785294 0.43807 -0.43750301 0.785294 0.786035 -0.071276002 0.61405897 0.33424401
		 -0.560965 0.75736398 0.30261999 -0.1811 0.93574798 0.33424401 -0.560965 0.75736398
		 0.786035 -0.071276002 0.61405897 0.36296901 -0.193244 0.91154301 0.33424401 -0.560965
		 0.75736398 0.30261999 -0.1811 0.93574798 0.435763 0.19798 0.87801802 0.30261999 -0.1811
		 0.93574798 0.786035 -0.071276002 0.61405897 0 0.041880999 0.99912298 0.36296901 -0.193244
		 0.91154301 0.30261999 -0.1811 0.93574798 0.30261999 -0.1811 0.93574798 0.435763 0.19798
		 0.87801802 0 0.041880999 0.99912298 0.36296901 -0.193244 0.91154301 0 0.041880999
		 0.99912298 0 0.117372 0.99308801 0 0.117372 0.99308801 0.71813899 0.234418 0.65522802
		 0.36296901 -0.193244 0.91154301 0.71813899 0.234418 0.65522802 0 0.117372 0.99308801
		 0.69037598 0.31459799 0.65146798 0.69037598 0.31459799 0.65146798 0.68219298 -0.0064269998
		 0.73114401 0.71813899 0.234418 0.65522802 0.68219298 -0.0064269998 0.73114401 0.69037598
		 0.31459799 0.65146798 0.63584203 0.33498201 0.69533598 0.68025702 -0.14624301 0.71823603
		 0.29083899 -0.46478999 0.83629102 0.68219298 -0.0064269998 0.73114401 1e-06 -0.39229199
		 0.91984099 1e-06 -0.53566802 0.84442902 0 0.126624 0.99195099 0 0.041880999 0.99912298
		 0.435763 0.19798 0.87801802 0.435763 0.19798 0.87801802 0.3107 0.201276 0.92895299
		 0 0.126624 0.99195099 0 0.163691 0.98651201 0 0.126624 0.99195099 0.3107 0.201276
		 0.92895299 0.3107 0.201276 0.92895299 0 0.488029 0.87282801 0 0.163691 0.98651201
		 0 -0.54422098 0.83894199 0.540214 -0.36476901 0.758362 0 -0.39851099 0.91716403 0
		 -0.39851099 0.91716403 0.540214 -0.36476901 0.758362 0 -0.39829499 0.91725701 0.48877901
		 0.070243001 0.86957502;
	setAttr ".n[1328:1493]" -type "float3"  0 0.73555702 0.677463 0 -0.39829499 0.91725701
		 0 -0.39829499 0.91725701 0.540214 -0.36476901 0.758362 0.48877901 0.070243001 0.86957502
		 0.235339 0.77764302 0.58299798 0 0.73555702 0.677463 0.48877901 0.070243001 0.86957502
		 0.48877901 0.070243001 0.86957502 0.540214 -0.36476901 0.758362 0.77433997 0.060525
		 0.62986898 0.77433997 0.060525 0.62986898 0.235339 0.77764302 0.58299798 0.48877901
		 0.070243001 0.86957502 0.77433997 0.060525 0.62986898 0.540214 -0.36476901 0.758362
		 0.89532399 -0.117932 0.429519 0.89532399 -0.117932 0.429519 0.53571999 -0.273408
		 0.79890698 0.77433997 0.060525 0.62986898 -0.088997997 0.67123097 0.73588598 0.77433997
		 0.060525 0.62986898 0.53571999 -0.273408 0.79890698 0.235339 0.77764302 0.58299798
		 0.77433997 0.060525 0.62986898 -0.088997997 0.67123097 0.73588598 0 0.52906501 -0.84858203
		 0.081644997 0.47347599 -0.87701499 0 0.273835 -0.96177697 0.081644997 0.47347599
		 -0.87701499 0 0.52906501 -0.84858203 0.59630799 0.67439198 -0.43544501 0.59630799
		 0.67439198 -0.43544501 0.18987399 0.75586998 -0.62658501 0.081644997 0.47347599 -0.87701499
		 0.42640501 0.523202 -0.73786098 0.59630799 0.67439198 -0.43544501 0 0.52906501 -0.84858203
		 0.41355699 0.19287001 -0.88981599 0.75125301 0.27081299 -0.60189599 0.42640501 0.523202
		 -0.73786098 0.59630799 0.67439198 -0.43544501 0.42640501 0.523202 -0.73786098 0.75125301
		 0.27081299 -0.60189599 0.45083901 0.18315899 -0.87361097 0.75125301 0.27081299 -0.60189599
		 0.41355699 0.19287001 -0.88981599 0.45083901 0.18315899 -0.87361097 0.351533 0.233365
		 -0.90662301 0.65943402 0.246786 -0.71010101 0.65943402 0.246786 -0.71010101 0.75125301
		 0.27081299 -0.60189599 0.45083901 0.18315899 -0.87361097 0.65994602 -0.19637699 -0.72519499
		 0.65943402 0.246786 -0.71010101 0.351533 0.233365 -0.90662301 0.351533 0.233365 -0.90662301
		 0.326989 -0.402576 -0.85499197 0.65994602 -0.19637699 -0.72519499 0.326989 -0.402576
		 -0.85499197 0.31833699 -0.57509702 -0.75360799 0.58061898 -0.54651803 -0.60349 0.58061898
		 -0.54651803 -0.60349 0.65994602 -0.19637699 -0.72519499 0.326989 -0.402576 -0.85499197
		 0.86405998 -0.338045 -0.37299699 0.65994602 -0.19637699 -0.72519499 0.58061898 -0.54651803
		 -0.60349 0.58061898 -0.54651803 -0.60349 0.87984198 -0.34226999 -0.329743 0.86405998
		 -0.338045 -0.37299699 0.51215702 -0.36155099 -0.77908701 0.87984198 -0.34226999 -0.329743
		 0.58061898 -0.54651803 -0.60349 0.58061898 -0.54651803 -0.60349 0.31833699 -0.57509702
		 -0.75360799 0.51215702 -0.36155099 -0.77908701 0.359366 -0.348566 -0.865655 0.51215702
		 -0.36155099 -0.77908701 0.31833699 -0.57509702 -0.75360799 0.51215702 -0.36155099
		 -0.77908701 0.359366 -0.348566 -0.865655 0.33779699 -0.000145 -0.94121897 0 0.263704
		 -0.96460402 0.60034198 0.0055260002 -0.79972398 0.33779699 -0.000145 -0.94121897
		 0.51215702 -0.36155099 -0.77908701 0.33779699 -0.000145 -0.94121897 0.60034198 0.0055260002
		 -0.79972398 0.60034198 0.0055260002 -0.79972398 0.87984198 -0.34226999 -0.329743
		 0.51215702 -0.36155099 -0.77908701 0.931036 -0.057264999 -0.360405 0.87984198 -0.34226999
		 -0.329743 0.60034198 0.0055260002 -0.79972398 0.60034198 0.0055260002 -0.79972398
		 0.623905 0.185422 -0.759184 0.931036 -0.057264999 -0.360405 0 0.263704 -0.96460402
		 0.623905 0.185422 -0.759184 0.60034198 0.0055260002 -0.79972398 0.94757402 0.060546
		 -0.31374699 0.931036 -0.057264999 -0.360405 0.623905 0.185422 -0.759184 0.623905
		 0.185422 -0.759184 0.88442498 0.33658299 -0.32327199 0.94757402 0.060546 -0.31374699
		 0.48139399 0.51210999 -0.711339 0.88442498 0.33658299 -0.32327199 0.623905 0.185422
		 -0.759184 0.623905 0.185422 -0.759184 0 0.263704 -0.96460402 0.48139399 0.51210999
		 -0.711339 0.74397701 0.63111198 -0.21953601 0.88442498 0.33658299 -0.32327199 0.48139399
		 0.51210999 -0.711339 0 0.681835 -0.73150599 0.48139399 0.51210999 -0.711339 0 0.263704
		 -0.96460402 0 0.99536902 0.096128002 0.26666099 0.96336502 0.028644999 0 0.96477997
		 -0.26305801 0.32485199 0.88765198 -0.32641301 0 0.96477997 -0.26305801 0.26666099
		 0.96336502 0.028644999 0 0.681835 -0.73150599 0 0.96477997 -0.26305801 0.32485199
		 0.88765198 -0.32641301 0.32485199 0.88765198 -0.32641301 0.48139399 0.51210999 -0.711339
		 0 0.681835 -0.73150599 0.74397701 0.63111198 -0.21953601 0.48139399 0.51210999 -0.711339
		 0.32485199 0.88765198 -0.32641301 0.32485199 0.88765198 -0.32641301 0.64417702 0.76467502
		 0.017538 0.74397701 0.63111198 -0.21953601 0.64417702 0.76467502 0.017538 0.32485199
		 0.88765198 -0.32641301 0.26666099 0.96336502 0.028644999 0 0.105379 0.99443197 0
		 -0.21972901 0.97556102 0.313613 0.106881 0.94351703 0.313613 0.106881 0.94351703
		 0 0.129896 0.99152797 0 0.105379 0.99443197 0.313613 0.106881 0.94351703 0 -0.21972901
		 0.97556102 0.80596697 0.16671699 0.56799799 0 0.129896 0.99152797 0.313613 0.106881
		 0.94351703 0.42636299 0.186419 0.88513398 0.42636299 0.186419 0.88513398 0.35431701
		 -0.27670801 0.89324802 0 0.129896 0.99152797 0 -0.357389 0.93395603 0 0.129896 0.99152797
		 0.35431701 -0.27670801 0.89324802 0.35431701 -0.27670801 0.89324802 0.188173 -0.392764
		 0.90018201 0 -0.357389 0.93395603 0 -0.289289 0.95724201 0 -0.357389 0.93395603 0.188173
		 -0.392764 0.90018201 0.188173 -0.392764 0.90018201 0.24248201 -0.073611997 0.96735901;
	setAttr ".n[1494:1659]" -type "float3"  0 -0.289289 0.95724201 0 0.000956 1 0
		 -0.289289 0.95724201 0.24248201 -0.073611997 0.96735901 0.24248201 -0.073611997 0.96735901
		 0.20643 0.17962 0.961833 0 0.000956 1 0 0.256953 0.96642399 0 0.000956 1 0.20643
		 0.17962 0.961833 0.127709 0.41145799 0.90243697 0 0.46966699 0.88284397 0 0.256953
		 0.96642399 0 0.256953 0.96642399 0.20643 0.17962 0.961833 0.127709 0.41145799 0.90243697
		 0.35818601 0.35448399 0.863738 0.127709 0.41145799 0.90243697 0.20643 0.17962 0.961833
		 0.20643 0.17962 0.961833 0.494598 0.095729999 0.86383301 0.35818601 0.35448399 0.863738
		 0.494598 0.095729999 0.86383301 0.20643 0.17962 0.961833 0.24248201 -0.073611997
		 0.96735901 0.24248201 -0.073611997 0.96735901 0.53771901 -0.13735101 0.83186102 0.494598
		 0.095729999 0.86383301 0.53771901 -0.13735101 0.83186102 0.24248201 -0.073611997
		 0.96735901 0.188173 -0.392764 0.90018201 0.188173 -0.392764 0.90018201 0.50259 -0.49185899
		 0.71096998 0.53771901 -0.13735101 0.83186102 0.50259 -0.49185899 0.71096998 0.188173
		 -0.392764 0.90018201 0.35431701 -0.27670801 0.89324802 0.35431701 -0.27670801 0.89324802
		 0.78320497 -0.449157 0.429939 0.50259 -0.49185899 0.71096998 0.84164202 0.15181801
		 0.51825601 0.78320497 -0.449157 0.429939 0.35431701 -0.27670801 0.89324802 0.35431701
		 -0.27670801 0.89324802 0.42636299 0.186419 0.88513398 0.84164202 0.15181801 0.51825601
		 0.76808101 0.220007 0.601372 0.84164202 0.15181801 0.51825601 0.42636299 0.186419
		 0.88513398 0.42636299 0.186419 0.88513398 0.313613 0.106881 0.94351703 0.76808101
		 0.220007 0.601372 0.80596697 0.16671699 0.56799799 0.76808101 0.220007 0.601372 0.313613
		 0.106881 0.94351703 0.76808101 0.220007 0.601372 0.80596697 0.16671699 0.56799799
		 0.97501397 0.219584 0.033633001 0.97501397 0.219584 0.033633001 0.84164202 0.15181801
		 0.51825601 0.76808101 0.220007 0.601372 0.751194 0.118363 -0.64938301 0.97501397
		 0.219584 0.033633001 0.80596697 0.16671699 0.56799799 0.84164202 0.15181801 0.51825601
		 0.97501397 0.219584 0.033633001 0.99524802 0.060302999 -0.076447003 0.99524802 0.060302999
		 -0.076447003 0.78320497 -0.449157 0.429939 0.84164202 0.15181801 0.51825601 0.72658598
		 0.299211 -0.61850297 0.99524802 0.060302999 -0.076447003 0.97501397 0.219584 0.033633001
		 0.97501397 0.219584 0.033633001 0.751194 0.118363 -0.64938301 0.72658598 0.299211
		 -0.61850297 0.20719101 0.27635899 -0.93845499 0.72658598 0.299211 -0.61850297 0.751194
		 0.118363 -0.64938301 0.751194 0.118363 -0.64938301 0 0.072544999 -0.997365 0.20719101
		 0.27635899 -0.93845499 0 0.30177799 -0.95337802 0.20719101 0.27635899 -0.93845499
		 0 0.072544999 -0.997365 0.20719101 0.27635899 -0.93845499 0 0.30177799 -0.95337802
		 0 0.237148 -0.97147399 0 0.237148 -0.97147399 0.221966 0.061992999 -0.97308201 0.20719101
		 0.27635899 -0.93845499 0.72658598 0.299211 -0.61850297 0.20719101 0.27635899 -0.93845499
		 0.221966 0.061992999 -0.97308201 0 -0.212956 -0.97706199 0.221966 0.061992999 -0.97308201
		 0 0.237148 -0.97147399 0.72658598 0.299211 -0.61850297 0.221966 0.061992999 -0.97308201
		 0.766271 -0.012981 -0.64238697 0.766271 -0.012981 -0.64238697 0.99524802 0.060302999
		 -0.076447003 0.72658598 0.299211 -0.61850297 0.99524802 0.060302999 -0.076447003
		 0.766271 -0.012981 -0.64238697 0.883358 -0.42570299 -0.196098 0.883358 -0.42570299
		 -0.196098 0.78320497 -0.449157 0.429939 0.99524802 0.060302999 -0.076447003 0.78320497
		 -0.449157 0.429939 0.883358 -0.42570299 -0.196098 0.82502198 -0.518641 0.224388 0.82502198
		 -0.518641 0.224388 0.50259 -0.49185899 0.71096998 0.78320497 -0.449157 0.429939 0.50259
		 -0.49185899 0.71096998 0.82502198 -0.518641 0.224388 0.88363898 -0.224617 0.410768
		 0.88363898 -0.224617 0.410768 0.53771901 -0.13735101 0.83186102 0.50259 -0.49185899
		 0.71096998 0.53771901 -0.13735101 0.83186102 0.88363898 -0.224617 0.410768 0.84122998
		 -0.029918 0.53985 0.84122998 -0.029918 0.53985 0.494598 0.095729999 0.86383301 0.53771901
		 -0.13735101 0.83186102 0.494598 0.095729999 0.86383301 0.84122998 -0.029918 0.53985
		 0.654706 0.20093501 0.72868699 0.654706 0.20093501 0.72868699 0.35818601 0.35448399
		 0.863738 0.494598 0.095729999 0.86383301 0.35818601 0.35448399 0.863738 0.654706
		 0.20093501 0.72868699 0.41903901 0.413017 0.80859399 0.41903901 0.413017 0.80859399
		 0.21773 0.50758398 0.83363801 0.35818601 0.35448399 0.863738 0.127709 0.41145799
		 0.90243697 0.35818601 0.35448399 0.863738 0.21773 0.50758398 0.83363801 0.21773 0.50758398
		 0.83363801 0.027208 0.48532999 0.87390798 0.127709 0.41145799 0.90243697 0 0.46966699
		 0.88284397 0.127709 0.41145799 0.90243697 0.027208 0.48532999 0.87390798 0.32867101
		 0.31298599 0.89107502 0.027208 0.48532999 0.87390798 0.21773 0.50758398 0.83363801
		 0.21773 0.50758398 0.83363801 0.41903901 0.413017 0.80859399 0.32867101 0.31298599
		 0.89107502 0.43214199 0.47098801 0.769041 0.32867101 0.31298599 0.89107502 0.41903901
		 0.413017 0.80859399 0.41903901 0.413017 0.80859399 0.51178199 0.20871601 0.833377
		 0.43214199 0.47098801 0.769041 0.51178199 0.20871601 0.833377 0.41903901 0.413017
		 0.80859399 0.654706 0.20093501 0.72868699 0.654706 0.20093501 0.72868699 0.83160198
		 -0.13898499 0.5377 0.51178199 0.20871601 0.833377;
	setAttr ".n[1660:1825]" -type "float3"  0.83160198 -0.13898499 0.5377 0.654706
		 0.20093501 0.72868699 0.84122998 -0.029918 0.53985 0.84122998 -0.029918 0.53985 0.94105202
		 -0.3096 0.13626599 0.83160198 -0.13898499 0.5377 0.98580801 -0.15522601 0.063928001
		 0.94105202 -0.3096 0.13626599 0.84122998 -0.029918 0.53985 0.84122998 -0.029918 0.53985
		 0.88363898 -0.224617 0.410768 0.98580801 -0.15522601 0.063928001 0.89593798 -0.374881
		 -0.238244 0.98580801 -0.15522601 0.063928001 0.88363898 -0.224617 0.410768 0.88363898
		 -0.224617 0.410768 0.82502198 -0.518641 0.224388 0.89593798 -0.374881 -0.238244 0.883358
		 -0.42570299 -0.196098 0.89593798 -0.374881 -0.238244 0.82502198 -0.518641 0.224388
		 0.57088602 -0.349803 -0.74278301 0.89593798 -0.374881 -0.238244 0.883358 -0.42570299
		 -0.196098 0.883358 -0.42570299 -0.196098 0.766271 -0.012981 -0.64238697 0.57088602
		 -0.349803 -0.74278301 0.221966 0.061992999 -0.97308201 0.57088602 -0.349803 -0.74278301
		 0.766271 -0.012981 -0.64238697 0.069444001 -0.277284 -0.95827502 0.57088602 -0.349803
		 -0.74278301 0.221966 0.061992999 -0.97308201 0.221966 0.061992999 -0.97308201 0 -0.212956
		 -0.97706199 0.069444001 -0.277284 -0.95827502 0 -0.33541799 -0.94207001 0.069444001
		 -0.277284 -0.95827502 0 -0.212956 -0.97706199 0.069444001 -0.277284 -0.95827502 0
		 -0.33541799 -0.94207001 0.12840299 -0.310339 -0.94191402 0.12840299 -0.310339 -0.94191402
		 0.57088602 -0.349803 -0.74278301 0.069444001 -0.277284 -0.95827502 0 -0.147488 -0.98906398
		 0.12840299 -0.310339 -0.94191402 0 -0.33541799 -0.94207001 0.57088602 -0.349803 -0.74278301
		 0.12840299 -0.310339 -0.94191402 0.56013 -0.355647 -0.74817801 0.56013 -0.355647
		 -0.74817801 0.89593798 -0.374881 -0.238244 0.57088602 -0.349803 -0.74278301 0.89593798
		 -0.374881 -0.238244 0.56013 -0.355647 -0.74817801 0.932522 -0.25919899 -0.251434
		 0.932522 -0.25919899 -0.251434 0.98580801 -0.15522601 0.063928001 0.89593798 -0.374881
		 -0.238244 0.94105202 -0.3096 0.13626599 0.98580801 -0.15522601 0.063928001 0.932522
		 -0.25919899 -0.251434 0.932522 -0.25919899 -0.251434 0.83872199 -0.44429299 -0.314879
		 0.94105202 -0.3096 0.13626599 0.57780802 -0.26831299 -0.77080899 0.83872199 -0.44429299
		 -0.314879 0.932522 -0.25919899 -0.251434 0.932522 -0.25919899 -0.251434 0.56013 -0.355647
		 -0.74817801 0.57780802 -0.26831299 -0.77080899 0.091793999 -0.153973 -0.98380202
		 0.57780802 -0.26831299 -0.77080899 0.56013 -0.355647 -0.74817801 0.56013 -0.355647
		 -0.74817801 0.12840299 -0.310339 -0.94191402 0.091793999 -0.153973 -0.98380202 0
		 -0.147488 -0.98906398 0.091793999 -0.153973 -0.98380202 0.12840299 -0.310339 -0.94191402
		 0.035493001 0.010189 -0.999318 0.091793999 -0.153973 -0.98380202 0 -0.147488 -0.98906398
		 0 -0.147488 -0.98906398 0.48919001 0.017401 -0.87200397 0.035493001 0.010189 -0.999318
		 0.484597 0.170238 -0.85801202 0.035493001 0.010189 -0.999318 0.48919001 0.017401
		 -0.87200397 -0.036584999 0.21310499 -0.97634399 0.035493001 0.010189 -0.999318 0.484597
		 0.170238 -0.85801202 0.484597 0.170238 -0.85801202 0 0.273835 -0.96177697 -0.036584999
		 0.21310499 -0.97634399 0.081644997 0.47347599 -0.87701499 -0.036584999 0.21310499
		 -0.97634399 0 0.273835 -0.96177697 -0.036584999 0.21310499 -0.97634399 0.081644997
		 0.47347599 -0.87701499 -0.26025 0.22221901 -0.93962198 -0.26025 0.22221901 -0.93962198
		 0.035493001 0.010189 -0.999318 -0.036584999 0.21310499 -0.97634399 0.035493001 0.010189
		 -0.999318 -0.26025 0.22221901 -0.93962198 -0.060874999 -0.022077 -0.99790102 -0.060874999
		 -0.022077 -0.99790102 0.091793999 -0.153973 -0.98380202 0.035493001 0.010189 -0.999318
		 0.091793999 -0.153973 -0.98380202 -0.060874999 -0.022077 -0.99790102 0.181977 -0.016961001
		 -0.98315603 0.181977 -0.016961001 -0.98315603 0.57780802 -0.26831299 -0.77080899
		 0.091793999 -0.153973 -0.98380202 0.57780802 -0.26831299 -0.77080899 0.181977 -0.016961001
		 -0.98315603 0.44579801 -0.23874 -0.86270899 0.44579801 -0.23874 -0.86270899 0.83872199
		 -0.44429299 -0.314879 0.57780802 -0.26831299 -0.77080899 0.18719999 0.196171 -0.96253502
		 0.44579801 -0.23874 -0.86270899 0.181977 -0.016961001 -0.98315603 0.181977 -0.016961001
		 -0.98315603 0.15103801 0.25734401 -0.95444298 0.18719999 0.196171 -0.96253502 0.15103801
		 0.25734401 -0.95444298 0.181977 -0.016961001 -0.98315603 -0.060874999 -0.022077 -0.99790102
		 -0.060874999 -0.022077 -0.99790102 -0.26025 0.22221901 -0.93962198 0.15103801 0.25734401
		 -0.95444298 0.081644997 0.47347599 -0.87701499 0.15103801 0.25734401 -0.95444298
		 -0.26025 0.22221901 -0.93962198 0.15103801 0.25734401 -0.95444298 0.081644997 0.47347599
		 -0.87701499 0.18987399 0.75586998 -0.62658501 0.18987399 0.75586998 -0.62658501 0.18719999
		 0.196171 -0.96253502 0.15103801 0.25734401 -0.95444298 0.13270199 0.81311202 -0.56677902
		 0.18719999 0.196171 -0.96253502 0.18987399 0.75586998 -0.62658501 0.18987399 0.75586998
		 -0.62658501 0.036773998 0.99927402 -0.010009 0.13270199 0.81311202 -0.56677902 0.036773998
		 0.99927402 -0.010009 0.18987399 0.75586998 -0.62658501 0.38361901 0.915748 0.119345
		 0.13270199 0.81311202 -0.56677902 0.036773998 0.99927402 -0.010009 0.078689002 0.99664497
		 0.022523001 0.078689002 0.99664497 0.022523001 0.19130901 0.667063 -0.72001898 0.13270199
		 0.81311202 -0.56677902 0.18719999 0.196171 -0.96253502 0.13270199 0.81311202 -0.56677902
		 0.19130901 0.667063 -0.72001898 0.19130901 0.667063 -0.72001898 0.078689002 0.99664497
		 0.022523001 0.12984601 0.980762 -0.14576 0.18719999 0.196171 -0.96253502;
	setAttr ".n[1826:1991]" -type "float3"  0.19130901 0.667063 -0.72001898 0.141415
		 0.217372 -0.96578997 0.141415 0.217372 -0.96578997 0.38817599 -0.441221 -0.80909997
		 0.18719999 0.196171 -0.96253502 0.44579801 -0.23874 -0.86270899 0.18719999 0.196171
		 -0.96253502 0.38817599 -0.441221 -0.80909997 0.38817599 -0.441221 -0.80909997 0.83872199
		 -0.44429299 -0.314879 0.44579801 -0.23874 -0.86270899 0.83872199 -0.44429299 -0.314879
		 0.38817599 -0.441221 -0.80909997 0.69741201 -0.71024001 -0.095789999 0.69741201 -0.71024001
		 -0.095789999 0.94105202 -0.3096 0.13626599 0.83872199 -0.44429299 -0.314879 0.94105202
		 -0.3096 0.13626599 0.69741201 -0.71024001 -0.095789999 0.63730502 -0.68883097 0.345476
		 0.63730502 -0.68883097 0.345476 0.83160198 -0.13898499 0.5377 0.94105202 -0.3096
		 0.13626599 0.83160198 -0.13898499 0.5377 0.63730502 -0.68883097 0.345476 0.47263101
		 -0.215352 0.85454297 0.47263101 -0.215352 0.85454297 0.51178199 0.20871601 0.833377
		 0.83160198 -0.13898499 0.5377 0.51178199 0.20871601 0.833377 0.47263101 -0.215352
		 0.85454297 0.282785 0.194213 0.93931597 0.282785 0.194213 0.93931597 0.43214199 0.47098801
		 0.769041 0.51178199 0.20871601 0.833377 0.43214199 0.47098801 0.769041 0.282785 0.194213
		 0.93931597 0.160528 0.74299198 0.64976501 0.160528 0.74299198 0.64976501 0.078689002
		 0.99664497 0.022523001 0.43214199 0.47098801 0.769041 0.078689002 0.99664497 0.022523001
		 0.160528 0.74299198 0.64976501 0.12984601 0.980762 -0.14576 0.43214199 0.47098801
		 0.769041 0.078689002 0.99664497 0.022523001 0.30340499 0.75053 0.58706897 0.30340499
		 0.75053 0.58706897 0.32867101 0.31298599 0.89107502 0.43214199 0.47098801 0.769041
		 -0.133862 0.98553598 0.103923 0.30340499 0.75053 0.58706897 0.078689002 0.99664497
		 0.022523001 0.078689002 0.99664497 0.022523001 0.036773998 0.99927402 -0.010009 -0.133862
		 0.98553598 0.103923 0.30340499 0.75053 0.58706897 -0.133862 0.98553598 0.103923 0.065247998
		 0.73432398 0.67565602 0.065247998 0.73432398 0.67565602 0.32867101 0.31298599 0.89107502
		 0.30340499 0.75053 0.58706897 0.027208 0.48532999 0.87390798 0.32867101 0.31298599
		 0.89107502 0.065247998 0.73432398 0.67565602 0.065247998 0.73432398 0.67565602 -0.36027801
		 0.77196401 0.523709 0.027208 0.48532999 0.87390798 0.100455 0.90016198 0.42381299
		 -0.36027801 0.77196401 0.523709 0.065247998 0.73432398 0.67565602 0.065247998 0.73432398
		 0.67565602 -0.133862 0.98553598 0.103923 0.100455 0.90016198 0.42381299 0.036773998
		 0.99927402 -0.010009 0.100455 0.90016198 0.42381299 -0.133862 0.98553598 0.103923
		 0.38361901 0.915748 0.119345 0.100455 0.90016198 0.42381299 0.036773998 0.99927402
		 -0.010009 -0.36027801 0.77196401 0.523709 0.100455 0.90016198 0.42381299 -0.31524301
		 0.74534899 0.58743298 -0.31524301 0.74534899 0.58743298 0 0.68795502 0.72575402 -0.36027801
		 0.77196401 0.523709 -0.42641899 0.58074301 0.69347298 -0.36027801 0.77196401 0.523709
		 0 0.68795502 0.72575402 0.027208 0.48532999 0.87390798 -0.36027801 0.77196401 0.523709
		 -0.42641899 0.58074301 0.69347298 -0.42641899 0.58074301 0.69347298 0 0.46966699
		 0.88284397 0.027208 0.48532999 0.87390798 0.93088698 0.063801996 -0.359694 -0.14756399
		 -0.31198499 -0.93855798 0.751194 0.118363 -0.64938301 0.751194 0.118363 -0.64938301
		 -0.14756399 -0.31198499 -0.93855798 -0.27124101 -0.38282701 -0.88310403 0 0.072544999
		 -0.997365 0.76198202 0.186526 0.62015498 0.80596697 0.16671699 0.56799799 0.086684003
		 -0.103714 0.99082297 0.086684003 -0.103714 0.99082297 0.80596697 0.16671699 0.56799799
		 0 -0.21972901 0.97556102 0.76198202 0.186526 0.62015498 0.93088698 0.063801996 -0.359694
		 0.80596697 0.16671699 0.56799799 0.80596697 0.16671699 0.56799799 0.93088698 0.063801996
		 -0.359694 0.751194 0.118363 -0.64938301 0 -0.21972901 0.97556102 0 -0.84424198 0.535963
		 -0.69241899 -0.44406 0.568654 0.086684003 -0.103714 0.99082297 0 -0.567689 0.82324302
		 0.47445101 0.066462003 0.87776899 0.65208298 -0.142894 0.74456 0.68025702 -0.14624301
		 0.71823603 1e-06 -0.39229199 0.91984099 0.68219298 -0.0064269998 0.73114401 -0.70094103
		 -0.42382601 -0.573632 -0.27124101 -0.38282701 -0.88310403 -0.14756399 -0.31198499
		 -0.93855798 -0.81454903 -0.517941 -0.26124099 -0.70094103 -0.42382601 -0.573632 -0.14756399
		 -0.31198499 -0.93855798 -0.92359197 -0.335998 -0.184615 0 -0.84424198 0.535963 -0.71648997
		 -0.66238499 0.218834 -0.69241899 -0.44406 0.568654 0.369407 -0.75969899 -0.53516001
		 -0.36986601 -0.82592201 -0.42550099 -0.015262 -0.22076 -0.975209 -0.36986601 -0.82592201
		 -0.42550099 0.369407 -0.75969899 -0.53516001 0.36579901 -0.92738003 0.078474 0.36579901
		 -0.92738003 0.078474 -0.494463 -0.86663002 -0.066771999 -0.36986601 -0.82592201 -0.42550099
		 -0.494463 -0.86663002 -0.066771999 0.36579901 -0.92738003 0.078474 0.120862 -0.99237299
		 -0.024256 0.120862 -0.99237299 -0.024256 -0.55928898 -0.81107402 -0.171331 -0.494463
		 -0.86663002 -0.066771999 -0.55928898 -0.81107402 -0.171331 0.120862 -0.99237299 -0.024256
		 -0.71995902 -0.68761402 -0.094057001 0.005874 -0.99978 -0.020153999 -0.71995902 -0.68761402
		 -0.094057001 0.120862 -0.99237299 -0.024256 0.81928402 -0.56579 -0.093036003 0.005874
		 -0.99978 -0.020153999 0.120862 -0.99237299 -0.024256 0.005874 -0.99978 -0.020153999
		 -0.840352 -0.54093301 0.034655999 -0.71995902 -0.68761402 -0.094057001 0.886554 -0.461979
		 -0.024436001 0.005874 -0.99978 -0.020153999 0.81928402 -0.56579 -0.093036003 -0.72034198
		 -0.49282199 0.48809099 -0.840352 -0.54093301 0.034655999;
	setAttr ".n[1992:2157]" -type "float3"  0.005874 -0.99978 -0.020153999 0.828969
		 -0.559187 -0.010963 0.005874 -0.99978 -0.020153999 0.886554 -0.461979 -0.024436001
		 0.005874 -0.99978 -0.020153999 -0.38304499 -0.63822103 0.66779602 -0.72034198 -0.49282199
		 0.48809099 -0.38304499 -0.63822103 0.66779602 0.005874 -0.99978 -0.020153999 -0.136676
		 -0.54184997 0.82928801 0.075383998 -0.99647999 0.036674 -0.136676 -0.54184997 0.82928801
		 0.005874 -0.99978 -0.020153999 0.828969 -0.559187 -0.010963 0.075383998 -0.99647999
		 0.036674 0.005874 -0.99978 -0.020153999 0.075383998 -0.99647999 0.036674 0.828969
		 -0.559187 -0.010963 0.718548 -0.67674899 0.160312 0.53545201 -0.552441 0.63882703
		 0.075383998 -0.99647999 0.036674 0.718548 -0.67674899 0.160312 0.075383998 -0.99647999
		 0.036674 0.53545201 -0.552441 0.63882703 -0.136676 -0.54184997 0.82928801 -0.35976699
		 -0.034097001 0.932419 -0.29003301 -0.12891801 0.94829398 -0.444143 -0.116032 0.88841099
		 -0.57492399 -0.113878 0.81024301 -0.444143 -0.116032 0.88841099 -0.29003301 -0.12891801
		 0.94829398 -0.444143 -0.116032 0.88841099 -0.57492399 -0.113878 0.81024301 -0.73850501
		 -0.032795999 0.67344999 -0.75008202 -0.008711 0.66128701 -0.73850501 -0.032795999
		 0.67344999 -0.57492399 -0.113878 0.81024301 -0.73850501 -0.032795999 0.67344999 -0.75008202
		 -0.008711 0.66128701 -0.77275801 0.0078269998 0.63465297 -0.33043301 0.023401 0.94353902
		 -0.33049101 0.023326 0.94352102 -0.48389101 0.013856 0.87501901 -0.48389101 0.013856
		 0.87501901 -0.631486 -0.0066889999 0.77535802 -0.33043301 0.023401 0.94353902 -0.631486
		 -0.0066889999 0.77535802 -0.48389101 0.013856 0.87501901 -0.76587802 -0.029207001
		 0.642322 -0.76587802 -0.029207001 0.642322 -0.77394497 -0.040585 0.63195002 -0.631486
		 -0.0066889999 0.77535802 -0.77394497 -0.040585 0.63195002 -0.76587802 -0.029207001
		 0.642322 -0.78891599 -0.044633001 0.61287701 0 -0.90497202 0.42546999 -0.378059 0.030073
		 0.92529303 -0.51684999 -0.34940699 0.78152502 -0.51684999 -0.34940699 0.78152502
		 -0.059790999 -0.95461798 0.29177001 0 -0.90497202 0.42546999 -0.059790999 -0.95461798
		 0.29177001 -0.51684999 -0.34940699 0.78152502 -0.721205 -0.30032399 0.62423497 -0.721205
		 -0.30032399 0.62423497 0.19181 -0.89097202 0.41155401 -0.059790999 -0.95461798 0.29177001
		 0.19181 -0.89097202 0.41155401 -0.721205 -0.30032399 0.62423497 -0.53571898 -0.273406
		 0.798908 0 -0.99930102 0.037395 0 -0.90497202 0.42546999 -0.059790999 -0.95461798
		 0.29177001 -0.059790999 -0.95461798 0.29177001 0.45872301 -0.85867399 0.228588 0
		 -0.99930102 0.037395 0.45872301 -0.85867399 0.228588 -0.059790999 -0.95461798 0.29177001
		 0.19181 -0.89097202 0.41155401 -0.53571898 -0.273406 0.798908 0.45872301 -0.85867399
		 0.228588 0.19181 -0.89097202 0.41155401 0.45872301 -0.85867399 0.228588 -0.53571898
		 -0.273406 0.798908 0.61465001 0.17208999 0.76979899 0 -0.498999 0.86660302 0.45872301
		 -0.85867399 0.228588 0.61465001 0.17208999 0.76979899 0.45872301 -0.85867399 0.228588
		 0 -0.498999 0.86660302 0 -0.99930102 0.037395 0.088996999 0.67123097 0.73588598 0.61465001
		 0.17208999 0.76979899 -0.53571898 -0.273406 0.798908 0.61465001 0.17208999 0.76979899
		 0.088996999 0.67123097 0.73588598 0 0.89937103 0.437186 -0.235339 0.77764302 0.58299798
		 0 0.89937103 0.437186 0.088996999 0.67123097 0.73588598 0 -0.498999 0.86660302 0.61465001
		 0.17208999 0.76979899 0 0.89937103 0.437186 0 0.73555702 0.677463 0 0.89937103 0.437186
		 -0.235339 0.77764302 0.58299798 -0.53646898 -0.84390301 0.0052919998 -0.29966801
		 -0.353459 -0.88615203 -0.79511201 -0.50352597 -0.33802199 -0.29966801 -0.353459 -0.88615203
		 -0.53646898 -0.84390301 0.0052919998 -0.800973 -0.588296 -0.111128 -0.67308599 -0.27762601
		 -0.68547702 -0.29966801 -0.353459 -0.88615203 -0.800973 -0.588296 -0.111128 -0.29966801
		 -0.353459 -0.88615203 -0.67308599 -0.27762601 -0.68547702 -0.431696 -0.015275 -0.90188998
		 -0.800973 -0.588296 -0.111128 -0.85277998 -0.072292998 0.51724303 -0.67308599 -0.27762601
		 -0.68547702 -0.85277998 -0.072292998 0.51724303 -0.800973 -0.588296 -0.111128 -0.53646898
		 -0.84390301 0.0052919998 -0.79511201 -0.50352597 -0.33802199 -0.85277998 -0.072292998
		 0.51724303 -0.53646898 -0.84390301 0.0052919998 -0.85277998 -0.072292998 0.51724303
		 -0.96166003 0.119149 -0.24701101 -0.67308599 -0.27762601 -0.68547702 -0.96166003
		 0.119149 -0.24701101 -0.85277998 -0.072292998 0.51724303 -0.50246203 0.85402697 0.134794
		 -0.99960399 -0.014182 0.024289001 -0.50246203 0.85402697 0.134794 -0.85277998 -0.072292998
		 0.51724303 -0.431696 -0.015275 -0.90188998 -0.96166003 0.119149 -0.24701101 -0.50246203
		 0.85402697 0.134794 -0.96166003 0.119149 -0.24701101 -0.431696 -0.015275 -0.90188998
		 -0.67308599 -0.27762601 -0.68547702 -0.99960399 -0.014182 0.024289001 -0.431696 -0.015275
		 -0.90188998 -0.50246203 0.85402697 0.134794 0.077096999 0.177293 -0.981134 0.98043102
		 0.034265999 -0.193859 0.93872201 0.228833 -0.25775501 0.98043102 0.034265999 -0.193859
		 0.077096999 0.177293 -0.981134 0.171478 0.13624801 -0.975721 0.95810002 0.057177
		 -0.28066999 0.98043102 0.034265999 -0.193859 0.171478 0.13624801 -0.975721 0.077096999
		 0.177293 -0.981134 -0.80674398 0.014341 -0.59072697 0.171478 0.13624801 -0.975721
		 -0.80674398 0.014341 -0.59072697 0.077096999 0.177293 -0.981134 -0.88347101 0.044222999
		 -0.46639499 -0.88347101 0.044222999 -0.46639499 -0.99157101 -0.123742 0.038392 -0.80674398
		 0.014341 -0.59072697 -0.99157101 -0.123742 0.038392 -0.88347101 0.044222999 -0.46639499
		 -0.99046803 0.13164 0.040550999;
	setAttr ".n[2158:2323]" -type "float3"  -0.99046803 0.13164 0.040550999 -0.77779001
		 -0.179258 0.60241997 -0.99157101 -0.123742 0.038392 -0.77779001 -0.179258 0.60241997
		 -0.99046803 0.13164 0.040550999 -0.81114602 0.18549401 0.55464703 -0.81114602 0.18549401
		 0.55464703 0.041434001 -0.104063 0.993707 -0.77779001 -0.179258 0.60241997 0.041434001
		 -0.104063 0.993707 -0.81114602 0.18549401 0.55464703 0.075065002 0.29415199 0.952806
		 0.82509601 0.28628099 0.48709401 0.041434001 -0.104063 0.993707 0.075065002 0.29415199
		 0.952806 0.041434001 -0.104063 0.993707 0.82509601 0.28628099 0.48709401 0.78437197
		 -0.109953 0.61046797 0.93872201 0.228833 -0.25775501 0.78437197 -0.109953 0.61046797
		 0.82509601 0.28628099 0.48709401 0.78437197 -0.109953 0.61046797 0.93872201 0.228833
		 -0.25775501 0.98043102 0.034265999 -0.193859 0.98043102 0.034265999 -0.193859 0.82962102
		 -0.142893 0.53973198 0.78437197 -0.109953 0.61046797 0.82962102 -0.142893 0.53973198
		 0.98043102 0.034265999 -0.193859 0.95810002 0.057177 -0.28066999 0.108735 -0.30286801
		 0.94680899 0.78437197 -0.109953 0.61046797 0.82962102 -0.142893 0.53973198 0.78437197
		 -0.109953 0.61046797 0.108735 -0.30286801 0.94680899 0.041434001 -0.104063 0.993707
		 -0.77779001 -0.179258 0.60241997 0.041434001 -0.104063 0.993707 0.108735 -0.30286801
		 0.94680899 -0.76376301 -0.267483 0.58746701 -0.77779001 -0.179258 0.60241997 0.108735
		 -0.30286801 0.94680899 -0.77779001 -0.179258 0.60241997 -0.76376301 -0.267483 0.58746701
		 -0.99157101 -0.123742 0.038392 -0.99096203 -0.121076 -0.057744 -0.99157101 -0.123742
		 0.038392 -0.76376301 -0.267483 0.58746701 -0.99157101 -0.123742 0.038392 -0.99096203
		 -0.121076 -0.057744 -0.80674398 0.014341 -0.59072697 -0.70988703 0.041453 -0.70309502
		 -0.80674398 0.014341 -0.59072697 -0.99096203 -0.121076 -0.057744 -0.80674398 0.014341
		 -0.59072697 -0.70988703 0.041453 -0.70309502 0.171478 0.13624801 -0.975721 0.221783
		 0.17989001 -0.958359 0.171478 0.13624801 -0.975721 -0.70988703 0.041453 -0.70309502
		 0.171478 0.13624801 -0.975721 0.221783 0.17989001 -0.958359 0.95810002 0.057177 -0.28066999
		 0.92526299 0.088881001 -0.368765 0.95810002 0.057177 -0.28066999 0.221783 0.17989001
		 -0.958359 0.334333 0.312383 -0.88917899 0.92526299 0.088881001 -0.368765 0.221783
		 0.17989001 -0.958359 0.92526299 0.088881001 -0.368765 0.334333 0.312383 -0.88917899
		 0.89658201 -0.035333 -0.44146499 0.221783 0.17989001 -0.958359 -0.61886799 0.2721
		 -0.73686099 0.334333 0.312383 -0.88917899 -0.61886799 0.2721 -0.73686099 0.221783
		 0.17989001 -0.958359 -0.70988703 0.041453 -0.70309502 -0.70988703 0.041453 -0.70309502
		 -0.99110198 0.021436 -0.131368 -0.61886799 0.2721 -0.73686099 -0.99110198 0.021436
		 -0.131368 -0.70988703 0.041453 -0.70309502 -0.99096203 -0.121076 -0.057744 -0.99096203
		 -0.121076 -0.057744 -0.82611901 -0.164171 0.539051 -0.99110198 0.021436 -0.131368
		 -0.82611901 -0.164171 0.539051 -0.99096203 -0.121076 -0.057744 -0.76376301 -0.267483
		 0.58746701 -0.76376301 -0.267483 0.58746701 -0.030996 -0.345873 0.937769 -0.82611901
		 -0.164171 0.539051 -0.030996 -0.345873 0.937769 -0.76376301 -0.267483 0.58746701
		 0.108735 -0.30286801 0.94680899 0.108735 -0.30286801 0.94680899 0.84676099 -0.20168
		 0.49226099 -0.030996 -0.345873 0.937769 0.84676099 -0.20168 0.49226099 0.108735 -0.30286801
		 0.94680899 0.82962102 -0.142893 0.53973198 0.95810002 0.057177 -0.28066999 0.84676099
		 -0.20168 0.49226099 0.82962102 -0.142893 0.53973198 0.84676099 -0.20168 0.49226099
		 0.95810002 0.057177 -0.28066999 0.92526299 0.088881001 -0.368765 0.89658201 -0.035333
		 -0.44146499 0.84676099 -0.20168 0.49226099 0.92526299 0.088881001 -0.368765 0.84676099
		 -0.20168 0.49226099 0.89658201 -0.035333 -0.44146499 0.85347903 -0.33909601 0.395711
		 0.017151 -0.35133299 0.93609399 0.84676099 -0.20168 0.49226099 0.85347903 -0.33909601
		 0.395711 0.84676099 -0.20168 0.49226099 0.017151 -0.35133299 0.93609399 -0.030996
		 -0.345873 0.937769 -0.82611901 -0.164171 0.539051 -0.030996 -0.345873 0.937769 0.017151
		 -0.35133299 0.93609399 -0.826801 -0.158169 0.53979802 -0.82611901 -0.164171 0.539051
		 0.017151 -0.35133299 0.93609399 -0.82611901 -0.164171 0.539051 -0.826801 -0.158169
		 0.53979802 -0.97660899 0.108228 -0.185803 -0.97660899 0.108228 -0.185803 -0.99110198
		 0.021436 -0.131368 -0.82611901 -0.164171 0.539051 -0.99110198 0.021436 -0.131368
		 -0.97660899 0.108228 -0.185803 -0.61886799 0.2721 -0.73686099 -0.60677803 0.337742
		 -0.719549 -0.61886799 0.2721 -0.73686099 -0.97660899 0.108228 -0.185803 -0.61886799
		 0.2721 -0.73686099 -0.60677803 0.337742 -0.719549 0.011362 0.25568399 -0.966694 0.011362
		 0.25568399 -0.966694 0.334333 0.312383 -0.88917899 -0.61886799 0.2721 -0.73686099
		 0.334333 0.312383 -0.88917899 0.011362 0.25568399 -0.966694 0.89658201 -0.035333
		 -0.44146499 0.61009902 -0.059012 -0.79012501 0.89658201 -0.035333 -0.44146499 0.011362
		 0.25568399 -0.966694 0.105924 -0.023112999 -0.99410599 0.61009902 -0.059012 -0.79012501
		 0.011362 0.25568399 -0.966694 0.61009902 -0.059012 -0.79012501 0.105924 -0.023112999
		 -0.99410599 0.77295703 -0.096437 -0.62708598 0.011362 0.25568399 -0.966694 -0.58437198
		 0.050330002 -0.80992401 0.105924 -0.023112999 -0.99410599 -0.58437198 0.050330002
		 -0.80992401 0.011362 0.25568399 -0.966694 -0.60677803 0.337742 -0.719549 -0.97660899
		 0.108228 -0.185803 -0.58437198 0.050330002 -0.80992401 -0.60677803 0.337742 -0.719549
		 -0.58437198 0.050330002 -0.80992401;
	setAttr ".n[2324:2489]" -type "float3"  -0.97660899 0.108228 -0.185803 -0.99848002
		 -0.024276 -0.049492002 -0.826801 -0.158169 0.53979802 -0.99848002 -0.024276 -0.049492002
		 -0.97660899 0.108228 -0.185803 -0.99848002 -0.024276 -0.049492002 -0.826801 -0.158169
		 0.53979802 -0.71540701 -0.038469002 0.69764799 0.017151 -0.35133299 0.93609399 -0.71540701
		 -0.038469002 0.69764799 -0.826801 -0.158169 0.53979802 -0.71540701 -0.038469002 0.69764799
		 0.017151 -0.35133299 0.93609399 0.019489 -0.140562 0.98988003 0.73407602 -0.116433
		 0.669011 0.019489 -0.140562 0.98988003 0.017151 -0.35133299 0.93609399 0.85347903
		 -0.33909601 0.395711 0.73407602 -0.116433 0.669011 0.017151 -0.35133299 0.93609399
		 0.73407602 -0.116433 0.669011 0.85347903 -0.33909601 0.395711 0.98438197 -0.13813099
		 -0.109144 0.89658201 -0.035333 -0.44146499 0.98438197 -0.13813099 -0.109144 0.85347903
		 -0.33909601 0.395711 0.98438197 -0.13813099 -0.109144 0.89658201 -0.035333 -0.44146499
		 0.61009902 -0.059012 -0.79012501 0.77295703 -0.096437 -0.62708598 0.98438197 -0.13813099
		 -0.109144 0.61009902 -0.059012 -0.79012501 0.98438197 -0.13813099 -0.109144 0.77295703
		 -0.096437 -0.62708598 0.88896298 -0.015487 0.45771801 0.73407602 -0.116433 0.669011
		 0.98438197 -0.13813099 -0.109144 0.88896298 -0.015487 0.45771801 0.92680299 -0.071556002
		 -0.36866799 0.88896298 -0.015487 0.45771801 0.77295703 -0.096437 -0.62708598 0.028384
		 -0.012984 0.99951297 0.73407602 -0.116433 0.669011 0.88896298 -0.015487 0.45771801
		 0.73407602 -0.116433 0.669011 0.028384 -0.012984 0.99951297 0.019489 -0.140562 0.98988003
		 -0.71540701 -0.038469002 0.69764799 0.019489 -0.140562 0.98988003 0.028384 -0.012984
		 0.99951297 -0.90441 0.041924 0.42459899 -0.71540701 -0.038469002 0.69764799 0.028384
		 -0.012984 0.99951297 -0.71540701 -0.038469002 0.69764799 -0.90441 0.041924 0.42459899
		 -0.99848002 -0.024276 -0.049492002 -0.75686002 -0.078818999 -0.64880699 -0.99848002
		 -0.024276 -0.049492002 -0.90441 0.041924 0.42459899 -0.99848002 -0.024276 -0.049492002
		 -0.75686002 -0.078818999 -0.64880699 -0.58437198 0.050330002 -0.80992401 -0.072838001
		 -0.099310003 -0.992387 -0.58437198 0.050330002 -0.80992401 -0.75686002 -0.078818999
		 -0.64880699 -0.58437198 0.050330002 -0.80992401 -0.072838001 -0.099310003 -0.992387
		 0.105924 -0.023112999 -0.99410599 0.77295703 -0.096437 -0.62708598 0.105924 -0.023112999
		 -0.99410599 -0.072838001 -0.099310003 -0.992387 0.059059002 -0.081680998 -0.99490702
		 0.77295703 -0.096437 -0.62708598 -0.072838001 -0.099310003 -0.992387 0.77295703 -0.096437
		 -0.62708598 0.059059002 -0.081680998 -0.99490702 0.92680299 -0.071556002 -0.36866799
		 -0.75686002 -0.078818999 -0.64880699 0.059059002 -0.081680998 -0.99490702 -0.072838001
		 -0.099310003 -0.992387 0.059059002 -0.081680998 -0.99490702 -0.75686002 -0.078818999
		 -0.64880699 -0.87103599 -0.055645999 -0.48805699 -0.90441 0.041924 0.42459899 -0.87103599
		 -0.055645999 -0.48805699 -0.75686002 -0.078818999 -0.64880699 -0.87103599 -0.055645999
		 -0.48805699 -0.90441 0.041924 0.42459899 -0.78809798 -0.078759998 0.61049098 0.028384
		 -0.012984 0.99951297 -0.78809798 -0.078759998 0.61049098 -0.90441 0.041924 0.42459899
		 -0.78809798 -0.078759998 0.61049098 0.028384 -0.012984 0.99951297 0.23390099 -0.058125999
		 0.97052097 0.84466702 -0.058541998 0.53208202 0.23390099 -0.058125999 0.97052097
		 0.028384 -0.012984 0.99951297 0.88896298 -0.015487 0.45771801 0.84466702 -0.058541998
		 0.53208202 0.028384 -0.012984 0.99951297 0.84466702 -0.058541998 0.53208202 0.88896298
		 -0.015487 0.45771801 0.92680299 -0.071556002 -0.36866799 0.943573 -0.116191 -0.310114
		 0.84466702 -0.058541998 0.53208202 0.92680299 -0.071556002 -0.36866799 0.84466702
		 -0.058541998 0.53208202 0.943573 -0.116191 -0.310114 0.86432201 -0.068094 0.498308
		 0.23390099 -0.058125999 0.97052097 0.84466702 -0.058541998 0.53208202 0.86432201
		 -0.068094 0.498308 0.92359197 -0.335998 -0.184614 0.86432201 -0.068094 0.498308 0.943573
		 -0.116191 -0.310114 0.86432201 -0.068094 0.498308 0.92359197 -0.335998 -0.184614
		 0.69241899 -0.44406 0.568654 0.124746 -0.028194999 0.99178803 0.86432201 -0.068094
		 0.498308 0.69241899 -0.44406 0.568654 0.86432201 -0.068094 0.498308 0.124746 -0.028194999
		 0.99178803 0.23390099 -0.058125999 0.97052097 -0.78809798 -0.078759998 0.61049098
		 0.23390099 -0.058125999 0.97052097 0.124746 -0.028194999 0.99178803 -0.82185102 -0.072639003
		 0.56505197 -0.78809798 -0.078759998 0.61049098 0.124746 -0.028194999 0.99178803 -0.78809798
		 -0.078759998 0.61049098 -0.82185102 -0.072639003 0.56505197 -0.85242498 -0.109135
		 -0.511334 -0.85242498 -0.109135 -0.511334 -0.87103599 -0.055645999 -0.48805699 -0.78809798
		 -0.078759998 0.61049098 -0.87103599 -0.055645999 -0.48805699 -0.85242498 -0.109135
		 -0.511334 0.103393 -0.116314 -0.98781598 0.103393 -0.116314 -0.98781598 0.059059002
		 -0.081680998 -0.99490702 -0.87103599 -0.055645999 -0.48805699 0.059059002 -0.081680998
		 -0.99490702 0.103393 -0.116314 -0.98781598 0.92680299 -0.071556002 -0.36866799 0.943573
		 -0.116191 -0.310114 0.92680299 -0.071556002 -0.36866799 0.103393 -0.116314 -0.98781598
		 0.103393 -0.116314 -0.98781598 0.14756399 -0.31198499 -0.93855798 0.943573 -0.116191
		 -0.310114 0.14756399 -0.31198499 -0.93855798 0.103393 -0.116314 -0.98781598 -0.85242498
		 -0.109135 -0.511334 0.14756399 -0.31198499 -0.93855798 0.92359197 -0.335998 -0.184614
		 0.943573 -0.116191 -0.310114 -0.85242498 -0.109135 -0.511334 -0.93088698 0.063801996
		 -0.359694 0.14756399 -0.31198499 -0.93855798 -0.93088698 0.063801996 -0.359694 -0.85242498
		 -0.109135 -0.511334 -0.82185102 -0.072639003 0.56505197 -0.82185102 -0.072639003
		 0.56505197 -0.76198202 0.186526 0.62015498;
	setAttr ".n[2490:2655]" -type "float3"  -0.93088698 0.063801996 -0.359694 -0.76198202
		 0.186526 0.62015498 -0.82185102 -0.072639003 0.56505197 -0.086684003 -0.103714 0.99082297
		 0.124746 -0.028194999 0.99178803 -0.086684003 -0.103714 0.99082297 -0.82185102 -0.072639003
		 0.56505197 -0.086684003 -0.103714 0.99082297 0.124746 -0.028194999 0.99178803 0.69241899
		 -0.44406 0.568654 -0.136336 0.30119899 -0.94376498 -0.88347101 0.044222999 -0.46639499
		 0.077096999 0.177293 -0.981134 -0.88347101 0.044222999 -0.46639499 -0.136336 0.30119899
		 -0.94376498 -0.86282098 0.20249601 -0.46318001 -0.86282098 0.20249601 -0.46318001
		 -0.99046803 0.13164 0.040550999 -0.88347101 0.044222999 -0.46639499 -0.136336 0.30119899
		 -0.94376498 -0.767946 0.249908 -0.58974999 -0.86282098 0.20249601 -0.46318001 -0.767946
		 0.249908 -0.58974999 -0.136336 0.30119899 -0.94376498 0.040801 0.204803 -0.97795302
		 0.040801 0.204803 -0.97795302 -0.81559998 -0.177155 -0.55082899 -0.767946 0.249908
		 -0.58974999 -0.81559998 -0.177155 -0.55082899 0.040801 0.204803 -0.97795302 -0.015262
		 -0.22076 -0.975209 -0.36986601 -0.82592201 -0.42550099 -0.81559998 -0.177155 -0.55082899
		 -0.015262 -0.22076 -0.975209 -0.81559998 -0.177155 -0.55082899 -0.36986601 -0.82592201
		 -0.42550099 -0.494463 -0.86663002 -0.066771999 -0.494463 -0.86663002 -0.066771999
		 -0.93017501 -0.297566 -0.21501 -0.81559998 -0.177155 -0.55082899 -0.93017501 -0.297566
		 -0.21501 -0.494463 -0.86663002 -0.066771999 -0.55928898 -0.81107402 -0.171331 -0.990816
		 0.078368001 -0.110193 -0.81559998 -0.177155 -0.55082899 -0.93017501 -0.297566 -0.21501
		 -0.81559998 -0.177155 -0.55082899 -0.990816 0.078368001 -0.110193 -0.767946 0.249908
		 -0.58974999 -0.86282098 0.20249601 -0.46318001 -0.767946 0.249908 -0.58974999 -0.990816
		 0.078368001 -0.110193 -0.99191803 0.083678998 -0.095376998 -0.86282098 0.20249601
		 -0.46318001 -0.990816 0.078368001 -0.110193 -0.86282098 0.20249601 -0.46318001 -0.99191803
		 0.083678998 -0.095376998 -0.99046803 0.13164 0.040550999 -0.977144 0.091839001 0.191716
		 -0.99191803 0.083678998 -0.095376998 -0.990816 0.078368001 -0.110193 -0.99191803
		 0.083678998 -0.095376998 -0.977144 0.091839001 0.191716 -0.99046803 0.13164 0.040550999
		 -0.81114602 0.18549401 0.55464703 -0.99046803 0.13164 0.040550999 -0.977144 0.091839001
		 0.191716 -0.977144 0.091839001 0.191716 -0.77356499 0.59883898 0.20733801 -0.81114602
		 0.18549401 0.55464703 -0.77356499 0.59883898 0.20733801 -0.977144 0.091839001 0.191716
		 -0.990816 0.078368001 -0.110193 -0.990816 0.078368001 -0.110193 -0.97763097 0.073562004
		 -0.197046 -0.77356499 0.59883898 0.20733801 -0.97763097 0.073562004 -0.197046 -0.990816
		 0.078368001 -0.110193 -0.93017501 -0.297566 -0.21501 -0.55928898 -0.81107402 -0.171331
		 -0.97763097 0.073562004 -0.197046 -0.93017501 -0.297566 -0.21501 -0.97763097 0.073562004
		 -0.197046 -0.55928898 -0.81107402 -0.171331 -0.71995902 -0.68761402 -0.094057001
		 -0.86086798 0.50860101 -0.015201 -0.97763097 0.073562004 -0.197046 -0.71995902 -0.68761402
		 -0.094057001 -0.97763097 0.073562004 -0.197046 -0.86086798 0.50860101 -0.015201 -0.77356499
		 0.59883898 0.20733801 -0.71995902 -0.68761402 -0.094057001 -0.828592 0.55738401 0.052522998
		 -0.86086798 0.50860101 -0.015201 -0.828592 0.55738401 0.052522998 -0.71995902 -0.68761402
		 -0.094057001 -0.840352 -0.54093301 0.034655999 -0.34903601 0.920515 0.17557 -0.86086798
		 0.50860101 -0.015201 -0.828592 0.55738401 0.052522998 -0.86086798 0.50860101 -0.015201
		 -0.34903601 0.920515 0.17557 -0.77356499 0.59883898 0.20733801 0.058844998 0.954373
		 0.29276299 -0.77356499 0.59883898 0.20733801 -0.34903601 0.920515 0.17557 -0.77356499
		 0.59883898 0.20733801 0.058844998 0.954373 0.29276299 -0.026008001 0.70537001 0.70836198
		 -0.026008001 0.70537001 0.70836198 -0.81114602 0.18549401 0.55464703 -0.77356499
		 0.59883898 0.20733801 -0.81114602 0.18549401 0.55464703 -0.026008001 0.70537001 0.70836198
		 0.075065002 0.29415199 0.952806 0.82509601 0.28628099 0.48709401 0.075065002 0.29415199
		 0.952806 -0.026008001 0.70537001 0.70836198 -0.026008001 0.70537001 0.70836198 0.82418102
		 0.50464398 0.25702301 0.82509601 0.28628099 0.48709401 0.82418102 0.50464398 0.25702301
		 -0.026008001 0.70537001 0.70836198 0.058844998 0.954373 0.29276299 0.96456701 0.21939801
		 0.146542 0.82509601 0.28628099 0.48709401 0.82418102 0.50464398 0.25702301 0.82509601
		 0.28628099 0.48709401 0.96456701 0.21939801 0.146542 0.93872201 0.228833 -0.25775501
		 0.82418102 0.50464398 0.25702301 0.96158999 -0.26591799 0.068065003 0.96456701 0.21939801
		 0.146542 0.96158999 -0.26591799 0.068065003 0.82418102 0.50464398 0.25702301 0.81928402
		 -0.56579 -0.093036003 0.87859499 0.47756699 0.001073 0.81928402 -0.56579 -0.093036003
		 0.82418102 0.50464398 0.25702301 0.058844998 0.954373 0.29276299 0.87859499 0.47756699
		 0.001073 0.82418102 0.50464398 0.25702301 0.87859499 0.47756699 0.001073 0.058844998
		 0.954373 0.29276299 0.77857101 0.61705297 0.114335 -0.050246999 0.98247302 0.17950401
		 0.77857101 0.61705297 0.114335 0.058844998 0.954373 0.29276299 -0.34903601 0.920515
		 0.17557 -0.050246999 0.98247302 0.17950401 0.058844998 0.954373 0.29276299 -0.050246999
		 0.98247302 0.17950401 -0.34903601 0.920515 0.17557 -0.211952 0.96902698 0.126743
		 -0.828592 0.55738401 0.052522998 -0.211952 0.96902698 0.126743 -0.34903601 0.920515
		 0.17557 -0.211952 0.96902698 0.126743 -0.828592 0.55738401 0.052522998 -0.77474898
		 0.56417203 0.285438 -0.840352 -0.54093301 0.034655999 -0.77474898 0.56417203 0.285438
		 -0.828592 0.55738401 0.052522998 -0.77474898 0.56417203 0.285438 -0.840352 -0.54093301
		 0.034655999 -0.72034198 -0.49282199 0.48809099;
	setAttr ".n[2656:2821]" -type "float3"  -0.43727201 0.63053101 0.64126801 -0.77474898
		 0.56417203 0.285438 -0.72034198 -0.49282199 0.48809099 -0.77474898 0.56417203 0.285438
		 -0.43727201 0.63053101 0.64126801 -0.211952 0.96902698 0.126743 -0.050246999 0.98247302
		 0.17950401 -0.211952 0.96902698 0.126743 -0.43727201 0.63053101 0.64126801 -0.045364998
		 0.76347101 0.64424598 -0.050246999 0.98247302 0.17950401 -0.43727201 0.63053101 0.64126801
		 -0.050246999 0.98247302 0.17950401 -0.045364998 0.76347101 0.64424598 0.79096103
		 0.52699399 0.31089699 0.71717602 0.68803799 0.110736 -0.050246999 0.98247302 0.17950401
		 0.79096103 0.52699399 0.31089699 -0.050246999 0.98247302 0.17950401 0.71717602 0.68803799
		 0.110736 0.77857101 0.61705297 0.114335 0.828969 -0.559187 -0.010963 0.77857101 0.61705297
		 0.114335 0.71717602 0.68803799 0.110736 0.79096103 0.52699399 0.31089699 0.828969
		 -0.559187 -0.010963 0.71717602 0.68803799 0.110736 0.886554 -0.461979 -0.024436001
		 0.77857101 0.61705297 0.114335 0.828969 -0.559187 -0.010963 0.77857101 0.61705297
		 0.114335 0.886554 -0.461979 -0.024436001 0.87859499 0.47756699 0.001073 0.81928402
		 -0.56579 -0.093036003 0.87859499 0.47756699 0.001073 0.886554 -0.461979 -0.024436001
		 0.120862 -0.99237299 -0.024256 0.96158999 -0.26591799 0.068065003 0.81928402 -0.56579
		 -0.093036003 0.96158999 -0.26591799 0.068065003 0.120862 -0.99237299 -0.024256 0.36579901
		 -0.92738003 0.078474 0.94468302 -0.32030299 -0.070565999 0.96158999 -0.26591799 0.068065003
		 0.36579901 -0.92738003 0.078474 0.96158999 -0.26591799 0.068065003 0.94468302 -0.32030299
		 -0.070565999 0.986413 0.084408998 -0.14094 0.986413 0.084408998 -0.14094 0.96456701
		 0.21939801 0.146542 0.96158999 -0.26591799 0.068065003 0.96456701 0.21939801 0.146542
		 0.986413 0.084408998 -0.14094 0.98966497 -0.00076999998 -0.143399 0.98966497 -0.00076999998
		 -0.143399 0.93872201 0.228833 -0.25775501 0.96456701 0.21939801 0.146542 0.93872201
		 0.228833 -0.25775501 0.98966497 -0.00076999998 -0.143399 0.649979 0.261538 -0.71353
		 0.986413 0.084408998 -0.14094 0.649979 0.261538 -0.71353 0.98966497 -0.00076999998
		 -0.143399 -0.136336 0.30119899 -0.94376498 0.93872201 0.228833 -0.25775501 0.649979
		 0.261538 -0.71353 0.93872201 0.228833 -0.25775501 -0.136336 0.30119899 -0.94376498
		 0.077096999 0.177293 -0.981134 0.649979 0.261538 -0.71353 0.040801 0.204803 -0.97795302
		 -0.136336 0.30119899 -0.94376498 0.040801 0.204803 -0.97795302 0.649979 0.261538
		 -0.71353 0.72183901 0.283234 -0.63144797 0.986413 0.084408998 -0.14094 0.72183901
		 0.283234 -0.63144797 0.649979 0.261538 -0.71353 0.72183901 0.283234 -0.63144797 0.986413
		 0.084408998 -0.14094 0.77692199 -0.191999 -0.59960699 0.94468302 -0.32030299 -0.070565999
		 0.77692199 -0.191999 -0.59960699 0.986413 0.084408998 -0.14094 0.77692199 -0.191999
		 -0.59960699 0.94468302 -0.32030299 -0.070565999 0.36579901 -0.92738003 0.078474 0.369407
		 -0.75969899 -0.53516001 0.77692199 -0.191999 -0.59960699 0.36579901 -0.92738003 0.078474
		 0.77692199 -0.191999 -0.59960699 0.369407 -0.75969899 -0.53516001 -0.015262 -0.22076
		 -0.975209 0.040801 0.204803 -0.97795302 0.77692199 -0.191999 -0.59960699 -0.015262
		 -0.22076 -0.975209 0.77692199 -0.191999 -0.59960699 0.040801 0.204803 -0.97795302
		 0.72183901 0.283234 -0.63144797 -0.38304499 -0.63822103 0.66779602 -0.43727201 0.63053101
		 0.64126801 -0.72034198 -0.49282199 0.48809099 -0.43727201 0.63053101 0.64126801 -0.38304499
		 -0.63822103 0.66779602 -0.136676 -0.54184997 0.82928801 -0.136676 -0.54184997 0.82928801
		 -0.045364998 0.76347101 0.64424598 -0.43727201 0.63053101 0.64126801 -0.045364998
		 0.76347101 0.64424598 -0.136676 -0.54184997 0.82928801 0.37155801 0.25381199 0.89304203
		 0.79096103 0.52699399 0.31089699 -0.045364998 0.76347101 0.64424598 0.37155801 0.25381199
		 0.89304203 0.53545201 -0.552441 0.63882703 0.37155801 0.25381199 0.89304203 -0.136676
		 -0.54184997 0.82928801 0.37155801 0.25381199 0.89304203 0.53545201 -0.552441 0.63882703
		 0.79096103 0.52699399 0.31089699 0.718548 -0.67674899 0.160312 0.79096103 0.52699399
		 0.31089699 0.53545201 -0.552441 0.63882703 0.79096103 0.52699399 0.31089699 0.718548
		 -0.67674899 0.160312 0.828969 -0.559187 -0.010963 -0.75125301 0.27081299 -0.60189599
		 -0.95509303 -0.047014002 -0.29255399 -0.65943497 0.246786 -0.7101 -0.95509303 -0.047014002
		 -0.29255399 -0.75125301 0.27081299 -0.60189599 -0.99435002 0.036178999 0.099799 -0.59630799
		 0.67439198 -0.43544501 -0.99435002 0.036178999 0.099799 -0.75125301 0.27081299 -0.60189599
		 -0.99435002 0.036178999 0.099799 -0.83483702 -0.43305099 -0.33987501 -0.95509303
		 -0.047014002 -0.29255399 -0.70898002 0.57954299 0.40184301 -0.99435002 0.036178999
		 0.099799 -0.59630799 0.67439198 -0.43544501 -0.99435002 0.036178999 0.099799 -0.649849
		 -0.25532299 0.715895 -0.83483702 -0.43305099 -0.33987501 -0.649849 -0.25532299 0.715895
		 -0.99435002 0.036178999 0.099799 -0.70898002 0.57954299 0.40184301 -0.649849 -0.25532299
		 0.715895 -0.434232 -0.90040302 0.026782 -0.83483702 -0.43305099 -0.33987501 -0.434232
		 -0.90040302 0.026782 -0.649849 -0.25532299 0.715895 -0.50727397 -0.57562703 0.64134699
		 -0.50727397 -0.57562703 0.64134699 0 -0.97722101 -0.21222299 -0.434232 -0.90040302
		 0.026782 0 0.079910003 0.99680197 -0.50727397 -0.57562703 0.64134699 -0.649849 -0.25532299
		 0.715895 -0.649849 -0.25532299 0.715895 -0.28196299 0.40712801 0.86875999 0 0.079910003
		 0.99680197 -0.28196299 0.40712801 0.86875999 -0.649849 -0.25532299 0.715895 -0.70898002
		 0.57954299 0.40184301 0 0.68795502 0.72575402;
	setAttr ".n[2822:2987]" -type "float3"  0 0.079910003 0.99680197 -0.28196299
		 0.40712801 0.86875999 -0.28196299 0.40712801 0.86875999 0.31524301 0.74534798 0.58743399
		 0 0.68795502 0.72575402 0.31524301 0.74534798 0.58743399 -0.28196299 0.40712801 0.86875999
		 -0.100455 0.90016198 0.42381299 -0.70898002 0.57954299 0.40184301 -0.100455 0.90016198
		 0.42381299 -0.28196299 0.40712801 0.86875999 -0.100455 0.90016198 0.42381299 -0.70898002
		 0.57954299 0.40184301 -0.38361901 0.915748 0.119344 -0.59630799 0.67439198 -0.43544501
		 -0.38361901 0.915748 0.119344 -0.70898002 0.57954299 0.40184301 -0.38361901 0.915748
		 0.119344 -0.59630799 0.67439198 -0.43544501 -0.18987399 0.75586998 -0.62658501 -0.27409199
		 -0.937163 -0.21586899 -0.38817599 -0.44122201 -0.80909997 -0.69741201 -0.71024001
		 -0.095789 -0.38817599 -0.44122201 -0.80909997 -0.27409199 -0.937163 -0.21586899 -0.152273
		 -0.201634 -0.96755201 -0.152273 -0.201634 -0.96755201 -0.141415 0.217372 -0.96579099
		 -0.38817599 -0.44122201 -0.80909997 -0.198147 0.66357797 -0.721389 -0.141415 0.217372
		 -0.96579099 -0.152273 -0.201634 -0.96755201 -0.141415 0.217372 -0.96579099 -0.198147
		 0.66357797 -0.721389 -0.19130901 0.667063 -0.72001898 -0.12984601 0.980762 -0.145759
		 -0.19130901 0.667063 -0.72001898 -0.198147 0.66357797 -0.721389 -0.29157299 0.94938201
		 0.116873 -0.12984601 0.980762 -0.145759 -0.198147 0.66357797 -0.721389 -0.12984601
		 0.980762 -0.145759 -0.29157299 0.94938201 0.116873 -0.160528 0.74299097 0.64976603
		 -0.29157299 0.94938201 0.116873 -0.22825401 0.54361898 0.80769902 -0.160528 0.74299097
		 0.64976603 -0.282785 0.194213 0.93931597 -0.160528 0.74299097 0.64976603 -0.22825401
		 0.54361898 0.80769902 -0.235782 -0.123068 0.96398199 -0.282785 0.194213 0.93931597
		 -0.22825401 0.54361898 0.80769902 -0.282785 0.194213 0.93931597 -0.235782 -0.123068
		 0.96398199 -0.47263101 -0.215352 0.85454297 -0.235782 -0.123068 0.96398199 -0.22791199
		 -0.77554399 0.58871698 -0.47263101 -0.215352 0.85454297 -0.63730502 -0.68883097 0.34547701
		 -0.47263101 -0.215352 0.85454297 -0.22791199 -0.77554399 0.58871698 -0.27409199 -0.937163
		 -0.21586899 -0.63730502 -0.68883097 0.34547701 -0.22791199 -0.77554399 0.58871698
		 -0.63730502 -0.68883097 0.34547701 -0.27409199 -0.937163 -0.21586899 -0.69741201
		 -0.71024001 -0.095789 -0.95509303 -0.047014002 -0.29255399 -0.65994501 -0.196376
		 -0.725196 -0.65943497 0.246786 -0.7101 -0.65994501 -0.196376 -0.725196 -0.95509303
		 -0.047014002 -0.29255399 -0.86405897 -0.338045 -0.372998 -0.79323697 -0.35210401
		 -0.49678701 -0.86405897 -0.338045 -0.372998 -0.95509303 -0.047014002 -0.29255399
		 -0.83483702 -0.43305099 -0.33987501 -0.79323697 -0.35210401 -0.49678701 -0.95509303
		 -0.047014002 -0.29255399 -0.29966801 -0.353459 -0.88615203 -0.86405897 -0.338045
		 -0.372998 -0.79323697 -0.35210401 -0.49678701 -0.86405897 -0.338045 -0.372998 -0.29966801
		 -0.353459 -0.88615203 -0.431696 -0.015275 -0.90188998 -0.431696 -0.015275 -0.90188998
		 -0.87984103 -0.34226999 -0.32974401 -0.86405897 -0.338045 -0.372998 -0.87984103 -0.34226999
		 -0.32974401 -0.431696 -0.015275 -0.90188998 -0.99960399 -0.014182 0.024289001 -0.99960399
		 -0.014182 0.024289001 -0.931036 -0.057264999 -0.360405 -0.87984103 -0.34226999 -0.32974401
		 -0.931036 -0.057264999 -0.360405 -0.99960399 -0.014182 0.024289001 -0.995377 -0.048613999
		 0.082836002 -0.94757402 0.060546 -0.31374699 -0.931036 -0.057264999 -0.360405 -0.995377
		 -0.048613999 0.082836002 -0.99960399 -0.014182 0.024289001 -0.98663902 0.105734 0.123951
		 -0.995377 -0.048613999 0.082836002 -0.98663902 0.105734 0.123951 -0.99960399 -0.014182
		 0.024289001 -0.85277998 -0.072292998 0.51724303 -0.98242199 -0.0094929999 0.186432
		 -0.995377 -0.048613999 0.082836002 -0.98663902 0.105734 0.123951 -0.85277998 -0.072292998
		 0.51724303 -0.98877001 0.146878 0.027590999 -0.98663902 0.105734 0.123951 -0.98877001
		 0.146878 0.027590999 -0.85277998 -0.072292998 0.51724303 -0.95400602 -0.299458 -0.014054
		 -0.96047199 -0.26714101 0.078285001 -0.95400602 -0.299458 -0.014054 -0.85277998 -0.072292998
		 0.51724303 -0.79511201 -0.50352597 -0.33802199 -0.96047199 -0.26714101 0.078285001
		 -0.85277998 -0.072292998 0.51724303 -0.96047199 -0.26714101 0.078285001 -0.79511201
		 -0.50352597 -0.33802199 -0.89042097 -0.22776499 -0.39404801 -0.79323697 -0.35210401
		 -0.49678701 -0.89042097 -0.22776499 -0.39404801 -0.79511201 -0.50352597 -0.33802199
		 -0.29966801 -0.353459 -0.88615203 -0.79323697 -0.35210401 -0.49678701 -0.79511201
		 -0.50352597 -0.33802199 -0.83483702 -0.43305099 -0.33987501 -0.89042097 -0.22776499
		 -0.39404801 -0.79323697 -0.35210401 -0.49678701 -0.89042097 -0.22776499 -0.39404801
		 -0.83483702 -0.43305099 -0.33987501 -0.91314298 -0.223456 -0.34093499 -0.65056199
		 -0.65600502 -0.38265899 -0.91314298 -0.223456 -0.34093499 -0.83483702 -0.43305099
		 -0.33987501 -0.434232 -0.90040302 0.026782 -0.65056199 -0.65600502 -0.38265899 -0.83483702
		 -0.43305099 -0.33987501 -0.91488999 -0.32032499 0.245698 -0.65056199 -0.65600502
		 -0.38265899 -0.61523598 -0.78458101 0.076930001 -0.65056199 -0.65600502 -0.38265899
		 -0.91488999 -0.32032499 0.245698 -0.91314298 -0.223456 -0.34093499 -0.971147 -0.041067999
		 0.234918 -0.91314298 -0.223456 -0.34093499 -0.91488999 -0.32032499 0.245698 -0.91314298
		 -0.223456 -0.34093499 -0.971147 -0.041067999 0.234918 -0.89042097 -0.22776499 -0.39404801
		 -0.96047199 -0.26714101 0.078285001 -0.89042097 -0.22776499 -0.39404801 -0.971147
		 -0.041067999 0.234918 -0.98706102 0.080236003 0.138827 -0.995377 -0.048613999 0.082836002
		 -0.98242199 -0.0094929999 0.186432 -0.995377 -0.048613999 0.082836002 -0.98706102
		 0.080236003 0.138827 -0.94757402 0.060546 -0.31374699 -0.88442498 0.33658299 -0.32327199
		 -0.94757402 0.060546 -0.31374699;
	setAttr ".n[2988:3153]" -type "float3"  -0.98706102 0.080236003 0.138827 -0.920147
		 0.363841 0.144741 -0.88442498 0.33658299 -0.32327199 -0.98706102 0.080236003 0.138827
		 -0.88442498 0.33658299 -0.32327199 -0.920147 0.363841 0.144741 -0.74397701 0.63111198
		 -0.219537 -0.64417702 0.76467502 0.017538 -0.74397701 0.63111198 -0.219537 -0.920147
		 0.363841 0.144741 -0.920147 0.363841 0.144741 -0.66617399 0.69220102 0.27761301 -0.64417702
		 0.76467502 0.017538 -0.66617399 0.69220102 0.27761301 -0.920147 0.363841 0.144741
		 -0.747181 0.43672001 0.50099599 -0.81220901 0.181457 0.55442798 -0.747181 0.43672001
		 0.50099599 -0.920147 0.363841 0.144741 -0.98706102 0.080236003 0.138827 -0.81220901
		 0.181457 0.55442798 -0.920147 0.363841 0.144741 -0.81220901 0.181457 0.55442798 -0.98706102
		 0.080236003 0.138827 -0.91263598 0.058084 0.40462601 -0.98242199 -0.0094929999 0.186432
		 -0.91263598 0.058084 0.40462601 -0.98706102 0.080236003 0.138827 -0.66617399 0.69220102
		 0.27761301 -0.26666099 0.96336502 0.028644999 -0.64417702 0.76467502 0.017538 -0.26666099
		 0.96336502 0.028644999 -0.66617399 0.69220102 0.27761301 -0.32095799 0.85133702 0.41498399
		 -0.747181 0.43672001 0.50099599 -0.32095799 0.85133702 0.41498399 -0.66617399 0.69220102
		 0.27761301 0 0.99536902 0.096128002 -0.26666099 0.96336502 0.028644999 -0.32095799
		 0.85133702 0.41498399 -0.747181 0.43672001 0.50099599 -0.399266 0.53355998 0.745588
		 -0.32095799 0.85133702 0.41498399 -0.399266 0.53355998 0.745588 -0.747181 0.43672001
		 0.50099599 -0.81220901 0.181457 0.55442798 0 0.83927602 0.54370499 -0.32095799 0.85133702
		 0.41498399 -0.399266 0.53355998 0.745588 -0.32095799 0.85133702 0.41498399 0 0.83927602
		 0.54370499 0 0.99536902 0.096128002 0 0.488029 0.87282801 0 0.83927602 0.54370499
		 -0.399266 0.53355998 0.745588 -0.399266 0.53355998 0.745588 -0.3107 0.201276 0.92895299
		 0 0.488029 0.87282801 -0.3107 0.201276 0.92895299 -0.399266 0.53355998 0.745588 -0.81220901
		 0.181457 0.55442798 -0.81220901 0.181457 0.55442798 -0.435763 0.19798 0.87801802
		 -0.3107 0.201276 0.92895299 -0.435763 0.19798 0.87801802 -0.81220901 0.181457 0.55442798
		 -0.91263598 0.058084 0.40462601 -0.91263598 0.058084 0.40462601 -0.786035 -0.071275003
		 0.61405998 -0.435763 0.19798 0.87801802 -0.786035 -0.071275003 0.61405998 -0.91263598
		 0.058084 0.40462601 -0.98242199 -0.0094929999 0.186432 -0.98242199 -0.0094929999
		 0.186432 -0.889965 0.103742 0.44407201 -0.786035 -0.071275003 0.61405998 -0.889965
		 0.103742 0.44407201 -0.98242199 -0.0094929999 0.186432 -0.98663902 0.105734 0.123951
		 -0.98877001 0.146878 0.027590999 -0.889965 0.103742 0.44407201 -0.98663902 0.105734
		 0.123951 -0.889965 0.103742 0.44407201 -0.98877001 0.146878 0.027590999 -0.949359
		 -0.117325 0.29146701 -0.95400602 -0.299458 -0.014054 -0.949359 -0.117325 0.29146701
		 -0.98877001 0.146878 0.027590999 -0.949359 -0.117325 0.29146701 -0.95400602 -0.299458
		 -0.014054 -0.84968501 -0.43231499 0.301893 -0.96047199 -0.26714101 0.078285001 -0.84968501
		 -0.43231499 0.301893 -0.95400602 -0.299458 -0.014054 -0.69695997 -0.111079 0.70845503
		 -0.949359 -0.117325 0.29146701 -0.84968501 -0.43231499 0.301893 -0.949359 -0.117325
		 0.29146701 -0.69695997 -0.111079 0.70845503 -0.889965 0.103742 0.44407201 -0.84968501
		 -0.43231499 0.301893 -0.59579599 -0.41597199 0.68701798 -0.69695997 -0.111079 0.70845503
		 -0.59579599 -0.41597199 0.68701798 -0.84968501 -0.43231499 0.301893 -0.84964502 -0.22507299
		 0.47691301 -0.96047199 -0.26714101 0.078285001 -0.84964502 -0.22507299 0.47691301
		 -0.84968501 -0.43231499 0.301893 -0.84964502 -0.22507299 0.47691301 -0.96047199 -0.26714101
		 0.078285001 -0.971147 -0.041067999 0.234918 -0.971147 -0.041067999 0.234918 -0.846403
		 -0.065787002 0.52846497 -0.84964502 -0.22507299 0.47691301 -0.846403 -0.065787002
		 0.52846497 -0.971147 -0.041067999 0.234918 -0.91488999 -0.32032499 0.245698 -0.91488999
		 -0.32032499 0.245698 -0.83851397 -0.38222301 0.388329 -0.846403 -0.065787002 0.52846497
		 -0.83851397 -0.38222301 0.388329 -0.91488999 -0.32032499 0.245698 -0.61523598 -0.78458101
		 0.076930001 -0.61523598 -0.78458101 0.076930001 -0.51982802 -0.84167099 -0.146183
		 -0.83851397 -0.38222301 0.388329 -0.51982802 -0.84167099 -0.146183 -0.61523598 -0.78458101
		 0.076930001 -0.434232 -0.90040302 0.026782 0 -0.97722101 -0.21222299 -0.51982802
		 -0.84167099 -0.146183 -0.434232 -0.90040302 0.026782 -0.51982802 -0.84167099 -0.146183
		 0 -0.97722101 -0.21222299 -0.28134501 -0.949422 -0.139441 0 -0.99947 0.032561999
		 -0.28134501 -0.949422 -0.139441 0 -0.97722101 -0.21222299 -0.674375 -0.60955799 0.41672301
		 -0.51982802 -0.84167099 -0.146183 -0.28134501 -0.949422 -0.139441 -0.51982802 -0.84167099
		 -0.146183 -0.674375 -0.60955799 0.41672301 -0.83851397 -0.38222301 0.388329 0 -0.99947
		 0.032561999 -0.674375 -0.60955799 0.41672301 -0.28134501 -0.949422 -0.139441 -0.674375
		 -0.60955799 0.41672301 0 -0.99947 0.032561999 0 -0.54422098 0.83894199 -0.540214
		 -0.36476901 0.758362 -0.674375 -0.60955799 0.41672301 0 -0.54422098 0.83894199 -0.674375
		 -0.60955799 0.41672301 -0.540214 -0.36476901 0.758362 -0.89532399 -0.117932 0.429519
		 -0.89532399 -0.117932 0.429519 -0.83851397 -0.38222301 0.388329 -0.674375 -0.60955799
		 0.41672301 -0.83851397 -0.38222301 0.388329 -0.89532399 -0.117932 0.429519 -0.846403
		 -0.065787002 0.52846497 -0.53571898 -0.273406 0.798908 -0.846403 -0.065787002 0.52846497
		 -0.89532399 -0.117932 0.429519;
	setAttr ".n[3154:3319]" -type "float3"  -0.846403 -0.065787002 0.52846497 -0.53571898
		 -0.273406 0.798908 -0.84964502 -0.22507299 0.47691301 -0.79701602 -0.008955 0.60389203
		 -0.84964502 -0.22507299 0.47691301 -0.53571898 -0.273406 0.798908 -0.84964502 -0.22507299
		 0.47691301 -0.79701602 -0.008955 0.60389203 -0.59579599 -0.41597199 0.68701798 -0.52775699
		 -0.272174 0.80460799 -0.59579599 -0.41597199 0.68701798 -0.79701602 -0.008955 0.60389203
		 -0.59579599 -0.41597199 0.68701798 -0.52775699 -0.272174 0.80460799 -0.487425 0.017162001
		 0.87299597 -0.487425 0.017162001 0.87299597 -0.69695997 -0.111079 0.70845503 -0.59579599
		 -0.41597199 0.68701798 -0.69695997 -0.111079 0.70845503 -0.487425 0.017162001 0.87299597
		 -0.43301699 0.37212801 0.82098502 -0.43301699 0.37212801 0.82098502 -0.889965 0.103742
		 0.44407201 -0.69695997 -0.111079 0.70845503 -0.889965 0.103742 0.44407201 -0.43301699
		 0.37212801 0.82098502 -0.411805 -0.17983 0.89335197 -0.43807101 -0.437502 0.78529298
		 -0.889965 0.103742 0.44407201 -0.411805 -0.17983 0.89335197 -0.889965 0.103742 0.44407201
		 -0.43807101 -0.437502 0.78529298 -0.786035 -0.071275003 0.61405998 -0.411805 -0.17983
		 0.89335197 -0.40872401 -0.061475001 0.91058499 -0.43807101 -0.437502 0.78529298 -0.40872401
		 -0.061475001 0.91058499 -0.411805 -0.17983 0.89335197 -0.43301699 0.37212801 0.82098502
		 -0.43301699 0.37212801 0.82098502 -0.50827497 0.59829003 0.61944002 -0.40872401 -0.061475001
		 0.91058499 -0.50827497 0.59829003 0.61944002 -0.43301699 0.37212801 0.82098502 -0.487425
		 0.017162001 0.87299597 -0.64845699 0.31971899 0.69085699 -0.50827497 0.59829003 0.61944002
		 -0.487425 0.017162001 0.87299597 -0.50827497 0.59829003 0.61944002 -0.64845699 0.31971899
		 0.69085699 -0.40872401 -0.061475001 0.91058499 -0.487425 0.017162001 0.87299597 -0.60986203
		 0.144628 0.779199 -0.64845699 0.31971899 0.69085699 -0.60986203 0.144628 0.779199
		 -0.487425 0.017162001 0.87299597 -0.71092403 0.0059039998 0.70324397 -0.52775699
		 -0.272174 0.80460799 -0.71092403 0.0059039998 0.70324397 -0.487425 0.017162001 0.87299597
		 -0.71092403 0.0059039998 0.70324397 -0.52775699 -0.272174 0.80460799 -0.65208298
		 -0.142894 0.74456 -0.79701602 -0.008955 0.60389203 -0.65208298 -0.142894 0.74456
		 -0.52775699 -0.272174 0.80460799 -0.65208298 -0.142894 0.74456 -0.79701602 -0.008955
		 0.60389203 -0.64158797 0.293529 0.708664 -0.721205 -0.30032399 0.62423497 -0.64158797
		 0.293529 0.708664 -0.79701602 -0.008955 0.60389203 -0.53571898 -0.273406 0.798908
		 -0.721205 -0.30032399 0.62423497 -0.79701602 -0.008955 0.60389203 -0.51684999 -0.34940699
		 0.78152502 -0.64158797 0.293529 0.708664 -0.721205 -0.30032399 0.62423497 -0.64158797
		 0.293529 0.708664 -0.51684999 -0.34940699 0.78152502 -0.378059 0.030073 0.92529303
		 -0.38103801 0.247344 0.89086002 -0.64158797 0.293529 0.708664 -0.378059 0.030073
		 0.92529303 -0.64158797 0.293529 0.708664 -0.38103801 0.247344 0.89086002 -0.47445101
		 0.066462003 0.87776899 -0.65208298 -0.142894 0.74456 -0.290838 -0.46478999 0.83629203
		 -0.65208298 -0.142894 0.74456 0 -0.567689 0.82324302 1e-06 -0.53566802 0.84442902
		 -0.65208298 -0.142894 0.74456 -0.290838 -0.46478999 0.83629203 -0.68219298 -0.0064269998
		 0.73114401 -0.68219298 -0.0064269998 0.73114401 -0.71092403 0.0059039998 0.70324397
		 -0.65208298 -0.142894 0.74456 -0.71092403 0.0059039998 0.70324397 -0.68219298 -0.0064269998
		 0.73114401 -0.71813798 0.234418 0.65522999 -0.71813798 0.234418 0.65522999 -0.60986203
		 0.144628 0.779199 -0.71092403 0.0059039998 0.70324397 -0.60986203 0.144628 0.779199
		 -0.71813798 0.234418 0.65522999 -0.36296701 -0.193243 0.91154402 -0.58790803 -0.249341
		 0.76954103 -0.60986203 0.144628 0.779199 -0.36296701 -0.193243 0.91154402 -0.60986203
		 0.144628 0.779199 -0.58790803 -0.249341 0.76954103 -0.64845699 0.31971899 0.69085699
		 -0.40872401 -0.061475001 0.91058499 -0.64845699 0.31971899 0.69085699 -0.58790803
		 -0.249341 0.76954103 -0.58790803 -0.249341 0.76954103 -0.33424199 -0.56096298 0.757366
		 -0.40872401 -0.061475001 0.91058499 -0.33424199 -0.56096298 0.757366 -0.58790803
		 -0.249341 0.76954103 -0.36296701 -0.193243 0.91154402 -0.33424199 -0.56096298 0.757366
		 -0.43807101 -0.437502 0.78529298 -0.40872401 -0.061475001 0.91058499 -0.43807101
		 -0.437502 0.78529298 -0.33424199 -0.56096298 0.757366 -0.786035 -0.071275003 0.61405998
		 -0.30261999 -0.181099 0.93574798 -0.786035 -0.071275003 0.61405998 -0.33424199 -0.56096298
		 0.757366 -0.36296701 -0.193243 0.91154402 -0.30261999 -0.181099 0.93574798 -0.33424199
		 -0.56096298 0.757366 -0.435763 0.19798 0.87801802 -0.786035 -0.071275003 0.61405998
		 -0.30261999 -0.181099 0.93574798 0 0.041880999 0.99912298 -0.30261999 -0.181099 0.93574798
		 -0.36296701 -0.193243 0.91154402 -0.30261999 -0.181099 0.93574798 0 0.041880999 0.99912298
		 -0.435763 0.19798 0.87801802 -0.36296701 -0.193243 0.91154402 0 0.117372 0.99308801
		 0 0.041880999 0.99912298 0 0.117372 0.99308801 -0.36296701 -0.193243 0.91154402 -0.71813798
		 0.234418 0.65522999 -0.71813798 0.234418 0.65522999 -0.69037598 0.31459799 0.65146798
		 0 0.117372 0.99308801 -0.69037598 0.31459799 0.65146798 -0.71813798 0.234418 0.65522999
		 -0.68219298 -0.0064269998 0.73114401 -0.68219298 -0.0064269998 0.73114401 -0.68025702
		 -0.14624301 0.71823698 -0.63584203 0.33498201 0.69533598 -0.69037598 0.31459799 0.65146798
		 -0.290838 -0.46478999 0.83629203 1e-06 -0.53566802 0.84442902 1e-06 -0.39229199 0.91984099
		 -0.68219298 -0.0064269998 0.73114401 0 0.126624 0.99195099 -0.435763 0.19798 0.87801802
		 0 0.041880999 0.99912298;
	setAttr ".n[3320:3485]" -type "float3"  -0.435763 0.19798 0.87801802 0 0.126624
		 0.99195099 -0.3107 0.201276 0.92895299 0 0.163691 0.98651201 -0.3107 0.201276 0.92895299
		 0 0.126624 0.99195099 -0.3107 0.201276 0.92895299 0 0.163691 0.98651201 0 0.488029
		 0.87282801 0 -0.54422098 0.83894199 0 -0.39851099 0.91716403 -0.540214 -0.36476901
		 0.758362 0 -0.39851099 0.91716403 0 -0.39829499 0.91725701 -0.540214 -0.36476901
		 0.758362 -0.48877901 0.070243001 0.86957502 0 -0.39829499 0.91725701 0 0.73555702
		 0.677463 0 -0.39829499 0.91725701 -0.48877901 0.070243001 0.86957502 -0.540214 -0.36476901
		 0.758362 -0.235339 0.77764302 0.58299798 -0.48877901 0.070243001 0.86957502 0 0.73555702
		 0.677463 -0.48877901 0.070243001 0.86957502 -0.77434099 0.060525 0.62986797 -0.540214
		 -0.36476901 0.758362 -0.77434099 0.060525 0.62986797 -0.48877901 0.070243001 0.86957502
		 -0.235339 0.77764302 0.58299798 -0.77434099 0.060525 0.62986797 -0.89532399 -0.117932
		 0.429519 -0.540214 -0.36476901 0.758362 -0.89532399 -0.117932 0.429519 -0.77434099
		 0.060525 0.62986797 -0.53571898 -0.273406 0.798908 0.088996999 0.67123097 0.73588598
		 -0.53571898 -0.273406 0.798908 -0.77434099 0.060525 0.62986797 -0.235339 0.77764302
		 0.58299798 0.088996999 0.67123097 0.73588598 -0.77434099 0.060525 0.62986797 0 0.52906501
		 -0.84858203 0 0.273835 -0.96177697 -0.081644997 0.47347599 -0.87701499 -0.081644997
		 0.47347599 -0.87701499 -0.59630799 0.67439198 -0.43544501 0 0.52906501 -0.84858203
		 -0.59630799 0.67439198 -0.43544501 -0.081644997 0.47347599 -0.87701499 -0.18987399
		 0.75586998 -0.62658501 -0.42640501 0.52320099 -0.73786098 0 0.52906501 -0.84858203
		 -0.59630799 0.67439198 -0.43544501 -0.41355699 0.19287001 -0.88981599 -0.42640501
		 0.52320099 -0.73786098 -0.75125301 0.27081299 -0.60189599 -0.59630799 0.67439198
		 -0.43544501 -0.75125301 0.27081299 -0.60189599 -0.42640501 0.52320099 -0.73786098
		 -0.45084 0.18315899 -0.87361097 -0.41355699 0.19287001 -0.88981599 -0.75125301 0.27081299
		 -0.60189599 -0.45084 0.18315899 -0.87361097 -0.65943497 0.246786 -0.7101 -0.351533
		 0.233365 -0.90662301 -0.65943497 0.246786 -0.7101 -0.45084 0.18315899 -0.87361097
		 -0.75125301 0.27081299 -0.60189599 -0.65994501 -0.196376 -0.725196 -0.351533 0.233365
		 -0.90662301 -0.65943497 0.246786 -0.7101 -0.351533 0.233365 -0.90662301 -0.65994501
		 -0.196376 -0.725196 -0.32698801 -0.40257499 -0.85499197 -0.32698801 -0.40257499 -0.85499197
		 -0.58061802 -0.54651803 -0.60349101 -0.31833801 -0.57509702 -0.75360799 -0.58061802
		 -0.54651803 -0.60349101 -0.32698801 -0.40257499 -0.85499197 -0.65994501 -0.196376
		 -0.725196 -0.86405897 -0.338045 -0.372998 -0.58061802 -0.54651803 -0.60349101 -0.65994501
		 -0.196376 -0.725196 -0.58061802 -0.54651803 -0.60349101 -0.86405897 -0.338045 -0.372998
		 -0.87984103 -0.34226999 -0.32974401 -0.51215702 -0.361552 -0.77908599 -0.58061802
		 -0.54651803 -0.60349101 -0.87984103 -0.34226999 -0.32974401 -0.58061802 -0.54651803
		 -0.60349101 -0.51215702 -0.361552 -0.77908599 -0.31833801 -0.57509702 -0.75360799
		 -0.359366 -0.348566 -0.865655 -0.31833801 -0.57509702 -0.75360799 -0.51215702 -0.361552
		 -0.77908599 -0.51215702 -0.361552 -0.77908599 -0.337796 -0.000145 -0.94121897 -0.359366
		 -0.348566 -0.865655 0 0.263704 -0.96460402 -0.337796 -0.000145 -0.94121897 -0.60034198
		 0.0055260002 -0.79972398 -0.51215702 -0.361552 -0.77908599 -0.60034198 0.0055260002
		 -0.79972398 -0.337796 -0.000145 -0.94121897 -0.60034198 0.0055260002 -0.79972398
		 -0.51215702 -0.361552 -0.77908599 -0.87984103 -0.34226999 -0.32974401 -0.931036 -0.057264999
		 -0.360405 -0.60034198 0.0055260002 -0.79972398 -0.87984103 -0.34226999 -0.32974401
		 -0.60034198 0.0055260002 -0.79972398 -0.931036 -0.057264999 -0.360405 -0.623905 0.185422
		 -0.759184 0 0.263704 -0.96460402 -0.60034198 0.0055260002 -0.79972398 -0.623905 0.185422
		 -0.759184 -0.94757402 0.060546 -0.31374699 -0.623905 0.185422 -0.759184 -0.931036
		 -0.057264999 -0.360405 -0.623905 0.185422 -0.759184 -0.94757402 0.060546 -0.31374699
		 -0.88442498 0.33658299 -0.32327199 -0.48139399 0.51211101 -0.711339 -0.623905 0.185422
		 -0.759184 -0.88442498 0.33658299 -0.32327199 -0.623905 0.185422 -0.759184 -0.48139399
		 0.51211101 -0.711339 0 0.263704 -0.96460402 -0.74397701 0.63111198 -0.219537 -0.48139399
		 0.51211101 -0.711339 -0.88442498 0.33658299 -0.32327199 0 0.681835 -0.73150599 0
		 0.263704 -0.96460402 -0.48139399 0.51211101 -0.711339 0 0.99536902 0.096128002 0
		 0.96477997 -0.26305801 -0.26666099 0.96336502 0.028644999 -0.32485199 0.88765198
		 -0.32641199 -0.26666099 0.96336502 0.028644999 0 0.96477997 -0.26305801 0 0.681835
		 -0.73150599 -0.32485199 0.88765198 -0.32641199 0 0.96477997 -0.26305801 -0.32485199
		 0.88765198 -0.32641199 0 0.681835 -0.73150599 -0.48139399 0.51211101 -0.711339 -0.74397701
		 0.63111198 -0.219537 -0.32485199 0.88765198 -0.32641199 -0.48139399 0.51211101 -0.711339
		 -0.32485199 0.88765198 -0.32641199 -0.74397701 0.63111198 -0.219537 -0.64417702 0.76467502
		 0.017538 -0.64417702 0.76467502 0.017538 -0.26666099 0.96336502 0.028644999 -0.32485199
		 0.88765198 -0.32641199 0 0.105379 0.99443197 -0.313613 0.106881 0.94351703 0 -0.21972901
		 0.97556102 -0.313613 0.106881 0.94351703 0 0.105379 0.99443197 0 0.129896 0.99152797
		 -0.313613 0.106881 0.94351703 -0.80596697 0.16671699 0.56799799 0 -0.21972901 0.97556102
		 0 0.129896 0.99152797;
	setAttr ".n[3486:3651]" -type "float3"  -0.42636299 0.186419 0.88513398 -0.313613
		 0.106881 0.94351703 -0.42636299 0.186419 0.88513398 0 0.129896 0.99152797 -0.35431701
		 -0.27670801 0.89324802 0 -0.357389 0.93395603 -0.35431701 -0.27670801 0.89324802
		 0 0.129896 0.99152797 -0.35431701 -0.27670801 0.89324802 0 -0.357389 0.93395603 -0.188173
		 -0.392764 0.90018201 0 -0.289289 0.95724201 -0.188173 -0.392764 0.90018201 0 -0.357389
		 0.93395603 -0.188173 -0.392764 0.90018201 0 -0.289289 0.95724201 -0.242483 -0.073611997
		 0.96735901 0 0.000956 1 -0.242483 -0.073611997 0.96735901 0 -0.289289 0.95724201
		 -0.242483 -0.073611997 0.96735901 0 0.000956 1 -0.20643 0.17962 0.961833 0 0.256953
		 0.96642399 -0.20643 0.17962 0.961833 0 0.000956 1 -0.127709 0.41145799 0.90243697
		 0 0.256953 0.96642399 0 0.46966699 0.88284397 0 0.256953 0.96642399 -0.127709 0.41145799
		 0.90243697 -0.20643 0.17962 0.961833 -0.35818601 0.35448501 0.863738 -0.20643 0.17962
		 0.961833 -0.127709 0.41145799 0.90243697 -0.20643 0.17962 0.961833 -0.35818601 0.35448501
		 0.863738 -0.49459901 0.095729999 0.86383301 -0.49459901 0.095729999 0.86383301 -0.242483
		 -0.073611997 0.96735901 -0.20643 0.17962 0.961833 -0.242483 -0.073611997 0.96735901
		 -0.49459901 0.095729999 0.86383301 -0.53772002 -0.137352 0.83186102 -0.53772002 -0.137352
		 0.83186102 -0.188173 -0.392764 0.90018201 -0.242483 -0.073611997 0.96735901 -0.188173
		 -0.392764 0.90018201 -0.53772002 -0.137352 0.83186102 -0.50259 -0.49185899 0.71096998
		 -0.50259 -0.49185899 0.71096998 -0.35431701 -0.27670801 0.89324802 -0.188173 -0.392764
		 0.90018201 -0.35431701 -0.27670801 0.89324802 -0.50259 -0.49185899 0.71096998 -0.78320497
		 -0.449157 0.429939 -0.84164202 0.15181801 0.51825702 -0.35431701 -0.27670801 0.89324802
		 -0.78320497 -0.449157 0.429939 -0.35431701 -0.27670801 0.89324802 -0.84164202 0.15181801
		 0.51825702 -0.42636299 0.186419 0.88513398 -0.76808101 0.220007 0.601372 -0.42636299
		 0.186419 0.88513398 -0.84164202 0.15181801 0.51825702 -0.42636299 0.186419 0.88513398
		 -0.76808101 0.220007 0.601372 -0.313613 0.106881 0.94351703 -0.80596697 0.16671699
		 0.56799799 -0.313613 0.106881 0.94351703 -0.76808101 0.220007 0.601372 -0.76808101
		 0.220007 0.601372 -0.97501397 0.219584 0.033633001 -0.80596697 0.16671699 0.56799799
		 -0.97501397 0.219584 0.033633001 -0.76808101 0.220007 0.601372 -0.84164202 0.15181801
		 0.51825702 -0.751194 0.118363 -0.64938301 -0.80596697 0.16671699 0.56799799 -0.97501397
		 0.219584 0.033633001 -0.84164202 0.15181801 0.51825702 -0.99524897 0.060302999 -0.076445997
		 -0.97501397 0.219584 0.033633001 -0.99524897 0.060302999 -0.076445997 -0.84164202
		 0.15181801 0.51825702 -0.78320497 -0.449157 0.429939 -0.72658598 0.299211 -0.61850297
		 -0.97501397 0.219584 0.033633001 -0.99524897 0.060302999 -0.076445997 -0.97501397
		 0.219584 0.033633001 -0.72658598 0.299211 -0.61850297 -0.751194 0.118363 -0.64938301
		 -0.20719101 0.27635899 -0.93845499 -0.751194 0.118363 -0.64938301 -0.72658598 0.299211
		 -0.61850297 -0.751194 0.118363 -0.64938301 -0.20719101 0.27635899 -0.93845499 0 0.072544999
		 -0.997365 0 0.30177799 -0.95337802 0 0.072544999 -0.997365 -0.20719101 0.27635899
		 -0.93845499 -0.20719101 0.27635899 -0.93845499 0 0.237148 -0.97147399 0 0.30177799
		 -0.95337802 0 0.237148 -0.97147399 -0.20719101 0.27635899 -0.93845499 -0.221966 0.061992999
		 -0.97308201 -0.72658598 0.299211 -0.61850297 -0.221966 0.061992999 -0.97308201 -0.20719101
		 0.27635899 -0.93845499 0 -0.212956 -0.97706199 0 0.237148 -0.97147399 -0.221966 0.061992999
		 -0.97308201 -0.72658598 0.299211 -0.61850297 -0.766271 -0.012981 -0.64238602 -0.221966
		 0.061992999 -0.97308201 -0.766271 -0.012981 -0.64238602 -0.72658598 0.299211 -0.61850297
		 -0.99524897 0.060302999 -0.076445997 -0.99524897 0.060302999 -0.076445997 -0.88335901
		 -0.425704 -0.196098 -0.766271 -0.012981 -0.64238602 -0.88335901 -0.425704 -0.196098
		 -0.99524897 0.060302999 -0.076445997 -0.78320497 -0.449157 0.429939 -0.78320497 -0.449157
		 0.429939 -0.82502198 -0.518641 0.224388 -0.88335901 -0.425704 -0.196098 -0.82502198
		 -0.518641 0.224388 -0.78320497 -0.449157 0.429939 -0.50259 -0.49185899 0.71096998
		 -0.50259 -0.49185899 0.71096998 -0.88363898 -0.224617 0.41076699 -0.82502198 -0.518641
		 0.224388 -0.88363898 -0.224617 0.41076699 -0.50259 -0.49185899 0.71096998 -0.53772002
		 -0.137352 0.83186102 -0.53772002 -0.137352 0.83186102 -0.84122902 -0.029918 0.53985
		 -0.88363898 -0.224617 0.41076699 -0.84122902 -0.029918 0.53985 -0.53772002 -0.137352
		 0.83186102 -0.49459901 0.095729999 0.86383301 -0.49459901 0.095729999 0.86383301
		 -0.654706 0.20093501 0.72868699 -0.84122902 -0.029918 0.53985 -0.654706 0.20093501
		 0.72868699 -0.49459901 0.095729999 0.86383301 -0.35818601 0.35448501 0.863738 -0.35818601
		 0.35448501 0.863738 -0.41903901 0.413017 0.80859399 -0.654706 0.20093501 0.72868699
		 -0.41903901 0.413017 0.80859399 -0.35818601 0.35448501 0.863738 -0.21773 0.50758398
		 0.83363801 -0.127709 0.41145799 0.90243697 -0.21773 0.50758398 0.83363801 -0.35818601
		 0.35448501 0.863738 -0.21773 0.50758398 0.83363801 -0.127709 0.41145799 0.90243697
		 -0.027208 0.48532999 0.87390798 0 0.46966699 0.88284397 -0.027208 0.48532999 0.87390798
		 -0.127709 0.41145799 0.90243697 -0.32867101 0.31298599 0.89107502 -0.21773 0.50758398
		 0.83363801;
	setAttr ".n[3652:3817]" -type "float3"  -0.027208 0.48532999 0.87390798 -0.21773
		 0.50758398 0.83363801 -0.32867101 0.31298599 0.89107502 -0.41903901 0.413017 0.80859399
		 -0.43214199 0.47098801 0.769041 -0.41903901 0.413017 0.80859399 -0.32867101 0.31298599
		 0.89107502 -0.41903901 0.413017 0.80859399 -0.43214199 0.47098801 0.769041 -0.51178199
		 0.20871601 0.833377 -0.51178199 0.20871601 0.833377 -0.654706 0.20093501 0.72868699
		 -0.41903901 0.413017 0.80859399 -0.654706 0.20093501 0.72868699 -0.51178199 0.20871601
		 0.833377 -0.83160102 -0.13898499 0.53770101 -0.83160102 -0.13898499 0.53770101 -0.84122902
		 -0.029918 0.53985 -0.654706 0.20093501 0.72868699 -0.84122902 -0.029918 0.53985 -0.83160102
		 -0.13898499 0.53770101 -0.94105202 -0.3096 0.13626701 -0.98580801 -0.15522601 0.063928001
		 -0.84122902 -0.029918 0.53985 -0.94105202 -0.3096 0.13626701 -0.84122902 -0.029918
		 0.53985 -0.98580801 -0.15522601 0.063928001 -0.88363898 -0.224617 0.41076699 -0.89593798
		 -0.374881 -0.238244 -0.88363898 -0.224617 0.41076699 -0.98580801 -0.15522601 0.063928001
		 -0.88363898 -0.224617 0.41076699 -0.89593798 -0.374881 -0.238244 -0.82502198 -0.518641
		 0.224388 -0.88335901 -0.425704 -0.196098 -0.82502198 -0.518641 0.224388 -0.89593798
		 -0.374881 -0.238244 -0.57088602 -0.349803 -0.74278301 -0.88335901 -0.425704 -0.196098
		 -0.89593798 -0.374881 -0.238244 -0.88335901 -0.425704 -0.196098 -0.57088602 -0.349803
		 -0.74278301 -0.766271 -0.012981 -0.64238602 -0.221966 0.061992999 -0.97308201 -0.766271
		 -0.012981 -0.64238602 -0.57088602 -0.349803 -0.74278301 -0.069443002 -0.277284 -0.95827502
		 -0.221966 0.061992999 -0.97308201 -0.57088602 -0.349803 -0.74278301 -0.221966 0.061992999
		 -0.97308201 -0.069443002 -0.277284 -0.95827502 0 -0.212956 -0.97706199 0 -0.33541799
		 -0.94207001 0 -0.212956 -0.97706199 -0.069443002 -0.277284 -0.95827502 -0.069443002
		 -0.277284 -0.95827502 -0.12840299 -0.310339 -0.94191402 0 -0.33541799 -0.94207001
		 -0.12840299 -0.310339 -0.94191402 -0.069443002 -0.277284 -0.95827502 -0.57088602
		 -0.349803 -0.74278301 0 -0.147488 -0.98906398 0 -0.33541799 -0.94207001 -0.12840299
		 -0.310339 -0.94191402 -0.57088602 -0.349803 -0.74278301 -0.56013 -0.355647 -0.74817801
		 -0.12840299 -0.310339 -0.94191402 -0.56013 -0.355647 -0.74817801 -0.57088602 -0.349803
		 -0.74278301 -0.89593798 -0.374881 -0.238244 -0.89593798 -0.374881 -0.238244 -0.932522
		 -0.25919899 -0.25143501 -0.56013 -0.355647 -0.74817801 -0.932522 -0.25919899 -0.25143501
		 -0.89593798 -0.374881 -0.238244 -0.98580801 -0.15522601 0.063928001 -0.94105202 -0.3096
		 0.13626701 -0.932522 -0.25919899 -0.25143501 -0.98580801 -0.15522601 0.063928001
		 -0.932522 -0.25919899 -0.25143501 -0.94105202 -0.3096 0.13626701 -0.83872199 -0.44429299
		 -0.314879 -0.57780701 -0.26831299 -0.77080899 -0.932522 -0.25919899 -0.25143501 -0.83872199
		 -0.44429299 -0.314879 -0.932522 -0.25919899 -0.25143501 -0.57780701 -0.26831299 -0.77080899
		 -0.56013 -0.355647 -0.74817801 -0.091793999 -0.153973 -0.98380202 -0.56013 -0.355647
		 -0.74817801 -0.57780701 -0.26831299 -0.77080899 -0.56013 -0.355647 -0.74817801 -0.091793999
		 -0.153973 -0.98380202 -0.12840299 -0.310339 -0.94191402 0 -0.147488 -0.98906398 -0.12840299
		 -0.310339 -0.94191402 -0.091793999 -0.153973 -0.98380202 -0.035493001 0.010189 -0.999318
		 0 -0.147488 -0.98906398 -0.091793999 -0.153973 -0.98380202 0 -0.147488 -0.98906398
		 -0.035493001 0.010189 -0.999318 -0.48919001 0.017401 -0.87200397 -0.484597 0.170238
		 -0.85801202 -0.48919001 0.017401 -0.87200397 -0.035493001 0.010189 -0.999318 0.036586002
		 0.21310601 -0.97634399 -0.484597 0.170238 -0.85801202 -0.035493001 0.010189 -0.999318
		 -0.484597 0.170238 -0.85801202 0.036586002 0.21310601 -0.97634399 0 0.273835 -0.96177697
		 -0.081644997 0.47347599 -0.87701499 0 0.273835 -0.96177697 0.036586002 0.21310601
		 -0.97634399 0.036586002 0.21310601 -0.97634399 0.26025099 0.22221901 -0.93962097
		 -0.081644997 0.47347599 -0.87701499 0.26025099 0.22221901 -0.93962097 0.036586002
		 0.21310601 -0.97634399 -0.035493001 0.010189 -0.999318 -0.035493001 0.010189 -0.999318
		 0.060874999 -0.022077 -0.99790102 0.26025099 0.22221901 -0.93962097 0.060874999 -0.022077
		 -0.99790102 -0.035493001 0.010189 -0.999318 -0.091793999 -0.153973 -0.98380202 -0.091793999
		 -0.153973 -0.98380202 -0.181978 -0.016961001 -0.98315603 0.060874999 -0.022077 -0.99790102
		 -0.181978 -0.016961001 -0.98315603 -0.091793999 -0.153973 -0.98380202 -0.57780701
		 -0.26831299 -0.77080899 -0.57780701 -0.26831299 -0.77080899 -0.44579801 -0.23874
		 -0.86270899 -0.181978 -0.016961001 -0.98315603 -0.44579801 -0.23874 -0.86270899 -0.57780701
		 -0.26831299 -0.77080899 -0.83872199 -0.44429299 -0.314879 -0.18719999 0.196171 -0.96253502
		 -0.181978 -0.016961001 -0.98315603 -0.44579801 -0.23874 -0.86270899 -0.181978 -0.016961001
		 -0.98315603 -0.18719999 0.196171 -0.96253502 -0.15103801 0.25734401 -0.95444298 -0.15103801
		 0.25734401 -0.95444298 0.060874999 -0.022077 -0.99790102 -0.181978 -0.016961001 -0.98315603
		 0.060874999 -0.022077 -0.99790102 -0.15103801 0.25734401 -0.95444298 0.26025099 0.22221901
		 -0.93962097 -0.081644997 0.47347599 -0.87701499 0.26025099 0.22221901 -0.93962097
		 -0.15103801 0.25734401 -0.95444298 -0.15103801 0.25734401 -0.95444298 -0.18987399
		 0.75586998 -0.62658501 -0.081644997 0.47347599 -0.87701499 -0.18987399 0.75586998
		 -0.62658501 -0.15103801 0.25734401 -0.95444298 -0.18719999 0.196171 -0.96253502 -0.13270301
		 0.81311202 -0.56677902 -0.18987399 0.75586998 -0.62658501 -0.18719999 0.196171 -0.96253502
		 -0.18987399 0.75586998 -0.62658501 -0.13270301 0.81311202 -0.56677902 -0.036773998
		 0.99927402 -0.01001;
	setAttr ".n[3818:3983]" -type "float3"  -0.036773998 0.99927402 -0.01001 -0.38361901
		 0.915748 0.119344 -0.18987399 0.75586998 -0.62658501 -0.13270301 0.81311202 -0.56677902
		 -0.078689002 0.99664497 0.022521 -0.036773998 0.99927402 -0.01001 -0.078689002 0.99664497
		 0.022521 -0.13270301 0.81311202 -0.56677902 -0.19130901 0.667063 -0.72001898 -0.18719999
		 0.196171 -0.96253502 -0.19130901 0.667063 -0.72001898 -0.13270301 0.81311202 -0.56677902
		 -0.19130901 0.667063 -0.72001898 -0.12984601 0.980762 -0.145759 -0.078689002 0.99664497
		 0.022521 -0.18719999 0.196171 -0.96253502 -0.141415 0.217372 -0.96579099 -0.19130901
		 0.667063 -0.72001898 -0.141415 0.217372 -0.96579099 -0.18719999 0.196171 -0.96253502
		 -0.38817599 -0.44122201 -0.80909997 -0.44579801 -0.23874 -0.86270899 -0.38817599
		 -0.44122201 -0.80909997 -0.18719999 0.196171 -0.96253502 -0.38817599 -0.44122201
		 -0.80909997 -0.44579801 -0.23874 -0.86270899 -0.83872199 -0.44429299 -0.314879 -0.83872199
		 -0.44429299 -0.314879 -0.69741201 -0.71024001 -0.095789 -0.38817599 -0.44122201 -0.80909997
		 -0.69741201 -0.71024001 -0.095789 -0.83872199 -0.44429299 -0.314879 -0.94105202 -0.3096
		 0.13626701 -0.94105202 -0.3096 0.13626701 -0.63730502 -0.68883097 0.34547701 -0.69741201
		 -0.71024001 -0.095789 -0.63730502 -0.68883097 0.34547701 -0.94105202 -0.3096 0.13626701
		 -0.83160102 -0.13898499 0.53770101 -0.83160102 -0.13898499 0.53770101 -0.47263101
		 -0.215352 0.85454297 -0.63730502 -0.68883097 0.34547701 -0.47263101 -0.215352 0.85454297
		 -0.83160102 -0.13898499 0.53770101 -0.51178199 0.20871601 0.833377 -0.51178199 0.20871601
		 0.833377 -0.282785 0.194213 0.93931597 -0.47263101 -0.215352 0.85454297 -0.282785
		 0.194213 0.93931597 -0.51178199 0.20871601 0.833377 -0.43214199 0.47098801 0.769041
		 -0.43214199 0.47098801 0.769041 -0.160528 0.74299097 0.64976603 -0.282785 0.194213
		 0.93931597 -0.160528 0.74299097 0.64976603 -0.43214199 0.47098801 0.769041 -0.078689002
		 0.99664497 0.022521 -0.078689002 0.99664497 0.022521 -0.12984601 0.980762 -0.145759
		 -0.160528 0.74299097 0.64976603 -0.43214199 0.47098801 0.769041 -0.303406 0.75053102
		 0.58706802 -0.078689002 0.99664497 0.022521 -0.303406 0.75053102 0.58706802 -0.43214199
		 0.47098801 0.769041 -0.32867101 0.31298599 0.89107502 0.133862 0.98553598 0.103921
		 -0.078689002 0.99664497 0.022521 -0.303406 0.75053102 0.58706802 -0.078689002 0.99664497
		 0.022521 0.133862 0.98553598 0.103921 -0.036773998 0.99927402 -0.01001 -0.303406
		 0.75053102 0.58706802 -0.065247998 0.73432398 0.67565602 0.133862 0.98553598 0.103921
		 -0.065247998 0.73432398 0.67565602 -0.303406 0.75053102 0.58706802 -0.32867101 0.31298599
		 0.89107502 -0.027208 0.48532999 0.87390798 -0.065247998 0.73432398 0.67565602 -0.32867101
		 0.31298599 0.89107502 -0.065247998 0.73432398 0.67565602 -0.027208 0.48532999 0.87390798
		 0.36027801 0.77196401 0.52371001 -0.100455 0.90016198 0.42381299 -0.065247998 0.73432398
		 0.67565602 0.36027801 0.77196401 0.52371001 -0.065247998 0.73432398 0.67565602 -0.100455
		 0.90016198 0.42381299 0.133862 0.98553598 0.103921 -0.036773998 0.99927402 -0.01001
		 0.133862 0.98553598 0.103921 -0.100455 0.90016198 0.42381299 -0.38361901 0.915748
		 0.119344 -0.036773998 0.99927402 -0.01001 -0.100455 0.90016198 0.42381299 0.36027801
		 0.77196401 0.52371001 0.31524301 0.74534798 0.58743399 -0.100455 0.90016198 0.42381299
		 0.31524301 0.74534798 0.58743399 0.36027801 0.77196401 0.52371001 0 0.68795502 0.72575402
		 0.42641899 0.58074301 0.69347203 0 0.68795502 0.72575402 0.36027801 0.77196401 0.52371001
		 -0.027208 0.48532999 0.87390798 0.42641899 0.58074301 0.69347203 0.36027801 0.77196401
		 0.52371001 0.42641899 0.58074301 0.69347203 -0.027208 0.48532999 0.87390798 0 0.46966699
		 0.88284397 -0.93088698 0.063801996 -0.359694 -0.751194 0.118363 -0.64938301 0.14756399
		 -0.31198499 -0.93855798 -0.751194 0.118363 -0.64938301 0 0.072544999 -0.997365 0.27124101
		 -0.38282701 -0.88310301 0.14756399 -0.31198499 -0.93855798 -0.76198202 0.186526 0.62015498
		 -0.086684003 -0.103714 0.99082297 -0.80596697 0.16671699 0.56799799 -0.086684003
		 -0.103714 0.99082297 0 -0.21972901 0.97556102 -0.80596697 0.16671699 0.56799799 -0.76198202
		 0.186526 0.62015498 -0.80596697 0.16671699 0.56799799 -0.93088698 0.063801996 -0.359694
		 -0.80596697 0.16671699 0.56799799 -0.751194 0.118363 -0.64938301 -0.93088698 0.063801996
		 -0.359694 0.69241899 -0.44406 0.568654 0.92359197 -0.335998 -0.184614 0.81454903
		 -0.517941 -0.26124001 0.71648997 -0.66238499 0.218834 0 -0.21972901 0.97556102 -0.086684003
		 -0.103714 0.99082297 0.69241899 -0.44406 0.568654 0 -0.84424198 0.535963 0 -0.567689
		 0.82324302 -0.65208298 -0.142894 0.74456 -0.47445101 0.066462003 0.87776899 -0.68025702
		 -0.14624301 0.71823698 -0.68219298 -0.0064269998 0.73114401 1e-06 -0.39229199 0.91984099
		 0.70094103 -0.42382601 -0.57363099 0.14756399 -0.31198499 -0.93855798 0.27124101
		 -0.38282701 -0.88310301 0.81454903 -0.517941 -0.26124001 0.92359197 -0.335998 -0.184614
		 0.14756399 -0.31198499 -0.93855798 0.70094103 -0.42382601 -0.57363099 0 -0.84424198
		 0.535963 0.69241899 -0.44406 0.568654 0.71648997 -0.66238499 0.218834 0.320806 -0.193405
		 -0.92718798 0.99333298 -0.113859 -0.018023999 0.34134799 -0.939803 -0.015869999 0.34134799
		 -0.939803 -0.015869999 -0.14568201 -0.98930502 -0.0072989999 0.320806 -0.193405 -0.92718798
		 0.115873 0.025315 -0.99294102 0.320806 -0.193405 -0.92718798 -0.14568201 -0.98930502
		 -0.0072989999 -0.14568201 -0.98930502 -0.0072989999 0.34773201 -0.93677902 0.039081998
		 0.115873 0.025315 -0.99294102;
	setAttr ".n[3984:4149]" -type "float3"  0.11561 0.27460799 -0.95458102 0.115873
		 0.025315 -0.99294102 0.34773201 -0.93677902 0.039081998 0.34773201 -0.93677902 0.039081998
		 0.93453902 -0.35451099 0.030960999 0.11561 0.27460799 -0.95458102 0.93453902 -0.35451099
		 0.030960999 0.34773201 -0.93677902 0.039081998 0.63699001 -0.67191398 0.377857 0.58307201
		 0.81151497 -0.038348 0.99333298 -0.113859 -0.018023999 0.320806 -0.193405 -0.92718798
		 0.320806 -0.193405 -0.92718798 0.115873 0.025315 -0.99294102 0.58307201 0.81151497
		 -0.038348 0.168014 0.98576099 -0.0068199998 0.58307201 0.81151497 -0.038348 0.115873
		 0.025315 -0.99294102 0.115873 0.025315 -0.99294102 0.11561 0.27460799 -0.95458102
		 0.168014 0.98576099 -0.0068199998 -0.031534001 0.98642302 -0.161166 0.168014 0.98576099
		 -0.0068199998 0.11561 0.27460799 -0.95458102 0.11561 0.27460799 -0.95458102 -0.062685996
		 0.47266299 -0.87901098 -0.031534001 0.98642302 -0.161166 -0.062685996 0.47266299
		 -0.87901098 -0.069109 0.482649 -0.873083 -0.144417 0.98790801 0.056412999 -0.031534001
		 0.98642302 -0.161166 0.45252201 -0.89157403 0.017866001 0.55053902 -0.74626899 -0.37415099
		 0.86512899 -0.497291 0.065217003 -0.056788001 0.67466301 -0.73593801 0.206274 0.96641701
		 -0.15326101 0.088117003 0.98321599 0.15975299 -0.118923 0.95694202 0.264799 0.047214001
		 0.98477298 0.16731299 0.207506 0.36047199 -0.90939599 0.043535002 0.562415 -0.82570797
		 0.207506 0.36047199 -0.90939599 0.047214001 0.98477298 0.16731299 0.29845199 0.95089501
		 -0.082011998 0.29845199 0.95089501 -0.082011998 0.18836799 0.164951 -0.96814698 0.207506
		 0.36047199 -0.90939599 0.18836799 0.164951 -0.96814698 0.29845199 0.95089501 -0.082011998
		 0.664895 0.744017 0.065977998 0.664895 0.744017 0.065977998 0.406912 -0.25016499
		 -0.87854397 0.18836799 0.164951 -0.96814698 0.93853199 -0.34091899 0.054141998 0.406912
		 -0.25016499 -0.87854397 0.664895 0.744017 0.065977998 0.93453902 -0.35451099 0.030960999
		 0.45252201 -0.89157403 0.017866001 0.295591 -0.95480698 0.031153999 0.295591 -0.95480698
		 0.031153999 0.025983 0.247927 0.96842998 0.93453902 -0.35451099 0.030960999 0.101965
		 0.21529099 0.97121203 0.025983 0.247927 0.96842998 0.295591 -0.95480698 0.031153999
		 0.295591 -0.95480698 0.031153999 -0.092329003 -0.99520099 -0.032412 0.101965 0.21529099
		 0.97121203 0.27519301 -0.245773 0.929443 0.101965 0.21529099 0.97121203 -0.092329003
		 -0.99520099 -0.032412 -0.092329003 -0.99520099 -0.032412 0.27315199 -0.96142697 0.032347001
		 0.27519301 -0.245773 0.929443 0.93853199 -0.34091899 0.054141998 0.27519301 -0.245773
		 0.929443 0.27315199 -0.96142697 0.032347001 0.36184901 0.831294 0.42191899 -0.104469
		 0.43395099 0.89485902 -0.118923 0.95694202 0.264799 0.088117003 0.98321599 0.15975299
		 -0.164619 0.46193999 0.87150002 0.025983 0.247927 0.96842998 0.047214001 0.98477298
		 0.16731299 0.101965 0.21529099 0.97121203 0.047214001 0.98477298 0.16731299 0.025983
		 0.247927 0.96842998 0.29845199 0.95089501 -0.082011998 0.047214001 0.98477298 0.16731299
		 0.101965 0.21529099 0.97121203 0.101965 0.21529099 0.97121203 0.664895 0.744017 0.065977998
		 0.29845199 0.95089501 -0.082011998 0.664895 0.744017 0.065977998 0.101965 0.21529099
		 0.97121203 0.27519301 -0.245773 0.929443 0.27519301 -0.245773 0.929443 0.93853199
		 -0.34091899 0.054141998 0.664895 0.744017 0.065977998 0.21046001 -0.95050001 -0.228597
		 0.315907 0.453973 0.83313298 0.55053902 -0.74626899 -0.37415099 0.315907 0.453973
		 0.83313298 0.21046001 -0.95050001 -0.228597 -0.31395099 -0.82871401 0.463323 -0.31395099
		 -0.82871401 0.463323 0.320499 0.63332701 0.70439798 0.315907 0.453973 0.83313298
		 0.24779899 0.059278999 0.96699601 0.320499 0.63332701 0.70439798 -0.31395099 -0.82871401
		 0.463323 -0.31395099 -0.82871401 0.463323 -0.079832003 -0.928711 0.36210901 0.24779899
		 0.059278999 0.96699601 0.84924102 -0.46730301 0.245802 0.24779899 0.059278999 0.96699601
		 -0.079832003 -0.928711 0.36210901 0.27409199 -0.937163 -0.21586999 0.69741201 -0.71024001
		 -0.095789999 0.38817599 -0.441221 -0.80909997 0.38817599 -0.441221 -0.80909997 0.152272
		 -0.20163301 -0.96755201 0.27409199 -0.937163 -0.21586999 0.011982 -0.97205502 -0.23445
		 0.27409199 -0.937163 -0.21586999 0.152272 -0.20163301 -0.96755201 0.152272 -0.20163301
		 -0.96755201 0.38817599 -0.441221 -0.80909997 0.141415 0.217372 -0.96578997 0.011982
		 -0.97205502 -0.23445 0.152272 -0.20163301 -0.96755201 0.033473 -0.27749401 -0.96014398
		 0.033473 -0.27749401 -0.96014398 -0.137086 -0.98714298 -0.082191996 0.011982 -0.97205502
		 -0.23445 0.13078099 0.58180201 -0.80274701 0.033473 -0.27749401 -0.96014398 0.152272
		 -0.20163301 -0.96755201 0.152272 -0.20163301 -0.96755201 0.198147 0.66357797 -0.721389
		 0.13078099 0.58180201 -0.80274701 0.198147 0.66357797 -0.721389 0.152272 -0.20163301
		 -0.96755201 0.141415 0.217372 -0.96578997 0.141415 0.217372 -0.96578997 0.19130901
		 0.667063 -0.72001898 0.198147 0.66357797 -0.721389 0.12984601 0.980762 -0.14576 0.198147
		 0.66357797 -0.721389 0.19130901 0.667063 -0.72001898 0.29157299 0.94938201 0.116872
		 0.198147 0.66357797 -0.721389 0.12984601 0.980762 -0.14576 0.12984601 0.980762 -0.14576
		 0.160528 0.74299198 0.64976501 0.29157299 0.94938201 0.116872 0.198147 0.66357797
		 -0.721389 0.29157299 0.94938201 0.116872 0.209326 0.97449797 0.080842003 0.209326
		 0.97449797 0.080842003 0.13078099 0.58180201 -0.80274701 0.198147 0.66357797 -0.721389
		 0.22825401 0.54361898 0.80769902 0.209326 0.97449797 0.080842003 0.29157299 0.94938201
		 0.116872 0.29157299 0.94938201 0.116872;
	setAttr ".n[4150:4315]" -type "float3"  0.160528 0.74299198 0.64976501 0.22825401
		 0.54361898 0.80769902 0.282785 0.194213 0.93931597 0.22825401 0.54361898 0.80769902
		 0.160528 0.74299198 0.64976501 0.235782 -0.123067 0.96398199 0.22825401 0.54361898
		 0.80769902 0.282785 0.194213 0.93931597 0.282785 0.194213 0.93931597 0.47263101 -0.215352
		 0.85454297 0.235782 -0.123067 0.96398199 0.22825401 0.54361898 0.80769902 0.235782
		 -0.123067 0.96398199 0.16718 0.35961401 0.91800201 0.16718 0.35961401 0.91800201
		 0.209326 0.97449797 0.080842003 0.22825401 0.54361898 0.80769902 0.209326 0.97449797
		 0.080842003 0.16718 0.35961401 0.91800201 0.072849996 0.56879598 0.81924599 0.072849996
		 0.56879598 0.81924599 0.13522799 0.97332603 -0.185339 0.209326 0.97449797 0.080842003
		 0.13078099 0.58180201 -0.80274701 0.209326 0.97449797 0.080842003 0.13522799 0.97332603
		 -0.185339 0.13522799 0.97332603 -0.185339 0.075618997 0.59594899 -0.79945397 0.13078099
		 0.58180201 -0.80274701 0.033473 -0.27749401 -0.96014398 0.13078099 0.58180201 -0.80274701
		 0.075618997 0.59594899 -0.79945397 0.075618997 0.59594899 -0.79945397 -0.061020002
		 -0.160327 -0.98517603 0.033473 -0.27749401 -0.96014398 -0.137086 -0.98714298 -0.082191996
		 0.033473 -0.27749401 -0.96014398 -0.061020002 -0.160327 -0.98517603 -0.061020002
		 -0.160327 -0.98517603 0.0062569999 -0.28834501 -0.957506 -0.137086 -0.98714298 -0.082191996
		 -0.036384001 -0.982669 -0.18176299 -0.137086 -0.98714298 -0.082191996 0.0062569999
		 -0.28834501 -0.957506 -0.055571001 0.62477702 -0.77882302 0.0062569999 -0.28834501
		 -0.957506 -0.061020002 -0.160327 -0.98517603 -0.061020002 -0.160327 -0.98517603 0.075618997
		 0.59594899 -0.79945397 -0.055571001 0.62477702 -0.77882302 -0.055826001 0.99754798
		 0.042218 -0.055571001 0.62477702 -0.77882302 0.075618997 0.59594899 -0.79945397 0.075618997
		 0.59594899 -0.79945397 0.13522799 0.97332603 -0.185339 -0.055826001 0.99754798 0.042218
		 0.072849996 0.56879598 0.81924599 -0.055826001 0.99754798 0.042218 0.13522799 0.97332603
		 -0.185339 -0.054008 0.54243702 0.838359 -0.055826001 0.99754798 0.042218 0.072849996
		 0.56879598 0.81924599 0.072849996 0.56879598 0.81924599 -0.027922001 -0.29504299
		 0.95507598 -0.054008 0.54243702 0.838359 0.046840001 -0.545187 0.83700502 -0.027922001
		 -0.29504299 0.95507598 0.072849996 0.56879598 0.81924599 0.072849996 0.56879598 0.81924599
		 0.16718 0.35961401 0.91800201 0.046840001 -0.545187 0.83700502 0.235782 -0.123067
		 0.96398199 0.046840001 -0.545187 0.83700502 0.16718 0.35961401 0.91800201 0.22791199
		 -0.77554399 0.58871698 0.046840001 -0.545187 0.83700502 0.235782 -0.123067 0.96398199
		 0.235782 -0.123067 0.96398199 0.47263101 -0.215352 0.85454297 0.22791199 -0.77554399
		 0.58871698 0.63730502 -0.68883097 0.345476 0.22791199 -0.77554399 0.58871698 0.47263101
		 -0.215352 0.85454297 0.27409199 -0.937163 -0.21586999 0.22791199 -0.77554399 0.58871698
		 0.63730502 -0.68883097 0.345476 0.63730502 -0.68883097 0.345476 0.69741201 -0.71024001
		 -0.095789999 0.27409199 -0.937163 -0.21586999 0.22791199 -0.77554399 0.58871698 0.27409199
		 -0.937163 -0.21586999 0.011982 -0.97205502 -0.23445 0.011982 -0.97205502 -0.23445
		 0.046840001 -0.545187 0.83700502 0.22791199 -0.77554399 0.58871698 0.046840001 -0.545187
		 0.83700502 0.011982 -0.97205502 -0.23445 -0.137086 -0.98714298 -0.082191996 -0.137086
		 -0.98714298 -0.082191996 -0.027922001 -0.29504299 0.95507598 0.046840001 -0.545187
		 0.83700502 -0.110376 -0.57465601 0.81091797 -0.027922001 -0.29504299 0.95507598 -0.137086
		 -0.98714298 -0.082191996 -0.137086 -0.98714298 -0.082191996 -0.036384001 -0.982669
		 -0.18176299 -0.110376 -0.57465601 0.81091797 -0.027922001 -0.29504299 0.95507598
		 -0.110376 -0.57465601 0.81091797 -0.17525201 0.52677 0.83174503 -0.17525201 0.52677
		 0.83174503 -0.054008 0.54243702 0.838359 -0.027922001 -0.29504299 0.95507598 -0.055826001
		 0.99754798 0.042218 -0.054008 0.54243702 0.838359 -0.17525201 0.52677 0.83174503
		 -0.17525201 0.52677 0.83174503 -0.113152 0.98908699 -0.094359003 -0.055826001 0.99754798
		 0.042218 0.024288001 0.68996 -0.72343999 -0.055826001 0.99754798 0.042218 -0.113152
		 0.98908699 -0.094359003 -0.055571001 0.62477702 -0.77882302 -0.055826001 0.99754798
		 0.042218 0.024288001 0.68996 -0.72343999 0.024288001 0.68996 -0.72343999 0.0062569999
		 -0.28834501 -0.957506 -0.055571001 0.62477702 -0.77882302 0.0062569999 -0.28834501
		 -0.957506 0.024288001 0.68996 -0.72343999 0.17240401 -0.359678 -0.91701102 0.17240401
		 -0.359678 -0.91701102 -0.036384001 -0.982669 -0.18176299 0.0062569999 -0.28834501
		 -0.957506 0.120578 -0.98629397 0.112625 -0.036384001 -0.982669 -0.18176299 0.17240401
		 -0.359678 -0.91701102 0.17240401 -0.359678 -0.91701102 0.14387999 -0.98574901 -0.087162003
		 0.120578 -0.98629397 0.112625 0.14387999 -0.98574901 -0.087162003 0.17240401 -0.359678
		 -0.91701102 0.047573 -0.38447201 -0.92190999 0.047573 -0.38447201 -0.92190999 0.088273004
		 -0.99543703 -0.036242999 0.14387999 -0.98574901 -0.087162003 0.033767 0.574076 -0.81810498
		 0.047573 -0.38447201 -0.92190999 0.17240401 -0.359678 -0.91701102 0.17240401 -0.359678
		 -0.91701102 0.024288001 0.68996 -0.72343999 0.033767 0.574076 -0.81810498 -0.113152
		 0.98908699 -0.094359003 0.033767 0.574076 -0.81810498 0.024288001 0.68996 -0.72343999
		 -0.103493 0.990807 -0.087127998 0.033767 0.574076 -0.81810498 -0.113152 0.98908699
		 -0.094359003 -0.113152 0.98908699 -0.094359003 -0.17525201 0.52677 0.83174503 -0.103493
		 0.990807 -0.087127998 0.033767 0.574076 -0.81810498 -0.103493 0.990807 -0.087127998
		 0.0057219998 0.543262 -0.839544 0.0057219998 0.543262 -0.839544 0.047573 -0.38447201
		 -0.92190999;
	setAttr ".n[4316:4481]" -type "float3"  0.033767 0.574076 -0.81810498 0.047573
		 -0.38447201 -0.92190999 0.0057219998 0.543262 -0.839544 0.053286999 -0.421413 -0.90530199
		 0.053286999 -0.421413 -0.90530199 0.088273004 -0.99543703 -0.036242999 0.047573 -0.38447201
		 -0.92190999 -0.066275001 -0.99354899 -0.092026003 0.088273004 -0.99543703 -0.036242999
		 0.053286999 -0.421413 -0.90530199 0.053286999 -0.421413 -0.90530199 -0.078785002
		 -0.273011 -0.95877999 -0.066275001 -0.99354899 -0.092026003 0.029805001 0.61825597
		 -0.785411 -0.078785002 -0.273011 -0.95877999 0.053286999 -0.421413 -0.90530199 0.053286999
		 -0.421413 -0.90530199 0.0057219998 0.543262 -0.839544 0.029805001 0.61825597 -0.785411
		 -0.119972 0.65315199 -0.74766201 -0.078785002 -0.273011 -0.95877999 0.029805001 0.61825597
		 -0.785411 0.043196999 0.998873 0.019656001 0.029805001 0.61825597 -0.785411 0.0057219998
		 0.543262 -0.839544 0.0057219998 0.543262 -0.839544 -0.103493 0.990807 -0.087127998
		 0.043196999 0.998873 0.019656001 -0.088397004 0.51812398 0.850725 0.043196999 0.998873
		 0.019656001 -0.103493 0.990807 -0.087127998 -0.103493 0.990807 -0.087127998 -0.17525201
		 0.52677 0.83174503 -0.088397004 0.51812398 0.850725 -0.063469 -0.484918 0.87225401
		 -0.088397004 0.51812398 0.850725 -0.17525201 0.52677 0.83174503 -0.17525201 0.52677
		 0.83174503 -0.110376 -0.57465601 0.81091797 -0.063469 -0.484918 0.87225401 0.120578
		 -0.98629397 0.112625 -0.063469 -0.484918 0.87225401 -0.110376 -0.57465601 0.81091797
		 -0.110376 -0.57465601 0.81091797 -0.036384001 -0.982669 -0.18176299 0.120578 -0.98629397
		 0.112625 -0.063469 -0.484918 0.87225401 0.120578 -0.98629397 0.112625 0.14387999
		 -0.98574901 -0.087162003 0.14387999 -0.98574901 -0.087162003 0.025163 -0.531389 0.84675401
		 -0.063469 -0.484918 0.87225401 -0.088397004 0.51812398 0.850725 -0.063469 -0.484918
		 0.87225401 0.025163 -0.531389 0.84675401 0.088273004 -0.99543703 -0.036242999 0.025163
		 -0.531389 0.84675401 0.14387999 -0.98574901 -0.087162003 -0.088397004 0.51812398
		 0.850725 0.025163 -0.531389 0.84675401 0.045600999 0.460695 0.88638598 0.045600999
		 0.460695 0.88638598 0.043196999 0.998873 0.019656001 -0.088397004 0.51812398 0.850725
		 0.063749 -0.48574901 0.87177098 0.045600999 0.460695 0.88638598 0.025163 -0.531389
		 0.84675401 0.025163 -0.531389 0.84675401 0.088273004 -0.99543703 -0.036242999 0.063749
		 -0.48574901 0.87177098 -0.066275001 -0.99354899 -0.092026003 0.063749 -0.48574901
		 0.87177098 0.088273004 -0.99543703 -0.036242999 0.063749 -0.48574901 0.87177098 -0.066275001
		 -0.99354899 -0.092026003 -0.16698501 -0.438384 0.88313901 -0.16698501 -0.438384 0.88313901
		 0.042422 0.61493301 0.78743798 0.063749 -0.48574901 0.87177098 0.045600999 0.460695
		 0.88638598 0.063749 -0.48574901 0.87177098 0.042422 0.61493301 0.78743798 0.042422
		 0.61493301 0.78743798 0.043196999 0.998873 0.019656001 0.045600999 0.460695 0.88638598
		 0.043196999 0.998873 0.019656001 0.042422 0.61493301 0.78743798 0.048994999 0.99832898
		 0.030648001 0.048994999 0.99832898 0.030648001 0.029805001 0.61825597 -0.785411 0.043196999
		 0.998873 0.019656001 -0.119972 0.65315199 -0.74766201 0.029805001 0.61825597 -0.785411
		 0.048994999 0.99832898 0.030648001 0.048994999 0.99832898 0.030648001 -0.039698001
		 0.99682999 0.068942003 -0.119972 0.65315199 -0.74766201 -0.038543999 0.63176203 0.774203
		 -0.039698001 0.99682999 0.068942003 0.048994999 0.99832898 0.030648001 0.048994999
		 0.99832898 0.030648001 0.042422 0.61493301 0.78743798 -0.038543999 0.63176203 0.774203
		 -0.16698501 -0.438384 0.88313901 -0.038543999 0.63176203 0.774203 0.042422 0.61493301
		 0.78743798 0.16967601 0.94708103 0.272484 0.27054599 0.69719499 -0.66386998 0.45524099
		 0.88599598 -0.088128999 0.088117003 0.98321599 0.15975299 0.069372997 0.99755299
		 0.0087299999 0.16967601 0.94708103 0.272484 0.45524099 0.88599598 -0.088128999 0.101771
		 0.993505 -0.050905999 0.069372997 0.99755299 0.0087299999 0.088117003 0.98321599
		 0.15975299 0.27388 0.93377203 0.230349 0.088117003 0.98321599 0.15975299 0.206274
		 0.96641701 -0.15326101 0.27388 0.93377203 0.230349 0.318483 0.686414 0.65376198 0.081462003
		 0.47805101 0.87454599 0.0044559999 0.99722803 0.074276999 0.101771 0.993505 -0.050905999
		 0.085881002 0.40869799 0.90862 0.060676999 0.083861001 0.99462801 0.113111 0.99265403
		 0.042941999 0.29552299 0.95533502 -0.00088499999 0.113111 0.99265403 0.042941999
		 0.060676999 0.083861001 0.99462801 0.060676999 0.083861001 0.99462801 0.053911999
		 0.287485 0.956267 0.29552299 0.95533502 -0.00088499999 0.89478701 0.43832499 0.085017003
		 0.29552299 0.95533502 -0.00088499999 0.053911999 0.287485 0.956267 0.053911999 0.287485
		 0.956267 -0.001742 -0.30857301 0.951199 0.89478701 0.43832499 0.085017003 0.56806898
		 -0.81125098 0.13845199 0.89478701 0.43832499 0.085017003 -0.001742 -0.30857301 0.951199
		 0.89478701 0.43832499 0.085017003 0.56806898 -0.81125098 0.13845199 0.25902501 -0.438878
		 -0.860403 0.25902501 -0.438878 -0.860403 0.32459399 -0.027965 -0.94543999 0.89478701
		 0.43832499 0.085017003 0.29552299 0.95533502 -0.00088499999 0.89478701 0.43832499
		 0.085017003 0.32459399 -0.027965 -0.94543999 0.32459399 -0.027965 -0.94543999 0.16339099
		 0.17744701 -0.97047198 0.29552299 0.95533502 -0.00088499999 0.113111 0.99265403 0.042941999
		 0.29552299 0.95533502 -0.00088499999 0.16339099 0.17744701 -0.97047198 0.16339099
		 0.17744701 -0.97047198 -0.055305 0.429804 -0.901227 0.113111 0.99265403 0.042941999
		 0.101771 0.993505 -0.050905999 0.0044559999 0.99722803 0.074276999 -0.11653 0.53304601
		 -0.83802301 0.30234101 0.81044102 -0.50177199 0.30234101 0.81044102 -0.50177199 0.28589901
		 0.95465797 -0.083003998;
	setAttr ".n[4482:4647]" -type "float3"  0.101771 0.993505 -0.050905999 0.0092909997
		 0.781663 -0.62363201 0.101771 0.993505 -0.050905999 0.28589901 0.95465797 -0.083003998
		 0.015690001 0.82176602 -0.56961 0.069372997 0.99755299 0.0087299999 0.101771 0.993505
		 -0.050905999 0.0092909997 0.781663 -0.62363201 -0.059052002 0.210041 -0.97590798
		 0.0092909997 0.781663 -0.62363201 0.015690001 0.82176602 -0.56961 -0.010749 0.55684501
		 -0.83054698 0.069372997 0.99755299 0.0087299999 0.0092909997 0.781663 -0.62363201
		 0.0092909997 0.781663 -0.62363201 -0.17078701 -0.45574301 -0.87357301 -0.010749 0.55684501
		 -0.83054698 -0.059052002 0.210041 -0.97590798 -0.17078701 -0.45574301 -0.87357301
		 0.0092909997 0.781663 -0.62363201 -0.010749 0.55684501 -0.83054698 -0.17078701 -0.45574301
		 -0.87357301 -0.303987 -0.32794401 -0.89445198 -0.303987 -0.32794401 -0.89445198 -0.142344
		 0.73717898 -0.66053498 -0.010749 0.55684501 -0.83054698 0.069372997 0.99755299 0.0087299999
		 -0.010749 0.55684501 -0.83054698 -0.142344 0.73717898 -0.66053498 -0.142344 0.73717898
		 -0.66053498 -0.039698001 0.99682999 0.068942003 0.069372997 0.99755299 0.0087299999
		 -0.119972 0.65315199 -0.74766201 -0.039698001 0.99682999 0.068942003 -0.142344 0.73717898
		 -0.66053498 -0.142344 0.73717898 -0.66053498 -0.303987 -0.32794401 -0.89445198 -0.119972
		 0.65315199 -0.74766201 -0.078785002 -0.273011 -0.95877999 -0.119972 0.65315199 -0.74766201
		 -0.303987 -0.32794401 -0.89445198 -0.303987 -0.32794401 -0.89445198 -0.066275001
		 -0.99354899 -0.092026003 -0.078785002 -0.273011 -0.95877999 -0.269375 -0.95896697
		 -0.088423997 -0.066275001 -0.99354899 -0.092026003 -0.303987 -0.32794401 -0.89445198
		 -0.303987 -0.32794401 -0.89445198 -0.17078701 -0.45574301 -0.87357301 -0.269375 -0.95896697
		 -0.088423997 -0.16698501 -0.438384 0.88313901 -0.066275001 -0.99354899 -0.092026003
		 -0.269375 -0.95896697 -0.088423997 -0.269375 -0.95896697 -0.088423997 -0.43314999
		 -0.30238801 0.84908301 -0.16698501 -0.438384 0.88313901 -0.43314999 -0.30238801 0.84908301
		 -0.269375 -0.95896697 -0.088423997 -0.35598201 -0.82956398 0.43023199 -0.35598201
		 -0.82956398 0.43023199 -0.32864901 -0.069861002 0.94186503 -0.43314999 -0.30238801
		 0.84908301 -0.057016 -0.99410301 -0.092242002 -0.32864901 -0.069861002 0.94186503
		 -0.35598201 -0.82956398 0.43023199 -0.35598201 -0.82956398 0.43023199 0.087517001
		 -0.86759299 -0.48951301 -0.057016 -0.99410301 -0.092242002 0.087517001 -0.86759299
		 -0.48951301 -0.35598201 -0.82956398 0.43023199 -0.269375 -0.95896697 -0.088423997
		 -0.269375 -0.95896697 -0.088423997 0.051405001 -0.95824301 -0.281299 0.087517001
		 -0.86759299 -0.48951301 0.051405001 -0.95824301 -0.281299 -0.269375 -0.95896697 -0.088423997
		 -0.17078701 -0.45574301 -0.87357301 -0.17078701 -0.45574301 -0.87357301 -0.0030700001
		 -0.77127802 -0.636491 0.051405001 -0.95824301 -0.281299 -0.0030700001 -0.77127802
		 -0.636491 -0.17078701 -0.45574301 -0.87357301 -0.059052002 0.210041 -0.97590798 -0.059052002
		 0.210041 -0.97590798 0.097952001 -0.74495101 -0.65988898 -0.0030700001 -0.77127802
		 -0.636491 0.051405001 -0.95824301 -0.281299 -0.0030700001 -0.77127802 -0.636491 0.097952001
		 -0.74495101 -0.65988898 0.102724 -0.026353 -0.99436098 0.097952001 -0.74495101 -0.65988898
		 -0.059052002 0.210041 -0.97590798 -0.059052002 0.210041 -0.97590798 0.015690001 0.82176602
		 -0.56961 0.102724 -0.026353 -0.99436098 -0.024649 -0.096741997 -0.995004 0.102724
		 -0.026353 -0.99436098 0.015690001 0.82176602 -0.56961 0.102724 -0.026353 -0.99436098
		 -0.024649 -0.096741997 -0.995004 0.55053902 -0.74626899 -0.37415099 0.55053902 -0.74626899
		 -0.37415099 0.097952001 -0.74495101 -0.65988898 0.102724 -0.026353 -0.99436098 0.21046001
		 -0.95050001 -0.228597 0.55053902 -0.74626899 -0.37415099 -0.024649 -0.096741997 -0.995004
		 0.55053902 -0.74626899 -0.37415099 0.45252201 -0.89157403 0.017866001 0.097952001
		 -0.74495101 -0.65988898 0.051405001 -0.95824301 -0.281299 0.097952001 -0.74495101
		 -0.65988898 0.45252201 -0.89157403 0.017866001 0.45252201 -0.89157403 0.017866001
		 0.58274603 -0.788908 -0.195016 0.051405001 -0.95824301 -0.281299 0.087517001 -0.86759299
		 -0.48951301 0.051405001 -0.95824301 -0.281299 0.58274603 -0.788908 -0.195016 0.58274603
		 -0.788908 -0.195016 0.532691 -0.487645 -0.69169497 0.087517001 -0.86759299 -0.48951301
		 -0.057016 -0.99410301 -0.092242002 0.087517001 -0.86759299 -0.48951301 0.532691 -0.487645
		 -0.69169497 0.532691 -0.487645 -0.69169497 0.60529602 0.041379999 -0.79492497 -0.057016
		 -0.99410301 -0.092242002 -0.369762 -0.91137803 -0.18073501 -0.057016 -0.99410301
		 -0.092242002 0.60529602 0.041379999 -0.79492497 0.60529602 0.041379999 -0.79492497
		 0.062752001 -0.88028002 -0.47028601 -0.369762 -0.91137803 -0.18073501 0.062752001
		 -0.88028002 -0.47028601 0.60529602 0.041379999 -0.79492497 0.73036999 0.27656901
		 -0.62455499 0.73036999 0.27656901 -0.62455499 0.40842199 -0.91279298 0.000971 0.062752001
		 -0.88028002 -0.47028601 0.98916 -0.015685 0.14600199 0.40842199 -0.91279298 0.000971
		 0.73036999 0.27656901 -0.62455499 0.73036999 0.27656901 -0.62455499 0.31969899 0.75289202
		 0.575279 0.98916 -0.015685 0.14600199 0.16326299 0.95838302 0.23419499 0.31969899
		 0.75289202 0.575279 0.73036999 0.27656901 -0.62455499 0.73036999 0.27656901 -0.62455499
		 0.60529602 0.041379999 -0.79492497 0.16326299 0.95838302 0.23419499 0.230831 0.80545902
		 0.54584998 0.16326299 0.95838302 0.23419499 0.60529602 0.041379999 -0.79492497 0.60529602
		 0.041379999 -0.79492497 0.95756501 0.174096 -0.229693 0.230831 0.80545902 0.54584998
		 0.95756501 0.174096 -0.229693 0.60529602 0.041379999 -0.79492497 0.532691 -0.487645
		 -0.69169497 0.532691 -0.487645 -0.69169497 0.58274603 -0.788908 -0.195016 0.95756501
		 0.174096 -0.229693 0.70144099 0.013441 0.71260101 0.95756501 0.174096 -0.229693;
	setAttr ".n[4648:4813]" -type "float3"  0.58274603 -0.788908 -0.195016 0.58274603
		 -0.788908 -0.195016 0.63699001 -0.67191398 0.377857 0.70144099 0.013441 0.71260101
		 0.45252201 -0.89157403 0.017866001 0.63699001 -0.67191398 0.377857 0.58274603 -0.788908
		 -0.195016 0.34977299 0.097162001 0.93178201 0.70144099 0.013441 0.71260101 0.63699001
		 -0.67191398 0.377857 0.63699001 -0.67191398 0.377857 0.34773201 -0.93677902 0.039081998
		 0.34977299 0.097162001 0.93178201 0.051231001 0.31823701 0.94662601 0.34977299 0.097162001
		 0.93178201 0.34773201 -0.93677902 0.039081998 0.34773201 -0.93677902 0.039081998
		 0.085951 0.043325 0.99535698 0.051231001 0.31823701 0.94662601 0.085951 0.043325
		 0.99535698 0.34773201 -0.93677902 0.039081998 -0.14568201 -0.98930502 -0.0072989999
		 -0.14568201 -0.98930502 -0.0072989999 0.33667299 -0.157818 0.92830199 0.085951 0.043325
		 0.99535698 0.33667299 -0.157818 0.92830199 -0.14568201 -0.98930502 -0.0072989999
		 0.34134799 -0.939803 -0.015869999 0.34134799 -0.939803 -0.015869999 0.99333298 -0.113859
		 -0.018023999 0.33667299 -0.157818 0.92830199 -0.038543999 0.63176203 0.774203 -0.16698501
		 -0.438384 0.88313901 -0.43314999 -0.30238801 0.84908301 -0.43314999 -0.30238801 0.84908301
		 -0.118418 0.70204902 0.702214 -0.038543999 0.63176203 0.774203 -0.039698001 0.99682999
		 0.068942003 -0.038543999 0.63176203 0.774203 -0.118418 0.70204902 0.702214 -0.32864901
		 -0.069861002 0.94186503 -0.118418 0.70204902 0.702214 -0.43314999 -0.30238801 0.84908301
		 0.069372997 0.99755299 0.0087299999 -0.039698001 0.99682999 0.068942003 -0.118418
		 0.70204902 0.702214 -0.118418 0.70204902 0.702214 0.231095 0.71555603 0.65922201
		 0.069372997 0.99755299 0.0087299999 0.16967601 0.94708103 0.272484 0.069372997 0.99755299
		 0.0087299999 0.231095 0.71555603 0.65922201 0.15065999 0.60565698 0.78133303 0.231095
		 0.71555603 0.65922201 -0.118418 0.70204902 0.702214 -0.118418 0.70204902 0.702214
		 -0.32864901 -0.069861002 0.94186503 0.15065999 0.60565698 0.78133303 -0.37310699
		 -0.083062999 0.92406303 0.15065999 0.60565698 0.78133303 -0.32864901 -0.069861002
		 0.94186503 -0.32864901 -0.069861002 0.94186503 -0.057016 -0.99410301 -0.092242002
		 -0.37310699 -0.083062999 0.92406303 -0.369762 -0.91137803 -0.18073501 -0.37310699
		 -0.083062999 0.92406303 -0.057016 -0.99410301 -0.092242002 -0.60730797 -0.28441501
		 0.74181199 -0.37310699 -0.083062999 0.92406303 -0.369762 -0.91137803 -0.18073501
		 -0.369762 -0.91137803 -0.18073501 -0.55426198 -0.26306 0.78967899 -0.60730797 -0.28441501
		 0.74181199 -0.55426198 -0.26306 0.78967899 -0.369762 -0.91137803 -0.18073501 0.062752001
		 -0.88028002 -0.47028601 0.062752001 -0.88028002 -0.47028601 0.40842199 -0.91279298
		 0.000971 -0.55426198 -0.26306 0.78967899 0.261877 -0.37575099 0.88894999 -0.55426198
		 -0.26306 0.78967899 0.40842199 -0.91279298 0.000971 0.40842199 -0.91279298 0.000971
		 0.98916 -0.015685 0.14600199 0.261877 -0.37575099 0.88894999 0.31969899 0.75289202
		 0.575279 -0.55426198 -0.26306 0.78967899 0.261877 -0.37575099 0.88894999 0.261877
		 -0.37575099 0.88894999 0.98916 -0.015685 0.14600199 0.31969899 0.75289202 0.575279
		 -0.55426198 -0.26306 0.78967899 0.31969899 0.75289202 0.575279 0.16326299 0.95838302
		 0.23419499 0.16326299 0.95838302 0.23419499 0.230831 0.80545902 0.54584998 -0.55426198
		 -0.26306 0.78967899 -0.60730797 -0.28441501 0.74181199 -0.55426198 -0.26306 0.78967899
		 0.230831 0.80545902 0.54584998 0.230831 0.80545902 0.54584998 -0.37310699 -0.083062999
		 0.92406303 -0.60730797 -0.28441501 0.74181199 -0.37310699 -0.083062999 0.92406303
		 0.230831 0.80545902 0.54584998 0.509579 0.614645 0.60211402 0.509579 0.614645 0.60211402
		 0.15065999 0.60565698 0.78133303 -0.37310699 -0.083062999 0.92406303 0.15065999 0.60565698
		 0.78133303 0.509579 0.614645 0.60211402 0.70144099 0.013441 0.71260101 0.70144099
		 0.013441 0.71260101 0.231095 0.71555603 0.65922201 0.15065999 0.60565698 0.78133303
		 0.231095 0.71555603 0.65922201 0.70144099 0.013441 0.71260101 0.34977299 0.097162001
		 0.93178201 0.34977299 0.097162001 0.93178201 0.16967601 0.94708103 0.272484 0.231095
		 0.71555603 0.65922201 -0.114899 0.62602103 0.77129501 0.34977299 0.097162001 0.93178201
		 0.051231001 0.31823701 0.94662601 0.051231001 0.31823701 0.94662601 -0.031534001
		 0.98642302 -0.161166 -0.144417 0.98790801 0.056412999 -0.114899 0.62602103 0.77129501
		 0.168014 0.98576099 -0.0068199998 -0.031534001 0.98642302 -0.161166 0.051231001 0.31823701
		 0.94662601 0.051231001 0.31823701 0.94662601 0.085951 0.043325 0.99535698 0.168014
		 0.98576099 -0.0068199998 0.58307201 0.81151497 -0.038348 0.168014 0.98576099 -0.0068199998
		 0.085951 0.043325 0.99535698 0.085951 0.043325 0.99535698 0.33667299 -0.157818 0.92830199
		 0.58307201 0.81151497 -0.038348 0.99333298 -0.113859 -0.018023999 0.58307201 0.81151497
		 -0.038348 0.33667299 -0.157818 0.92830199 0.509579 0.614645 0.60211402 0.230831 0.80545902
		 0.54584998 0.95756501 0.174096 -0.229693 0.95756501 0.174096 -0.229693 0.70144099
		 0.013441 0.71260101 0.509579 0.614645 0.60211402 0.29870501 -0.53053701 -0.79328799
		 0.84924102 -0.46730301 0.245802 -0.079832003 -0.928711 0.36210901 -0.079832003 -0.928711
		 0.36210901 -0.31395099 -0.82871401 0.463323 0.29870501 -0.53053701 -0.79328799 0.172791
		 -0.17341 -0.96957302 0.29870501 -0.53053701 -0.79328799 -0.31395099 -0.82871401 0.463323
		 -0.31395099 -0.82871401 0.463323 0.21046001 -0.95050001 -0.228597 0.172791 -0.17341
		 -0.96957302 0.29870501 -0.53053701 -0.79328799 0.172791 -0.17341 -0.96957302 0.75120503
		 0.58994001 -0.296076 0.75120503 0.58994001 -0.296076 0.84924102 -0.46730301 0.245802;
	setAttr ".n[4814:4979]" -type "float3"  0.29870501 -0.53053701 -0.79328799 0.24779899
		 0.059278999 0.96699601 0.84924102 -0.46730301 0.245802 0.75120503 0.58994001 -0.296076
		 0.75120503 0.58994001 -0.296076 0.320499 0.63332701 0.70439798 0.24779899 0.059278999
		 0.96699601 0.39862201 0.80761898 -0.434571 0.320499 0.63332701 0.70439798 0.75120503
		 0.58994001 -0.296076 0.75120503 0.58994001 -0.296076 0.172791 -0.17341 -0.96957302
		 0.39862201 0.80761898 -0.434571 0.315907 0.453973 0.83313298 0.320499 0.63332701
		 0.70439798 0.39862201 0.80761898 -0.434571 0.065877996 0.067313999 -0.99555498 0.39862201
		 0.80761898 -0.434571 0.172791 -0.17341 -0.96957302 0.172791 -0.17341 -0.96957302
		 0.21046001 -0.95050001 -0.228597 0.065877996 0.067313999 -0.99555498 -0.024649 -0.096741997
		 -0.995004 0.065877996 0.067313999 -0.99555498 0.21046001 -0.95050001 -0.228597 0.065877996
		 0.067313999 -0.99555498 -0.024649 -0.096741997 -0.995004 0.097921997 0.82103401 -0.562419
		 0.097921997 0.82103401 -0.562419 0.39862201 0.80761898 -0.434571 0.065877996 0.067313999
		 -0.99555498 0.315907 0.453973 0.83313298 0.39862201 0.80761898 -0.434571 0.097921997
		 0.82103401 -0.562419 0.097921997 0.82103401 -0.562419 0.073182002 0.76575601 0.63895398
		 0.315907 0.453973 0.83313298 0.015690001 0.82176602 -0.56961 0.303312 0.91871297
		 0.252918 0.044491999 0.81601501 0.576316 -0.048269998 0.76969498 -0.63658398 -0.048269998
		 0.76969498 -0.63658398 -0.024649 -0.096741997 -0.995004 0.015690001 0.82176602 -0.56961
		 0.295591 -0.95480698 0.031153999 0.45252201 -0.89157403 0.017866001 0.86512899 -0.497291
		 0.065217003 0.86512899 -0.497291 0.065217003 0.207506 0.36047199 -0.90939599 0.295591
		 -0.95480698 0.031153999 0.18836799 0.164951 -0.96814698 0.295591 -0.95480698 0.031153999
		 0.207506 0.36047199 -0.90939599 -0.092329003 -0.99520099 -0.032412 0.295591 -0.95480698
		 0.031153999 0.18836799 0.164951 -0.96814698 0.18836799 0.164951 -0.96814698 0.406912
		 -0.25016499 -0.87854397 -0.092329003 -0.99520099 -0.032412 0.27315199 -0.96142697
		 0.032347001 -0.092329003 -0.99520099 -0.032412 0.406912 -0.25016499 -0.87854397 0.406912
		 -0.25016499 -0.87854397 0.93853199 -0.34091899 0.054141998 0.27315199 -0.96142697
		 0.032347001 0.25902501 -0.438878 -0.860403 0.56806898 -0.81125098 0.13845199 -0.366357
		 -0.93047303 0.001846 -0.366357 -0.93047303 0.001846 -0.31414601 -0.93246299 0.178399
		 0.25902501 -0.438878 -0.860403 0.32459399 -0.027965 -0.94543999 0.25902501 -0.438878
		 -0.860403 -0.31414601 -0.93246299 0.178399 -0.31414601 -0.93246299 0.178399 0.27845201
		 -0.957349 -0.077124 0.32459399 -0.027965 -0.94543999 0.16339099 0.17744701 -0.97047198
		 0.32459399 -0.027965 -0.94543999 0.27845201 -0.957349 -0.077124 0.27845201 -0.957349
		 -0.077124 0.55053902 -0.74626899 -0.37415099 0.16339099 0.17744701 -0.97047198 -0.366357
		 -0.93047303 0.001846 0.56806898 -0.81125098 0.13845199 -0.001742 -0.30857301 0.951199
		 -0.001742 -0.30857301 0.951199 -0.31414601 -0.93246299 0.178399 -0.366357 -0.93047303
		 0.001846 -0.31414601 -0.93246299 0.178399 -0.001742 -0.30857301 0.951199 0.053911999
		 0.287485 0.956267 0.053911999 0.287485 0.956267 0.060676999 0.083861001 0.99462801
		 -0.31414601 -0.93246299 0.178399 0.27845201 -0.957349 -0.077124 -0.31414601 -0.93246299
		 0.178399 0.060676999 0.083861001 0.99462801 0.060676999 0.083861001 0.99462801 0.86512899
		 -0.497291 0.065217003 0.27845201 -0.957349 -0.077124 0.55053902 -0.74626899 -0.37415099
		 0.27845201 -0.957349 -0.077124 0.86512899 -0.497291 0.065217003 0.63699001 -0.67191398
		 0.377857 0.45252201 -0.89157403 0.017866001 0.93453902 -0.35451099 0.030960999 0.047214001
		 0.98477298 0.16731299 -0.118923 0.95694202 0.264799 -0.104469 0.43395099 0.89485902
		 -0.164619 0.46193999 0.87150002 0.043535002 0.562415 -0.82570797 -0.056788001 0.67466301
		 -0.73593801 -0.118923 0.95694202 0.264799 0.047214001 0.98477298 0.16731299 0.113111
		 0.99265403 0.042941999 0.0044559999 0.99722803 0.074276999 0.081462003 0.47805101
		 0.87454599 0.085881002 0.40869799 0.90862 -0.055305 0.429804 -0.901227 -0.11653 0.53304601
		 -0.83802301 0.0044559999 0.99722803 0.074276999 0.113111 0.99265403 0.042941999 -0.048269998
		 0.76969498 -0.63658398 0.044491999 0.81601501 0.576316 0.073182002 0.76575601 0.63895398
		 0.097921997 0.82103401 -0.562419 0.097921997 0.82103401 -0.562419 -0.024649 -0.096741997
		 -0.995004 -0.048269998 0.76969498 -0.63658398 0.16967601 0.94708103 0.272484 -0.144417
		 0.98790801 0.056412999 -0.069109 0.482649 -0.873083 0.27054599 0.69719499 -0.66386998
		 -0.114899 0.62602103 0.77129501 -0.144417 0.98790801 0.056412999 0.16967601 0.94708103
		 0.272484 0.16967601 0.94708103 0.272484 0.34977299 0.097162001 0.93178201 -0.114899
		 0.62602103 0.77129501 0.11561 0.27460799 -0.95458102 0.93453902 -0.35451099 0.030960999
		 -0.062685996 0.47266299 -0.87901098 0.93453902 -0.35451099 0.030960999 -0.069109
		 0.482649 -0.873083 -0.062685996 0.47266299 -0.87901098 0.27054599 0.69719499 -0.66386998
		 -0.069109 0.482649 -0.873083 0.93453902 -0.35451099 0.030960999 0.45524099 0.88599598
		 -0.088128999 0.36184901 0.831294 0.42191899 0.088117003 0.98321599 0.15975299 0.45524099
		 0.88599598 -0.088128999 0.27054599 0.69719499 -0.66386998 0.93453902 -0.35451099
		 0.030960999 0.36184901 0.831294 0.42191899 0.93453902 -0.35451099 0.030960999 -0.104469
		 0.43395099 0.89485902 0.36184901 0.831294 0.42191899 -0.164619 0.46193999 0.87150002
		 -0.104469 0.43395099 0.89485902 0.93453902 -0.35451099 0.030960999 0.93453902 -0.35451099
		 0.030960999 0.025983 0.247927 0.96842998 -0.164619 0.46193999 0.87150002 0.043535002
		 0.562415 -0.82570797;
	setAttr ".n[4980:5145]" -type "float3"  0.207506 0.36047199 -0.90939599 0.86512899
		 -0.497291 0.065217003 0.86512899 -0.497291 0.065217003 -0.056788001 0.67466301 -0.73593801
		 0.043535002 0.562415 -0.82570797 0.86512899 -0.497291 0.065217003 0.206274 0.96641701
		 -0.15326101 -0.056788001 0.67466301 -0.73593801 0.27388 0.93377203 0.230349 0.318483
		 0.686414 0.65376198 0.101771 0.993505 -0.050905999 0.27388 0.93377203 0.230349 0.206274
		 0.96641701 -0.15326101 0.86512899 -0.497291 0.065217003 0.318483 0.686414 0.65376198
		 0.86512899 -0.497291 0.065217003 0.081462003 0.47805101 0.87454599 0.318483 0.686414
		 0.65376198 0.085881002 0.40869799 0.90862 0.081462003 0.47805101 0.87454599 0.86512899
		 -0.497291 0.065217003 0.86512899 -0.497291 0.065217003 0.060676999 0.083861001 0.99462801
		 0.085881002 0.40869799 0.90862 0.16339099 0.17744701 -0.97047198 0.55053902 -0.74626899
		 -0.37415099 -0.055305 0.429804 -0.901227 0.55053902 -0.74626899 -0.37415099 -0.11653
		 0.53304601 -0.83802301 -0.055305 0.429804 -0.901227 0.30234101 0.81044102 -0.50177199
		 -0.11653 0.53304601 -0.83802301 0.55053902 -0.74626899 -0.37415099 0.28589901 0.95465797
		 -0.083003998 0.303312 0.91871297 0.252918 0.015690001 0.82176602 -0.56961 0.55053902
		 -0.74626899 -0.37415099 0.303312 0.91871297 0.252918 0.28589901 0.95465797 -0.083003998
		 0.30234101 0.81044102 -0.50177199 0.044491999 0.81601501 0.576316 0.303312 0.91871297
		 0.252918 0.55053902 -0.74626899 -0.37415099 0.073182002 0.76575601 0.63895398 0.044491999
		 0.81601501 0.576316 0.55053902 -0.74626899 -0.37415099 0.315907 0.453973 0.83313298
		 0.073182002 0.76575601 0.63895398 0.55053902 -0.74626899 -0.37415099 -0.32080609
		 -0.19340505 -0.92718822 -0.34134802 -0.93980312 -0.015870001 -0.99333346 -0.11385905
		 -0.018024009 -0.34134802 -0.93980312 -0.015870001 -0.32080609 -0.19340505 -0.92718822
		 0.14568193 -0.98930454 -0.0072989967 -0.11587305 0.025315009 -0.99294138 0.14568193
		 -0.98930454 -0.0072989967 -0.32080609 -0.19340505 -0.92718822 0.14568193 -0.98930454
		 -0.0072989967 -0.11587305 0.025315009 -0.99294138 -0.34773204 -0.93677914 0.039082002
		 -0.11561 0.27460799 -0.95458102 -0.34773204 -0.93677914 0.039082002 -0.11587305 0.025315009
		 -0.99294138 -0.34773204 -0.93677914 0.039082002 -0.11561 0.27460799 -0.95458102 -0.93453914
		 -0.35451102 0.030961003 -0.93453914 -0.35451102 0.030961003 -0.63698983 -0.6719138
		 0.37785691 -0.34773204 -0.93677914 0.039082002 -0.58307201 0.81151497 -0.038348 -0.32080609
		 -0.19340505 -0.92718822 -0.99333346 -0.11385905 -0.018024009 -0.32080609 -0.19340505
		 -0.92718822 -0.58307201 0.81151497 -0.038348 -0.11587305 0.025315009 -0.99294138
		 -0.16801402 0.98576111 -0.0068200007 -0.11587305 0.025315009 -0.99294138 -0.58307201
		 0.81151497 -0.038348 -0.11587305 0.025315009 -0.99294138 -0.16801402 0.98576111 -0.0068200007
		 -0.11561 0.27460799 -0.95458102 0.031534016 0.98642349 -0.16116607 -0.11561 0.27460799
		 -0.95458102 -0.16801402 0.98576111 -0.0068200007 -0.11561 0.27460799 -0.95458102
		 0.031534016 0.98642349 -0.16116607 0.062685996 0.47266299 -0.87901098 0.062685996
		 0.47266299 -0.87901098 0.031534016 0.98642349 -0.16116607 0.14441693 0.98790753 0.056412973
		 0.069109 0.482649 -0.873083 -0.45252213 -0.89157426 0.017866004 -0.86512911 -0.49729106
		 0.065217011 -0.55053914 -0.74626917 -0.37415108 0.056788009 0.67466307 -0.73593807
		 0.11892306 0.9569425 0.26479912 -0.088117033 0.98321635 0.15975305 -0.20627403 0.96641713
		 -0.15326102 -0.04721399 0.98477274 0.16731295 -0.043535013 0.56241512 -0.82570815
		 -0.20750603 0.36047202 -0.90939611 -0.20750603 0.36047202 -0.90939611 -0.29845184
		 0.95089453 -0.08201196 -0.04721399 0.98477274 0.16731295 -0.29845184 0.95089453 -0.08201196
		 -0.20750603 0.36047202 -0.90939611 -0.18836802 0.16495101 -0.9681471 -0.18836802
		 0.16495101 -0.9681471 -0.66489506 0.74401706 0.065978006 -0.29845184 0.95089453 -0.08201196
		 -0.66489506 0.74401706 0.065978006 -0.18836802 0.16495101 -0.9681471 -0.40691215
		 -0.25016508 -0.87854427 -0.93853235 -0.34091911 0.054142017 -0.66489506 0.74401706
		 0.065978006 -0.40691215 -0.25016508 -0.87854427 -0.93453914 -0.35451102 0.030961003
		 -0.29559085 -0.95480651 0.031153984 -0.45252213 -0.89157426 0.017866004 -0.29559085
		 -0.95480651 0.031153984 -0.93453914 -0.35451102 0.030961003 -0.025983006 0.24792705
		 0.96843022 -0.10196502 0.21529102 0.97121215 -0.29559085 -0.95480651 0.031153984
		 -0.025983006 0.24792705 0.96843022 -0.29559085 -0.95480651 0.031153984 -0.10196502
		 0.21529102 0.97121215 0.092328995 -0.99520087 -0.032411996 -0.27519304 -0.24577303
		 0.92944312 0.092328995 -0.99520087 -0.032411996 -0.10196502 0.21529102 0.97121215
		 0.092328995 -0.99520087 -0.032411996 -0.27519304 -0.24577303 0.92944312 -0.27315199
		 -0.96142697 0.032347001 -0.93853235 -0.34091911 0.054142017 -0.27315199 -0.96142697
		 0.032347001 -0.27519304 -0.24577303 0.92944312 -0.36184901 0.831294 0.42191899 -0.088117033
		 0.98321635 0.15975305 0.11892306 0.9569425 0.26479912 0.10446902 0.43395105 0.89485914
		 0.16461898 0.46193993 0.8714999 -0.04721399 0.98477274 0.16731295 -0.025983006 0.24792705
		 0.96843022 -0.10196502 0.21529102 0.97121215 -0.025983006 0.24792705 0.96843022 -0.04721399
		 0.98477274 0.16731295 -0.29845184 0.95089453 -0.08201196 -0.10196502 0.21529102 0.97121215
		 -0.04721399 0.98477274 0.16731295 -0.10196502 0.21529102 0.97121215 -0.29845184 0.95089453
		 -0.08201196 -0.66489506 0.74401706 0.065978006 -0.66489506 0.74401706 0.065978006
		 -0.27519304 -0.24577303 0.92944312 -0.10196502 0.21529102 0.97121215 -0.27519304
		 -0.24577303 0.92944312 -0.66489506 0.74401706 0.065978006 -0.93853235 -0.34091911
		 0.054142017 -0.21045998 -0.95049989 -0.22859697 -0.55053914 -0.74626917 -0.37415108
		 -0.31590712 0.45397314 0.83313328 -0.31590712 0.45397314 0.83313328 0.31395096 -0.82871389
		 0.46332294 -0.21045998 -0.95049989 -0.22859697;
	setAttr ".n[5146:5311]" -type "float3"  0.31395096 -0.82871389 0.46332294 -0.31590712
		 0.45397314 0.83313328 -0.32049912 0.63332725 0.70439821 -0.24779905 0.059279013 0.96699625
		 0.31395096 -0.82871389 0.46332294 -0.32049912 0.63332725 0.70439821 0.31395096 -0.82871389
		 0.46332294 -0.24779905 0.059279013 0.96699625 0.079831995 -0.92871088 0.36210898
		 -0.8492406 -0.4673028 0.24580188 0.079831995 -0.92871088 0.36210898 -0.24779905 0.059279013
		 0.96699625 -0.2740919 -0.93716264 -0.21586992 -0.38817614 -0.44122115 -0.80910027
		 -0.69741201 -0.71024001 -0.095789999 -0.38817614 -0.44122115 -0.80910027 -0.2740919
		 -0.93716264 -0.21586992 -0.15227203 -0.20163305 -0.96755224 -0.011981993 -0.97205442
		 -0.23444986 -0.15227203 -0.20163305 -0.96755224 -0.2740919 -0.93716264 -0.21586992
		 -0.15227203 -0.20163305 -0.96755224 -0.14141507 0.2173721 -0.96579045 -0.38817614
		 -0.44122115 -0.80910027 -0.011981993 -0.97205442 -0.23444986 -0.033473004 -0.27749404
		 -0.9601441 -0.15227203 -0.20163305 -0.96755224 -0.033473004 -0.27749404 -0.9601441
		 -0.011981993 -0.97205442 -0.23444986 0.13708605 -0.98714334 -0.082192026 -0.13078099
		 0.58180201 -0.80274701 -0.15227203 -0.20163305 -0.96755224 -0.033473004 -0.27749404
		 -0.9601441 -0.15227203 -0.20163305 -0.96755224 -0.13078099 0.58180201 -0.80274701
		 -0.198147 0.66357797 -0.721389 -0.198147 0.66357797 -0.721389 -0.14141507 0.2173721
		 -0.96579045 -0.15227203 -0.20163305 -0.96755224 -0.14141507 0.2173721 -0.96579045
		 -0.198147 0.66357797 -0.721389 -0.19130905 0.66706318 -0.72001916 -0.12984601 0.980762
		 -0.14576 -0.19130905 0.66706318 -0.72001916 -0.198147 0.66357797 -0.721389 -0.29157299
		 0.94938201 0.116872 -0.12984601 0.980762 -0.14576 -0.198147 0.66357797 -0.721389
		 -0.12984601 0.980762 -0.14576 -0.29157299 0.94938201 0.116872 -0.16052794 0.74299175
		 0.64976478 -0.198147 0.66357797 -0.721389 -0.2093261 0.97449845 0.08084204 -0.29157299
		 0.94938201 0.116872 -0.2093261 0.97449845 0.08084204 -0.198147 0.66357797 -0.721389
		 -0.13078099 0.58180201 -0.80274701 -0.22825411 0.54361922 0.80769938 -0.29157299
		 0.94938201 0.116872 -0.2093261 0.97449845 0.08084204 -0.29157299 0.94938201 0.116872
		 -0.22825411 0.54361922 0.80769938 -0.16052794 0.74299175 0.64976478 -0.28278494 0.19421296
		 0.93931574 -0.16052794 0.74299175 0.64976478 -0.22825411 0.54361922 0.80769938 -0.23578203
		 -0.12306701 0.96398211 -0.28278494 0.19421296 0.93931574 -0.22825411 0.54361922 0.80769938
		 -0.28278494 0.19421296 0.93931574 -0.23578203 -0.12306701 0.96398211 -0.47263095
		 -0.21535197 0.85454285 -0.22825411 0.54361922 0.80769938 -0.16718008 0.35961419 0.91800243
		 -0.23578203 -0.12306701 0.96398211 -0.16718008 0.35961419 0.91800243 -0.22825411
		 0.54361922 0.80769938 -0.2093261 0.97449845 0.08084204 -0.2093261 0.97449845 0.08084204
		 -0.072850004 0.56879604 0.81924611 -0.16718008 0.35961419 0.91800243 -0.072850004
		 0.56879604 0.81924611 -0.2093261 0.97449845 0.08084204 -0.13522795 0.97332567 -0.18533894
		 -0.13078099 0.58180201 -0.80274701 -0.13522795 0.97332567 -0.18533894 -0.2093261
		 0.97449845 0.08084204 -0.13522795 0.97332567 -0.18533894 -0.13078099 0.58180201 -0.80274701
		 -0.075618997 0.59594899 -0.79945397 -0.033473004 -0.27749404 -0.9601441 -0.075618997
		 0.59594899 -0.79945397 -0.13078099 0.58180201 -0.80274701 -0.075618997 0.59594899
		 -0.79945397 -0.033473004 -0.27749404 -0.9601441 0.061020002 -0.160327 -0.98517603
		 0.13708605 -0.98714334 -0.082192026 0.061020002 -0.160327 -0.98517603 -0.033473004
		 -0.27749404 -0.9601441 0.061020002 -0.160327 -0.98517603 0.13708605 -0.98714334 -0.082192026
		 -0.0062570013 -0.28834507 -0.95750624 0.036384005 -0.98266912 -0.18176301 -0.0062570013
		 -0.28834507 -0.95750624 0.13708605 -0.98714334 -0.082192026 0.055571008 0.62477708
		 -0.77882314 0.061020002 -0.160327 -0.98517603 -0.0062570013 -0.28834507 -0.95750624
		 0.061020002 -0.160327 -0.98517603 0.055571008 0.62477708 -0.77882314 -0.075618997
		 0.59594899 -0.79945397 0.055825975 0.99754751 0.042217981 -0.075618997 0.59594899
		 -0.79945397 0.055571008 0.62477708 -0.77882314 -0.075618997 0.59594899 -0.79945397
		 0.055825975 0.99754751 0.042217981 -0.13522795 0.97332567 -0.18533894 -0.072850004
		 0.56879604 0.81924611 -0.13522795 0.97332567 -0.18533894 0.055825975 0.99754751 0.042217981
		 0.054007988 0.5424369 0.83835882 -0.072850004 0.56879604 0.81924611 0.055825975 0.99754751
		 0.042217981 -0.072850004 0.56879604 0.81924611 0.054007988 0.5424369 0.83835882 0.027922001
		 -0.29504299 0.95507598 -0.046839997 -0.54518694 0.8370049 -0.072850004 0.56879604
		 0.81924611 0.027922001 -0.29504299 0.95507598 -0.072850004 0.56879604 0.81924611
		 -0.046839997 -0.54518694 0.8370049 -0.16718008 0.35961419 0.91800243 -0.23578203
		 -0.12306701 0.96398211 -0.16718008 0.35961419 0.91800243 -0.046839997 -0.54518694
		 0.8370049 -0.22791199 -0.77554399 0.58871698 -0.23578203 -0.12306701 0.96398211 -0.046839997
		 -0.54518694 0.8370049 -0.23578203 -0.12306701 0.96398211 -0.22791199 -0.77554399
		 0.58871698 -0.47263095 -0.21535197 0.85454285 -0.63730526 -0.68883121 0.34547612
		 -0.47263095 -0.21535197 0.85454285 -0.22791199 -0.77554399 0.58871698 -0.2740919
		 -0.93716264 -0.21586992 -0.63730526 -0.68883121 0.34547612 -0.22791199 -0.77554399
		 0.58871698 -0.63730526 -0.68883121 0.34547612 -0.2740919 -0.93716264 -0.21586992
		 -0.69741201 -0.71024001 -0.095789999 -0.22791199 -0.77554399 0.58871698 -0.011981993
		 -0.97205442 -0.23444986 -0.2740919 -0.93716264 -0.21586992 -0.011981993 -0.97205442
		 -0.23444986 -0.22791199 -0.77554399 0.58871698 -0.046839997 -0.54518694 0.8370049
		 -0.046839997 -0.54518694 0.8370049 0.13708605 -0.98714334 -0.082192026 -0.011981993
		 -0.97205442 -0.23444986 0.13708605 -0.98714334 -0.082192026 -0.046839997 -0.54518694
		 0.8370049 0.027922001 -0.29504299 0.95507598 0.11037599 -0.57465595 0.81091785 0.13708605
		 -0.98714334 -0.082192026 0.027922001 -0.29504299 0.95507598 0.13708605 -0.98714334
		 -0.082192026;
	setAttr ".n[5312:5477]" -type "float3"  0.11037599 -0.57465595 0.81091785 0.036384005
		 -0.98266912 -0.18176301 0.027922001 -0.29504299 0.95507598 0.17525205 0.52677011
		 0.83174521 0.11037599 -0.57465595 0.81091785 0.17525205 0.52677011 0.83174521 0.027922001
		 -0.29504299 0.95507598 0.054007988 0.5424369 0.83835882 0.055825975 0.99754751 0.042217981
		 0.17525205 0.52677011 0.83174521 0.054007988 0.5424369 0.83835882 0.17525205 0.52677011
		 0.83174521 0.055825975 0.99754751 0.042217981 0.113152 0.98908699 -0.094359003 -0.024288001
		 0.68996 -0.72343999 0.113152 0.98908699 -0.094359003 0.055825975 0.99754751 0.042217981
		 0.055571008 0.62477708 -0.77882314 -0.024288001 0.68996 -0.72343999 0.055825975 0.99754751
		 0.042217981 -0.024288001 0.68996 -0.72343999 0.055571008 0.62477708 -0.77882314 -0.0062570013
		 -0.28834507 -0.95750624 -0.0062570013 -0.28834507 -0.95750624 -0.17240396 -0.35967791
		 -0.91701078 -0.024288001 0.68996 -0.72343999 -0.17240396 -0.35967791 -0.91701078
		 -0.0062570013 -0.28834507 -0.95750624 0.036384005 -0.98266912 -0.18176301 -0.12057804
		 -0.98629433 0.11262504 -0.17240396 -0.35967791 -0.91701078 0.036384005 -0.98266912
		 -0.18176301 -0.17240396 -0.35967791 -0.91701078 -0.12057804 -0.98629433 0.11262504
		 -0.14388001 -0.98574913 -0.08716201 -0.14388001 -0.98574913 -0.08716201 -0.047573008
		 -0.38447207 -0.92191011 -0.17240396 -0.35967791 -0.91701078 -0.047573008 -0.38447207
		 -0.92191011 -0.14388001 -0.98574913 -0.08716201 -0.088272981 -0.99543679 -0.036242992
		 -0.033767011 0.57407618 -0.81810528 -0.17240396 -0.35967791 -0.91701078 -0.047573008
		 -0.38447207 -0.92191011 -0.17240396 -0.35967791 -0.91701078 -0.033767011 0.57407618
		 -0.81810528 -0.024288001 0.68996 -0.72343999 0.113152 0.98908699 -0.094359003 -0.024288001
		 0.68996 -0.72343999 -0.033767011 0.57407618 -0.81810528 0.10349298 0.99080676 -0.087127976
		 0.113152 0.98908699 -0.094359003 -0.033767011 0.57407618 -0.81810528 0.113152 0.98908699
		 -0.094359003 0.10349298 0.99080676 -0.087127976 0.17525205 0.52677011 0.83174521
		 -0.033767011 0.57407618 -0.81810528 -0.0057219984 0.54326189 -0.83954382 0.10349298
		 0.99080676 -0.087127976 -0.0057219984 0.54326189 -0.83954382 -0.033767011 0.57407618
		 -0.81810528 -0.047573008 -0.38447207 -0.92191011 -0.047573008 -0.38447207 -0.92191011
		 -0.053286999 -0.421413 -0.90530199 -0.0057219984 0.54326189 -0.83954382 -0.053286999
		 -0.421413 -0.90530199 -0.047573008 -0.38447207 -0.92191011 -0.088272981 -0.99543679
		 -0.036242992 0.066274978 -0.99354863 -0.092025973 -0.053286999 -0.421413 -0.90530199
		 -0.088272981 -0.99543679 -0.036242992 -0.053286999 -0.421413 -0.90530199 0.066274978
		 -0.99354863 -0.092025973 0.078784958 -0.27301085 -0.95877939 -0.029805012 0.61825621
		 -0.7854113 -0.053286999 -0.421413 -0.90530199 0.078784958 -0.27301085 -0.95877939
		 -0.053286999 -0.421413 -0.90530199 -0.029805012 0.61825621 -0.7854113 -0.0057219984
		 0.54326189 -0.83954382 0.11997204 0.65315223 -0.74766225 -0.029805012 0.61825621
		 -0.7854113 0.078784958 -0.27301085 -0.95877939 -0.04319701 0.99887323 0.019656006
		 -0.0057219984 0.54326189 -0.83954382 -0.029805012 0.61825621 -0.7854113 -0.0057219984
		 0.54326189 -0.83954382 -0.04319701 0.99887323 0.019656006 0.10349298 0.99080676 -0.087127976
		 0.088397026 0.5181241 0.85072517 0.10349298 0.99080676 -0.087127976 -0.04319701 0.99887323
		 0.019656006 0.10349298 0.99080676 -0.087127976 0.088397026 0.5181241 0.85072517 0.17525205
		 0.52677011 0.83174521 0.063468978 -0.48491782 0.87225372 0.17525205 0.52677011 0.83174521
		 0.088397026 0.5181241 0.85072517 0.17525205 0.52677011 0.83174521 0.063468978 -0.48491782
		 0.87225372 0.11037599 -0.57465595 0.81091785 -0.12057804 -0.98629433 0.11262504 0.11037599
		 -0.57465595 0.81091785 0.063468978 -0.48491782 0.87225372 0.11037599 -0.57465595
		 0.81091785 -0.12057804 -0.98629433 0.11262504 0.036384005 -0.98266912 -0.18176301
		 0.063468978 -0.48491782 0.87225372 -0.14388001 -0.98574913 -0.08716201 -0.12057804
		 -0.98629433 0.11262504 -0.14388001 -0.98574913 -0.08716201 0.063468978 -0.48491782
		 0.87225372 -0.025163004 -0.53138906 0.84675413 0.088397026 0.5181241 0.85072517 -0.025163004
		 -0.53138906 0.84675413 0.063468978 -0.48491782 0.87225372 -0.088272981 -0.99543679
		 -0.036242992 -0.14388001 -0.98574913 -0.08716201 -0.025163004 -0.53138906 0.84675413
		 0.088397026 0.5181241 0.85072517 -0.045601014 0.46069518 0.88638628 -0.025163004
		 -0.53138906 0.84675413 -0.045601014 0.46069518 0.88638628 0.088397026 0.5181241 0.85072517
		 -0.04319701 0.99887323 0.019656006 -0.063748986 -0.48574889 0.8717708 -0.025163004
		 -0.53138906 0.84675413 -0.045601014 0.46069518 0.88638628 -0.025163004 -0.53138906
		 0.84675413 -0.063748986 -0.48574889 0.8717708 -0.088272981 -0.99543679 -0.036242992
		 0.066274978 -0.99354863 -0.092025973 -0.088272981 -0.99543679 -0.036242992 -0.063748986
		 -0.48574889 0.8717708 -0.063748986 -0.48574889 0.8717708 0.16698508 -0.43838421 0.88313943
		 0.066274978 -0.99354863 -0.092025973 0.16698508 -0.43838421 0.88313943 -0.063748986
		 -0.48574889 0.8717708 -0.042421985 0.61493278 0.78743768 -0.045601014 0.46069518
		 0.88638628 -0.042421985 0.61493278 0.78743768 -0.063748986 -0.48574889 0.8717708
		 -0.042421985 0.61493278 0.78743768 -0.045601014 0.46069518 0.88638628 -0.04319701
		 0.99887323 0.019656006 -0.04319701 0.99887323 0.019656006 -0.048994988 0.99832875
		 0.030647993 -0.042421985 0.61493278 0.78743768 -0.048994988 0.99832875 0.030647993
		 -0.04319701 0.99887323 0.019656006 -0.029805012 0.61825621 -0.7854113 0.11997204
		 0.65315223 -0.74766225 -0.048994988 0.99832875 0.030647993 -0.029805012 0.61825621
		 -0.7854113 -0.048994988 0.99832875 0.030647993 0.11997204 0.65315223 -0.74766225
		 0.039698023 0.99683058 0.068942048 0.038544018 0.63176233 0.77420336 -0.048994988
		 0.99832875 0.030647993 0.039698023 0.99683058 0.068942048 -0.048994988 0.99832875
		 0.030647993 0.038544018 0.63176233 0.77420336 -0.042421985 0.61493278 0.78743768
		 0.16698508 -0.43838421 0.88313943 -0.042421985 0.61493278 0.78743768;
	setAttr ".n[5478:5643]" -type "float3"  0.038544018 0.63176233 0.77420336 -0.16967602
		 0.94708115 0.27248403 -0.45524099 0.88599598 -0.088128999 -0.27054608 0.69719523
		 -0.66387022 -0.088117033 0.98321635 0.15975305 -0.45524099 0.88599598 -0.088128999
		 -0.16967602 0.94708115 0.27248403 -0.069372974 0.99755263 0.0087299971 -0.10177094
		 0.99350452 -0.050905973 -0.27387989 0.93377161 0.2303489 -0.088117033 0.98321635
		 0.15975305 -0.069372974 0.99755263 0.0087299971 -0.088117033 0.98321635 0.15975305
		 -0.27387989 0.93377161 0.2303489 -0.20627403 0.96641713 -0.15326102 -0.31848297 0.68641394
		 0.65376192 -0.10177094 0.99350452 -0.050905973 -0.0044559985 0.99722767 0.074276969
		 -0.081462026 0.47805113 0.87454617 -0.08588101 0.40869805 0.90862012 -0.113111 0.99265403
		 0.042941999 -0.060677029 0.083861038 0.99462849 -0.29552305 0.95533526 -0.00088500022
		 -0.060677029 0.083861038 0.99462849 -0.113111 0.99265403 0.042941999 -0.060677029
		 0.083861038 0.99462849 -0.29552305 0.95533526 -0.00088500022 -0.05391198 0.28748491
		 0.95626664 -0.89478678 0.43832487 0.085016981 -0.05391198 0.28748491 0.95626664 -0.29552305
		 0.95533526 -0.00088500022 -0.05391198 0.28748491 0.95626664 -0.89478678 0.43832487
		 0.085016981 0.0017420002 -0.30857304 0.95119911 -0.5680691 -0.81125116 0.13845202
		 0.0017420002 -0.30857304 0.95119911 -0.89478678 0.43832487 0.085016981 -0.89478678
		 0.43832487 0.085016981 -0.25902486 -0.43887773 -0.86040246 -0.5680691 -0.81125116
		 0.13845202 -0.25902486 -0.43887773 -0.86040246 -0.89478678 0.43832487 0.085016981
		 -0.32459399 -0.027965 -0.94543999 -0.29552305 0.95533526 -0.00088500022 -0.32459399
		 -0.027965 -0.94543999 -0.89478678 0.43832487 0.085016981 -0.32459399 -0.027965 -0.94543999
		 -0.29552305 0.95533526 -0.00088500022 -0.16339101 0.17744702 -0.9704721 -0.113111
		 0.99265403 0.042941999 -0.16339101 0.17744702 -0.9704721 -0.29552305 0.95533526 -0.00088500022
		 -0.16339101 0.17744702 -0.9704721 -0.113111 0.99265403 0.042941999 0.055304993 0.42980394
		 -0.90122688 -0.10177094 0.99350452 -0.050905973 -0.30234104 0.81044114 -0.50177205
		 0.11653002 0.53304607 -0.83802313 -0.0044559985 0.99722767 0.074276969 -0.30234104
		 0.81044114 -0.50177205 -0.10177094 0.99350452 -0.050905973 -0.28589907 0.95465821
		 -0.08300402 -0.0092909988 0.78166288 -0.62363195 -0.015689991 0.82176554 -0.56960964
		 -0.28589907 0.95465821 -0.08300402 -0.10177094 0.99350452 -0.050905973 -0.069372974
		 0.99755263 0.0087299971 -0.0092909988 0.78166288 -0.62363195 -0.10177094 0.99350452
		 -0.050905973 0.059051979 0.21004093 -0.97590762 -0.015689991 0.82176554 -0.56960964
		 -0.0092909988 0.78166288 -0.62363195 0.010749 0.55684501 -0.83054698 -0.0092909988
		 0.78166288 -0.62363195 -0.069372974 0.99755263 0.0087299971 -0.0092909988 0.78166288
		 -0.62363195 0.010749 0.55684501 -0.83054698 0.17078705 -0.45574313 -0.87357318 0.059051979
		 0.21004093 -0.97590762 -0.0092909988 0.78166288 -0.62363195 0.17078705 -0.45574313
		 -0.87357318 0.010749 0.55684501 -0.83054698 0.30398703 -0.32794404 -0.8944521 0.17078705
		 -0.45574313 -0.87357318 0.30398703 -0.32794404 -0.8944521 0.010749 0.55684501 -0.83054698
		 0.14234392 0.73717862 -0.66053468 -0.069372974 0.99755263 0.0087299971 0.14234392
		 0.73717862 -0.66053468 0.010749 0.55684501 -0.83054698 0.14234392 0.73717862 -0.66053468
		 -0.069372974 0.99755263 0.0087299971 0.039698023 0.99683058 0.068942048 0.11997204
		 0.65315223 -0.74766225 0.14234392 0.73717862 -0.66053468 0.039698023 0.99683058 0.068942048
		 0.14234392 0.73717862 -0.66053468 0.11997204 0.65315223 -0.74766225 0.30398703 -0.32794404
		 -0.8944521 0.078784958 -0.27301085 -0.95877939 0.30398703 -0.32794404 -0.8944521
		 0.11997204 0.65315223 -0.74766225 0.30398703 -0.32794404 -0.8944521 0.078784958 -0.27301085
		 -0.95877939 0.066274978 -0.99354863 -0.092025973 0.26937509 -0.95896733 -0.088424027
		 0.30398703 -0.32794404 -0.8944521 0.066274978 -0.99354863 -0.092025973 0.30398703
		 -0.32794404 -0.8944521 0.26937509 -0.95896733 -0.088424027 0.17078705 -0.45574313
		 -0.87357318 0.16698508 -0.43838421 0.88313943 0.26937509 -0.95896733 -0.088424027
		 0.066274978 -0.99354863 -0.092025973 0.26937509 -0.95896733 -0.088424027 0.16698508
		 -0.43838421 0.88313943 0.43315014 -0.30238813 0.8490833 0.43315014 -0.30238813 0.8490833
		 0.35598218 -0.82956439 0.4302322 0.26937509 -0.95896733 -0.088424027 0.35598218 -0.82956439
		 0.4302322 0.43315014 -0.30238813 0.8490833 0.32864892 -0.069860987 0.94186479 0.057015993
		 -0.9941029 -0.092241995 0.35598218 -0.82956439 0.4302322 0.32864892 -0.069860987
		 0.94186479 0.35598218 -0.82956439 0.4302322 0.057015993 -0.9941029 -0.092241995 -0.087517008
		 -0.86759311 -0.48951307 -0.087517008 -0.86759311 -0.48951307 0.26937509 -0.95896733
		 -0.088424027 0.35598218 -0.82956439 0.4302322 0.26937509 -0.95896733 -0.088424027
		 -0.087517008 -0.86759311 -0.48951307 -0.051404972 -0.95824242 -0.28129882 -0.051404972
		 -0.95824242 -0.28129882 0.17078705 -0.45574313 -0.87357318 0.26937509 -0.95896733
		 -0.088424027 0.17078705 -0.45574313 -0.87357318 -0.051404972 -0.95824242 -0.28129882
		 0.0030700001 -0.77127802 -0.636491 0.0030700001 -0.77127802 -0.636491 0.059051979
		 0.21004093 -0.97590762 0.17078705 -0.45574313 -0.87357318 0.059051979 0.21004093
		 -0.97590762 0.0030700001 -0.77127802 -0.636491 -0.097952001 -0.74495101 -0.65988898
		 -0.051404972 -0.95824242 -0.28129882 -0.097952001 -0.74495101 -0.65988898 0.0030700001
		 -0.77127802 -0.636491 -0.10272398 -0.026352994 -0.99436074 0.059051979 0.21004093
		 -0.97590762 -0.097952001 -0.74495101 -0.65988898 0.059051979 0.21004093 -0.97590762
		 -0.10272398 -0.026352994 -0.99436074 -0.015689991 0.82176554 -0.56960964 0.024649005
		 -0.096742019 -0.99500424 -0.015689991 0.82176554 -0.56960964 -0.10272398 -0.026352994
		 -0.99436074 -0.10272398 -0.026352994 -0.99436074 -0.55053914 -0.74626917 -0.37415108
		 0.024649005 -0.096742019 -0.99500424 -0.55053914 -0.74626917 -0.37415108 -0.10272398
		 -0.026352994 -0.99436074 -0.097952001 -0.74495101 -0.65988898 -0.21045998 -0.95049989
		 -0.22859697;
	setAttr ".n[5644:5809]" -type "float3"  0.024649005 -0.096742019 -0.99500424
		 -0.55053914 -0.74626917 -0.37415108 -0.55053914 -0.74626917 -0.37415108 -0.097952001
		 -0.74495101 -0.65988898 -0.45252213 -0.89157426 0.017866004 -0.051404972 -0.95824242
		 -0.28129882 -0.45252213 -0.89157426 0.017866004 -0.097952001 -0.74495101 -0.65988898
		 -0.45252213 -0.89157426 0.017866004 -0.051404972 -0.95824242 -0.28129882 -0.58274603
		 -0.788908 -0.195016 -0.087517008 -0.86759311 -0.48951307 -0.58274603 -0.788908 -0.195016
		 -0.051404972 -0.95824242 -0.28129882 -0.58274603 -0.788908 -0.195016 -0.087517008
		 -0.86759311 -0.48951307 -0.53269118 -0.48764518 -0.69169521 0.057015993 -0.9941029
		 -0.092241995 -0.53269118 -0.48764518 -0.69169521 -0.087517008 -0.86759311 -0.48951307
		 -0.53269118 -0.48764518 -0.69169521 0.057015993 -0.9941029 -0.092241995 -0.60529566
		 0.041379973 -0.7949245 0.36976221 -0.91137856 -0.18073511 -0.60529566 0.041379973
		 -0.7949245 0.057015993 -0.9941029 -0.092241995 -0.60529566 0.041379973 -0.7949245
		 0.36976221 -0.91137856 -0.18073511 -0.062752016 -0.88028026 -0.47028613 -0.062752016
		 -0.88028026 -0.47028613 -0.73037016 0.27656907 -0.62455511 -0.60529566 0.041379973
		 -0.7949245 -0.73037016 0.27656907 -0.62455511 -0.062752016 -0.88028026 -0.47028613
		 -0.4084219 -0.91279274 0.00097099977 -0.98916 -0.015685 0.14600199 -0.73037016 0.27656907
		 -0.62455511 -0.4084219 -0.91279274 0.00097099977 -0.73037016 0.27656907 -0.62455511
		 -0.98916 -0.015685 0.14600199 -0.31969902 0.75289214 0.57527906 -0.16326299 0.95838302
		 0.23419499 -0.73037016 0.27656907 -0.62455511 -0.31969902 0.75289214 0.57527906 -0.73037016
		 0.27656907 -0.62455511 -0.16326299 0.95838302 0.23419499 -0.60529566 0.041379973
		 -0.7949245 -0.23083109 0.80545932 0.54585016 -0.60529566 0.041379973 -0.7949245 -0.16326299
		 0.95838302 0.23419499 -0.60529566 0.041379973 -0.7949245 -0.23083109 0.80545932 0.54585016
		 -0.95756549 0.17409609 -0.2296931 -0.95756549 0.17409609 -0.2296931 -0.53269118 -0.48764518
		 -0.69169521 -0.60529566 0.041379973 -0.7949245 -0.53269118 -0.48764518 -0.69169521
		 -0.95756549 0.17409609 -0.2296931 -0.58274603 -0.788908 -0.195016 -0.70144093 0.013440998
		 0.71260095 -0.58274603 -0.788908 -0.195016 -0.95756549 0.17409609 -0.2296931 -0.58274603
		 -0.788908 -0.195016 -0.70144093 0.013440998 0.71260095 -0.63698983 -0.6719138 0.37785691
		 -0.45252213 -0.89157426 0.017866004 -0.58274603 -0.788908 -0.195016 -0.63698983 -0.6719138
		 0.37785691 -0.34977311 0.097162038 0.93178236 -0.63698983 -0.6719138 0.37785691 -0.70144093
		 0.013440998 0.71260095 -0.63698983 -0.6719138 0.37785691 -0.34977311 0.097162038
		 0.93178236 -0.34773204 -0.93677914 0.039082002 -0.051230993 0.31823698 0.94662589
		 -0.34773204 -0.93677914 0.039082002 -0.34977311 0.097162038 0.93178236 -0.34773204
		 -0.93677914 0.039082002 -0.051230993 0.31823698 0.94662589 -0.085951 0.043325 0.99535698
		 -0.085951 0.043325 0.99535698 0.14568193 -0.98930454 -0.0072989967 -0.34773204 -0.93677914
		 0.039082002 0.14568193 -0.98930454 -0.0072989967 -0.085951 0.043325 0.99535698 -0.33667302
		 -0.15781802 0.92830211 -0.33667302 -0.15781802 0.92830211 -0.34134802 -0.93980312
		 -0.015870001 0.14568193 -0.98930454 -0.0072989967 -0.34134802 -0.93980312 -0.015870001
		 -0.33667302 -0.15781802 0.92830211 -0.99333346 -0.11385905 -0.018024009 0.038544018
		 0.63176233 0.77420336 0.43315014 -0.30238813 0.8490833 0.16698508 -0.43838421 0.88313943
		 0.43315014 -0.30238813 0.8490833 0.038544018 0.63176233 0.77420336 0.11841799 0.70204896
		 0.70221394 0.039698023 0.99683058 0.068942048 0.11841799 0.70204896 0.70221394 0.038544018
		 0.63176233 0.77420336 0.32864892 -0.069860987 0.94186479 0.43315014 -0.30238813 0.8490833
		 0.11841799 0.70204896 0.70221394 -0.069372974 0.99755263 0.0087299971 0.11841799
		 0.70204896 0.70221394 0.039698023 0.99683058 0.068942048 0.11841799 0.70204896 0.70221394
		 -0.069372974 0.99755263 0.0087299971 -0.23109514 0.71555644 0.65922242 -0.16967602
		 0.94708115 0.27248403 -0.23109514 0.71555644 0.65922242 -0.069372974 0.99755263 0.0087299971
		 -0.15065999 0.60565698 0.78133303 0.11841799 0.70204896 0.70221394 -0.23109514 0.71555644
		 0.65922242 0.11841799 0.70204896 0.70221394 -0.15065999 0.60565698 0.78133303 0.32864892
		 -0.069860987 0.94186479 0.37310687 -0.083062969 0.92406267 0.32864892 -0.069860987
		 0.94186479 -0.15065999 0.60565698 0.78133303 0.32864892 -0.069860987 0.94186479 0.37310687
		 -0.083062969 0.92406267 0.057015993 -0.9941029 -0.092241995 0.36976221 -0.91137856
		 -0.18073511 0.057015993 -0.9941029 -0.092241995 0.37310687 -0.083062969 0.92406267
		 0.60730803 -0.28441504 0.74181205 0.36976221 -0.91137856 -0.18073511 0.37310687 -0.083062969
		 0.92406267 0.36976221 -0.91137856 -0.18073511 0.60730803 -0.28441504 0.74181205 0.55426204
		 -0.26306003 0.78967911 0.55426204 -0.26306003 0.78967911 -0.062752016 -0.88028026
		 -0.47028613 0.36976221 -0.91137856 -0.18073511 -0.062752016 -0.88028026 -0.47028613
		 0.55426204 -0.26306003 0.78967911 -0.4084219 -0.91279274 0.00097099977 -0.26187694
		 -0.3757509 0.88894975 -0.4084219 -0.91279274 0.00097099977 0.55426204 -0.26306003
		 0.78967911 -0.4084219 -0.91279274 0.00097099977 -0.26187694 -0.3757509 0.88894975
		 -0.98916 -0.015685 0.14600199 -0.31969902 0.75289214 0.57527906 -0.26187694 -0.3757509
		 0.88894975 0.55426204 -0.26306003 0.78967911 -0.26187694 -0.3757509 0.88894975 -0.31969902
		 0.75289214 0.57527906 -0.98916 -0.015685 0.14600199 0.55426204 -0.26306003 0.78967911
		 -0.16326299 0.95838302 0.23419499 -0.31969902 0.75289214 0.57527906 -0.16326299 0.95838302
		 0.23419499 0.55426204 -0.26306003 0.78967911 -0.23083109 0.80545932 0.54585016 0.60730803
		 -0.28441504 0.74181205 -0.23083109 0.80545932 0.54585016 0.55426204 -0.26306003 0.78967911
		 -0.23083109 0.80545932 0.54585016 0.60730803 -0.28441504 0.74181205 0.37310687 -0.083062969
		 0.92406267 0.37310687 -0.083062969 0.92406267 -0.50957888 0.61464489 0.6021139;
	setAttr ".n[5810:5975]" -type "float3"  -0.23083109 0.80545932 0.54585016 -0.50957888
		 0.61464489 0.6021139 0.37310687 -0.083062969 0.92406267 -0.15065999 0.60565698 0.78133303
		 -0.15065999 0.60565698 0.78133303 -0.70144093 0.013440998 0.71260095 -0.50957888
		 0.61464489 0.6021139 -0.70144093 0.013440998 0.71260095 -0.15065999 0.60565698 0.78133303
		 -0.23109514 0.71555644 0.65922242 -0.23109514 0.71555644 0.65922242 -0.34977311 0.097162038
		 0.93178236 -0.70144093 0.013440998 0.71260095 -0.34977311 0.097162038 0.93178236
		 -0.23109514 0.71555644 0.65922242 -0.16967602 0.94708115 0.27248403 0.114899 0.62602103
		 0.77129501 -0.051230993 0.31823698 0.94662589 -0.34977311 0.097162038 0.93178236
		 -0.051230993 0.31823698 0.94662589 0.114899 0.62602103 0.77129501 0.14441693 0.98790753
		 0.056412973 0.031534016 0.98642349 -0.16116607 -0.16801402 0.98576111 -0.0068200007
		 -0.051230993 0.31823698 0.94662589 0.031534016 0.98642349 -0.16116607 -0.051230993
		 0.31823698 0.94662589 -0.16801402 0.98576111 -0.0068200007 -0.085951 0.043325 0.99535698
		 -0.58307201 0.81151497 -0.038348 -0.085951 0.043325 0.99535698 -0.16801402 0.98576111
		 -0.0068200007 -0.085951 0.043325 0.99535698 -0.58307201 0.81151497 -0.038348 -0.33667302
		 -0.15781802 0.92830211 -0.99333346 -0.11385905 -0.018024009 -0.33667302 -0.15781802
		 0.92830211 -0.58307201 0.81151497 -0.038348 -0.50957888 0.61464489 0.6021139 -0.95756549
		 0.17409609 -0.2296931 -0.23083109 0.80545932 0.54585016 -0.95756549 0.17409609 -0.2296931
		 -0.50957888 0.61464489 0.6021139 -0.70144093 0.013440998 0.71260095 -0.29870501 -0.53053701
		 -0.79328799 0.079831995 -0.92871088 0.36210898 -0.8492406 -0.4673028 0.24580188 0.079831995
		 -0.92871088 0.36210898 -0.29870501 -0.53053701 -0.79328799 0.31395096 -0.82871389
		 0.46332294 -0.17279105 -0.17341004 -0.96957326 0.31395096 -0.82871389 0.46332294
		 -0.29870501 -0.53053701 -0.79328799 0.31395096 -0.82871389 0.46332294 -0.17279105
		 -0.17341004 -0.96957326 -0.21045998 -0.95049989 -0.22859697 -0.29870501 -0.53053701
		 -0.79328799 -0.75120533 0.58994025 -0.29607612 -0.17279105 -0.17341004 -0.96957326
		 -0.75120533 0.58994025 -0.29607612 -0.29870501 -0.53053701 -0.79328799 -0.8492406
		 -0.4673028 0.24580188 -0.24779905 0.059279013 0.96699625 -0.75120533 0.58994025 -0.29607612
		 -0.8492406 -0.4673028 0.24580188 -0.75120533 0.58994025 -0.29607612 -0.24779905 0.059279013
		 0.96699625 -0.32049912 0.63332725 0.70439821 -0.39862207 0.80761909 -0.43457106 -0.75120533
		 0.58994025 -0.29607612 -0.32049912 0.63332725 0.70439821 -0.75120533 0.58994025 -0.29607612
		 -0.39862207 0.80761909 -0.43457106 -0.17279105 -0.17341004 -0.96957326 -0.31590712
		 0.45397314 0.83313328 -0.39862207 0.80761909 -0.43457106 -0.32049912 0.63332725 0.70439821
		 -0.065877974 0.067313977 -0.99555463 -0.17279105 -0.17341004 -0.96957326 -0.39862207
		 0.80761909 -0.43457106 -0.17279105 -0.17341004 -0.96957326 -0.065877974 0.067313977
		 -0.99555463 -0.21045998 -0.95049989 -0.22859697 0.024649005 -0.096742019 -0.99500424
		 -0.21045998 -0.95049989 -0.22859697 -0.065877974 0.067313977 -0.99555463 -0.065877974
		 0.067313977 -0.99555463 -0.09792196 0.82103372 -0.56241882 0.024649005 -0.096742019
		 -0.99500424 -0.09792196 0.82103372 -0.56241882 -0.065877974 0.067313977 -0.99555463
		 -0.39862207 0.80761909 -0.43457106 -0.31590712 0.45397314 0.83313328 -0.09792196
		 0.82103372 -0.56241882 -0.39862207 0.80761909 -0.43457106 -0.09792196 0.82103372
		 -0.56241882 -0.31590712 0.45397314 0.83313328 -0.073182002 0.76575601 0.63895398
		 -0.015689991 0.82176554 -0.56960964 0.048270009 0.76969516 -0.63658416 -0.044491999
		 0.81601501 0.576316 -0.30331215 0.91871339 0.25291812 0.048270009 0.76969516 -0.63658416
		 -0.015689991 0.82176554 -0.56960964 0.024649005 -0.096742019 -0.99500424 -0.29559085
		 -0.95480651 0.031153984 -0.86512911 -0.49729106 0.065217011 -0.45252213 -0.89157426
		 0.017866004 -0.86512911 -0.49729106 0.065217011 -0.29559085 -0.95480651 0.031153984
		 -0.20750603 0.36047202 -0.90939611 -0.18836802 0.16495101 -0.9681471 -0.20750603
		 0.36047202 -0.90939611 -0.29559085 -0.95480651 0.031153984 0.092328995 -0.99520087
		 -0.032411996 -0.18836802 0.16495101 -0.9681471 -0.29559085 -0.95480651 0.031153984
		 -0.18836802 0.16495101 -0.9681471 0.092328995 -0.99520087 -0.032411996 -0.40691215
		 -0.25016508 -0.87854427 -0.27315199 -0.96142697 0.032347001 -0.40691215 -0.25016508
		 -0.87854427 0.092328995 -0.99520087 -0.032411996 -0.40691215 -0.25016508 -0.87854427
		 -0.27315199 -0.96142697 0.032347001 -0.93853235 -0.34091911 0.054142017 -0.25902486
		 -0.43887773 -0.86040246 0.36635682 -0.93047261 0.001845999 -0.5680691 -0.81125116
		 0.13845202 0.36635682 -0.93047261 0.001845999 -0.25902486 -0.43887773 -0.86040246
		 0.31414583 -0.93246245 0.17839889 -0.32459399 -0.027965 -0.94543999 0.31414583 -0.93246245
		 0.17839889 -0.25902486 -0.43887773 -0.86040246 0.31414583 -0.93246245 0.17839889
		 -0.32459399 -0.027965 -0.94543999 -0.27845192 -0.95734864 -0.07712397 -0.16339101
		 0.17744702 -0.9704721 -0.27845192 -0.95734864 -0.07712397 -0.32459399 -0.027965 -0.94543999
		 -0.27845192 -0.95734864 -0.07712397 -0.16339101 0.17744702 -0.9704721 -0.55053914
		 -0.74626917 -0.37415108 0.36635682 -0.93047261 0.001845999 0.0017420002 -0.30857304
		 0.95119911 -0.5680691 -0.81125116 0.13845202 0.0017420002 -0.30857304 0.95119911
		 0.36635682 -0.93047261 0.001845999 0.31414583 -0.93246245 0.17839889 0.31414583 -0.93246245
		 0.17839889 -0.05391198 0.28748491 0.95626664 0.0017420002 -0.30857304 0.95119911
		 -0.05391198 0.28748491 0.95626664 0.31414583 -0.93246245 0.17839889 -0.060677029
		 0.083861038 0.99462849 -0.27845192 -0.95734864 -0.07712397 -0.060677029 0.083861038
		 0.99462849 0.31414583 -0.93246245 0.17839889 -0.060677029 0.083861038 0.99462849
		 -0.27845192 -0.95734864 -0.07712397 -0.86512911 -0.49729106 0.065217011 -0.55053914
		 -0.74626917 -0.37415108 -0.86512911 -0.49729106 0.065217011 -0.27845192 -0.95734864
		 -0.07712397 -0.63698983 -0.6719138 0.37785691;
	setAttr ".n[5976:6085]" -type "float3"  -0.93453914 -0.35451102 0.030961003 -0.45252213
		 -0.89157426 0.017866004 -0.04721399 0.98477274 0.16731295 0.16461898 0.46193993 0.8714999
		 0.10446902 0.43395105 0.89485914 0.11892306 0.9569425 0.26479912 -0.043535013 0.56241512
		 -0.82570815 -0.04721399 0.98477274 0.16731295 0.11892306 0.9569425 0.26479912 0.056788009
		 0.67466307 -0.73593807 -0.113111 0.99265403 0.042941999 -0.08588101 0.40869805 0.90862012
		 -0.081462026 0.47805113 0.87454617 -0.0044559985 0.99722767 0.074276969 0.055304993
		 0.42980394 -0.90122688 -0.113111 0.99265403 0.042941999 -0.0044559985 0.99722767
		 0.074276969 0.11653002 0.53304607 -0.83802313 0.048270009 0.76969516 -0.63658416
		 -0.09792196 0.82103372 -0.56241882 -0.073182002 0.76575601 0.63895398 -0.044491999
		 0.81601501 0.576316 -0.09792196 0.82103372 -0.56241882 0.048270009 0.76969516 -0.63658416
		 0.024649005 -0.096742019 -0.99500424 -0.16967602 0.94708115 0.27248403 -0.27054608
		 0.69719523 -0.66387022 0.069109 0.482649 -0.873083 0.14441693 0.98790753 0.056412973
		 0.114899 0.62602103 0.77129501 -0.16967602 0.94708115 0.27248403 0.14441693 0.98790753
		 0.056412973 -0.16967602 0.94708115 0.27248403 0.114899 0.62602103 0.77129501 -0.34977311
		 0.097162038 0.93178236 -0.11561 0.27460799 -0.95458102 0.062685996 0.47266299 -0.87901098
		 -0.93453914 -0.35451102 0.030961003 -0.93453914 -0.35451102 0.030961003 0.062685996
		 0.47266299 -0.87901098 0.069109 0.482649 -0.873083 -0.27054608 0.69719523 -0.66387022
		 -0.93453914 -0.35451102 0.030961003 0.069109 0.482649 -0.873083 -0.45524099 0.88599598
		 -0.088128999 -0.088117033 0.98321635 0.15975305 -0.36184901 0.831294 0.42191899 -0.45524099
		 0.88599598 -0.088128999 -0.36184901 0.831294 0.42191899 -0.93453914 -0.35451102 0.030961003
		 -0.27054608 0.69719523 -0.66387022 -0.93453914 -0.35451102 0.030961003 -0.36184901
		 0.831294 0.42191899 0.10446902 0.43395105 0.89485914 0.16461898 0.46193993 0.8714999
		 -0.93453914 -0.35451102 0.030961003 0.10446902 0.43395105 0.89485914 -0.93453914
		 -0.35451102 0.030961003 0.16461898 0.46193993 0.8714999 -0.025983006 0.24792705 0.96843022
		 -0.043535013 0.56241512 -0.82570815 -0.86512911 -0.49729106 0.065217011 -0.20750603
		 0.36047202 -0.90939611 -0.86512911 -0.49729106 0.065217011 -0.043535013 0.56241512
		 -0.82570815 0.056788009 0.67466307 -0.73593807 -0.86512911 -0.49729106 0.065217011
		 0.056788009 0.67466307 -0.73593807 -0.20627403 0.96641713 -0.15326102 -0.27387989
		 0.93377161 0.2303489 -0.10177094 0.99350452 -0.050905973 -0.31848297 0.68641394 0.65376192
		 -0.27387989 0.93377161 0.2303489 -0.31848297 0.68641394 0.65376192 -0.86512911 -0.49729106
		 0.065217011 -0.20627403 0.96641713 -0.15326102 -0.86512911 -0.49729106 0.065217011
		 -0.31848297 0.68641394 0.65376192 -0.081462026 0.47805113 0.87454617 -0.08588101
		 0.40869805 0.90862012 -0.86512911 -0.49729106 0.065217011 -0.081462026 0.47805113
		 0.87454617 -0.86512911 -0.49729106 0.065217011 -0.08588101 0.40869805 0.90862012
		 -0.060677029 0.083861038 0.99462849 -0.16339101 0.17744702 -0.9704721 0.055304993
		 0.42980394 -0.90122688 -0.55053914 -0.74626917 -0.37415108 -0.55053914 -0.74626917
		 -0.37415108 0.055304993 0.42980394 -0.90122688 0.11653002 0.53304607 -0.83802313
		 -0.30234104 0.81044114 -0.50177205 -0.55053914 -0.74626917 -0.37415108 0.11653002
		 0.53304607 -0.83802313 -0.28589907 0.95465821 -0.08300402 -0.015689991 0.82176554
		 -0.56960964 -0.30331215 0.91871339 0.25291812 -0.55053914 -0.74626917 -0.37415108
		 -0.30234104 0.81044114 -0.50177205 -0.28589907 0.95465821 -0.08300402 -0.30331215
		 0.91871339 0.25291812 -0.044491999 0.81601501 0.576316 -0.55053914 -0.74626917 -0.37415108
		 -0.30331215 0.91871339 0.25291812 -0.073182002 0.76575601 0.63895398 -0.55053914
		 -0.74626917 -0.37415108 -0.044491999 0.81601501 0.576316 -0.31590712 0.45397314 0.83313328
		 -0.55053914 -0.74626917 -0.37415108 -0.073182002 0.76575601 0.63895398;
	setAttr -s 2011 -ch 6086 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 1 0 2
		f 3 3 4 -3
		mu 0 3 2 3 1
		f 3 -4 5 6
		mu 0 3 3 2 4
		f 3 7 8 -7
		mu 0 3 4 6 3
		f 3 -8 9 10
		mu 0 3 6 4 5
		f 3 11 12 -11
		mu 0 3 5 7 6
		f 3 13 -13 14
		mu 0 3 13 6 7
		f 3 15 -14 16
		mu 0 3 8 6 13
		f 3 -15 17 18
		mu 0 3 13 7 9
		f 3 19 -17 20
		mu 0 3 10 8 13
		f 3 21 -19 22
		mu 0 3 11 13 9
		f 3 23 -21 24
		mu 0 3 14 10 13
		f 3 -22 25 26
		mu 0 3 13 11 12
		f 3 27 28 -27
		mu 0 3 12 17 13
		f 3 29 -29 30
		mu 0 3 16 13 17
		f 3 -25 -30 31
		mu 0 3 14 13 16
		f 3 32 33 -32
		mu 0 3 16 15 14
		f 3 34 -33 35
		mu 0 3 18 15 16
		f 3 -31 36 -36
		mu 0 3 16 17 18
		f 3 37 38 39
		mu 0 3 949 19 422
		f 3 40 -39 41
		mu 0 3 20 422 19
		f 3 42 43 -42
		mu 0 3 19 21 20
		f 3 44 -44 45
		mu 0 3 23 20 21
		f 3 46 47 -46
		mu 0 3 21 22 23
		f 3 48 49 50
		mu 0 3 947 24 428
		f 3 -49 51 52
		mu 0 3 24 947 25
		f 3 53 54 -53
		mu 0 3 25 28 24
		f 3 -54 55 56
		mu 0 3 28 25 26
		f 3 57 58 -57
		mu 0 3 26 27 28
		f 3 59 60 61
		mu 0 3 944 269 934
		f 3 -60 62 63
		mu 0 3 269 944 29
		f 3 64 65 -64
		mu 0 3 29 268 269
		f 3 -65 66 67
		mu 0 3 268 29 30
		f 3 68 69 -68
		mu 0 3 30 290 268
		f 3 70 -63 71
		mu 0 3 943 31 438
		f 3 -71 72 73
		mu 0 3 31 943 33
		f 3 74 -67 -74
		mu 0 3 33 32 31
		f 3 -69 -75 75
		mu 0 3 34 32 33
		f 3 76 77 -76
		mu 0 3 33 36 34
		f 3 78 -77 79
		mu 0 3 942 36 33
		f 3 -73 80 -80
		mu 0 3 33 943 942
		f 3 81 -78 82
		mu 0 3 35 34 36
		f 3 83 84 -83
		mu 0 3 36 941 35
		f 3 85 -85 86
		mu 0 3 37 35 941
		f 3 87 -84 -79
		mu 0 3 942 941 36
		f 3 88 -87 89
		mu 0 3 920 37 941
		f 3 90 91 92
		mu 0 3 42 38 39
		f 3 93 94 -93
		mu 0 3 39 40 42
		f 3 95 -94 96
		mu 0 3 46 40 39
		f 3 97 98 -97
		mu 0 3 39 47 46
		f 3 -96 99 100
		mu 0 3 40 46 44
		f 3 101 -95 -101
		mu 0 3 44 42 40
		f 3 -91 -102 102
		mu 0 3 41 42 44
		f 3 -100 103 104
		mu 0 3 44 46 45
		f 3 105 106 -105
		mu 0 3 45 49 44
		f 3 107 -107 108
		mu 0 3 43 44 49
		f 3 109 -106 110
		mu 0 3 47 49 45
		f 3 -104 -99 -111
		mu 0 3 45 46 47
		f 3 -109 -110 111
		mu 0 3 48 49 47
		f 3 112 113 114
		mu 0 3 52 50 51
		f 3 115 116 -115
		mu 0 3 51 65 52
		f 3 117 -116 118
		mu 0 3 66 65 51
		f 3 -117 119 120
		mu 0 3 52 65 64
		f 3 121 122 -121
		mu 0 3 64 53 52
		f 3 -122 123 124
		mu 0 3 53 64 63
		f 3 125 126 -125
		mu 0 3 63 54 53
		f 3 -126 127 128
		mu 0 3 54 63 62
		f 3 129 130 -129
		mu 0 3 62 55 54
		f 3 -130 131 132
		mu 0 3 55 62 61
		f 3 133 134 -133
		mu 0 3 61 56 55
		f 3 135 -134 136
		mu 0 3 57 56 61
		f 3 137 138 -137
		mu 0 3 61 60 57
		f 3 139 -139 140
		mu 0 3 58 57 60
		f 3 141 -114 -141
		mu 0 3 60 59 58
		f 3 -142 142 143
		mu 0 3 59 60 73
		f 3 144 -119 -144
		mu 0 3 73 74 59
		f 3 145 -143 146
		mu 0 3 72 73 60
		f 3 -138 147 -147
		mu 0 3 60 61 72
		f 3 148 -148 -132
		mu 0 3 62 72 61
		f 3 149 -149 150
		mu 0 3 71 72 62
		f 3 -128 151 -151
		mu 0 3 62 63 71
		f 3 152 -152 153
		mu 0 3 70 71 63
		f 3 -124 154 -154
		mu 0 3 63 64 70
		f 3 155 -155 156
		mu 0 3 69 70 64
		f 3 -120 157 -157
		mu 0 3 64 65 69
		f 3 158 -158 159
		mu 0 3 68 69 65
		f 3 -118 160 -160
		mu 0 3 65 66 68
		f 3 161 -161 162
		mu 0 3 67 68 66
		f 3 163 -162 164
		mu 0 3 81 68 67
		f 3 165 166 -165
		mu 0 3 67 82 81
		f 3 -164 167 168
		mu 0 3 68 81 80
		f 3 169 -159 -169
		mu 0 3 80 69 68
		f 3 -170 170 171
		mu 0 3 69 80 79
		f 3 172 -156 -172
		mu 0 3 79 70 69
		f 3 -173 173 174
		mu 0 3 70 79 78
		f 3 175 -153 -175
		mu 0 3 78 71 70
		f 3 -176 176 177
		mu 0 3 71 78 77
		f 3 178 -150 -178
		mu 0 3 77 72 71
		f 3 -179 179 180
		mu 0 3 72 77 76
		f 3 181 -146 -181
		mu 0 3 76 73 72
		f 3 -145 -182 182
		mu 0 3 74 73 76
		f 3 183 -163 -183
		mu 0 3 76 75 74
		f 3 -166 -184 184
		mu 0 3 90 75 76
		f 3 185 186 -185
		mu 0 3 76 89 90
		f 3 187 -186 188
		mu 0 3 88 89 76
		f 3 -180 189 -189
		mu 0 3 76 77 88
		f 3 190 -190 -177
		mu 0 3 78 88 77
		f 3 191 -191 192
		mu 0 3 87 88 78
		f 3 193 194 -193
		mu 0 3 78 86 87
		f 3 -194 -174 195
		mu 0 3 86 78 79
		f 3 -171 196 -196
		mu 0 3 79 80 86
		f 3 197 -197 198
		mu 0 3 85 86 80
		f 3 199 200 -199
		mu 0 3 80 84 85
		f 3 -200 -168 201
		mu 0 3 84 80 81
		f 3 -167 202 -202
		mu 0 3 81 82 84
		f 3 203 -203 204
		mu 0 3 83 84 82
		f 3 205 -204 206
		mu 0 3 99 84 83
		f 3 207 208 -207
		mu 0 3 83 100 99
		f 3 -206 209 210
		mu 0 3 84 99 98
		f 3 211 -201 -211
		mu 0 3 98 85 84
		f 3 -198 -212 212
		mu 0 3 86 85 98
		f 3 213 214 -213
		mu 0 3 98 97 86
		f 3 -195 -215 215
		mu 0 3 87 86 97
		f 3 216 217 -216
		mu 0 3 97 96 87
		f 3 -192 -218 218
		mu 0 3 88 87 96
		f 3 219 220 -219
		mu 0 3 96 95 88
		f 3 221 -221 222
		mu 0 3 94 88 95
		f 3 -188 -222 223
		mu 0 3 89 88 94
		f 3 224 225 -224
		mu 0 3 94 92 89
		f 3 -187 -226 226
		mu 0 3 90 89 92
		f 3 227 -205 -227
		mu 0 3 92 91 90
		f 3 -208 -228 228
		mu 0 3 93 91 92
		f 3 229 230 -229
		mu 0 3 92 105 93
		f 3 231 -230 -225
		mu 0 3 94 105 92
		f 3 232 -231 233
		mu 0 3 106 93 105
		f 3 234 -232 235
		mu 0 3 104 105 94
		f 3 -223 236 -236
		mu 0 3 94 95 104
		f 3 237 -237 -220
		mu 0 3 96 104 95
		f 3 238 -238 239
		mu 0 3 103 104 96
		f 3 -217 240 -240
		mu 0 3 96 97 103
		f 3 241 -241 242
		mu 0 3 102 103 97
		f 3 -214 243 -243
		mu 0 3 97 98 102
		f 3 244 -244 245
		mu 0 3 101 102 98
		f 3 -210 246 -246
		mu 0 3 98 99 101
		f 3 247 -247 -209
		mu 0 3 100 101 99
		f 3 248 -248 249
		mu 0 3 114 101 100
		f 3 -233 250 -250
		mu 0 3 100 115 114
		f 3 -245 -249 251
		mu 0 3 102 101 114
		f 3 252 253 -252
		mu 0 3 114 113 102
		f 3 -242 -254 254
		mu 0 3 103 102 113
		f 3 255 256 -255
		mu 0 3 113 112 103
		f 3 -239 -257 257
		mu 0 3 104 103 112
		f 3 258 259 -258
		mu 0 3 112 111 104
		f 3 260 -260 261
		mu 0 3 107 104 111
		f 3 -235 -261 262
		mu 0 3 105 104 107
		f 3 263 -234 -263
		mu 0 3 107 106 105
		f 3 264 -264 265
		mu 0 3 108 106 107
		f 3 266 267 -266
		mu 0 3 107 110 108
		f 3 268 -267 -262
		mu 0 3 111 110 107
		f 3 269 -268 270
		mu 0 3 109 108 110
		f 3 271 272 -271
		mu 0 3 110 401 109
		f 3 273 -272 274
		mu 0 3 120 401 110
		f 3 -269 275 -275
		mu 0 3 110 111 120
		f 3 276 -276 -259
		mu 0 3 112 120 111
		f 3 277 -277 278
		mu 0 3 119 120 112
		f 3 279 280 -279
		mu 0 3 112 118 119
		f 3 -280 -256 281
		mu 0 3 118 112 113
		f 3 282 283 -282
		mu 0 3 113 116 118
		f 3 -283 -253 284
		mu 0 3 116 113 114
		f 3 -251 285 -285
		mu 0 3 114 115 116
		f 3 286 -286 -265
		mu 0 3 117 116 115
		f 3 -287 287 288
		mu 0 3 116 117 400
		f 3 289 -284 -289
		mu 0 3 400 118 116
		f 3 -288 -270 290
		mu 0 3 978 982 981
		f 3 -290 291 292
		mu 0 3 118 400 396
		f 3 293 -281 -293
		mu 0 3 396 119 118
		f 3 -294 294 295
		mu 0 3 119 396 394
		f 3 296 297 -296
		mu 0 3 394 398 119
		f 3 -278 -298 298
		mu 0 3 120 119 398
		f 3 299 -274 -299
		mu 0 3 398 401 120
		f 3 300 -123 301
		mu 0 3 123 121 122
		f 3 302 303 -302
		mu 0 3 122 130 123
		f 3 -303 -127 304
		mu 0 3 130 122 132
		f 3 -304 305 306
		mu 0 3 123 130 129
		f 3 307 308 -307
		mu 0 3 129 124 123
		f 3 -308 309 310
		mu 0 3 124 129 128
		f 3 311 312 -311
		mu 0 3 128 125 124
		f 3 -2 -312 313
		mu 0 3 126 125 128
		f 3 314 -6 -314
		mu 0 3 128 127 126
		f 3 -315 315 316
		mu 0 3 127 128 135
		f 3 317 -10 -317
		mu 0 3 135 136 127
		f 3 318 -316 319
		mu 0 3 134 135 128
		f 3 -310 320 -320
		mu 0 3 128 129 134
		f 3 321 -321 -306
		mu 0 3 130 134 129
		f 3 322 -322 323
		mu 0 3 131 134 130
		f 3 -305 324 -324
		mu 0 3 130 132 131
		f 3 325 -323 326
		mu 0 3 133 134 131
		f 3 -325 327 -327
		mu 0 3 131 132 133
		f 3 328 -328 -131
		mu 0 3 141 133 132
		f 3 -329 329 330
		mu 0 3 133 141 140
		f 3 331 -326 -331
		mu 0 3 140 134 133
		f 3 -332 332 333
		mu 0 3 134 140 137
		f 3 334 -319 -334
		mu 0 3 137 135 134
		f 3 -318 -335 335
		mu 0 3 136 135 137
		f 3 336 -12 -336
		mu 0 3 137 138 136
		f 3 337 -337 338
		mu 0 3 139 138 137
		f 3 -333 339 -339
		mu 0 3 137 140 139
		f 3 -338 340 341
		mu 0 3 138 139 148
		f 3 342 -18 -342
		mu 0 3 148 149 138
		f 3 343 -341 344
		mu 0 3 147 148 139
		f 3 -340 345 -345
		mu 0 3 139 140 147
		f 3 346 -346 347
		mu 0 3 146 147 140
		f 3 348 349 -348
		mu 0 3 140 143 146
		f 3 -349 -330 350
		mu 0 3 143 140 141
		f 3 -135 351 -351
		mu 0 3 141 142 143
		f 3 352 -352 -136
		mu 0 3 144 143 142
		f 3 -353 353 354
		mu 0 3 143 144 145
		f 3 355 -350 -355
		mu 0 3 145 146 143
		f 3 356 -354 357
		mu 0 3 160 145 144
		f 3 -140 358 -358
		mu 0 3 144 162 160
		f 3 -357 359 360
		mu 0 3 145 160 159
		f 3 361 362 -361
		mu 0 3 159 155 145
		f 3 363 -363 364
		mu 0 3 157 145 155
		f 3 -356 -364 365
		mu 0 3 146 145 157
		f 3 366 367 -366
		mu 0 3 157 154 146
		f 3 368 -368 369
		mu 0 3 152 146 154
		f 3 -347 -369 370
		mu 0 3 147 146 152
		f 3 371 372 -371
		mu 0 3 152 151 147
		f 3 -344 -373 373
		mu 0 3 148 147 151
		f 3 374 375 -374
		mu 0 3 151 150 148
		f 3 -343 -376 376
		mu 0 3 149 148 150
		f 3 377 -23 -377
		mu 0 3 150 174 149
		f 3 378 -378 379
		mu 0 3 176 174 150
		f 3 -375 380 -380
		mu 0 3 150 151 176
		f 3 381 -381 -372
		mu 0 3 152 176 151
		f 3 382 -382 383
		mu 0 3 177 176 152
		f 3 384 385 -384
		mu 0 3 152 181 177
		f 3 386 -385 387
		mu 0 3 153 181 152
		f 3 -370 388 -388
		mu 0 3 152 154 153
		f 3 389 -389 390
		mu 0 3 182 153 154
		f 3 -387 -390 391
		mu 0 3 181 153 182
		f 3 -24 -391 392
		mu 0 3 156 182 154
		f 3 -367 393 -393
		mu 0 3 154 157 156
		f 3 -20 -394 -365
		mu 0 3 155 156 157
		f 3 -16 -362 394
		mu 0 3 158 155 159
		f 3 395 -9 -395
		mu 0 3 159 168 158
		f 3 396 -396 397
		mu 0 3 167 168 159
		f 3 398 399 -398
		mu 0 3 159 166 167
		f 3 -399 -360 400
		mu 0 3 166 159 160
		f 3 401 402 -401
		mu 0 3 160 161 166
		f 3 -402 -359 403
		mu 0 3 161 160 162
		f 3 404 405 -404
		mu 0 3 162 165 161
		f 3 -403 -406 406
		mu 0 3 166 161 165
		f 3 407 -405 408
		mu 0 3 164 165 162
		f 3 -113 -301 -409
		mu 0 3 162 163 164
		f 3 -408 -309 409
		mu 0 3 165 164 173
		f 3 410 411 -410
		mu 0 3 173 172 165
		f 3 -407 -412 412
		mu 0 3 166 165 172
		f 3 413 414 -413
		mu 0 3 172 171 166
		f 3 -400 -415 415
		mu 0 3 167 166 171
		f 3 416 -397 -416
		mu 0 3 171 168 167
		f 3 -5 -417 417
		mu 0 3 169 168 171
		f 3 418 -1 -418
		mu 0 3 171 170 169
		f 3 -313 -419 419
		mu 0 3 173 170 171
		f 3 -414 -411 -420
		mu 0 3 171 172 173
		f 3 -26 -379 420
		mu 0 3 175 174 176
		f 3 421 -28 -421
		mu 0 3 176 178 175
		f 3 -422 -383 422
		mu 0 3 178 176 177
		f 3 423 424 -423
		mu 0 3 177 179 178
		f 3 425 -424 -386
		mu 0 3 181 179 177
		f 3 -37 -425 426
		mu 0 3 180 178 179
		f 3 -426 427 -427
		mu 0 3 179 181 180
		f 3 -35 -428 428
		mu 0 3 183 180 181
		f 3 -392 -34 -429
		mu 0 3 181 182 183
		f 3 429 430 431
		mu 0 3 185 184 186
		f 3 432 433 -432
		mu 0 3 186 187 185
		f 3 434 -434 435
		mu 0 3 197 185 187
		f 3 -433 436 437
		mu 0 3 187 186 188
		f 3 438 -436 439
		mu 0 3 194 197 187
		f 3 -438 440 441
		mu 0 3 187 188 190
		f 3 442 -440 -442
		mu 0 3 190 194 187
		f 3 -441 443 444
		mu 0 3 190 188 189
		f 3 445 446 -445
		mu 0 3 189 940 190
		f 3 -446 447 448
		mu 0 3 940 189 602
		f 3 449 -447 450
		mu 0 3 939 190 940
		f 3 -450 451 452
		mu 0 3 190 939 192
		f 3 453 -443 -453
		mu 0 3 192 194 190
		f 3 454 -452 455
		mu 0 3 889 192 939
		f 3 -455 456 457
		mu 0 3 192 889 191
		f 3 458 459 -458
		mu 0 3 191 193 192
		f 3 -454 -460 460
		mu 0 3 194 192 193
		f 3 461 462 -461
		mu 0 3 193 195 194
		f 3 -439 -463 463
		mu 0 3 197 194 195
		f 3 464 465 -464
		mu 0 3 195 196 197
		f 3 -431 475 476
		mu 0 3 200 198 199
		f 3 477 478 -477
		mu 0 3 199 202 200
		f 3 479 -479 480
		mu 0 3 212 200 202
		f 3 -437 -480 481
		mu 0 3 214 200 212
		f 3 482 -481 483
		mu 0 3 201 212 202
		f 3 484 -98 -484
		mu 0 3 202 203 201
		f 3 -485 485 486
		mu 0 3 203 202 204
		f 3 487 -112 -487
		mu 0 3 204 206 203
		f 3 -488 488 489
		mu 0 3 206 204 205
		f 3 490 491 -490
		mu 0 3 205 222 206
		f 3 492 -491 493
		mu 0 3 223 222 205
		f 3 -492 494 495
		mu 0 3 206 222 207
		f 3 496 -108 -496
		mu 0 3 207 210 206
		f 3 497 -495 498
		mu 0 3 231 207 222
		f 3 -497 499 500
		mu 0 3 210 207 208
		f 3 501 502 -501
		mu 0 3 208 209 210
		f 3 503 -503 504
		mu 0 3 219 210 209
		f 3 -103 -504 505
		mu 0 3 211 210 219
		f 3 506 507 -506
		mu 0 3 219 221 211
		f 3 508 -508 509
		mu 0 3 212 211 221
		f 3 -92 -509 -483
		mu 0 3 201 211 212
		f 3 -482 -510 510
		mu 0 3 214 212 221
		f 3 511 512 -511
		mu 0 3 221 218 214
		f 3 513 -513 514
		mu 0 3 216 214 218
		f 3 -444 -514 515
		mu 0 3 213 214 216
		f 3 516 517 518
		mu 0 3 217 215 216
		f 3 -515 519 -519
		mu 0 3 216 218 217
		f 3 520 -520 521
		mu 0 3 220 217 218
		f 3 -512 522 -522
		mu 0 3 218 221 220
		f 3 523 -523 -507
		mu 0 3 219 220 221
		f 3 524 -499 525
		mu 0 3 232 231 222
		f 3 -493 526 -526
		mu 0 3 222 223 232
		f 3 527 -527 528
		mu 0 3 224 232 223
		f 3 529 -528 530
		mu 0 3 229 232 224
		f 3 531 532 -531
		mu 0 3 224 225 229
		f 3 533 -533 534
		mu 0 3 226 229 225
		f 3 -534 535 536
		mu 0 3 229 226 227
		f 3 537 538 -537
		mu 0 3 227 228 229
		f 3 539 -539 540
		mu 0 3 230 229 228
		f 3 -530 -540 541
		mu 0 3 232 229 230
		f 3 542 543 -542
		mu 0 3 230 233 232
		f 3 -525 -544 544
		mu 0 3 231 232 233
		f 3 -536 545 546
		mu 0 3 235 234 236
		f 3 547 548 -547
		mu 0 3 236 238 235
		f 3 -538 -549 549
		mu 0 3 237 235 238
		f 3 550 -548 551
		mu 0 3 909 238 236
		f 3 -550 552 553
		mu 0 3 237 238 239
		f 3 554 -541 -554
		mu 0 3 239 240 237
		f 3 555 -553 556
		mu 0 3 938 239 238
		f 3 -551 557 -557
		mu 0 3 238 909 938
		f 3 558 -556 559
		mu 0 3 925 239 938
		f 3 -559 560 561
		mu 0 3 239 925 285
		f 3 562 -555 -562
		mu 0 3 285 240 239
		f 3 -563 563 564
		mu 0 3 240 285 284
		f 3 565 -543 -565
		mu 0 3 284 241 240
		f 3 -566 566 567
		mu 0 3 241 284 279
		f 3 568 -545 -568
		mu 0 3 279 242 241
		f 3 -569 569 570
		mu 0 3 242 279 261
		f 3 571 -498 -571
		mu 0 3 261 243 242
		f 3 -500 -572 572
		mu 0 3 244 243 261
		f 3 573 574 -573
		mu 0 3 261 246 244
		f 3 -502 -575 575
		mu 0 3 245 244 246
		f 3 576 577 -576
		mu 0 3 246 247 245
		f 3 -505 -578 578
		mu 0 3 248 245 247
		f 3 579 -577 580
		mu 0 3 260 247 246
		f 3 -574 581 -581
		mu 0 3 246 261 260
		f 3 -580 582 583
		mu 0 3 247 260 259
		f 3 584 585 -584
		mu 0 3 259 258 247
		f 3 -579 -586 586
		mu 0 3 248 247 258
		f 3 587 -524 -587
		mu 0 3 258 249 248
		f 3 -588 588 589
		mu 0 3 249 258 257
		f 3 590 -521 -590
		mu 0 3 257 250 249
		f 3 -591 591 592
		mu 0 3 250 257 256
		f 3 593 -517 -593
		mu 0 3 256 251 250
		f 3 -594 594 595
		mu 0 3 251 256 253
		f 3 596 597 -596
		mu 0 3 253 252 251
		f 3 -448 -597 598
		mu 0 3 936 252 253
		f 3 599 600 -599
		mu 0 3 253 254 936
		f 3 601 -601 602
		mu 0 3 935 936 254
		f 3 603 -600 604
		mu 0 3 255 254 253
		f 3 -595 605 -605
		mu 0 3 253 256 255
		f 3 -603 -604 606
		mu 0 3 935 254 255
		f 3 607 608 -607
		mu 0 3 255 924 935
		f 3 609 -608 610
		mu 0 3 288 924 255
		f 3 611 612 -611
		mu 0 3 255 289 288
		f 3 -612 -606 613
		mu 0 3 289 255 256
		f 3 -592 614 -614
		mu 0 3 256 257 289
		f 3 615 -615 616
		mu 0 3 290 289 257
		f 3 -589 617 -617
		mu 0 3 257 258 290
		f 3 618 -618 619
		mu 0 3 267 290 258
		f 3 -585 620 -620
		mu 0 3 258 259 267
		f 3 621 -621 622
		mu 0 3 266 267 259
		f 3 623 624 -623
		mu 0 3 259 265 266
		f 3 -624 -583 625
		mu 0 3 265 259 260
		f 3 626 627 -626
		mu 0 3 260 263 265
		f 3 -627 -582 628
		mu 0 3 263 260 261
		f 3 629 630 -629
		mu 0 3 261 262 263
		f 3 631 -630 632
		mu 0 3 277 262 261
		f 3 -570 633 -633
		mu 0 3 261 279 277
		f 3 -632 634 635
		mu 0 3 262 277 276
		f 3 636 -631 -636
		mu 0 3 276 263 262
		f 3 -637 637 638
		mu 0 3 263 276 264
		f 3 639 -628 -639
		mu 0 3 264 265 263
		f 3 640 -640 641
		mu 0 3 274 265 264
		f 3 -638 642 -642
		mu 0 3 264 276 274
		f 3 -641 643 644
		mu 0 3 265 274 273
		f 3 645 646 -645
		mu 0 3 273 272 265
		f 3 -625 -647 647
		mu 0 3 266 265 272
		f 3 648 649 -648
		mu 0 3 272 271 266
		f 3 -622 -650 650
		mu 0 3 267 266 271
		f 3 651 652 -651
		mu 0 3 271 270 267
		f 3 653 -653 654
		mu 0 3 268 267 270
		f 3 -619 -654 -70
		mu 0 3 290 267 268
		f 3 -66 -655 655
		mu 0 3 269 268 270
		f 3 656 -61 -656
		mu 0 3 270 934 269
		f 3 657 -657 658
		mu 0 3 933 934 270
		f 4 -652 659 660 -659
		mu 0 4 270 271 884 933
		f 4 661 662 663 664
		mu 0 4 283 929 883 271
		f 3 665 666 -665
		mu 0 3 271 399 283
		f 3 -666 -649 667
		mu 0 3 399 271 272
		f 3 668 669 -668
		mu 0 3 272 282 399
		f 3 -669 -646 670
		mu 0 3 282 272 273
		f 3 671 672 -671
		mu 0 3 273 281 282
		f 3 673 -672 674
		mu 0 3 275 281 273
		f 3 -644 675 -675
		mu 0 3 273 274 275
		f 3 676 -676 -643
		mu 0 3 276 275 274
		f 3 -677 677 678
		mu 0 3 275 276 278
		f 3 679 -674 -679
		mu 0 3 278 281 275
		f 3 -678 -635 680
		mu 0 3 278 276 277
		f 3 -634 681 -681
		mu 0 3 277 279 278
		f 3 682 -682 683
		mu 0 3 280 278 279
		f 3 -680 -683 684
		mu 0 3 281 278 280
		f 3 685 -684 -567
		mu 0 3 284 280 279
		f 3 686 -685 687
		mu 0 3 928 281 280
		f 3 -686 688 -688
		mu 0 3 280 284 928
		f 3 -687 689 690
		mu 0 3 281 928 932
		f 3 691 -673 -691
		mu 0 3 932 282 281
		f 3 -692 692 693
		mu 0 3 282 932 931
		f 3 694 -670 -694
		mu 0 3 931 399 282
		f 4 -695 695 696 697
		mu 0 4 399 931 930 881
		f 4 -667 698 699 -662
		mu 0 4 283 399 882 929
		f 3 700 -689 701
		mu 0 3 927 928 284
		f 3 -564 702 -702
		mu 0 3 284 285 927
		f 3 703 -703 704
		mu 0 3 926 927 285
		f 3 -561 705 -705
		mu 0 3 285 925 926
		f 3 -610 706 707
		mu 0 3 924 288 923
		f 3 -707 708 709
		mu 0 3 923 288 922
		f 3 710 711 712
		mu 0 3 287 921 922
		f 3 -709 713 -713
		mu 0 3 922 288 287
		f 3 -89 -711 714
		mu 0 3 291 921 287
		f 3 -714 715 716
		mu 0 3 287 288 292
		f 3 717 -715 -717
		mu 0 3 292 291 287
		f 3 -716 -613 718
		mu 0 3 292 288 289
		f 3 -616 719 -719
		mu 0 3 289 290 292
		f 3 720 -720 -82
		mu 0 3 293 292 290
		f 3 -718 -721 -86
		mu 0 3 291 292 293
		f 3 721 722 723
		mu 0 3 919 295 744
		f 3 -722 724 725
		mu 0 3 295 919 296
		f 3 -466 726 -726
		mu 0 3 296 294 295
		f 3 727 -725 728
		mu 0 3 918 296 919
		f 3 729 730 731
		mu 0 3 917 298 918
		f 3 -728 -731 -435
		mu 0 3 296 918 298
		f 3 732 -730 733
		mu 0 3 916 298 917
		f 3 734 735 736
		mu 0 3 916 915 297
		f 3 -430 -733 -737
		mu 0 3 297 298 916
		f 3 -476 -736 737
		mu 0 3 301 297 915
		f 3 738 739 -738
		mu 0 3 915 914 301
		f 3 740 741 742
		mu 0 3 914 913 303
		f 3 743 -740 -743
		mu 0 3 303 301 914
		f 3 -478 -744 744
		mu 0 3 302 301 303
		f 3 745 -486 -745
		mu 0 3 303 305 302
		f 3 746 -746 747
		mu 0 3 304 305 303
		f 3 -742 748 -748
		mu 0 3 303 913 304
		f 3 749 -749 750
		mu 0 3 912 304 913
		f 3 -750 751 752
		mu 0 3 304 912 911
		f 3 753 754 755
		mu 0 3 910 306 911
		f 3 -753 -755 756
		mu 0 3 304 911 306
		f 3 757 -747 -757
		mu 0 3 306 305 304
		f 3 -489 -758 758
		mu 0 3 307 305 306
		f 3 759 760 -759
		mu 0 3 306 309 307
		f 3 761 -760 -754
		mu 0 3 910 309 306
		f 3 -494 -761 762
		mu 0 3 308 307 309
		f 3 763 -529 -763
		mu 0 3 309 310 308
		f 3 764 -764 765
		mu 0 3 312 310 309
		f 3 -762 766 -766
		mu 0 3 309 910 312
		f 3 -532 -765 767
		mu 0 3 313 310 312
		f 3 768 -767 769
		mu 0 3 906 312 910
		f 3 -552 770 771
		mu 0 3 908 316 907
		f 3 772 -771 773
		mu 0 3 315 907 316
		f 3 774 -773 775
		mu 0 3 906 907 315
		f 3 776 -769 -776
		mu 0 3 315 312 906
		f 3 -768 -777 777
		mu 0 3 313 312 315
		f 3 778 -535 -778
		mu 0 3 315 314 313
		f 3 -779 -774 -546
		mu 0 3 314 315 316
		f 3 779 780 781
		mu 0 3 905 885 323
		f 3 782 783 -782
		mu 0 3 323 904 905
		f 3 -781 784 785
		mu 0 3 323 885 395
		f 3 -783 786 787
		mu 0 3 904 323 322
		f 3 788 789 -788
		mu 0 3 322 321 904
		f 3 790 -790 791
		mu 0 3 903 904 321
		f 3 792 793 -792
		mu 0 3 321 320 903
		f 3 794 -794 795
		mu 0 3 902 903 320
		f 3 796 797 -796
		mu 0 3 320 319 902
		f 3 798 -798 799
		mu 0 3 901 902 319
		f 3 800 801 -800
		mu 0 3 319 318 901
		f 3 802 -802 803
		mu 0 3 900 901 318;
	setAttr ".fc[500:999]"
		f 3 804 805 806
		mu 0 3 335 888 900
		f 3 -804 807 -807
		mu 0 3 900 318 335
		f 3 808 -808 809
		mu 0 3 334 335 318
		f 3 810 811 -810
		mu 0 3 318 333 334
		f 3 -811 -801 812
		mu 0 3 333 318 319
		f 3 813 814 -813
		mu 0 3 319 332 333
		f 3 -814 -797 815
		mu 0 3 332 319 320
		f 3 816 817 -816
		mu 0 3 320 331 332
		f 3 -817 -793 818
		mu 0 3 331 320 321
		f 3 819 820 -819
		mu 0 3 321 330 331
		f 3 821 -820 822
		mu 0 3 325 330 321
		f 3 -789 823 -823
		mu 0 3 321 322 325
		f 3 824 -824 825
		mu 0 3 324 325 322
		f 3 -787 826 -826
		mu 0 3 322 323 324
		f 3 827 -827 -786
		mu 0 3 395 324 323
		f 3 -828 828 829
		mu 0 3 324 395 326
		f 3 830 -825 -830
		mu 0 3 326 325 324
		f 3 831 -829 832
		mu 0 3 397 326 395
		f 3 -831 833 834
		mu 0 3 325 326 329
		f 3 835 -822 -835
		mu 0 3 329 330 325
		f 3 836 -834 837
		mu 0 3 328 329 326
		f 3 -832 838 -838
		mu 0 3 326 397 328
		f 3 839 -839 840
		mu 0 3 327 328 397
		f 3 841 842 -841
		mu 0 3 397 868 327
		f 3 843 -843 844
		mu 0 3 899 327 868
		f 3 -844 845 846
		mu 0 3 327 899 898
		f 3 847 848 -847
		mu 0 3 898 344 327
		f 3 -840 -849 849
		mu 0 3 328 327 344
		f 3 850 -848 851
		mu 0 3 897 344 898
		f 3 -850 852 853
		mu 0 3 328 344 343
		f 3 854 -837 -854
		mu 0 3 343 329 328
		f 3 -855 855 856
		mu 0 3 329 343 342
		f 3 857 -836 -857
		mu 0 3 342 330 329
		f 3 -858 858 859
		mu 0 3 330 342 341
		f 3 860 -821 -860
		mu 0 3 341 331 330
		f 3 -861 861 862
		mu 0 3 331 341 340
		f 3 863 -818 -863
		mu 0 3 340 332 331
		f 3 -864 864 865
		mu 0 3 332 340 339
		f 3 866 -815 -866
		mu 0 3 339 333 332
		f 3 -867 867 868
		mu 0 3 333 339 338
		f 3 869 -812 -869
		mu 0 3 338 334 333
		f 3 -870 870 871
		mu 0 3 334 338 337
		f 3 872 873 -872
		mu 0 3 337 336 334
		f 3 -809 -874 874
		mu 0 3 335 334 336
		f 3 875 876 -875
		mu 0 3 336 393 335
		f 3 -805 -877 877
		mu 0 3 888 335 393
		f 3 878 -876 879
		mu 0 3 385 393 336
		f 3 -873 880 -880
		mu 0 3 336 337 385
		f 3 881 -881 882
		mu 0 3 382 385 337
		f 3 883 884 -883
		mu 0 3 337 378 382
		f 3 -884 -871 885
		mu 0 3 378 337 338
		f 3 886 887 -886
		mu 0 3 338 376 378
		f 3 -887 -868 888
		mu 0 3 376 338 339
		f 3 889 890 -889
		mu 0 3 339 374 376
		f 3 891 -890 892
		mu 0 3 348 374 339
		f 3 -865 893 -893
		mu 0 3 339 340 348
		f 3 894 -894 895
		mu 0 3 347 348 340
		f 3 -862 896 -896
		mu 0 3 340 341 347
		f 3 897 -897 -859
		mu 0 3 342 347 341
		f 3 898 -898 899
		mu 0 3 346 347 342
		f 3 -856 900 -900
		mu 0 3 342 343 346
		f 3 901 -901 -853
		mu 0 3 344 346 343
		f 3 902 -902 903
		mu 0 3 345 346 344
		f 3 -851 904 -904
		mu 0 3 344 897 345
		f 3 905 -905 906
		mu 0 3 896 345 897
		f 3 -906 907 908
		mu 0 3 345 896 351
		f 3 909 -903 -909
		mu 0 3 351 346 345
		f 3 910 -908 911
		mu 0 3 895 351 896
		f 3 -910 912 913
		mu 0 3 346 351 350
		f 3 914 -899 -914
		mu 0 3 350 347 346
		f 3 -915 915 916
		mu 0 3 347 350 349
		f 3 917 -895 -917
		mu 0 3 349 348 347
		f 3 -892 -918 918
		mu 0 3 374 348 349
		f 3 919 920 -919
		mu 0 3 349 372 374
		f 3 921 -920 922
		mu 0 3 355 372 349
		f 3 -916 923 -923
		mu 0 3 349 350 355
		f 3 924 -924 925
		mu 0 3 354 355 350
		f 3 -913 926 -926
		mu 0 3 350 351 354
		f 3 927 -927 -911
		mu 0 3 895 354 351
		f 3 928 -928 929
		mu 0 3 353 354 895
		f 3 930 931 -930
		mu 0 3 895 894 353
		f 3 932 -932 933
		mu 0 3 891 353 894
		f 3 934 -933 935
		mu 0 3 352 353 891
		f 3 936 937 -936
		mu 0 3 891 892 352
		f 3 938 -938 -723
		mu 0 3 359 352 892
		f 3 -939 939 940
		mu 0 3 352 359 358
		f 3 941 -935 -941
		mu 0 3 358 353 352
		f 3 -942 942 943
		mu 0 3 353 358 357
		f 3 944 -929 -944
		mu 0 3 357 354 353
		f 3 -945 945 946
		mu 0 3 354 357 356
		f 3 947 -925 -947
		mu 0 3 356 355 354
		f 3 -948 948 949
		mu 0 3 355 356 370
		f 3 950 -922 -950
		mu 0 3 370 372 355
		f 3 951 -949 952
		mu 0 3 369 370 356
		f 3 953 954 -953
		mu 0 3 356 360 369
		f 3 -954 -946 955
		mu 0 3 360 356 357
		f 3 -943 956 -956
		mu 0 3 357 358 360
		f 3 957 -957 -940
		mu 0 3 359 360 358
		f 3 -958 -727 958
		mu 0 3 360 359 361
		f 3 959 -955 -959
		mu 0 3 361 369 360
		f 3 960 -960 961
		mu 0 3 364 369 361
		f 3 962 963 -962
		mu 0 3 361 363 364
		f 3 -963 -465 964
		mu 0 3 363 361 362
		f 3 -964 965 966
		mu 0 3 364 363 365
		f 3 967 968 -967
		mu 0 3 365 367 364
		f 3 -961 -969 969
		mu 0 3 369 364 367
		f 3 -968 970 -470
		mu 0 3 367 365 366
		f 3 -970 -469 971
		mu 0 3 369 367 368
		f 3 -468 972 -972
		mu 0 3 368 371 369
		f 3 -952 -973 973
		mu 0 3 370 369 371
		f 3 974 -951 -974
		mu 0 3 371 372 370
		f 3 -975 -467 975
		mu 0 3 372 371 373
		f 3 976 -921 -976
		mu 0 3 373 374 372
		f 3 -977 -475 977
		mu 0 3 374 373 375
		f 3 978 -891 -978
		mu 0 3 375 376 374
		f 3 -979 -474 979
		mu 0 3 376 375 377
		f 3 980 -888 -980
		mu 0 3 377 378 376
		f 3 -981 -473 981
		mu 0 3 378 377 379
		f 3 982 -885 -982
		mu 0 3 379 382 378
		f 3 -983 -472 983
		mu 0 3 382 379 380
		f 3 984 985 -984
		mu 0 3 380 383 382
		f 3 -985 -471 -971
		mu 0 3 383 380 381
		f 3 -986 986 987
		mu 0 3 382 383 384
		f 3 988 -882 -988
		mu 0 3 384 385 382
		f 3 989 -987 990
		mu 0 3 387 384 383
		f 3 -966 991 -991
		mu 0 3 383 390 387
		f 3 -990 992 993
		mu 0 3 384 387 386
		f 3 994 -989 -994
		mu 0 3 386 385 384
		f 3 -879 -995 995
		mu 0 3 393 385 386
		f 3 996 997 -996
		mu 0 3 386 392 393
		f 3 998 -997 999
		mu 0 3 389 392 386
		f 3 -993 1000 -1000
		mu 0 3 386 387 389
		f 3 1001 -1001 -992
		mu 0 3 390 389 387
		f 3 -462 -1002 -965
		mu 0 3 388 389 390
		f 3 -999 -459 1002
		mu 0 3 392 389 391
		f 3 -457 1003 -1003
		mu 0 3 391 890 392
		f 3 1004 -1004 1005
		mu 0 3 887 392 890
		f 3 -998 -1005 1006
		mu 0 3 393 392 887
		f 3 1007 -878 -1007
		mu 0 3 887 888 393
		f 3 -292 1008 1009
		mu 0 3 951 954 953
		f 4 -1009 1010 1011 -842
		mu 0 4 960 961 962 963
		f 3 1012 1013 -297
		mu 0 3 966 967 968
		f 3 -1014 -785 1014
		mu 0 3 968 967 969
		f 3 -295 1015 -1013
		mu 0 3 950 951 952
		f 3 -1016 -1010 -833
		mu 0 3 952 951 953
		f 4 1019 1020 -300 -1015
		mu 0 4 969 970 971 968
		f 3 1021 -660 -664
		mu 0 3 883 884 271
		f 3 1022 -699 -698
		mu 0 3 881 882 399
		f 3 1023 -1011 1024
		mu 0 3 997 999 996
		f 4 1025 -1025 -291 -1019
		mu 0 4 980 976 978 981
		f 3 1026 -1017 -1021
		mu 0 3 983 995 985
		f 3 1027 1028 1029
		mu 0 3 403 404 402
		f 3 -1028 1030 1031
		mu 0 3 404 403 405
		f 3 1032 1033 -1032
		mu 0 3 405 406 404
		f 3 -1033 1034 1035
		mu 0 3 406 405 408
		f 3 1036 1037 -1036
		mu 0 3 408 407 406
		f 3 -1037 1038 1039
		mu 0 3 407 408 409
		f 3 1040 -1039 1041
		mu 0 3 415 409 408
		f 3 1042 -1042 1043
		mu 0 3 410 415 408
		f 3 1044 1045 -1041
		mu 0 3 415 411 409
		f 3 1046 -1043 1047
		mu 0 3 412 415 410
		f 3 1048 -1045 1049
		mu 0 3 413 411 415
		f 3 1050 -1047 1051
		mu 0 3 416 415 412
		f 3 1052 1053 -1050
		mu 0 3 415 414 413
		f 3 -1053 1054 1055
		mu 0 3 414 415 420
		f 3 1056 -1055 1057
		mu 0 3 418 420 415
		f 3 1058 -1058 -1051
		mu 0 3 416 418 415
		f 3 -1059 1059 1060
		mu 0 3 418 416 417
		f 3 1061 -1061 1062
		mu 0 3 419 418 417
		f 3 -1062 1063 -1057
		mu 0 3 418 419 420
		f 3 -40 1064 1065
		mu 0 3 421 948 423
		f 3 1066 -1065 1067
		mu 0 3 424 423 948
		f 3 -1067 1068 1069
		mu 0 3 423 424 425
		f 3 1070 -1069 1071
		mu 0 3 426 425 424
		f 3 -1071 1072 1073
		mu 0 3 425 426 427
		f 3 -51 1074 1075
		mu 0 3 429 946 430
		f 3 1076 1077 -1076
		mu 0 3 430 431 429
		f 3 -1077 1078 1079
		mu 0 3 431 430 433
		f 3 1080 1081 -1080
		mu 0 3 433 432 431
		f 3 -1081 1082 1083
		mu 0 3 432 433 434
		f 3 -62 1084 1085
		mu 0 3 435 709 708
		f 3 1086 1087 -1086
		mu 0 3 708 436 435
		f 3 -1087 1088 1089
		mu 0 3 436 708 706
		f 3 1090 1091 -1090
		mu 0 3 706 437 436
		f 3 -1091 1092 1093
		mu 0 3 437 706 705
		f 3 -72 -1088 1094
		mu 0 3 442 945 439
		f 3 1095 1096 -1095
		mu 0 3 439 441 442
		f 3 -1096 -1092 1097
		mu 0 3 441 439 440
		f 3 1098 -1098 -1094
		mu 0 3 443 441 440
		f 3 -1099 1099 1100
		mu 0 3 441 443 446
		f 3 1101 -1101 1102
		mu 0 3 445 441 446
		f 3 -1102 -81 -1097
		mu 0 3 441 445 442
		f 3 1103 -1100 1104
		mu 0 3 444 446 443
		f 3 -1104 1105 1106
		mu 0 3 446 444 448
		f 3 1107 -1106 1108
		mu 0 3 449 448 444
		f 3 -1103 -1107 -88
		mu 0 3 445 446 448
		f 3 -90 -1108 1109
		mu 0 3 447 448 449
		f 3 1110 1111 1112
		mu 0 3 455 451 450
		f 3 -1111 1113 1114
		mu 0 3 451 455 452
		f 3 1115 -1115 1116
		mu 0 3 458 451 452
		f 3 -1116 1117 1118
		mu 0 3 451 458 460
		f 3 1119 1120 -1117
		mu 0 3 452 454 458
		f 3 -1120 -1114 1121
		mu 0 3 454 452 455
		f 3 1122 -1122 -1113
		mu 0 3 453 454 455
		f 3 1123 1124 -1121
		mu 0 3 454 457 458
		f 3 -1124 1125 1126
		mu 0 3 457 454 461
		f 3 1127 -1126 1128
		mu 0 3 456 461 454
		f 3 1129 -1127 1130
		mu 0 3 460 457 461
		f 3 -1130 -1118 -1125
		mu 0 3 457 460 458
		f 3 1131 -1131 -1128
		mu 0 3 459 460 461
		f 3 1132 1133 1134
		mu 0 3 464 463 462
		f 3 -1133 1135 1136
		mu 0 3 463 464 477
		f 3 1137 -1137 1138
		mu 0 3 478 463 477
		f 3 1139 1140 -1136
		mu 0 3 464 476 477
		f 3 -1140 1141 1142
		mu 0 3 476 464 465
		f 3 1143 1144 -1143
		mu 0 3 465 475 476
		f 3 -1144 1145 1146
		mu 0 3 475 465 466
		f 3 1147 1148 -1147
		mu 0 3 466 474 475
		f 3 -1148 1149 1150
		mu 0 3 474 466 467
		f 3 1151 1152 -1151
		mu 0 3 467 473 474
		f 3 -1152 1153 1154
		mu 0 3 473 467 468
		f 3 1155 -1155 1156
		mu 0 3 469 473 468
		f 3 -1156 1157 1158
		mu 0 3 473 469 472
		f 3 1159 -1158 1160
		mu 0 3 470 472 469
		f 3 -1160 -1134 1161
		mu 0 3 472 470 471
		f 3 1162 1163 -1162
		mu 0 3 471 485 472
		f 3 -1163 -1138 1164
		mu 0 3 485 471 486
		f 3 1165 -1164 1166
		mu 0 3 484 472 485
		f 3 -1166 1167 -1159
		mu 0 3 472 484 473
		f 3 -1153 -1168 1168
		mu 0 3 474 473 484
		f 3 1169 -1169 1170
		mu 0 3 483 474 484
		f 3 -1170 1171 -1149
		mu 0 3 474 483 475
		f 3 1172 -1172 1173
		mu 0 3 482 475 483
		f 3 -1173 1174 -1145
		mu 0 3 475 482 476
		f 3 1175 -1175 1176
		mu 0 3 481 476 482
		f 3 -1176 1177 -1141
		mu 0 3 476 481 477
		f 3 1178 -1178 1179
		mu 0 3 480 477 481
		f 3 -1179 1180 -1139
		mu 0 3 477 480 478
		f 3 1181 -1181 1182
		mu 0 3 479 478 480
		f 3 1183 -1183 1184
		mu 0 3 493 479 480
		f 3 -1184 1185 1186
		mu 0 3 479 493 494
		f 3 1187 1188 -1185
		mu 0 3 480 492 493
		f 3 -1188 -1180 1189
		mu 0 3 492 480 481
		f 3 1190 1191 -1190
		mu 0 3 481 491 492
		f 3 -1191 -1177 1192
		mu 0 3 491 481 482
		f 3 1193 1194 -1193
		mu 0 3 482 490 491
		f 3 -1194 -1174 1195
		mu 0 3 490 482 483
		f 3 1196 1197 -1196
		mu 0 3 483 489 490
		f 3 -1197 -1171 1198
		mu 0 3 489 483 484
		f 3 1199 1200 -1199
		mu 0 3 484 488 489
		f 3 -1200 -1167 1201
		mu 0 3 488 484 485
		f 3 1202 -1202 -1165
		mu 0 3 486 488 485
		f 3 -1203 -1182 1203
		mu 0 3 488 486 487
		f 3 1204 -1204 -1187
		mu 0 3 502 488 487
		f 3 -1205 1205 1206
		mu 0 3 488 502 501
		f 3 1207 -1207 1208
		mu 0 3 500 488 501
		f 3 -1208 1209 -1201
		mu 0 3 488 500 489
		f 3 -1198 -1210 1210
		mu 0 3 490 489 500
		f 3 1211 -1211 1212
		mu 0 3 499 490 500
		f 3 -1212 1213 1214
		mu 0 3 490 499 498
		f 3 1215 -1195 -1215
		mu 0 3 498 491 490
		f 3 -1216 1216 -1192
		mu 0 3 491 498 492
		f 3 1217 -1217 1218
		mu 0 3 497 492 498
		f 3 -1218 1219 1220
		mu 0 3 492 497 496
		f 3 1221 -1189 -1221
		mu 0 3 496 493 492
		f 3 -1222 1222 -1186
		mu 0 3 493 496 494
		f 3 1223 -1223 1224
		mu 0 3 495 494 496
		f 3 1225 -1225 1226
		mu 0 3 511 495 496
		f 3 -1226 1227 1228
		mu 0 3 495 511 512
		f 3 1229 1230 -1227
		mu 0 3 496 510 511
		f 3 -1230 -1220 1231
		mu 0 3 510 496 497
		f 3 1232 -1232 -1219
		mu 0 3 498 510 497
		f 3 -1233 1233 1234
		mu 0 3 510 498 509
		f 3 1235 -1234 -1214
		mu 0 3 499 509 498
		f 3 -1236 1236 1237
		mu 0 3 509 499 508
		f 3 1238 -1237 -1213
		mu 0 3 500 508 499
		f 3 -1239 1239 1240
		mu 0 3 508 500 507
		f 3 1241 -1240 1242
		mu 0 3 506 507 500
		f 3 1243 -1243 -1209
		mu 0 3 501 506 500
		f 3 -1244 1244 1245
		mu 0 3 506 501 504
		f 3 1246 -1245 -1206
		mu 0 3 502 504 501
		f 3 -1247 -1224 1247
		mu 0 3 504 502 503
		f 3 1248 -1248 -1229
		mu 0 3 505 504 503
		f 3 -1249 1249 1250
		mu 0 3 504 505 517
		f 3 -1246 -1251 1251
		mu 0 3 506 504 517
		f 3 1252 -1250 1253
		mu 0 3 518 517 505
		f 3 1254 -1252 1255
		mu 0 3 516 506 517
		f 3 -1255 1256 -1242
		mu 0 3 506 516 507
		f 3 -1241 -1257 1257
		mu 0 3 508 507 516
		f 3 1258 -1258 1259
		mu 0 3 515 508 516
		f 3 -1259 1260 -1238
		mu 0 3 508 515 509
		f 3 1261 -1261 1262
		mu 0 3 514 509 515
		f 3 -1262 1263 -1235
		mu 0 3 509 514 510
		f 3 1264 -1264 1265
		mu 0 3 513 510 514
		f 3 -1265 1266 -1231
		mu 0 3 510 513 511
		f 3 -1228 -1267 1267
		mu 0 3 512 511 513
		f 3 1268 -1268 1269
		mu 0 3 526 512 513
		f 3 -1269 1270 -1254
		mu 0 3 512 526 527
		f 3 1271 -1270 -1266
		mu 0 3 514 526 513
		f 3 -1272 1272 1273
		mu 0 3 526 514 525
		f 3 1274 -1273 -1263
		mu 0 3 515 525 514
		f 3 -1275 1275 1276
		mu 0 3 525 515 524
		f 3 1277 -1276 -1260
		mu 0 3 516 524 515
		f 3 -1278 1278 1279
		mu 0 3 524 516 523
		f 3 1280 -1279 1281
		mu 0 3 519 523 516
		f 3 1282 -1282 -1256
		mu 0 3 517 519 516
		f 3 -1283 -1253 1283
		mu 0 3 519 517 518
		f 3 1284 -1284 1285
		mu 0 3 520 519 518
		f 3 -1285 1286 1287
		mu 0 3 519 520 522
		f 3 -1281 -1288 1288
		mu 0 3 523 519 522
		f 3 1289 -1287 1290
		mu 0 3 521 522 520
		f 3 -1290 1291 1292
		mu 0 3 522 521 880
		f 3 1293 -1293 1294
		mu 0 3 532 522 880
		f 3 -1294 1295 -1289
		mu 0 3 522 532 523
		f 3 -1280 -1296 1296
		mu 0 3 524 523 532
		f 3 1297 -1297 1298
		mu 0 3 531 524 532
		f 3 -1298 1299 1300
		mu 0 3 524 531 530
		f 3 1301 -1277 -1301
		mu 0 3 530 525 524
		f 3 -1302 1302 1303
		mu 0 3 525 530 528
		f 3 1304 -1274 -1304
		mu 0 3 528 526 525
		f 3 -1305 1305 -1271
		mu 0 3 526 528 527
		f 3 -1286 -1306 1306
		mu 0 3 529 527 528
		f 3 1307 1308 -1307
		mu 0 3 528 879 529
		f 3 -1308 -1303 1309
		mu 0 3 879 528 530
		f 3 1310 -1291 -1309
		mu 0 3 989 990 991
		f 3 1311 1312 -1310
		mu 0 3 530 871 879
		f 3 -1312 -1300 1313
		mu 0 3 871 530 531
		f 3 1314 1315 -1314
		mu 0 3 531 869 871
		f 3 -1315 1316 1317
		mu 0 3 869 531 873
		f 3 1318 -1317 -1299
		mu 0 3 532 873 531
		f 3 -1319 -1295 1319
		mu 0 3 873 532 880
		f 3 1320 -1142 1321
		mu 0 3 535 534 533
		f 3 -1321 1322 1323
		mu 0 3 534 535 542
		f 3 1324 -1146 -1324
		mu 0 3 542 544 534
		f 3 1325 1326 -1323
		mu 0 3 535 541 542
		f 3 -1326 1327 1328
		mu 0 3 541 535 536
		f 3 1329 1330 -1329
		mu 0 3 536 540 541
		f 3 -1330 1331 1332
		mu 0 3 540 536 537
		f 3 1333 -1333 -1029
		mu 0 3 538 540 537
		f 3 -1334 -1034 1334
		mu 0 3 540 538 539
		f 3 1335 1336 -1335
		mu 0 3 539 547 540
		f 3 -1336 -1038 1337
		mu 0 3 547 539 548
		f 3 1338 -1337 1339
		mu 0 3 546 540 547
		f 3 -1339 1340 -1331
		mu 0 3 540 546 541
		f 3 -1327 -1341 1341
		mu 0 3 542 541 546
		f 3 1342 -1342 1343
		mu 0 3 543 542 546
		f 3 -1343 1344 -1325
		mu 0 3 542 543 544
		f 3 1345 -1344 1346
		mu 0 3 545 543 546
		f 3 -1346 1347 -1345
		mu 0 3 543 545 544
		f 3 -1150 -1348 1348
		mu 0 3 553 544 545
		f 3 1349 1350 -1349
		mu 0 3 545 552 553
		f 3 -1350 -1347 1351
		mu 0 3 552 545 546
		f 3 1352 1353 -1352
		mu 0 3 546 549 552
		f 3 -1353 -1340 1354
		mu 0 3 549 546 547
		f 3 1355 -1355 -1338
		mu 0 3 548 549 547
		f 3 -1356 -1040 1356
		mu 0 3 549 548 550
		f 3 1357 -1357 1358
		mu 0 3 551 549 550
		f 3 -1358 1359 -1354
		mu 0 3 549 551 552
		f 3 1360 1361 -1359
		mu 0 3 550 560 551
		f 3 -1361 -1046 1362
		mu 0 3 560 550 561
		f 3 1363 -1362 1364
		mu 0 3 559 551 560
		f 3 -1364 1365 -1360
		mu 0 3 551 559 552
		f 3 1366 -1366 1367
		mu 0 3 558 552 559
		f 3 -1367 1368 1369
		mu 0 3 552 558 555
		f 3 1370 -1351 -1370
		mu 0 3 555 553 552
		f 3 -1371 1371 -1154
		mu 0 3 553 555 554
		f 3 -1157 -1372 1372
		mu 0 3 556 554 555
		f 3 1373 1374 -1373
		mu 0 3 555 557 556
		f 3 -1374 -1369 1375
		mu 0 3 557 555 558
		f 3 1376 -1375 1377
		mu 0 3 572 556 557
		f 3 -1377 1378 -1161
		mu 0 3 556 572 574
		f 3 1379 1380 -1378
		mu 0 3 557 571 572
		f 3 -1380 1381 1382
		mu 0 3 571 557 567
		f 3 1383 -1382 1384
		mu 0 3 568 567 557
		f 3 1385 -1385 -1376
		mu 0 3 558 568 557
		f 3 -1386 1386 1387
		mu 0 3 568 558 566
		f 3 1388 -1387 1389
		mu 0 3 564 566 558
		f 3 1390 -1390 -1368
		mu 0 3 559 564 558
		f 3 -1391 1391 1392
		mu 0 3 564 559 563
		f 3 1393 -1392 -1365
		mu 0 3 560 563 559
		f 3 -1394 1394 1395
		mu 0 3 563 560 562
		f 3 1396 -1395 -1363
		mu 0 3 561 562 560
		f 3 -1397 -1049 1397
		mu 0 3 562 561 586
		f 3 1398 -1398 1399
		mu 0 3 588 562 586
		f 3 -1399 1400 -1396
		mu 0 3 562 588 563
		f 3 -1393 -1401 1401
		mu 0 3 564 563 588
		f 3 1402 -1402 1403
		mu 0 3 589 564 588
		f 3 -1403 1404 1405
		mu 0 3 564 589 593
		f 3 1406 -1406 1407
		mu 0 3 565 564 593
		f 3 -1407 1408 -1389
		mu 0 3 564 565 566
		f 3 1409 -1409 1410
		mu 0 3 595 566 565
		f 3 1411 -1411 -1408
		mu 0 3 593 595 565
		f 3 1412 -1410 -1052
		mu 0 3 569 566 595
		f 3 -1413 1413 -1388
		mu 0 3 566 569 568
		f 3 -1384 -1414 -1048
		mu 0 3 567 568 569
		f 3 1414 -1383 -1044
		mu 0 3 570 571 567
		f 3 -1415 -1035 1415
		mu 0 3 571 570 580
		f 3 1416 -1416 1417
		mu 0 3 579 571 580
		f 3 -1417 1418 1419
		mu 0 3 571 579 578
		f 3 1420 -1381 -1420
		mu 0 3 578 572 571
		f 3 -1421 1421 1422
		mu 0 3 572 578 573
		f 3 1423 -1379 -1423
		mu 0 3 573 574 572
		f 3 -1424 1424 1425
		mu 0 3 574 573 577
		f 3 1426 -1425 -1422
		mu 0 3 578 577 573
		f 3 1427 -1426 1428
		mu 0 3 576 574 577
		f 3 -1428 -1322 -1135
		mu 0 3 574 576 575
		f 3 1429 -1328 -1429
		mu 0 3 577 584 576
		f 3 -1430 1430 1431
		mu 0 3 584 577 585
		f 3 1432 -1431 -1427
		mu 0 3 578 585 577
		f 3 -1433 1433 1434
		mu 0 3 585 578 583
		f 3 1435 -1434 -1419
		mu 0 3 579 583 578
		f 3 -1436 -1418 1436
		mu 0 3 583 579 580
		f 3 1437 -1437 -1031
		mu 0 3 581 583 580
		f 3 -1438 -1030 1438
		mu 0 3 583 581 582
		f 3 1439 -1439 -1332
		mu 0 3 584 583 582
		f 3 -1440 -1432 -1435
		mu 0 3 583 584 585
		f 3 1440 -1400 -1054
		mu 0 3 587 588 586
		f 3 -1441 -1056 1441
		mu 0 3 588 587 590
		f 3 1442 -1404 -1442
		mu 0 3 590 589 588
		f 3 -1443 1443 1444
		mu 0 3 589 590 591
		f 3 -1405 -1445 1445
		mu 0 3 593 589 591
		f 3 1446 -1444 -1064
		mu 0 3 592 591 590
		f 3 -1447 1447 -1446
		mu 0 3 591 592 593
		f 3 1448 -1448 -1063
		mu 0 3 594 593 592
		f 3 -1449 -1060 -1412
		mu 0 3 593 594 595
		f 3 1449 1450 1451
		mu 0 3 597 598 596
		f 3 -1450 1452 1453
		mu 0 3 598 597 599
		f 3 1454 -1453 1455
		mu 0 3 612 599 597
		f 3 1456 1457 -1454
		mu 0 3 599 600 598
		f 3 1458 -1455 1459
		mu 0 3 610 599 612
		f 3 1460 1461 -1457
		mu 0 3 599 604 600
		f 3 -1461 -1459 1462
		mu 0 3 604 599 610
		f 3 1463 1464 -1462
		mu 0 3 604 603 600
		f 3 -1464 1465 1466
		mu 0 3 603 604 601
		f 3 -449 1467 -1467
		mu 0 3 601 937 603
		f 3 -451 -1466 1468
		mu 0 3 605 601 604
		f 3 1469 1470 -1469
		mu 0 3 604 608 605
		f 3 -1470 -1463 1471
		mu 0 3 608 604 610
		f 3 -456 -1471 1472
		mu 0 3 606 605 608
		f 3 1473 1474 -1473
		mu 0 3 608 607 606
		f 3 -1474 1475 1476
		mu 0 3 607 608 609
		f 3 1477 -1476 -1472
		mu 0 3 610 609 608
		f 3 -1478 1478 1479
		mu 0 3 609 610 611
		f 3 1480 -1479 -1460
		mu 0 3 612 611 610
		f 3 -1481 1481 1482
		mu 0 3 611 612 613
		f 3 1483 1484 1485
		mu 0 3 615 616 614
		f 3 -1484 1486 1487
		mu 0 3 616 615 617
		f 3 1488 1489 -1488
		mu 0 3 617 618 616
		f 3 1491 -1489 -1491
		mu 0 3 621 618 617
		f 3 -1492 1492 1493
		mu 0 3 618 621 619
		f 3 1494 -1493 1495
		mu 0 3 620 619 621
		f 3 1496 -1496 1497
		mu 0 3 622 620 621
		f 3 -1497 1498 1499
		mu 0 3 620 622 623
		f 3 -1501 1501 -1499
		mu 0 3 622 625 623
		f 3 1502 -1502 1503
		mu 0 3 624 623 625
		f 3 1504 -1504 1505
		mu 0 3 626 624 625
		f 3 -1505 1506 1507
		mu 0 3 624 626 627
		f 3 -1509 1509 -1507
		mu 0 3 626 631 627
		f 3 1510 -1510 1511
		mu 0 3 628 627 631
		f 3 1512 -1512 1513
		mu 0 3 630 628 631
		f 3 -1513 -1486 1514
		mu 0 3 628 630 629
		f 3 1515 1516 -1451
		mu 0 3 634 633 632
		f 3 -1516 1517 1518
		mu 0 3 633 634 635
		f 3 1519 -1518 1520
		mu 0 3 645 635 634
		f 3 1521 -1521 -1458
		mu 0 3 648 645 634
		f 3 1522 -1520 1523
		mu 0 3 644 635 645
		f 3 -1523 -1119 1524
		mu 0 3 635 644 636
		f 3 1525 1526 -1525
		mu 0 3 636 637 635
		f 3 -1526 -1132 1527
		mu 0 3 637 636 639
		f 3 1528 1529 -1528
		mu 0 3 639 638 637
		f 3 -1529 1530 1531
		mu 0 3 638 639 656
		f 3 1532 -1532 1533
		mu 0 3 657 638 656
		f 3 1534 1535 -1531
		mu 0 3 639 640 656
		f 3 -1535 -1129 1536
		mu 0 3 640 639 643
		f 3 1537 -1536 1538
		mu 0 3 665 656 640
		f 3 1539 1540 -1537
		mu 0 3 643 641 640
		f 3 -1540 1541 1542
		mu 0 3 641 643 642
		f 3 1543 -1542 1544
		mu 0 3 653 642 643
		f 3 1545 -1545 -1123
		mu 0 3 646 653 643
		f 3 -1546 1546 1547
		mu 0 3 653 646 654
		f 3 1548 -1547 1549
		mu 0 3 645 654 646
		f 3 -1524 -1550 -1112
		mu 0 3 644 645 646
		f 3 1550 -1549 -1522
		mu 0 3 648 654 645
		f 3 -1551 1551 1552
		mu 0 3 654 648 652
		f 3 1553 -1552 1554
		mu 0 3 650 652 648
		f 3 1555 -1555 -1465
		mu 0 3 647 650 648
		f 3 1556 1557 1558
		mu 0 3 651 650 649
		f 3 -1557 1559 -1554
		mu 0 3 650 651 652
		f 3 1560 -1560 1561
		mu 0 3 655 652 651
		f 3 -1561 1562 -1553
		mu 0 3 652 655 654
		f 3 -1548 -1563 1563
		mu 0 3 653 654 655
		f 3 1564 -1538 1565
		mu 0 3 667 656 665
		f 3 -1565 1566 -1534
		mu 0 3 656 667 657
		f 3 1567 -1567 1568
		mu 0 3 658 657 667
		f 3 1569 -1569 1570
		mu 0 3 663 658 667
		f 3 -1570 1571 1572
		mu 0 3 658 663 659
		f 3 1573 -1572 1574
		mu 0 3 660 659 663
		f 3 1575 1576 -1575
		mu 0 3 663 661 660
		f 3 -1576 1577 1578
		mu 0 3 661 663 662
		f 3 1579 -1578 1580
		mu 0 3 664 662 663;
	setAttr ".fc[1000:1499]"
		f 3 1581 -1581 -1571
		mu 0 3 667 664 663
		f 3 -1582 1582 1583
		mu 0 3 664 667 666
		f 3 1584 -1583 -1566
		mu 0 3 665 666 667
		f 3 1585 1586 -1577
		mu 0 3 669 670 668
		f 3 -1586 1587 1588
		mu 0 3 670 669 672
		f 3 1589 -1588 -1579
		mu 0 3 671 672 669
		f 3 1590 -1589 1591
		mu 0 3 673 670 672
		f 3 1592 1593 -1590
		mu 0 3 671 675 672
		f 3 -1593 -1580 1594
		mu 0 3 675 671 676
		f 3 1595 -1594 1596
		mu 0 3 674 672 675
		f 3 -1596 -558 -1592
		mu 0 3 672 674 673
		f 3 -560 -1597 1597
		mu 0 3 734 674 675
		f 3 1598 1599 -1598
		mu 0 3 675 732 734
		f 3 -1599 -1595 1600
		mu 0 3 732 675 676
		f 3 1601 1602 -1601
		mu 0 3 676 730 732
		f 3 -1602 -1584 1603
		mu 0 3 730 676 677
		f 3 1604 1605 -1604
		mu 0 3 677 720 730
		f 3 -1605 -1585 1606
		mu 0 3 720 677 678
		f 3 1607 1608 -1607
		mu 0 3 678 699 720
		f 3 -1608 -1539 1609
		mu 0 3 699 678 679
		f 3 1610 -1610 -1541
		mu 0 3 680 699 679
		f 3 -1611 1611 1612
		mu 0 3 699 680 682
		f 3 1613 -1612 -1543
		mu 0 3 681 682 680
		f 3 -1614 1614 1615
		mu 0 3 682 681 683
		f 3 1616 -1615 -1544
		mu 0 3 684 683 681
		f 3 1617 -1616 1618
		mu 0 3 698 682 683
		f 3 -1618 1619 -1613
		mu 0 3 682 698 699
		f 3 1620 1621 -1619
		mu 0 3 683 697 698
		f 3 -1621 1622 1623
		mu 0 3 697 683 696
		f 3 1624 -1623 -1617
		mu 0 3 684 696 683
		f 3 -1625 -1564 1625
		mu 0 3 696 684 685
		f 3 1626 1627 -1626
		mu 0 3 685 695 696
		f 3 -1627 -1562 1628
		mu 0 3 695 685 686
		f 3 1629 1630 -1629
		mu 0 3 686 694 695
		f 3 -1630 -1559 1631
		mu 0 3 694 686 687
		f 3 1632 1633 -1632
		mu 0 3 687 690 694
		f 3 -1633 1634 1635
		mu 0 3 690 687 688
		f 3 1636 -1636 -1468
		mu 0 3 689 690 688
		f 3 -1637 1637 1638
		mu 0 3 690 689 691
		f 3 1639 -1638 -602
		mu 0 3 692 691 689
		f 3 1640 -1639 1641
		mu 0 3 693 690 691
		f 3 -1641 1642 -1634
		mu 0 3 690 693 694
		f 3 1643 -1642 -1640
		mu 0 3 692 693 691
		f 3 -1644 -609 1644
		mu 0 3 693 692 735
		f 3 1645 -1645 1646
		mu 0 3 739 693 735
		f 3 -1646 1647 1648
		mu 0 3 693 739 740
		f 3 1649 -1643 -1649
		mu 0 3 740 694 693
		f 3 -1650 1650 -1631
		mu 0 3 694 740 695
		f 3 1651 -1651 1652
		mu 0 3 705 695 740
		f 3 -1652 1653 -1628
		mu 0 3 695 705 696
		f 3 1654 -1654 1655
		mu 0 3 707 696 705
		f 3 -1655 1656 -1624
		mu 0 3 696 707 697
		f 3 1657 -1657 1658
		mu 0 3 704 697 707
		f 3 -1658 1659 1660
		mu 0 3 697 704 703
		f 3 1661 -1622 -1661
		mu 0 3 703 698 697
		f 3 -1662 1662 1663
		mu 0 3 698 703 701
		f 3 1664 -1620 -1664
		mu 0 3 701 699 698
		f 3 -1665 1665 1666
		mu 0 3 699 701 700
		f 3 1667 -1667 1668
		mu 0 3 718 699 700
		f 3 -1668 1669 -1609
		mu 0 3 699 718 720
		f 3 1670 1671 -1669
		mu 0 3 700 717 718
		f 3 -1671 -1666 1672
		mu 0 3 717 700 701
		f 3 1673 1674 -1673
		mu 0 3 701 702 717
		f 3 -1674 -1663 1675
		mu 0 3 702 701 703
		f 3 1676 -1676 1677
		mu 0 3 715 702 703
		f 3 -1677 1678 -1675
		mu 0 3 702 715 717
		f 3 1679 1680 -1678
		mu 0 3 703 714 715
		f 3 -1680 1681 1682
		mu 0 3 714 703 713
		f 3 1683 -1682 -1660
		mu 0 3 704 713 703
		f 3 -1684 1684 1685
		mu 0 3 713 704 712
		f 3 1686 -1685 -1659
		mu 0 3 707 712 704
		f 3 -1687 1687 1688
		mu 0 3 712 707 710
		f 3 1689 -1688 1690
		mu 0 3 706 710 707
		f 3 -1093 -1691 -1656
		mu 0 3 705 706 707
		f 3 1691 -1690 -1089
		mu 0 3 708 710 706
		f 3 -1692 -1085 1692
		mu 0 3 710 708 709
		f 3 1693 -1693 -658
		mu 0 3 711 710 709
		f 4 -1694 -661 1694 -1689
		mu 0 4 710 711 875 712
		f 4 1695 1696 -663 1697
		mu 0 4 727 712 874 728
		f 3 -1696 1698 1699
		mu 0 3 712 727 877
		f 3 1700 -1686 -1700
		mu 0 3 877 713 712
		f 3 -1701 1701 1702
		mu 0 3 713 877 724
		f 3 1703 -1683 -1703
		mu 0 3 724 714 713
		f 3 -1704 1704 1705
		mu 0 3 714 724 722
		f 3 1706 -1706 1707
		mu 0 3 716 714 722
		f 3 -1707 1708 -1681
		mu 0 3 714 716 715
		f 3 -1679 -1709 1709
		mu 0 3 717 715 716
		f 3 1710 1711 -1710
		mu 0 3 716 719 717
		f 3 -1711 -1708 1712
		mu 0 3 719 716 722
		f 3 1713 -1672 -1712
		mu 0 3 719 718 717
		f 3 -1714 1714 -1670
		mu 0 3 718 719 720
		f 3 1715 -1715 1716
		mu 0 3 721 720 719
		f 3 1717 -1717 -1713
		mu 0 3 722 721 719
		f 3 -1606 -1716 1718
		mu 0 3 730 720 721
		f 3 1719 -1718 1720
		mu 0 3 729 721 722
		f 3 -1720 1721 -1719
		mu 0 3 721 729 730
		f 3 1722 -690 -1721
		mu 0 3 722 723 729
		f 3 -1723 -1705 1723
		mu 0 3 723 722 724
		f 3 1724 -693 -1724
		mu 0 3 724 726 723
		f 3 -1725 -1702 1725
		mu 0 3 726 724 877
		f 4 1726 -697 -696 -1726
		mu 0 4 877 876 725 726
		f 4 -1698 -700 1727 -1699
		mu 0 4 727 728 878 877
		f 3 1728 -1722 -701
		mu 0 3 731 730 729
		f 3 -1729 1729 -1603
		mu 0 3 730 731 732
		f 3 1730 -1730 -704
		mu 0 3 733 732 731
		f 3 -1731 -706 -1600
		mu 0 3 732 733 734
		f 3 -708 1731 -1647
		mu 0 3 735 736 739
		f 3 -710 1732 -1732
		mu 0 3 736 286 739
		f 3 1733 -712 1734
		mu 0 3 738 286 737
		f 3 -1734 1735 -1733
		mu 0 3 286 738 739
		f 3 1736 -1735 -1110
		mu 0 3 741 738 737
		f 3 1737 1738 -1736
		mu 0 3 738 743 739
		f 3 -1738 -1737 1739
		mu 0 3 743 738 741
		f 3 1740 -1648 -1739
		mu 0 3 743 740 739
		f 3 -1741 1741 -1653
		mu 0 3 740 743 705
		f 3 -1105 -1742 1742
		mu 0 3 742 705 743
		f 3 -1109 -1743 -1740
		mu 0 3 741 742 743
		f 3 -724 1743 1744
		mu 0 3 747 893 745
		f 3 1745 1746 -1745
		mu 0 3 745 748 747
		f 3 -1746 1747 -1482
		mu 0 3 748 745 746
		f 3 -729 -1747 1748
		mu 0 3 749 747 748
		f 3 -732 1749 1750
		mu 0 3 750 749 751
		f 3 -1456 -1750 -1749
		mu 0 3 748 751 749
		f 3 -734 -1751 1751
		mu 0 3 299 750 751
		f 3 1752 1753 -735
		mu 0 3 299 752 753
		f 3 -1753 -1752 -1452
		mu 0 3 752 299 751
		f 3 1754 -1754 -1517
		mu 0 3 754 753 752
		f 3 -1755 1755 -739
		mu 0 3 753 754 300
		f 3 1756 1757 -741
		mu 0 3 300 756 757
		f 3 -1757 -1756 1758
		mu 0 3 756 300 754
		f 3 1759 -1759 -1519
		mu 0 3 755 756 754
		f 3 -1760 -1527 1760
		mu 0 3 756 755 761
		f 3 1761 -1761 1762
		mu 0 3 760 756 761
		f 3 -1762 1763 -1758
		mu 0 3 756 760 757
		f 3 -751 -1764 1764
		mu 0 3 758 757 760
		f 3 1765 -752 -1765
		mu 0 3 760 759 758
		f 3 -756 1766 1767
		mu 0 3 767 759 762
		f 3 1768 -1767 -1766
		mu 0 3 760 762 759
		f 3 -1769 -1763 1769
		mu 0 3 762 760 761
		f 3 1770 -1770 -1530
		mu 0 3 763 762 761
		f 3 -1771 1771 1772
		mu 0 3 762 763 765
		f 3 -1768 -1773 1773
		mu 0 3 767 762 765
		f 3 1774 -1772 -1533
		mu 0 3 764 765 763
		f 3 -1775 -1568 1775
		mu 0 3 765 764 766
		f 3 1776 -1776 1777
		mu 0 3 770 765 766
		f 3 -1777 1778 -1774
		mu 0 3 765 770 767
		f 3 1779 -1778 -1573
		mu 0 3 771 770 766
		f 3 -770 -1779 1780
		mu 0 3 311 767 770
		f 3 -772 1781 -1591
		mu 0 3 768 769 773
		f 3 1782 -1782 1783
		mu 0 3 774 773 769
		f 3 1784 -1784 -775
		mu 0 3 311 774 769
		f 3 -1785 -1781 1785
		mu 0 3 774 311 770
		f 3 1786 -1786 -1780
		mu 0 3 771 774 770
		f 3 -1787 -1574 1787
		mu 0 3 774 771 772
		f 3 -1587 -1783 -1788
		mu 0 3 772 773 774
		f 3 1788 1789 -780
		mu 0 3 775 785 872
		f 3 -1789 -784 1790
		mu 0 3 785 775 776
		f 3 1791 1792 -1790
		mu 0 3 785 870 872
		f 3 1793 1794 -1791
		mu 0 3 776 784 785
		f 3 -1794 1795 1796
		mu 0 3 784 776 783
		f 3 1797 -1796 -791
		mu 0 3 777 783 776
		f 3 -1798 1798 1799
		mu 0 3 783 777 782
		f 3 1800 -1799 -795
		mu 0 3 778 782 777
		f 3 -1801 1801 1802
		mu 0 3 782 778 781
		f 3 1803 -1802 -799
		mu 0 3 779 781 778
		f 3 -1804 1804 1805
		mu 0 3 781 779 780
		f 3 1806 -1805 -803
		mu 0 3 317 780 779
		f 3 1807 -806 1808
		mu 0 3 799 317 866
		f 3 -1808 1809 -1807
		mu 0 3 317 799 780
		f 3 1810 -1810 1811
		mu 0 3 798 780 799
		f 3 -1811 1812 1813
		mu 0 3 780 798 797
		f 3 1814 -1806 -1814
		mu 0 3 797 781 780
		f 3 -1815 1815 1816
		mu 0 3 781 797 796
		f 3 1817 -1803 -1817
		mu 0 3 796 782 781
		f 3 -1818 1818 1819
		mu 0 3 782 796 795
		f 3 1820 -1800 -1820
		mu 0 3 795 783 782
		f 3 -1821 1821 1822
		mu 0 3 783 795 794
		f 3 1823 -1823 1824
		mu 0 3 787 783 794
		f 3 -1824 1825 -1797
		mu 0 3 783 787 784
		f 3 1826 -1826 1827
		mu 0 3 786 784 787
		f 3 -1827 1828 -1795
		mu 0 3 784 786 785
		f 3 -1792 -1829 1829
		mu 0 3 870 785 786
		f 3 1830 1831 -1830
		mu 0 3 786 788 870
		f 3 -1831 -1828 1832
		mu 0 3 788 786 787
		f 3 1833 -1832 1834
		mu 0 3 867 870 788
		f 3 1835 1836 -1833
		mu 0 3 787 793 788
		f 3 -1836 -1825 1837
		mu 0 3 793 787 794
		f 3 1838 -1837 1839
		mu 0 3 792 788 793
		f 3 -1839 1840 -1835
		mu 0 3 788 792 867
		f 3 1841 -1841 1842
		mu 0 3 790 867 792
		f 3 -1842 1843 1844
		mu 0 3 867 790 886
		f 3 -845 -1844 1845
		mu 0 3 789 886 790
		f 3 1846 -846 -1846
		mu 0 3 790 791 789
		f 3 -1847 1847 1848
		mu 0 3 791 790 808
		f 3 1849 -1848 -1843
		mu 0 3 792 808 790
		f 3 -852 -1849 1850
		mu 0 3 809 791 808
		f 3 1851 1852 -1850
		mu 0 3 792 807 808
		f 3 -1852 -1840 1853
		mu 0 3 807 792 793
		f 3 1854 1855 -1854
		mu 0 3 793 806 807
		f 3 -1855 -1838 1856
		mu 0 3 806 793 794
		f 3 1857 1858 -1857
		mu 0 3 794 805 806
		f 3 -1858 -1822 1859
		mu 0 3 805 794 795
		f 3 1860 1861 -1860
		mu 0 3 795 804 805
		f 3 -1861 -1819 1862
		mu 0 3 804 795 796
		f 3 1863 1864 -1863
		mu 0 3 796 803 804
		f 3 -1864 -1816 1865
		mu 0 3 803 796 797
		f 3 1866 1867 -1866
		mu 0 3 797 802 803
		f 3 -1867 -1813 1868
		mu 0 3 802 797 798
		f 3 1869 1870 -1869
		mu 0 3 798 801 802
		f 3 -1870 1871 1872
		mu 0 3 801 798 800
		f 3 1873 -1872 -1812
		mu 0 3 799 800 798
		f 3 -1874 1874 1875
		mu 0 3 800 799 865
		f 3 1876 -1875 -1809
		mu 0 3 866 865 799
		f 3 1877 -1876 1878
		mu 0 3 855 800 865
		f 3 -1878 1879 -1873
		mu 0 3 800 855 801
		f 3 1880 -1880 1881
		mu 0 3 853 801 855
		f 3 -1881 1882 1883
		mu 0 3 801 853 848
		f 3 1884 -1871 -1884
		mu 0 3 848 802 801
		f 3 -1885 1885 1886
		mu 0 3 802 848 846
		f 3 1887 -1868 -1887
		mu 0 3 846 803 802
		f 3 -1888 1888 1889
		mu 0 3 803 846 844
		f 3 1890 -1890 1891
		mu 0 3 814 803 844
		f 3 -1891 1892 -1865
		mu 0 3 803 814 804
		f 3 1893 -1893 1894
		mu 0 3 813 804 814
		f 3 -1894 1895 -1862
		mu 0 3 804 813 805
		f 3 -1859 -1896 1896
		mu 0 3 806 805 813
		f 3 1897 -1897 1898
		mu 0 3 812 806 813
		f 3 -1898 1899 -1856
		mu 0 3 806 812 807
		f 3 -1853 -1900 1900
		mu 0 3 808 807 812
		f 3 1901 -1901 1902
		mu 0 3 810 808 812
		f 3 -1902 1903 -1851
		mu 0 3 808 810 809
		f 3 -907 -1904 1904
		mu 0 3 811 809 810
		f 3 1905 1906 -1905
		mu 0 3 810 817 811
		f 3 -1906 -1903 1907
		mu 0 3 817 810 812
		f 3 -912 -1907 1908
		mu 0 3 818 811 817
		f 3 1909 1910 -1908
		mu 0 3 812 816 817
		f 3 -1910 -1899 1911
		mu 0 3 816 812 813
		f 3 1912 1913 -1912
		mu 0 3 813 815 816
		f 3 -1913 -1895 1914
		mu 0 3 815 813 814
		f 3 1915 -1915 -1892
		mu 0 3 844 815 814
		f 3 -1916 1916 1917
		mu 0 3 815 844 842
		f 3 1918 -1918 1919
		mu 0 3 825 815 842
		f 3 -1919 1920 -1914
		mu 0 3 815 825 816
		f 3 1921 -1921 1922
		mu 0 3 824 816 825
		f 3 -1922 1923 -1911
		mu 0 3 816 824 817
		f 3 -1909 -1924 1924
		mu 0 3 818 817 824
		f 3 1925 -1925 1926
		mu 0 3 823 818 824
		f 3 -1926 1927 -931
		mu 0 3 818 823 819
		f 3 -934 -1928 1928
		mu 0 3 820 819 823
		f 3 1929 -1929 1930
		mu 0 3 822 820 823
		f 3 -1930 1931 -937
		mu 0 3 820 822 821
		f 3 -1744 -1932 1932
		mu 0 3 829 821 822
		f 3 1933 1934 -1933
		mu 0 3 822 828 829
		f 3 -1934 -1931 1935
		mu 0 3 828 822 823
		f 3 1936 1937 -1936
		mu 0 3 823 827 828
		f 3 -1937 -1927 1938
		mu 0 3 827 823 824
		f 3 1939 1940 -1939
		mu 0 3 824 826 827
		f 3 -1940 -1923 1941
		mu 0 3 826 824 825
		f 3 1942 1943 -1942
		mu 0 3 825 840 826
		f 3 -1943 -1920 1944
		mu 0 3 840 825 842
		f 3 1945 -1944 1946
		mu 0 3 839 826 840
		f 3 -1946 1947 1948
		mu 0 3 826 839 830
		f 3 1949 -1941 -1949
		mu 0 3 830 827 826
		f 3 -1950 1950 -1938
		mu 0 3 827 830 828
		f 3 -1935 -1951 1951
		mu 0 3 829 828 830
		f 3 1952 -1748 -1952
		mu 0 3 830 833 829
		f 3 -1953 -1948 1953
		mu 0 3 833 830 839
		f 3 1954 -1954 1955
		mu 0 3 834 833 839
		f 3 -1955 1956 1957
		mu 0 3 833 834 831
		f 3 1958 -1483 -1958
		mu 0 3 831 832 833
		f 3 1959 1960 -1957
		mu 0 3 834 836 831
		f 3 -1960 1961 1962
		mu 0 3 836 834 837
		f 3 1963 -1962 -1956
		mu 0 3 839 837 834
		f 3 -1495 1964 -1963
		mu 0 3 837 835 836
		f 3 1965 -1494 -1964
		mu 0 3 839 838 837
		f 3 -1966 1966 -1490
		mu 0 3 838 839 841
		f 3 1967 -1967 -1947
		mu 0 3 840 841 839
		f 3 -1968 -1945 1968
		mu 0 3 841 840 842
		f 3 1969 -1485 -1969
		mu 0 3 842 843 841
		f 3 -1970 -1917 1970
		mu 0 3 843 842 844
		f 3 1971 -1515 -1971
		mu 0 3 844 845 843
		f 3 -1972 -1889 1972
		mu 0 3 845 844 846
		f 3 1973 -1511 -1973
		mu 0 3 846 847 845
		f 3 -1974 -1886 1974
		mu 0 3 847 846 848
		f 3 1975 -1508 -1975
		mu 0 3 848 849 847
		f 3 -1976 -1883 1976
		mu 0 3 849 848 853
		f 3 1977 -1503 -1977
		mu 0 3 853 852 849
		f 3 -1978 1978 1979
		mu 0 3 852 853 850
		f 3 -1965 -1500 -1980
		mu 0 3 850 851 852
		f 3 1980 1981 -1979
		mu 0 3 853 854 850
		f 3 -1981 -1882 1982
		mu 0 3 854 853 855
		f 3 1983 -1982 1984
		mu 0 3 857 850 854
		f 3 -1984 1985 -1961
		mu 0 3 850 857 859
		f 3 1986 1987 -1985
		mu 0 3 854 856 857
		f 3 -1987 -1983 1988
		mu 0 3 856 854 855
		f 3 1989 -1989 -1879
		mu 0 3 865 856 855
		f 3 -1990 1990 1991
		mu 0 3 856 865 863
		f 3 1992 -1992 1993
		mu 0 3 860 856 863
		f 3 -1993 1994 -1988
		mu 0 3 856 860 857
		f 3 -1986 -1995 1995
		mu 0 3 859 857 860
		f 3 -1959 -1996 -1480
		mu 0 3 858 859 860
		f 3 1996 -1477 -1994
		mu 0 3 863 861 860
		f 3 -1997 1997 -1475
		mu 0 3 861 863 862
		f 3 -1006 -1998 1998
		mu 0 3 864 862 863
		f 3 1999 -1999 -1991
		mu 0 3 865 864 863
		f 3 -2000 -1877 -1008
		mu 0 3 864 865 866
		f 3 2000 2001 -1313
		mu 0 3 957 958 959
		f 4 -1845 -1012 2002 -2002
		mu 0 4 964 963 962 965
		f 3 -1318 2003 2004
		mu 0 3 975 972 974
		f 3 2005 -1793 -2004
		mu 0 3 972 969 974
		f 3 -2005 2006 -1316
		mu 0 3 955 956 957
		f 3 -1834 -2001 -2007
		mu 0 3 956 958 957
		f 4 -1292 2007 -1018 2008
		mu 0 4 986 987 988 984
		f 4 -2006 -1320 2009 -1020
		mu 0 4 969 972 973 970
		f 3 -1697 -1695 -1022
		mu 0 3 874 712 875
		f 3 -1727 -1728 -1023
		mu 0 3 876 877 878
		f 3 2010 -2003 -1024
		mu 0 3 998 979 977
		f 4 -2008 -1311 -2011 -1026
		mu 0 4 992 990 989 993
		f 3 -2010 -2009 -1027
		mu 0 3 994 986 984
		f 3 2011 2012 2013
		mu 0 3 1000 1001 1002
		f 3 2014 2015 -2014
		mu 0 3 1002 1003 1000
		f 3 2016 -2016 2017
		mu 0 3 1004 1000 1003
		f 3 2018 2019 -2018
		mu 0 3 1003 1005 1004
		f 3 2020 -2020 2021
		mu 0 3 1006 1004 1005
		f 3 2022 2023 -2022
		mu 0 3 1005 1007 1006
		f 3 -2023 2024 2025
		mu 0 3 1007 1005 1008
		f 3 2026 -2012 2027
		mu 0 3 1009 1010 1011
		f 3 -2017 2028 -2028
		mu 0 3 1011 1012 1009
		f 3 2029 -2029 2030
		mu 0 3 1013 1009 1012
		f 3 -2021 2031 -2031
		mu 0 3 1012 1014 1013
		f 3 2032 -2032 2033
		mu 0 3 1015 1013 1014
		f 3 2034 2035 -2034
		mu 0 3 1014 1016 1015
		f 4 2036 2037 2038 -2036
		mu 0 4 1016 1017 1018 1015
		f 3 2039 2040 2041
		mu 0 3 1019 1020 1021
		f 4 2042 2043 2044 2045
		mu 0 4 1022 1023 1024 1025
		f 3 2046 2047 2048
		mu 0 3 1026 1027 1028
		f 3 -2047 2049 2050
		mu 0 3 1027 1026 1029
		f 3 2051 2052 -2051
		mu 0 3 1029 1030 1027
		f 3 -2052 2053 2054
		mu 0 3 1030 1029 1031
		f 3 2055 2056 -2055
		mu 0 3 1031 1032 1030
		f 3 2057 -2056 2058
		mu 0 3 1033 1032 1031
		f 3 2059 2060 2061
		mu 0 3 1007 1019 1034
		f 3 2062 2063 -2062
		mu 0 3 1034 1035 1007
		f 3 2064 -2063 2065
		mu 0 3 1036 1035 1034
		f 3 2066 2067 -2066
		mu 0 3 1034 1037 1036
		f 3 2068 -2068 2069
		mu 0 3 1038 1036 1037
		f 3 2070 2071 -2070
		mu 0 3 1037 1039 1038
		f 3 2072 -2072 2073
		mu 0 3 1040 1038 1039
		f 4 2074 2075 -2045 2076
		mu 0 4 1041 1042 1025 1024
		f 3 2077 2078 2079
		mu 0 3 1043 1044 1026
		f 3 2080 -2079 -2065
		mu 0 3 1045 1026 1044
		f 3 -2050 -2081 2081
		mu 0 3 1029 1026 1045
		f 3 2082 -2054 -2082
		mu 0 3 1045 1031 1029
		f 3 -2083 -2069 2083
		mu 0 3 1031 1045 1046
		f 3 -2073 -2059 -2084
		mu 0 3 1046 1033 1031
		f 3 2084 2085 2086
		mu 0 3 1047 1048 1020
		f 3 -2085 2087 2088
		mu 0 3 1048 1047 1049
		f 3 2089 2090 -2089
		mu 0 3 1049 1050 1048
		f 3 2091 -2090 2092
		mu 0 3 1051 1050 1049
		f 3 2093 2094 -2093
		mu 0 3 1049 1052 1051
		f 3 2095 -2095 2096
		mu 0 3 1053 1051 1052
		f 3 2097 466 2098
		mu 0 3 1054 1055 1056
		f 3 2099 2100 -2099
		mu 0 3 1056 1057 1054
		f 3 2101 -2101 2102
		mu 0 3 1058 1054 1057
		f 3 -2100 467 2103
		mu 0 3 1057 1056 1059
		f 3 -2103 2104 2105
		mu 0 3 1058 1057 1060
		f 3 2106 2107 -2106
		mu 0 3 1060 1061 1058
		f 3 2108 -2105 2109
		mu 0 3 1062 1060 1057
		f 3 2110 2111 -2110
		mu 0 3 1057 1063 1062
		f 3 -2111 -2104 2112
		mu 0 3 1063 1057 1059
		f 3 468 2113 -2113
		mu 0 3 1059 1064 1063
		f 3 2114 -2114 469
		mu 0 3 1065 1063 1064
		f 3 2115 -2115 2116
		mu 0 3 1066 1063 1065
		f 3 470 2117 -2117
		mu 0 3 1065 1067 1066
		f 3 -2116 2118 2119
		mu 0 3 1063 1066 1068
		f 3 2120 -2112 -2120
		mu 0 3 1068 1062 1063
		f 3 2121 -2119 2122
		mu 0 3 1069 1068 1066
		f 3 -2118 2123 -2123
		mu 0 3 1066 1067 1069
		f 3 2124 -2124 471
		mu 0 3 1070 1069 1067
		f 3 2125 -2125 2126
		mu 0 3 1071 1069 1070
		f 3 472 2127 -2127
		mu 0 3 1070 1072 1071
		f 3 -2126 2128 2129
		mu 0 3 1069 1071 1073
		f 3 2130 -2122 -2130
		mu 0 3 1073 1068 1069
		f 3 -2131 2131 2132
		mu 0 3 1068 1073 1074
		f 3 2133 2134 -2133
		mu 0 3 1074 1075 1068
		f 3 -2121 -2135 2135
		mu 0 3 1062 1068 1075
		f 3 2136 2137 -2136
		mu 0 3 1075 1076 1062
		f 3 -2109 -2138 2138
		mu 0 3 1060 1062 1076
		f 3 2139 2140 -2139
		mu 0 3 1076 1077 1060
		f 3 -2107 -2141 2141
		mu 0 3 1061 1060 1077
		f 3 2142 2143 -2142
		mu 0 3 1077 1078 1061
		f 3 2144 -2144 2145
		mu 0 3 1079 1061 1078
		f 3 2146 -2143 2147
		mu 0 3 1080 1078 1077
		f 3 -2140 2148 -2148
		mu 0 3 1077 1076 1080
		f 3 2149 -2149 2150
		mu 0 3 1081 1080 1076
		f 3 -2137 2151 -2151
		mu 0 3 1076 1075 1081
		f 3 2152 -2152 -2134
		mu 0 3 1074 1081 1075
		f 3 2153 -2153 2154
		mu 0 3 1082 1081 1074
		f 3 2155 2156 -2155
		mu 0 3 1074 1083 1082
		f 3 2157 -2156 2158
		mu 0 3 1084 1083 1074
		f 3 -2132 2159 -2159
		mu 0 3 1074 1073 1084
		f 3 2160 -2160 -2129
		mu 0 3 1071 1084 1073
		f 3 2161 -2161 2162
		mu 0 3 1085 1084 1071
		f 3 -2128 2163 -2163
		mu 0 3 1071 1072 1085
		f 3 2164 -2164 473
		mu 0 3 1086 1085 1072
		f 3 2165 -2165 2166
		mu 0 3 1087 1085 1086
		f 3 474 -2098 -2167
		mu 0 3 1086 1088 1087
		f 3 -2166 -2102 2167
		mu 0 3 1085 1087 1089
		f 3 2168 -2162 -2168
		mu 0 3 1089 1084 1085
		f 3 -2169 -2108 2169
		mu 0 3 1084 1089 1090
		f 3 2170 -2158 -2170
		mu 0 3 1090 1083 1084
		f 3 2171 -2171 2172
		mu 0 3 1091 1083 1090
		f 3 -2145 2173 -2173
		mu 0 3 1090 1092 1091
		f 3 -2172 2174 2175
		mu 0 3 1083 1091 1093
		f 3 2176 -2157 -2176
		mu 0 3 1093 1082 1083
		f 3 -2154 -2177 2177
		mu 0 3 1081 1082 1093
		f 3 2178 2179 -2178
		mu 0 3 1093 1094 1081
		f 3 2180 -2180 2181
		mu 0 3 1095 1081 1094
		f 3 -2150 -2181 2182
		mu 0 3 1080 1081 1095
		f 3 2183 -2147 -2183
		mu 0 3 1095 1078 1080
		f 3 -2184 2184 2185
		mu 0 3 1078 1095 1096
		f 3 2186 -2146 -2186
		mu 0 3 1096 1079 1078
		f 3 2187 -2187 2188
		mu 0 3 1097 1079 1096
		f 3 2189 2190 -2189
		mu 0 3 1096 1098 1097
		f 3 -2190 2191 2192
		mu 0 3 1098 1096 1099
		f 3 2193 2194 -2193
		mu 0 3 1099 1100 1098
		f 3 2195 -2192 2196
		mu 0 3 1101 1099 1096
		f 3 -2185 2197 -2197
		mu 0 3 1096 1095 1101
		f 3 2198 -2198 -2182
		mu 0 3 1094 1101 1095
		f 3 2199 -2199 2200
		mu 0 3 1102 1101 1094
		f 3 -2179 2201 -2201
		mu 0 3 1094 1093 1102
		f 3 -2200 2202 2203
		mu 0 3 1101 1102 1103
		f 3 2204 -2196 -2204
		mu 0 3 1103 1099 1101
		f 3 -2205 2205 2206
		mu 0 3 1099 1103 1104
		f 3 2207 -2194 -2207
		mu 0 3 1104 1100 1099
		f 3 2208 -2208 2209
		mu 0 3 1105 1100 1104
		f 3 2210 2211 -2210
		mu 0 3 1104 1106 1105
		f 3 2212 -2211 2213
		mu 0 3 1107 1106 1104
		f 3 -2206 2214 -2214
		mu 0 3 1104 1103 1107
		f 3 2215 -2213 2216
		mu 0 3 1108 1106 1107
		f 3 2217 -2215 2218
		mu 0 3 1109 1107 1103
		f 3 -2203 2219 -2219
		mu 0 3 1103 1102 1109
		f 3 2220 -2220 2221
		mu 0 3 1110 1109 1102
		f 3 -2202 2222 -2222
		mu 0 3 1102 1093 1110
		f 3 2223 -2223 2224
		mu 0 3 1111 1110 1093
		f 3 -2175 2225 -2225
		mu 0 3 1093 1091 1111
		f 3 2226 -2226 2227
		mu 0 3 1112 1111 1091
		f 3 -2174 -2188 -2228
		mu 0 3 1091 1092 1112
		f 3 -2227 -2191 2228
		mu 0 3 1111 1112 1113
		f 3 2229 2230 -2229
		mu 0 3 1113 1114 1111
		f 3 -2224 -2231 2231
		mu 0 3 1110 1111 1114
		f 3 2232 -2230 -2195
		mu 0 3 1115 1114 1113
		f 3 -2232 2233 2234
		mu 0 3 1110 1114 1116
		f 3 2235 -2221 -2235
		mu 0 3 1116 1109 1110
		f 3 2236 -2234 2237
		mu 0 3 1117 1116 1114
		f 3 -2233 2238 -2238
		mu 0 3 1114 1115 1117
		f 3 2239 -2239 -2209
		mu 0 3 1118 1117 1115
		f 3 -2240 2240 2241
		mu 0 3 1117 1118 1119
		f 3 2242 2243 -2242
		mu 0 3 1119 1120 1117
		f 3 -2237 -2244 2244
		mu 0 3 1116 1117 1120
		f 3 2245 -2236 -2245
		mu 0 3 1120 1109 1116
		f 3 -2246 2246 2247
		mu 0 3 1109 1120 1121
		f 3 2248 -2218 -2248
		mu 0 3 1121 1107 1109
		f 3 -2217 -2249 2249
		mu 0 3 1108 1107 1121
		f 3 2250 2251 -2250
		mu 0 3 1121 1122 1108
		f 3 2252 -2251 2253
		mu 0 3 1123 1122 1121
		f 3 -2247 2254 -2254
		mu 0 3 1121 1120 1123
		f 3 2255 -2255 -2243
		mu 0 3 1119 1123 1120
		f 3 2256 2257 2258
		mu 0 3 1124 1125 1126
		f 4 2259 2260 -2259 2261
		mu 0 4 1024 1127 1124 1126
		f 4 2262 -2260 2263 2264
		mu 0 4 1128 1127 1024 1129
		f 3 -2044 2265 -2264
		mu 0 3 1024 1023 1129
		f 4 2266 2267 2268 2269
		mu 0 4 1130 1131 1132 1128
		f 3 2270 2271 2272
		mu 0 3 1133 1134 1135
		f 3 2273 -2272 2274
		mu 0 3 1136 1135 1134
		f 3 2275 2276 -2275
		mu 0 3 1134 1137 1136
		f 3 2277 -2277 2278
		mu 0 3 1138 1136 1137
		f 3 2279 2280 -2279
		mu 0 3 1137 1139 1138
		f 3 2281 -2281 2282
		mu 0 3 1140 1138 1139
		f 3 -2282 2283 2284
		mu 0 3 1138 1140 1141
		f 3 2285 2286 -2285
		mu 0 3 1141 1142 1138
		f 3 -2278 -2287 2287
		mu 0 3 1136 1138 1142
		f 3 2288 2289 -2288
		mu 0 3 1142 1143 1136
		f 3 -2274 -2290 2290
		mu 0 3 1135 1136 1143
		f 3 2291 2292 -2291
		mu 0 3 1143 1144 1135
		f 4 -2269 2293 2294 2295
		mu 0 4 1128 1132 1145 1146
		f 3 2296 2297 -2296
		mu 0 3 1146 1147 1128
		f 4 2298 -2298 2299 2300
		mu 0 4 1148 1128 1147 1149
		f 3 -2263 -2299 2301
		mu 0 3 1127 1128 1148
		f 3 2302 -2301 2303
		mu 0 3 1150 1148 1149
		f 3 2304 -2302 2305
		mu 0 3 1151 1127 1148
		f 3 2306 2307 -2306
		mu 0 3 1148 1152 1151
		f 3 2308 -2307 -2303
		mu 0 3 1150 1152 1148
		f 3 -2308 2309 2310
		mu 0 3 1151 1152 1153
		f 3 2311 2312 -2311
		mu 0 3 1153 1154 1151
		f 3 -2305 -2313 2313
		mu 0 3 1127 1151 1154
		f 3 2314 2315 -2314
		mu 0 3 1154 1155 1127
		f 3 -2252 -2315 2316
		mu 0 3 1156 1155 1154
		f 3 -2312 2317 -2317
		mu 0 3 1154 1153 1156
		f 3 -2216 -2318 2318
		mu 0 3 1157 1156 1153;
	setAttr ".fc[1500:1999]"
		f 3 2319 -2212 -2319
		mu 0 3 1153 1158 1157
		f 3 2320 -2320 2321
		mu 0 3 1159 1158 1153
		f 3 -2310 2322 -2322
		mu 0 3 1153 1152 1159
		f 3 -2241 -2321 2323
		mu 0 3 1160 1158 1159
		f 3 2324 2325 -2324
		mu 0 3 1159 1161 1160
		f 3 -2325 2326 2327
		mu 0 3 1161 1159 1162
		f 3 2328 2329 -2328
		mu 0 3 1162 1163 1161
		f 3 2330 -2329 2331
		mu 0 3 1164 1163 1162
		f 3 2332 2333 -2332
		mu 0 3 1162 1165 1164
		f 3 -2333 -2327 2334
		mu 0 3 1165 1162 1159
		f 3 2335 2336 -2335
		mu 0 3 1159 1166 1165
		f 3 -2336 -2323 2337
		mu 0 3 1166 1159 1152
		f 3 2338 2339 -2338
		mu 0 3 1152 1167 1166
		f 3 -2339 -2309 2340
		mu 0 3 1167 1152 1150
		f 3 2341 2342 -2341
		mu 0 3 1150 1168 1167
		f 3 -2340 -2343 2343
		mu 0 3 1166 1167 1168
		f 3 2344 -2342 2345
		mu 0 3 1169 1168 1150
		f 3 -2304 2346 -2346
		mu 0 3 1150 1149 1169
		f 3 2347 -2347 2348
		mu 0 3 1170 1169 1149
		f 3 -2348 2349 2350
		mu 0 3 1169 1170 1020
		f 3 2351 -2345 -2351
		mu 0 3 1020 1168 1169
		f 3 -2087 -2350 2352
		mu 0 3 1047 1020 1170
		f 3 -2040 2353 -2352
		mu 0 3 1020 1019 1168
		f 3 -2344 -2354 2354
		mu 0 3 1166 1168 1019
		f 3 2355 2356 -2355
		mu 0 3 1019 1171 1166
		f 3 -2337 -2357 2357
		mu 0 3 1165 1166 1171
		f 3 2358 2359 -2358
		mu 0 3 1171 1172 1165
		f 3 -2334 -2360 2360
		mu 0 3 1173 1165 1172
		f 3 2361 2362 -2361
		mu 0 3 1172 1174 1173
		f 3 2363 -2363 2364
		mu 0 3 1175 1173 1174
		f 3 2365 2366 -2365
		mu 0 3 1174 1176 1175
		f 3 -2366 2367 2368
		mu 0 3 1176 1174 1177
		f 3 2369 2370 -2369
		mu 0 3 1177 1178 1176
		f 3 2371 -2370 2372
		mu 0 3 1179 1178 1177
		f 3 2373 2374 -2373
		mu 0 3 1177 1180 1179
		f 3 2375 -2374 2376
		mu 0 3 1181 1180 1177
		f 3 -2368 2377 -2377
		mu 0 3 1177 1174 1181
		f 3 2378 -2378 2379
		mu 0 3 1182 1181 1174
		f 3 2380 2381 -2380
		mu 0 3 1174 1183 1182
		f 3 -2381 -2362 2382
		mu 0 3 1183 1174 1172
		f 3 -2359 2383 -2383
		mu 0 3 1172 1171 1183
		f 3 2384 -2384 2385
		mu 0 3 1184 1183 1171
		f 3 2386 2387 -2386
		mu 0 3 1171 1008 1184
		f 3 2388 -2387 -2356
		mu 0 3 1019 1008 1171
		f 3 2389 -2388 2390
		mu 0 3 1185 1184 1008
		f 3 -2025 2391 -2391
		mu 0 3 1008 1005 1185
		f 3 2392 -2392 2393
		mu 0 3 1186 1185 1005
		f 3 2394 2395 -2394
		mu 0 3 1005 1187 1186
		f 3 -2395 -2019 2396
		mu 0 3 1187 1005 1003
		f 3 2397 2398 -2397
		mu 0 3 1003 1188 1187
		f 3 -2398 -2015 2399
		mu 0 3 1188 1003 1002
		f 3 -2013 2400 -2400
		mu 0 3 1002 1001 1188
		f 3 -2256 -2326 2401
		mu 0 3 1189 1190 1191
		f 3 2402 2403 -2402
		mu 0 3 1191 1192 1189
		f 3 -2253 -2404 2404
		mu 0 3 1155 1189 1192
		f 3 2405 -2403 -2330
		mu 0 3 1193 1192 1191
		f 3 -2316 -2405 2406
		mu 0 3 1127 1155 1192
		f 3 2407 2408 -2407
		mu 0 3 1192 1194 1127
		f 3 -2261 -2409 2409
		mu 0 3 1124 1127 1194
		f 3 2410 -2408 2411
		mu 0 3 1195 1194 1192
		f 3 -2406 2412 -2412
		mu 0 3 1192 1193 1195
		f 3 2413 -2413 2414
		mu 0 3 1196 1195 1193
		f 3 -2331 2415 -2415
		mu 0 3 1193 1197 1196
		f 3 2416 -2416 -2364
		mu 0 3 1198 1196 1197
		f 3 2417 -2417 2418
		mu 0 3 1199 1196 1198
		f 3 2419 2420 -2419
		mu 0 3 1198 1200 1199
		f 3 -2420 -2367 2421
		mu 0 3 1200 1198 1201
		f 3 -2371 2422 -2422
		mu 0 3 1201 1202 1200
		f 3 2423 -2423 2424
		mu 0 3 1203 1200 1202
		f 3 -2372 2425 -2425
		mu 0 3 1202 1204 1203
		f 3 2426 -2424 2427
		mu 0 3 1205 1200 1203
		f 3 -2426 -2375 -2428
		mu 0 3 1203 1204 1205
		f 3 -2427 -2376 2428
		mu 0 3 1200 1205 1206
		f 3 -2379 2429 -2429
		mu 0 3 1206 1207 1200
		f 3 -2421 -2430 2430
		mu 0 3 1199 1200 1207
		f 3 2431 -2418 -2431
		mu 0 3 1207 1196 1199
		f 3 -2432 2432 2433
		mu 0 3 1196 1207 1208
		f 3 2434 -2414 -2434
		mu 0 3 1208 1195 1196
		f 3 -2435 2435 2436
		mu 0 3 1195 1208 1209
		f 3 2437 -2411 -2437
		mu 0 3 1209 1194 1195
		f 3 -2438 -2390 2438
		mu 0 3 1194 1209 1210
		f 3 2439 -2410 -2439
		mu 0 3 1210 1124 1194
		f 3 2440 -2393 2441
		mu 0 3 1211 1210 1212
		f 4 2442 -2039 2443 -2442
		mu 0 4 1212 1015 1018 1211
		f 3 -2033 -2443 2444
		mu 0 3 1013 1015 1212
		f 3 -2396 2445 -2445
		mu 0 3 1212 1213 1013
		f 3 -2030 -2446 2446
		mu 0 3 1009 1013 1213
		f 3 -2399 2447 -2447
		mu 0 3 1213 1214 1009
		f 3 -2027 -2448 -2401
		mu 0 3 1010 1009 1214
		f 3 -2433 -2382 2448
		mu 0 3 1208 1207 1215
		f 3 -2385 -2436 -2449
		mu 0 3 1215 1209 1208
		f 3 2449 -2097 2450
		mu 0 3 1216 1053 1052
		f 3 -2094 2451 -2451
		mu 0 3 1052 1049 1216
		f 3 2452 -2452 2453
		mu 0 3 1217 1216 1049
		f 3 -2088 2454 -2454
		mu 0 3 1049 1047 1217
		f 3 -2453 2455 2456
		mu 0 3 1216 1217 1218
		f 3 2457 -2450 -2457
		mu 0 3 1218 1219 1216
		f 3 -2096 -2458 2458
		mu 0 3 1220 1219 1218
		f 3 2459 -2092 -2459
		mu 0 3 1218 1221 1220
		f 3 2460 -2460 2461
		mu 0 3 1222 1221 1218
		f 3 -2456 2462 -2462
		mu 0 3 1218 1217 1222
		f 3 -2091 -2461 2463
		mu 0 3 1223 1221 1222
		f 3 2464 -2463 2465
		mu 0 3 1224 1222 1217
		f 3 -2455 2466 -2466
		mu 0 3 1217 1047 1224
		f 3 2467 -2467 -2353
		mu 0 3 1170 1224 1047
		f 3 -2468 2468 2469
		mu 0 3 1224 1170 1225
		f 3 2470 -2465 -2470
		mu 0 3 1225 1222 1224
		f 3 -2464 -2471 2471
		mu 0 3 1223 1222 1225
		f 3 2472 2473 -2472
		mu 0 3 1225 1226 1223
		f 4 2474 2475 2476 2477
		mu 0 4 1149 1227 1228 1229
		f 3 2478 -2349 -2478
		mu 0 3 1229 1170 1149
		f 3 -2061 -2042 2479
		mu 0 3 1034 1019 1021
		f 3 2480 2481 -2480
		mu 0 3 1021 1230 1034
		f 3 2482 -2482 -2053
		mu 0 3 1231 1034 1230
		f 3 -2067 -2483 2483
		mu 0 3 1037 1034 1231
		f 3 -2057 2484 -2484
		mu 0 3 1231 1232 1037
		f 3 -2071 -2485 2485
		mu 0 3 1039 1037 1232
		f 3 -2058 -2074 -2486
		mu 0 3 1232 1040 1039
		f 3 -2284 2486 2487
		mu 0 3 1233 1234 1235
		f 3 2488 2489 -2488
		mu 0 3 1235 1236 1233
		f 3 -2286 -2490 2490
		mu 0 3 1237 1233 1236
		f 3 2491 2492 -2491
		mu 0 3 1236 1238 1237
		f 3 -2289 -2493 2493
		mu 0 3 1239 1237 1238
		f 3 2494 2495 -2494
		mu 0 3 1238 1020 1239
		f 3 -2487 -2283 2496
		mu 0 3 1235 1234 1240
		f 3 2497 -2489 -2497
		mu 0 3 1240 1236 1235
		f 3 -2498 -2280 2498
		mu 0 3 1236 1240 1241
		f 3 -2276 2499 -2499
		mu 0 3 1241 1242 1236
		f 3 -2492 -2500 2500
		mu 0 3 1238 1236 1242
		f 3 2501 2502 -2501
		mu 0 3 1242 1021 1238
		f 3 -2495 -2503 -2041
		mu 0 3 1020 1238 1021
		f 3 -2389 -2060 -2026
		mu 0 3 1008 1019 1007
		f 4 2503 -2076 2504 -2080
		mu 0 4 1026 1025 1042 1043
		f 4 2505 -2046 -2504 -2049
		mu 0 4 1028 1022 1025 1026
		f 4 2506 -2268 2507 -2273
		mu 0 4 1135 1132 1131 1133
		f 4 2508 -2294 -2507 -2293
		mu 0 4 1144 1145 1132 1135
		f 4 -2477 2509 -2473 2510
		mu 0 4 1229 1228 1226 1225
		f 3 -2469 -2479 -2511
		mu 0 3 1225 1170 1229
		f 4 2511 -2038 2512 -2257
		mu 0 4 1124 1018 1017 1125
		f 3 -2444 -2512 2513
		mu 0 3 1211 1018 1124
		f 3 -2440 -2441 -2514
		mu 0 3 1124 1210 1211
		f 3 -2024 2514 -2035
		mu 0 3 1014 1243 1016
		f 3 2515 -2037 -2515
		mu 0 3 1243 1017 1016
		f 3 -2513 -2516 2516
		mu 0 3 1125 1017 1243
		f 3 2517 -2077 -2262
		mu 0 3 1126 1041 1024
		f 4 -2258 -2517 2518 -2518
		mu 0 4 1126 1125 1243 1041
		f 3 2519 -2075 -2519
		mu 0 3 1243 1042 1041
		f 3 -2505 -2520 2520
		mu 0 3 1043 1042 1243
		f 3 -2064 -2078 -2521
		mu 0 3 1243 1044 1043
		f 3 -2048 -2481 2521
		mu 0 3 1028 1027 1244
		f 3 2522 -2506 -2522
		mu 0 3 1244 1022 1028
		f 3 2523 -2043 -2523
		mu 0 3 1244 1023 1022
		f 3 2524 -2270 -2265
		mu 0 3 1129 1130 1128
		f 4 -2266 -2524 2525 -2525
		mu 0 4 1129 1023 1244 1130
		f 3 2526 -2267 -2526
		mu 0 3 1244 1131 1130
		f 3 -2508 -2527 2527
		mu 0 3 1133 1131 1244
		f 3 -2502 -2271 -2528
		mu 0 3 1244 1134 1133
		f 3 -2496 2528 -2292
		mu 0 3 1143 1245 1144
		f 3 2529 -2509 -2529
		mu 0 3 1245 1145 1144
		f 3 -2295 -2530 2530
		mu 0 3 1146 1145 1245
		f 3 2531 -2475 -2300
		mu 0 3 1147 1227 1149
		f 4 2532 -2532 -2297 -2531
		mu 0 4 1245 1227 1147 1146
		f 3 -2476 -2533 2533
		mu 0 3 1228 1227 1245
		f 3 -2510 -2534 2534
		mu 0 3 1226 1228 1245
		f 3 -2474 -2535 -2086
		mu 0 3 1223 1226 1245
		f 3 -2538 -2537 -2536
		mu 0 3 1246 1247 1248
		f 3 2537 -2540 -2539
		mu 0 3 1247 1246 1249
		f 3 -2542 2539 -2541
		mu 0 3 1250 1249 1246
		f 3 2541 -2544 -2543
		mu 0 3 1249 1250 1251
		f 3 -2546 2543 -2545
		mu 0 3 1252 1251 1250
		f 3 2545 -2548 -2547
		mu 0 3 1251 1252 1253
		f 3 -2550 -2549 2546
		mu 0 3 1253 1254 1251
		f 3 -2552 2535 -2551
		mu 0 3 1255 1256 1257
		f 3 2551 -2553 2540
		mu 0 3 1256 1255 1258
		f 3 -2555 2552 -2554
		mu 0 3 1259 1258 1255
		f 3 2554 -2556 2544
		mu 0 3 1258 1259 1260
		f 3 -2558 2555 -2557
		mu 0 3 1261 1260 1259
		f 3 2557 -2560 -2559
		mu 0 3 1260 1261 1262
		f 4 2559 -2563 -2562 -2561
		mu 0 4 1262 1261 1263 1264
		f 3 -2566 -2565 -2564
		mu 0 3 1265 1266 1267
		f 4 -2570 -2569 -2568 -2567
		mu 0 4 1268 1269 1270 1271
		f 3 -2573 -2572 -2571
		mu 0 3 1272 1273 1274
		f 3 -2575 -2574 2570
		mu 0 3 1274 1275 1272
		f 3 2574 -2577 -2576
		mu 0 3 1275 1274 1276
		f 3 -2579 -2578 2575
		mu 0 3 1276 1277 1275
		f 3 2578 -2581 -2580
		mu 0 3 1277 1276 1278
		f 3 -2583 2579 -2582
		mu 0 3 1279 1277 1278
		f 3 -2586 -2585 -2584
		mu 0 3 1253 1280 1265
		f 3 2585 -2588 -2587
		mu 0 3 1280 1253 1281
		f 3 -2590 2586 -2589
		mu 0 3 1282 1280 1281
		f 3 2589 -2592 -2591
		mu 0 3 1280 1282 1283
		f 3 -2594 2591 -2593
		mu 0 3 1284 1283 1282
		f 3 2593 -2596 -2595
		mu 0 3 1283 1284 1285
		f 3 -2598 2595 -2597
		mu 0 3 1286 1285 1284
		f 4 -2601 2568 -2600 -2599
		mu 0 4 1287 1270 1269 1288
		f 3 -2604 -2603 -2602
		mu 0 3 1289 1272 1290
		f 3 2588 2602 -2605
		mu 0 3 1291 1290 1272
		f 3 -2606 2604 2573
		mu 0 3 1275 1291 1272
		f 3 2605 2577 -2607
		mu 0 3 1291 1275 1277
		f 3 -2608 2592 2606
		mu 0 3 1277 1292 1291
		f 3 2607 2582 2596
		mu 0 3 1292 1277 1279
		f 3 -2611 -2610 -2609
		mu 0 3 1293 1267 1294
		f 3 -2613 -2612 2608
		mu 0 3 1294 1295 1293
		f 3 2612 -2615 -2614
		mu 0 3 1295 1294 1296
		f 3 -2617 2613 -2616
		mu 0 3 1297 1295 1296
		f 3 2616 -2619 -2618
		mu 0 3 1295 1297 1298
		f 3 -2621 2618 -2620
		mu 0 3 1299 1298 1297
		f 3 1483 1484 1485
		mu 0 3 1300 1301 1302
		f 3 -1484 1486 1487
		mu 0 3 1301 1300 1303
		f 3 -2623 -1487 -2622
		mu 0 3 1304 1303 1300
		f 3 1488 1489 -1488
		mu 0 3 1303 1305 1301
		f 3 -2625 -2624 2622
		mu 0 3 1304 1306 1303
		f 3 2624 -2627 -2626
		mu 0 3 1306 1304 1307
		f 3 -2629 2623 -2628
		mu 0 3 1308 1303 1306
		f 3 2628 -2630 1490
		mu 0 3 1303 1308 1309
		f 3 1491 -1489 -1491
		mu 0 3 1309 1305 1303
		f 3 -1492 1492 1493
		mu 0 3 1305 1309 1310
		f 3 1494 -1493 1495
		mu 0 3 1311 1310 1309
		f 3 1496 -1496 1497
		mu 0 3 1312 1311 1309
		f 3 -1497 1498 1499
		mu 0 3 1311 1312 1313
		f 3 -2632 -2631 -1498
		mu 0 3 1309 1314 1312
		f 3 2631 2629 -2633
		mu 0 3 1314 1309 1308
		f 3 1500 2630 -2634
		mu 0 3 1315 1312 1314
		f 3 -1501 1501 -1499
		mu 0 3 1312 1315 1313
		f 3 1502 -1502 1503
		mu 0 3 1316 1313 1315
		f 3 1504 -1504 1505
		mu 0 3 1317 1316 1315
		f 3 -1505 1506 1507
		mu 0 3 1316 1317 1318
		f 3 -2636 -2635 -1506
		mu 0 3 1315 1319 1317
		f 3 2635 2633 -2637
		mu 0 3 1319 1315 1314
		f 3 -2639 -2638 2636
		mu 0 3 1314 1320 1319
		f 3 2638 -2641 -2640
		mu 0 3 1320 1314 1321
		f 3 -2642 2640 2632
		mu 0 3 1308 1321 1314
		f 3 2641 -2644 -2643
		mu 0 3 1321 1308 1322
		f 3 -2645 2643 2627
		mu 0 3 1306 1322 1308
		f 3 2644 -2647 -2646
		mu 0 3 1322 1306 1323
		f 3 -2648 2646 2625
		mu 0 3 1307 1323 1306
		f 3 2647 -2650 -2649
		mu 0 3 1323 1307 1324
		f 3 -2652 2649 -2651
		mu 0 3 1325 1324 1307
		f 3 -2654 2648 -2653
		mu 0 3 1326 1323 1324
		f 3 2653 -2655 2645
		mu 0 3 1323 1326 1322
		f 3 -2657 2654 -2656
		mu 0 3 1327 1322 1326
		f 3 2656 -2658 2642
		mu 0 3 1322 1327 1321
		f 3 2639 2657 -2659
		mu 0 3 1320 1321 1327
		f 3 -2661 2658 -2660
		mu 0 3 1328 1320 1327
		f 3 2660 -2663 -2662
		mu 0 3 1320 1328 1329
		f 3 -2665 2661 -2664
		mu 0 3 1330 1320 1329
		f 3 2664 -2666 2637
		mu 0 3 1320 1330 1319
		f 3 2634 2665 -2667
		mu 0 3 1317 1319 1330
		f 3 1508 2666 -2668
		mu 0 3 1331 1317 1330
		f 3 -1509 1509 -1507
		mu 0 3 1317 1331 1318
		f 3 1510 -1510 1511
		mu 0 3 1332 1318 1331
		f 3 1512 -1512 1513
		mu 0 3 1333 1332 1331
		f 3 -1513 -1486 1514
		mu 0 3 1332 1333 1334
		f 3 -2669 2621 -1514
		mu 0 3 1331 1335 1333
		f 3 2668 2667 -2670
		mu 0 3 1335 1331 1330
		f 3 -2671 2626 2669
		mu 0 3 1330 1336 1335
		f 3 2670 2663 -2672
		mu 0 3 1336 1330 1329
		f 3 -2674 2671 -2673
		mu 0 3 1337 1336 1329
		f 3 2673 -2675 2650
		mu 0 3 1336 1337 1338
		f 3 -2677 -2676 2672
		mu 0 3 1329 1339 1337
		f 3 2676 2662 -2678
		mu 0 3 1339 1329 1328
		f 3 -2679 2677 2659
		mu 0 3 1327 1339 1328
		f 3 2678 -2681 -2680
		mu 0 3 1339 1327 1340
		f 3 -2683 2680 -2682
		mu 0 3 1341 1340 1327
		f 3 -2684 2681 2655
		mu 0 3 1326 1341 1327
		f 3 2683 2652 -2685
		mu 0 3 1341 1326 1324
		f 3 -2687 -2686 2684
		mu 0 3 1324 1342 1341
		f 3 2686 2651 -2688
		mu 0 3 1342 1324 1325
		f 3 -2690 2687 -2689
		mu 0 3 1343 1342 1325
		f 3 2689 -2692 -2691
		mu 0 3 1342 1343 1344
		f 3 -2694 -2693 2690
		mu 0 3 1344 1345 1342
		f 3 2693 -2696 -2695
		mu 0 3 1345 1344 1346
		f 3 -2698 2692 -2697
		mu 0 3 1347 1342 1345
		f 3 2697 -2699 2685
		mu 0 3 1342 1347 1341
		f 3 2682 2698 -2700
		mu 0 3 1340 1341 1347
		f 3 -2702 2699 -2701
		mu 0 3 1348 1340 1347
		f 3 2701 -2703 2679
		mu 0 3 1340 1348 1339
		f 3 -2705 -2704 2700
		mu 0 3 1347 1349 1348
		f 3 2704 2696 -2706
		mu 0 3 1349 1347 1345
		f 3 -2708 -2707 2705
		mu 0 3 1345 1350 1349
		f 3 2707 2694 -2709
		mu 0 3 1350 1345 1346
		f 3 -2711 2708 -2710
		mu 0 3 1351 1350 1346
		f 3 2710 -2713 -2712
		mu 0 3 1350 1351 1352
		f 3 -2715 2711 -2714
		mu 0 3 1353 1350 1352
		f 3 2714 -2716 2706
		mu 0 3 1350 1353 1349
		f 3 -2718 2713 -2717
		mu 0 3 1354 1353 1352
		f 3 -2720 2715 -2719
		mu 0 3 1355 1349 1353
		f 3 2719 -2721 2703
		mu 0 3 1349 1355 1348
		f 3 -2723 2720 -2722
		mu 0 3 1356 1348 1355
		f 3 2722 -2724 2702
		mu 0 3 1348 1356 1339
		f 3 -2726 2723 -2725
		mu 0 3 1357 1339 1356
		f 3 2725 -2727 2675
		mu 0 3 1339 1357 1337
		f 3 -2729 2726 -2728
		mu 0 3 1358 1337 1357
		f 3 2728 2688 2674
		mu 0 3 1337 1358 1338
		f 3 -2730 2691 2727
		mu 0 3 1357 1359 1358
		f 3 2729 -2732 -2731
		mu 0 3 1359 1357 1360
		f 3 -2733 2731 2724
		mu 0 3 1356 1360 1357
		f 3 2695 2730 -2734
		mu 0 3 1361 1359 1360
		f 3 -2736 -2735 2732
		mu 0 3 1356 1362 1360
		f 3 2735 2721 -2737
		mu 0 3 1362 1356 1355
		f 3 -2739 2734 -2738
		mu 0 3 1363 1360 1362
		f 3 2738 -2740 2733
		mu 0 3 1360 1363 1361
		f 3 2709 2739 -2741
		mu 0 3 1364 1361 1363
		f 3 -2743 -2742 2740
		mu 0 3 1363 1365 1364
		f 3 2742 -2745 -2744
		mu 0 3 1365 1363 1366
		f 3 -2746 2744 2737
		mu 0 3 1362 1366 1363
		f 3 2745 2736 -2747
		mu 0 3 1366 1362 1355
		f 3 -2749 -2748 2746
		mu 0 3 1355 1367 1366
		f 3 2748 2718 -2750
		mu 0 3 1367 1355 1353
		f 3 -2751 2749 2717
		mu 0 3 1354 1367 1353
		f 3 2750 -2753 -2752
		mu 0 3 1367 1354 1368
		f 3 -2755 2751 -2754
		mu 0 3 1369 1367 1368
		f 3 2754 -2756 2747
		mu 0 3 1367 1369 1366
		f 3 2743 2755 -2757
		mu 0 3 1365 1366 1369
		f 3 -2760 -2759 -2758
		mu 0 3 1370 1371 1372
		f 4 -2763 2759 -2762 -2761
		mu 0 4 1270 1371 1370 1373
		f 4 -2766 -2765 2760 -2764
		mu 0 4 1374 1375 1270 1373
		f 3 2764 -2767 2567
		mu 0 3 1270 1375 1271
		f 4 -2771 -2770 -2769 -2768
		mu 0 4 1376 1374 1377 1378
		f 3 -2774 -2773 -2772
		mu 0 3 1379 1380 1381
		f 3 -2776 2772 -2775
		mu 0 3 1382 1381 1380
		f 3 2775 -2778 -2777
		mu 0 3 1381 1382 1383
		f 3 -2780 2777 -2779
		mu 0 3 1384 1383 1382
		f 3 2779 -2782 -2781
		mu 0 3 1383 1384 1385
		f 3 -2784 2781 -2783
		mu 0 3 1386 1385 1384
		f 3 -2786 -2785 2782
		mu 0 3 1384 1387 1386
		f 3 2785 -2788 -2787
		mu 0 3 1387 1384 1388
		f 3 -2789 2787 2778
		mu 0 3 1382 1388 1384
		f 3 2788 -2791 -2790
		mu 0 3 1388 1382 1389
		f 3 -2792 2790 2774
		mu 0 3 1380 1389 1382
		f 3 2791 -2794 -2793
		mu 0 3 1389 1380 1390
		f 4 -2797 -2796 -2795 2769
		mu 0 4 1374 1391 1392 1377
		f 3 2796 -2799 -2798
		mu 0 3 1391 1374 1393
		f 4 -2802 -2801 2798 -2800
		mu 0 4 1394 1395 1393 1374
		f 3 -2803 2799 2763
		mu 0 3 1373 1394 1374
		f 3 -2805 2801 -2804
		mu 0 3 1396 1395 1394
		f 3 -2807 2802 -2806
		mu 0 3 1397 1394 1373
		f 3 2806 -2809 -2808
		mu 0 3 1394 1397 1398
		f 3 2803 2807 -2810
		mu 0 3 1396 1394 1398
		f 3 -2812 -2811 2808
		mu 0 3 1397 1399 1398
		f 3 2811 -2814 -2813
		mu 0 3 1399 1397 1400
		f 3 -2815 2813 2805
		mu 0 3 1373 1400 1397
		f 3 2814 -2817 -2816
		mu 0 3 1400 1373 1401
		f 3 -2818 2815 2752
		mu 0 3 1402 1400 1401
		f 3 2817 -2819 2812
		mu 0 3 1400 1402 1399
		f 3 -2820 2818 2716
		mu 0 3 1403 1399 1402
		f 3 2819 2712 -2821
		mu 0 3 1399 1403 1404
		f 3 -2823 2820 -2822
		mu 0 3 1405 1399 1404
		f 3 2822 -2824 2810
		mu 0 3 1399 1405 1398
		f 3 -2825 2821 2741
		mu 0 3 1406 1405 1404
		f 3 2824 -2827 -2826
		mu 0 3 1405 1406 1407
		f 3 -2829 -2828 2825
		mu 0 3 1407 1408 1405
		f 3 2828 -2831 -2830
		mu 0 3 1408 1407 1409
		f 3 -2833 2829 -2832
		mu 0 3 1410 1408 1409
		f 3 2832 -2835 -2834
		mu 0 3 1408 1410 1411
		f 3 -2836 2827 2833
		mu 0 3 1411 1405 1408
		f 3 2835 -2838 -2837
		mu 0 3 1405 1411 1412
		f 3 -2839 2823 2836
		mu 0 3 1412 1398 1405
		f 3 2838 -2841 -2840
		mu 0 3 1398 1412 1413
		f 3 -2842 2809 2839
		mu 0 3 1413 1396 1398
		f 3 2841 -2844 -2843
		mu 0 3 1396 1413 1414
		f 3 -2845 2843 2840
		mu 0 3 1412 1414 1413
		f 3 -2847 2842 -2846
		mu 0 3 1415 1396 1414
		f 3 2846 -2848 2804
		mu 0 3 1396 1415 1395
		f 3 -2850 2847 -2849
		mu 0 3 1416 1395 1415
		f 3 -2852 -2851 2848
		mu 0 3 1415 1267 1416
		f 3 2851 2845 -2853
		mu 0 3 1267 1415 1414
		f 3 -2854 2850 2610
		mu 0 3 1293 1416 1267
		f 3 2852 -2855 2563
		mu 0 3 1267 1414 1265
		f 3 -2856 2854 2844
		mu 0 3 1412 1265 1414
		f 3 2855 -2858 -2857
		mu 0 3 1265 1412 1417
		f 3 -2859 2857 2837
		mu 0 3 1411 1417 1412
		f 3 2858 -2861 -2860
		mu 0 3 1417 1411 1418
		f 3 -2862 2860 2834
		mu 0 3 1419 1418 1411
		f 3 2861 -2864 -2863
		mu 0 3 1418 1419 1420
		f 3 -2866 2863 -2865
		mu 0 3 1421 1420 1419
		f 3 2865 -2868 -2867
		mu 0 3 1420 1421 1422
		f 3 -2870 -2869 2866
		mu 0 3 1422 1423 1420
		f 3 2869 -2872 -2871
		mu 0 3 1423 1422 1424
		f 3 -2874 2870 -2873
		mu 0 3 1425 1423 1424
		f 3 2873 -2876 -2875
		mu 0 3 1423 1425 1426
		f 3 -2878 2874 -2877
		mu 0 3 1427 1423 1426
		f 3 2877 -2879 2868
		mu 0 3 1423 1427 1420
		f 3 -2881 2878 -2880
		mu 0 3 1428 1420 1427
		f 3 2880 -2883 -2882
		mu 0 3 1420 1428 1429
		f 3 -2884 2862 2881
		mu 0 3 1429 1418 1420
		f 3 2883 -2885 2859
		mu 0 3 1418 1429 1417
		f 3 -2887 2884 -2886
		mu 0 3 1430 1417 1429
		f 3 2886 -2889 -2888
		mu 0 3 1417 1430 1254
		f 3 2856 2887 -2890
		mu 0 3 1265 1417 1254
		f 3 -2892 2888 -2891
		mu 0 3 1431 1254 1430
		f 3 2891 -2893 2548
		mu 0 3 1254 1431 1251
		f 3 -2895 2892 -2894
		mu 0 3 1432 1251 1431
		f 3 2894 -2897 -2896
		mu 0 3 1251 1432 1433
		f 3 -2898 2542 2895
		mu 0 3 1433 1249 1251
		f 3 2897 -2900 -2899
		mu 0 3 1249 1433 1434
		f 3 -2901 2538 2898
		mu 0 3 1434 1247 1249
		f 3 2900 -2902 2536
		mu 0 3 1247 1434 1248
		f 3 -2903 2826 2756
		mu 0 3 1435 1436 1437
		f 3 2902 -2905 -2904
		mu 0 3 1436 1435 1438
		f 3 -2906 2904 2753
		mu 0 3 1401 1438 1435
		f 3 2830 2903 -2907
		mu 0 3 1439 1436 1438
		f 3 -2908 2905 2816
		mu 0 3 1373 1438 1401
		f 3 2907 -2910 -2909
		mu 0 3 1438 1373 1440
		f 3 -2911 2909 2761
		mu 0 3 1370 1440 1373
		f 3 -2913 2908 -2912
		mu 0 3 1441 1438 1440
		f 3 2912 -2914 2906
		mu 0 3 1438 1441 1439
		f 3 -2916 2913 -2915
		mu 0 3 1442 1439 1441
		f 3 2915 -2917 2831
		mu 0 3 1439 1442 1443
		f 3 2864 2916 -2918
		mu 0 3 1444 1443 1442
		f 3 -2920 2917 -2919
		mu 0 3 1445 1444 1442
		f 3 2919 -2922 -2921
		mu 0 3 1444 1445 1446
		f 3 -2923 2867 2920
		mu 0 3 1446 1447 1444
		f 3 2922 -2924 2871
		mu 0 3 1447 1446 1448
		f 3 -2926 2923 -2925
		mu 0 3 1449 1448 1446
		f 3 2925 -2927 2872
		mu 0 3 1448 1449 1450
		f 3 -2929 2924 -2928
		mu 0 3 1451 1449 1446
		f 3 2928 2875 2926
		mu 0 3 1449 1451 1450
		f 3 -2930 2876 2927
		mu 0 3 1446 1452 1451
		f 3 2929 -2931 2879
		mu 0 3 1452 1446 1453
		f 3 -2932 2930 2921
		mu 0 3 1445 1453 1446
		f 3 2931 2918 -2933
		mu 0 3 1453 1445 1442
		f 3 -2935 -2934 2932
		mu 0 3 1442 1454 1453
		f 3 2934 2914 -2936
		mu 0 3 1454 1442 1441
		f 3 -2938 -2937 2935
		mu 0 3 1441 1455 1454
		f 3 2937 2911 -2939
		mu 0 3 1455 1441 1440
		f 3 -2940 2890 2938
		mu 0 3 1440 1456 1455
		f 3 2939 2910 -2941
		mu 0 3 1456 1440 1370
		f 3 -2943 2893 -2942
		mu 0 3 1457 1458 1456
		f 4 2942 -2945 2562 -2944
		mu 0 4 1458 1457 1263 1261
		f 3 -2946 2943 2556
		mu 0 3 1259 1458 1261
		f 3 2945 -2947 2896
		mu 0 3 1458 1259 1459
		f 3 -2948 2946 2553
		mu 0 3 1255 1459 1259
		f 3 2947 -2949 2899
		mu 0 3 1459 1255 1460
		f 3 2901 2948 2550
		mu 0 3 1257 1460 1255
		f 3 -2950 2882 2933
		mu 0 3 1454 1461 1453
		f 3 2949 2936 2885
		mu 0 3 1461 1454 1455
		f 3 -2952 2620 -2951
		mu 0 3 1462 1298 1299
		f 3 2951 -2953 2617
		mu 0 3 1298 1462 1295
		f 3 -2955 2952 -2954
		mu 0 3 1463 1295 1462
		f 3 2954 -2956 2611
		mu 0 3 1295 1463 1293
		f 3 -2958 -2957 2953
		mu 0 3 1462 1464 1463
		f 3 2957 2950 -2959
		mu 0 3 1464 1462 1465
		f 3 -2960 2958 2619
		mu 0 3 1466 1464 1465
		f 3 2959 2615 -2961
		mu 0 3 1464 1466 1467
		f 3 -2963 2960 -2962
		mu 0 3 1468 1464 1467
		f 3 2962 -2964 2956
		mu 0 3 1464 1468 1463
		f 3 -2965 2961 2614
		mu 0 3 1469 1468 1467
		f 3 -2967 2963 -2966
		mu 0 3 1470 1463 1468
		f 3 2966 -2968 2955
		mu 0 3 1463 1470 1293
		f 3 2853 2967 -2969
		mu 0 3 1416 1293 1470
		f 3 -2971 -2970 2968
		mu 0 3 1470 1471 1416
		f 3 2970 2965 -2972
		mu 0 3 1471 1470 1468
		f 3 -2973 2971 2964
		mu 0 3 1469 1471 1468
		f 3 2972 -2975 -2974
		mu 0 3 1471 1469 1472
		f 4 -2979 -2978 -2977 -2976
		mu 0 4 1395 1473 1474 1475
		f 3 2978 2849 -2980
		mu 0 3 1473 1395 1416
		f 3 -2981 2565 2584
		mu 0 3 1280 1266 1265
		f 3 2980 -2983 -2982
		mu 0 3 1266 1280 1476
		f 3 2576 2982 -2984
		mu 0 3 1477 1476 1280
		f 3 -2985 2983 2590
		mu 0 3 1283 1477 1280
		f 3 2984 -2986 2580
		mu 0 3 1477 1283 1478
		f 3 -2987 2985 2594
		mu 0 3 1285 1478 1283
		f 3 2986 2597 2581
		mu 0 3 1478 1285 1286
		f 3 -2989 -2988 2784
		mu 0 3 1479 1480 1481
		f 3 2988 -2991 -2990
		mu 0 3 1480 1479 1482
		f 3 -2992 2990 2786
		mu 0 3 1483 1482 1479
		f 3 2991 -2994 -2993
		mu 0 3 1482 1483 1484
		f 3 -2995 2993 2789
		mu 0 3 1485 1484 1483
		f 3 2994 -2997 -2996
		mu 0 3 1484 1485 1267
		f 3 -2998 2783 2987
		mu 0 3 1480 1486 1481
		f 3 2997 2989 -2999
		mu 0 3 1486 1480 1482
		f 3 -3000 2780 2998
		mu 0 3 1482 1487 1486
		f 3 2999 -3001 2776
		mu 0 3 1487 1482 1488
		f 3 -3002 3000 2992
		mu 0 3 1484 1488 1482
		f 3 3001 -3004 -3003
		mu 0 3 1488 1484 1266
		f 3 2564 3003 2995
		mu 0 3 1267 1266 1484
		f 3 2549 2583 2889
		mu 0 3 1254 1253 1265
		f 4 2603 -3006 2599 -3005
		mu 0 4 1272 1289 1288 1269
		f 4 2572 3004 2569 -3007
		mu 0 4 1273 1272 1269 1268
		f 4 2773 -3009 2768 -3008
		mu 0 4 1380 1379 1378 1377
		f 4 2793 3007 2794 -3010
		mu 0 4 1390 1380 1377 1392
		f 4 -3012 2973 -3011 2977
		mu 0 4 1473 1471 1472 1474
		f 3 3011 2979 2969
		mu 0 3 1471 1473 1416
		f 4 2757 -3014 2561 -3013
		mu 0 4 1370 1372 1264 1263
		f 3 -3015 3012 2944
		mu 0 3 1457 1370 1263
		f 3 3014 2941 2940
		mu 0 3 1370 1457 1456
		f 3 2558 -3016 2547
		mu 0 3 1260 1262 1489
		f 3 3015 2560 -3017
		mu 0 3 1489 1262 1264
		f 3 -3018 3016 3013
		mu 0 3 1372 1489 1264
		f 3 2762 2600 -3019
		mu 0 3 1371 1270 1287
		f 4 3018 -3020 3017 2758
		mu 0 4 1371 1287 1489 1372
		f 3 3019 2598 -3021
		mu 0 3 1489 1287 1288
		f 3 -3022 3020 3005
		mu 0 3 1289 1489 1288
		f 3 3021 2601 2587
		mu 0 3 1489 1289 1290
		f 3 -3023 2981 2571
		mu 0 3 1273 1490 1274
		f 3 3022 3006 -3024
		mu 0 3 1490 1273 1268
		f 3 3023 2566 -3025
		mu 0 3 1490 1268 1271
		f 3 2765 2770 -3026
		mu 0 3 1375 1374 1376
		f 4 3025 -3027 3024 2766
		mu 0 4 1375 1376 1490 1271;
	setAttr ".fc[2000:2010]"
		f 3 3026 2767 -3028
		mu 0 3 1490 1376 1378
		f 3 -3029 3027 3008
		mu 0 3 1379 1490 1378
		f 3 3028 2771 3002
		mu 0 3 1490 1379 1381
		f 3 2792 -3030 2996
		mu 0 3 1389 1390 1491
		f 3 3029 3009 -3031
		mu 0 3 1491 1390 1392
		f 3 -3032 3030 2795
		mu 0 3 1391 1491 1392
		f 3 2800 2975 -3033
		mu 0 3 1393 1395 1475
		f 4 3031 2797 3032 -3034
		mu 0 4 1491 1391 1393 1475
		f 3 -3035 3033 2976
		mu 0 3 1474 1491 1475
		f 3 -3036 3034 3010
		mu 0 3 1472 1491 1474
		f 3 2609 3035 2974
		mu 0 3 1469 1491 1472;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AD3D1FED-4D85-68FA-BCBB-45AF0216F8F9";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7AB9830A-45FF-E627-53C9-0ABD21125F6C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "64610614-4D32-3BA9-EC31-4BB49FE35A1F";
createNode displayLayerManager -n "layerManager";
	rename -uid "CB9C7721-42D8-2B51-1976-589E60207A20";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "90A302D9-4B9C-EEF7-03C9-609AA2DE4EC0";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "36DAAD22-47A4-3253-5BCB-EFA0D0310CE0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "26C00897-499A-A0B1-704F-57A1D6D334EC";
	setAttr ".g" yes;
createNode standardSurface -n "standardSurface3";
	rename -uid "1C153BAF-47AB-D8F1-32A2-379DF0389BCE";
createNode file -n "c2509_1";
	rename -uid "5E57811B-4406-C7C3-98E8-ECBAE3C1581C";
	setAttr ".ftn" -type "string" "C:/Users/thoma/Desktop/Hollow/c2509.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "c2509_2";
	rename -uid "35DA9772-4903-58DA-3F25-01B6A5696F6F";
	setAttr ".ftn" -type "string" "C:/Users/thoma/Desktop/Hollow/c2509.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "C760F827-4E10-01BB-5DF6-369C2EDC076A";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "7BD49AE3-4DAE-C5F0-0522-29ACF59E0FF1";
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "F87921B4-4EFB-BE87-99A2-C98D3A50A8B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "standardSurface3SG";
	rename -uid "274B287C-4697-F0F4-E6CC-8D9D17C4D77C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "C968FFDF-4E2E-AB1B-E36C-9EAAB025C360";
createNode materialInfo -n "materialInfo13";
	rename -uid "FAF77C18-4E3A-3CFE-6874-A5A48E09498B";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D8C33201-42F0-0407-918C-69915D13F813";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "74B34AC3-4517-D16D-A601-EB8C35A28334";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "BC603794-41F5-2212-3DF1-E2BACFA43C8A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "23399C44-4EB8-076C-F88F-98BF0230065F";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode checker -n "checker1";
	rename -uid "6A18EA66-433C-EC3C-717A-B18F4973EE60";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "C721E464-4523-772E-1BF8-DBAA06F2BF88";
	setAttr ".re" -type "float2" 4 4 ;
createNode blinn -n "blinn1";
	rename -uid "DBAF2A56-4553-C961-8375-4FB8B654B437";
createNode shadingEngine -n "blinn1SG";
	rename -uid "46E1BE0A-416B-488B-95C9-1BAD48E97762";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "6DD227FE-4D16-4A41-3306-D59657FBB844";
createNode remapValue -n "remapValue1";
	rename -uid "385C3196-41B6-A1C8-FE20-B2B86F887DAB";
	setAttr -s 2 ".vl[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "D3AECCCC-42A0-4DA1-9711-A58C64447D24";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -140.26265088050249 -757.45528386993135 ;
	setAttr ".tgi[0].vh" -type "double2" 639.27219783261262 147.39101233986395 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 787.14288330078125;
	setAttr ".tgi[0].ni[0].y" -78.571426391601562;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 480;
	setAttr ".tgi[0].ni[1].y" -34.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -287.14285278320312;
	setAttr ".tgi[0].ni[2].y" -498.57144165039062;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -748.5714111328125;
	setAttr ".tgi[0].ni[3].y" -78.571426391601562;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 675.71429443359375;
	setAttr ".tgi[0].ni[4].y" 42.857143402099609;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -441.42855834960938;
	setAttr ".tgi[0].ni[5].y" -55.714286804199219;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 20;
	setAttr ".tgi[0].ni[6].y" -475.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 57.765453338623047;
	setAttr ".tgi[0].ni[7].y" -231.31930541992188;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C18F0773-40CC-6A9B-9949-949F0D1F6DC7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 763\n            -height 494\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 762\n            -height 493\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 763\n            -height 493\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1458\n            -height 1032\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
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
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1458\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1458\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6C2C1DBF-432A-015A-6033-F99BA9CC413D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "MI_Manny_02";
	rename -uid "FE5DCC7A-4C86-D89B-1EDD-ABA86AC34A68";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
createNode shadingEngine -n "SKM_Manny_LOD0SG";
	rename -uid "66605F43-4970-D7D8-7937-EB86F7116B62";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "52910BE9-4674-9D3F-9397-03A0681AE2F9";
createNode lambert -n "MI_Manny_01";
	rename -uid "C1B2E113-4398-C753-0801-8BBDF16A8A55";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
createNode shadingEngine -n "SKM_Manny_LOD0SG1";
	rename -uid "305F536C-483D-556D-3DC4-B1B8038026C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "D4E94A3F-4CF2-16E5-44CF-57B1B5B9A696";
createNode bump2d -n "bump2d1";
	rename -uid "8DFBE1A6-4CBC-3218-0BE7-18A4E0A2F563";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 4.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "T_Manny_02_N";
	rename -uid "CF376E39-40D4-43BD-6FC5-1A8DD15D0116";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Program Files/Epic Games/temp/render/ttt/M_tex/Baked/T_Manny_02_N.TGA";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "A912587A-4FD6-01B8-EBBA-F7B005DE77C7";
createNode bump2d -n "bump2d2";
	rename -uid "968849B2-405E-00B6-F686-BBA690CE3464";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 4.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "T_Manny_01_N";
	rename -uid "B97FF305-4046-D42F-5D07-E2A2B369389B";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Program Files/Epic Games/temp/render/ttt/M_tex/Baked/T_Manny_01_N.TGA";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "9B166FD1-436C-8E4D-D4BB-76BBAAC2523B";
createNode groupId -n "groupId1";
	rename -uid "55326722-49D6-EEA0-D182-0A913528D837";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "990852B5-4383-CC9F-D010-76918C4520D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:2010]";
createNode lambert -n "MI_Manny_03";
	rename -uid "C8EC1962-47A2-07F1-6D5C-13BB6A8BF9DD";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
createNode shadingEngine -n "SKM_Manny_Simple_LOD0SG";
	rename -uid "7AB75D16-4BCB-0DD6-4586-4E9395E33FFB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "30557736-447B-DCA3-EAC6-C0BE6535A084";
createNode lambert -n "MI_Manny_04";
	rename -uid "C7387975-4B4C-B3A3-C8C0-AFA3616F2567";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
createNode shadingEngine -n "SKM_Manny_Simple_LOD0SG1";
	rename -uid "BFE45558-498F-7B9B-66D2-8A8D35C63918";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "B40D1601-4D49-792B-CAD2-669D606509B7";
createNode bump2d -n "bump2d3";
	rename -uid "EFDFB964-4283-74B2-3462-6C989A23571C";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 2.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode bump2d -n "bump2d4";
	rename -uid "91FC2A38-4C7F-7CCD-4155-6089F3977E72";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 2.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode skinCluster -n "skinCluster7";
	rename -uid "CA1A0401-47F2-900C-D50E-629B650CDC52";
	setAttr ".skm" 1;
	setAttr -s 1042 ".wl";
	setAttr ".wl[0:166].w"
		3 73 0.47230455016579925 74 0.52757786701346243 75 0.00011758282073833703
		3 73 0.45442451136386108 74 0.54533693262418192 75 0.00023855601195707147
		3 73 0.49056880674150338 74 0.50941071393343418 77 2.0479325062570392e-05
		3 73 0.38776604654733321 74 0.60889299166094157 75 0.0033409617917250964
		3 73 0.34338974732296529 74 0.65210724761890226 75 0.0045030050581323575
		3 73 0.18090403765907306 74 0.77576695760370384 75 0.043329004737223099
		3 73 0.19938760356573251 74 0.78350109986777505 75 0.017111296566492382
		3 73 0.059409145273387191 74 0.85171271873677168 75 0.088878135989841123
		3 73 0.020112747348345009 74 0.75030887291999471 75 0.22957837973166029
		3 73 0.10604283671046222 74 0.82234966515587993 75 0.071607498133657937
		3 73 0.0060662536715902536 74 0.79190268945699027 75 0.20203105687141953
		3 73 0.015073524029016804 74 0.82795418331912529 75 0.1569722926518578
		3 73 0.0012116996790506737 74 0.69629256368728265 75 0.30249573663366675
		3 73 0.001532473903261858 74 0.71778639787010612 75 0.28068112822663205
		3 73 0.0013280405891237179 74 0.64550231119238677 75 0.35316964821848973
		3 73 0.00086270355888051797 74 0.6002776295241683 75 0.39885966691695113
		3 73 0.0010556164459050539 74 0.62124518376173388 75 0.37769919979236111
		3 73 7.127034713425274e-05 74 0.61190297044455333 75 0.3880257592083125
		3 73 4.1148321825094412e-05 74 0.57097247004349794 75 0.42898638163467712
		3 7 0.20093725430121803 8 0.71744308266370149 9 0.081619663035080489
		3 7 0.20606615738019396 8 0.71568874076451505 9 0.078245101855290933
		3 7 0.19495993445083501 8 0.72486653676703272 9 0.0801735287821322
		3 7 0.18663089855374659 8 0.72963485443344001 9 0.083734247012813387
		3 7 0.17452144772384101 8 0.73897198743276427 9 0.086506564843394751
		3 7 0.16898115862862012 8 0.74153363028061547 9 0.089485211090764544
		3 7 0.10992356409119605 8 0.70511906871388652 9 0.18495736719491745
		3 7 0.085645781865582013 8 0.66334920024702881 9 0.25100501788738916
		3 7 0.075828941971298788 8 0.66709948771680339 9 0.25707157031189781
		3 7 0.087018574180580052 8 0.67008398000838065 9 0.24289744581103934
		3 7 0.099026680523421728 8 0.67175108281921536 9 0.22922223665736294
		3 7 0.10240581857345567 8 0.68850088436185852 9 0.20909329706468591
		3 7 0.10951689037771306 8 0.69193638108390265 9 0.19854672853838434
		3 7 0.15268530214630277 8 0.77431210199434231 9 0.073002595859355049
		3 7 0.0290550715838543 8 0.72512644561532091 9 0.24581848280082483
		3 7 0.026399332459488778 8 0.71579884602941279 9 0.25780182151109848
		3 7 0.028326852688077563 8 0.72648176671902331 9 0.24519138059289913
		3 7 0.03428704587723562 8 0.74746055035752856 9 0.21825240376523589
		3 7 0.040280074518295815 8 0.75038283252412374 9 0.20933709295758041
		3 7 0.049494965188646045 8 0.77016236075920286 9 0.18034267405215096
		3 7 0.092893316624884523 8 0.78650390181954788 9 0.12060278155556771
		3 7 0.039041412995109527 8 0.76144707706929338 9 0.19951150993559713
		3 7 0.076494969262367166 8 0.79729541047975117 9 0.12620962025788174
		3 7 0.057368134478098971 8 0.785305981309254 9 0.15732588421264709
		3 7 0.099394593916222948 8 0.8014733964955163 9 0.099132009588260822
		3 7 0.14311129909093265 8 0.7839828692293086 9 0.072905831679758712
		3 7 0.18528103808246713 8 0.75199903771953924 9 0.062719924197993729
		3 7 0.21226659801516118 8 0.72391269207964537 9 0.063820709905193312
		3 7 0.026788609223598065 8 0.86461574440852085 9 0.10859564636788122
		3 7 0.033063550788925443 8 0.86427656465889979 9 0.10265988455217487
		3 7 0.046561899298291208 8 0.86657194376442881 9 0.086866156937280045
		3 7 0.022573090165368345 8 0.84440821975914904 9 0.13301869007548256
		3 7 0.019951564756499882 8 0.81307887813754876 9 0.1669695571059514
		3 7 0.019850377107088927 8 0.79563851183184031 9 0.18451111106107063
		3 7 0.018635152947158475 8 0.76977249690085203 9 0.21159235015198952
		3 7 0.015297022992155632 8 0.77037802451539139 9 0.21432495249245317
		3 7 0.012531459699404701 8 0.7507744467023908 9 0.23669409359820451
		3 7 0.010895868602652299 8 0.71729337302203311 9 0.27181075837531443
		3 73 0.82697862750180351 74 0.13378331029342716 77 0.039238062204769338
		3 73 0.91113182938191073 74 0.050151748992793274 77 0.038716421625296052
		3 73 0.73128394560152366 74 0.25042984964633691 77 0.018286204752139563
		3 73 0.93569429771730417 74 0.020356405556051255 77 0.043949296726644542
		3 72 0.022660717858414062 73 0.95082316876125461 77 0.026516113380331264
		3 73 0.8915991023469555 74 0.039375785938490768 77 0.069025111714553791
		3 73 0.77052095900813233 74 0.17675382300185191 77 0.05272521799001581
		3 73 0.84515097979857046 74 0.053168788380017588 77 0.10168023182141207
		3 73 0.7175008164947404 74 0.2213586582640461 77 0.061140525241213613
		3 73 0.82177765768710065 74 0.075317911483428215 77 0.10290443082947096
		3 73 0.63854383206767884 74 0.31243231150872885 77 0.04902385642359236
		3 73 0.81795225017632522 74 0.11509228823334784 77 0.066955461590327045
		3 73 0.68040095643000653 74 0.28716832760392613 77 0.032430715966067336
		3 73 0.65756752006513874 74 0.320423358160773 77 0.022009121774088137
		3 73 0.87488038352914699 74 0.081256537156907532 77 0.043863079313945515
		3 72 0.015516793410053617 73 0.94786696048687313 77 0.036616246103073326
		3 72 0.016815650812616694 73 0.92249973935882956 77 0.060684609828553691
		3 72 0.022343600581972035 73 0.90108911452200346 77 0.076567284896024518
		3 72 0.025981122834686007 73 0.91397046570429419 77 0.060048411461019781
		3 72 0.028902494140117332 73 0.93580262901902089 77 0.035294876840861779
		3 72 0.041328560481771574 73 0.93952343413981421 77 0.01914800537841424
		3 72 0.089963740556755351 73 0.89657248159936653 76 0.013463777843878076
		3 72 0.14852155610645645 73 0.83924687551197552 76 0.012231568381568098
		3 72 0.2748479540735484 73 0.71993027176437696 76 0.0052217741620745658
		3 72 0.15795120779882552 73 0.8283586907728353 76 0.013690101428339183
		3 72 0.10213340528547558 73 0.88045151488410567 76 0.017415079830418678
		3 72 0.13180604063929779 73 0.84817044658795004 77 0.020023512772752192
		3 72 0.078452145102209853 73 0.8955041262225677 77 0.026043728675222311
		3 72 0.10427102765952609 73 0.88123239779423346 77 0.014496574546240561
		3 72 0.30139462497356245 73 0.69342982350079696 79 0.0051755515256405376
		3 72 0.27223899592668094 73 0.72281919852206544 79 0.0049418055512535867
		3 72 0.3446832947568419 73 0.65037273618214297 79 0.004943969061015188
		3 72 0.31141302796615244 73 0.68174603013114865 76 0.0068409419026989136
		3 72 0.35542515393867669 73 0.6401239335821346 76 0.0044509124791886545
		3 72 0.37097848372738201 73 0.62466516393840255 76 0.0043563523342154955
		3 72 0.4982249189776406 73 0.48515586731143179 79 0.016619213710927786
		3 72 0.60225504444847322 73 0.37568584726009496 79 0.022059108291432001
		3 72 0.65958744943996306 73 0.27038949415958768 79 0.070023056400449271
		3 72 0.54390622510145592 73 0.43866076056348141 79 0.017433014335062561
		3 72 0.53134000380328139 73 0.44270314535205685 79 0.025956850844661712
		3 72 0.48992296590029766 73 0.47687913074597926 79 0.033197903353723079
		3 72 0.44675118720053641 73 0.52382960059121109 79 0.029419212208252561
		3 72 0.45371549191314936 73 0.51218579211142357 79 0.034098715975426984
		3 72 0.47518440060929007 73 0.49786830921080888 79 0.026947290179901051
		3 72 0.62334280586163315 73 0.2791066614962287 79 0.097550532642138144
		3 72 0.74197998742258919 73 0.094391278035623985 79 0.1636287345417867
		3 72 0.618013719077257 73 0.27199164779062857 79 0.10999463313211444
		3 72 0.6636413026582233 73 0.24650391914660791 79 0.089854778195168697
		3 72 0.69704897952060296 73 0.22896166545448143 79 0.073989355024915701
		3 72 0.70503549314079605 73 0.24026865865950636 79 0.054695848199697805
		3 72 0.75954480246615463 73 0.10447472727613386 79 0.13598047025771162
		3 72 0.77329560733049241 73 0.077900762961619033 79 0.1488036297078886
		3 72 0.75731098547394715 78 0.08072611804385002 79 0.1619628964822028
		3 72 0.71420541807139903 78 0.084033935794940187 79 0.20176064613366085
		3 72 0.7190172220746931 73 0.092174378805748095 79 0.18880839911955874
		3 0 0.21435530274831888 72 0.6578088018396453 79 0.12783589541203583
		3 0 0.24090552603591656 72 0.62355829177445354 79 0.13553618218962998
		3 0 0.46575666173081254 72 0.46729297320481317 78 0.066950365064374295
		3 0 0.46175172643421114 1 0.11352337787005817 72 0.42472489569573063
		3 0 0.16574718305417316 72 0.70517890676973449 79 0.12907391017609243
		3 72 0.79932760676952008 78 0.11486089406135055 79 0.085811499169129446
		3 0 0.093041518756658906 72 0.79383086800254854 79 0.11312761324079258
		3 0 0.11720310627064114 72 0.74399400542722305 79 0.13880288830213589
		3 0 0.35600044310236284 1 0.099438101950825586 72 0.54456145494681141
		3 0 0.1186163029836627 1 0.15696974523872603 72 0.72441395177761136
		3 0 0.087682848641021813 1 0.17052140936144616 72 0.74179574199753195
		3 0 0.21162068340093523 1 0.16257966764114468 72 0.62579964895791995
		3 73 0.6621564108098551 74 0.32378686049468358 77 0.014056728695461347
		3 73 0.63390398024330963 74 0.34688919179583327 77 0.019206827960857178
		3 73 0.53859902411388594 74 0.45876177629034653 77 0.0026391995957675118
		3 73 0.52721607067897014 74 0.47183918233150279 77 0.00094474698952707302
		3 73 0.46032107872884698 74 0.539433994234781 75 0.00024492703637195133
		3 73 0.33546969023508172 74 0.66175520451457959 75 0.0027751052503387466
		3 73 0.45024095573827727 74 0.54615442109634116 77 0.0036046231653817256
		3 73 0.61146431313194594 74 0.36884697400196115 77 0.019688712866092972
		3 73 0.55429127949207868 74 0.42285242750177982 77 0.022856293006141649
		3 73 0.2877266888079047 74 0.69487649489558301 75 0.017396816296512237
		3 73 0.20017460296443421 74 0.7825927299237182 75 0.017232667111847708
		3 73 0.068762266707505931 74 0.8763174311563533 75 0.054920302136140818
		3 73 0.010224094511131692 74 0.848834926120415 75 0.14094097936845332
		3 73 0.050138470055662077 74 0.85504242542509279 75 0.094819104519245148
		3 73 0.11998584035804394 74 0.81224808967870565 75 0.067766069963250394
		3 73 0.43723440333719193 74 0.54931507721452255 77 0.013450519448285524
		3 73 0.2970341864653992 74 0.68342648584647048 75 0.019539327688130464
		3 73 0.52336431953826923 74 0.47176054445620674 77 0.0048751360055240322
		3 73 0.325996276586835 74 0.6639959413423232 75 0.01000778207084181
		3 73 0.064025292059721364 74 0.86021350619407855 75 0.075761201746200171
		3 73 0.012390636602765855 74 0.81817258654322944 75 0.16943677685400468
		3 73 0.0085050963449922173 74 0.75459158293295192 75 0.23690332072205592
		3 73 0.0027890333306085607 74 0.78244575246288428 75 0.21476521420650718
		3 73 0.00019821715279404645 74 0.74356445657598491 75 0.25623732627122098
		3 73 0.00017242089365735215 74 0.66605438241095738 75 0.33377319669538535
		3 73 0.00022666084966042397 74 0.61694590120398085 75 0.3828274379463586
		3 73 0.00019868487401451703 74 0.63635234025388554 75 0.36344897487209987
		3 73 0.00071727557897478561 74 0.73863546197995966 75 0.26064726244106545
		3 73 0.42123632799838456 74 0.57792124305746073 75 0.00084242894415457309
		3 73 0.49189505168416808 74 0.50749933821230941 77 0.00060561010352249106
		3 73 0.5888026295105292 74 0.40758342837485223 77 0.0036139421146186897
		3 73 0.58757111763775416 74 0.40896717759357487 77 0.0034617047686710143
		3 73 0.51517559808530966 74 0.48455504060679216 77 0.00026936130789811182
		3 73 0.47825051855917128 74 0.5216491877985503 75 0.0001002936422785126
		3 73 3.7335505247091988e-05 74 0.56847930753635689 75 0.43148335695839601
		3 6 0.12957454421096981 7 0.41129747431887204 8 0.45912798147015799
		3 6 0.032030242269482152 7 0.21316475205219218 8 0.75480500567832554
		3 6 0.031528984988661475 7 0.27721460747092658 8 0.69125640754041195
		3 6 0.11947313727551022 7 0.33516335619975218 8 0.54536350652473764
		3 6 0.30800240153673636 7 0.32768735407130656 10 0.36431024439195719
		3 6 0.02569642606525175 7 0.21139938259433991 8 0.76290419134040832
		3 7 0.32784269942115046 8 0.34226219750728726 10 0.32989510307156222
		2 6 0.10508063860912545 7 0.32477446444824315;
	setAttr ".wl[166:333].w"
		1 8 0.57014489694263137
		3 6 0.023782402532483038 7 0.26466572199349603 8 0.71155187547402077
		3 6 0.056818498954999991 7 0.30884755101949452 8 0.63433395002550552
		3 7 0.28367033186283014 8 0.69848864071757089 9 0.017841027419598948
		3 6 0.19903174958542538 7 0.33752416378396949 8 0.4634440866306051
		3 6 0.29614991202291313 7 0.33871345290268462 8 0.36513663507440225
		3 6 0.52186996412955766 7 0.24962645713100465 8 0.22850357873943772
		3 6 0.41987302501013274 7 0.19833026050083674 10 0.38179671448903052
		3 6 0.21202872258638392 7 0.15554029945757689 10 0.6324309779560392
		3 6 0.17445585140105707 7 0.17925330367191572 10 0.64629084492702715
		3 6 0.15081725048397146 7 0.076795007403612517 10 0.77238774211241612
		3 5 0.025076225090957926 10 0.74947256246571115 11 0.22545121244333088
		3 5 0.039720303496163227 10 0.70940290387289151 11 0.25087679263094537
		3 10 0.72204802293393455 11 0.26114693271058381 35 0.016805044355481552
		3 6 0.0055677048866759459 10 0.78154382124179433 11 0.21288847387152968
		3 10 0.67157387160352355 11 0.32410615126241499 35 0.0043199771340615258
		3 10 0.66900617346942126 11 0.32684745989527947 35 0.0041463666352994036
		3 10 0.65550899599478618 11 0.3350370449417443 35 0.0094539590634694377
		3 10 0.63753095944016169 11 0.34493737065796737 35 0.01753166990187098
		3 5 0.026755561351422028 10 0.65250987734331567 11 0.3207345613052624
		3 7 0.12524836100453701 8 0.85460624752950487 9 0.020145391465958114
		3 7 0.063578976158884817 8 0.86038218740056205 9 0.076038836440553231
		3 7 0.097427510177061569 8 0.86262242864621586 9 0.039950061176722722
		3 7 0.026985373619448451 8 0.79084301424828263 9 0.18217161213226907
		3 7 0.012673245678868954 8 0.67109442183206369 9 0.31623233248906724
		3 7 0.0043470656770810577 8 0.61297280431396517 9 0.38268013000895396
		3 7 0.0058833397190192699 8 0.58943889950250905 9 0.40467776077847178
		3 7 0.0058220710085992548 8 0.64799080641965834 9 0.34618712257174222
		3 7 0.001628640289355919 8 0.56752472914348751 9 0.43084663056715661
		3 7 0.0091331259421779595 8 0.66210067345724111 9 0.32876620060058082
		3 7 0.018752593193299336 8 0.70751357161590001 9 0.27373383519080069
		3 7 0.049613980234702468 8 0.8067618426896952 9 0.1436241770756024
		3 7 0.10041934438624409 8 0.85384430013590318 9 0.04573635547785275
		3 7 0.15920760371067644 8 0.81941661924678943 9 0.021375777042534169
		3 7 0.17188588862848442 8 0.79959431135761028 9 0.028519800013905281
		3 7 0.1056018402816762 8 0.83148260626582138 9 0.062915553452502382
		3 7 0.0017574696288183127 8 0.54018967501281223 9 0.45805285535836943
		3 7 0.0042850974840663988 8 0.54313733846714241 9 0.45257756404879113
		3 7 0.0012259358705884013 8 0.50967357919268985 9 0.48910048493672176
		3 7 0.0028636061415284594 8 0.51706981918723638 9 0.48006657467123531
		3 7 0.0013331247249669875 8 0.50408794839123383 9 0.49457892688379934
		3 7 0.00061984129089993174 8 0.50078502274989845 9 0.49859513595920157
		3 7 0.00038182412891928151 8 0.50101586682344068 9 0.49860230904763991
		3 7 0.00043741216142522901 8 0.50868251246304907 9 0.49088007537552569
		3 7 0.00058305256837800257 8 0.53010605963111512 9 0.46931088780050695
		3 7 0.20518900482315883 8 0.78123484455856229 9 0.013576150618278863
		3 7 0.22080214771939544 8 0.75976957581360394 9 0.019428276467000571
		3 7 0.0010418590475974382 8 0.50238801289330859 9 0.49657012805909395
		3 7 0.00038532638810076568 8 0.50002592778246124 9 0.49958874582943802
		3 7 0.00066759938684323849 8 0.50099062730979271 9 0.49834177330336416
		3 7 0.00023400401856609027 8 0.50058859241815545 9 0.49917740356327833
		3 7 0.00026624006498643355 8 0.49992130585585187 9 0.49981245407916164
		3 7 0.00019352604613947366 8 0.50035428368020451 9 0.49945219027365584
		3 7 0.00023321086342552422 8 0.50415294644151509 9 0.49561384269505943
		3 7 0.00038107105521758189 8 0.5223912824769662 9 0.47722764646781635
		3 7 0.00084008057522393803 8 0.5512941623812293 9 0.44786575704354681
		3 7 0.0035303338154897422 8 0.59205578769865252 9 0.40441387848585775
		3 7 0.010563337530132619 8 0.63912105739942138 9 0.35031560507044612
		3 7 0.02468283851447927 8 0.70551592997838231 9 0.26980123150713847
		3 7 0.0097763661805040786 8 0.62930469303872727 9 0.36091894078076864
		3 7 0.021468255088134564 8 0.68895200057009698 9 0.28957974434176831
		3 7 0.062172893072705439 8 0.78404096921663213 9 0.15378613771066238
		3 7 0.13151818200859833 8 0.80185221062770007 9 0.066629607363701604
		3 7 0.20563581364330644 8 0.75935959648547102 9 0.035004589871222638
		3 7 0.25704206989778977 8 0.71898910658994042 9 0.023968823512269775
		3 7 0.28034887609619152 8 0.69026437406038965 9 0.029386749843418682
		3 7 0.28819432605025663 8 0.67843374684459046 9 0.033371927105152917
		3 7 0.25530881760476609 8 0.70585118789199774 9 0.038839994503236185
		3 7 0.2749878002447198 8 0.6803924006365677 9 0.044619799118712562
		3 7 0.23486745482916024 8 0.71161411409277242 9 0.053518431078067315
		3 7 0.18030342889086259 8 0.76134778801306768 9 0.05834878309606957
		3 7 0.035485712874278715 8 0.73076143798664239 9 0.23375284913907884
		3 7 0.014922163942461396 8 0.65819708747393901 9 0.32688074858359961
		3 7 0.0070238951129927988 8 0.61240385649837126 9 0.38057224838863596
		3 7 0.0036721407299900922 8 0.59063606406300806 9 0.40569179520700205
		3 7 0.0019637126017768391 8 0.57922884349488324 9 0.4188074439033399
		3 7 0.00121646786344572 8 0.57020293750030815 9 0.4285805946362462
		3 7 0.0016033350908141828 8 0.57950215504935876 9 0.41889450985982701
		3 7 0.0030953298435427356 8 0.58864388451672789 9 0.40826078563972956
		3 7 0.0025588502266596968 8 0.58726853319994543 9 0.41017261657339488
		3 7 0.0033066628889947733 8 0.58571829097690686 9 0.41097504613409858
		3 7 0.0079892494113942454 8 0.60588058041388082 9 0.38613017017472495
		3 7 0.015181940945425383 8 0.65645490824514907 9 0.32836315080942541
		3 7 0.024481128868875168 8 0.71490218459111543 9 0.26061668654000958
		3 7 0.021535028702701759 8 0.70827882170289136 9 0.27018614959440679
		3 7 0.012183196473014317 8 0.62587640801666811 9 0.36194039551031754
		3 7 0.0098101336556741421 8 0.59335643067749566 9 0.39683343566683021
		3 7 0.0046324602501451682 8 0.57947285609081345 9 0.41589468365904136
		3 7 0.0014629538964291767 8 0.56870181525862884 9 0.42983523084494213
		3 7 0.0014206952913610202 8 0.57952416196210488 9 0.4190551427465341
		3 7 0.00080404368596141327 8 0.56630597309752784 9 0.43288998321651068
		3 7 0.00058396777016660845 8 0.54751346252905964 9 0.45190256970077369
		3 7 0.00071295004360737353 8 0.54270926263643071 9 0.45657778731996185
		3 7 0.0024880361214882235 8 0.57010054672195098 9 0.42741141715656089
		3 7 0.0069656730213797985 8 0.5781486543094978 9 0.41488567266912241
		3 7 0.010068746208734184 8 0.57471885072090234 9 0.41521240307036356
		3 7 0.000295650789575336 8 0.51183264100695258 9 0.4878717082034722
		3 7 0.00020473423622618234 8 0.50230976004558392 9 0.49748550571818989
		3 7 0.26259217063335699 8 0.68363431972585398 9 0.053773509640788926
		3 7 0.24268297350463772 8 0.69726720235495154 9 0.060049824140410768
		3 7 0.21451694535634494 8 0.72443724729546044 9 0.061045807348194737
		3 7 0.17322668841732039 8 0.76079976873402744 9 0.0659735428486522
		3 6 0.51959047005280734 7 0.26460149151387719 10 0.21580803843331547
		3 6 0.5061691327857063 10 0.25194923335524488 37 0.24188163385904868
		3 6 0.38953869380237355 7 0.090892657526011389 10 0.51956864867161512
		3 6 0.29683293825697676 7 0.45619512739569212 8 0.24697193434733111
		3 6 0.13643798824242254 7 0.50468993921785799 8 0.35887207253971937
		3 6 0.057881267153304251 7 0.40038894860846369 8 0.54172978423823215
		3 6 0.011080951336867834 7 0.20717368660716476 8 0.78174536205596723
		3 7 0.078156949723127436 8 0.89736665517042602 9 0.024476395106446586
		3 7 0.047413434424058647 8 0.88012893864403519 9 0.072457626931906244
		3 7 0.050846721553528901 8 0.8814422550767147 9 0.067711023369756387
		3 7 0.041541211641978194 8 0.81435457152091595 9 0.14410421683710581
		3 7 0.049181919164341184 8 0.82173104554101273 9 0.12908703529464596
		3 7 0.038615167154192193 8 0.74300011557309509 9 0.2183847172727128
		3 7 0.017865722775323792 8 0.6172860512991788 9 0.36484822592549737
		3 7 0.026130082821444672 8 0.70649798255557772 9 0.26737193462297754
		3 7 0.011898863479975789 8 0.60815030085752764 9 0.3799508356624966
		3 7 0.0070993233680067781 8 0.54743020760477701 9 0.44547046902721599
		3 7 0.0064416934823084328 8 0.53522343026657881 9 0.45833487625111274
		3 7 0.0022441236958448069 8 0.50889202175862192 9 0.48886385454553322
		3 7 0.0030629980036239609 8 0.51444877212880891 9 0.48248822986756729
		3 6 0.51904754021529276 10 0.24015845705767702 37 0.24079400272703005
		3 5 0.65670527507923648 6 0.23467981662843826 37 0.10861490829232527
		3 4 0.27181142859158275 5 0.68366304339709261 6 0.044525528011324783
		3 3 0.12125756632179432 4 0.42412617491784149 5 0.45461625876036432
		3 3 0.29947335869714947 4 0.49459717953589816 5 0.20592946176695248
		3 2 0.29654092541785215 3 0.36316020590724485 4 0.34029886867490311
		3 0 0.34234762773108379 1 0.34215949004238916 3 0.31549288222652716
		3 4 0.16819849566112469 5 0.66689971348937283 6 0.16490179084950246
		3 4 0.29364597913975821 5 0.64853246977874468 6 0.057821551081497086
		3 3 0.10899843345466355 4 0.39838844251138456 5 0.49261312403395202
		3 3 0.31971256353689936 4 0.43443134665748634 5 0.2458560898056143
		3 2 0.2980797204177032 3 0.4176592551930029 4 0.2842610243892939
		3 0 0.42596332323433211 1 0.28909845901935161 72 0.28493821774631617
		3 2 0.26655485575542126 3 0.4107704078691039 4 0.32267473637547478
		3 1 0.2596514896601555 3 0.18795925143607711 72 0.55238925890376744
		3 3 0.3450608176328942 4 0.4602219191796193 5 0.19471726318748642
		3 3 0.1669592202298551 4 0.44607583275877294 5 0.38696494701137191
		3 3 0.053117739722843449 4 0.35795308065758252 5 0.58892917961957403
		3 4 0.22558310579507937 5 0.64717422621946274 10 0.12724266798545794
		3 5 0.51622692676592208 6 0.21701113986388648 10 0.26676193337019138
		3 5 0.5538625462977832 6 0.29082293571845697 10 0.1553145179837597
		3 5 0.39329501980467874 6 0.38202856590682777 10 0.22467641428849355
		3 5 0.34859220494449961 6 0.27256413778669641 10 0.37884365726880403
		3 5 0.25715940312962537 6 0.18050005942569053 10 0.56234053744468415
		3 5 0.43194835106726126 6 0.1540496849542001 10 0.41400196397853867
		3 4 0.25928041421435916 5 0.5605993304530742 10 0.18012025533256656
		3 3 0.067814651198368395 4 0.40447806966546662 5 0.52770727913616511
		3 3 0.13538136360290909 4 0.48415465511602884 5 0.38046398128106201
		3 3 0.27021849703211326 4 0.49509717407999637 5 0.23468432888789026
		3 2 0.23150850757026881 3 0.38543273566622321 4 0.38305875676350787
		3 3 0.33533385483194822 4 0.42399203188784101 72 0.24067411328021088
		3 0 0.22637502278328694 1 0.28462548983672309 72 0.48899948737998988
		3 3 0.21691275082254471 4 0.52799846883658152 5 0.2550887803408739
		3 2 0.19971506228139493 3 0.30340727694891567 4 0.49687766076968948
		3 2 0.26405442838773768 3 0.33884397063141319 4 0.39710160098084907
		3 3 0.20022828512047477 4 0.4922384673760361 5 0.30753324750348915
		3 3 0.17800351764469199 4 0.52930454652229264 5 0.29269193583301545
		3 3 0.10865848619216746 4 0.4925840128579278 5 0.39875750094990453
		3 3 0.065935374199393174 4 0.43774034271928586 5 0.49632428308132109
		3 4 0.29983914873257417 5 0.50893104306898207 10 0.19122980819844371
		3 5 0.32589385007242755 10 0.51605774632512857 11 0.15804840360244379
		3 5 0.16089448868249415 10 0.67290206186435375 11 0.16620344945315207
		3 6 0.09573041968992084 10 0.77745020780114671 11 0.12681937250893238
		3 5 0.16905686746772525 6 0.19132922746654404 10 0.63961390506573079
		3 5 0.21429766547521648 6 0.30061310601386571 10 0.48508922851091785
		1 6 0.12425060787858327;
	setAttr ".wl[333:499].w"
		2 10 0.79952124835318017 11 0.076228143768236487
		3 6 0.027898303162813644 10 0.80004775363785163 11 0.1720539431993347
		3 6 0.031253790961024375 10 0.74979071496765581 11 0.21895549407132003
		3 5 0.080635439809979143 10 0.68217371053788145 11 0.23719084965213957
		3 5 0.15285616049477641 10 0.64513554677750218 11 0.2020082927277215
		3 4 0.18822019513616739 5 0.3892673592499834 10 0.42251244561384904
		3 4 0.35290624832075557 5 0.49179148258192656 10 0.15530226909731795
		3 3 0.083701601299433423 4 0.4275207536674196 5 0.48877764503314686
		3 3 0.072879669748350584 4 0.37420852674731359 5 0.55291180350433577
		3 4 0.24404826843174782 5 0.6768848883136277 6 0.079066843254624486
		3 4 0.23656787022247272 5 0.54175735818361059 10 0.2216747715939166
		3 4 0.14396647950951516 5 0.3533286873215345 10 0.50270483316895043
		3 5 0.13359633654069866 10 0.70990515567568702 11 0.15649850778361432
		3 5 0.31585117814536218 6 0.10463678439992127 10 0.57951203745471647
		3 5 0.47790900801860486 6 0.1961084905008664 10 0.32598250148052871
		3 5 0.31750203759251017 6 0.36897808380656483 10 0.31351987860092484
		3 5 0.40839478690684416 6 0.41717846177992202 37 0.17442675131323382
		3 6 0.46873196361552155 10 0.41628274699108719 37 0.11498528939339128
		3 5 0.11318983250674497 6 0.35173598047822191 10 0.53507418701503318
		3 5 0.22333155682341041 6 0.2638872524679749 10 0.51278119070861461
		3 5 0.18224196843449217 6 0.13599913302155961 10 0.68175889854394833
		3 5 0.10197741310865426 10 0.7916227284777031 11 0.10639985841364262
		3 6 0.051099933010671166 10 0.85150339358902516 11 0.097396673400303724
		3 5 0.066061342415269078 6 0.20092844336823168 10 0.73301021421649926
		3 6 0.030541440374618648 10 0.88141388498520479 11 0.088044674640176457
		3 6 0.077287455934232516 7 0.057565979495549813 10 0.86514656457021766
		3 6 0.014936777376639686 10 0.83195873130954867 11 0.15310449131381162
		3 6 0.052458789398115463 10 0.85907665198242678 11 0.088464558619457845
		3 6 0.068423601221329636 10 0.86847414123407285 11 0.063102257544597529
		3 5 0.077747322362842056 6 0.17120584494038599 10 0.75104683269677208
		3 5 0.17045970158166177 6 0.38901477890772751 10 0.4405255195106107
		3 5 0.271975844792128 6 0.47781907605102292 10 0.25020507915684898
		3 7 0.16113448285221058 8 0.74746475600157725 9 0.091400761146212206
		3 7 0.016981621132864309 8 0.68929986940436805 9 0.29371850946276756
		3 7 0.013230142137224978 8 0.65452756669315126 9 0.33224229116962373
		3 7 0.012395455084723721 8 0.63485837589523053 9 0.35274616902004569
		3 7 0.0103308871416323 8 0.58404331828242251 9 0.40562579457594522
		3 7 0.011717986482986062 8 0.61148776133179483 9 0.37679425218521911
		3 0 0.46276997314852547 1 0.24078708520538866 72 0.29644294164608587
		3 0 0.69468868497960201 64 0.17668904397044416 72 0.12862227104995366
		3 0 0.63791397409442674 64 0.16902795345107383 72 0.19305807245449946
		3 0 0.5813134582376972 64 0.19102217425648113 72 0.22766436750582175
		3 0 0.63019240193344339 64 0.17954730072498376 72 0.19026029734157282
		3 65 0.46840555693745695 66 0.53145866694761157 67 0.00013577611493143383
		3 65 0.42924454262650341 66 0.57048527741354504 67 0.00027017995995157402
		3 65 0.47831642281770542 66 0.52166154365070461 69 2.2033531590091327e-05
		3 65 0.38476527521191073 66 0.61189718624028133 67 0.0033375385478078218
		3 65 0.2966030913745844 66 0.69882174572171085 67 0.0045751629037045901
		3 65 0.17091973152990569 66 0.78586793776648567 67 0.043212330703608713
		3 65 0.15126369773189918 66 0.83193085877348016 67 0.016805443494620705
		3 65 0.045262875476739808 66 0.86660456497008209 67 0.088132559553178322
		3 65 0.02049287317694656 66 0.7427258225914608 67 0.23678130423159269
		3 65 0.11382277275817067 66 0.81296528417967062 67 0.07321194306215878
		3 65 0.0049338525902552664 66 0.79497632342447611 67 0.20008982398526856
		3 65 0.017944959953610354 66 0.8066258805205625 67 0.17542915952582733
		3 65 0.001344447733995429 66 0.69244284478314144 67 0.30621270748286317
		3 65 0.0018336069390774467 66 0.67732245429613291 67 0.32084393876478978
		3 65 0.0014919852837748844 66 0.63692042340893862 67 0.36158759130728646
		3 65 0.00096425963393824074 66 0.58328647353569452 67 0.41574926683036717
		3 65 0.0011759379848497401 66 0.59713470294471982 67 0.40168935907043041
		3 65 6.0116015328292101e-05 66 0.57413340789196743 67 0.42580647609270428
		3 65 3.6344048174109819e-05 66 0.54364141625267981 67 0.45632223969914604
		3 7 0.19930407237331946 8 0.71459003115606956 9 0.08610589647061119
		3 7 0.19048246840550304 8 0.71522345298297529 9 0.094294078611521712
		3 7 0.17949890043256303 8 0.71684625321853779 9 0.10365484634889913
		3 7 0.17250580086201495 8 0.71697236681492815 9 0.11052183232305697
		3 7 0.097332216602151203 8 0.69260770688382056 9 0.21006007651402811
		3 7 0.08122651687797966 8 0.6707275939191043 9 0.24804588920291595
		3 7 0.09025530987548977 8 0.67099485158376182 9 0.23874983854074858
		3 7 0.0913722189310954 8 0.68305291171516502 9 0.22557486935373952
		3 7 0.096887675028101375 8 0.68426982382928936 9 0.21884250114260931
		3 7 0.031100262035504263 8 0.72050341842796062 9 0.2483963195365351
		3 7 0.035767949755786184 8 0.73949770188962305 9 0.22473434835459094
		3 7 0.044247326315260863 8 0.74148668493600245 9 0.21426598874873687
		3 7 0.052163608964365157 8 0.75751476556431452 9 0.19032162547132025
		3 7 0.10106039925156041 8 0.77376323806812941 9 0.1251763626803101
		3 7 0.05864147370860643 8 0.77710636814320733 9 0.16425215814818611
		3 7 0.10308353245346921 8 0.79144686686489529 9 0.10546960068163556
		3 7 0.15486544582451972 8 0.76637893381033539 9 0.078755620365144913
		3 7 0.19819519359568616 8 0.73637295456061136 9 0.065431851843702454
		3 7 0.022069376512070953 8 0.86978697090804002 9 0.108143652579889
		3 7 0.02783085884689239 8 0.87307540979828446 9 0.099093731354823147
		3 7 0.040559671946125073 8 0.8751201488475181 9 0.084320179206356857
		3 7 0.019212693302329376 8 0.85056243707261525 9 0.13022486962505539
		3 7 0.016039020824536721 8 0.82584951268462048 9 0.15811146649084276
		3 7 0.015607155323630153 8 0.81203962123542728 9 0.17235322344094264
		3 7 0.014729151364736907 8 0.78479233659821557 9 0.20047851203704742
		3 7 0.011234035105010096 8 0.79033420699400903 9 0.19843175790098092
		3 7 0.0089319584753076598 8 0.77052170356569505 9 0.22054633795899736
		3 7 0.0084420563035951003 8 0.72536298781482789 9 0.26619495588157716
		3 65 0.83517723935835053 66 0.12829067672780825 69 0.036532083913841246
		3 65 0.91512922286690368 66 0.048561930252186636 69 0.036308846880909733
		3 65 0.73700373459157331 66 0.24844167823472327 69 0.014554587173703252
		3 65 0.93274591429850817 68 0.021898249483691873 69 0.045355836217800115
		3 65 0.95360212815287337 68 0.018229525165610289 69 0.028168346681516267
		3 65 0.90032536422620701 66 0.037867138288410068 69 0.061807497485382841
		3 65 0.77127173637738133 66 0.18384397484121559 69 0.044884288781403145
		3 65 0.85418365455063161 66 0.059977255462864511 69 0.085839089986503914
		3 65 0.68318572264272104 66 0.26508643050773606 69 0.051727846849542979
		3 65 0.82582364180237577 66 0.088070868213449671 69 0.086105489984174499
		3 65 0.61352587112256607 66 0.34625843339322931 69 0.040215695484204596
		3 65 0.82525608001650508 66 0.12305908179140235 69 0.051684838192092492
		3 65 0.67693750971134503 66 0.29987337794245816 69 0.023189112346196875
		3 65 0.6622913916228107 66 0.32358050170922342 69 0.014128106667965793
		3 65 0.88459721435059546 66 0.082500728875646148 69 0.032902056773758327
		3 64 0.012600745602424955 65 0.95601092411727795 69 0.031388330280297194
		3 64 0.0147913905992511 65 0.93581471299699226 69 0.049393896403756556
		3 64 0.022122595012909595 65 0.91334563245113665 69 0.064531772535953782
		3 65 0.91992058328971038 68 0.028772215837592301 69 0.051307200872697432
		3 65 0.933218712776827 68 0.032241148534259509 69 0.034540138688913431
		3 64 0.03562466133145574 65 0.93783959634621006 68 0.026535742322334192
		3 64 0.073858355038836129 65 0.90979884112887133 68 0.016342803832292595
		3 64 0.13302611236491257 65 0.85094551539737873 68 0.016028372237708637
		3 64 0.24947165248824479 65 0.74444851153206948 68 0.0060798359796858234
		3 64 0.15338720071492204 65 0.82590938846186757 68 0.020703410823210516
		3 64 0.1016515226334546 65 0.87105968471266959 68 0.027288792653875824
		3 64 0.13162027100395915 65 0.84972614555278092 68 0.01865358344326002
		3 64 0.075219934695669288 65 0.90290419822823531 69 0.021875867076095255
		3 64 0.092658965757245984 65 0.89437633694784935 69 0.012964697294904666
		3 0 0.003821252668039554 64 0.2793389487874422 65 0.71683979854451829
		3 64 0.264462108868873 65 0.72954859235035519 68 0.0059892987807718089
		3 64 0.34250794372310261 65 0.65172259215855732 68 0.0057694641183400281
		3 64 0.31008627127404853 65 0.67916498106752787 68 0.010748747658423409
		3 64 0.35160251816513821 65 0.64148185855420869 68 0.006915623280653072
		3 64 0.3576044769911933 65 0.63641898632720528 68 0.0059765366816015141
		3 0 0.017223507543934008 64 0.47350188150203765 65 0.50927461095402826
		3 64 0.59297756778089827 65 0.38919729971285794 71 0.017825132506243686
		3 0 0.065143667059757604 64 0.6383715756271483 65 0.29648475731309426
		3 64 0.53814541715693565 65 0.44237544681743213 71 0.019479136025632171
		3 64 0.52458132665350043 65 0.44538623616584999 71 0.03003243718064957
		3 64 0.48303882094772704 65 0.48281195719273329 71 0.034149221859539669
		3 64 0.4384251058912137 65 0.53413539118600639 71 0.027439502922779836
		3 64 0.43501649650316626 65 0.5376629908210131 71 0.027320512675820644
		3 0 0.025190180756609379 64 0.44410330558544642 65 0.53070651365794419
		3 0 0.0794877791935409 64 0.60402359055929156 65 0.31648863024716761
		3 0 0.18277688801594161 64 0.6943686427688629 71 0.12285446921519549
		3 64 0.60721112018491941 65 0.28976520000268391 71 0.1030236798123967
		3 64 0.64915814280125816 65 0.25351507424608277 71 0.097326782952659022
		3 64 0.68362758324084882 65 0.23479573082668892 71 0.081576685932462298
		3 64 0.69804509116305824 65 0.24988470741465724 71 0.052070201422284607
		3 64 0.7539908470244604 65 0.11694696013785588 71 0.12906219283768369
		3 64 0.75646906280361748 65 0.083459556081033975 71 0.16007138111534863
		3 64 0.75199334859952693 65 0.079175654080756733 71 0.16883099731971632
		3 0 0.1183438183932756 64 0.69218851058692021 71 0.18946767101980413
		3 0 0.17510762296793142 64 0.67151477018877848 71 0.15337760684329019
		3 0 0.31256115903766379 64 0.59196417777511456 71 0.095474663187221628
		3 0 0.31451077580773457 64 0.56912070273203108 71 0.1163685214602343
		3 0 0.57256030373697819 1 0.057664286407609101 64 0.3697754098554128
		3 0 0.49824987077379979 1 0.11762608909704862 64 0.38412404012915169
		3 0 0.20414220500937499 64 0.67191490938200149 71 0.12394288560862349
		3 0 0.094097768744995494 64 0.79343231666109326 70 0.11246991459391122
		3 0 0.10988995057916241 64 0.77290646220945725 71 0.11720358721138027
		3 0 0.18572055160534484 64 0.69351316115102957 71 0.12076628724362568
		3 0 0.38585382297107518 1 0.12228529203482058 64 0.49186088499410424
		3 0 0.12329065664810288 1 0.16246462434536327 64 0.71424471900653386
		3 0 0.10459880822838331 1 0.17722554166179902 64 0.71817565010981776
		3 0 0.23862291048566556 1 0.16980060752902235 64 0.59157648198531221
		3 65 0.66398739640707649 66 0.323922945743081 69 0.012089657849842419
		3 65 0.59738062228377631 66 0.38650830450686291 69 0.016111073209360824
		3 65 0.50783152162502521 66 0.4899581013446076 69 0.0022103770303671822
		3 65 0.52221016437273449 66 0.47698916445649264 69 0.00080067117077290534
		3 65 0.41438320085247465 66 0.58533000757264875 67 0.00028679157487645487
		3 65 0.26013731720988931 66 0.73693667810271224 67 0.0029260046873984861
		3 65 0.37537552539637142 66 0.62153359442866074 69 0.003090880174967895
		3 65 0.53160107140683288 66 0.45150442595051354 69 0.016894502642653665
		3 65 0.47881032350804775 66 0.50163747266544645 69 0.01955220382650584
		3 65 0.24582154256142177 66 0.73172801196193493 67 0.022450445476643367;
	setAttr ".wl[500:666].w"
		3 65 0.14623019799403872 66 0.83583408760381095 67 0.017935714402150298
		3 65 0.050835328507882103 66 0.88897293243401132 67 0.060191739058106528
		3 65 0.0074050991206022366 66 0.84422046058206845 67 0.14837444029732932
		3 65 0.041206041180187752 66 0.84308029917864824 67 0.11571365964116384
		3 65 0.1139292057922856 66 0.8008370101311737 67 0.085233784076540683
		3 65 0.4276334936870444 66 0.56074707580789873 67 0.011619430505057019
		3 65 0.3022925726303381 66 0.67670836108366572 67 0.020999066285996161
		3 65 0.52859042129803757 66 0.46857234359335581 69 0.0028372351086067803
		3 65 0.33858787448452021 66 0.65183446596045092 67 0.0095776595550289157
		3 65 0.067568367575992355 66 0.84641315390935568 67 0.086018478514651942
		3 65 0.012531763976710693 66 0.77949473094739663 67 0.20797350507589271
		3 65 0.0077173515441466755 66 0.7103537020864561 67 0.28192894636939736
		3 65 0.0021785850098646233 66 0.75584257008621436 67 0.2419788449039211
		3 65 0.00018121160362983364 66 0.73415774198891781 67 0.26566104640745236
		3 65 0.0001591342997210932 66 0.64387157473145284 67 0.35596929096882607
		3 65 0.00020569635703478455 66 0.5823395476383495 67 0.41745475600461585
		3 65 0.0001778524386808112 66 0.58816555175455798 67 0.41165659580676117
		3 65 0.00066804007019748667 66 0.67854848520786804 67 0.32078347472193458
		3 65 0.43604417648934807 66 0.56319900333630379 67 0.00075682017434816238
		3 65 0.5009213600583019 66 0.49867712410878351 67 0.00040151583291453527
		3 65 0.59076757681329817 66 0.40662637934811308 69 0.0026060438385887095
		3 65 0.59356177103787533 66 0.40370576069830022 69 0.0027324682638243556
		3 65 0.52097692961239706 66 0.47881626756338214 69 0.00020680282422072573
		3 65 0.48334499565351507 66 0.5165494721699686 67 0.000105532176516282
		3 65 3.0520559531582463e-05 66 0.53881498613960566 67 0.46115449330086289
		3 6 0.12842414470198807 7 0.41493702180297881 8 0.45663883349503326
		3 6 0.030185849908722549 7 0.21313372100323313 8 0.75668042908804434
		3 6 0.030509216675475435 7 0.27768634282386795 8 0.6918044405006567
		3 6 0.11598891076097338 7 0.3400243400486892 8 0.54398674919033752
		3 6 0.31201069435187218 7 0.33672612059047546 37 0.35126318505765225
		3 6 0.023500917697607697 7 0.21175580235742109 8 0.76474327994497127
		3 7 0.33868245115066448 8 0.34935396022348253 37 0.31196358862585277
		3 6 0.10233664300307907 7 0.32412945646813468 8 0.57353390052878617
		3 6 0.022063983054495296 7 0.26275580692829775 8 0.715180210017207
		3 6 0.29898858076179585 7 0.33567336175969292 8 0.36533805747851117
		3 6 0.45417567096376849 7 0.20798265690996737 37 0.33784167212626431
		3 6 0.23421968691407988 7 0.16632492225868675 37 0.5994553908272332
		3 6 0.18306597529712304 7 0.18893336920717491 37 0.62800065549570194
		3 6 0.15613876538144858 7 0.08065380764700876 37 0.76320742697154276
		3 37 0.55989501557008492 38 0.39271766868994801 62 0.047387315739967122
		3 5 0.027434094184438228 37 0.73379188326848466 38 0.238774022547077
		3 5 0.043374727296589491 37 0.69057215042686437 38 0.26605312227654615
		3 37 0.46197241009499945 38 0.47912588236742687 62 0.058901707537573678
		3 37 0.71820911215736638 38 0.26490919795266138 62 0.016881689889972362
		3 37 0.51229451325408082 38 0.4646814314563496 62 0.023024055289569613
		3 6 0.0058726455776840518 37 0.78627844424490012 38 0.20784891017741597
		3 37 0.67717122622821835 38 0.31847717980849122 62 0.0043515939632905115
		3 37 0.49587419998418708 38 0.49321618476451973 62 0.010909615251293275
		3 37 0.67056205856257911 38 0.32532450951105341 62 0.0041134319263675728
		3 37 0.45096611524826991 38 0.53005795818091006 62 0.018975926570820031
		3 37 0.65192721372466178 38 0.33870998327814239 62 0.0093628029971957443
		3 37 0.44250095173166076 38 0.52026202067337168 62 0.037237027594967595
		3 37 0.62890040109626977 38 0.35369234697591917 62 0.017407251927811011
		3 37 0.46104473111119743 38 0.48361368023271917 62 0.055341588656083421
		3 5 0.03052521776374768 37 0.63714008227430485 38 0.33233469996194737
		3 7 0.12253796884768171 8 0.85921862361645784 9 0.018243407535860422
		3 7 0.058722694303638634 8 0.87066254118119979 9 0.070614764515161535
		3 7 0.092747295349792105 8 0.86880807624837686 9 0.038444628401831181
		3 7 0.023964104861148899 8 0.79987417205851297 9 0.17616172308033801
		3 7 0.01156266973215261 8 0.66563447404988429 9 0.32280285621796312
		3 7 0.0035948817781236769 8 0.6010686254078329 9 0.39533649281404337
		3 7 0.0054442823815782264 8 0.57332427208466552 9 0.42123144553375624
		3 7 0.004238859199306156 8 0.6499433144348995 9 0.34581782636579445
		3 7 0.0012716242271687821 8 0.55475587909094271 9 0.44397249668188832
		3 7 0.0062802817937871102 8 0.68377324758578595 9 0.30994647062042696
		3 7 0.014644370688393627 8 0.74104051250028058 9 0.24431511681132562
		3 7 0.046890879002075149 8 0.8243574106452547 9 0.12875171035267019
		3 7 0.098567927422851823 8 0.8580965418657196 9 0.043335530711428635
		3 7 0.16349589859710009 8 0.8168804100052719 9 0.019623691397627995
		3 7 0.17828359645466468 8 0.79623792587936459 9 0.025478477665970736
		3 7 0.11003827735362105 8 0.83186697661271092 9 0.05809474603366805
		3 7 0.0015431953225995226 8 0.52550419149968308 9 0.47295261317771731
		3 7 0.0040699010364795103 8 0.53306378078796501 9 0.46286631817555557
		3 7 0.0011247887467758439 8 0.50531791089389766 9 0.49355730035932649
		3 7 0.0027550285988070236 8 0.51428774549778467 9 0.48295722590340845
		3 7 0.0012852720500825157 8 0.50351829401507264 9 0.49519643393484475
		3 7 0.00058080589008906224 8 0.50043064398811643 9 0.49898855012179438
		3 7 0.00034349938640659638 8 0.50014071346323197 9 0.49951578715036155
		3 7 0.0003894400358204903 8 0.50337460391700228 9 0.49623595604717724
		3 7 0.00049770089220928357 8 0.51671507746971568 9 0.48278722163807503
		3 7 0.20763410369747623 8 0.78107781298254075 9 0.011288083319982928
		3 7 0.2234091124933501 8 0.76049992928208954 9 0.016090958224560348
		3 7 0.0010317102800011402 8 0.50241617495047919 9 0.49655211476951977
		3 7 0.00036936084720075942 8 0.50003462465918369 9 0.49959601449361563
		3 7 0.00021822553701487685 8 0.50009184625603387 9 0.49968992820695118
		3 7 0.0002240812319605137 8 0.50281810118745618 9 0.49695781758058333
		3 7 0.00036596843532147195 8 0.51690753092703257 9 0.48272650063764605
		3 7 0.00072324592382414475 8 0.5439928487717135 9 0.45528390530446239
		3 7 0.0027399854785707966 8 0.60126806373666919 9 0.39599195078476007
		3 7 0.0080748709776032289 8 0.67306315648691839 9 0.31886197253547843
		3 7 0.022943263837592185 8 0.73936745167350759 9 0.23768928448890017
		3 7 0.0089362550529506687 8 0.65644752178245247 9 0.33461622316459677
		3 7 0.022400508141244273 8 0.71321564491195344 9 0.26438384694680228
		3 7 0.066040408988055577 8 0.79248773591026023 9 0.14147185510168417
		3 7 0.14107883673417482 8 0.79431277856141091 9 0.06460838470441424
		3 7 0.21463233457953693 8 0.75331654100280254 9 0.03205112441766058
		3 7 0.26080329277554848 8 0.71788453846937428 9 0.021312168755077254
		3 7 0.28573886206035876 8 0.68638571109015922 9 0.027875426849481997
		3 7 0.26546847069285323 8 0.69687589632915015 9 0.037655632977996692
		3 7 0.24871360178048996 8 0.69663993411345648 9 0.054646464106053498
		3 7 0.19611321762853962 8 0.74421635428102095 9 0.059670428090439286
		3 7 0.039125744435213182 8 0.73823197765943949 9 0.22264227790534721
		3 7 0.0161399430706365 8 0.68055690071833663 9 0.30330315621102683
		3 7 0.0071904331189564241 8 0.62989253798822076 9 0.3629170288928229
		3 7 0.0034571729708099482 8 0.60544184935605661 9 0.39110097767313345
		3 7 0.0017474985799328174 8 0.58975699559444617 9 0.408495505825621
		3 7 0.0010747988135952182 8 0.5737533323167584 9 0.42517186886964647
		3 7 0.0016014483200676604 8 0.58746430971203234 9 0.41093424196789996
		3 7 0.0031484378000091223 8 0.59978042103675056 9 0.39707114116324044
		3 7 0.002621997391565043 8 0.59407001375413682 9 0.40330798885429808
		3 7 0.0033682321600179959 8 0.59143774920969872 9 0.4051940186302832
		3 7 0.0084073738963820459 8 0.62304916318541026 9 0.36854346291820778
		3 7 0.016810578452158817 8 0.67597485304689509 9 0.30721456850094619
		3 7 0.028428059203717049 8 0.7182093834743859 9 0.25336255732189711
		3 7 0.012420793822158297 8 0.63742818688014236 9 0.35015101929769926
		3 7 0.0099673013375204539 8 0.60822973099799882 9 0.38180296766448074
		3 7 0.0046696044672630893 8 0.58441825837565886 9 0.41091213715707808
		3 7 0.0014968999146956537 8 0.56856292908056538 9 0.42994017100473897
		3 7 0.0014671824998005684 8 0.58211468034038205 9 0.41641813715981729
		3 7 0.00081943848642664833 8 0.56606485681648011 9 0.43311570469709315
		3 7 0.00060026978344650847 8 0.5435189986500093 9 0.45588073156654418
		3 7 0.2289895931819898 8 0.7081101373006794 9 0.06290026951733084
		3 7 0.19145795717553543 8 0.73827294417636025 9 0.070269098648104378
		3 6 0.39751639626618646 7 0.09366707153630198 37 0.50881653219751155
		3 7 0.047672706371256215 8 0.8884654070081901 9 0.063861886620553629
		3 7 0.040249837460578822 8 0.81937931101410688 9 0.14037085152531417
		3 7 0.025362597667381765 8 0.70738734752069621 9 0.26725005481192199
		3 7 0.01157688123692616 8 0.6003281601471665 9 0.38809495861590726
		3 7 0.0069955348346421344 8 0.54426857672213746 9 0.44873588844322049
		3 7 0.0030319173932792268 8 0.51411553846309421 9 0.48285254414362666
		3 2 0.26096036870146322 3 0.41562084957580664 4 0.32341878172273009
		3 1 0.25991888752023268 3 0.20257979033981396 64 0.53750132213995327
		3 3 0.35372359699764472 4 0.45404412853479709 5 0.19223227446755811
		3 3 0.16821049002018906 4 0.43724455301948545 5 0.39454495696032549
		3 3 0.050698853682793109 4 0.34847614014614942 5 0.6008250061710575
		3 4 0.21682542378802555 5 0.65667115265751519 37 0.12650342355445929
		3 5 0.53939226482509206 6 0.20288052845465437 37 0.25772720672025345
		3 5 0.37324941381010479 6 0.27422520568847192 37 0.35252538050142335
		3 5 0.28409188876724423 6 0.16256287361110164 37 0.55334523762165422
		3 5 0.46148491721082563 6 0.12405735794201403 37 0.41445772484716026
		3 4 0.24032389041480484 5 0.58279190553449811 37 0.17688420405069719
		3 3 0.059976839640384527 4 0.3828458758949505 5 0.55717728446466508
		3 3 0.13159953741952266 4 0.46779811662475673 5 0.40060234595572058
		3 3 0.28155817559757901 4 0.48485799435980431 5 0.23358383004261671
		3 2 0.21979957692189309 3 0.40065367898969473 4 0.37954674408841205
		3 3 0.35730620839897492 4 0.41511441380912423 64 0.22757937779190091
		3 1 0.25884598050133445 3 0.24846416790712886 64 0.49268985159153661
		3 3 0.22439309461732912 4 0.51656822343611675 5 0.25903868194655422
		3 2 0.19524431878933796 3 0.31925492095782404 4 0.485500760252838
		3 2 0.26291160912270162 3 0.34651113599306621 4 0.39057725488423206
		3 3 0.20167355108823903 4 0.48660785512222882 5 0.31171859378953226
		3 3 0.17943829504045078 4 0.5187338184795327 5 0.30182788648001652
		3 3 0.10075133156339025 4 0.46925084829377595 5 0.42999782014283378
		3 3 0.053411277203934369 4 0.40355472742837634 5 0.54303399536768926
		3 4 0.26299034548582556 5 0.55337093542349458 37 0.18363871909067986
		3 5 0.34979611623119311 37 0.49451793871236066 38 0.15568594505644617
		3 5 0.17582279091906952 37 0.65937922545829308 38 0.16479798362263748
		3 5 0.095907795297275028 37 0.77593965673900289 38 0.128152547963722
		3 5 0.19060083022016031 6 0.19277587285593276 37 0.61662329692390694
		3 5 0.22964299698343993 6 0.32102891549286128 37 0.44932808752369879
		3 5 0.082642339349440569 6 0.1331409027084017 37 0.78421675794215773
		3 6 0.027136582249032867 37 0.79953230800983421 38 0.17333110974113278
		3 5 0.034801928405685828 37 0.74306678230345635 38 0.22213128929085782
		3 5 0.09034190629947253 37 0.6671689911852724 38 0.24248910251525516
		3 5 0.1689458642311073 37 0.62180992619321063 38 0.20924420957568202
		3 4 0.15448743535157464 5 0.43584922128412668 37 0.40966334336429872
		2 4 0.30979997999238923 5 0.53783204064647994;
	setAttr ".wl[666:833].w"
		1 37 0.15236797936113067
		3 3 0.076613284309739141 4 0.40694099461625344 5 0.51644572107400744
		3 3 0.068845083204311305 4 0.36765919122192736 5 0.56349572557376149
		3 4 0.23235580338101147 5 0.69338111054790375 37 0.074263086071084838
		3 4 0.20905960184286901 5 0.56964420123490034 37 0.22129619692223054
		3 5 0.38336303134441607 37 0.4931992303314387 38 0.12343773832414517
		3 5 0.14201933542938158 37 0.68863782940550966 38 0.16934283516510878
		3 5 0.33880523412304492 37 0.57492555235090426 38 0.086269213526050895
		3 5 0.50442256808404673 6 0.16559380992860565 37 0.32998362198734776
		3 5 0.33007988133125599 6 0.34980260891977799 37 0.32011750974896608
		3 6 0.47042326373068394 10 0.11974971998253926 37 0.40982701628677681
		3 5 0.12769256682197117 6 0.34320859112726831 37 0.52909884205076063
		3 5 0.25120175903305481 6 0.23585913160471095 37 0.5129391093622343
		3 5 0.20779563815989235 6 0.11264306942788067 37 0.67956129241222696
		3 5 0.11163653921559159 37 0.77085204143728303 38 0.11751141934712542
		3 6 0.047569504344012851 37 0.85102455544922695 38 0.10140594020676019
		3 5 0.082745554845715857 6 0.19323498302410005 37 0.72401946213018409
		3 6 0.033128214175242324 37 0.88264574548246932 38 0.084226040342288269
		3 6 0.085732354906013608 7 0.062224129478760194 37 0.85204351561522618
		3 6 0.017231221245019107 37 0.83301157493446609 38 0.14975720382051472
		3 6 0.059594922068991807 37 0.8509360397426422 38 0.089469038188366018
		3 6 0.080252958749798861 37 0.85653386442639123 38 0.063213176823810016
		3 5 0.083387157150097285 6 0.19507815237248474 37 0.72153469047741803
		3 5 0.17975042467671321 6 0.42306770673133343 37 0.39718186859195331
		3 7 0.16461449597622357 8 0.71855996829746749 9 0.11682553572630894
		3 16 0.017516217667417362 17 0.37165905848388592 18 0.6108247238486969
		3 16 0.0063176410176165624 17 0.26697435506004374 18 0.7267080039223397
		3 16 0.004745699041467758 17 0.30318293096621496 18 0.69207136999231711
		3 16 0.071187026620668517 17 0.43281911513236593 18 0.49599385824696557
		3 16 0.13735933736190881 17 0.55243501157306418 18 0.31020565106502701
		3 16 0.35406640346054119 17 0.48235724726825024 18 0.16357634927120859
		3 16 0.4322049443892727 17 0.49245364188085344 18 0.075341413729873824
		3 16 0.50800942720237141 17 0.18951876882531882 20 0.30247180397230977
		3 16 0.48213628375996975 17 0.21925612409796896 24 0.29860759214206134
		3 16 0.052643783128207701 17 0.48464743923921122 18 0.46270877763258106
		3 16 0.26402875356121347 17 0.57466308851984349 18 0.16130815791894301
		3 16 0.59118616719264605 17 0.38424707190598534 18 0.02456676090136856
		3 12 0.10318638847090346 16 0.73898064482571502 20 0.15783296670338159
		3 16 0.33449654872182066 20 0.35820772891861025 31 0.30729572235956909
		3 20 0.39259604140990739 21 0.17096884966619141 31 0.43643510892390119
		3 20 0.49235011314345056 21 0.38234541499738151 22 0.12530447185916793
		3 16 0.1594438857762584 20 0.65012488409205726 31 0.19043123013168414
		3 20 0.36615353512515769 21 0.48466029549433659 22 0.14918616938050577
		3 20 0.19113628697703161 21 0.50187408170349401 22 0.30698963131947443
		3 20 0.10064775502476582 21 0.57665004716912294 22 0.32270219780611137
		3 20 0.046859861214084399 21 0.43704329739824554 22 0.51609684138767009
		3 20 0.014676109815147307 21 0.45614524650305971 22 0.5291786436817929
		3 20 0.0065917153482481479 21 0.35115920821378788 22 0.64224907643796403
		3 20 0.24552391105822147 21 0.59814729823423551 22 0.1563287907075431
		3 16 0.18254159404013523 20 0.36855417846570865 21 0.4489042274941562
		3 20 0.16773327448579353 21 0.514120735368364 22 0.31814599014584249
		3 20 0.055409487753378235 21 0.5527183798977533 22 0.39187213234886858
		3 20 0.027217972456068679 21 0.39653219939543993 22 0.57624982814849135
		3 20 0.0066704614606901483 21 0.38888457253746872 22 0.60444496600184106
		3 27 0.36528173450382423 28 0.23767423073166746 31 0.39704403476450839
		3 27 0.21810918437544219 28 0.628361330730143 30 0.15352948489441456
		3 27 0.18972057345305515 28 0.61660428783678678 29 0.19367513871015826
		3 28 0.485628339909141 29 0.27367787808576832 30 0.24069378200509065
		3 28 0.4396683129097726 29 0.33369213709270817 30 0.22663954999751937
		3 28 0.3082409751804821 29 0.3866357167672374 30 0.30512330805228044
		3 28 0.33459339239697505 29 0.35002461007356811 30 0.31538199752945684
		3 28 0.2766084097002966 29 0.36168148762625629 30 0.36171010267344711
		3 10 0.57373305330884106 11 0.37878240703218941 35 0.047484539658969441
		3 10 0.47067613924621549 11 0.47032040488767657 35 0.05900345586610798
		3 10 0.2838297991919973 11 0.61430234157008701 35 0.10186785923791576
		3 10 0.156392677552916 11 0.74665398944476258 12 0.096953333002321493
		3 11 0.67664236652723975 12 0.26245512390064529 35 0.060902509572114988
		3 10 0.22357962806599119 11 0.72190416916290479 35 0.054516202771103903
		3 10 0.51015573479670762 11 0.46706724390741572 35 0.022777021295876672
		3 10 0.49271559467324366 11 0.49651824709354364 35 0.010766158233212853
		3 10 0.2565814086135208 11 0.71453297735811994 35 0.028885614028359166
		3 10 0.45111753568065099 11 0.53006525044625952 35 0.018817213873089576
		3 10 0.44761857868193489 11 0.51521028945474423 35 0.037171131863321008
		3 10 0.24424807435238649 11 0.71167545701092294 35 0.044076468636690506
		3 10 0.070707550652299944 11 0.84979333070847995 12 0.079499118639220198
		3 10 0.068401069376550994 11 0.87094762319231567 12 0.060651307431133249
		3 11 0.83482142858528108 12 0.11833081023807486 35 0.046847761176644083
		3 11 0.72817005462725071 12 0.2260961642189328 35 0.045733781153816343
		3 11 0.58828749020827398 12 0.3931133643528153 35 0.01859914543891068
		3 11 0.4901133769321146 12 0.49384337062169464 35 0.016043252446190752
		3 11 0.71868943597819268 12 0.26451377549443628 36 0.016796788527371275
		3 11 0.74574681516200425 12 0.23425356334954908 36 0.01999962148844675
		3 11 0.76998658841863965 12 0.20733814905749562 36 0.022675262523864793
		3 11 0.72936594261282939 12 0.23625942916265719 35 0.034374628224513336
		3 10 0.19436934119439289 11 0.72934202805804893 35 0.07628863074755822
		3 10 0.4710572721079902 11 0.47346026559579035 35 0.05548246229621942
		3 11 0.51890414494955583 12 0.46494098651252924 35 0.016154868537914945
		3 11 0.52415935298001326 12 0.4501741723879194 13 0.025666474632067251
		3 11 0.48992545027822842 12 0.49183159786910807 13 0.018242951852663655
		3 11 0.54040817051103884 12 0.45097461240641085 36 0.0086172170825501784
		3 11 0.3429409918263096 12 0.63592153841546617 14 0.021137469758224028
		3 11 0.34041061435885872 12 0.64642011726753701 14 0.0131692683736041
		3 11 0.18285372951745971 12 0.75329226572818742 14 0.06385400475435285
		3 11 0.13518936820524771 12 0.77011978526682456 14 0.094690846527927863
		3 11 0.040891087606487068 12 0.78305296757959897 14 0.17605594481391396
		3 11 0.2947501021285987 12 0.67549956996323024 14 0.029750327908171191
		3 11 0.27153181907092916 12 0.66156571122580032 13 0.066902469703270406
		3 11 0.10352111841961545 12 0.79696369427322689 14 0.099515187307157707
		3 12 0.79726589494559152 13 0.031606540233303185 14 0.17112756482110542
		3 12 0.77691875433155033 14 0.14291713347960797 15 0.080164112188841646
		3 12 0.83080078235402632 14 0.1225111812475424 15 0.046688036398431318
		3 12 0.81354144078056323 13 0.052750739389396346 14 0.13370781983004046
		3 12 0.86854576159294483 14 0.074282691916548627 15 0.057171546490506576
		3 12 0.78041841516067212 13 0.12047363380812895 14 0.099107951031198863
		3 11 0.20964163432144081 12 0.69019308608464713 13 0.10016527959391196
		3 11 0.29505855580053236 12 0.66360584543230849 13 0.041335598767159289
		3 11 0.1074385017563896 12 0.78211309819279951 14 0.11044840005081094
		3 12 0.7427941690326707 13 0.13923417253555112 14 0.11797165843177825
		3 12 0.75771444788981301 13 0.069874474784781912 14 0.17241107732540528
		3 12 0.76235909610522246 14 0.11232129238548491 15 0.12531961150929255
		3 12 0.78237807400306336 13 0.082219251020798412 14 0.13540267497613825
		3 12 0.84227621756616988 13 0.052470529042557987 14 0.10525325339127202
		3 12 0.85582407381669434 14 0.042882779061684848 15 0.10129314712162069
		3 12 0.80792331132063333 14 0.074269153398807145 15 0.11780753528055955
		3 12 0.56491163923214283 20 0.2336110854946743 31 0.20147727527318288
		3 20 0.17470077112794194 27 0.14894369678895703 31 0.67635553208310117
		3 31 0.5026684236990242 32 0.40137013956001272 33 0.095961436740963232
		3 31 0.30850979820676622 32 0.4922183390763003 33 0.19927186271693342
		3 31 0.16461753779918448 32 0.54185175697110699 33 0.29353070522970864
		3 31 0.071453301993971582 32 0.51194688275889633 33 0.41659981524713208
		3 31 0.02659914592915609 32 0.45279311547900403 33 0.52060773859183984
		3 31 0.010770926493338146 32 0.39862578264640586 33 0.59060329086025598
		3 31 0.0016361370160886918 32 0.33977744216202371 33 0.65858642082188756
		3 31 0.011164468848600249 32 0.40824758510878878 33 0.58058794604261088
		3 31 0.082037971899136058 32 0.5439840550543753 33 0.37397797304648839
		3 31 0.32339492812013804 32 0.52048957893836423 33 0.15611549294149765
		3 15 0.13100083081589797 27 0.60530250341840131 31 0.26369666576570078
		3 12 0.40740157543675676 15 0.30283134583123988 27 0.28976707873200336
		3 12 0.20729310101910267 15 0.34620619564411442 27 0.44650070333678304
		3 12 0.66575805715109293 15 0.25570865221898587 31 0.078533290629921176
		3 12 0.48566386295717051 15 0.35577961633110922 27 0.15855652071172033
		3 12 0.78222395553636437 14 0.051422951482730427 15 0.16635309298090514
		3 12 0.82522256642437875 15 0.14007920232317611 31 0.034698231252445207
		3 12 0.5597450749089824 15 0.25801069596300835 24 0.18224422912800928
		3 12 0.55092480039557234 15 0.22778953879573111 24 0.22128566080869649
		3 12 0.26869002554081328 15 0.27388949633860715 24 0.45742047812057962
		3 12 0.25191390884148984 15 0.25650520518333764 24 0.49158088597517247
		3 15 0.19605886947070739 24 0.59057262836021474 25 0.21336850216907785
		3 12 0.18583929087537759 15 0.27996103148808066 24 0.53419967763654186
		3 12 0.29247799854341511 15 0.41255332970942232 24 0.29496867174716268
		3 12 0.2378936947620662 15 0.43260249694188613 27 0.32950380829604781
		3 15 0.32718880362647501 27 0.48126905913721729 31 0.1915421372363077
		3 15 0.1785672754669449 27 0.63493846457957559 31 0.18649425995347949
		3 27 0.49276751135062397 28 0.36908176047734259 31 0.13815072817203347
		3 15 0.23930047772404756 16 0.17058356560097268 24 0.59011595667497974
		3 15 0.18036778749592539 24 0.62632830680019247 25 0.19330390570388203
		3 24 0.37849445055584174 25 0.49096156174880512 26 0.13054398769535316
		3 24 0.40750019060538251 25 0.47343188810708442 26 0.11906792128753312
		3 24 0.1695862351921196 25 0.66695014756721149 26 0.16346361724066893
		3 24 0.089661915827749863 25 0.70950570126023815 26 0.200832382912012
		3 24 0.052445035853706988 25 0.74000853754117157 26 0.20754642660512143
		3 24 0.017389288001342346 25 0.74712204715158437 26 0.23548866484707331
		3 24 0.04752042181110569 25 0.71555543018858969 26 0.23692414800030465
		3 24 0.16402709162937421 25 0.63301148043304056 26 0.20296142793758518
		3 24 0.43123747842479643 25 0.41435035200409287 26 0.15441216957111056
		3 15 0.1838504238679444 24 0.59670948074119057 25 0.21944009539086509
		3 15 0.20945733783058543 16 0.26821408291296495 24 0.52232857925644949
		3 16 0.61074992183330401 17 0.20213352564169731 24 0.18711655252499856
		3 16 0.53682017852089436 17 0.39810836505651953 18 0.065071456422586202
		3 16 0.16484951134124137 17 0.52366959983893868 18 0.31148088881982
		3 16 0.024741989699589451 17 0.36850457068212811 18 0.60675343961828232
		3 12 0.55671300155179493 15 0.20904272537309654 24 0.23424427307510862
		3 12 0.24858938371915812 16 0.41373439218430352 24 0.33767622409653836
		3 12 0.17658965284065783 15 0.26346337484753218 24 0.5599469723118099
		3 15 0.19039994517428802 24 0.58008748548800082 25 0.22951256933771105
		3 24 0.44128689262761794 25 0.41634357896539015 26 0.14236952840699191
		3 24 0.17734498653029998 25 0.62963841962497735 26 0.19301659384472281
		1 24 0.035145097997241158;
	setAttr ".wl[833:999].w"
		2 25 0.72876006644058944 26 0.23609483556216931
		3 15 0.22574802390404361 24 0.60740513910630456 25 0.16684683698965169
		3 28 0.36774765408695126 29 0.28378544754243906 30 0.34846689837060962
		3 28 0.51735761175957762 29 0.19579092397870032 30 0.28685146426172198
		3 28 0.34240647172640531 29 0.31944641155222137 30 0.33814711672137343
		3 28 0.53645531955494796 29 0.23527986555617139 30 0.22826481488888048
		3 27 0.22576774423956547 28 0.61236260462895853 30 0.16186965113147594
		3 27 0.35490840238245713 28 0.54271666491207171 31 0.10237493270547102
		3 31 0.0059496888146887928 32 0.3533138931671776 33 0.64073641801813364
		3 31 0.06167527547822213 32 0.49094440709179332 33 0.44738031742998446
		3 31 0.23974794235827152 32 0.55123572250839581 33 0.20901633513333265
		3 16 0.11323926355504932 20 0.76776505182070021 21 0.1189956846242505
		3 20 0.12340274353198676 31 0.74864038101277131 32 0.12795687545524206
		3 27 0.54922857578894013 28 0.23987059953054365 31 0.21090082468051613
		3 16 0.7880051949354514 17 0.15694440690188136 20 0.055050398162667276
		3 16 0.7951249293011764 17 0.16195227341912397 20 0.042922797279699589
		3 16 0.69896967919124542 17 0.24034173153651908 20 0.060688589272235582
		3 16 0.78219274515239567 17 0.11057738180288358 20 0.10722987304472079
		3 16 0.68509723149576129 17 0.062159948510103293 20 0.25274281999413539
		3 12 0.090990625644398193 16 0.47355430874887366 20 0.43545506560672831
		3 16 0.37302743717080694 20 0.5666105339074976 21 0.060362028921695607
		3 16 0.26805449798561842 20 0.61391140342882311 21 0.11803409858555852
		3 16 0.2052560118123205 20 0.55592129471698226 21 0.23882269347069715
		3 20 0.61305249308906795 21 0.21182736033724697 31 0.17512014657368508
		3 20 0.68272979793371669 21 0.088701252265946093 31 0.22856894980033718
		3 20 0.61504704273039801 21 0.043342539277900057 31 0.341610417991702
		3 12 0.093481100600999775 20 0.4476812267762354 31 0.45883767262276481
		3 20 0.34340181631883643 31 0.61089447897589555 32 0.045703704705267981
		3 20 0.24082182568926863 31 0.66671603388770329 32 0.092462140423028055
		3 20 0.16708327449316215 31 0.61464943075117839 32 0.21826729475565942
		3 27 0.12298664932570579 31 0.58798428220905952 32 0.28902906846523463
		3 27 0.17876825967523111 31 0.68716924161086657 32 0.13406249871390236
		3 27 0.27015212145812828 31 0.66930650040056339 32 0.060541378141308368
		3 15 0.070462645541037816 27 0.38998483592679872 31 0.53955251853216346
		3 27 0.49005341173073352 28 0.093035999096653943 31 0.41691058917261264
		3 27 0.51608323070494644 28 0.18508612653482789 31 0.29883064276022564
		3 27 0.41975295702767618 28 0.36644402576473961 31 0.21380301720758402
		3 56 0.22884055194424685 57 0.43439618981399408 58 0.33676325824175918
		3 56 0.13755905376176053 57 0.51174651694882289 58 0.35069442928941652
		3 56 0.13743411344307041 57 0.46997795905110906 58 0.39258792750582067
		3 56 0.3422951682483879 57 0.41798991505610988 58 0.23971491669550221
		3 56 0.5090493004996417 57 0.28258925579958338 58 0.20836144370077481
		3 55 0.33494909869044676 56 0.49028982785670266 57 0.17476107345285063
		3 55 0.4097765007290054 56 0.50919923158428959 57 0.081024267686705051
		3 51 0.3089629273350013 55 0.46400080210424871 56 0.22703627056074996
		3 55 0.45751969478238719 56 0.25031774879005281 59 0.29216255642756006
		3 56 0.32042158241176577 57 0.35429736900630687 58 0.32528104858192736
		3 55 0.25747214548489217 56 0.56490835720021282 57 0.17761949731489496
		3 55 0.54860854099928891 56 0.41321784517377014 57 0.038173613826941039
		3 39 0.096822157487705743 51 0.20126677976039473 55 0.70191106275189952
		3 47 0.31159173891429398 51 0.38518910545278312 55 0.30321915563292301
		3 47 0.43089783399807857 51 0.3997104239875432 52 0.16939174201437818
		3 51 0.49290188421844056 52 0.3814260129210848 53 0.12567210286047464
		3 47 0.18894623892687371 51 0.66220950649557164 55 0.14884425457755462
		3 51 0.36809451791444703 52 0.48252270650366758 53 0.14938277558188534
		3 51 0.19143971221904804 52 0.50078580548352303 53 0.3077744822974291
		3 51 0.10196756884749132 52 0.5746944153600666 53 0.32333801579244209
		3 51 0.047029163815675061 52 0.43572926471767348 53 0.51724157146665128
		3 51 0.014940199144601896 52 0.45509246529109038 53 0.52996733556430775
		3 51 0.0066401630694135558 52 0.35005948735625819 53 0.64330034957432836
		3 51 0.25120663186668818 52 0.59200866577205746 53 0.15678470236125458
		3 51 0.37881503314836118 52 0.45732891991277813 55 0.16385604693886049
		3 51 0.16840924488544534 52 0.51225226143236846 53 0.31933849368218614
		3 51 0.056609090965544819 52 0.55058493281885701 53 0.39280597621559837
		3 51 0.02741097477559281 52 0.39499786622388616 53 0.57759115900052094
		3 51 0.0068328247787504352 52 0.38777861065955077 53 0.60538856456169854
		3 43 0.32273516169941596 44 0.25751345561149958 47 0.41975138268908452
		3 43 0.2093462504146856 44 0.66797914014734838 48 0.12267460943796597
		3 43 0.16696296252676968 44 0.71008381430498668 47 0.12295322316824372
		3 44 0.64888408128163666 45 0.2737531868199739 48 0.077362731898389409
		3 44 0.67821213624066234 45 0.25907451453565228 48 0.062713349223685461
		3 44 0.53240919761034378 45 0.42789406081119052 48 0.039696741578465741
		3 44 0.49857713975389539 45 0.45847906065362271 48 0.042943799592481909
		3 44 0.48687531284215613 45 0.46912771797293756 48 0.043996969184906247
		3 37 0.27387117776392877 38 0.62600067834540363 62 0.10012814389066767
		3 37 0.15030796004911801 38 0.75776277523207813 62 0.091929264718803722
		3 38 0.73766814570350225 39 0.20114340960971308 62 0.061188444686784568
		3 37 0.22126069584023561 38 0.72418551757286087 62 0.054553786586903526
		3 37 0.25768243072865016 38 0.71297972295783185 62 0.029337846313517914
		3 37 0.24334549851594961 38 0.71219699118812463 62 0.044457510295925921
		3 37 0.07141123435831194 38 0.87150876710048475 39 0.057079998541203464
		3 37 0.069106194100565718 38 0.88928469594237647 39 0.041609109957057945
		3 38 0.87054417991217503 39 0.082114481140472304 62 0.047341338947352624
		3 38 0.78781307970325232 39 0.16622769185102204 62 0.045959228445725725
		3 38 0.66173300372221533 39 0.31961086989607357 62 0.018656126381711054
		3 38 0.56981188680172212 39 0.41411858460263801 62 0.016069528595639961
		3 38 0.77648227348204057 39 0.20481135489589855 63 0.018706371622060774
		3 38 0.78740488587533575 39 0.18748428993315985 63 0.025110824191504288
		3 38 0.80510631764490592 39 0.16453272942045891 63 0.030360952934635144
		3 38 0.77832719764350644 39 0.18694216660736063 62 0.034730635749133057
		3 37 0.18906237675867821 38 0.73564018046893509 62 0.075297442772386675
		3 38 0.58945961391635859 39 0.39436535761909258 62 0.016175028464548866
		3 38 0.58387612187048421 39 0.39901113824082562 40 0.017112739888690325
		3 38 0.56017483236422316 39 0.42739917509179576 40 0.012425992543981192
		3 38 0.61047562722847826 39 0.37958531446170368 63 0.0099390583098180364
		3 38 0.41674656562874568 39 0.56603691715189675 41 0.017216517219357533
		3 38 0.41501622475158678 39 0.57473933337737992 41 0.010244441871033159
		3 38 0.23631662692865554 39 0.71162972246745082 41 0.052053650603893505
		3 38 0.18382894278188758 39 0.73332754732448058 41 0.082843509893631956
		3 38 0.059422366473777501 39 0.78619528411729589 41 0.15438234940892664
		3 38 0.36452560267473821 39 0.6077738932839607 41 0.02770050404130105
		3 38 0.33383914440393125 39 0.62009641273611538 40 0.046064442859953203
		3 38 0.14301462906177276 39 0.75424166211768562 41 0.10274370882054155
		3 38 0.034380987988797455 39 0.79926648949161139 41 0.16635252251959134
		3 39 0.76787310367655714 41 0.13751463881629028 42 0.094612257507152575
		3 39 0.81127935885736402 41 0.1312097242725791 42 0.057510916870056758
		3 39 0.8044981944246169 40 0.036919513027936654 41 0.15858229254744644
		3 39 0.83356362030432118 41 0.096412725328427193 42 0.070023654367251761
		3 38 0.097760794983947061 39 0.7784030047187136 41 0.12383620029733948
		3 38 0.2565083399240175 39 0.67554067348904101 40 0.067950986586941611
		3 38 0.35566248278986157 39 0.61832109541651492 40 0.026016421793623418
		3 38 0.13763072646922639 39 0.76567611358299315 41 0.09669315994778041
		3 39 0.77357022720863489 40 0.097437196917515109 41 0.12899257587385002
		3 39 0.78050345380809782 40 0.048237681474708152 41 0.17125886471719415
		3 39 0.73427176367116354 41 0.12241381255411866 42 0.14331442377471795
		3 39 0.77852260566396969 40 0.058166832419712863 41 0.16331056191631749
		3 39 0.81700816478893712 41 0.14370026534154196 42 0.039291569869520891
		3 39 0.82412900204870565 41 0.064932147490053424 42 0.11093885046124087
		3 39 0.77043765064817993 41 0.099448578032614712 42 0.1301137713192056
		3 39 0.52587968405167396 47 0.20903105783982873 51 0.26508925810849754
		3 39 0.12662902314111665 47 0.69484747725645934 51 0.178523499602424
		3 47 0.45936151817580634 48 0.38780910224195203 49 0.15282937958224183
		3 47 0.29458269497202622 48 0.39707173177357663 49 0.3083455732543971
		3 47 0.14991838786816383 48 0.44281788763791641 49 0.40726372449391968
		3 47 0.068527123945395438 48 0.37244404280263321 49 0.55902883325197139
		3 47 0.024807793308820752 48 0.34096130246665846 49 0.63423090422452078
		3 47 0.010619592612626879 48 0.26859313786010036 49 0.72078726952727279
		3 47 0.0016351385731159694 48 0.2341694759366767 49 0.76419538549020738
		3 47 0.010391345226705526 48 0.28441637052425822 49 0.70519228424903624
		3 47 0.073646604772012014 48 0.42510156558078982 49 0.50125182964719817
		3 47 0.28596203675401993 48 0.48165285962431148 49 0.23238510362166848
		3 42 0.13409707349147149 43 0.55620319984667588 47 0.30969972666185258
		3 39 0.37559191754919191 42 0.31006880584280172 47 0.31433927660800653
		3 39 0.19071369755983622 42 0.35352026114522783 43 0.45576604129493598
		3 39 0.63854783258131076 42 0.2742235855120646 47 0.08722858190662465
		3 39 0.45645367493892541 42 0.37287272028229451 43 0.17067360477877999
		3 39 0.75511052842840343 41 0.057776614776959459 42 0.18711285679463704
		3 39 0.80038651305926489 42 0.15761416175685289 51 0.041999325183882281
		3 39 0.52218612346420212 42 0.27804369718523536 59 0.19977017935056271
		3 39 0.51872636069203903 42 0.24596822005313931 59 0.23530541925482165
		3 39 0.23624783329292429 42 0.28380657553454364 59 0.47994559117253199
		3 39 0.23370948363267355 42 0.25725542944541452 59 0.50903508692191179
		3 42 0.19158176819364259 59 0.59341568934232092 60 0.21500254246403649
		3 39 0.15525770070892683 42 0.28047240731306172 59 0.56426989197801158
		3 39 0.26066450634300126 42 0.41380762956973283 59 0.32552786408726586
		3 39 0.2159902754112423 42 0.43172961742652244 43 0.35228010716223523
		3 42 0.31403418942005407 43 0.48378098201806624 47 0.20218482856187961
		3 42 0.17732497818105594 43 0.62085369716986971 47 0.2018213246490744
		3 43 0.46419766182501915 44 0.37961348334222456 47 0.15618885483275632
		3 42 0.22120237024547279 55 0.17020633864610321 59 0.60859129110842392
		3 42 0.1724499709193657 59 0.63403934582627108 60 0.19351068325436313
		3 59 0.37592478673168644 60 0.49435907237697363 61 0.12971614089133993
		3 59 0.39854091668294173 60 0.48343381124250479 61 0.11802527207455349
		3 59 0.16529063049049464 60 0.67176575786129844 61 0.16294361164820689
		3 59 0.088349372740675489 60 0.71115151622647998 61 0.20049911103284448
		3 59 0.050073207930576152 60 0.74256906947752055 61 0.20735772259190333
		3 59 0.016602930902795323 60 0.7479832761399462 61 0.23541379295725848
		3 59 0.04515925917079875 60 0.71831076207571865 61 0.23652997875348272
		3 59 0.15950582873847352 60 0.63819013167766925 61 0.20230403958385715
		3 59 0.42003772088726887 60 0.42587188586119307 61 0.15409039325153795
		3 42 0.17374850513310747 59 0.59970064642545096 60 0.22655084844144149
		3 42 0.17556434110555619 55 0.28904548257939927 59 0.53539017631504449
		3 55 0.59127177240218931 56 0.23475454050982184 59 0.17397368708798905
		3 55 0.49646292819827065 56 0.41451398999029099 57 0.089023081811438365
		3 56 0.46517909550429454 57 0.32194093117880634 58 0.21287997331689915
		3 56 0.20991308855278623 57 0.45520412771865182 58 0.33488278372856195
		3 39 0.55013900823463024 42 0.20608160430219424 59 0.24377938746317546;
	setAttr ".wl[1000:1041].w"
		3 39 0.24237232335760028 55 0.4305702102867679 59 0.32705746635563177
		3 39 0.17443082484796701 42 0.24130667186602553 59 0.58426250328600726
		3 42 0.18275698661886453 59 0.57485471078397032 60 0.24238830259716521
		3 59 0.42493708591459178 60 0.43369030617292137 61 0.1413726079124869
		3 59 0.16942367162012398 60 0.63825191978240292 61 0.19232440859747302
		3 59 0.032741996969386705 60 0.73139910471166425 61 0.23585889831894916
		3 42 0.21311394649120496 59 0.60892279973337449 60 0.17796325377542049
		3 44 0.55618081594381774 45 0.36916454669821464 48 0.074654637357967471
		3 44 0.6917404353860569 45 0.19243889074306 48 0.11582067387088313
		3 44 0.59095800057462078 45 0.33722079543104444 48 0.071821203994334698
		3 44 0.7342476411543728 45 0.16731595669839583 48 0.098436402147231344
		3 43 0.22729294490311361 44 0.66879812715780218 48 0.10390892793908423
		3 43 0.31093198827803353 44 0.56979587558005285 47 0.11927213614191358
		3 47 0.0058197337154376983 48 0.21746471892388528 49 0.77671554736067705
		3 47 0.059140679507290461 48 0.34087621893317976 49 0.59998310155952972
		3 47 0.22666239543211347 48 0.45420174103936123 49 0.31913586352852541
		3 47 0.10645833212436764 51 0.77572348776050715 52 0.11781818011512511
		3 47 0.71691571007757504 48 0.16240635577752624 51 0.12067793414489883
		3 43 0.47732350009592439 44 0.25254234286875998 47 0.27013415703531563
		3 51 0.063531867231715444 55 0.73832122428354074 56 0.19814690848474384
		3 51 0.066082799128867969 55 0.7335005431792132 56 0.20041665769191891
		3 51 0.060763565339097068 55 0.65632614786993382 56 0.28291028679096925
		3 51 0.10964166336103889 55 0.73601176850722239 56 0.15434656813173869
		3 51 0.26423563875091738 55 0.64162453337432357 56 0.094139827874759011
		3 39 0.087553061839688764 51 0.45953410462712019 55 0.45291283353319106
		3 51 0.58459180964303947 55 0.34750271595568216 56 0.067905474401278421
		3 51 0.63859567574803944 52 0.11768798200934652 55 0.24371634224261415
		3 51 0.57272744942102893 52 0.24269457909665335 55 0.18457797148231767
		3 47 0.17017570076604061 51 0.61790936604420621 52 0.21191493318975327
		3 47 0.22323182863158642 51 0.68827912340597808 52 0.088489047962435521
		3 47 0.33732951591658134 51 0.61970667795794587 52 0.042963806125472674
		3 39 0.088360359338192904 47 0.45980104660581383 51 0.45183859405599319
		3 47 0.60079073931944349 48 0.056857708215479953 51 0.34235155246507643
		3 47 0.6528784818121951 48 0.10576643712037448 51 0.24135508106743056
		3 47 0.60872592475092391 48 0.21963703730548817 51 0.17163703794358789
		3 43 0.096381454842436529 47 0.55219598546975623 48 0.35142255968780717
		3 43 0.12615376245467144 47 0.67522718596569264 48 0.19861905157963583
		3 43 0.19722031771067822 47 0.70818928128174408 48 0.094590401007577651
		3 42 0.073554386388181944 43 0.32007191655613709 47 0.606373697055681
		3 43 0.40200900142608897 44 0.099941924041448194 47 0.49804907453246278
		3 43 0.41921007107539421 44 0.19970544108653762 47 0.38108448783806803
		3 43 0.34749037938805261 44 0.39439885036449696 47 0.25811077024745027;
	setAttr -s 84 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 0 -0 -1 -0 0.99799027986901856 -0.063367194090933054 -0 0
		 -0.063367194090933054 -0.99799027986901867 -0 0 -95.559524140488392 8.3529922361861715 -3.4314998759166221e-17 1;
	setAttr ".pm[2]" -type "matrix" 0 -0 -1 -0 0.98220797016103401 0.18779644126591369 -0 -0
		 0.18779644126591374 -0.98220797016103401 0 -0 -98.179537472967525 -16.686798167121658 4.3202194641745812e-16 1;
	setAttr ".pm[3]" -type "matrix" 0 -0 -1 -0 0.99176140629857179 0.12809884065314414 -0 -0
		 0.1280988406531442 -0.99176140629857179 0 -0 -105.79112581470955 -10.312733827340182 2.46427707046199e-16 1;
	setAttr ".pm[4]" -type "matrix" 0 -0 -1 -0 0.99804167658749499 -0.062552472328609804 -0 0
		 -0.062552472328609748 -0.99804167658749499 0 0 -112.93116808215187 11.337483986926584 1.2350709678254887e-16 1;
	setAttr ".pm[5]" -type "matrix" 0 -7.8457562571503513e-06 -0.99999999996922206 -0
		 0.98641974755132822 -0.16424396987138712 1.2886181543573101e-06 0 -0.16424396987644216 -0.98641974752096839 7.7392089065275019e-06 0
		 -119.65995581271704 23.693152323860115 -0.00018589069810239194 1;
	setAttr ".pm[6]" -type "matrix" -1.8369095133075878e-13 1.5897534116537124e-11 -1 -0
		 0.98439676970875678 -0.17596306370077874 -2.9782035882479106e-12 0 -0.17596306370077869 -0.984396769708757 -1.5617158413075801e-11 0
		 -138.80815577827528 25.345680206388412 4.2901809001282565e-10 1;
	setAttr ".pm[7]" -type "matrix" -1.4300867336634567e-11 6.9462599125026268e-12 -1 -0
		 0.59767585135526502 0.80173784786971281 -2.978203588247911e-12 -0 0.80173784786971292 -0.59767585135526513 -1.5617158413075801e-11 -0
		 -90.07145791278289 -123.44552150788334 4.2901649057184837e-10 1;
	setAttr ".pm[8]" -type "matrix" 2.8422979048664396e-07 5.8151037188467191e-07 -0.37857441712806361 -0
		 0.34385647666361563 0.15837080779141366 5.0142987234613083e-07 0 0.15837080779195245 -0.34385647666348962 -4.0927859647002654e-07 -0
		 -53.993782358668945 -23.813390930213494 -7.7116637150615307e-05 1;
	setAttr ".pm[9]" -type "matrix" 2.6460113537289875e-07 -1.228894684562969e-07 -0.3785744171285047 -0
		 0.3690942588552853 0.08419036396338106 2.3064593624266421e-07 -0 0.084190363963281223 -0.36909425885533687 1.7865619046885114e-07 -0
		 -62.547343870116428 -11.176446482602335 -3.6400316536943409e-05 1;
	setAttr ".pm[10]" -type "matrix" 0.98951783679139638 0.14384242652924217 -0.012798710945019255 -0
		 0.016658186516883281 -0.025658995449682056 0.99953195085223878 0 0.14344669913819316 -0.98926789712528929 -0.027786187641774849 -0
		 -3.6004763877216486 1.8274030034194497 -146.26264192712122 1;
	setAttr ".pm[11]" -type "matrix" 1.2364098102550207 0.016482382367913297 0.12316094500217092 -0
		 -0.1218824761046417 -0.078861970074727394 1.2341292306285208 0 0.02418572556181333 -1.2400236396716873 -0.076850048351565392 -0
		 -5.70654279161782 12.257483466725555 -183.20421976949856 1;
	setAttr ".pm[12]" -type "matrix" 0.93952870349342898 0.030289898938788098 -0.048143751056890671 -0
		 0.056142936871799325 -0.36603036220422708 0.8653434162317567 0 0.0091252059132395039 -0.86663359004744078 -0.36716812858705522 -0
		 -46.909334071816929 52.6894694687632 -122.51388219391549 0.99999999999999989;
	setAttr ".pm[13]" -type "matrix" 0.93813544816272887 -0.0040001132642323188 -0.076389550502556927 -0
		 0.069492826174487682 -0.34828556639003927 0.87167505114362931 0 -0.031970477669121956 -0.87443161354667365 -0.34683818304702974 0
		 -57.802355924584504 51.873339324790933 -122.0208783919138 1;
	setAttr ".pm[14]" -type "matrix" 0.93813545827019118 -0.0040001119007359604 -0.076389426444721353 -0
		 0.069492711425978709 -0.34828556589281839 0.87167506049042232 0 -0.031970430501286048 -0.87443161375095368 -0.34683818687979157 0
		 -66.87644993449355 52.194171349079056 -121.75434109122206 1;
	setAttr ".pm[15]" -type "matrix" 0.94094398570584581 0.02216096800237001 -0.0090989391023718648 -0
		 0.022037915007109433 -0.94090606574571034 -0.01263286098489852 0 -0.0093930558249251863 0.012415730817083333 -0.94112013237532199 -0
		 -69.247542269972854 135.92265747128366 3.9251369250576582 1;
	setAttr ".pm[16]" -type "matrix" 0.93413921017466561 0.038422450598262818 0.10889047128132696 -0
		 0.033340489892940729 -0.93955675450348186 0.045508243562868061 0 0.11055239110731256 -0.04130743018516992 -0.93382083317066178 -0
		 -74.328813265020514 135.1241417977169 -10.966514028294654 0.99999999999999989;
	setAttr ".pm[17]" -type "matrix" 0.87272809013802755 -0.33531780355321728 0.10889047128132699 -0
		 -0.34213197013381608 -0.87568498800183381 0.045508243562868075 0 0.085093355369130666 -0.081775643317981525 -0.933820833170662 -0
		 -20.035657235704591 155.81536004376667 -11.20738971947012 0.99999999999999989;
	setAttr ".pm[18]" -type "matrix" 0.75723347729650892 -0.54835190303049086 0.10889047128132698 -0
		 -0.55569712259209936 -0.75833975970028067 0.045508243562868061 0 0.061218071154620628 -0.10089837824343216 -0.93382083317066189 -0
		 16.740109518598704 156.77933562528 -11.207389719470028 1;
	setAttr ".pm[19]" -type "matrix" 0.62039875968699076 -0.69942671358375186 0.10889047128132702 -0
		 -0.7068371192328935 -0.6198869010343443 0.045508243562868082 0 0.037896560331796579 -0.11176755201338813 -0.93382083317066222 -0
		 47.786008969000392 149.98780466558804 -11.207389719470005 1;
	setAttr ".pm[20]" -type "matrix" 0.93925410994343528 0.060876634315179992 -0.0067257550070422088 -0
		 0.060052917683466558 -0.93568289189036424 -0.082708260367288428 0 -0.012035259185480846 0.082103865010949267 -0.93758391161442056 -0
		 -78.083251420498243 132.93588457812268 14.229482785917925 1;
	setAttr ".pm[21]" -type "matrix" 0.83209636003922094 -0.43990896246912009 -0.0067257550070422053 -0
		 -0.43874093235554512 -0.82862248423175167 -0.082708260367288428 0 0.032734161312908086 0.076251995361029057 -0.93758391161442067 -0
		 -2.1181025057842797 157.33398015925508 14.229482785917902 1;
	setAttr ".pm[22]" -type "matrix" 0.62202999434015471 -0.70638724067777803 -0.0067257550070422053 -0
		 -0.70406326121498153 -0.61919605239854081 -0.0827082603672884 0 0.057646281580900433 0.059689181040565607 -0.93758391161442056 -0
		 48.977785903612194 149.69388653459043 14.229482785917854 1;
	setAttr ".pm[23]" -type "matrix" 0.48991710436888469 -0.80367000597134786 -0.0067257550070422174 -0
		 -0.8008892241259794 -0.48752977117043733 -0.082708260367288428 0 0.067135422522595814 0.048772196547935159 -0.93758391161442078 -0
		 71.791359458807605 139.34440239343994 14.229482785917861 1;
	setAttr ".pm[24]" -type "matrix" 0.6878591301714384 0.45294398652352236 0.45567647025446079 -0
		 -0.22893902256283355 -0.45095127564937942 0.79383836791236506 0 0.60032176740424792 -0.69096611747174075 -0.21938341668928352 -0
		 -19.193959616377086 35.462496595213139 -146.96767867889753 1;
	setAttr ".pm[25]" -type "matrix" 0.82568935744620353 0.17077668939078358 0.41835617695020566 -0
		 -0.36134701390474627 -0.27370516300238024 0.82490199582711587 0 0.27132066632269408 -0.88423429561296674 -0.17454022436001662 -0
		 -12.613190316399711 32.777960662435035 -148.92695268415491 1;
	setAttr ".pm[26]" -type "matrix" 0.84280034168081663 0.024802755933554632 0.41835617695020555 -0
		 -0.40338574348975881 -0.20679971629876809 0.82490199582711565 0 0.11365302214857935 -0.91791512901163386 -0.17454022436001659 -0
		 -9.7688511868704104 35.006125566670121 -148.92695268415497 1;
	setAttr ".pm[27]" -type "matrix" 0.86916723494588333 -0.0036685529384439131 -0.36122616578462136 -0
		 -0.16600609396590696 -0.83999040965338367 -0.39090609088132372 0 -0.32084229442874851 0.42467886319108566 -0.77631022709740172 -0
		 -40.050943462403254 123.77922583021427 83.06885900544863 1;
	setAttr ".pm[28]" -type "matrix" 0.84302902779759015 -0.28644481390674442 -0.30528824135261612 -0
		 -0.37137414450004769 -0.8285303757011595 -0.24812929042930182 0 -0.19321694159441699 0.34268975554869135 -0.85509088894366903 -0
		 -12.661285482271252 144.25869502809562 57.837223931286253 1;
	setAttr ".pm[29]" -type "matrix" 0.68152134506187401 -0.57295482313047508 -0.30528824135261612 -0
		 -0.64682614575593622 -0.6371791552061068 -0.24812929042930182 0 -0.055624426497429866 0.38945471913170387 -0.85509088894366925 -0
		 37.018549397844822 140.39835835240314 57.837223931286211 1;
	setAttr ".pm[30]" -type "matrix" 0.62990386996708958 -0.62926122375679849 -0.30528824135261617 -0
		 -0.6990600113585802 -0.57939316459722623 -0.24812929042930182 0 -0.022038569631862483 0.3927892011317316 -0.85509088894366925 -0
		 46.88372533310222 136.88357917437051 57.837223931286189 1;
	setAttr ".pm[31]" -type "matrix" 0.91820565388726749 0.093342074906211228 -0.18475691503500533 -0
		 0.044605948790284733 -0.90960468187268384 -0.23786364892393153 0 -0.20213403952221287 0.22328471331260441 -0.89175963706535677 -0
		 -74.194359970195748 126.55252272005333 48.82991222444673 1;
	setAttr ".pm[32]" -type "matrix" 0.84530317409509059 -0.38811637614445549 -0.14414473928955315 -0
		 -0.40835748238682246 -0.83559087573346114 -0.14485005488876587 0 -0.068236309066755318 0.19262152110051975 -0.91879825814237548 -0
		 -7.2745593028562352 153.99920060469199 31.909125819291592 1;
	setAttr ".pm[33]" -type "matrix" 0.67329488358026202 -0.64175211515925779 -0.14414473928955321 -0
		 -0.65773834950028798 -0.65753190692692165 -0.1448500548887659 0 -0.0019356582528792677 0.20434161958166971 -0.91879825814237581 -0
		 38.459154520230918 149.62201686790581 31.909125819291692 0.99999999999999989;
	setAttr ".pm[34]" -type "matrix" 0.56244355475600172 -0.74082995706178889 -0.14414473928955315 -0
		 -0.75410046124506402 -0.54433485960417649 -0.14485005488876593 0 0.030646786046947403 0.20203964653286344 -0.91879825814237592 -0
		 59.571040439858344 141.94384765241909 31.909125819291525 1;
	setAttr ".pm[35]" -type "matrix" 1.2400503931647604 0.023530107412793037 0.076621554762809352 -0
		 -0.074974190005587554 -0.079555463941387336 1.2378203848649791 0 0.028344301757740244 -1.239865625138233 -0.077970111938185052 -0
		 -21.906294079440531 12.171986331957433 -182.50999439111834 0.99999999999999989;
	setAttr ".pm[36]" -type "matrix" 1.2364098102550203 0.016482382367913301 0.12316094500217092 -0
		 -0.12188247610464165 -0.078861970074727408 1.2341292306285203 0 0.02418572556181332 -1.2400236396716875 -0.076850048351565378 -0
		 -24.220634283317086 12.257483466725548 -183.20421976949839 1;
	setAttr ".pm[37]" -type "matrix" 0.98951783679597616 0.14384242649818865 -0.012798710939938483 -0
		 -0.016658186510996112 0.025658995450550458 -0.99953195085231461 0 -0.1434466991072843 0.9892678971297818 0.027786187641387496 -0
		 3.6004390453738471 -1.8273705835756344 146.2625875270183 1;
	setAttr ".pm[38]" -type "matrix" 1.2364098102550509 0.016482382328710375 0.12316094500711416 -0
		 0.12188247611199846 0.078861970074841165 -1.2341292306277869 0 -0.024185725523193997 1.2400236396722006 0.076850048355428052 -0
		 5.70669597470153 -12.257435827742867 183.20362243513486 1;
	setAttr ".pm[39]" -type "matrix" 0.93952870349404871 0.030289898909539665 -0.048143751063210352 -0
		 -0.056142936866208984 0.36603036220441831 -0.86534341623203881 0 -0.0091252058838913932 0.86663359004838203 0.36716812858556225 -0
		 46.90904493119637 -52.689299394104324 122.51350516119837 1;
	setAttr ".pm[40]" -type "matrix" 0.93813544816214423 -0.0040001132936188658 -0.076389550508203688 -0
		 -0.069492826168904925 0.34828556639002622 -0.87167505114407884 0 0.031970477698426737 0.87443161354654364 0.34683818304465419 -0
		 57.802032080787839 -51.873166598333817 122.02050698593678 0.99999999999999989;
	setAttr ".pm[41]" -type "matrix" 0.93813545826960631 -0.0040001119301223001 -0.076389426450368184 -0
		 -0.069492711420396022 0.34828556589280535 -0.87167506049087251 0 0.031970430530590621 0.87443161375082379 0.34683818687741619 -0
		 66.876077504658568 -52.193996904770465 121.75397111238104 1;
	setAttr ".pm[42]" -type "matrix" 0.94094398570568394 0.022160967997158599 -0.0090989391318437949 -0
		 -0.022037915001510148 0.94090606574584179 0.012632860984856178 0 0.0093930558543167727 -0.012415730816402954 0.94112013237503722 -0
		 69.247205667046458 -135.92223172479302 -3.9251150165581121 0.99999999999999989;
	setAttr ".pm[43]" -type "matrix" 0.86916723493487424 -0.0036685529301769743 -0.36122616581119671 -0
		 0.16600609397108296 0.83999040965335625 0.39090609087918421 -0 0.32084229445589596 -0.42467886319121101 0.77631022708611275 -0
		 40.051053575519894 -123.77894554638726 -83.068518296278526 1;
	setAttr ".pm[44]" -type "matrix" 0.84302902778934585 -0.28644481390097037 -0.30528824138080263 -0
		 0.37137414450506645 0.82853037569945032 0.24812929042749585 -0 0.19321694162074549 -0.34268975555764897 0.85509088893412921 -0
		 12.661166690143601 -144.25847595013147 -57.837000595108314 0.99999999999999989;
	setAttr ".pm[45]" -type "matrix" 0.6815213450562887 -0.57295482312210122 -0.30528824138080257 -0
		 0.64682614575999153 0.63717915520269208 0.24812929042749582 -0 0.055624426518710336 -0.38945471914960839 0.85509088893412943 -0
		 -37.018557808144031 -140.39815254574992 -57.837033224314844 0.99999999999999989;
	setAttr ".pm[46]" -type "matrix" 0.62990386996224279 -0.629261232846275 -0.30528822262735694 -0
		 0.69906001136232854 0.5793931719883052 0.24812927316023412 -0 0.022038569651529987 -0.39278917566770005 0.85509090064015947 -0
		 -46.883714807764555 -136.88335764809091 -57.836998141908445 1;
	setAttr ".pm[47]" -type "matrix" 0.91820565388121966 0.093342074907772882 -0.18475691506427575 -0
		 -0.04460594878481839 0.90960468187323595 0.23786364892284353 0 0.2021340395508944 -0.22328471330970037 0.89175963705958228 -0
		 74.193947785085484 -126.55261307650937 -48.829795749319466 1;
	setAttr ".pm[48]" -type "matrix" 0.84530317409053046 -0.38811637614341099 -0.14414473931911531 -0
		 0.40835748239185304 0.83559087573114932 0.14485005488791997 -0 0.068236309093154576 -0.19262152111265368 0.91879825813787186 -0
		 7.2744149428179776 -153.99900152362744 -31.909016344084176 1;
	setAttr ".pm[49]" -type "matrix" 0.67329488357628853 -0.64175211515678765 -0.14414473931911523 -0
		 0.65773834950429366 0.65753190692309993 0.14485005488791988 -0 0.0019356582739024734 -0.20434161960172395 0.9187982581378713 -0
		 -38.459155989210359 -149.62178381310042 -31.908992732062821 1;
	setAttr ".pm[50]" -type "matrix" 0.56244355475247287 -0.74082995705871679 -0.14414473931911517 -0
		 0.75410046124840946 0.54433485959976513 0.14485005488791985 0 -0.030646786029387963 -0.20203964655601103 0.91879825813787119 -0
		 -59.571037911677216 -141.9436626547282 -31.908981510574392 1;
	setAttr ".pm[51]" -type "matrix" 0.93925410994341729 0.06087663431217661 -0.0067257550368207764 -0
		 -0.060052917677877439 0.93568289189072529 0.082708260367260353 0 0.012035259214820232 -0.082103865009059654 0.93758391161420929 -0
		 78.082882228836951 -132.93591301536819 -14.229403087107057 1;
	setAttr ".pm[52]" -type "matrix" 0.83209636003763332 -0.439908962471669 -0.0067257550368207721 -0
		 0.43874093236049583 0.82862248422913243 0.082708260367260353 0 -0.032734161286922227 -0.076251995374780612 0.9375839116142094 -0
		 2.1179715772785985 -157.33378770680872 -14.229404517488936 0.99999999999999989;
	setAttr ".pm[53]" -type "matrix" 0.6220299943377674 -0.70638724067959802 -0.0067257550368207634 -0
		 0.70406326121868179 0.61919605239433684 0.082708260367260381 0 -0.057646281561479627 -0.059689181062638298 0.93758391161420962 -0
		 -48.977820644626256 -149.69358471061233 -14.229367471819776 1;
	setAttr ".pm[54]" -type "matrix" 0.48991710436621738 -0.80367000597272487 -0.0067257550368207625 -0
		 0.80088922412889352 0.48752977116565399 0.082708260367260339 0 -0.067135422507302922 -0.048772196573044831 0.93758391161420929 -0
		 -71.791302955086024 -139.34415235996551 -14.229401856834938 1;
	setAttr ".pm[55]" -type "matrix" 0.93413921017831769 0.038422450591381406 0.10889047125242887 -0
		 -0.033340489887383515 0.93955675450371112 -0.045508243562208221 0 -0.11055239107813311 0.041307430186358095 0.93382083317406328 -0
		 74.328483063914163 -135.12420569481125 10.966513196243856 0.99999999999999989;
	setAttr ".pm[56]" -type "matrix" 0.87272809013865027 -0.33531780356098273 0.10889047125242887 -0
		 0.34213197013900809 0.87568498799983907 -0.045508243562208207 0 -0.085093355341874219 0.081775643307496204 0.93382083317406339 -0
		 20.035518758433565 -155.81511856411365 11.207464838637916 1;
	setAttr ".pm[57]" -type "matrix" 0.75723347729511548 -0.54835190303815562 0.10889047125242886 -0
		 0.55569712259660464 0.75833975969701894 -0.045508243562208214 0 -0.061218071130974633 0.10089837822629395 0.93382083317406328 -0
		 -16.740247553248746 -156.77905425863187 11.207432731976107 1;
	setAttr ".pm[58]" -type "matrix" 0.62039875968396963 -0.69942671359093189 0.10889047125242889 -0
		 0.70683711923658477 0.61988690103018373 -0.045508243562208228 0 -0.037896560312426761 0.11176755199153264 0.93382083317406384 -0
		 -47.786016847406579 -149.98755526650928 11.207436292658096 1;
	setAttr ".pm[59]" -type "matrix" 0.6878591301888286 0.45294398649925566 0.45567647025233216 -0
		 0.22893902256691928 0.45095127565208304 -0.7938383679096509 0 -0.60032176738276466 0.69096611748588321 0.21938341670352707 -0
		 19.193974489623589 -35.462072256321036 146.96735504345969 1;
	setAttr ".pm[60]" -type "matrix" 0.82568935745252914 0.17077668936153464 0.41835617694966293 -0
		 0.36134701390965646 0.27370516300340764 -0.82490199582462409 0 -0.27132066629690782 0.88423429561829692 0.17454022437309491 -0
		 12.613035837149917 -32.777911399433044 148.9267665119703 1;
	setAttr ".pm[61]" -type "matrix" 0.84280034168196727 0.024802755903651923 0.41835617694966282 -0
		 0.4033857434947728 0.20679971629892741 -0.82490199582462398 0 -0.11365302212225947 0.91791512901240568 0.17454022437309488 -0
		 9.7686632285220245 -35.006027321315074 148.92672068638848 1;
	setAttr ".pm[62]" -type "matrix" 1.2400503931651998 0.023530107373590899 0.076621554767739922 -0
		 0.074974190012966277 0.079555463941543031 -1.2378203848645224 0 -0.028344301719006613 1.2398656251389664 0.077970111940594028 -0
		 21.906280568505814 -12.171948865646591 182.50949799644823 1;
	setAttr ".pm[63]" -type "matrix" 1.2364098102550507 0.016482382328710372 0.12316094500711412 -0
		 0.12188247611199841 0.078861970074841165 -1.2341292306277867 0 -0.02418572552319399 1.2400236396722009 0.076850048355428024 -0
		 24.220491827362665 -12.25745623301866 183.20382400026102 1;
	setAttr ".pm[64]" -type "matrix" 0.031043634156434269 -0.1388932108216045 -0.93186036241462555 -0
		 -0.9408879898270861 0.043757230902045682 -0.037866365239089338 0 0.048834922453061411 0.9313499594700918 -0.13719026794037936 -0
		 88.198791049290591 -7.8528025061800744 -5.3978149097211494 0.99999999999999989;
	setAttr ".pm[65]" -type "matrix" 0.0086871923153172513 -0.12571188103004544 -0.93420544952973561 -0
		 -0.9194564664134196 -0.20699257722349854 0.01930403114411882 0 -0.20770918451940429 0.91102654309067932 -0.12452428969491246 -0
		 44.912480003240141 4.3077968337517172 -8.2044365117146985 1;
	setAttr ".pm[66]" -type "matrix" -0.0030034590684839945 -0.13658903133406086 -0.93271280790302113 0
		 -0.91386293355354031 0.22920633971673923 -0.030622847419258449 0 0.23122345076577408 0.90411650611321592 -0.13314588038347239 -0
		 4.7450109537975864 2.4546239280791116 -8.0367955211550104 1;
	setAttr ".pm[67]" -type "matrix" 0.13658903133406092 -0.0030034590684839663 -0.93271280790302091 -0
		 -0.22920633971673912 -0.91386293355354065 -0.030622847419258449 0 -0.90411650611321637 0.231223450765774 -0.13314588038347241 -0
		 12.782970676413077 -2.2644256535632481 -7.497849905863414 1;
	setAttr ".pm[68]" -type "matrix" 0.0070434190464265922 -0.12590389504196225 -0.93419343057789161 -0
		 -0.92816207382309146 -0.16402943686848082 0.015108766677596716 0 -0.16457314859370431 0.91970719216898811 -0.12519235483080798 -0
		 31.043561336265114 2.8702198643719234 -8.1021392184573582 1;
	setAttr ".pm[69]" -type "matrix" 0.0070434190464265922 -0.12590389504196225 -0.93419343057789161 -0
		 -0.92816207382309146 -0.16402943686848082 0.015108766677596716 0 -0.16457314859370431 0.91970719216898811 -0.12519235483080798 -0
		 16.986436548359375 3.5243902609148896 -8.2031542682593628 1;
	setAttr ".pm[70]" -type "matrix" 0.038403451464190975 -0.13814880653076422 -0.93169675777221317 -0
		 -0.94146118864897332 0.02227974499307462 -0.042109494228695608 0 0.028191691272261579 0.93222169385326992 -0.13706461369018788 -0
		 73.935241217621325 -6.1681340075920907 -5.0646766594439345 1;
	setAttr ".pm[71]" -type "matrix" 0.038403451464190975 -0.13814880653076422 -0.93169675777221317 -0
		 -0.94146118864897332 0.02227974499307462 -0.042109494228695608 0 0.028191691272261579 0.93222169385326992 -0.13706461369018788 -0
		 59.492061019050581 -6.4977402637524673 -5.1297656124032569 1;
	setAttr ".pm[72]" -type "matrix" 0.031043634156434213 -0.13889321082160466 -0.93186036241462578 -0
		 0.94088798982708632 -0.043757230902046126 0.037866365239089365 0 -0.048834922453061876 -0.93134995947009158 0.13719026794037958 0
		 -88.198705868722797 7.8440135688566812 5.3992341352628097 1;
	setAttr ".pm[73]" -type "matrix" 0.0086871923153172097 -0.12571188103004566 -0.93420544952973572 -0
		 0.9194564664134196 0.20699257722349787 -0.019304031144118793 -0 0.2077091845194034 -0.91102654309067932 0.12452428969491273 -0
		 -44.909942591153808 -4.316237249463942 8.2057005103855296 0.99999999999999989;
	setAttr ".pm[74]" -type "matrix" -0.0030034590684841571 -0.13658903133406097 -0.93271280790302069 0
		 0.91386293355353931 -0.22920633971674048 0.03062284741925856 0 -0.2312234507657755 -0.90411650611321481 0.13314588038347255 -0
		 -4.7466426727053639 -2.4632582302598176 8.0381703076231563 1;
	setAttr ".pm[75]" -type "matrix" 0.13658903133406108 -0.0030034590684841324 -0.93271280790302102 -0
		 0.22920633971674045 0.91386293355353954 0.030622847419258574 -0 0.90411650611321548 -0.23122345076577538 0.13314588038347261 -0
		 -12.774330652186473 2.2627939346554675 7.4992828664648643 1;
	setAttr ".pm[76]" -type "matrix" 0.0070434190464265696 -0.12590389504196237 -0.93419343057789117 -0
		 0.92816207382309124 0.16402943686847998 -0.015108766677596643 -0 0.16457314859370337 -0.91970719216898733 0.12519235483080821 -0
		 -31.041266167376069 -2.8787656123698446 8.0656835436470011 1;
	setAttr ".pm[77]" -type "matrix" 0.0070434190464265696 -0.12590389504196237 -0.93419343057789117 -0
		 0.92816207382309124 0.16402943686847998 -0.015108766677596643 -0 0.16457314859370337 -0.91970719216898733 0.12519235483080821 -0
		 -16.984323000634301 -3.5329436035334338 8.2044173178155688 1;
	setAttr ".pm[78]" -type "matrix" 0.038403451464190913 -0.13814880653076442 -0.93169675777221361 -0
		 0.94146118864897332 -0.022279744993075661 0.042109494228695712 0 -0.028191691272262669 -0.93222169385326981 0.13706461369018813 0
		 -73.934946686066169 6.1593496494336284 5.0660972267190294 1;
	setAttr ".pm[79]" -type "matrix" 0.038403451464190913 -0.13814880653076442 -0.93169675777221361 -0
		 0.94146118864897332 -0.022279744993075661 0.042109494228695712 0 -0.028191691272262669 -0.93222169385326981 0.13706461369018813 0
		 -59.491751320986133 6.4889585220264525 5.1311943229731858 1;
	setAttr ".pm[80]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[81]" -type "matrix" 1 -0 0 -0 -0 -0.082949189435633924 0.99655377776212928 0
		 0 -0.99655377776212928 -0.082949189435633924 -0 -0 0 -0 1;
	setAttr ".pm[82]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[83]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 84 ".ma";
	setAttr -s 84 ".dpf[0:83]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 84 ".lw";
	setAttr -s 84 ".lw";
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 84 ".ifcl";
	setAttr -s 84 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "53569DA0-4200-0509-4B06-0D93D3051D4F";
	setAttr -s 84 ".wm";
	setAttr -s 84 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654757 0 0 0.70710678118654757 1 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 -1.5073866484408736
		 1.5707963267948966 0 -3.4314998759166215e-17 -2.2808661460876465 95.896781921386719 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989 1 -8.4954340412775408e-19
		 3.7879761270053072e-18 -0.25232786692436704 0 3.6770534515381001 7.1054273576010019e-15
		 -4.6633694517662434e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 -1.5265985953673778e-19
		 3.83279573935948e-18 0.060466399756961373 0 6.7950572967529297 2.1316282072803006e-14
		 1.8559423937125907e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 1.3459375357934894e-18
		 3.7858793145413604e-18 0.19104512581130384 0 7.238227844238267 -2.1316282072803006e-14
		 1.2292061026365006e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 0.99999999999999989 1 7.8457562572308448e-06
		 -4.1750609512244074e-14 0.10239818677280667 0 8.5238933563232422 -7.1054273576010019e-15
		 2.5229931328786566e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 -7.8452173436827024e-06
		 9.3303177584585829e-08 0.011892487809488461 0 19.439800262451186 -1.7817309228007616e-07
		 8.1130192624775943e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002
		 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 -1.1070812612931908 0 11.887765884399442
		 1.0658141036401503e-14 1.599440977117916e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999978 0.99999999999999978 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 2.6414885812536553 2.6414885812536548 2.6414885812536553 -1.5360400681458248e-06
		 7.5079898430297341e-07 0.49858616634236741 0 5.1102595329284384 -7.1054273576010019e-14
		 -4.1190754660921805e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[9]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 1 1.6732006206635733e-06
		 -3.5198750386794149e-07 0.20734807648447118 0 4.9129710197448517 -4.6185277824406512e-14
		 2.0180024643511041e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.378574417128617
		 0.37857441712861706 0.378574417128617 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 0.99999999999999944 4.801132581018086
		 1.4258789214088137 4.6511151861798314 0 5.5162687301636026 1.3147660493850672
		 -1.4279042482376099 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 0.80473951427761992 0.80473951427761969
		 0.80473951427761958 -0.036107869173286726 0.11154427075576479 0.12751952557428098 0 17.809522628784183
		 2.042810365310288e-14 -5.6843418860808015e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999956 0.99999999999999978 1.0000000000000007 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1.3202014147625982 1.3202014147625976 1.3202014147625982 -0.33652432063860654
		 -0.15823006205424064 -0.00022280327133799251 0 27.771139144897511 1.0658141036401503e-14
		 -8.5265128291212022e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891684 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999956 0.99999999999999967 0.022439294079822265
		 -0.030151140935290619 0.034659238401632361 0 9.0836915969848562 -3.5527136788005009e-14
		 4.2632564145606011e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383356
		 0.75746017904383389 0.75746017904383356 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1 0.022439294486885881
		 -0.030151008698346731 0.034659239879545889 0 18.167383193969734 -2.8421709430404007e-14
		 5.6843418860808015e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383356
		 0.75746017904383389 0.75746017904383356 no;
	setAttr ".xm[15]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 0.99999999999999933 -1.1828228767081526
		 0.025716916543067441 0.032269676501439401 0 27.251073837280281 -2.8421709430404007e-14
		 7.1054273576010019e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383356
		 0.75746017904383389 0.75746017904383356 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0.057382000604555367 0.12785412347368272
		 -0.010579529318345377 0 3.4445061683654785 -0.38468080759048462 -2.3793244361877477 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978 0.99999999999999978
		 1.0000000000000007 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999967 1 2.2204460492503151e-16
		 -1.1102230246251565e-16 0.40793579989913936 0 5.8770980834960938 0.043181736022262385
		 0.24087569117546437 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1.0000000000000002 2.2204460492503131e-16
		 -2.2204460492503131e-16 0.25992435299201355 0 4.0799999237060192 2.8421709430404007e-14
		 -9.0594198809412774e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 1.0000000000000004 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999933 0.99999999999999978 3.3306690738754716e-16
		 -3.3306690738754686e-16 0.21845240790709719 0 2.5950000286102526 5.6843418860808015e-14
		 -2.6645352591003757e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989
		 1.0000000000000002 -0.074569197575235183 -0.0022820379734447729 -0.040463566458286838 0 3.3758335113525355
		 -0.75357073545457354 -0.18286436796188532 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999978 0.99999999999999978 1.0000000000000007 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1.0000000000000007 0.99999999999999989 1.0000000000000002 3.3306690738754711e-16
		 1.6653345369377336e-16 0.5510472548888049 0 6.0982089042663432 5.6843418860808015e-14
		 1.9539925233402755e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000000000007 0.99999999999999989 1.0000000000000002 1.1102230246251568e-16
		 1.6653345369377341e-16 0.36249110587625932 0 5.1690001487731996 0 4.2632564145606011e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933 1.0000000000000002
		 0.99999999999999978 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 0.99999999999999944 0.99999999999999978 1.1102230246251573e-16
		 -0 0.17453292469247386 0 2.473999977111788 2.8421709430404007e-14 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933 1.0000000000000002
		 0.99999999999999978 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1.0000000000000007 1.0000000000000004 0.99999999999999933 1.2839421076547721
		 0.69645929885484603 0.35794391277517829 0 1.9924465417861867 1.3566048145294189
		 -2.5815360546112096 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000007 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1.0000000000000002 0.061621083266618637
		 -0.033724831256182836 0.40571933881715666 0 4.3779997825622523 9.9475983006414026e-14
		 -1.1368683772161603e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933
		 0.99999999999999956 1.0000000000000007 no;
	setAttr ".xm[26]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989
		 1.0000000000000002 0 2.775557561562892e-17 0.17453292469247395 0 3.0859999656677193
		 6.3948846218409017e-14 1.1368683772161603e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999956 0.99999999999999956 0.99999999999999978 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 0.99999999999999989 -0.48466133745210632
		 -0.34082271392325086 0.20683246463072907 0 3.3143784999847448 -0.30591726303100586
		 2.3911108970642072 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000007 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1.0000000000000007 0.99999999999999944 1 0.18311366302368784
		 0.010559986230106521 0.25889657159602569 0 4.9575676918029856 -0.14312039315701952
		 -0.19884027540683746 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[29]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999944
		 0.99999999999999989 -1.5407439555097887e-33 -2.7755575615628938e-17 0.37152822127820795 0 3.815999984741218
		 1.9895196601282805e-13 4.9737991503207013e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999933 1.0000000000000007 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1.0000000000000004 1 1 0 -5.5511151231257802e-17
		 0.085817840141256346 0 2.0399999618530273 -2.8421709430404007e-14 1.4210854715202004e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002 1.0000000000000007
		 1.0000000000000002 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 0.99999999999999989 -0.23212590879105952
		 -0.20611149294555781 -0.02783038077112893 0 3.374303817749027 -0.54251688718795776
		 1.0917565822601265 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000007 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999956 1.0000000000000004 0.11162854400339824
		 -0.0020409533590839747 0.51337956704180732 0 5.6455168724060201 -0.041624534875126074
		 -0.020689174532883214 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 0.99999999999999978 0.99999999999999978 -2.2204460492503136e-16
		 3.0531133177191795e-16 0.3309842313541051 0 4.9770002365112163 -1.1368683772161603e-13
		 -9.5923269327613525e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 1.0000000000000004 0.99999999999999956 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999989 1.0000000000000002 -1.1102230246251568e-16
		 4.4408920985006242e-16 0.16001178142504657 0 2.2650001049042032 5.6843418860808015e-14
		 1.7053025658242404e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002
		 1.0000000000000002 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999978 1.0000000000000002 4.6824455033833496e-12
		 -0.037582720016429066 -0.0057004004254963374 0 9.2570457458496378 1.1546319456101628e-14
		 -9.9475983006414026e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891684 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999989 1.0000000000000002 -4.8572257327350605e-17
		 1.888680184469748e-16 1.3877787807814451e-17 0 18.514091491699276 1.0658141036401503e-14
		 -1.4210854715202004e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891684 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 0.99999999999999967 4.8011325810181216
		 1.4258789214088148 1.5095225325900858 0 5.5162200927734375 1.314811229705807
		 1.4278726577758791 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1 no;
	setAttr ".xm[38]" -type "matrix" "xform" 0.80473951427761992 0.80473951427761969
		 0.80473951427761936 -0.036107869173286893 0.1115442707557638 0.1275195255742812 0 -17.809625625610362
		 2.8716144733209603e-06 0.00043809693278262785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999956 0.99999999999999956 1.0000000000000004 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1.3202014147625976 1.3202014147625976 1.3202014147625982 -0.33652432063860654
		 -0.15823006205424064 -0.00022280327133799251 0 -27.770694732666016 -3.907985046680551e-14
		 5.6843418860808015e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891688 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1 0.99999999999999989 1.0000000000000002 0.022439294079822397
		 -0.030151140935290439 0.034659238401632479 0 -9.0836620330810476 -1.4210854715202004e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383389 0.75746017904383389
		 0.75746017904383356 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0.022439294486886068
		 -0.030151008698346575 0.034659239879545771 0 -18.167304992675795 -7.1054273576010019e-15
		 1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383389
		 0.75746017904383389 0.75746017904383356 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1.0000000000000007 0.99999999999999956 -1.1828228767081526
		 0.025716916543067844 0.032269676501439234 0 -27.251010894775405 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.75746017904383389 0.75746017904383389
		 0.75746017904383356 no;
	setAttr ".xm[43]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 1 -0.48466133745210693
		 -0.34082271392325131 0.20683246463072902 0 -3.3146772384643697 0.30593535304069519
		 -2.3912868499755882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999933
		 1.0000000000000004 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1 0.18311366302368812
		 0.010559986230106528 0.25889657159602553 0 -4.9573006629943706 0.14326146245002747
		 0.19892024993896484 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 0.99999999999999978 1 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 -1.6653345369377343e-16 -1.3877787807814454e-16
		 0.37152822127820734 0 -3.8160362243652131 3.0366025413286479e-05 3.2629206550893741e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978 1.0000000000000002
		 1 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 0.99999999999999978 2.9802322054628412e-08
		 2.775557540883376e-17 0.085817840141256416 0 -2.0399997234344625 -1.752387652231846e-05
		 -3.1002964547610645e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[47]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 0.99999999999999978 -0.23212590879105979
		 -0.20611149294555772 -0.027830380771128971 0 -3.3742079734802175 0.54299175739289751
		 -1.0917816162109411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999933
		 1.0000000000000004 no;
	setAttr ".xm[48]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999989 0.11162854400339814
		 -0.0020409533590844669 0.51337956704180676 0 -5.6457118988036825 0.041443493217229843
		 0.020674973726272583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 1.0000000000000004 -1.1102230246251563e-16
		 5.5511151231257802e-17 0.3309842313541051 0 -4.97706747055057 -2.0846833649557084e-05
		 -2.3612021333718758e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1.0000000000000002 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000002 -2.2204460492503126e-16
		 1.3877787807814457e-16 0.16001178142504635 0 -2.2649745941161967 5.0017570174532011e-05
		 -1.1221488417589853e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 0.99999999999999978 0.99999999999999956 no;
	setAttr ".xm[51]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1 -0.074569197575235349 -0.0022820379734448831 -0.040463566458286991 0 -3.3758001327514542
		 0.75400394201280108 0.18280552327632549 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999999999999933 1.0000000000000004 no;
	setAttr ".xm[52]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 0.99999999999999989 -5.5511151231257827e-17
		 -1.6653345369377353e-16 0.55104725488880479 0 -6.0983657836914062 -0.00012385072480469717
		 1.4303818769434429e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[53]" -type "matrix" "xform" 1 0.99999999999999967 0.99999999999999989 -2.2204460492503141e-16
		 -1.9428902930940242e-16 0.36249110587625877 0 -5.1689915657043422 -7.7438591716827432e-05
		 -3.7045669165181039e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1.0000000000000004 1.0000000000000004 -1.6653345369377341e-16
		 -2.4980018054066027e-16 0.17453292469247397 0 -2.4740469455718852 4.5777305842875649e-05
		 3.4385015169391409e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000004
		 1.0000000000000002 no;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0.057382000604555193 0.12785412347368244
		 -0.010579529318345453 0 -3.4445140361785747 0.38516682386398315 2.3793087005615163 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999933 1.0000000000000004 no;
	setAttr ".xm[56]" -type "matrix" "xform" 1.0000000000000004 1 1 -5.5511151231257852e-17
		 -1.6653345369377346e-16 0.40793579989913936 0 -5.8772053718567037 -0.043412361294002721
		 -0.2409516423940623 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 0.99999999999999911 0.99999999999999956
		 1 -3.3306690738754711e-16 -8.3266726846886814e-17 0.25992435299201339 0 -4.0799326896667516
		 5.0402059059706517e-06 3.2106661807418391e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999956 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 0.99999999999999978 -2.7755575615628914e-16
		 5.5511151231257809e-17 0.218452407907097 0 -2.5950763225555331 3.9602186035381237e-05
		 -3.5606819857036953e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000009
		 1.0000000000000004 1 no;
	setAttr ".xm[59]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000004 0.99999999999999933 1.2839421076547721
		 0.69645929885484548 0.35794391277517795 0 -1.9928325414657522 -1.3566571474075175
		 2.581325531005854 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999933
		 1.0000000000000004 no;
	setAttr ".xm[60]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000004 1 0.06162108326661838
		 -0.033724831256182503 0.40571933881715622 0 -4.3778247833251918 0.00042712956203416752
		 -0.00013574546028394252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999956 1.0000000000000007 no;
	setAttr ".xm[61]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989
		 1.0000000000000002 0 -1.6653345369377358e-16 0.17453292469247367 0 -3.0859522819519043
		 -1.485116083443927e-05 4.5825581764802337e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999978 0.99999999999999956 1 no;
	setAttr ".xm[62]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1.0000000000000002 4.6825010808855376e-12
		 -0.037582720016428761 -0.0057004004254963235 0 -9.2568979263305522 1.0202637897194222e-05
		 -0.00010078256310919187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891688 no;
	setAttr ".xm[63]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 2.0816681711721685e-17
		 1.840975288880386e-16 -6.9388939039072268e-18 0 -18.513795852661133 2.0405275791723909e-05
		 -0.00020156512620417288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.2426381235891679
		 1.2426381235891681 1.2426381235891688 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1.0608213694388235 1.0608213694388233 1.0608213694388235 0.14796011813077928
		 0.032937705819941071 3.1300394567947372 0 -2.3657262325286723 -0.11948779225349782
		 9.9690914154052734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 0.99999999999999967 0.99999999999999989
		 1 0 -0.062177955297201964 -0.26804078615725163 0 43.341262817382777 -2.6645352591003757e-14
		 1.2434497875801753e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.94266577654728223
		 0.94266577654728245 0.94266577654728223 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999978 0.021907471685789038
		 0.049116533440385302 0.467768505712368 0 42.217948913574233 8.8817841970012523e-16
		 8.8817841970012523e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000002 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1.0000000000000002 9.1766871879173095e-16 -8.8817841970012523e-16 -1.5707963267948968 0 7.0094366073608372
		 15.237594604492186 -0.53894561529159635 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1 0.99999999999999967 0.99999999999999989 -8.1261009348724736e-05
		 0.0045057895521491568 0.046501405584295399 0 14.072649955749519 6.2172489379008766e-15
		 0.037728950381280768 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000002 1 no;
	setAttr ".xm[69]" -type "matrix" "xform" 1 0.99999999999999967 0.99999999999999989 -8.1261009348724736e-05
		 0.0045057895521491568 0.046501405584295399 0 28.145299911499034 7.5495165674510645e-15
		 0.075457900762563312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000002 1 no;
	setAttr ".xm[70]" -type "matrix" "xform" 0.99999999999999956 1 0.99999999999999989 -3.604153589139624e-12
		 0.0045065222090264426 -0.022816700021501331 0 14.447087287902804 -2.6645352591003757e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.94266577654728223 0.94266577654728245
		 0.94266577654728223 no;
	setAttr ".xm[71]" -type "matrix" "xform" 0.99999999999999956 1 0.99999999999999989 -3.604153589139624e-12
		 0.0045065222090264426 -0.022816700021501331 0 28.894174575805629 -1.1546319456101628e-14
		 -3.0198066269804258e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.94266577654728223
		 0.94266577654728245 0.94266577654728223 no;
	setAttr ".xm[72]" -type "matrix" "xform" 1.0608213694388235 1.0608213694388235 1.0608213694388235 0.14796011813077944
		 0.032937705819941009 -0.011553196795055608 0 -2.3657112121582031 -0.11004376411438344
		 -9.969202995300293 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[73]" -type "matrix" "xform" 0.99999999999999967 0.99999999999999967
		 0.99999999999999989 1.7380821918252517e-18 -0.062177955297201951 -0.26804078615725135 0 -43.341308593749986
		 7.1054273576010019e-15 4.4408920985006262e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.94266577654728223 0.94266577654728223 0.94266577654728223 no;
	setAttr ".xm[74]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000011 1.0000000000000004 0.02190747168578908
		 0.049116533440385385 0.46776850571236889 0 -42.217914581298842 -2.6645352591003757e-15
		 8.8817841970012523e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[75]" -type "matrix" "xform" 0.99999999999999933 0.99999999999999989
		 0.99999999999999989 -1.5959455978986625e-16 1.665334536937736e-16 -1.5707963267948968 0 -7.0094366073608327
		 -15.23758888244628 0.53888744115829645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 0.99999999999999889 0.99999999999999956 no;
	setAttr ".xm[76]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1.0000000000000004 -8.126100934869694e-05
		 0.0045057895521492053 0.046501405584295455 0 -14.072638511657715 1.1102230246251565e-15
		 2.1316282072803006e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[77]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1.0000000000000004 -8.126100934869694e-05
		 0.0045057895521492053 0.046501405584295455 0 -28.145277023315437 5.0670109875694536e-06
		 -0.075448110699653625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[78]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999978 -3.6040425792624552e-12
		 0.0045065222090265337 -0.022816700021500678 0 -14.447102546691895 1.7763568394002505e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.94266577654728223
		 0.94266577654728223 0.94266577654728223 no;
	setAttr ".xm[79]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999978 -3.6040425792624552e-12
		 0.0045065222090265337 -0.022816700021500678 0 -28.894205093383796 -2.2688980125806779e-06
		 -8.0748641266836785e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.94266577654728223
		 0.94266577654728223 0.94266577654728223 no;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 -0.083044608095909495 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 84 ".m";
	setAttr -s 84 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	rename -uid "CAE671F7-491F-D85B-05C4-F5AE13B498C0";
	setAttr ".skm" 1;
	setAttr -s 517 ".wl";
	setAttr ".wl[0:166].w"
		3 2 0.25561220746426405 3 0.425758033510304 4 0.318629759025432
		3 2 0.26127295554072283 3 0.42476049214404799 4 0.31396655231522941
		3 2 0.23602566538656561 3 0.42329776693252857 4 0.34067656768090587
		3 2 0.28259456259175036 3 0.42863812229816195 4 0.28876731511008757
		3 2 0.27897830024861436 3 0.43242647312963201 4 0.28859522662175369
		3 2 0.30260824097167088 3 0.43678577070648744 4 0.26060598832184156
		3 2 0.29704053805041286 3 0.44033510837826007 4 0.26262435357132713
		3 2 0.31550163855037033 3 0.44344852612219743 4 0.24104983532743227
		3 0 0.98820785689652035 64 0.0083680990652431741 70 0.003424044038236354
		3 0 0.98856847851658136 64 0.0081250729951615943 70 0.0033064484882570373
		3 0 0.98690657814537397 64 0.0092752646086205447 70 0.0038181572460052843
		3 0 0.99088827184105532 64 0.0065175368771869802 70 0.0025941912817576481
		3 0 0.99188834294629857 64 0.0058339316087353396 70 0.0022777254449660913
		3 0 0.99316108153587879 64 0.0049568996197476714 70 0.0018820188443736468
		3 0 0.20161622123832842 1 0.14303154569368257 72 0.65535223306798895
		3 0 0.21574971107733726 72 0.61952175395556452 78 0.16472853496709819
		3 0 0.12543531143866185 72 0.66860788911364666 78 0.20595679944769157
		3 0 0.5147582895283912 72 0.41161532074401069 78 0.073626389727598107
		3 0 0.41599677563197646 72 0.47041403641808538 78 0.11358918794993812
		3 0 0.18234381506274913 72 0.66037050764121263 78 0.15728567729603823
		3 72 0.67056358111457715 78 0.15906203534897037 79 0.1703743835364524
		3 72 0.65685388611394402 78 0.12225640217884136 79 0.22088971170721466
		3 72 0.64482016371250783 78 0.10532758919361462 79 0.24985224709387754
		3 0 0.70022172393862658 72 0.25055472150030583 78 0.049223554561067619
		3 0 0.76614691194692042 1 0.039504743989691705 72 0.19434834406338786
		3 0 0.89041000089750577 1 0.026468187147664912 72 0.083121811954829344
		3 0 0.71716622133106223 1 0.10505938455357201 72 0.17777439411536575
		3 0 0.36569648529475812 1 0.2071397415432418 72 0.4271637731620001
		3 0 0.11587750731896337 1 0.30021014547293412 72 0.58391234720810248
		3 0 0.081933573295349602 1 0.19719836955108433 72 0.72086805715356606
		3 0 0.21805915209065874 1 0.37205352400693081 72 0.40988732390241045
		3 0 0.50718661379307228 1 0.27786787111463618 72 0.21494551509229148
		3 0 0.74638953962683319 1 0.18863258825519308 72 0.064977872117973706
		3 0 0.90291487150995609 1 0.059603880187271932 72 0.037481248302771851
		3 0 0.97295949440614471 1 0.010983374943432786 72 0.016057130650422552
		3 0 0.93651534888182542 1 0.028166872413422826 64 0.035317778704751696
		3 0 0.72508866525786608 1 0.10372586953447516 64 0.17118546520765865
		3 0 0.53534926799050475 1 0.26336872694642416 64 0.20128200506307123
		3 0 0.45372913116099928 1 0.33545460262977667 2 0.21081626620922395
		3 0 0.27782725274181558 1 0.44966384490216138 2 0.2725089023560231
		3 1 0.48544487571315598 2 0.11908667848395652 72 0.39546844580288748
		3 0 0.061639194588085651 1 0.43606225332505316 72 0.50229855208686136
		3 0 0.030675393233483034 1 0.41995534929211009 72 0.5493692574744069
		3 0 0.016299804483083977 1 0.47796049592257095 72 0.50573969959434495
		3 1 0.49265089747636409 2 0.040887413643335299 72 0.46646168888030054
		3 1 0.49214031635585126 2 0.10243379303947003 72 0.4054258906046786
		3 1 0.45601137926127272 2 0.268231433666686 72 0.2757571870720415
		3 1 0.31118796366161311 2 0.42167192490081573 3 0.26714011143757105
		3 1 0.3501110848868132 2 0.42484526870016415 3 0.22504364641302263
		3 0 0.3215995611065201 1 0.40953608547687126 2 0.26886435341660875
		3 0 0.25455844189146398 1 0.35728452246597808 64 0.38815703564255793
		3 0 0.39204159709375291 1 0.20327585149328389 64 0.40468255141296317
		3 0 0.51457842990412772 64 0.38586565301962328 70 0.099555917076248973
		3 0 0.62795157743508656 64 0.26945438156929674 70 0.10259404099561659
		3 0 0.21990622787373845 64 0.63525773328342605 70 0.1448360388428353
		3 0 0.12085662679158173 1 0.31354785898985205 64 0.56559551421856624
		3 0 0.091795022406371066 1 0.42777112704818848 64 0.48043385054544047
		3 1 0.45273334899610351 2 0.18692448995804883 64 0.3603421610458476
		3 1 0.39927658146451217 2 0.38644787795094176 3 0.21427554058454598
		3 1 0.27959508284207513 2 0.44132024846869305 3 0.27908466868923176
		3 1 0.23651581011825576 2 0.45899917637996457 3 0.30448501350177981
		3 1 0.21632836714549697 2 0.45354880136884618 3 0.33012283148565691
		3 1 0.25792723894228381 2 0.42472731033120092 3 0.31734545072651521
		3 1 0.35947183748422373 2 0.37784881536960757 3 0.2626793471461687
		3 1 0.45304802410326628 2 0.21525104543561233 72 0.3317009304611212
		3 1 0.36609545398680643 2 0.35329682068172197 3 0.28060772533147171
		3 1 0.43645483399187718 2 0.2347133300275149 72 0.32883183598060789
		3 1 0.47901708190849879 2 0.1374650098600404 72 0.38351790823146087
		3 1 0.49775878516156169 2 0.080453326620989044 72 0.42178788821744917
		3 1 0.50277744020755077 2 0.085450771895758712 72 0.4117717878966905
		3 1 0.50080878229497916 2 0.030286642097265299 72 0.46890457560775545
		3 1 0.50755722451950436 2 0.033539894963404406 72 0.45890288051709133
		3 1 0.49553995893365765 2 0.0091520264049759839 72 0.49530801466136626
		3 1 0.38296594143249213 2 0.36781502999539512 3 0.24921902857211278
		3 1 0.43536555407470917 2 0.21475293227221831 64 0.34988151365307246
		3 1 0.46305851915683011 2 0.092365433578103465 64 0.44457604726506633
		3 0 0.034388755011848217 1 0.44240797413393118 64 0.52320327085422058
		3 1 0.46197416132076835 2 0.084462362354088633 64 0.45356347632514299
		3 1 0.44762104201133457 2 0.16266498867291593 64 0.38971396931574942
		3 1 0.42077913614702639 2 0.23975409112968013 64 0.33946677272329356
		3 1 0.43397775906604513 2 0.20068125236051435 64 0.36534098857344061
		3 1 0.46686244523285236 2 0.10698174627168273 64 0.42615580849546503
		3 1 0.45979769921568248 2 0.031321107018682348 64 0.50888119376563523
		3 0 0.030095560841881835 1 0.4124603239931211 64 0.55744411516499703
		3 1 0.17396845796827407 64 0.70195116354607801 70 0.12408037848564807
		3 1 0.056222289904699282 64 0.70657070140191247 70 0.23720700869338812
		3 0 0.13529445123102768 64 0.63203275855634489 70 0.23267279021262743
		3 0 0.40716697821793268 64 0.43141164737432958 70 0.16142137440773782
		3 0 0.53772361402040225 64 0.3079110871893917 70 0.15436529879020611
		3 64 0.67667427698318416 70 0.27610768392139229 71 0.047218039095423485
		3 64 0.67991007403703119 70 0.27547987076084546 71 0.044610055202123272
		3 1 0.041358191747355354 72 0.75300074985896615 78 0.20564105839367849
		3 1 0.066362798449281585 72 0.76089120835920865 78 0.17274599319150974
		3 1 0.052719005066675255 72 0.77658977422287412 78 0.17069122071045065
		3 72 0.72225261121682538 78 0.20981871684590905 79 0.067928671937265483
		3 1 0.1461345667092061 72 0.7298639838724601 78 0.12400144941833377
		3 0 0.069858926062199317 72 0.73147644722392391 78 0.19866462671387683
		3 72 0.68808673378507079 78 0.20238894842062391 79 0.10952431779430527
		3 72 0.66624308663724707 78 0.21412601722336005 79 0.11963089613939279
		3 72 0.67211599887167373 78 0.24123045376072458 79 0.086653547367601585
		3 0 0.24924293887498705 72 0.61101088668518111 78 0.13974617443983176
		3 0 0.2954113678391761 1 0.1756972121757569 72 0.52889141998506717
		3 0 0.54392703597437031 1 0.084156539935282909 72 0.37191642409034664
		3 0 0.079908711850319433 1 0.30304089348624824 72 0.61705039466343226
		3 1 0.25081966574745568 72 0.71509947725827594 78 0.034080856994268313
		3 0 0.27985415715818013 1 0.27391622206796024 72 0.44622962077385969
		3 0 0.60515111580307424 1 0.14296879420315886 72 0.25188008999376682
		3 0 0.75181392652695989 1 0.053978626156776864 72 0.1942074473162631
		3 0 0.8405088386279862 1 0.050432331950030856 72 0.10905882942198278
		3 0 0.84595894334771082 1 0.077296630089621135 72 0.076744426562668097
		3 0 0.65772111600277428 1 0.21860659266887589 72 0.12367229132834995
		3 0 0.35724398832201543 1 0.34696683810710544 72 0.29578917357087919
		3 0 0.11599643247946712 1 0.39830877345811705 72 0.48569479406241578
		3 0 0.034736723038335582 1 0.40328794928131728 72 0.56197532768034708
		3 0 0.019198549756625525 1 0.40454391778343318 72 0.57625753245994127
		3 0 0.01626973440715852 1 0.28230755674510688 72 0.70142270884773461
		3 1 0.26899168742849577 72 0.72107654960076595 78 0.0099317629707384274
		3 0 0.62890355886700533 1 0.1355038575855321 64 0.23559258354746251
		3 0 0.85548215409201511 1 0.050932917044636788 64 0.093584928863348085
		3 0 0.74230954819751238 64 0.20389720870809727 71 0.053793243094390375
		3 0 0.56825531502322912 64 0.35159084829352955 70 0.080153836683241372
		3 0 0.53426150727048727 64 0.34140802756856159 71 0.12433046516095121
		3 0 0.66028168669485199 64 0.23357373610807053 71 0.10614457719707761
		3 0 0.35100591907612649 64 0.52247899467442804 71 0.12651508624944555
		3 0 0.30509239478160383 1 0.1538576929435152 64 0.54104991227488086
		3 0 0.30734453497779146 1 0.25611657779861252 64 0.43653888722359596
		3 0 0.3860952957498624 1 0.33897004733905395 64 0.27493465691108354
		3 0 0.48556448253411644 1 0.37044081160142545 72 0.14399470586445812
		3 0 0.35996727230937392 1 0.46404869168562302 72 0.17598403600500293
		3 0 0.25008198469185999 1 0.44578915874212749 72 0.30412885656601246
		3 0 0.13879270826640325 1 0.45589505116476015 72 0.40531224056883647
		3 0 0.068781995771305504 1 0.46945022318268126 72 0.46176778104601324
		3 0 0.090318580602280513 1 0.49217328138077476 72 0.41750813801694464
		3 0 0.19811298344689074 1 0.48648146116444108 72 0.31540555538866816
		3 0 0.27616786968572815 1 0.49757579030650773 2 0.22625634000776415
		3 0 0.28206797765871106 1 0.45086082208521788 64 0.26707120025607095
		3 0 0.16768038754640999 1 0.43948625346578291 64 0.39283335898780702
		3 0 0.13755334288411999 1 0.37247805103554615 64 0.48996860608033388
		3 0 0.097625156970960872 1 0.28159297375134423 64 0.62078186927769508
		3 1 0.1675418701678264 64 0.71044523156074935 70 0.12201289827142422
		3 64 0.67791697673419327 70 0.15249543134612908 71 0.16958759191967748
		3 0 0.24882144920785751 64 0.5318968143345858 71 0.21928173645755664
		3 64 0.59958609029801369 70 0.11866366723633663 71 0.28175024246564984
		3 64 0.62604949689932976 70 0.13893607242807482 71 0.23501443067259542
		3 64 0.70346331856843747 70 0.16210322715335482 71 0.13443345427820769
		3 1 0.20791527083600339 64 0.69048888879890147 70 0.10159584036509514
		3 1 0.30845524690421672 64 0.6534187019101021 70 0.038126051185681277
		3 0 0.042119180822118962 1 0.3568972204128566 64 0.60098359876502438
		3 0 0.092638505132758286 1 0.44804368445125303 64 0.45931781041598879
		3 1 0.45922934249121095 2 0.17886931688907939 64 0.36190134061970974
		3 0 0.20933486081856212 1 0.47811614498271937 64 0.31254899419871862
		3 1 0.46337613122456878 2 0.25542463400795695 64 0.28119923476747427
		3 1 0.45998927984743815 2 0.25637929160440454 64 0.28363142854815726
		3 1 0.45431275049381981 2 0.20105985342172122 64 0.34462739608445886
		3 1 0.45853118986258179 2 0.17837131110791543 64 0.36309749902950272
		3 1 0.27773502156574092 64 0.67274043925025639 70 0.049524539184002583
		3 1 0.085068479763312319 64 0.71463885266924587 70 0.20029266756744199
		3 64 0.66192794804072042 70 0.11961352411277226 71 0.21845852784650716
		3 64 0.66223059870952505 70 0.12003217803543546 71 0.2177372232550395
		3 1 0.27654422404102175 72 0.70997816680941472 78 0.013477609149563497
		3 1 0.27997163824475119 72 0.70553324485136082 78 0.014495116903888014
		3 1 0.28209247525012821 72 0.70650084296792826 78 0.011406681781943514
		3 1 0.27058105027135432 72 0.71177482584915153 78 0.017644123879494128
		3 1 0.27403516843506176 72 0.70722543100055546 78 0.018739400564382867
		3 1 0.2665097859506424 72 0.71238317930161998 78 0.02110703474773757
		3 1 0.048844219963730506 72 0.78025931757829292 78 0.17089646245797654
		2 1 0.057320808787614239 72 0.77935367125188426;
	setAttr ".wl[166:333].w"
		1 78 0.16332551996050143
		3 1 0.050545134944040469 72 0.79332819038550684 78 0.15612667467045269
		3 1 0.052141243643173567 72 0.76460462646621841 78 0.18325412989060794
		3 1 0.061978812894970051 72 0.76767584399622268 78 0.17034534310880725
		3 1 0.068824531955017379 72 0.77795463639420293 78 0.15322083165077963
		3 3 0.2505572776224938 4 0.45449966378233503 5 0.294943058595171
		3 3 0.1629492163825749 4 0.42544050635748087 5 0.4116102772599442
		3 3 0.17491352176429126 4 0.44012084491680586 5 0.38496563331890288
		3 3 0.18098106667472913 4 0.43826228743223483 5 0.38075664589303598
		3 4 0.30724769717135042 5 0.49614907832742261 37 0.19660322450122697
		3 3 0.27239122759691753 4 0.47847655684870738 5 0.24913221555437517
		3 3 0.32538585097013489 4 0.46658580976299163 5 0.2080283392668735
		3 3 0.33839061394247111 4 0.46108139801816717 5 0.20052798803936173
		3 3 0.21457560514319432 4 0.5156885686117203 5 0.26973582624508546
		3 3 0.13971017691856097 4 0.45381439928055795 5 0.40647542380088114
		3 4 0.27408402567094253 5 0.556135762664549 37 0.16978021166450852
		3 5 0.40485585551935199 6 0.12572381194382809 37 0.46942033253681997
		3 4 0.13313266160423012 5 0.38925947202891242 37 0.47760786636685737
		3 5 0.19854589004532705 37 0.65113852143557727 38 0.15031558851909552
		3 5 0.17723868611922464 6 0.1295593578962102 37 0.69320195598456513
		3 5 0.36242819536007581 6 0.20810922611740434 37 0.42946257852251984
		3 5 0.51923911184177785 6 0.24702720179466831 37 0.2337336863635541
		3 4 0.2798979069816197 5 0.61235615678370359 6 0.10774593623467675
		3 3 0.11204027543821264 4 0.46938450606218546 5 0.41857521849960189
		3 3 0.18032844971407555 4 0.57794476245681115 5 0.2417267878291133
		3 3 0.16668969300725767 4 0.6016399436283697 5 0.23167036336437258
		3 3 0.21468790130000492 4 0.65422684616666993 5 0.13108525253332512
		3 4 0.27268827824802322 5 0.63559771587421787 6 0.091714005877758922
		3 5 0.63268410145554899 6 0.226960170936397 37 0.1403557276080539
		3 5 0.36634867582779956 6 0.32893442773077408 37 0.30471689644142619
		3 5 0.24676035229139859 6 0.31385508847529842 37 0.43938455923330294
		3 5 0.13703152734382626 6 0.21978683659698525 37 0.64318163605918854
		3 6 0.10630462280867679 37 0.79544565157704605 38 0.098249725614277139
		3 5 0.054600362423654181 37 0.74639058684122384 38 0.19900905073512204
		3 6 0.034098861112039525 37 0.76473724615377769 38 0.20116389273418281
		3 6 0.010010162626815639 37 0.62079861238897616 38 0.36919122498420809
		3 6 0.11807901393947592 37 0.81841501598461519 38 0.063505970075909038
		3 6 0.21893738968620954 7 0.03797416303186734 37 0.74308844728192303
		3 5 0.073319299713126049 6 0.33864317554613171 37 0.58803752474074211
		3 5 0.13754664675335199 6 0.39562806480902585 37 0.46682528843762222
		3 6 0.42121526762266209 7 0.088041396024749308 37 0.49074333635258854
		3 6 0.34119521246210588 7 0.09331747216651412 37 0.56548731537138008
		3 6 0.23592759901481994 7 0.080596362441362437 37 0.68347603854381767
		3 6 0.33887260060698993 7 0.1477473339999735 37 0.51338006539303671
		3 6 0.42321366790396669 7 0.15960611780832026 37 0.41718021428771318
		3 6 0.43309149945643399 7 0.2127217892466976 37 0.35418671129686846
		3 6 0.21835070261878423 7 0.09922036971901764 37 0.68242892766219798
		3 6 0.29685630852182582 7 0.14520306190169463 37 0.5579406295764795
		3 6 0.13638844881940565 7 0.063398753296087115 37 0.80021279788450717
		3 6 0.040353491956705338 37 0.82761569098708287 38 0.13203081705621175
		3 6 0.008624378206656293 37 0.68531129240180877 38 0.30606432939153499
		3 37 0.48936102769027812 38 0.4987442375355724 62 0.011894734774149434
		3 37 0.48185347133175094 38 0.50576190715993874 62 0.012384621508310328
		3 1 0.48100566943330886 2 0.14278295993150622 72 0.37621137063518489
		3 1 0.476663310634382 2 0.13190075722635183 72 0.39143593213926603
		3 1 0.45937416656189745 2 0.17413382267092606 72 0.36649201076717658
		3 1 0.49385623360853237 2 0.088873737531704855 72 0.41727002885976283
		3 1 0.45672066609435807 2 0.17780684755625814 72 0.36547248634938367
		3 1 0.44756718268765761 2 0.19711836766879817 72 0.35531444964354431
		3 3 0.44302754565215052 4 0.43662891848160884 5 0.12034353586624053
		3 3 0.37944543547158749 4 0.43399464892360679 5 0.18655991560480589
		3 3 0.45367801871737845 4 0.43642588601070659 5 0.10989609527191496
		3 3 0.35412762400497588 4 0.43267166524787454 5 0.21320071074714947
		3 3 0.43502157285344256 4 0.43679497384661964 5 0.12818345329993774
		3 3 0.21330106821047884 4 0.40308669634194833 5 0.38361223544757278
		3 3 0.34517483137011096 4 0.43294042564231655 5 0.22188474298757249
		3 3 0.20369869987896772 4 0.40328273105250467 5 0.39301856906852756
		3 3 0.085590105618437551 4 0.33301854876957898 5 0.58139134561198347
		3 3 0.09742741531652617 4 0.35107217604466151 5 0.55150040863881222
		3 4 0.25416168111575693 5 0.61112136450845422 6 0.13471695437578893
		3 4 0.20400952957176061 5 0.62230213539732404 6 0.1736883350309153
		3 5 0.60125030311874395 6 0.25557638508945785 37 0.14317331179179824
		3 4 0.20647194868718335 5 0.57399192033377666 37 0.21953613097903987
		3 3 0.11024699387465006 4 0.35390519640036894 5 0.53584780972498092
		3 3 0.21883337128906566 4 0.41076028220089683 5 0.37040634651003734
		3 3 0.33626815826505635 4 0.43297323553212597 5 0.2307586062028178
		3 3 0.422805902766897 4 0.43834795265248094 5 0.13884614458062211
		3 3 0.40559877192741944 4 0.44221768861591859 5 0.15218353945666191
		3 3 0.33563085180507435 4 0.43701072852746947 5 0.22735841966745626
		3 3 0.21047758723610957 4 0.40087149431504276 5 0.38865091844884775
		3 4 0.27441312583519462 5 0.53089635376953548 37 0.19469052039527007
		3 5 0.31181188502537832 37 0.42946704349301484 38 0.25872107148160678
		3 5 0.36304231519128133 37 0.42746040765815219 38 0.20949727715056649
		3 5 0.48275241762037924 6 0.24363239593790786 37 0.27361518644171295
		3 5 0.43101050250021394 6 0.32031695046231745 37 0.24867254703746858
		3 5 0.32958264843935586 6 0.29220252706919814 37 0.378214824491446
		3 5 0.25865528493748996 6 0.19822505032011009 37 0.54311966474240003
		3 5 0.14217450683101104 37 0.57065051767537955 38 0.28717497549360943
		3 5 0.083902170857328012 37 0.56572579750023033 38 0.35037203164244157
		3 6 0.031789813432200401 37 0.63931149344872773 38 0.32889869311907172
		3 6 0.097739454244172366 37 0.68143660213957979 38 0.2208239436162478
		3 5 0.15308364734834551 6 0.2391196574882439 37 0.60779669516341051
		3 5 0.26674942873007096 6 0.34002351576851875 37 0.39322705550141018
		3 6 0.30367324635372422 7 0.24896631030693056 37 0.44736044333934516
		3 6 0.22425384893454262 7 0.18434039775268374 37 0.59140575331277367
		3 6 0.13059861434502312 37 0.74656613909105396 38 0.12283524656392286
		3 6 0.043227328033124186 37 0.73112668784737112 38 0.22564598411950462
		3 37 0.61458470990502057 38 0.37566892535119867 62 0.009746364743780744
		3 5 0.013907048167916419 37 0.57948669842161959 38 0.40660625341046397
		3 37 0.47442904489824167 38 0.50521298697962258 62 0.020357968122135788
		3 37 0.45394955618362592 38 0.52426920158520929 62 0.021781242231164677
		3 37 0.32799855461820149 38 0.63557925451722896 62 0.036422190864569499
		3 37 0.27961417928748622 38 0.6781604850470857 62 0.042225335665428014
		3 37 0.6223572784946606 38 0.36985271056741426 62 0.0077900109379251499
		3 37 0.51873798902683133 38 0.46838330227791675 62 0.012878708695251859
		3 6 0.029195829779454705 37 0.76312500449244136 38 0.20767916572810402
		3 6 0.095921399193661938 37 0.8016612301978131 38 0.1024173706085251
		3 6 0.1889578029933684 7 0.16776150833931441 37 0.64328068866731714
		3 6 0.26949451201247127 7 0.27297708247875779 37 0.45752840550877089
		3 6 0.30806858249495089 7 0.33246166432981461 37 0.3594697531752345
		3 6 0.26279543146971096 7 0.25510056513299295 37 0.48210400339729603
		3 6 0.16617329845828088 7 0.13593266317854882 37 0.69789403836317021
		3 6 0.095815152990520527 37 0.83169026331949958 38 0.072494583689979894
		3 6 0.18058156765134281 7 0.14667047452827581 37 0.67274795782038144
		3 6 0.047254664216692263 37 0.85480244056269372 38 0.097942895220614001
		3 6 0.0074093804712666743 37 0.70992978858386924 38 0.28266083094486416
		3 6 0.32091036734928602 7 0.33319299183749074 37 0.34589664081322335
		3 6 0.32504014205951037 7 0.31375944247379167 37 0.36120041546669801
		3 3 0.30363084771015308 4 0.43420147630452183 5 0.2621676759853252
		3 3 0.37989551478241063 4 0.44493169514084008 5 0.17517279007674932
		3 2 0.26944053832582177 3 0.4386099582139385 4 0.29194950346023979
		3 2 0.29516557353769202 3 0.42876643492918309 4 0.27606799153312478
		3 2 0.26463757049026204 3 0.42969312573050883 4 0.30566930377922907
		3 2 0.3159542008344855 3 0.43367930197855448 4 0.25036649718696008
		3 2 0.35042995454557313 3 0.42559741267207502 4 0.22397263278235194
		3 2 0.30412557026209569 3 0.45157071184406172 4 0.24430371789384256
		3 2 0.25428575052353813 3 0.45371826288256212 4 0.29199598659389975
		3 2 0.36754136253851688 3 0.43386416215982876 4 0.19859447530165439
		3 1 0.22776454727940643 2 0.37266854723048531 3 0.39956690549010815
		3 1 0.2339595267948778 2 0.37309132130533379 3 0.39294915189978835
		3 1 0.17956425805366455 2 0.37362038302169021 3 0.44681535892464513
		3 1 0.23419986794017694 2 0.37278874664023959 3 0.39301138541958341
		3 2 0.32098187376608328 3 0.46847550771341179 4 0.21054261852050499
		3 2 0.2689582422764093 3 0.4680052924549058 4 0.2630364652686849
		3 2 0.27564290572511363 3 0.47737174705606072 4 0.24698534721882553
		3 2 0.32314808827945463 3 0.46167809042188701 4 0.21517382129865834
		3 1 0.18592843810008675 2 0.36911635363686657 3 0.44495520826304674
		3 1 0.28959476783084992 2 0.34279073244814046 3 0.36761449972100962
		3 1 0.34399044747895891 2 0.31423683217348114 3 0.34177272034755996
		3 1 0.45123086579156285 2 0.24465418331260941 72 0.3041149508958278
		3 1 0.45058151595736035 2 0.19653992157694528 72 0.35287856246569443
		3 1 0.47767441412115624 2 0.14131414381308027 72 0.38101144206576326
		3 1 0.46366278510356823 2 0.14827168423924555 72 0.38806553065718624
		3 1 0.42179794107624863 2 0.22777328563390653 72 0.3504287732898449
		3 1 0.35430398938470553 2 0.3136752614597722 3 0.33202074915552238
		3 2 0.32313657347481278 3 0.42929191772402137 4 0.2475715088011658
		3 2 0.2780709978705096 3 0.4482635137086739 4 0.27366548842081651
		3 2 0.26721784395075776 3 0.47329274732387655 4 0.25948940872536563
		3 2 0.27321687036325337 3 0.42097470239193646 4 0.30580842724481005
		3 2 0.33626080499442179 3 0.40765375645333246 4 0.25608543855224586
		3 1 0.32218693655163388 2 0.33435901048804606 3 0.34345405296032006
		3 1 0.34375355945703173 2 0.33401135012570504 3 0.32223509041726328
		3 1 0.42077761294995514 2 0.23666327034966447 72 0.34255911670038036
		3 1 0.30252213761717267 2 0.36949094974230529 3 0.32798691264052199
		3 2 0.39624378364393725 3 0.42587348535293656 4 0.17788273100312629
		3 1 0.22162631534849631 2 0.37133858131736874 3 0.40703510333413501
		3 2 0.29728938670790389 3 0.41669352923164099 4 0.28601708406045512
		3 2 0.21948960223194472 3 0.42074025946599802 4 0.35977013830205745
		3 2 0.25536530498005294 3 0.42836778163275391 4 0.31626691338719298
		3 2 0.16839759929921552 3 0.41623178294146862 4 0.41537061775931583
		3 2 0.18225168648393611 3 0.41083122490540669 4 0.40691708861065717
		3 2 0.26943680169170264 3 0.42905836583869367 4 0.30150483246960369
		3 2 0.36251421228474434 3 0.44233748515816534 4 0.19514830255709029
		3 1 0.13212672360941988 2 0.44348701714398853 3 0.42438625924659162
		3 1 0.19536442881962376 2 0.43079057332827025 3 0.37384499785210595
		3 1 0.15128377015550029 2 0.4514691121548054 3 0.39724711768969417
		3 1 0.1159456491510532 2 0.45046574978720938 3 0.43358860106173752
		1 2 0.41333299992214462;
	setAttr ".wl[333:499].w"
		2 3 0.44451874550885145 4 0.14214825456900401
		3 2 0.32575895582868036 3 0.43254604381622508 4 0.24169500035509456
		3 2 0.22197424092491785 3 0.40876450658217833 4 0.36926125249290381
		3 2 0.26698866575195385 3 0.41702417034564271 4 0.31598716390240333
		3 2 0.37756027002278486 3 0.43609698999133284 4 0.18634273998588222
		3 1 0.12945753448080599 2 0.43902541685747609 3 0.43151704866171792
		3 2 0.38568770781261769 3 0.43093755858105409 4 0.18337473360632828
		3 2 0.29992093802248887 3 0.42473036906441769 4 0.27534869291309344
		3 2 0.24103944077176848 3 0.41723587802701662 4 0.34172468120121502
		3 2 0.26749396335803727 3 0.42126998519275682 4 0.3112360514492058
		3 2 0.33278601872635172 3 0.42425886518954264 4 0.24295511608410583
		3 2 0.39745902295560787 3 0.42271909313549949 4 0.17982188390889264
		3 1 0.16624391957912976 2 0.41744026548792323 3 0.416315814932947
		3 1 0.19964051476754782 2 0.40343200694143061 3 0.39692747829102165
		3 72 0.68147173928357629 78 0.28415854952664288 79 0.034369711189780737
		3 72 0.67087623350400361 78 0.28871655864428475 79 0.040407207851711598
		3 72 0.65504993490944829 78 0.30764033301143301 79 0.037309732079118751
		3 72 0.69407621506210604 78 0.26722168130911611 79 0.038702103628777837
		3 72 0.70398149248871134 78 0.26446208093724805 79 0.031556426574040605
		3 72 0.69913301017766383 78 0.273672723011954 79 0.027194266810382162
		3 37 0.56433206335934138 38 0.42856923594534568 62 0.0070987006953130817
		3 37 0.5820963987399328 38 0.41137094865178003 62 0.0065326526082872139
		3 37 0.59650742040547622 38 0.39761719216485358 62 0.0058753874296701095
		3 37 0.55590844820089602 38 0.43649041412868322 62 0.0076011376704208022
		3 37 0.5408458516846425 38 0.45112104712043627 62 0.0080331011949212917
		3 37 0.54025326008296326 38 0.4518811460175976 62 0.0078655938994391765
		3 6 0.13495001526308778 7 0.10407730718183777 37 0.76097267755507436
		3 6 0.14082033191930982 7 0.10482958613930941 37 0.75435008194138065
		3 6 0.1400897952249103 7 0.1094048644434064 37 0.75050534033168326
		3 6 0.13341130350028782 7 0.099356450616431738 37 0.76723224588328043
		3 6 0.14187711479193685 7 0.10204573074732462 37 0.75607715446073853
		3 6 0.14874369197599838 7 0.10619043994723792 37 0.74506586807676367
		3 1 0.048258085460889895 64 0.67987738706200884 70 0.27186452747710133
		3 1 0.063569299684567177 64 0.69931531999316188 70 0.23711538032227114
		3 1 0.076545744343224767 64 0.70183700288991557 70 0.22161725276685962
		3 1 0.035077261706433688 64 0.67102829419919086 70 0.29389444409437548
		3 64 0.6600890990323004 70 0.31134260416395304 71 0.028568296803746455
		3 1 0.024592352629918185 64 0.66535642114058879 70 0.31005122622949294
		3 1 0.045318683634897182 64 0.68939834847788772 70 0.26528296788721489
		3 1 0.068210286799050113 64 0.72156073526743392 70 0.21022897793351597
		3 1 0.056841220946226255 64 0.71411593585800059 70 0.22904284319577317
		3 1 0.034995097018361773 64 0.6816886847508844 70 0.2833162182307537
		3 0 0.15211974269242423 1 0.38824399183257957 72 0.45963626547499614
		3 0 0.1987495470348096 1 0.42301404788744457 72 0.37823640507774575
		3 0 0.10147444461255964 1 0.43236904520575159 72 0.46615651018168869
		3 0 0.27853770871610728 1 0.35342895432594063 72 0.36803333695795204
		3 0 0.26690412674412906 1 0.28372456157647852 72 0.44937131167939243
		3 0 0.3745002265570343 1 0.40999439179323705 72 0.21550538164972854
		3 0 0.40419467807482745 1 0.24111627753287143 72 0.35468904439230109
		3 0 0.48162883537796086 1 0.30514855596988427 72 0.21322260865215467
		3 0 0.5793584072642185 1 0.18765075329201761 72 0.23299083944376395
		3 0 0.48442182536720368 1 0.17018552709664286 72 0.34539264753615345
		3 0 0.63984812616148889 1 0.14389548543687944 72 0.21625638840163161
		3 0 0.62298662413122352 1 0.23693709888213568 72 0.1400762769866408
		3 0 0.49596847386788073 1 0.36072807808506208 64 0.143303448047057
		3 0 0.42291183538324967 1 0.40903667968571356 64 0.16805148493103667
		3 1 0.19711982179108195 2 0.40199267578805448 3 0.40088750242086357
		3 1 0.18274108368397579 2 0.40122932145984902 3 0.41602959485617497
		3 1 0.18440298172371059 2 0.39547615811322467 3 0.42012086016306477
		3 1 0.19422901801786133 2 0.40589577572450103 3 0.39987520625763773
		3 1 0.21457404448022555 2 0.40815077772881042 3 0.37727517779096392
		3 1 0.22128128964557123 2 0.40697586503363448 3 0.37174284532079438
		3 0 0.091003313527808091 1 0.45290080708183877 72 0.45609587939035318
		3 0 0.1019914211776623 1 0.45751488805941914 72 0.4404936907629185
		3 0 0.07605428094427108 1 0.46840664588177322 72 0.45553907317395559
		3 0 0.11388890546896598 1 0.43022030366958508 72 0.4558907908614489
		3 0 0.10896092984997185 1 0.40101582260644925 72 0.49002324754357901
		3 0 0.1301931234925956 1 0.35772045751045906 72 0.5120864189969454
		3 0 0.13257530057808567 1 0.30535665670346979 72 0.56206804271844457
		3 1 0.25164018115477138 72 0.58910797912561885 78 0.15925183971960982
		3 1 0.19922345303995084 72 0.60250086453925789 78 0.19827568242079133
		3 1 0.16138708479834099 72 0.60780630702174621 78 0.23080660817991286
		3 0 0.30610166421923479 1 0.43088568708579855 2 0.26301264869496671
		3 1 0.4639814139476427 2 0.25181432262670228 64 0.28420426342565491
		3 0 0.31705392754207667 1 0.39381421465605387 2 0.2891318578018694
		3 0 0.20871011130739228 1 0.4558395114563854 64 0.33545037723622229
		3 0 0.26723612622599091 1 0.4186227136851865 64 0.31414116008882259
		3 1 0.47205529271884888 2 0.1429663626805564 64 0.38497834460059477
		3 0 0.17536876555807338 1 0.42207949318075799 64 0.40255174126116861
		3 0 0.09614518688408645 1 0.47012044227570632 64 0.43373437084020711
		3 1 0.4729227451914319 2 0.10336174650251087 64 0.4237155083060572
		3 1 0.47190606850577005 2 0.12294810940348568 64 0.4051458220907444
		3 1 0.46054988701941446 2 0.16056349610066425 64 0.37888661687992131
		3 1 0.4533496483097067 2 0.13885386825164672 64 0.40779648343864672
		3 1 0.45412631318293911 2 0.058921539076743162 64 0.48695214774031764
		3 0 0.079562205415799905 1 0.42285787977623207 64 0.49757991480796793
		3 0 0.14358102515732304 1 0.37396703010284921 64 0.48245194473982778
		3 0 0.21393537222042946 1 0.37439542182228441 64 0.41166920595728612
		3 0 0.13407037594434701 1 0.32661472595379981 64 0.53931489810185307
		3 0 0.079571472672748986 1 0.35849178539006687 64 0.56193674193718413
		3 1 0.38310285743637784 64 0.56974791720085527 70 0.047149225362766944
		3 0 0.11537186635646131 1 0.39172636611968165 64 0.49290176752385695
		3 1 0.43863050361147343 2 0.23889640121754513 64 0.32247309517098133
		3 1 0.43901237677332999 2 0.2718598665641393 64 0.28912775666253065
		3 0 0.21152057294364626 1 0.40828678171345928 2 0.38019264534289454
		3 0 0.33118793977756134 1 0.38482909073037647 2 0.2839829694920622
		3 0 0.33855360322320999 1 0.33390079123548211 64 0.32754560554130785
		3 0 0.24094001135324289 1 0.28136383711300916 64 0.47769615153374789
		3 0 0.077647599089392283 1 0.32036446019761744 64 0.60198794071299022
		3 1 0.31426716149512124 64 0.606753549370318 70 0.078979289134560787
		3 0 0.23917776891950146 1 0.38174638828097662 2 0.37907584279952194
		3 0 0.34144413177587835 1 0.39478913264717791 2 0.26376673557694358
		3 0 0.54468803065071814 1 0.31708391942839981 72 0.13822804992088206
		3 0 0.50467913024129696 1 0.22429707373621197 64 0.27102379602249105
		3 0 0.65766390401674391 1 0.21430628292734535 72 0.12802981305591082
		3 0 0.50813091599657945 1 0.27385784283814169 72 0.21801124116527887
		3 0 0.40396134842708736 1 0.34781212170854459 72 0.24822652986436802
		3 0 0.35478171887015725 1 0.35002240486190139 72 0.29519587626794136
		3 0 0.29635970066589223 1 0.42540744411250114 72 0.27823285522160657
		3 0 0.23777892027595521 1 0.41694052772252072 2 0.34528055200152413
		3 1 0.17051043461647994 2 0.42087037275732508 3 0.408619192626195
		3 1 0.15750705741599555 2 0.42601187959442843 3 0.4164810629895761
		3 1 0.12783195686411061 2 0.43895362862727361 3 0.43321441450861564
		3 1 0.22402931913873386 2 0.39618355741482403 3 0.379787123446442
		3 1 0.2395736417799508 2 0.38804571379064612 3 0.37238064442940311
		3 1 0.20306507125910259 2 0.40525687747217592 3 0.39167805126872152
		3 1 0.29393744242320863 2 0.36318214335735882 3 0.34288041421943255
		3 1 0.31100363254875057 2 0.35458721450590247 3 0.33440915294534684
		3 1 0.26652268617786773 2 0.37318573359986035 3 0.36029158022227198
		3 1 0.29595656051393054 2 0.36272698783633273 3 0.34131645164973673
		3 1 0.24623983520387197 2 0.38455920263925186 3 0.3692009621568762
		3 1 0.25926014112519474 2 0.38317379274915625 3 0.35756606612564912
		3 1 0.30762658061481385 2 0.36277570514525831 3 0.32959771423992784
		3 1 0.36321133588393423 2 0.33275374559185755 3 0.30403491852420828
		3 1 0.3715309936876704 2 0.31660891218443427 64 0.31186009412789523
		3 2 0.27066035294877433 3 0.43172135105914305 4 0.29761829599208273
		3 2 0.27577579273849318 3 0.42505724797177719 4 0.29916695928972958
		3 2 0.28364054556803209 3 0.44040187003906889 4 0.27595758439289908
		3 2 0.24116538673259985 3 0.41377191277958442 4 0.34506270048781584
		3 2 0.26022257323443004 3 0.4095904732065922 4 0.33018695355897776
		3 2 0.20198850148141631 3 0.39911354446336217 4 0.39889795405522155
		3 2 0.15984832647660843 3 0.38791376905610342 4 0.45223790446728818
		3 2 0.11534449998626077 3 0.35871201827495269 4 0.52594348173878658
		3 3 0.31484510027457258 4 0.56524248873377148 5 0.11991241099165592
		3 3 0.2572524404858067 4 0.59340610087842782 5 0.14934145863576542
		3 3 0.22600856580207707 4 0.61122464640397445 5 0.16276678779394854
		3 3 0.19487233869534271 4 0.62359196045247067 5 0.18153570085218651
		3 1 0.49648072176639069 2 0.016528897506435145 72 0.48699038072717415
		3 0 0.016241092068027305 1 0.48865840978780084 72 0.49510049814417195
		3 0 0.01834822660128245 1 0.4924573185373442 72 0.48919445486137325
		3 1 0.4869255385755234 2 0.014165864992837417 72 0.49890859643163904
		3 1 0.49642068896583974 2 0.017152632499900042 72 0.48642667853426025
		3 0 0.01334265313988646 1 0.47761299615174641 72 0.50904435070836707
		3 1 0.49053339287961251 2 0.016055998092986763 72 0.49341060902740069
		3 0 0.011527231364022703 1 0.47470533395765846 72 0.51376743467831876
		3 1 0.48039373092541487 2 0.012597152021084647 72 0.50700911705350038
		3 1 0.50176328004399195 2 0.081767492216751128 72 0.41646922773925699
		3 1 0.49948132672669998 2 0.08260990857824925 72 0.41790876469505073
		3 1 0.49933797154241771 2 0.10291193226382644 72 0.39775009619375595
		3 1 0.50232038214141284 2 0.061711522866665786 72 0.43596809499192141
		3 1 0.50478492577819944 2 0.057880551128989911 72 0.43733452309281046
		3 1 0.50458250278303263 2 0.043129384720077872 72 0.45228811249688944
		3 3 0.23938912791369274 4 0.67363247830886486 5 0.086978393777442292
		3 3 0.24193507159925787 4 0.6711162552863762 5 0.086948673114365799
		3 0 0.7563183630928022 1 0.1033344696998475 64 0.14034716720735044
		3 0 0.84740772465906489 64 0.096405981982164685 72 0.056186293358770414
		3 0 0.81088467150476773 1 0.062074224087217127 72 0.12704110440801517
		3 0 0.71684312727213062 64 0.21150009501295272 70 0.071656777714916534
		3 0 0.72799971093639393 1 0.11557429928531886 72 0.15642598977828714
		3 0 0.71415538210635632 1 0.09394247860325336 72 0.19190213929039029
		3 0 0.63163477733287299 1 0.17305763719600054 72 0.19530758547112637
		3 0 0.67215701202927958 1 0.19876764401878519 64 0.12907534395193521
		3 0 0.55331884310145329 1 0.17910751566324529 64 0.26757364123530136
		3 0 0.5855360417803529 1 0.1131935992975753 64 0.30127035892207166
		3 0 0.52584305204498116 64 0.36320560051141298 70 0.11095134744360577
		3 0 0.45174692676069977 1 0.15798079436578641 64 0.39027227887351396
		3 1 0.23286592492407471 2 0.43732508743913212 3 0.32980898763679323;
	setAttr ".wl[500:516].w"
		3 1 0.17030867868318864 2 0.44350294128299361 3 0.38618838003381778
		3 1 0.16462155620675639 2 0.44369537670597675 3 0.39168306708726686
		3 1 0.25434014933844845 2 0.43609062182407848 3 0.30956922883747312
		3 2 0.45166152586848368 3 0.44418918201449814 4 0.10414929211701814
		3 1 0.20841401989303779 2 0.43492398278160144 3 0.35666199732536064
		3 1 0.14307624527637805 2 0.43824428001766141 3 0.41867947470596056
		3 1 0.12963163332249333 2 0.4277789923249592 3 0.44258937435254753
		3 2 0.44139994211788131 3 0.44694461675390457 4 0.11165544112821404
		3 2 0.44980994271048463 3 0.44399095414731776 4 0.10619910314219755
		3 2 0.43035618273503867 3 0.45680700288894771 4 0.11283681437601371
		3 2 0.43011224833109701 3 0.45831510882640569 4 0.11157264284249742
		3 2 0.39767774793406319 3 0.46994842592619873 4 0.13237382613973789
		3 2 0.41311570769951 3 0.46218426330684753 4 0.12470002899364244
		3 2 0.41144742825687586 3 0.45605393133171057 4 0.13249864041141352
		3 2 0.37713862000876658 3 0.46710075661822703 4 0.15576062337300636
		3 2 0.38147402646337947 3 0.47046304323528715 4 0.14806293030133338
		3 2 0.36636189646842615 3 0.47623105243885794 4 0.15740705109271594;
	setAttr -s 84 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 0 -0 -1 -0 0.99799027986901856 -0.063367194090933054 -0 0
		 -0.063367194090933054 -0.99799027986901867 -0 0 -95.559524140488392 8.3529922361861715 -3.4314998759166221e-17 1;
	setAttr ".pm[2]" -type "matrix" 0 -0 -1 -0 0.98220797016103401 0.18779644126591369 -0 -0
		 0.18779644126591374 -0.98220797016103401 0 -0 -98.179537472967525 -16.686798167121658 4.3202194641745812e-16 1;
	setAttr ".pm[3]" -type "matrix" 0 -0 -1 -0 0.99176140629857179 0.12809884065314414 -0 -0
		 0.1280988406531442 -0.99176140629857179 0 -0 -105.79112581470955 -10.312733827340182 2.46427707046199e-16 1;
	setAttr ".pm[4]" -type "matrix" 0 -0 -1 -0 0.99804167658749499 -0.062552472328609804 -0 0
		 -0.062552472328609748 -0.99804167658749499 0 0 -112.93116808215187 11.337483986926584 1.2350709678254887e-16 1;
	setAttr ".pm[5]" -type "matrix" 0 -7.8457562571503513e-06 -0.99999999996922206 -0
		 0.98641974755132822 -0.16424396987138712 1.2886181543573101e-06 0 -0.16424396987644216 -0.98641974752096839 7.7392089065275019e-06 0
		 -119.65995581271704 23.693152323860115 -0.00018589069810239194 1;
	setAttr ".pm[6]" -type "matrix" -1.8369095133075878e-13 1.5897534116537124e-11 -1 -0
		 0.98439676970875678 -0.17596306370077874 -2.9782035882479106e-12 0 -0.17596306370077869 -0.984396769708757 -1.5617158413075801e-11 0
		 -138.80815577827528 25.345680206388412 4.2901809001282565e-10 1;
	setAttr ".pm[7]" -type "matrix" -1.4300867336634567e-11 6.9462599125026268e-12 -1 -0
		 0.59767585135526502 0.80173784786971281 -2.978203588247911e-12 -0 0.80173784786971292 -0.59767585135526513 -1.5617158413075801e-11 -0
		 -90.07145791278289 -123.44552150788334 4.2901649057184837e-10 1;
	setAttr ".pm[8]" -type "matrix" 2.8422979048664396e-07 5.8151037188467191e-07 -0.37857441712806361 -0
		 0.34385647666361563 0.15837080779141366 5.0142987234613083e-07 0 0.15837080779195245 -0.34385647666348962 -4.0927859647002654e-07 -0
		 -53.993782358668945 -23.813390930213494 -7.7116637150615307e-05 1;
	setAttr ".pm[9]" -type "matrix" 2.6460113537289875e-07 -1.228894684562969e-07 -0.3785744171285047 -0
		 0.3690942588552853 0.08419036396338106 2.3064593624266421e-07 -0 0.084190363963281223 -0.36909425885533687 1.7865619046885114e-07 -0
		 -62.547343870116428 -11.176446482602335 -3.6400316536943409e-05 1;
	setAttr ".pm[10]" -type "matrix" 0.98951783679139638 0.14384242652924217 -0.012798710945019255 -0
		 0.016658186516883281 -0.025658995449682056 0.99953195085223878 0 0.14344669913819316 -0.98926789712528929 -0.027786187641774849 -0
		 -3.6004763877216486 1.8274030034194497 -146.26264192712122 1;
	setAttr ".pm[11]" -type "matrix" 1.2364098102550207 0.016482382367913297 0.12316094500217092 -0
		 -0.1218824761046417 -0.078861970074727394 1.2341292306285208 0 0.02418572556181333 -1.2400236396716873 -0.076850048351565392 -0
		 -5.70654279161782 12.257483466725555 -183.20421976949856 1;
	setAttr ".pm[12]" -type "matrix" 0.93952870349342898 0.030289898938788098 -0.048143751056890671 -0
		 0.056142936871799325 -0.36603036220422708 0.8653434162317567 0 0.0091252059132395039 -0.86663359004744078 -0.36716812858705522 -0
		 -46.909334071816929 52.6894694687632 -122.51388219391549 0.99999999999999989;
	setAttr ".pm[13]" -type "matrix" 0.93813544816272887 -0.0040001132642323188 -0.076389550502556927 -0
		 0.069492826174487682 -0.34828556639003927 0.87167505114362931 0 -0.031970477669121956 -0.87443161354667365 -0.34683818304702974 0
		 -57.802355924584504 51.873339324790933 -122.0208783919138 1;
	setAttr ".pm[14]" -type "matrix" 0.93813545827019118 -0.0040001119007359604 -0.076389426444721353 -0
		 0.069492711425978709 -0.34828556589281839 0.87167506049042232 0 -0.031970430501286048 -0.87443161375095368 -0.34683818687979157 0
		 -66.87644993449355 52.194171349079056 -121.75434109122206 1;
	setAttr ".pm[15]" -type "matrix" 0.94094398570584581 0.02216096800237001 -0.0090989391023718648 -0
		 0.022037915007109433 -0.94090606574571034 -0.01263286098489852 0 -0.0093930558249251863 0.012415730817083333 -0.94112013237532199 -0
		 -69.247542269972854 135.92265747128366 3.9251369250576582 1;
	setAttr ".pm[16]" -type "matrix" 0.93413921017466561 0.038422450598262818 0.10889047128132696 -0
		 0.033340489892940729 -0.93955675450348186 0.045508243562868061 0 0.11055239110731256 -0.04130743018516992 -0.93382083317066178 -0
		 -74.328813265020514 135.1241417977169 -10.966514028294654 0.99999999999999989;
	setAttr ".pm[17]" -type "matrix" 0.87272809013802755 -0.33531780355321728 0.10889047128132699 -0
		 -0.34213197013381608 -0.87568498800183381 0.045508243562868075 0 0.085093355369130666 -0.081775643317981525 -0.933820833170662 -0
		 -20.035657235704591 155.81536004376667 -11.20738971947012 0.99999999999999989;
	setAttr ".pm[18]" -type "matrix" 0.75723347729650892 -0.54835190303049086 0.10889047128132698 -0
		 -0.55569712259209936 -0.75833975970028067 0.045508243562868061 0 0.061218071154620628 -0.10089837824343216 -0.93382083317066189 -0
		 16.740109518598704 156.77933562528 -11.207389719470028 1;
	setAttr ".pm[19]" -type "matrix" 0.62039875968699076 -0.69942671358375186 0.10889047128132702 -0
		 -0.7068371192328935 -0.6198869010343443 0.045508243562868082 0 0.037896560331796579 -0.11176755201338813 -0.93382083317066222 -0
		 47.786008969000392 149.98780466558804 -11.207389719470005 1;
	setAttr ".pm[20]" -type "matrix" 0.93925410994343528 0.060876634315179992 -0.0067257550070422088 -0
		 0.060052917683466558 -0.93568289189036424 -0.082708260367288428 0 -0.012035259185480846 0.082103865010949267 -0.93758391161442056 -0
		 -78.083251420498243 132.93588457812268 14.229482785917925 1;
	setAttr ".pm[21]" -type "matrix" 0.83209636003922094 -0.43990896246912009 -0.0067257550070422053 -0
		 -0.43874093235554512 -0.82862248423175167 -0.082708260367288428 0 0.032734161312908086 0.076251995361029057 -0.93758391161442067 -0
		 -2.1181025057842797 157.33398015925508 14.229482785917902 1;
	setAttr ".pm[22]" -type "matrix" 0.62202999434015471 -0.70638724067777803 -0.0067257550070422053 -0
		 -0.70406326121498153 -0.61919605239854081 -0.0827082603672884 0 0.057646281580900433 0.059689181040565607 -0.93758391161442056 -0
		 48.977785903612194 149.69388653459043 14.229482785917854 1;
	setAttr ".pm[23]" -type "matrix" 0.48991710436888469 -0.80367000597134786 -0.0067257550070422174 -0
		 -0.8008892241259794 -0.48752977117043733 -0.082708260367288428 0 0.067135422522595814 0.048772196547935159 -0.93758391161442078 -0
		 71.791359458807605 139.34440239343994 14.229482785917861 1;
	setAttr ".pm[24]" -type "matrix" 0.6878591301714384 0.45294398652352236 0.45567647025446079 -0
		 -0.22893902256283355 -0.45095127564937942 0.79383836791236506 0 0.60032176740424792 -0.69096611747174075 -0.21938341668928352 -0
		 -19.193959616377086 35.462496595213139 -146.96767867889753 1;
	setAttr ".pm[25]" -type "matrix" 0.82568935744620353 0.17077668939078358 0.41835617695020566 -0
		 -0.36134701390474627 -0.27370516300238024 0.82490199582711587 0 0.27132066632269408 -0.88423429561296674 -0.17454022436001662 -0
		 -12.613190316399711 32.777960662435035 -148.92695268415491 1;
	setAttr ".pm[26]" -type "matrix" 0.84280034168081663 0.024802755933554632 0.41835617695020555 -0
		 -0.40338574348975881 -0.20679971629876809 0.82490199582711565 0 0.11365302214857935 -0.91791512901163386 -0.17454022436001659 -0
		 -9.7688511868704104 35.006125566670121 -148.92695268415497 1;
	setAttr ".pm[27]" -type "matrix" 0.86916723494588333 -0.0036685529384439131 -0.36122616578462136 -0
		 -0.16600609396590696 -0.83999040965338367 -0.39090609088132372 0 -0.32084229442874851 0.42467886319108566 -0.77631022709740172 -0
		 -40.050943462403254 123.77922583021427 83.06885900544863 1;
	setAttr ".pm[28]" -type "matrix" 0.84302902779759015 -0.28644481390674442 -0.30528824135261612 -0
		 -0.37137414450004769 -0.8285303757011595 -0.24812929042930182 0 -0.19321694159441699 0.34268975554869135 -0.85509088894366903 -0
		 -12.661285482271252 144.25869502809562 57.837223931286253 1;
	setAttr ".pm[29]" -type "matrix" 0.68152134506187401 -0.57295482313047508 -0.30528824135261612 -0
		 -0.64682614575593622 -0.6371791552061068 -0.24812929042930182 0 -0.055624426497429866 0.38945471913170387 -0.85509088894366925 -0
		 37.018549397844822 140.39835835240314 57.837223931286211 1;
	setAttr ".pm[30]" -type "matrix" 0.62990386996708958 -0.62926122375679849 -0.30528824135261617 -0
		 -0.6990600113585802 -0.57939316459722623 -0.24812929042930182 0 -0.022038569631862483 0.3927892011317316 -0.85509088894366925 -0
		 46.88372533310222 136.88357917437051 57.837223931286189 1;
	setAttr ".pm[31]" -type "matrix" 0.91820565388726749 0.093342074906211228 -0.18475691503500533 -0
		 0.044605948790284733 -0.90960468187268384 -0.23786364892393153 0 -0.20213403952221287 0.22328471331260441 -0.89175963706535677 -0
		 -74.194359970195748 126.55252272005333 48.82991222444673 1;
	setAttr ".pm[32]" -type "matrix" 0.84530317409509059 -0.38811637614445549 -0.14414473928955315 -0
		 -0.40835748238682246 -0.83559087573346114 -0.14485005488876587 0 -0.068236309066755318 0.19262152110051975 -0.91879825814237548 -0
		 -7.2745593028562352 153.99920060469199 31.909125819291592 1;
	setAttr ".pm[33]" -type "matrix" 0.67329488358026202 -0.64175211515925779 -0.14414473928955321 -0
		 -0.65773834950028798 -0.65753190692692165 -0.1448500548887659 0 -0.0019356582528792677 0.20434161958166971 -0.91879825814237581 -0
		 38.459154520230918 149.62201686790581 31.909125819291692 0.99999999999999989;
	setAttr ".pm[34]" -type "matrix" 0.56244355475600172 -0.74082995706178889 -0.14414473928955315 -0
		 -0.75410046124506402 -0.54433485960417649 -0.14485005488876593 0 0.030646786046947403 0.20203964653286344 -0.91879825814237592 -0
		 59.571040439858344 141.94384765241909 31.909125819291525 1;
	setAttr ".pm[35]" -type "matrix" 1.2400503931647604 0.023530107412793037 0.076621554762809352 -0
		 -0.074974190005587554 -0.079555463941387336 1.2378203848649791 0 0.028344301757740244 -1.239865625138233 -0.077970111938185052 -0
		 -21.906294079440531 12.171986331957433 -182.50999439111834 0.99999999999999989;
	setAttr ".pm[36]" -type "matrix" 1.2364098102550203 0.016482382367913301 0.12316094500217092 -0
		 -0.12188247610464165 -0.078861970074727408 1.2341292306285203 0 0.02418572556181332 -1.2400236396716875 -0.076850048351565378 -0
		 -24.220634283317086 12.257483466725548 -183.20421976949839 1;
	setAttr ".pm[37]" -type "matrix" 0.98951783679597616 0.14384242649818865 -0.012798710939938483 -0
		 -0.016658186510996112 0.025658995450550458 -0.99953195085231461 0 -0.1434466991072843 0.9892678971297818 0.027786187641387496 -0
		 3.6004390453738471 -1.8273705835756344 146.2625875270183 1;
	setAttr ".pm[38]" -type "matrix" 1.2364098102550509 0.016482382328710375 0.12316094500711416 -0
		 0.12188247611199846 0.078861970074841165 -1.2341292306277869 0 -0.024185725523193997 1.2400236396722006 0.076850048355428052 -0
		 5.70669597470153 -12.257435827742867 183.20362243513486 1;
	setAttr ".pm[39]" -type "matrix" 0.93952870349404871 0.030289898909539665 -0.048143751063210352 -0
		 -0.056142936866208984 0.36603036220441831 -0.86534341623203881 0 -0.0091252058838913932 0.86663359004838203 0.36716812858556225 -0
		 46.90904493119637 -52.689299394104324 122.51350516119837 1;
	setAttr ".pm[40]" -type "matrix" 0.93813544816214423 -0.0040001132936188658 -0.076389550508203688 -0
		 -0.069492826168904925 0.34828556639002622 -0.87167505114407884 0 0.031970477698426737 0.87443161354654364 0.34683818304465419 -0
		 57.802032080787839 -51.873166598333817 122.02050698593678 0.99999999999999989;
	setAttr ".pm[41]" -type "matrix" 0.93813545826960631 -0.0040001119301223001 -0.076389426450368184 -0
		 -0.069492711420396022 0.34828556589280535 -0.87167506049087251 0 0.031970430530590621 0.87443161375082379 0.34683818687741619 -0
		 66.876077504658568 -52.193996904770465 121.75397111238104 1;
	setAttr ".pm[42]" -type "matrix" 0.94094398570568394 0.022160967997158599 -0.0090989391318437949 -0
		 -0.022037915001510148 0.94090606574584179 0.012632860984856178 0 0.0093930558543167727 -0.012415730816402954 0.94112013237503722 -0
		 69.247205667046458 -135.92223172479302 -3.9251150165581121 0.99999999999999989;
	setAttr ".pm[43]" -type "matrix" 0.86916723493487424 -0.0036685529301769743 -0.36122616581119671 -0
		 0.16600609397108296 0.83999040965335625 0.39090609087918421 -0 0.32084229445589596 -0.42467886319121101 0.77631022708611275 -0
		 40.051053575519894 -123.77894554638726 -83.068518296278526 1;
	setAttr ".pm[44]" -type "matrix" 0.84302902778934585 -0.28644481390097037 -0.30528824138080263 -0
		 0.37137414450506645 0.82853037569945032 0.24812929042749585 -0 0.19321694162074549 -0.34268975555764897 0.85509088893412921 -0
		 12.661166690143601 -144.25847595013147 -57.837000595108314 0.99999999999999989;
	setAttr ".pm[45]" -type "matrix" 0.6815213450562887 -0.57295482312210122 -0.30528824138080257 -0
		 0.64682614575999153 0.63717915520269208 0.24812929042749582 -0 0.055624426518710336 -0.38945471914960839 0.85509088893412943 -0
		 -37.018557808144031 -140.39815254574992 -57.837033224314844 0.99999999999999989;
	setAttr ".pm[46]" -type "matrix" 0.62990386996224279 -0.629261232846275 -0.30528822262735694 -0
		 0.69906001136232854 0.5793931719883052 0.24812927316023412 -0 0.022038569651529987 -0.39278917566770005 0.85509090064015947 -0
		 -46.883714807764555 -136.88335764809091 -57.836998141908445 1;
	setAttr ".pm[47]" -type "matrix" 0.91820565388121966 0.093342074907772882 -0.18475691506427575 -0
		 -0.04460594878481839 0.90960468187323595 0.23786364892284353 0 0.2021340395508944 -0.22328471330970037 0.89175963705958228 -0
		 74.193947785085484 -126.55261307650937 -48.829795749319466 1;
	setAttr ".pm[48]" -type "matrix" 0.84530317409053046 -0.38811637614341099 -0.14414473931911531 -0
		 0.40835748239185304 0.83559087573114932 0.14485005488791997 -0 0.068236309093154576 -0.19262152111265368 0.91879825813787186 -0
		 7.2744149428179776 -153.99900152362744 -31.909016344084176 1;
	setAttr ".pm[49]" -type "matrix" 0.67329488357628853 -0.64175211515678765 -0.14414473931911523 -0
		 0.65773834950429366 0.65753190692309993 0.14485005488791988 -0 0.0019356582739024734 -0.20434161960172395 0.9187982581378713 -0
		 -38.459155989210359 -149.62178381310042 -31.908992732062821 1;
	setAttr ".pm[50]" -type "matrix" 0.56244355475247287 -0.74082995705871679 -0.14414473931911517 -0
		 0.75410046124840946 0.54433485959976513 0.14485005488791985 0 -0.030646786029387963 -0.20203964655601103 0.91879825813787119 -0
		 -59.571037911677216 -141.9436626547282 -31.908981510574392 1;
	setAttr ".pm[51]" -type "matrix" 0.93925410994341729 0.06087663431217661 -0.0067257550368207764 -0
		 -0.060052917677877439 0.93568289189072529 0.082708260367260353 0 0.012035259214820232 -0.082103865009059654 0.93758391161420929 -0
		 78.082882228836951 -132.93591301536819 -14.229403087107057 1;
	setAttr ".pm[52]" -type "matrix" 0.83209636003763332 -0.439908962471669 -0.0067257550368207721 -0
		 0.43874093236049583 0.82862248422913243 0.082708260367260353 0 -0.032734161286922227 -0.076251995374780612 0.9375839116142094 -0
		 2.1179715772785985 -157.33378770680872 -14.229404517488936 0.99999999999999989;
	setAttr ".pm[53]" -type "matrix" 0.6220299943377674 -0.70638724067959802 -0.0067257550368207634 -0
		 0.70406326121868179 0.61919605239433684 0.082708260367260381 0 -0.057646281561479627 -0.059689181062638298 0.93758391161420962 -0
		 -48.977820644626256 -149.69358471061233 -14.229367471819776 1;
	setAttr ".pm[54]" -type "matrix" 0.48991710436621738 -0.80367000597272487 -0.0067257550368207625 -0
		 0.80088922412889352 0.48752977116565399 0.082708260367260339 0 -0.067135422507302922 -0.048772196573044831 0.93758391161420929 -0
		 -71.791302955086024 -139.34415235996551 -14.229401856834938 1;
	setAttr ".pm[55]" -type "matrix" 0.93413921017831769 0.038422450591381406 0.10889047125242887 -0
		 -0.033340489887383515 0.93955675450371112 -0.045508243562208221 0 -0.11055239107813311 0.041307430186358095 0.93382083317406328 -0
		 74.328483063914163 -135.12420569481125 10.966513196243856 0.99999999999999989;
	setAttr ".pm[56]" -type "matrix" 0.87272809013865027 -0.33531780356098273 0.10889047125242887 -0
		 0.34213197013900809 0.87568498799983907 -0.045508243562208207 0 -0.085093355341874219 0.081775643307496204 0.93382083317406339 -0
		 20.035518758433565 -155.81511856411365 11.207464838637916 1;
	setAttr ".pm[57]" -type "matrix" 0.75723347729511548 -0.54835190303815562 0.10889047125242886 -0
		 0.55569712259660464 0.75833975969701894 -0.045508243562208214 0 -0.061218071130974633 0.10089837822629395 0.93382083317406328 -0
		 -16.740247553248746 -156.77905425863187 11.207432731976107 1;
	setAttr ".pm[58]" -type "matrix" 0.62039875968396963 -0.69942671359093189 0.10889047125242889 -0
		 0.70683711923658477 0.61988690103018373 -0.045508243562208228 0 -0.037896560312426761 0.11176755199153264 0.93382083317406384 -0
		 -47.786016847406579 -149.98755526650928 11.207436292658096 1;
	setAttr ".pm[59]" -type "matrix" 0.6878591301888286 0.45294398649925566 0.45567647025233216 -0
		 0.22893902256691928 0.45095127565208304 -0.7938383679096509 0 -0.60032176738276466 0.69096611748588321 0.21938341670352707 -0
		 19.193974489623589 -35.462072256321036 146.96735504345969 1;
	setAttr ".pm[60]" -type "matrix" 0.82568935745252914 0.17077668936153464 0.41835617694966293 -0
		 0.36134701390965646 0.27370516300340764 -0.82490199582462409 0 -0.27132066629690782 0.88423429561829692 0.17454022437309491 -0
		 12.613035837149917 -32.777911399433044 148.9267665119703 1;
	setAttr ".pm[61]" -type "matrix" 0.84280034168196727 0.024802755903651923 0.41835617694966282 -0
		 0.4033857434947728 0.20679971629892741 -0.82490199582462398 0 -0.11365302212225947 0.91791512901240568 0.17454022437309488 -0
		 9.7686632285220245 -35.006027321315074 148.92672068638848 1;
	setAttr ".pm[62]" -type "matrix" 1.2400503931651998 0.023530107373590899 0.076621554767739922 -0
		 0.074974190012966277 0.079555463941543031 -1.2378203848645224 0 -0.028344301719006613 1.2398656251389664 0.077970111940594028 -0
		 21.906280568505814 -12.171948865646591 182.50949799644823 1;
	setAttr ".pm[63]" -type "matrix" 1.2364098102550507 0.016482382328710372 0.12316094500711412 -0
		 0.12188247611199841 0.078861970074841165 -1.2341292306277867 0 -0.02418572552319399 1.2400236396722009 0.076850048355428024 -0
		 24.220491827362665 -12.25745623301866 183.20382400026102 1;
	setAttr ".pm[64]" -type "matrix" 0.031043634156434269 -0.1388932108216045 -0.93186036241462555 -0
		 -0.9408879898270861 0.043757230902045682 -0.037866365239089338 0 0.048834922453061411 0.9313499594700918 -0.13719026794037936 -0
		 88.198791049290591 -7.8528025061800744 -5.3978149097211494 0.99999999999999989;
	setAttr ".pm[65]" -type "matrix" 0.0086871923153172513 -0.12571188103004544 -0.93420544952973561 -0
		 -0.9194564664134196 -0.20699257722349854 0.01930403114411882 0 -0.20770918451940429 0.91102654309067932 -0.12452428969491246 -0
		 44.912480003240141 4.3077968337517172 -8.2044365117146985 1;
	setAttr ".pm[66]" -type "matrix" -0.0030034590684839945 -0.13658903133406086 -0.93271280790302113 0
		 -0.91386293355354031 0.22920633971673923 -0.030622847419258449 0 0.23122345076577408 0.90411650611321592 -0.13314588038347239 -0
		 4.7450109537975864 2.4546239280791116 -8.0367955211550104 1;
	setAttr ".pm[67]" -type "matrix" 0.13658903133406092 -0.0030034590684839663 -0.93271280790302091 -0
		 -0.22920633971673912 -0.91386293355354065 -0.030622847419258449 0 -0.90411650611321637 0.231223450765774 -0.13314588038347241 -0
		 12.782970676413077 -2.2644256535632481 -7.497849905863414 1;
	setAttr ".pm[68]" -type "matrix" 0.0070434190464265922 -0.12590389504196225 -0.93419343057789161 -0
		 -0.92816207382309146 -0.16402943686848082 0.015108766677596716 0 -0.16457314859370431 0.91970719216898811 -0.12519235483080798 -0
		 31.043561336265114 2.8702198643719234 -8.1021392184573582 1;
	setAttr ".pm[69]" -type "matrix" 0.0070434190464265922 -0.12590389504196225 -0.93419343057789161 -0
		 -0.92816207382309146 -0.16402943686848082 0.015108766677596716 0 -0.16457314859370431 0.91970719216898811 -0.12519235483080798 -0
		 16.986436548359375 3.5243902609148896 -8.2031542682593628 1;
	setAttr ".pm[70]" -type "matrix" 0.038403451464190975 -0.13814880653076422 -0.93169675777221317 -0
		 -0.94146118864897332 0.02227974499307462 -0.042109494228695608 0 0.028191691272261579 0.93222169385326992 -0.13706461369018788 -0
		 73.935241217621325 -6.1681340075920907 -5.0646766594439345 1;
	setAttr ".pm[71]" -type "matrix" 0.038403451464190975 -0.13814880653076422 -0.93169675777221317 -0
		 -0.94146118864897332 0.02227974499307462 -0.042109494228695608 0 0.028191691272261579 0.93222169385326992 -0.13706461369018788 -0
		 59.492061019050581 -6.4977402637524673 -5.1297656124032569 1;
	setAttr ".pm[72]" -type "matrix" 0.031043634156434213 -0.13889321082160466 -0.93186036241462578 -0
		 0.94088798982708632 -0.043757230902046126 0.037866365239089365 0 -0.048834922453061876 -0.93134995947009158 0.13719026794037958 0
		 -88.198705868722797 7.8440135688566812 5.3992341352628097 1;
	setAttr ".pm[73]" -type "matrix" 0.0086871923153172097 -0.12571188103004566 -0.93420544952973572 -0
		 0.9194564664134196 0.20699257722349787 -0.019304031144118793 -0 0.2077091845194034 -0.91102654309067932 0.12452428969491273 -0
		 -44.909942591153808 -4.316237249463942 8.2057005103855296 0.99999999999999989;
	setAttr ".pm[74]" -type "matrix" -0.0030034590684841571 -0.13658903133406097 -0.93271280790302069 0
		 0.91386293355353931 -0.22920633971674048 0.03062284741925856 0 -0.2312234507657755 -0.90411650611321481 0.13314588038347255 -0
		 -4.7466426727053639 -2.4632582302598176 8.0381703076231563 1;
	setAttr ".pm[75]" -type "matrix" 0.13658903133406108 -0.0030034590684841324 -0.93271280790302102 -0
		 0.22920633971674045 0.91386293355353954 0.030622847419258574 -0 0.90411650611321548 -0.23122345076577538 0.13314588038347261 -0
		 -12.774330652186473 2.2627939346554675 7.4992828664648643 1;
	setAttr ".pm[76]" -type "matrix" 0.0070434190464265696 -0.12590389504196237 -0.93419343057789117 -0
		 0.92816207382309124 0.16402943686847998 -0.015108766677596643 -0 0.16457314859370337 -0.91970719216898733 0.12519235483080821 -0
		 -31.041266167376069 -2.8787656123698446 8.0656835436470011 1;
	setAttr ".pm[77]" -type "matrix" 0.0070434190464265696 -0.12590389504196237 -0.93419343057789117 -0
		 0.92816207382309124 0.16402943686847998 -0.015108766677596643 -0 0.16457314859370337 -0.91970719216898733 0.12519235483080821 -0
		 -16.984323000634301 -3.5329436035334338 8.2044173178155688 1;
	setAttr ".pm[78]" -type "matrix" 0.038403451464190913 -0.13814880653076442 -0.93169675777221361 -0
		 0.94146118864897332 -0.022279744993075661 0.042109494228695712 0 -0.028191691272262669 -0.93222169385326981 0.13706461369018813 0
		 -73.934946686066169 6.1593496494336284 5.0660972267190294 1;
	setAttr ".pm[79]" -type "matrix" 0.038403451464190913 -0.13814880653076442 -0.93169675777221361 -0
		 0.94146118864897332 -0.022279744993075661 0.042109494228695712 0 -0.028191691272262669 -0.93222169385326981 0.13706461369018813 0
		 -59.491751320986133 6.4889585220264525 5.1311943229731858 1;
	setAttr ".pm[80]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[81]" -type "matrix" 1 -0 0 -0 -0 -0.082949189435633924 0.99655377776212928 0
		 0 -0.99655377776212928 -0.082949189435633924 -0 -0 0 -0 1;
	setAttr ".pm[82]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".pm[83]" -type "matrix" 1 -0 0 -0 -0 0 1 0 0 -1 0 -0 -0 0 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 84 ".ma";
	setAttr -s 84 ".dpf[0:83]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 84 ".lw";
	setAttr -s 84 ".lw";
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 84 ".ifcl";
	setAttr -s 84 ".ifcl";
createNode geomBind -n "geomBind1";
	rename -uid "6F2C6BF9-4E12-0199-AC51-B4AF4624C0DD";
	setAttr ".mi" 3;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 5;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "root.s" "pelvis.is";
connectAttr "pelvis.s" "spine_01.is";
connectAttr "spine_01.s" "spine_02.is";
connectAttr "spine_02.s" "spine_03.is";
connectAttr "spine_03.s" "spine_04.is";
connectAttr "spine_04.s" "spine_05.is";
connectAttr "spine_05.s" "neck_01.is";
connectAttr "neck_01.s" "neck_02.is";
connectAttr "neck_02.s" "head.is";
connectAttr "spine_05.s" "clavicle_l.is";
connectAttr "clavicle_l.s" "upperarm_l.is";
connectAttr "upperarm_l.s" "lowerarm_l.is";
connectAttr "lowerarm_l.s" "lowerarm_twist_02_l.is";
connectAttr "lowerarm_l.s" "lowerarm_twist_01_l.is";
connectAttr "lowerarm_l.s" "hand_l.is";
connectAttr "hand_l.s" "index_metacarpal_l.is";
connectAttr "index_metacarpal_l.s" "index_01_l.is";
connectAttr "index_01_l.s" "index_02_l.is";
connectAttr "index_02_l.s" "index_03_l.is";
connectAttr "hand_l.s" "middle_metacarpal_l.is";
connectAttr "middle_metacarpal_l.s" "middle_01_l.is";
connectAttr "middle_01_l.s" "middle_02_l.is";
connectAttr "middle_02_l.s" "middle_03_l.is";
connectAttr "hand_l.s" "thumb_01_l.is";
connectAttr "thumb_01_l.s" "thumb_02_l.is";
connectAttr "thumb_02_l.s" "thumb_03_l.is";
connectAttr "hand_l.s" "pinky_metacarpal_l.is";
connectAttr "pinky_metacarpal_l.s" "pinky_01_l.is";
connectAttr "pinky_01_l.s" "pinky_02_l.is";
connectAttr "pinky_02_l.s" "pinky_03_l.is";
connectAttr "hand_l.s" "ring_metacarpal_l.is";
connectAttr "ring_metacarpal_l.s" "ring_01_l.is";
connectAttr "ring_01_l.s" "ring_02_l.is";
connectAttr "ring_02_l.s" "ring_03_l.is";
connectAttr "upperarm_l.s" "upperarm_twist_01_l.is";
connectAttr "upperarm_l.s" "upperarm_twist_02_l.is";
connectAttr "spine_05.s" "clavicle_r.is";
connectAttr "clavicle_r.s" "upperarm_r.is";
connectAttr "upperarm_r.s" "lowerarm_r.is";
connectAttr "lowerarm_r.s" "lowerarm_twist_02_r.is";
connectAttr "lowerarm_r.s" "lowerarm_twist_01_r.is";
connectAttr "lowerarm_r.s" "hand_r.is";
connectAttr "hand_r.s" "pinky_metacarpal_r.is";
connectAttr "pinky_metacarpal_r.s" "pinky_01_r.is";
connectAttr "pinky_01_r.s" "pinky_02_r.is";
connectAttr "pinky_02_r.s" "pinky_03_r.is";
connectAttr "hand_r.s" "ring_metacarpal_r.is";
connectAttr "ring_metacarpal_r.s" "ring_01_r.is";
connectAttr "ring_01_r.s" "ring_02_r.is";
connectAttr "ring_02_r.s" "ring_03_r.is";
connectAttr "hand_r.s" "middle_metacarpal_r.is";
connectAttr "middle_metacarpal_r.s" "middle_01_r.is";
connectAttr "middle_01_r.s" "middle_02_r.is";
connectAttr "middle_02_r.s" "middle_03_r.is";
connectAttr "hand_r.s" "index_metacarpal_r.is";
connectAttr "index_metacarpal_r.s" "index_01_r.is";
connectAttr "index_01_r.s" "index_02_r.is";
connectAttr "index_02_r.s" "index_03_r.is";
connectAttr "hand_r.s" "thumb_01_r.is";
connectAttr "thumb_01_r.s" "thumb_02_r.is";
connectAttr "thumb_02_r.s" "thumb_03_r.is";
connectAttr "upperarm_r.s" "upperarm_twist_01_r.is";
connectAttr "upperarm_r.s" "upperarm_twist_02_r.is";
connectAttr "pelvis.s" "thigh_r.is";
connectAttr "thigh_r.s" "calf_r.is";
connectAttr "calf_r.s" "foot_r.is";
connectAttr "foot_r.s" "ball_r.is";
connectAttr "calf_r.s" "calf_twist_02_r.is";
connectAttr "calf_r.s" "calf_twist_01_r.is";
connectAttr "thigh_r.s" "thigh_twist_01_r.is";
connectAttr "thigh_r.s" "thigh_twist_02_r.is";
connectAttr "pelvis.s" "thigh_l.is";
connectAttr "thigh_l.s" "calf_l.is";
connectAttr "calf_l.s" "foot_l.is";
connectAttr "foot_l.s" "ball_l.is";
connectAttr "calf_l.s" "calf_twist_02_l.is";
connectAttr "calf_l.s" "calf_twist_01_l.is";
connectAttr "thigh_l.s" "thigh_twist_01_l.is";
connectAttr "thigh_l.s" "thigh_twist_02_l.is";
connectAttr "root.s" "ik_foot_root.is";
connectAttr "root.s" "ik_hand_root.is";
connectAttr "root.s" "interaction.is";
connectAttr "root.s" "center_of_mass.is";
connectAttr ":perspShape.wm" "SKM_Hollow_LodGroup.cm";
connectAttr ":perspShape.fl" "SKM_Hollow_LodGroup.fl";
connectAttr "SKM_Hollow_LodGroup.o[0]" "LOD0.lodv";
connectAttr "skinCluster8.og[0]" "HollowClothesShape.i";
connectAttr "skinCluster7.og[0]" "HollowSkinShape.i";
connectAttr "groupId1.id" "HollowSkinShape.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "HollowSkinShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SKM_Manny_LOD0SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SKM_Manny_LOD0SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SKM_Manny_Simple_LOD0SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SKM_Manny_Simple_LOD0SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SKM_Manny_LOD0SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SKM_Manny_LOD0SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SKM_Manny_Simple_LOD0SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SKM_Manny_Simple_LOD0SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "c2509_2.oc" "standardSurface3.bc";
connectAttr ":defaultColorMgtGlobals.cme" "c2509_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "c2509_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "c2509_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "c2509_1.ws";
connectAttr "place2dTexture3.c" "c2509_1.c";
connectAttr "place2dTexture3.tf" "c2509_1.tf";
connectAttr "place2dTexture3.rf" "c2509_1.rf";
connectAttr "place2dTexture3.mu" "c2509_1.mu";
connectAttr "place2dTexture3.mv" "c2509_1.mv";
connectAttr "place2dTexture3.s" "c2509_1.s";
connectAttr "place2dTexture3.wu" "c2509_1.wu";
connectAttr "place2dTexture3.wv" "c2509_1.wv";
connectAttr "place2dTexture3.re" "c2509_1.re";
connectAttr "place2dTexture3.of" "c2509_1.of";
connectAttr "place2dTexture3.r" "c2509_1.ro";
connectAttr "place2dTexture3.n" "c2509_1.n";
connectAttr "place2dTexture3.vt1" "c2509_1.vt1";
connectAttr "place2dTexture3.vt2" "c2509_1.vt2";
connectAttr "place2dTexture3.vt3" "c2509_1.vt3";
connectAttr "place2dTexture3.vc1" "c2509_1.vc1";
connectAttr "place2dTexture3.o" "c2509_1.uv";
connectAttr "place2dTexture3.ofs" "c2509_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "c2509_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "c2509_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "c2509_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "c2509_2.ws";
connectAttr "place2dTexture4.c" "c2509_2.c";
connectAttr "place2dTexture4.tf" "c2509_2.tf";
connectAttr "place2dTexture4.rf" "c2509_2.rf";
connectAttr "place2dTexture4.mu" "c2509_2.mu";
connectAttr "place2dTexture4.mv" "c2509_2.mv";
connectAttr "place2dTexture4.s" "c2509_2.s";
connectAttr "place2dTexture4.wu" "c2509_2.wu";
connectAttr "place2dTexture4.wv" "c2509_2.wv";
connectAttr "place2dTexture4.re" "c2509_2.re";
connectAttr "place2dTexture4.of" "c2509_2.of";
connectAttr "place2dTexture4.r" "c2509_2.ro";
connectAttr "place2dTexture4.n" "c2509_2.n";
connectAttr "place2dTexture4.vt1" "c2509_2.vt1";
connectAttr "place2dTexture4.vt2" "c2509_2.vt2";
connectAttr "place2dTexture4.vt3" "c2509_2.vt3";
connectAttr "place2dTexture4.vc1" "c2509_2.vc1";
connectAttr "place2dTexture4.o" "c2509_2.uv";
connectAttr "place2dTexture4.ofs" "c2509_2.fs";
connectAttr "standardSurface3.oc" "standardSurface3SG.ss";
connectAttr "standardSurface2SG.msg" "materialInfo12.sg";
connectAttr "standardSurface3SG.msg" "materialInfo13.sg";
connectAttr "standardSurface3.msg" "materialInfo13.m";
connectAttr "c2509_2.msg" "materialInfo13.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "place2dTexture5.o" "checker1.uv";
connectAttr "place2dTexture5.ofs" "checker1.fs";
connectAttr "c2509_1.oc" "blinn1.c";
connectAttr "remapValue1.ov" "blinn1.itr";
connectAttr "remapValue1.ov" "blinn1.itg";
connectAttr "remapValue1.ov" "blinn1.itb";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "HollowClothesShape.iog" "blinn1SG.dsm" -na;
connectAttr "HollowSkinShape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId1.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo14.sg";
connectAttr "blinn1.msg" "materialInfo14.m";
connectAttr "c2509_1.msg" "materialInfo14.t" -na;
connectAttr "c2509_1.oa" "remapValue1.i";
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "standardSurface2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "c2509_1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "checker1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "remapValue1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "bump2d1.o" "MI_Manny_02.n";
connectAttr "MI_Manny_02.oc" "SKM_Manny_LOD0SG.ss";
connectAttr "SKM_Manny_LOD0SG.msg" "materialInfo15.sg";
connectAttr "MI_Manny_02.msg" "materialInfo15.m";
connectAttr "bump2d2.o" "MI_Manny_01.n";
connectAttr "MI_Manny_01.oc" "SKM_Manny_LOD0SG1.ss";
connectAttr "SKM_Manny_LOD0SG1.msg" "materialInfo16.sg";
connectAttr "MI_Manny_01.msg" "materialInfo16.m";
connectAttr "T_Manny_02_N.oa" "bump2d1.bv";
connectAttr "place2dTexture6.o" "T_Manny_02_N.uv";
connectAttr "place2dTexture6.ofu" "T_Manny_02_N.ofu";
connectAttr "place2dTexture6.ofv" "T_Manny_02_N.ofv";
connectAttr "place2dTexture6.rf" "T_Manny_02_N.rf";
connectAttr "place2dTexture6.reu" "T_Manny_02_N.reu";
connectAttr "place2dTexture6.rev" "T_Manny_02_N.rev";
connectAttr "place2dTexture6.vt1" "T_Manny_02_N.vt1";
connectAttr "place2dTexture6.vt2" "T_Manny_02_N.vt2";
connectAttr "place2dTexture6.vt3" "T_Manny_02_N.vt3";
connectAttr "place2dTexture6.vc1" "T_Manny_02_N.vc1";
connectAttr "place2dTexture6.ofs" "T_Manny_02_N.fs";
connectAttr ":defaultColorMgtGlobals.cme" "T_Manny_02_N.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "T_Manny_02_N.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "T_Manny_02_N.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "T_Manny_02_N.ws";
connectAttr "T_Manny_01_N.oa" "bump2d2.bv";
connectAttr "place2dTexture7.o" "T_Manny_01_N.uv";
connectAttr "place2dTexture7.ofu" "T_Manny_01_N.ofu";
connectAttr "place2dTexture7.ofv" "T_Manny_01_N.ofv";
connectAttr "place2dTexture7.rf" "T_Manny_01_N.rf";
connectAttr "place2dTexture7.reu" "T_Manny_01_N.reu";
connectAttr "place2dTexture7.rev" "T_Manny_01_N.rev";
connectAttr "place2dTexture7.vt1" "T_Manny_01_N.vt1";
connectAttr "place2dTexture7.vt2" "T_Manny_01_N.vt2";
connectAttr "place2dTexture7.vt3" "T_Manny_01_N.vt3";
connectAttr "place2dTexture7.vc1" "T_Manny_01_N.vc1";
connectAttr "place2dTexture7.ofs" "T_Manny_01_N.fs";
connectAttr ":defaultColorMgtGlobals.cme" "T_Manny_01_N.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "T_Manny_01_N.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "T_Manny_01_N.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "T_Manny_01_N.ws";
connectAttr "HollowSkinShapeOrig.w" "skinCluster7GroupParts.ig";
connectAttr "groupId1.id" "skinCluster7GroupParts.gi";
connectAttr "bump2d3.o" "MI_Manny_03.n";
connectAttr "MI_Manny_03.oc" "SKM_Manny_Simple_LOD0SG.ss";
connectAttr "SKM_Manny_Simple_LOD0SG.msg" "materialInfo17.sg";
connectAttr "MI_Manny_03.msg" "materialInfo17.m";
connectAttr "bump2d4.o" "MI_Manny_04.n";
connectAttr "MI_Manny_04.oc" "SKM_Manny_Simple_LOD0SG1.ss";
connectAttr "SKM_Manny_Simple_LOD0SG1.msg" "materialInfo18.sg";
connectAttr "MI_Manny_04.msg" "materialInfo18.m";
connectAttr "T_Manny_01_N.oa" "bump2d3.bv";
connectAttr "T_Manny_02_N.oa" "bump2d4.bv";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "HollowSkinShapeOrig.o" "skinCluster7.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "root.wm" "skinCluster7.ma[0]";
connectAttr "pelvis.wm" "skinCluster7.ma[1]";
connectAttr "spine_01.wm" "skinCluster7.ma[2]";
connectAttr "spine_02.wm" "skinCluster7.ma[3]";
connectAttr "spine_03.wm" "skinCluster7.ma[4]";
connectAttr "spine_04.wm" "skinCluster7.ma[5]";
connectAttr "spine_05.wm" "skinCluster7.ma[6]";
connectAttr "neck_01.wm" "skinCluster7.ma[7]";
connectAttr "neck_02.wm" "skinCluster7.ma[8]";
connectAttr "head.wm" "skinCluster7.ma[9]";
connectAttr "clavicle_l.wm" "skinCluster7.ma[10]";
connectAttr "upperarm_l.wm" "skinCluster7.ma[11]";
connectAttr "lowerarm_l.wm" "skinCluster7.ma[12]";
connectAttr "lowerarm_twist_02_l.wm" "skinCluster7.ma[13]";
connectAttr "lowerarm_twist_01_l.wm" "skinCluster7.ma[14]";
connectAttr "hand_l.wm" "skinCluster7.ma[15]";
connectAttr "index_metacarpal_l.wm" "skinCluster7.ma[16]";
connectAttr "index_01_l.wm" "skinCluster7.ma[17]";
connectAttr "index_02_l.wm" "skinCluster7.ma[18]";
connectAttr "index_03_l.wm" "skinCluster7.ma[19]";
connectAttr "middle_metacarpal_l.wm" "skinCluster7.ma[20]";
connectAttr "middle_01_l.wm" "skinCluster7.ma[21]";
connectAttr "middle_02_l.wm" "skinCluster7.ma[22]";
connectAttr "middle_03_l.wm" "skinCluster7.ma[23]";
connectAttr "thumb_01_l.wm" "skinCluster7.ma[24]";
connectAttr "thumb_02_l.wm" "skinCluster7.ma[25]";
connectAttr "thumb_03_l.wm" "skinCluster7.ma[26]";
connectAttr "pinky_metacarpal_l.wm" "skinCluster7.ma[27]";
connectAttr "pinky_01_l.wm" "skinCluster7.ma[28]";
connectAttr "pinky_02_l.wm" "skinCluster7.ma[29]";
connectAttr "pinky_03_l.wm" "skinCluster7.ma[30]";
connectAttr "ring_metacarpal_l.wm" "skinCluster7.ma[31]";
connectAttr "ring_01_l.wm" "skinCluster7.ma[32]";
connectAttr "ring_02_l.wm" "skinCluster7.ma[33]";
connectAttr "ring_03_l.wm" "skinCluster7.ma[34]";
connectAttr "upperarm_twist_01_l.wm" "skinCluster7.ma[35]";
connectAttr "upperarm_twist_02_l.wm" "skinCluster7.ma[36]";
connectAttr "clavicle_r.wm" "skinCluster7.ma[37]";
connectAttr "upperarm_r.wm" "skinCluster7.ma[38]";
connectAttr "lowerarm_r.wm" "skinCluster7.ma[39]";
connectAttr "lowerarm_twist_02_r.wm" "skinCluster7.ma[40]";
connectAttr "lowerarm_twist_01_r.wm" "skinCluster7.ma[41]";
connectAttr "hand_r.wm" "skinCluster7.ma[42]";
connectAttr "pinky_metacarpal_r.wm" "skinCluster7.ma[43]";
connectAttr "pinky_01_r.wm" "skinCluster7.ma[44]";
connectAttr "pinky_02_r.wm" "skinCluster7.ma[45]";
connectAttr "pinky_03_r.wm" "skinCluster7.ma[46]";
connectAttr "ring_metacarpal_r.wm" "skinCluster7.ma[47]";
connectAttr "ring_01_r.wm" "skinCluster7.ma[48]";
connectAttr "ring_02_r.wm" "skinCluster7.ma[49]";
connectAttr "ring_03_r.wm" "skinCluster7.ma[50]";
connectAttr "middle_metacarpal_r.wm" "skinCluster7.ma[51]";
connectAttr "middle_01_r.wm" "skinCluster7.ma[52]";
connectAttr "middle_02_r.wm" "skinCluster7.ma[53]";
connectAttr "middle_03_r.wm" "skinCluster7.ma[54]";
connectAttr "index_metacarpal_r.wm" "skinCluster7.ma[55]";
connectAttr "index_01_r.wm" "skinCluster7.ma[56]";
connectAttr "index_02_r.wm" "skinCluster7.ma[57]";
connectAttr "index_03_r.wm" "skinCluster7.ma[58]";
connectAttr "thumb_01_r.wm" "skinCluster7.ma[59]";
connectAttr "thumb_02_r.wm" "skinCluster7.ma[60]";
connectAttr "thumb_03_r.wm" "skinCluster7.ma[61]";
connectAttr "upperarm_twist_01_r.wm" "skinCluster7.ma[62]";
connectAttr "upperarm_twist_02_r.wm" "skinCluster7.ma[63]";
connectAttr "thigh_r.wm" "skinCluster7.ma[64]";
connectAttr "calf_r.wm" "skinCluster7.ma[65]";
connectAttr "foot_r.wm" "skinCluster7.ma[66]";
connectAttr "ball_r.wm" "skinCluster7.ma[67]";
connectAttr "calf_twist_02_r.wm" "skinCluster7.ma[68]";
connectAttr "calf_twist_01_r.wm" "skinCluster7.ma[69]";
connectAttr "thigh_twist_01_r.wm" "skinCluster7.ma[70]";
connectAttr "thigh_twist_02_r.wm" "skinCluster7.ma[71]";
connectAttr "thigh_l.wm" "skinCluster7.ma[72]";
connectAttr "calf_l.wm" "skinCluster7.ma[73]";
connectAttr "foot_l.wm" "skinCluster7.ma[74]";
connectAttr "ball_l.wm" "skinCluster7.ma[75]";
connectAttr "calf_twist_02_l.wm" "skinCluster7.ma[76]";
connectAttr "calf_twist_01_l.wm" "skinCluster7.ma[77]";
connectAttr "thigh_twist_01_l.wm" "skinCluster7.ma[78]";
connectAttr "thigh_twist_02_l.wm" "skinCluster7.ma[79]";
connectAttr "ik_foot_root.wm" "skinCluster7.ma[80]";
connectAttr "ik_hand_root.wm" "skinCluster7.ma[81]";
connectAttr "interaction.wm" "skinCluster7.ma[82]";
connectAttr "center_of_mass.wm" "skinCluster7.ma[83]";
connectAttr "root.liw" "skinCluster7.lw[0]";
connectAttr "pelvis.liw" "skinCluster7.lw[1]";
connectAttr "spine_01.liw" "skinCluster7.lw[2]";
connectAttr "spine_02.liw" "skinCluster7.lw[3]";
connectAttr "spine_03.liw" "skinCluster7.lw[4]";
connectAttr "spine_04.liw" "skinCluster7.lw[5]";
connectAttr "spine_05.liw" "skinCluster7.lw[6]";
connectAttr "neck_01.liw" "skinCluster7.lw[7]";
connectAttr "neck_02.liw" "skinCluster7.lw[8]";
connectAttr "head.liw" "skinCluster7.lw[9]";
connectAttr "clavicle_l.liw" "skinCluster7.lw[10]";
connectAttr "upperarm_l.liw" "skinCluster7.lw[11]";
connectAttr "lowerarm_l.liw" "skinCluster7.lw[12]";
connectAttr "lowerarm_twist_02_l.liw" "skinCluster7.lw[13]";
connectAttr "lowerarm_twist_01_l.liw" "skinCluster7.lw[14]";
connectAttr "hand_l.liw" "skinCluster7.lw[15]";
connectAttr "index_metacarpal_l.liw" "skinCluster7.lw[16]";
connectAttr "index_01_l.liw" "skinCluster7.lw[17]";
connectAttr "index_02_l.liw" "skinCluster7.lw[18]";
connectAttr "index_03_l.liw" "skinCluster7.lw[19]";
connectAttr "middle_metacarpal_l.liw" "skinCluster7.lw[20]";
connectAttr "middle_01_l.liw" "skinCluster7.lw[21]";
connectAttr "middle_02_l.liw" "skinCluster7.lw[22]";
connectAttr "middle_03_l.liw" "skinCluster7.lw[23]";
connectAttr "thumb_01_l.liw" "skinCluster7.lw[24]";
connectAttr "thumb_02_l.liw" "skinCluster7.lw[25]";
connectAttr "thumb_03_l.liw" "skinCluster7.lw[26]";
connectAttr "pinky_metacarpal_l.liw" "skinCluster7.lw[27]";
connectAttr "pinky_01_l.liw" "skinCluster7.lw[28]";
connectAttr "pinky_02_l.liw" "skinCluster7.lw[29]";
connectAttr "pinky_03_l.liw" "skinCluster7.lw[30]";
connectAttr "ring_metacarpal_l.liw" "skinCluster7.lw[31]";
connectAttr "ring_01_l.liw" "skinCluster7.lw[32]";
connectAttr "ring_02_l.liw" "skinCluster7.lw[33]";
connectAttr "ring_03_l.liw" "skinCluster7.lw[34]";
connectAttr "upperarm_twist_01_l.liw" "skinCluster7.lw[35]";
connectAttr "upperarm_twist_02_l.liw" "skinCluster7.lw[36]";
connectAttr "clavicle_r.liw" "skinCluster7.lw[37]";
connectAttr "upperarm_r.liw" "skinCluster7.lw[38]";
connectAttr "lowerarm_r.liw" "skinCluster7.lw[39]";
connectAttr "lowerarm_twist_02_r.liw" "skinCluster7.lw[40]";
connectAttr "lowerarm_twist_01_r.liw" "skinCluster7.lw[41]";
connectAttr "hand_r.liw" "skinCluster7.lw[42]";
connectAttr "pinky_metacarpal_r.liw" "skinCluster7.lw[43]";
connectAttr "pinky_01_r.liw" "skinCluster7.lw[44]";
connectAttr "pinky_02_r.liw" "skinCluster7.lw[45]";
connectAttr "pinky_03_r.liw" "skinCluster7.lw[46]";
connectAttr "ring_metacarpal_r.liw" "skinCluster7.lw[47]";
connectAttr "ring_01_r.liw" "skinCluster7.lw[48]";
connectAttr "ring_02_r.liw" "skinCluster7.lw[49]";
connectAttr "ring_03_r.liw" "skinCluster7.lw[50]";
connectAttr "middle_metacarpal_r.liw" "skinCluster7.lw[51]";
connectAttr "middle_01_r.liw" "skinCluster7.lw[52]";
connectAttr "middle_02_r.liw" "skinCluster7.lw[53]";
connectAttr "middle_03_r.liw" "skinCluster7.lw[54]";
connectAttr "index_metacarpal_r.liw" "skinCluster7.lw[55]";
connectAttr "index_01_r.liw" "skinCluster7.lw[56]";
connectAttr "index_02_r.liw" "skinCluster7.lw[57]";
connectAttr "index_03_r.liw" "skinCluster7.lw[58]";
connectAttr "thumb_01_r.liw" "skinCluster7.lw[59]";
connectAttr "thumb_02_r.liw" "skinCluster7.lw[60]";
connectAttr "thumb_03_r.liw" "skinCluster7.lw[61]";
connectAttr "upperarm_twist_01_r.liw" "skinCluster7.lw[62]";
connectAttr "upperarm_twist_02_r.liw" "skinCluster7.lw[63]";
connectAttr "thigh_r.liw" "skinCluster7.lw[64]";
connectAttr "calf_r.liw" "skinCluster7.lw[65]";
connectAttr "foot_r.liw" "skinCluster7.lw[66]";
connectAttr "ball_r.liw" "skinCluster7.lw[67]";
connectAttr "calf_twist_02_r.liw" "skinCluster7.lw[68]";
connectAttr "calf_twist_01_r.liw" "skinCluster7.lw[69]";
connectAttr "thigh_twist_01_r.liw" "skinCluster7.lw[70]";
connectAttr "thigh_twist_02_r.liw" "skinCluster7.lw[71]";
connectAttr "thigh_l.liw" "skinCluster7.lw[72]";
connectAttr "calf_l.liw" "skinCluster7.lw[73]";
connectAttr "foot_l.liw" "skinCluster7.lw[74]";
connectAttr "ball_l.liw" "skinCluster7.lw[75]";
connectAttr "calf_twist_02_l.liw" "skinCluster7.lw[76]";
connectAttr "calf_twist_01_l.liw" "skinCluster7.lw[77]";
connectAttr "thigh_twist_01_l.liw" "skinCluster7.lw[78]";
connectAttr "thigh_twist_02_l.liw" "skinCluster7.lw[79]";
connectAttr "ik_foot_root.liw" "skinCluster7.lw[80]";
connectAttr "ik_hand_root.liw" "skinCluster7.lw[81]";
connectAttr "interaction.liw" "skinCluster7.lw[82]";
connectAttr "center_of_mass.liw" "skinCluster7.lw[83]";
connectAttr "root.obcc" "skinCluster7.ifcl[0]";
connectAttr "pelvis.obcc" "skinCluster7.ifcl[1]";
connectAttr "spine_01.obcc" "skinCluster7.ifcl[2]";
connectAttr "spine_02.obcc" "skinCluster7.ifcl[3]";
connectAttr "spine_03.obcc" "skinCluster7.ifcl[4]";
connectAttr "spine_04.obcc" "skinCluster7.ifcl[5]";
connectAttr "spine_05.obcc" "skinCluster7.ifcl[6]";
connectAttr "neck_01.obcc" "skinCluster7.ifcl[7]";
connectAttr "neck_02.obcc" "skinCluster7.ifcl[8]";
connectAttr "head.obcc" "skinCluster7.ifcl[9]";
connectAttr "clavicle_l.obcc" "skinCluster7.ifcl[10]";
connectAttr "upperarm_l.obcc" "skinCluster7.ifcl[11]";
connectAttr "lowerarm_l.obcc" "skinCluster7.ifcl[12]";
connectAttr "lowerarm_twist_02_l.obcc" "skinCluster7.ifcl[13]";
connectAttr "lowerarm_twist_01_l.obcc" "skinCluster7.ifcl[14]";
connectAttr "hand_l.obcc" "skinCluster7.ifcl[15]";
connectAttr "index_metacarpal_l.obcc" "skinCluster7.ifcl[16]";
connectAttr "index_01_l.obcc" "skinCluster7.ifcl[17]";
connectAttr "index_02_l.obcc" "skinCluster7.ifcl[18]";
connectAttr "index_03_l.obcc" "skinCluster7.ifcl[19]";
connectAttr "middle_metacarpal_l.obcc" "skinCluster7.ifcl[20]";
connectAttr "middle_01_l.obcc" "skinCluster7.ifcl[21]";
connectAttr "middle_02_l.obcc" "skinCluster7.ifcl[22]";
connectAttr "middle_03_l.obcc" "skinCluster7.ifcl[23]";
connectAttr "thumb_01_l.obcc" "skinCluster7.ifcl[24]";
connectAttr "thumb_02_l.obcc" "skinCluster7.ifcl[25]";
connectAttr "thumb_03_l.obcc" "skinCluster7.ifcl[26]";
connectAttr "pinky_metacarpal_l.obcc" "skinCluster7.ifcl[27]";
connectAttr "pinky_01_l.obcc" "skinCluster7.ifcl[28]";
connectAttr "pinky_02_l.obcc" "skinCluster7.ifcl[29]";
connectAttr "pinky_03_l.obcc" "skinCluster7.ifcl[30]";
connectAttr "ring_metacarpal_l.obcc" "skinCluster7.ifcl[31]";
connectAttr "ring_01_l.obcc" "skinCluster7.ifcl[32]";
connectAttr "ring_02_l.obcc" "skinCluster7.ifcl[33]";
connectAttr "ring_03_l.obcc" "skinCluster7.ifcl[34]";
connectAttr "upperarm_twist_01_l.obcc" "skinCluster7.ifcl[35]";
connectAttr "upperarm_twist_02_l.obcc" "skinCluster7.ifcl[36]";
connectAttr "clavicle_r.obcc" "skinCluster7.ifcl[37]";
connectAttr "upperarm_r.obcc" "skinCluster7.ifcl[38]";
connectAttr "lowerarm_r.obcc" "skinCluster7.ifcl[39]";
connectAttr "lowerarm_twist_02_r.obcc" "skinCluster7.ifcl[40]";
connectAttr "lowerarm_twist_01_r.obcc" "skinCluster7.ifcl[41]";
connectAttr "hand_r.obcc" "skinCluster7.ifcl[42]";
connectAttr "pinky_metacarpal_r.obcc" "skinCluster7.ifcl[43]";
connectAttr "pinky_01_r.obcc" "skinCluster7.ifcl[44]";
connectAttr "pinky_02_r.obcc" "skinCluster7.ifcl[45]";
connectAttr "pinky_03_r.obcc" "skinCluster7.ifcl[46]";
connectAttr "ring_metacarpal_r.obcc" "skinCluster7.ifcl[47]";
connectAttr "ring_01_r.obcc" "skinCluster7.ifcl[48]";
connectAttr "ring_02_r.obcc" "skinCluster7.ifcl[49]";
connectAttr "ring_03_r.obcc" "skinCluster7.ifcl[50]";
connectAttr "middle_metacarpal_r.obcc" "skinCluster7.ifcl[51]";
connectAttr "middle_01_r.obcc" "skinCluster7.ifcl[52]";
connectAttr "middle_02_r.obcc" "skinCluster7.ifcl[53]";
connectAttr "middle_03_r.obcc" "skinCluster7.ifcl[54]";
connectAttr "index_metacarpal_r.obcc" "skinCluster7.ifcl[55]";
connectAttr "index_01_r.obcc" "skinCluster7.ifcl[56]";
connectAttr "index_02_r.obcc" "skinCluster7.ifcl[57]";
connectAttr "index_03_r.obcc" "skinCluster7.ifcl[58]";
connectAttr "thumb_01_r.obcc" "skinCluster7.ifcl[59]";
connectAttr "thumb_02_r.obcc" "skinCluster7.ifcl[60]";
connectAttr "thumb_03_r.obcc" "skinCluster7.ifcl[61]";
connectAttr "upperarm_twist_01_r.obcc" "skinCluster7.ifcl[62]";
connectAttr "upperarm_twist_02_r.obcc" "skinCluster7.ifcl[63]";
connectAttr "thigh_r.obcc" "skinCluster7.ifcl[64]";
connectAttr "calf_r.obcc" "skinCluster7.ifcl[65]";
connectAttr "foot_r.obcc" "skinCluster7.ifcl[66]";
connectAttr "ball_r.obcc" "skinCluster7.ifcl[67]";
connectAttr "calf_twist_02_r.obcc" "skinCluster7.ifcl[68]";
connectAttr "calf_twist_01_r.obcc" "skinCluster7.ifcl[69]";
connectAttr "thigh_twist_01_r.obcc" "skinCluster7.ifcl[70]";
connectAttr "thigh_twist_02_r.obcc" "skinCluster7.ifcl[71]";
connectAttr "thigh_l.obcc" "skinCluster7.ifcl[72]";
connectAttr "calf_l.obcc" "skinCluster7.ifcl[73]";
connectAttr "foot_l.obcc" "skinCluster7.ifcl[74]";
connectAttr "ball_l.obcc" "skinCluster7.ifcl[75]";
connectAttr "calf_twist_02_l.obcc" "skinCluster7.ifcl[76]";
connectAttr "calf_twist_01_l.obcc" "skinCluster7.ifcl[77]";
connectAttr "thigh_twist_01_l.obcc" "skinCluster7.ifcl[78]";
connectAttr "thigh_twist_02_l.obcc" "skinCluster7.ifcl[79]";
connectAttr "ik_foot_root.obcc" "skinCluster7.ifcl[80]";
connectAttr "ik_hand_root.obcc" "skinCluster7.ifcl[81]";
connectAttr "interaction.obcc" "skinCluster7.ifcl[82]";
connectAttr "center_of_mass.obcc" "skinCluster7.ifcl[83]";
connectAttr "geomBind1.scs" "skinCluster7.gb";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "pelvis.msg" "bindPose1.m[1]";
connectAttr "spine_01.msg" "bindPose1.m[2]";
connectAttr "spine_02.msg" "bindPose1.m[3]";
connectAttr "spine_03.msg" "bindPose1.m[4]";
connectAttr "spine_04.msg" "bindPose1.m[5]";
connectAttr "spine_05.msg" "bindPose1.m[6]";
connectAttr "neck_01.msg" "bindPose1.m[7]";
connectAttr "neck_02.msg" "bindPose1.m[8]";
connectAttr "head.msg" "bindPose1.m[9]";
connectAttr "clavicle_l.msg" "bindPose1.m[10]";
connectAttr "upperarm_l.msg" "bindPose1.m[11]";
connectAttr "lowerarm_l.msg" "bindPose1.m[12]";
connectAttr "lowerarm_twist_02_l.msg" "bindPose1.m[13]";
connectAttr "lowerarm_twist_01_l.msg" "bindPose1.m[14]";
connectAttr "hand_l.msg" "bindPose1.m[15]";
connectAttr "index_metacarpal_l.msg" "bindPose1.m[16]";
connectAttr "index_01_l.msg" "bindPose1.m[17]";
connectAttr "index_02_l.msg" "bindPose1.m[18]";
connectAttr "index_03_l.msg" "bindPose1.m[19]";
connectAttr "middle_metacarpal_l.msg" "bindPose1.m[20]";
connectAttr "middle_01_l.msg" "bindPose1.m[21]";
connectAttr "middle_02_l.msg" "bindPose1.m[22]";
connectAttr "middle_03_l.msg" "bindPose1.m[23]";
connectAttr "thumb_01_l.msg" "bindPose1.m[24]";
connectAttr "thumb_02_l.msg" "bindPose1.m[25]";
connectAttr "thumb_03_l.msg" "bindPose1.m[26]";
connectAttr "pinky_metacarpal_l.msg" "bindPose1.m[27]";
connectAttr "pinky_01_l.msg" "bindPose1.m[28]";
connectAttr "pinky_02_l.msg" "bindPose1.m[29]";
connectAttr "pinky_03_l.msg" "bindPose1.m[30]";
connectAttr "ring_metacarpal_l.msg" "bindPose1.m[31]";
connectAttr "ring_01_l.msg" "bindPose1.m[32]";
connectAttr "ring_02_l.msg" "bindPose1.m[33]";
connectAttr "ring_03_l.msg" "bindPose1.m[34]";
connectAttr "upperarm_twist_01_l.msg" "bindPose1.m[35]";
connectAttr "upperarm_twist_02_l.msg" "bindPose1.m[36]";
connectAttr "clavicle_r.msg" "bindPose1.m[37]";
connectAttr "upperarm_r.msg" "bindPose1.m[38]";
connectAttr "lowerarm_r.msg" "bindPose1.m[39]";
connectAttr "lowerarm_twist_02_r.msg" "bindPose1.m[40]";
connectAttr "lowerarm_twist_01_r.msg" "bindPose1.m[41]";
connectAttr "hand_r.msg" "bindPose1.m[42]";
connectAttr "pinky_metacarpal_r.msg" "bindPose1.m[43]";
connectAttr "pinky_01_r.msg" "bindPose1.m[44]";
connectAttr "pinky_02_r.msg" "bindPose1.m[45]";
connectAttr "pinky_03_r.msg" "bindPose1.m[46]";
connectAttr "ring_metacarpal_r.msg" "bindPose1.m[47]";
connectAttr "ring_01_r.msg" "bindPose1.m[48]";
connectAttr "ring_02_r.msg" "bindPose1.m[49]";
connectAttr "ring_03_r.msg" "bindPose1.m[50]";
connectAttr "middle_metacarpal_r.msg" "bindPose1.m[51]";
connectAttr "middle_01_r.msg" "bindPose1.m[52]";
connectAttr "middle_02_r.msg" "bindPose1.m[53]";
connectAttr "middle_03_r.msg" "bindPose1.m[54]";
connectAttr "index_metacarpal_r.msg" "bindPose1.m[55]";
connectAttr "index_01_r.msg" "bindPose1.m[56]";
connectAttr "index_02_r.msg" "bindPose1.m[57]";
connectAttr "index_03_r.msg" "bindPose1.m[58]";
connectAttr "thumb_01_r.msg" "bindPose1.m[59]";
connectAttr "thumb_02_r.msg" "bindPose1.m[60]";
connectAttr "thumb_03_r.msg" "bindPose1.m[61]";
connectAttr "upperarm_twist_01_r.msg" "bindPose1.m[62]";
connectAttr "upperarm_twist_02_r.msg" "bindPose1.m[63]";
connectAttr "thigh_r.msg" "bindPose1.m[64]";
connectAttr "calf_r.msg" "bindPose1.m[65]";
connectAttr "foot_r.msg" "bindPose1.m[66]";
connectAttr "ball_r.msg" "bindPose1.m[67]";
connectAttr "calf_twist_02_r.msg" "bindPose1.m[68]";
connectAttr "calf_twist_01_r.msg" "bindPose1.m[69]";
connectAttr "thigh_twist_01_r.msg" "bindPose1.m[70]";
connectAttr "thigh_twist_02_r.msg" "bindPose1.m[71]";
connectAttr "thigh_l.msg" "bindPose1.m[72]";
connectAttr "calf_l.msg" "bindPose1.m[73]";
connectAttr "foot_l.msg" "bindPose1.m[74]";
connectAttr "ball_l.msg" "bindPose1.m[75]";
connectAttr "calf_twist_02_l.msg" "bindPose1.m[76]";
connectAttr "calf_twist_01_l.msg" "bindPose1.m[77]";
connectAttr "thigh_twist_01_l.msg" "bindPose1.m[78]";
connectAttr "thigh_twist_02_l.msg" "bindPose1.m[79]";
connectAttr "ik_foot_root.msg" "bindPose1.m[80]";
connectAttr "ik_hand_root.msg" "bindPose1.m[81]";
connectAttr "interaction.msg" "bindPose1.m[82]";
connectAttr "center_of_mass.msg" "bindPose1.m[83]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[6]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[12]" "bindPose1.p[14]";
connectAttr "bindPose1.m[12]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[15]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[15]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[15]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[15]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[11]" "bindPose1.p[35]";
connectAttr "bindPose1.m[11]" "bindPose1.p[36]";
connectAttr "bindPose1.m[6]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[39]" "bindPose1.p[41]";
connectAttr "bindPose1.m[39]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[42]" "bindPose1.p[47]";
connectAttr "bindPose1.m[47]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[42]" "bindPose1.p[51]";
connectAttr "bindPose1.m[51]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "bindPose1.m[53]" "bindPose1.p[54]";
connectAttr "bindPose1.m[42]" "bindPose1.p[55]";
connectAttr "bindPose1.m[55]" "bindPose1.p[56]";
connectAttr "bindPose1.m[56]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[42]" "bindPose1.p[59]";
connectAttr "bindPose1.m[59]" "bindPose1.p[60]";
connectAttr "bindPose1.m[60]" "bindPose1.p[61]";
connectAttr "bindPose1.m[38]" "bindPose1.p[62]";
connectAttr "bindPose1.m[38]" "bindPose1.p[63]";
connectAttr "bindPose1.m[1]" "bindPose1.p[64]";
connectAttr "bindPose1.m[64]" "bindPose1.p[65]";
connectAttr "bindPose1.m[65]" "bindPose1.p[66]";
connectAttr "bindPose1.m[66]" "bindPose1.p[67]";
connectAttr "bindPose1.m[65]" "bindPose1.p[68]";
connectAttr "bindPose1.m[65]" "bindPose1.p[69]";
connectAttr "bindPose1.m[64]" "bindPose1.p[70]";
connectAttr "bindPose1.m[64]" "bindPose1.p[71]";
connectAttr "bindPose1.m[1]" "bindPose1.p[72]";
connectAttr "bindPose1.m[72]" "bindPose1.p[73]";
connectAttr "bindPose1.m[73]" "bindPose1.p[74]";
connectAttr "bindPose1.m[74]" "bindPose1.p[75]";
connectAttr "bindPose1.m[73]" "bindPose1.p[76]";
connectAttr "bindPose1.m[73]" "bindPose1.p[77]";
connectAttr "bindPose1.m[72]" "bindPose1.p[78]";
connectAttr "bindPose1.m[72]" "bindPose1.p[79]";
connectAttr "bindPose1.m[0]" "bindPose1.p[80]";
connectAttr "bindPose1.m[0]" "bindPose1.p[81]";
connectAttr "bindPose1.m[0]" "bindPose1.p[82]";
connectAttr "bindPose1.m[0]" "bindPose1.p[83]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "pelvis.bps" "bindPose1.wm[1]";
connectAttr "spine_01.bps" "bindPose1.wm[2]";
connectAttr "spine_02.bps" "bindPose1.wm[3]";
connectAttr "spine_03.bps" "bindPose1.wm[4]";
connectAttr "spine_04.bps" "bindPose1.wm[5]";
connectAttr "spine_05.bps" "bindPose1.wm[6]";
connectAttr "neck_01.bps" "bindPose1.wm[7]";
connectAttr "neck_02.bps" "bindPose1.wm[8]";
connectAttr "head.bps" "bindPose1.wm[9]";
connectAttr "clavicle_l.bps" "bindPose1.wm[10]";
connectAttr "upperarm_l.bps" "bindPose1.wm[11]";
connectAttr "lowerarm_l.bps" "bindPose1.wm[12]";
connectAttr "lowerarm_twist_02_l.bps" "bindPose1.wm[13]";
connectAttr "lowerarm_twist_01_l.bps" "bindPose1.wm[14]";
connectAttr "hand_l.bps" "bindPose1.wm[15]";
connectAttr "index_metacarpal_l.bps" "bindPose1.wm[16]";
connectAttr "index_01_l.bps" "bindPose1.wm[17]";
connectAttr "index_02_l.bps" "bindPose1.wm[18]";
connectAttr "index_03_l.bps" "bindPose1.wm[19]";
connectAttr "middle_metacarpal_l.bps" "bindPose1.wm[20]";
connectAttr "middle_01_l.bps" "bindPose1.wm[21]";
connectAttr "middle_02_l.bps" "bindPose1.wm[22]";
connectAttr "middle_03_l.bps" "bindPose1.wm[23]";
connectAttr "thumb_01_l.bps" "bindPose1.wm[24]";
connectAttr "thumb_02_l.bps" "bindPose1.wm[25]";
connectAttr "thumb_03_l.bps" "bindPose1.wm[26]";
connectAttr "pinky_metacarpal_l.bps" "bindPose1.wm[27]";
connectAttr "pinky_01_l.bps" "bindPose1.wm[28]";
connectAttr "pinky_02_l.bps" "bindPose1.wm[29]";
connectAttr "pinky_03_l.bps" "bindPose1.wm[30]";
connectAttr "ring_metacarpal_l.bps" "bindPose1.wm[31]";
connectAttr "ring_01_l.bps" "bindPose1.wm[32]";
connectAttr "ring_02_l.bps" "bindPose1.wm[33]";
connectAttr "ring_03_l.bps" "bindPose1.wm[34]";
connectAttr "upperarm_twist_01_l.bps" "bindPose1.wm[35]";
connectAttr "upperarm_twist_02_l.bps" "bindPose1.wm[36]";
connectAttr "clavicle_r.bps" "bindPose1.wm[37]";
connectAttr "upperarm_r.bps" "bindPose1.wm[38]";
connectAttr "lowerarm_r.bps" "bindPose1.wm[39]";
connectAttr "lowerarm_twist_02_r.bps" "bindPose1.wm[40]";
connectAttr "lowerarm_twist_01_r.bps" "bindPose1.wm[41]";
connectAttr "hand_r.bps" "bindPose1.wm[42]";
connectAttr "pinky_metacarpal_r.bps" "bindPose1.wm[43]";
connectAttr "pinky_01_r.bps" "bindPose1.wm[44]";
connectAttr "pinky_02_r.bps" "bindPose1.wm[45]";
connectAttr "pinky_03_r.bps" "bindPose1.wm[46]";
connectAttr "ring_metacarpal_r.bps" "bindPose1.wm[47]";
connectAttr "ring_01_r.bps" "bindPose1.wm[48]";
connectAttr "ring_02_r.bps" "bindPose1.wm[49]";
connectAttr "ring_03_r.bps" "bindPose1.wm[50]";
connectAttr "middle_metacarpal_r.bps" "bindPose1.wm[51]";
connectAttr "middle_01_r.bps" "bindPose1.wm[52]";
connectAttr "middle_02_r.bps" "bindPose1.wm[53]";
connectAttr "middle_03_r.bps" "bindPose1.wm[54]";
connectAttr "index_metacarpal_r.bps" "bindPose1.wm[55]";
connectAttr "index_01_r.bps" "bindPose1.wm[56]";
connectAttr "index_02_r.bps" "bindPose1.wm[57]";
connectAttr "index_03_r.bps" "bindPose1.wm[58]";
connectAttr "thumb_01_r.bps" "bindPose1.wm[59]";
connectAttr "thumb_02_r.bps" "bindPose1.wm[60]";
connectAttr "thumb_03_r.bps" "bindPose1.wm[61]";
connectAttr "upperarm_twist_01_r.bps" "bindPose1.wm[62]";
connectAttr "upperarm_twist_02_r.bps" "bindPose1.wm[63]";
connectAttr "thigh_r.bps" "bindPose1.wm[64]";
connectAttr "calf_r.bps" "bindPose1.wm[65]";
connectAttr "foot_r.bps" "bindPose1.wm[66]";
connectAttr "ball_r.bps" "bindPose1.wm[67]";
connectAttr "calf_twist_02_r.bps" "bindPose1.wm[68]";
connectAttr "calf_twist_01_r.bps" "bindPose1.wm[69]";
connectAttr "thigh_twist_01_r.bps" "bindPose1.wm[70]";
connectAttr "thigh_twist_02_r.bps" "bindPose1.wm[71]";
connectAttr "thigh_l.bps" "bindPose1.wm[72]";
connectAttr "calf_l.bps" "bindPose1.wm[73]";
connectAttr "foot_l.bps" "bindPose1.wm[74]";
connectAttr "ball_l.bps" "bindPose1.wm[75]";
connectAttr "calf_twist_02_l.bps" "bindPose1.wm[76]";
connectAttr "calf_twist_01_l.bps" "bindPose1.wm[77]";
connectAttr "thigh_twist_01_l.bps" "bindPose1.wm[78]";
connectAttr "thigh_twist_02_l.bps" "bindPose1.wm[79]";
connectAttr "ik_foot_root.bps" "bindPose1.wm[80]";
connectAttr "ik_hand_root.bps" "bindPose1.wm[81]";
connectAttr "interaction.bps" "bindPose1.wm[82]";
connectAttr "center_of_mass.bps" "bindPose1.wm[83]";
connectAttr "HollowClothesShapeOrig.w" "skinCluster8.ip[0].ig";
connectAttr "HollowClothesShapeOrig.o" "skinCluster8.orggeom[0]";
connectAttr "root.wm" "skinCluster8.ma[0]";
connectAttr "pelvis.wm" "skinCluster8.ma[1]";
connectAttr "spine_01.wm" "skinCluster8.ma[2]";
connectAttr "spine_02.wm" "skinCluster8.ma[3]";
connectAttr "spine_03.wm" "skinCluster8.ma[4]";
connectAttr "spine_04.wm" "skinCluster8.ma[5]";
connectAttr "spine_05.wm" "skinCluster8.ma[6]";
connectAttr "neck_01.wm" "skinCluster8.ma[7]";
connectAttr "neck_02.wm" "skinCluster8.ma[8]";
connectAttr "head.wm" "skinCluster8.ma[9]";
connectAttr "clavicle_l.wm" "skinCluster8.ma[10]";
connectAttr "upperarm_l.wm" "skinCluster8.ma[11]";
connectAttr "lowerarm_l.wm" "skinCluster8.ma[12]";
connectAttr "lowerarm_twist_02_l.wm" "skinCluster8.ma[13]";
connectAttr "lowerarm_twist_01_l.wm" "skinCluster8.ma[14]";
connectAttr "hand_l.wm" "skinCluster8.ma[15]";
connectAttr "index_metacarpal_l.wm" "skinCluster8.ma[16]";
connectAttr "index_01_l.wm" "skinCluster8.ma[17]";
connectAttr "index_02_l.wm" "skinCluster8.ma[18]";
connectAttr "index_03_l.wm" "skinCluster8.ma[19]";
connectAttr "middle_metacarpal_l.wm" "skinCluster8.ma[20]";
connectAttr "middle_01_l.wm" "skinCluster8.ma[21]";
connectAttr "middle_02_l.wm" "skinCluster8.ma[22]";
connectAttr "middle_03_l.wm" "skinCluster8.ma[23]";
connectAttr "thumb_01_l.wm" "skinCluster8.ma[24]";
connectAttr "thumb_02_l.wm" "skinCluster8.ma[25]";
connectAttr "thumb_03_l.wm" "skinCluster8.ma[26]";
connectAttr "pinky_metacarpal_l.wm" "skinCluster8.ma[27]";
connectAttr "pinky_01_l.wm" "skinCluster8.ma[28]";
connectAttr "pinky_02_l.wm" "skinCluster8.ma[29]";
connectAttr "pinky_03_l.wm" "skinCluster8.ma[30]";
connectAttr "ring_metacarpal_l.wm" "skinCluster8.ma[31]";
connectAttr "ring_01_l.wm" "skinCluster8.ma[32]";
connectAttr "ring_02_l.wm" "skinCluster8.ma[33]";
connectAttr "ring_03_l.wm" "skinCluster8.ma[34]";
connectAttr "upperarm_twist_01_l.wm" "skinCluster8.ma[35]";
connectAttr "upperarm_twist_02_l.wm" "skinCluster8.ma[36]";
connectAttr "clavicle_r.wm" "skinCluster8.ma[37]";
connectAttr "upperarm_r.wm" "skinCluster8.ma[38]";
connectAttr "lowerarm_r.wm" "skinCluster8.ma[39]";
connectAttr "lowerarm_twist_02_r.wm" "skinCluster8.ma[40]";
connectAttr "lowerarm_twist_01_r.wm" "skinCluster8.ma[41]";
connectAttr "hand_r.wm" "skinCluster8.ma[42]";
connectAttr "pinky_metacarpal_r.wm" "skinCluster8.ma[43]";
connectAttr "pinky_01_r.wm" "skinCluster8.ma[44]";
connectAttr "pinky_02_r.wm" "skinCluster8.ma[45]";
connectAttr "pinky_03_r.wm" "skinCluster8.ma[46]";
connectAttr "ring_metacarpal_r.wm" "skinCluster8.ma[47]";
connectAttr "ring_01_r.wm" "skinCluster8.ma[48]";
connectAttr "ring_02_r.wm" "skinCluster8.ma[49]";
connectAttr "ring_03_r.wm" "skinCluster8.ma[50]";
connectAttr "middle_metacarpal_r.wm" "skinCluster8.ma[51]";
connectAttr "middle_01_r.wm" "skinCluster8.ma[52]";
connectAttr "middle_02_r.wm" "skinCluster8.ma[53]";
connectAttr "middle_03_r.wm" "skinCluster8.ma[54]";
connectAttr "index_metacarpal_r.wm" "skinCluster8.ma[55]";
connectAttr "index_01_r.wm" "skinCluster8.ma[56]";
connectAttr "index_02_r.wm" "skinCluster8.ma[57]";
connectAttr "index_03_r.wm" "skinCluster8.ma[58]";
connectAttr "thumb_01_r.wm" "skinCluster8.ma[59]";
connectAttr "thumb_02_r.wm" "skinCluster8.ma[60]";
connectAttr "thumb_03_r.wm" "skinCluster8.ma[61]";
connectAttr "upperarm_twist_01_r.wm" "skinCluster8.ma[62]";
connectAttr "upperarm_twist_02_r.wm" "skinCluster8.ma[63]";
connectAttr "thigh_r.wm" "skinCluster8.ma[64]";
connectAttr "calf_r.wm" "skinCluster8.ma[65]";
connectAttr "foot_r.wm" "skinCluster8.ma[66]";
connectAttr "ball_r.wm" "skinCluster8.ma[67]";
connectAttr "calf_twist_02_r.wm" "skinCluster8.ma[68]";
connectAttr "calf_twist_01_r.wm" "skinCluster8.ma[69]";
connectAttr "thigh_twist_01_r.wm" "skinCluster8.ma[70]";
connectAttr "thigh_twist_02_r.wm" "skinCluster8.ma[71]";
connectAttr "thigh_l.wm" "skinCluster8.ma[72]";
connectAttr "calf_l.wm" "skinCluster8.ma[73]";
connectAttr "foot_l.wm" "skinCluster8.ma[74]";
connectAttr "ball_l.wm" "skinCluster8.ma[75]";
connectAttr "calf_twist_02_l.wm" "skinCluster8.ma[76]";
connectAttr "calf_twist_01_l.wm" "skinCluster8.ma[77]";
connectAttr "thigh_twist_01_l.wm" "skinCluster8.ma[78]";
connectAttr "thigh_twist_02_l.wm" "skinCluster8.ma[79]";
connectAttr "ik_foot_root.wm" "skinCluster8.ma[80]";
connectAttr "ik_hand_root.wm" "skinCluster8.ma[81]";
connectAttr "interaction.wm" "skinCluster8.ma[82]";
connectAttr "center_of_mass.wm" "skinCluster8.ma[83]";
connectAttr "root.liw" "skinCluster8.lw[0]";
connectAttr "pelvis.liw" "skinCluster8.lw[1]";
connectAttr "spine_01.liw" "skinCluster8.lw[2]";
connectAttr "spine_02.liw" "skinCluster8.lw[3]";
connectAttr "spine_03.liw" "skinCluster8.lw[4]";
connectAttr "spine_04.liw" "skinCluster8.lw[5]";
connectAttr "spine_05.liw" "skinCluster8.lw[6]";
connectAttr "neck_01.liw" "skinCluster8.lw[7]";
connectAttr "neck_02.liw" "skinCluster8.lw[8]";
connectAttr "head.liw" "skinCluster8.lw[9]";
connectAttr "clavicle_l.liw" "skinCluster8.lw[10]";
connectAttr "upperarm_l.liw" "skinCluster8.lw[11]";
connectAttr "lowerarm_l.liw" "skinCluster8.lw[12]";
connectAttr "lowerarm_twist_02_l.liw" "skinCluster8.lw[13]";
connectAttr "lowerarm_twist_01_l.liw" "skinCluster8.lw[14]";
connectAttr "hand_l.liw" "skinCluster8.lw[15]";
connectAttr "index_metacarpal_l.liw" "skinCluster8.lw[16]";
connectAttr "index_01_l.liw" "skinCluster8.lw[17]";
connectAttr "index_02_l.liw" "skinCluster8.lw[18]";
connectAttr "index_03_l.liw" "skinCluster8.lw[19]";
connectAttr "middle_metacarpal_l.liw" "skinCluster8.lw[20]";
connectAttr "middle_01_l.liw" "skinCluster8.lw[21]";
connectAttr "middle_02_l.liw" "skinCluster8.lw[22]";
connectAttr "middle_03_l.liw" "skinCluster8.lw[23]";
connectAttr "thumb_01_l.liw" "skinCluster8.lw[24]";
connectAttr "thumb_02_l.liw" "skinCluster8.lw[25]";
connectAttr "thumb_03_l.liw" "skinCluster8.lw[26]";
connectAttr "pinky_metacarpal_l.liw" "skinCluster8.lw[27]";
connectAttr "pinky_01_l.liw" "skinCluster8.lw[28]";
connectAttr "pinky_02_l.liw" "skinCluster8.lw[29]";
connectAttr "pinky_03_l.liw" "skinCluster8.lw[30]";
connectAttr "ring_metacarpal_l.liw" "skinCluster8.lw[31]";
connectAttr "ring_01_l.liw" "skinCluster8.lw[32]";
connectAttr "ring_02_l.liw" "skinCluster8.lw[33]";
connectAttr "ring_03_l.liw" "skinCluster8.lw[34]";
connectAttr "upperarm_twist_01_l.liw" "skinCluster8.lw[35]";
connectAttr "upperarm_twist_02_l.liw" "skinCluster8.lw[36]";
connectAttr "clavicle_r.liw" "skinCluster8.lw[37]";
connectAttr "upperarm_r.liw" "skinCluster8.lw[38]";
connectAttr "lowerarm_r.liw" "skinCluster8.lw[39]";
connectAttr "lowerarm_twist_02_r.liw" "skinCluster8.lw[40]";
connectAttr "lowerarm_twist_01_r.liw" "skinCluster8.lw[41]";
connectAttr "hand_r.liw" "skinCluster8.lw[42]";
connectAttr "pinky_metacarpal_r.liw" "skinCluster8.lw[43]";
connectAttr "pinky_01_r.liw" "skinCluster8.lw[44]";
connectAttr "pinky_02_r.liw" "skinCluster8.lw[45]";
connectAttr "pinky_03_r.liw" "skinCluster8.lw[46]";
connectAttr "ring_metacarpal_r.liw" "skinCluster8.lw[47]";
connectAttr "ring_01_r.liw" "skinCluster8.lw[48]";
connectAttr "ring_02_r.liw" "skinCluster8.lw[49]";
connectAttr "ring_03_r.liw" "skinCluster8.lw[50]";
connectAttr "middle_metacarpal_r.liw" "skinCluster8.lw[51]";
connectAttr "middle_01_r.liw" "skinCluster8.lw[52]";
connectAttr "middle_02_r.liw" "skinCluster8.lw[53]";
connectAttr "middle_03_r.liw" "skinCluster8.lw[54]";
connectAttr "index_metacarpal_r.liw" "skinCluster8.lw[55]";
connectAttr "index_01_r.liw" "skinCluster8.lw[56]";
connectAttr "index_02_r.liw" "skinCluster8.lw[57]";
connectAttr "index_03_r.liw" "skinCluster8.lw[58]";
connectAttr "thumb_01_r.liw" "skinCluster8.lw[59]";
connectAttr "thumb_02_r.liw" "skinCluster8.lw[60]";
connectAttr "thumb_03_r.liw" "skinCluster8.lw[61]";
connectAttr "upperarm_twist_01_r.liw" "skinCluster8.lw[62]";
connectAttr "upperarm_twist_02_r.liw" "skinCluster8.lw[63]";
connectAttr "thigh_r.liw" "skinCluster8.lw[64]";
connectAttr "calf_r.liw" "skinCluster8.lw[65]";
connectAttr "foot_r.liw" "skinCluster8.lw[66]";
connectAttr "ball_r.liw" "skinCluster8.lw[67]";
connectAttr "calf_twist_02_r.liw" "skinCluster8.lw[68]";
connectAttr "calf_twist_01_r.liw" "skinCluster8.lw[69]";
connectAttr "thigh_twist_01_r.liw" "skinCluster8.lw[70]";
connectAttr "thigh_twist_02_r.liw" "skinCluster8.lw[71]";
connectAttr "thigh_l.liw" "skinCluster8.lw[72]";
connectAttr "calf_l.liw" "skinCluster8.lw[73]";
connectAttr "foot_l.liw" "skinCluster8.lw[74]";
connectAttr "ball_l.liw" "skinCluster8.lw[75]";
connectAttr "calf_twist_02_l.liw" "skinCluster8.lw[76]";
connectAttr "calf_twist_01_l.liw" "skinCluster8.lw[77]";
connectAttr "thigh_twist_01_l.liw" "skinCluster8.lw[78]";
connectAttr "thigh_twist_02_l.liw" "skinCluster8.lw[79]";
connectAttr "ik_foot_root.liw" "skinCluster8.lw[80]";
connectAttr "ik_hand_root.liw" "skinCluster8.lw[81]";
connectAttr "interaction.liw" "skinCluster8.lw[82]";
connectAttr "center_of_mass.liw" "skinCluster8.lw[83]";
connectAttr "root.obcc" "skinCluster8.ifcl[0]";
connectAttr "pelvis.obcc" "skinCluster8.ifcl[1]";
connectAttr "spine_01.obcc" "skinCluster8.ifcl[2]";
connectAttr "spine_02.obcc" "skinCluster8.ifcl[3]";
connectAttr "spine_03.obcc" "skinCluster8.ifcl[4]";
connectAttr "spine_04.obcc" "skinCluster8.ifcl[5]";
connectAttr "spine_05.obcc" "skinCluster8.ifcl[6]";
connectAttr "neck_01.obcc" "skinCluster8.ifcl[7]";
connectAttr "neck_02.obcc" "skinCluster8.ifcl[8]";
connectAttr "head.obcc" "skinCluster8.ifcl[9]";
connectAttr "clavicle_l.obcc" "skinCluster8.ifcl[10]";
connectAttr "upperarm_l.obcc" "skinCluster8.ifcl[11]";
connectAttr "lowerarm_l.obcc" "skinCluster8.ifcl[12]";
connectAttr "lowerarm_twist_02_l.obcc" "skinCluster8.ifcl[13]";
connectAttr "lowerarm_twist_01_l.obcc" "skinCluster8.ifcl[14]";
connectAttr "hand_l.obcc" "skinCluster8.ifcl[15]";
connectAttr "index_metacarpal_l.obcc" "skinCluster8.ifcl[16]";
connectAttr "index_01_l.obcc" "skinCluster8.ifcl[17]";
connectAttr "index_02_l.obcc" "skinCluster8.ifcl[18]";
connectAttr "index_03_l.obcc" "skinCluster8.ifcl[19]";
connectAttr "middle_metacarpal_l.obcc" "skinCluster8.ifcl[20]";
connectAttr "middle_01_l.obcc" "skinCluster8.ifcl[21]";
connectAttr "middle_02_l.obcc" "skinCluster8.ifcl[22]";
connectAttr "middle_03_l.obcc" "skinCluster8.ifcl[23]";
connectAttr "thumb_01_l.obcc" "skinCluster8.ifcl[24]";
connectAttr "thumb_02_l.obcc" "skinCluster8.ifcl[25]";
connectAttr "thumb_03_l.obcc" "skinCluster8.ifcl[26]";
connectAttr "pinky_metacarpal_l.obcc" "skinCluster8.ifcl[27]";
connectAttr "pinky_01_l.obcc" "skinCluster8.ifcl[28]";
connectAttr "pinky_02_l.obcc" "skinCluster8.ifcl[29]";
connectAttr "pinky_03_l.obcc" "skinCluster8.ifcl[30]";
connectAttr "ring_metacarpal_l.obcc" "skinCluster8.ifcl[31]";
connectAttr "ring_01_l.obcc" "skinCluster8.ifcl[32]";
connectAttr "ring_02_l.obcc" "skinCluster8.ifcl[33]";
connectAttr "ring_03_l.obcc" "skinCluster8.ifcl[34]";
connectAttr "upperarm_twist_01_l.obcc" "skinCluster8.ifcl[35]";
connectAttr "upperarm_twist_02_l.obcc" "skinCluster8.ifcl[36]";
connectAttr "clavicle_r.obcc" "skinCluster8.ifcl[37]";
connectAttr "upperarm_r.obcc" "skinCluster8.ifcl[38]";
connectAttr "lowerarm_r.obcc" "skinCluster8.ifcl[39]";
connectAttr "lowerarm_twist_02_r.obcc" "skinCluster8.ifcl[40]";
connectAttr "lowerarm_twist_01_r.obcc" "skinCluster8.ifcl[41]";
connectAttr "hand_r.obcc" "skinCluster8.ifcl[42]";
connectAttr "pinky_metacarpal_r.obcc" "skinCluster8.ifcl[43]";
connectAttr "pinky_01_r.obcc" "skinCluster8.ifcl[44]";
connectAttr "pinky_02_r.obcc" "skinCluster8.ifcl[45]";
connectAttr "pinky_03_r.obcc" "skinCluster8.ifcl[46]";
connectAttr "ring_metacarpal_r.obcc" "skinCluster8.ifcl[47]";
connectAttr "ring_01_r.obcc" "skinCluster8.ifcl[48]";
connectAttr "ring_02_r.obcc" "skinCluster8.ifcl[49]";
connectAttr "ring_03_r.obcc" "skinCluster8.ifcl[50]";
connectAttr "middle_metacarpal_r.obcc" "skinCluster8.ifcl[51]";
connectAttr "middle_01_r.obcc" "skinCluster8.ifcl[52]";
connectAttr "middle_02_r.obcc" "skinCluster8.ifcl[53]";
connectAttr "middle_03_r.obcc" "skinCluster8.ifcl[54]";
connectAttr "index_metacarpal_r.obcc" "skinCluster8.ifcl[55]";
connectAttr "index_01_r.obcc" "skinCluster8.ifcl[56]";
connectAttr "index_02_r.obcc" "skinCluster8.ifcl[57]";
connectAttr "index_03_r.obcc" "skinCluster8.ifcl[58]";
connectAttr "thumb_01_r.obcc" "skinCluster8.ifcl[59]";
connectAttr "thumb_02_r.obcc" "skinCluster8.ifcl[60]";
connectAttr "thumb_03_r.obcc" "skinCluster8.ifcl[61]";
connectAttr "upperarm_twist_01_r.obcc" "skinCluster8.ifcl[62]";
connectAttr "upperarm_twist_02_r.obcc" "skinCluster8.ifcl[63]";
connectAttr "thigh_r.obcc" "skinCluster8.ifcl[64]";
connectAttr "calf_r.obcc" "skinCluster8.ifcl[65]";
connectAttr "foot_r.obcc" "skinCluster8.ifcl[66]";
connectAttr "ball_r.obcc" "skinCluster8.ifcl[67]";
connectAttr "calf_twist_02_r.obcc" "skinCluster8.ifcl[68]";
connectAttr "calf_twist_01_r.obcc" "skinCluster8.ifcl[69]";
connectAttr "thigh_twist_01_r.obcc" "skinCluster8.ifcl[70]";
connectAttr "thigh_twist_02_r.obcc" "skinCluster8.ifcl[71]";
connectAttr "thigh_l.obcc" "skinCluster8.ifcl[72]";
connectAttr "calf_l.obcc" "skinCluster8.ifcl[73]";
connectAttr "foot_l.obcc" "skinCluster8.ifcl[74]";
connectAttr "ball_l.obcc" "skinCluster8.ifcl[75]";
connectAttr "calf_twist_02_l.obcc" "skinCluster8.ifcl[76]";
connectAttr "calf_twist_01_l.obcc" "skinCluster8.ifcl[77]";
connectAttr "thigh_twist_01_l.obcc" "skinCluster8.ifcl[78]";
connectAttr "thigh_twist_02_l.obcc" "skinCluster8.ifcl[79]";
connectAttr "ik_foot_root.obcc" "skinCluster8.ifcl[80]";
connectAttr "ik_hand_root.obcc" "skinCluster8.ifcl[81]";
connectAttr "interaction.obcc" "skinCluster8.ifcl[82]";
connectAttr "center_of_mass.obcc" "skinCluster8.ifcl[83]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "geomBind1.scs" "skinCluster8.gb";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "SKM_Manny_LOD0SG.pa" ":renderPartition.st" -na;
connectAttr "SKM_Manny_LOD0SG1.pa" ":renderPartition.st" -na;
connectAttr "SKM_Manny_Simple_LOD0SG.pa" ":renderPartition.st" -na;
connectAttr "SKM_Manny_Simple_LOD0SG1.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Manny_02.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Manny_01.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Manny_03.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Manny_04.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "c2509_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "c2509_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "T_Manny_02_N.msg" ":defaultTextureList1.tx" -na;
connectAttr "T_Manny_01_N.msg" ":defaultTextureList1.tx" -na;
// End of HollowRig.ma
