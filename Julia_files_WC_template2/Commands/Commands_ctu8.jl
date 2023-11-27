function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9481446204085304, 0.0119510875801306, 0.0041738271960438], [0.8284472480812499, 0.0107754595393657, 0.0036346310686293], [0.2949297187807692, 0.0045684017228011, 0.0016350536843231], [0.0771499944045819, 0.0015412890305746, 0.000568826732218], [0.0161116795628745, 0.0004101681529669, 0.0001928908846808], [0.0035715483554968, 0.0001080404297365, 6.376783624404556e-05], [0.0009011337019637, 2.736286381337731e-05, 1.7914215760196542e-05], [0.0002139457325352, 4.288108558200771e-06, 2.748843684103203e-06], [1.039252830106478e-05, 5.631425687404047e-07, 5.869074804842703e-07]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctu8 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_pt_Rebin=Function[]
for i in 1:9
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_pt_Rebin_bin$i"))(params)
            return my_dist_func_jet_W_lead_pt_Rebin(params, $i)
        end
        push!(dxsec_jet_W_lead_pt_Rebin, $(Symbol("dxsec_jet_W_lead_pt_Rebin_bin$i")))
    end
end

function get_coeffs_jet_W_lead_y(i) 
    coeffs_jet_W_lead_y = [[52.02414600754797, 0.7200671365637469, 0.2602214546810178], [50.41417907158312, 0.7150656346938362, 0.2652472654185308], [47.0869126544013, 0.6680499607424132, 0.2323890536684645], [42.3686530711506, 0.607610746004979, 0.2226794158969485], [38.60185925243478, 0.5786181524002258, 0.2131417710586736], [32.399645771273576, 0.4720896597148692, 0.168089986672787], [25.762880536867115, 0.3813707130170168, 0.1296530541146674], [20.720231627678174, 0.3149162965265796, 0.1119779452165997], [16.042825942581963, 0.2439027805335883, 0.097370212907122], [11.76133979146343, 0.1682798466222104, 0.0575397345138074]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctu8 + coeffs_jet_W_lead_y[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_y=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_y_bin$i"))(params)
            return my_dist_func_jet_W_lead_y(params, $i)
        end
        push!(dxsec_jet_W_lead_y, $(Symbol("dxsec_jet_W_lead_y_bin$i")))
    end
end

function get_coeffs_jet_W_sublead_pt_Rebin(i) 
    coeffs_jet_W_sublead_pt_Rebin = [[2.3211394134919754, 0.0316825865558384, 0.0113464654902415], [0.3102309075747846, 0.0052054171246409, 0.0019621577067989], [0.0394989003267339, 0.0008642157050421, 0.0003318376002694], [0.0036970894029255, 9.610429095132406e-05, 4.221777829705529e-05], [0.0003296960117391, 4.419538833167829e-06, 2.4045910550871047e-06], [6.474133016170761e-05, 6.699764329910371e-07, 1.8545977235784645e-07], [3.3523837511023994e-06, 1.95225886841892e-07, 1.5695847303526168e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctu8 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_sublead_pt_Rebin=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_jet_W_sublead_pt_Rebin_bin$i"))(params)
            return my_dist_func_jet_W_sublead_pt_Rebin(params, $i)
        end
        push!(dxsec_jet_W_sublead_pt_Rebin, $(Symbol("dxsec_jet_W_sublead_pt_Rebin_bin$i")))
    end
end

function get_coeffs_jet_W_sublead_y(i) 
    coeffs_jet_W_sublead_y = [[47.44630036527906, 0.6678486787414726, 0.2328760471704328], [46.46453862567571, 0.6599253001323506, 0.2311933117523284], [44.27905394224133, 0.6279227927658795, 0.2325101518231984], [40.24196818281236, 0.5776061160991894, 0.2073222156903783], [38.90642113780377, 0.5648842886593174, 0.2129321833117306], [32.69123388964426, 0.4662783970098474, 0.1626550474618571], [27.2502614414996, 0.3957521014920622, 0.1344841178207626], [23.89744386048896, 0.3564618034560338, 0.1348063086435763], [19.90628073065618, 0.2980279428791557, 0.1097919543238528], [16.105863006597986, 0.2564193052291596, 0.1015133464285852]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctu8 + coeffs_jet_W_sublead_y[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_sublead_y=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_sublead_y_bin$i"))(params)
            return my_dist_func_jet_W_sublead_y(params, $i)
        end
        push!(dxsec_jet_W_sublead_y, $(Symbol("dxsec_jet_W_sublead_y_bin$i")))
    end
end

function get_coeffs_jet_W_lead_jet_W_sublead_Dy(i) 
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.71777945835141, 0.840984983072658, 0.3028873588155855], [49.40344553022494, 0.7269058699515666, 0.2560208958023033], [32.78321105639991, 0.4258223844996298, 0.1454261101211785], [17.273802869465893, 0.2269163404167717, 0.0890287565579638], [7.67933271073432, 0.1001163109797047, 0.0360705455075373], [3.750781535977356, 0.0505794083469281, 0.0177332957501306], [2.184168475067168, 0.0332193718207398, 0.0177315083243051], [1.1962496200100667, 0.0163528855284265, 0.0075564921859631], [0.5284158777134209, 0.006214791999308, 0.0020482314646162], [0.1309693889836675, 0.0029314651481781, 0.0017758859437786]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctu8 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_jet_W_sublead_Dy=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_jet_W_sublead_Dy_bin$i"))(params)
            return my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, $i)
        end
        push!(dxsec_jet_W_lead_jet_W_sublead_Dy, $(Symbol("dxsec_jet_W_lead_jet_W_sublead_Dy_bin$i")))
    end
end

function get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i) 
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.68203904633133, 0.4156998876064752, 0.149987583025667], [30.24690029435338, 0.5468812579455252, 0.2136351574266762], [32.68071633498954, 0.5266040760908552, 0.1862213115553868], [32.39499193531215, 0.4556999335202736, 0.1661656561292274], [30.2568053630375, 0.4006836154894667, 0.1400531992548779], [27.392847922554427, 0.3410594881326282, 0.1098401833341953], [24.88781294415727, 0.3144398335361785, 0.1203402334141266], [23.084996649327543, 0.293584692791199, 0.1031057308931047], [22.01220283954112, 0.2846026708540521, 0.1064072168437662], [21.69683589065505, 0.2757956193246161, 0.0950897050575063]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctu8 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_jet_W_sublead_Dphi=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_jet_W_sublead_Dphi_bin$i"))(params)
            return my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, $i)
        end
        push!(dxsec_jet_W_lead_jet_W_sublead_Dphi, $(Symbol("dxsec_jet_W_lead_jet_W_sublead_Dphi_bin$i")))
    end
end

function get_coeffs_jet_rad_lead_pt_Rebin(i) 
    coeffs_jet_rad_lead_pt_Rebin = [[0.5659234650615188, 0.0078144882964257, 0.0027055682196697], [0.2907398740699158, 0.0034944956635084, 0.0012942938551335], [0.1438455531627395, 0.0017446658991191, 0.0007568958720017], [0.0589339853429044, 0.0006918565026259, 0.0002732700206632], [0.0208663257469103, 0.0002474400089735, 0.0001082206428881], [0.0072747550503393, 8.523299950250309e-05, 4.225814975997912e-05], [0.0024641703186531, 3.71069056698104e-05, 2.1540579442371702e-05], [0.0007415998806583, 3.086677898398098e-05, 5.008778215697707e-05], [0.0001910567440522, 9.499015795136829e-06, 1.6106289854340275e-05], [1.1267457235265608e-05, 7.205888652339634e-08, 3.227099029049286e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctu8 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_lead_pt_Rebin=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_rad_lead_pt_Rebin_bin$i"))(params)
            return my_dist_func_jet_rad_lead_pt_Rebin(params, $i)
        end
        push!(dxsec_jet_rad_lead_pt_Rebin, $(Symbol("dxsec_jet_rad_lead_pt_Rebin_bin$i")))
    end
end

function get_coeffs_jet_rad_lead_y(i) 
    coeffs_jet_rad_lead_y = [[20.518980354076472, 0.2631203552587602, 0.109654277049461], [20.32666805130948, 0.2561567790595885, 0.0943968716188921], [19.83772285510748, 0.2643176121459908, 0.097714651945409], [18.96207691017673, 0.2526625952121861, 0.1185143741644115], [19.23727268784372, 0.2473134725495706, 0.0981603108717281], [17.732714239947303, 0.229701141879229, 0.0846843500130131], [16.148211170104208, 0.1989685541316971, 0.076926233538524], [15.2992804427643, 0.1928123041677046, 0.0732883940316179], [14.20109280087203, 0.1738952732134329, 0.0769379000195361], [12.523893982239484, 0.1475876771641593, 0.0567335991944949]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctu8 + coeffs_jet_rad_lead_y[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_lead_y=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_rad_lead_y_bin$i"))(params)
            return my_dist_func_jet_rad_lead_y(params, $i)
        end
        push!(dxsec_jet_rad_lead_y, $(Symbol("dxsec_jet_rad_lead_y_bin$i")))
    end
end

function get_coeffs_top_lep_jet_rad_lead_Dphi(i) 
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.720108191525016, 0.0950127001268894, 0.0333599099207716], [7.297762001159716, 0.1036278435545314, 0.0395000915899274], [8.450822001559908, 0.1115365584690931, 0.0481216089600271], [10.63944076694608, 0.11962318482281, 0.0422896198691491], [14.601428455414192, 0.1659709806783343, 0.0610025944171766], [21.18734337010772, 0.2554522658135682, 0.1020336803235597], [28.46017068101148, 0.3967957812527784, 0.1718776507805478]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctu8 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_top_lep_jet_rad_lead_Dphi=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_top_lep_jet_rad_lead_Dphi_bin$i"))(params)
            return my_dist_func_top_lep_jet_rad_lead_Dphi(params, $i)
        end
        push!(dxsec_top_lep_jet_rad_lead_Dphi, $(Symbol("dxsec_top_lep_jet_rad_lead_Dphi_bin$i")))
    end
end

function get_coeffs_top_had_jet_rad_lead_Dphi(i) 
    coeffs_top_had_jet_rad_lead_Dphi = [[11.61028636580034, 0.1945895800643596, 0.0857674805096902], [11.982019805209722, 0.1873881051470181, 0.0766660210097038], [12.154036931213804, 0.1541856221217387, 0.0572591954337133], [12.90223359871196, 0.1489595018521395, 0.0583315578732936], [14.470797182588884, 0.1658714219105564, 0.0668229800305445], [16.467483306279032, 0.1881632394509839, 0.0755550543792053], [17.77689744500828, 0.2101304378202654, 0.0774863747598027]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctu8 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_top_had_jet_rad_lead_Dphi=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_top_had_jet_rad_lead_Dphi_bin$i"))(params)
            return my_dist_func_top_had_jet_rad_lead_Dphi(params, $i)
        end
        push!(dxsec_top_had_jet_rad_lead_Dphi, $(Symbol("dxsec_top_had_jet_rad_lead_Dphi_bin$i")))
    end
end

function get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i) 
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.206715394242018, 0.1533270921469684, 0.059143356302429], [12.754780398650931, 0.1881652853937983, 0.0738278039308475], [12.1906402824874, 0.1709497057054049, 0.0751516133617879], [11.79849614531662, 0.1507102966166622, 0.064370015336125], [12.17368671541389, 0.1534982789854978, 0.0637806560179622], [13.105638516673872, 0.1598513368221406, 0.066185574692612], [14.500736972463669, 0.1665675399124759, 0.0618361106974225], [16.11055444996249, 0.1980281785623087, 0.0770519021436887], [17.60931779115426, 0.2103627392172113, 0.0811908239224625], [18.641257027561128, 0.2264400542927671, 0.0860199943692413]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctu8 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_jet_rad_lead_Dphi=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_jet_rad_lead_Dphi_bin$i"))(params)
            return my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, $i)
        end
        push!(dxsec_jet_W_lead_jet_rad_lead_Dphi, $(Symbol("dxsec_jet_W_lead_jet_rad_lead_Dphi_bin$i")))
    end
end

function get_coeffs_mttbar_jet_rad_lead_Rebin(i) 
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220989930450907, 0.0002367678506222, 7.565263495160346e-05], [0.0650045999419938, 0.0007435937291508, 0.0002480617156098], [0.0195294379503513, 0.0002904566820599, 0.000111460243138], [0.0039180974126708, 7.61162299906945e-05, 4.3194215522788906e-05], [0.0007206580008017, 1.933284471003333e-05, 1.9710714171226144e-05], [0.0001286738652282, 7.023143434876619e-06, 1.5713015082057467e-05], [6.094160502461703e-06, 3.9840337643348764e-08, 1.8924448082071856e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctu8 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_mttbar_jet_rad_lead_Rebin=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_mttbar_jet_rad_lead_Rebin_bin$i"))(params)
            return my_dist_func_mttbar_jet_rad_lead_Rebin(params, $i)
        end
        push!(dxsec_mttbar_jet_rad_lead_Rebin, $(Symbol("dxsec_mttbar_jet_rad_lead_Rebin_bin$i")))
    end
end

function get_coeffs_jet_rad_sublead_pt_Rebin(i) 
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3790657466830489, 0.0044064351295085, 0.0017448628872059], [0.1074720135230704, 0.0011656076254439, 0.0005371658806454], [0.031101029209375, 0.0003279219239157, 0.0001472934223323], [0.007677871970019, 9.7466278231987e-05, 9.235581309538298e-05], [0.0015833927954167, 1.47098907542904e-05, 5.864270516692585e-06], [0.0003469268583144, 4.184144335132936e-06, 1.6418533727393352e-06], [8.472323656794275e-05, 5.111966357061626e-07, 1.870708356144485e-07], [4.647836762029121e-06, 3.0300430390071614e-08, 1.424068008056512e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctu8 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_sublead_pt_Rebin=Function[]
for i in 1:8
    @eval begin
        function $(Symbol("dxsec_jet_rad_sublead_pt_Rebin_bin$i"))(params)
            return my_dist_func_jet_rad_sublead_pt_Rebin(params, $i)
        end
        push!(dxsec_jet_rad_sublead_pt_Rebin, $(Symbol("dxsec_jet_rad_sublead_pt_Rebin_bin$i")))
    end
end

function get_coeffs_jet_rad_sublead_y(i) 
    coeffs_jet_rad_sublead_y = [[8.369971627569914, 0.0902548240110277, 0.0352508937747488], [8.288034480693637, 0.0957311626475067, 0.0427073116760845], [8.136527211370826, 0.093504401921581, 0.0428959300929118], [7.771539582433109, 0.0852182419975879, 0.0336265823020876], [8.00467666635707, 0.0896773090570356, 0.0364726721824214], [7.260919059245831, 0.0845236093337062, 0.0491929112316883], [6.5989454195300965, 0.0790155380612284, 0.0398890908752342], [6.347626460250036, 0.0703755823859057, 0.0274484428984695], [5.958081603811241, 0.0655617431242141, 0.0281399900719622], [5.339845588461954, 0.063036491188315, 0.0243202740089459]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctu8 + coeffs_jet_rad_sublead_y[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_sublead_y=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_rad_sublead_y_bin$i"))(params)
            return my_dist_func_jet_rad_sublead_y(params, $i)
        end
        push!(dxsec_jet_rad_sublead_y, $(Symbol("dxsec_jet_rad_sublead_y_bin$i")))
    end
end

function get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i) 
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.939145613981188, 0.0951985266025894, 0.0444850253160417], [7.308118517033353, 0.0864160687312743, 0.043476966018405], [5.554357829986151, 0.0619332950836641, 0.0242239299737494], [4.566075376666485, 0.0474229165950093, 0.0188791193874539], [3.777626124817581, 0.0396499692151937, 0.015387732912378], [2.8932909860957654, 0.0339756162843612, 0.0139390236128214], [2.001709599311102, 0.0242415173619024, 0.011751513371869], [1.2151435503786834, 0.0117268642458257, 0.004866240547882], [0.6139913852483133, 0.0058490172018795, 0.0023573238186707], [0.168674020244354, 0.0021821517312215, 0.0009415446028396]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctu8 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_lead_jet_rad_sublead_Dy=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_rad_lead_jet_rad_sublead_Dy_bin$i"))(params)
            return my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, $i)
        end
        push!(dxsec_jet_rad_lead_jet_rad_sublead_Dy, $(Symbol("dxsec_jet_rad_lead_jet_rad_sublead_Dy_bin$i")))
    end
end

function get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i) 
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.053786200454901, 0.06070555157719, 0.028932297864218], [6.221853926416844, 0.0834775915709677, 0.0507884744393769], [5.575806772723577, 0.0653476083969161, 0.0255091998949811], [5.150362978443874, 0.0578581478413377, 0.0243044271497396], [5.139061672844285, 0.0549306413406532, 0.022717243473635], [5.338242202326078, 0.0573144904237136, 0.023493777779833], [5.682663219253143, 0.0603205529509278, 0.0245071599222159], [6.056945428738639, 0.0656783393029329, 0.0257250721633771], [6.434300538464935, 0.0689839382031864, 0.0305557093560388], [6.703340314439409, 0.0752900245204139, 0.0296890894432849]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctu8 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_jet_rad_lead_jet_rad_sublead_Dphi=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_rad_lead_jet_rad_sublead_Dphi_bin$i"))(params)
            return my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, $i)
        end
        push!(dxsec_jet_rad_lead_jet_rad_sublead_Dphi, $(Symbol("dxsec_jet_rad_lead_jet_rad_sublead_Dphi_bin$i")))
    end
end

function get_coeffs_top_lep_jet_rad_sublead_Dphi(i) 
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.088225211674732, 0.0468880692684795, 0.0185312277878379], [4.33193663003462, 0.0473557787648349, 0.0184352920880871], [4.741242974973749, 0.0518499664329027, 0.0236189032727807], [5.411863475698005, 0.0625655497489641, 0.0269444259159079], [6.336663298344696, 0.0658675019206129, 0.0269823467210362], [7.335756175019618, 0.0872698482900141, 0.0412871143564258], [7.903832889612669, 0.0933452742112413, 0.0448154121441561]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctu8 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_top_lep_jet_rad_sublead_Dphi=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_top_lep_jet_rad_sublead_Dphi_bin$i"))(params)
            return my_dist_func_top_lep_jet_rad_sublead_Dphi(params, $i)
        end
        push!(dxsec_top_lep_jet_rad_sublead_Dphi, $(Symbol("dxsec_top_lep_jet_rad_sublead_Dphi_bin$i")))
    end
end

function get_coeffs_top_had_jet_rad_sublead_Dphi(i) 
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.441034674498376, 0.0685789200855778, 0.0339665935050693], [5.557758971085588, 0.0660755178958793, 0.0321602286479347], [5.483236373165623, 0.0642083079806309, 0.0301264644363449], [5.5551159538450365, 0.0607241017331847, 0.0240903631067891], [5.813737617058813, 0.0672455554107559, 0.0293486600497096], [6.07652149128415, 0.062970483729534, 0.0251780250941315], [6.222093416272813, 0.0653919713771247, 0.025951550067729]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctu8 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_top_had_jet_rad_sublead_Dphi=Function[]
for i in 1:7
    @eval begin
        function $(Symbol("dxsec_top_had_jet_rad_sublead_Dphi_bin$i"))(params)
            return my_dist_func_top_had_jet_rad_sublead_Dphi(params, $i)
        end
        push!(dxsec_top_had_jet_rad_sublead_Dphi, $(Symbol("dxsec_top_had_jet_rad_sublead_Dphi_bin$i")))
    end
end

function get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i) 
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.911618943566532, 0.0548743554421884, 0.0213073363726713], [6.06282256205251, 0.0713957774488684, 0.0388987494528681], [5.669789682809588, 0.0675985926292948, 0.0357459203768845], [5.33703916624969, 0.0620040952587841, 0.0257530855062498], [5.3467348614097645, 0.0623476045365046, 0.0306175943666], [5.512997942582453, 0.0605772193099804, 0.0242850490399054], [5.76659240463964, 0.0636190982392552, 0.0266164400343242], [6.041463108225932, 0.0683464413974613, 0.0296232385199132], [6.279314959121083, 0.0663927558329131, 0.0252802194916648], [6.427985229008445, 0.0731759756285575, 0.0289057167176316]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctu8 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctu8 * params.ctu8
end

dxsec_jet_W_lead_jet_rad_sublead_Dphi=Function[]
for i in 1:10
    @eval begin
        function $(Symbol("dxsec_jet_W_lead_jet_rad_sublead_Dphi_bin$i"))(params)
            return my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, $i)
        end
        push!(dxsec_jet_W_lead_jet_rad_sublead_Dphi, $(Symbol("dxsec_jet_W_lead_jet_rad_sublead_Dphi_bin$i")))
    end
end

function get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i) 
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598515738269399, 0.000748504933115, 0.000317168634171], [0.0483700521624915, 0.0005295718427314, 0.0002103457504112], [0.0112154989979602, 0.000123318256262, 6.807213645102254e-05], [0.002367053754121, 2.417871682775626e-05, 1.1076398788160013e-05], [0.000505606216493, 5.6448745861895176e-06, 4.85887734057894e-06], [0.0001112109559499, 7.329769923649766e-07, 3.559742776923621e-07], [2.40005593130297e-05, 1.4975712386018137e-07, 6.164598396370513e-08], [1.7878913228169069e-06, 1.9164860509154504e-08, 4.790972654548946e-09]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctu8 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctu8 * params.ctu8
end

dxsec_m_jet_rad_lead_jet_rad_sublead_Rebin=Function[]
for i in 1:8
    @eval begin
        function $(Symbol("dxsec_m_jet_rad_lead_jet_rad_sublead_Rebin_bin$i"))(params)
            return my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, $i)
        end
        push!(dxsec_m_jet_rad_lead_jet_rad_sublead_Rebin, $(Symbol("dxsec_m_jet_rad_lead_jet_rad_sublead_Rebin_bin$i")))
    end
end

