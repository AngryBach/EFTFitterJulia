function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9480458717456954, -0.0008474712842539, 0.0023669189903242], [0.8283566994604594, -0.000773875513417, 0.0022685247587816], [0.2949024192540724, -0.0002827964005723, 0.0013998206079633], [0.0771423508376031, -7.938271043828252e-05, 0.0007600997970471], [0.0161101074386363, -1.8275723090937245e-05, 0.0005004954322593], [0.003571167830363, -3.971031927467458e-06, 0.0001411223647624], [0.0009010332260683, -1.22655117472966e-06, 4.394086475504664e-05], [0.0002139260710487, -3.048414848349397e-07, 1.8791587152889084e-05], [1.0391750115467356e-05, -1.5647341242645423e-08, 2.818658232954092e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQd1 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_lead_y = [[52.01949418351561, -0.049193025734444, 0.2451732681990995], [50.40958449578909, -0.0469555046538863, 0.2451419156148896], [47.0826978592393, -0.0445944493467545, 0.2643631013917851], [42.364732438938965, -0.0403917314981869, 0.1890813573344166], [38.59829627635964, -0.0363069722155429, 0.1622286839738936], [32.396711257104585, -0.0300650760177825, 0.2184229834298275], [25.76048751982186, -0.0242479300076914, 0.1268057942250925], [20.71829479649621, -0.0191214105541174, 0.0821933538304578], [16.041329889653074, -0.0145273842382616, 0.0589108396846508], [11.760253509182638, -0.0103487459311253, 0.0273405111855089]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQd1 + coeffs_jet_W_lead_y[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.321019800972393, -0.0021059726706547, 0.0099418821948804], [0.31020130583855, -0.0003051531204837, 0.0020837933870816], [0.0394950255531101, -4.304308223027417e-05, 0.000684208996334], [0.0036966970752822, -4.111252897807072e-06, 7.772029032486439e-05], [0.0003296604934951, -2.9137763521100946e-07, 2.056136318590844e-06], [6.473366578519037e-05, -7.048520126133939e-08, 1.064421574206302e-07], [3.351826504584069e-06, -3.751134979970822e-09, 5.5359720390079675e-09]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQd1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_sublead_y = [[47.4419826657492, -0.0443339513521588, 0.1985390125359121], [46.46029277514883, -0.0442630532955291, 0.2395192246271411], [44.27503565693456, -0.0416767596268614, 0.1836171337595047], [40.23841976105749, -0.0379640130418256, 0.2611927039448507], [38.902938719161824, -0.0366814856143225, 0.2179848214303652], [32.688180284900746, -0.0304279238330881, 0.139037170927586], [27.24769672164249, -0.0255657496388279, 0.120598989608404], [23.895266422272545, -0.0220011129434768, 0.0983950701221885], [19.904482112232227, -0.0181958423669094, 0.0901203719048042], [16.104376422245217, -0.0145977581123075, 0.0701683433379911]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQd1 + coeffs_jet_W_sublead_y[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.71218341411654, -0.0519326765610479, 0.3237222042200278], [49.39843058571267, -0.0466070937194512, 0.2510420762243774], [32.780334421587376, -0.0299406211589929, 0.1103879773835118], [17.272266276716824, -0.0154368409237106, 0.0582229985789011], [7.678635537642304, -0.0069180773997065, 0.0403694121702578], [3.750440481874819, -0.0034365641587044, 0.0152291535667141], [2.1839380954672603, -0.0019370985977866, 0.0031337945565891], [1.1961419202393315, -0.0010498405883321, 0.0071657161584098], [0.528370887428479, -0.0004329346325864, 0.0006266662573398], [0.1309565041778986, -0.0001083751285623, 0.0001922058702576]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQd1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.679788391627323, -0.0230573787195632, 0.1806857705808867], [30.24407872866162, -0.0309157741826488, 0.3550350509928392], [32.67781419593182, -0.0318055216007635, 0.215596444859087], [32.3920686668298, -0.0302238725373593, 0.1103427894667202], [30.25407681351752, -0.0276863992269093, 0.0678554184880629], [27.39040758909528, -0.0246541497962112, 0.0804137883027946], [24.885419304112865, -0.0223226346039521, 0.0480572610801338], [23.08283383448609, -0.02093628409966, 0.063731237322389], [22.01011747448757, -0.0200627546222785, 0.0709922640760559], [21.69480611988302, -0.0195864625038178, 0.0683898570943385]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQd1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5658744266689049, -0.0005130288382955, 0.0025731698689296], [0.2907153778501666, -0.000248334600287, 0.0012342661813968], [0.143832427365355, -0.0001227704564622, 0.0006468807680334], [0.0589287628017112, -4.959498921987104e-05, 0.0002043042157648], [0.0208643411674978, -1.779630182845513e-05, 0.0001082370090956], [0.0072740888825132, -6.102731709582713e-06, 6.019307813734369e-05], [0.0024639310781362, -1.977014919848409e-06, 1.0921234652612546e-05], [0.000741376110325, -6.474820675500676e-07, 1.5433349124377147e-05], [0.0001910109053374, -2.2128884454919806e-07, 1.543283574097658e-05], [1.1266322055344316e-05, -8.81232697079405e-09, -1.3595582437003988e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQd1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_lead_y = [[20.517129129632792, -0.0183703736274748, 0.1066660358168336], [20.324883112999725, -0.0180458457975242, 0.0958526977120994], [19.8359672480733, -0.0173993699843693, 0.0942376732731111], [18.960267519403946, -0.0166476209953882, 0.0774691823059768], [19.235605684322454, -0.0168162612923564, 0.0981354659836048], [17.731175179723603, -0.0154111079121405, 0.1208873001597989], [16.14676643574295, -0.01386804433937, 0.0592938377332309], [15.297926005271757, -0.012836253945571, 0.0387244959282817], [14.199831120560946, -0.011992424743218, 0.0633536160615215], [12.522773305887618, -0.0104714736834558, 0.041855441741777]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQd1 + coeffs_jet_rad_lead_y[3] * params.cQd1 * params.cQd1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.719508093974415, -0.0062760477317034, 0.0410061298087107], [7.297142683383286, -0.0065398112214247, 0.0792653261242592], [8.450033529146916, -0.0072864664824496, 0.0290701197791187], [10.638527277586256, -0.008987895244665, 0.0416568756284216], [14.600119208531847, -0.0122850797189117, 0.0387797829899057], [21.18550136617616, -0.0180264515584001, 0.0642975464073915], [28.45763314511849, -0.0255592116475604, 0.1611330264702204]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQd1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.60919740288156, -0.0111140445650824, 0.1121902117871035], [11.980928548480533, -0.0111960996178313, 0.0740688425043428], [12.152979809753356, -0.0106484341307297, 0.0520116757224098], [12.901080047321257, -0.0109471893997899, 0.0456148405353012], [14.46946030404959, -0.011934206491601, 0.0276418362590837], [16.46604015904198, -0.013777271589951, 0.0844889960883069], [17.775256053848203, -0.015340054914088, 0.055765740296298]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQd1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.205788012256528, -0.0097208912151131, 0.0850108414610856], [12.753616445210286, -0.0117676652276695, 0.0791482420244877], [12.18948443968868, -0.0107703120608408, 0.0719191910840944], [11.797442890602111, -0.0101242705825737, 0.0358253311469454], [12.172563676033116, -0.0104074662337806, 0.0381555928064354], [13.104472805543327, -0.0111631527315001, 0.0473386443054805], [14.49945442875967, -0.0122825892549904, 0.0440426738284842], [16.109146284577626, -0.0135610467968621, 0.0497686103329329], [17.607814463991346, -0.0151329119084178, 0.1187085163568943], [18.63957540981505, -0.0161633303117151, 0.0720454619088007]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQd1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220971351853855, -1.9444871462380813e-05, 1.297962260909253e-05], [0.0649988410085005, -5.617627518109162e-05, 0.0001287913052465], [0.0195277554619525, -1.740110905173639e-05, 0.0001542840408453], [0.0039177279212466, -3.585902239113918e-06, 7.795323114857262e-05], [0.0007205681313983, -6.188898264613163e-07, 1.4803158814194087e-05], [0.0001286287884963, -1.3304648991957164e-07, 2.319528904006346e-05], [6.093611135814276e-06, -4.4329340692993665e-09, -2.48598736772761e-09]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQd1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3790348115042274, -0.0003077466330868, 0.0020361558464381], [0.1074627272266829, -8.550887405836499e-05, 0.000407009639581], [0.0310982824184952, -2.479786114986952e-05, 0.0001171874137463], [0.0076768762417202, -6.329632010382643e-06, 2.9958741549177647e-05], [0.0015832371599253, -1.3303622230907453e-06, 7.452738316435181e-07], [0.0003468896873092, -2.9872548097043e-07, -8.805041914655137e-08], [8.471249936026307e-05, -7.754443298183762e-08, -2.573818849913592e-07], [4.647413859418526e-06, -3.402695511818911e-09, -2.0761893781272314e-09]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQd1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_sublead_y = [[8.369260249766024, -0.0068686212808884, 0.0296098092369985], [8.287296324159446, -0.0068593521323097, 0.0323755622949985], [8.135818397374267, -0.0067030233430813, 0.0460614706514847], [7.770857630808669, -0.00641207858818, 0.0236602139248895], [8.003995208739923, -0.0064656366957203, 0.0283170759724126], [7.260212501208008, -0.0059781742835521, 0.0349818243523562], [6.598405695742356, -0.0054529203131974, 0.0849493121348239], [6.347094049260448, -0.004959493235927, 0.0121915512229039], [5.9575906192373465, -0.0047301629605798, 0.027300409537703], [5.33940949400318, -0.0042081543851268, 0.0175591537417253]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQd1 + coeffs_jet_rad_sublead_y[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.93845063137646, -0.0065015853994392, 0.0303249795121401], [7.30744344709925, -0.0060899638719963, 0.0404386408586269], [5.553897951426344, -0.0044772352077782, 0.0264755109102457], [4.56568738069212, -0.0037047548459694, 0.0143889026388549], [3.777296156271981, -0.0030347626746894, 0.0081152904543116], [2.8930450189249504, -0.002326269846596, 0.0067427533030293], [2.0015624115933743, -0.0015796589389145, 0.0392249025136449], [1.2150415093238585, -0.0009495231598963, 0.0029568567760508], [0.613943675961714, -0.0004285401633585, 0.0005029396718319], [0.1686594945068417, -0.0001161326840288, 2.1695384907483017e-05]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.053335039864964, -0.0041552700804918, 0.0211224064361543], [6.221263961907616, -0.0050588087065499, 0.0383620946105707], [5.575333314983138, -0.0045251816421392, 0.0244005155143888], [5.149928692188499, -0.0042048156453907, 0.0173391147512385], [5.138629659761799, -0.0041336725832648, 0.018045107372948], [5.337825904432384, -0.0043801835638873, 0.0687060432085905], [5.682182760054463, -0.004543757763805, 0.0140209096258923], [6.056414136711029, -0.0049383652926666, 0.0156103193068066], [6.433737435892585, -0.0052327937539802, 0.0148045483207584], [6.702764712280783, -0.0055318432910859, 0.0366418741405316]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.08787944341686, -0.0034191518912216, 0.0241327279690029], [4.331558757374552, -0.0036173769096468, 0.0139991361770686], [4.7408326763306885, -0.0037864870555353, 0.0093368798559839], [5.411404911343529, -0.0043287031262397, 0.0240279335229864], [6.336129584611084, -0.0050346662523321, 0.0166789292169642], [7.335146279512884, -0.0060233787353669, 0.0706382921944948], [7.9031159307384975, -0.0063779554306072, 0.0296933044159613]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQd1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.440536956768463, -0.0044435661477929, 0.0208338231043244], [5.557293420878683, -0.0047015816014217, 0.0704748050913255], [5.482756385431506, -0.004443455238694, 0.0173821274827934], [5.554649675399991, -0.0045101201617132, 0.0268678761066112], [5.813235707514742, -0.004569306271807, 0.0103354105389759], [6.076008020299377, -0.0047948704257967, 0.0127648441714206], [6.221558826611168, -0.0051630969555138, 0.0298045836291961]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQd1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.911220862857394, -0.0039933374428223, 0.0292131208103868], [6.06224582040634, -0.0049576282555454, 0.0249510890348295], [5.669290317078006, -0.0046774239571958, 0.0221632909642341], [5.336619970594332, -0.0044534614348419, 0.0816172069335028], [5.346263558665996, -0.0043374487515976, 0.0213564592242874], [5.512523047033882, -0.0045172371857957, 0.0242546173645048], [5.766095359943267, -0.0045461317667918, 0.0091303455109009], [6.040942068385508, -0.0048018764313202, 0.0091872729445094], [6.278769477563669, -0.0051069652724209, 0.0186629105415155], [6.42743809019482, -0.0053229698390743, 0.0307406514605529]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQd1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQd1 * params.cQd1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598465768380128, -4.965545996211002e-05, 0.0002918373141141], [0.0483661489853407, -3.946780671813012e-05, 0.0002877869041633], [0.0112144336832664, -8.822668819942418e-06, 2.569190738511318e-05], [0.0023668455563997, -1.7807465010065003e-06, 1.83501135453727e-06], [0.0005055505825191, -4.1540044115857043e-07, 1.542510591662692e-06], [0.000111201329614, -8.016350920455636e-08, 9.601019543820375e-10], [2.399787703976268e-05, -2.0134156240179547e-08, -4.6883503339717044e-08], [1.787681606227086e-06, -1.5514502992146842e-09, -4.347279351975027e-09]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQd1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQd1 * params.cQd1
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

