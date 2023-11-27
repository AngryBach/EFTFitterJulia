function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9477636027814368, 0.010139175141932, 0.0063828517351024], [0.8281268985814993, 0.009458155845493, 0.0060250421979669], [0.2948107568865473, 0.0040405523255524, 0.0023453914796466], [0.0771177661451593, 0.0013952989266182, 0.0007600980306956], [0.0161057356902314, 0.000359378827573, 0.0002636291097241], [0.0035700021825237, 7.961161074523642e-05, 5.1841792382832695e-05], [0.0009007297456452, 2.862464031326333e-05, 2.483364935007165e-05], [0.0002138559064291, 7.856578253233222e-06, 8.665291111172299e-06], [1.0389191070947782e-05, 1.7516662511895797e-06, 2.732033704751819e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQu8 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_lead_y = [[52.00347068839654, 0.636020137236485, 0.401209466406117], [50.39418260341296, 0.6123211864426171, 0.3835642131458995], [47.06824167971114, 0.5939640749435804, 0.377899524854994], [42.35136816924567, 0.5405294161315007, 0.3278698394444042], [38.5867068860212, 0.5106693029413187, 0.3284478517834538], [32.38674007406377, 0.4204478673175283, 0.2549650278074893], [25.75240551035346, 0.3330601830388686, 0.2013299466688163], [20.71185149717701, 0.2556357394913656, 0.1502715930155481], [16.036445027860214, 0.2108222673753542, 0.1323482312192629], [11.756658695466422, 0.1407017181348707, 0.0840357499573903]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQu8 + coeffs_jet_W_lead_y[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.3202573860791094, 0.0284805402709747, 0.0176891392104536], [0.3101091011281443, 0.0045627624189796, 0.0028711662734806], [0.0394824216472954, 0.0008358323940657, 0.0004593752145645], [0.0036954525872887, 8.770721829295478e-05, 5.108181924735043e-05], [0.0003295435518302, 8.626208469211007e-06, 8.563071483339563e-06], [6.470782146286591e-05, 4.715708406689292e-07, 3.580766349434196e-07], [3.35053405878693e-06, 1.0894331262545564e-07, 9.618264420824905e-08]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQu8 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_sublead_y = [[47.42710885596563, 0.5794623587895116, 0.3597020166338985], [46.44597199836879, 0.57705992436353, 0.3668440595157456], [44.26116539247497, 0.5675705673036112, 0.3518928041448371], [40.22569144401461, 0.5032056160812096, 0.3048694367893717], [38.89086095613231, 0.5110957270089366, 0.3125406013735228], [32.67854687890917, 0.4058245882148883, 0.2692452365889204], [27.23913479965493, 0.3552045148939864, 0.2257846921981996], [23.88796842391486, 0.311815535194908, 0.1876983207069541], [19.89846389396184, 0.2435912443642525, 0.1443199190131074], [16.099527086462455, 0.1994852010066259, 0.1193362443868663]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQu8 + coeffs_jet_W_sublead_y[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.69655582809961, 0.7462052270001531, 0.458562776229974], [49.3835179939782, 0.6407313742503953, 0.3785302385254718], [32.7702349067434, 0.3762560683127135, 0.2412327400821578], [17.266951132677825, 0.193116648010451, 0.1282704536923563], [7.676269559992237, 0.0824339868079911, 0.0546842426552938], [3.749286889422049, 0.041745996767456, 0.026502892705186], [2.1832392259494497, 0.0219689088645793, 0.0174934984671351], [1.1957873429910375, 0.0124983451081317, 0.0084571551519755], [0.5282175640284623, 0.0048098352905179, 0.0033454816447926], [0.1309179419724232, 0.0018911953971293, 0.001239923999249]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQu8 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.67248794687228, 0.3796480541260703, 0.2199874145412935], [30.234956855058915, 0.4952865408785281, 0.3138934023222424], [32.66786387783994, 0.4688979298815153, 0.2785610534635447], [32.382010269223514, 0.3874662946849526, 0.2364971473613473], [30.244508626609157, 0.3397825247740179, 0.2166986440253319], [27.381850925681373, 0.2948364996988215, 0.1828087819996368], [24.877666020967112, 0.2652147881586699, 0.1703103168933376], [23.075655579711245, 0.2479582304701872, 0.1585018170765388], [22.003227444398508, 0.2411108213949958, 0.1581101442708369], [21.687974906305808, 0.2475080350762007, 0.1583303149405214]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQu8 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5657149405057863, 0.0070163224784786, 0.0046342745245798], [0.2906283897613751, 0.0031046593197553, 0.0020838734274078], [0.1437884341381193, 0.0014626822207397, 0.0010496036979941], [0.0589107488263353, 0.0006303878621732, 0.0004546535555994], [0.0208576740817691, 0.000203780578714, 0.000161394912172], [0.007271881760986, 7.169487978238256e-05, 6.74475397624832e-05], [0.002463177029191, 4.011318483289717e-05, 4.189464141765704e-05], [0.0007411336959076, 2.4661338563811423e-05, 2.825522847451052e-05], [0.000190941625535, 1.273253793602054e-06, 1.7393611812743609e-06], [1.1262434158957524e-05, 4.9972290161658924e-08, 6.275409622414691e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQu8 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_lead_y = [[20.510820292189145, 0.2318361930549487, 0.1554579779206053], [20.318727982097183, 0.2317115539463589, 0.1541085569125851], [19.83028098447102, 0.2454861173136665, 0.1762380655534216], [18.95458509087184, 0.2168965390030486, 0.1474950081984624], [19.22991689682995, 0.2198791009397046, 0.1598182555361039], [17.726294709431873, 0.2064623324408911, 0.1615365022219084], [16.141897758807758, 0.1718058159881647, 0.1153297936663662], [15.29338064594211, 0.1678672267183373, 0.1130544561609155], [14.195592929273378, 0.1506145848668308, 0.1064085181302871], [12.518990682278671, 0.119634654276971, 0.0872133651276407]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQu8 + coeffs_jet_rad_lead_y[3] * params.cQu8 * params.cQu8
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.717484959176717, 0.0873704680642313, 0.0542869769578624], [7.295058105034723, 0.0923218282024269, 0.0668748951282799], [8.447494325337704, 0.0958611758186198, 0.0637857786800981], [10.635337021938724, 0.1057201747544894, 0.0733509664978797], [14.595737370529012, 0.1404071589729939, 0.1041635009581957], [21.179127565881632, 0.2239827627216204, 0.1528325542049494], [28.44937020556209, 0.3556025166275252, 0.2564205129679607]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQu8 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.606062321701838, 0.1855744864971467, 0.126283765722619], [11.9773479113817, 0.1678235368701272, 0.1006841486314317], [12.149385514588197, 0.1400434473265145, 0.0969886244407624], [12.897177933468775, 0.1272156446227287, 0.0901632510520561], [14.465061346434949, 0.1416506582600128, 0.101503087451994], [16.461075422530296, 0.1624272150425466, 0.1277277439262037], [17.769779237654074, 0.1790569619022158, 0.1284586414469705]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQu8 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.203122314714228, 0.1378592472403319, 0.10621447779901], [12.749790814505552, 0.1743899708363695, 0.1112723543259732], [12.185865490743245, 0.146547758107988, 0.0918041209723015], [11.793988724614652, 0.136452581083321, 0.0919662255923527], [12.168896954260283, 0.127970782925327, 0.0854404487648312], [13.10071991858557, 0.1444788781409107, 0.1115887497220025], [14.495047806213542, 0.1434140428659658, 0.100757336288633], [16.104325660977228, 0.1673571299452835, 0.1208468768098813], [17.602468944449416, 0.1878401673018343, 0.1321728964428299], [18.63389816921508, 0.2023630975902498, 0.1469700656753705]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQu8 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220903741341952, 0.0002009763022866, 0.0001339783899992], [0.0649791675896832, 0.000643360955202, 0.0004231201692105], [0.0195218072165854, 0.0002645110131105, 0.0001676766009611], [0.0039165266800021, 8.09041059642085e-05, 6.982893026309446e-05], [0.0007204540921793, 1.199126482165335e-05, 1.9470339252955523e-05], [0.0001285999748394, 4.3992026060830885e-06, 9.938260078503772e-06], [6.091701620819095e-06, 2.8430051550647146e-08, 3.5202616632015835e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQu8 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3789265405592544, 0.003904435286803, 0.0028048168829261], [0.1074309732493959, 0.0009327608004085, 0.0007491174309252], [0.0310888794682844, 0.0003112116089037, 0.0002485018955182], [0.007674436488295, 6.352846282509905e-05, 5.701255985932025e-05], [0.0015827667204173, 2.1021279858308745e-05, 2.605400710152323e-05], [0.0003467659533142, 4.190303440785598e-06, 3.023225656649935e-06], [8.467669451255059e-05, 3.2879129062503545e-07, 4.2733665917588006e-07], [4.645945048883507e-06, 2.1603122202733945e-08, 2.6744057523469448e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQu8 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_sublead_y = [[8.36681034185981, 0.076209312586996, 0.0583611832406023], [8.284815709322796, 0.0778542171124502, 0.0592109131796693], [8.133429433047604, 0.0808077219824071, 0.0584443196489444], [7.768533941952988, 0.0760190555796212, 0.0570955051315119], [8.001709404848492, 0.0852400143495939, 0.072044113993411], [7.258099118189835, 0.0700302742087492, 0.0528134578082165], [6.596440775129203, 0.0660086856165683, 0.0497974461023107], [6.345281284967941, 0.064196635886794, 0.045891716940411], [5.955910323881449, 0.0591799055304661, 0.0451684598030703], [5.337912749752797, 0.0535627647797846, 0.0396938909617188]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQu8 + coeffs_jet_rad_sublead_y[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.936139445522845, 0.0798141455362317, 0.0577125720740167], [7.305285653977235, 0.0731194014700305, 0.0535680699053575], [5.552315320862268, 0.0536745105196092, 0.0392011514601846], [4.564350500550349, 0.0466422164149432, 0.0359269499346159], [3.776187054624178, 0.0381837448940377, 0.0322606905954621], [2.892205998436733, 0.0270817145280172, 0.0208550272905703], [2.0009693914873528, 0.0187904936921296, 0.0157086524170432], [1.2146886274144428, 0.0103831874665753, 0.0085399616205465], [0.6137780079944264, 0.0049821310932439, 0.0040238518712921], [0.1686108504050951, 0.0014256760027157, 0.001112014115909]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQu8 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.05184510919689, 0.0574806646820155, 0.0415038856750612], [6.219526900141335, 0.0679612183273695, 0.0517354329620667], [5.5737055403576985, 0.0573475579362655, 0.0408502139403239], [5.148440191871064, 0.0475570898071893, 0.0357734356362002], [5.1371550456394965, 0.0447622319091505, 0.0338468747698401], [5.336247260210516, 0.0500691934697573, 0.0363571365828762], [5.680539910345457, 0.0537074283711733, 0.0411225184383587], [6.054602928001204, 0.0588356602855215, 0.0457166485742984], [6.43186307217684, 0.0604131166142433, 0.0509557862790998], [6.700784458464452, 0.0655209334267051, 0.0502126250003488]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQu8 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.0866867495137695, 0.0401326082093408, 0.0305367147552913], [4.330265581359068, 0.0429573759983709, 0.0314658239437177], [4.739450382423036, 0.0438504787464511, 0.0355573502491097], [5.409838301819796, 0.0576221804032146, 0.0452461238959333], [6.334290535673356, 0.0564383511593914, 0.0430715250932769], [7.333008783892294, 0.0720016530433001, 0.0524180672379407], [7.900840395879231, 0.0817192310409719, 0.061341073021164]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQu8 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.438991535178747, 0.0560926237768167, 0.0399263052822859], [5.555631366483753, 0.0603559039789257, 0.0434200357588687], [5.48117258315442, 0.0566991072917842, 0.0444907686565122], [5.55303437350412, 0.0517560676350539, 0.0398913281778503], [5.811547618149484, 0.0555144756097384, 0.042844015518673], [6.074240736473335, 0.0564185677407992, 0.0429075827025306], [6.21971903853461, 0.0579989538293151, 0.0463115320656571]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQu8 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.90984261167955, 0.049027672088788, 0.0349580808999936], [6.060524116979476, 0.0631549420142946, 0.0512528457248612], [5.667649137071009, 0.0634103222907728, 0.0481437398556668], [5.335027749644099, 0.0496382394490574, 0.0360886935013421], [5.344707585537002, 0.0516373757622246, 0.0380237910019427], [5.510897842101756, 0.0522557436009224, 0.0395091223900702], [5.764406969371665, 0.0528160803146954, 0.040976919751147], [6.039176813898695, 0.0592402981748659, 0.0464454429567563], [6.276902432663605, 0.0610412807708588, 0.0467145960232299], [6.425565247574677, 0.0619188939097663, 0.0462322321108289]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQu8 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQu8 * params.cQu8
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598295369583933, 0.0006568389863734, 0.0004430648941812], [0.0483518434309997, 0.0004672436944089, 0.0003520981763197], [0.0112110707083725, 9.545479361997372e-05, 7.930477608789116e-05], [0.0023661349288396, 2.325792606708268e-05, 2.145577912682901e-05], [0.0005053989863098, 5.3895937883942455e-06, 7.34529040665704e-06], [0.0001111676602392, 5.270976613140209e-07, 6.502473974065219e-07], [2.3988802547650472e-05, 1.0079757100128113e-07, 1.2811745616585325e-07], [1.7869822839691944e-06, 2.031370493074128e-08, 1.0235348081471348e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQu8 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQu8 * params.cQu8
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

