function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9479222619046482, 0.0215304219072855, 0.008074801822965], [0.8282585135328014, 0.0196875132115529, 0.0075245704278046], [0.2948666175871106, 0.0080909323638079, 0.0030314694997309], [0.0771341458598051, 0.0026318006734114, 0.0010275161180554], [0.0161092360488498, 0.0006923518388795, 0.00039740103043], [0.0035708646475019, 0.0001520212078449, 8.769235347612458e-05], [0.0009009921183979, 5.322231044132243e-05, 3.574289562397568e-05], [0.0002139249890838, 1.423376485945772e-05, 1.3088757299403324e-05], [1.0396791253610416e-05, 2.198205102208284e-06, 3.352232625842212e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctj8 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_lead_y = [[52.01326983428851, 1.3271803511314344, 0.5204377789521134], [50.40368166596054, 1.278574701932666, 0.4990909095210493], [47.07721265698325, 1.22426204559444, 0.495368646196282], [42.35970844329205, 1.11108138168953, 0.4220084881667536], [38.59399809130305, 1.016812872833665, 0.4130981249710892], [32.39299654240121, 0.8488290541204903, 0.3422595148949055], [25.757421867464693, 0.670346272347555, 0.2611898041310901], [20.715809833476456, 0.518903876491235, 0.1940516475529735], [16.03946931833633, 0.4091102584220519, 0.1648466540105757], [11.758858710311902, 0.2754551946109025, 0.1042302917057676]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctj8 + coeffs_jet_W_lead_y[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.320427300586524, 0.0566696905612694, 0.0219848117447591], [0.3101676791042647, 0.009086148023296, 0.0037391362742021], [0.0394912644647265, 0.0015500872058374, 0.0006626389618182], [0.003696351342959, 0.0001590150784909, 7.33604698724839e-05], [0.0003296319860975, 1.2156567375195371e-05, 9.428769877062915e-06], [6.472366816855068e-05, 1.4401327296139077e-06, 4.822835626988163e-07], [3.351544609807995e-06, 1.613063566491487e-07, 1.0188992815233736e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctj8 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_sublead_y = [[47.436272952462616, 1.196006538062418, 0.4622844214728764], [46.45485810945486, 1.2068096203315937, 0.4778570502500561], [44.2697735630725, 1.1470120608762706, 0.4473336624427771], [40.23367097328144, 1.0352274919278486, 0.4126682877871693], [38.89845871563994, 1.0334251906036471, 0.4083509639169898], [32.684568725827546, 0.8305754354232585, 0.3407509172216017], [27.244511784573813, 0.7111457413170129, 0.2859545802749204], [23.892480879376865, 0.6183798607070061, 0.238228782294861], [19.90215967543353, 0.4987998750333068, 0.1881724839491986], [16.1024983356938, 0.4030265973104976, 0.1541159968789776]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctj8 + coeffs_jet_W_sublead_y[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.70611067826742, 1.4964445813913638, 0.5994074952165501], [49.39259666553495, 1.3045162761900009, 0.4962132557808564], [32.77623497881616, 0.7829430170006052, 0.3062828016373856], [17.270169953272294, 0.4014183324211566, 0.1615902140063456], [7.677704393273266, 0.1774146954707304, 0.0728421708244797], [3.7499960058394586, 0.0885383528333617, 0.0343892505342595], [2.1836646348755515, 0.0460500627219745, 0.0209039732139332], [1.1960030578858616, 0.0273631262868589, 0.0114195374552228], [0.5283074908425869, 0.0103357876214831, 0.0040739658830312], [0.1309421064599293, 0.0033083955288605, 0.0014309200946279]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctj8 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.67725939866883, 0.7266108506778476, 0.2889299233434717], [30.24110731061204, 0.9766590265877192, 0.4315294073504631], [32.67423235829297, 0.9422128608564224, 0.3671189886881475], [32.38819910072688, 0.8024846502522393, 0.3005820802779338], [30.2503391382073, 0.7025621312109595, 0.2692667330732684], [27.387011042598832, 0.6226381512339122, 0.2336018576881287], [24.88237560910788, 0.557715053398943, 0.2106299099113707], [23.080009410762397, 0.5270603804884019, 0.2003526448166436], [22.007438231969733, 0.510631819755938, 0.2002515784974847], [21.69216778227062, 0.5071511407059613, 0.1997389272168893]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctj8 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5658105718522279, 0.014369100177368, 0.005896997431541], [0.2906809165183937, 0.0064531114189756, 0.0026974979174997], [0.1438151653232804, 0.0031341476944804, 0.0013588731384482], [0.0589216255356563, 0.0012871524736837, 0.0005691870492556], [0.0208617478119283, 0.000435205151191, 0.0002105842154277], [0.0072732568914056, 0.0001556970127462, 8.92913468704873e-05], [0.0024636890010822, 6.490174249701773e-05, 4.712101701346288e-05], [0.0007413422739676, 3.439659486078275e-05, 3.239969820892205e-05], [0.0001909899572328, 5.579536355143564e-06, 5.409899295723272e-06], [1.126467357507284e-05, 1.390510962208356e-07, 7.397190860530748e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctj8 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_lead_y = [[20.514689311718517, 0.4872395511397465, 0.203501363460535], [20.32249949121565, 0.483636997094217, 0.1993234326552084], [19.833813513796542, 0.4885909730317243, 0.2205840588688975], [18.9580445180742, 0.4474360768342174, 0.1868638121312955], [19.23339318286996, 0.4549303346652517, 0.2037615885721641], [17.729373831486825, 0.4208666402420721, 0.2100811599737738], [16.144836379419353, 0.3569644995572661, 0.147437844028753], [15.296117282873103, 0.3384792664818087, 0.1392031928647401], [14.198150644452904, 0.3143175767271804, 0.1367265725291175], [12.521261103086736, 0.2574087839000199, 0.1109824278402164]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctj8 + coeffs_jet_rad_lead_y[3] * params.ctj8 * params.ctj8
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.7187567872344, 0.1793120972944205, 0.0713599998452932], [7.296397743277227, 0.186836100896497, 0.0931901448354137], [8.449033896646121, 0.1938464686522934, 0.0801307716357075], [10.637235407019665, 0.2258951334359656, 0.0948996759265471], [14.59835883944393, 0.3016415640347015, 0.1293451897343021], [21.18298806547637, 0.4656347750388211, 0.1914660019910515], [28.45450373074393, 0.7173418786966174, 0.3267052089614576]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctj8 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.60813804654686, 0.3591800039622133, 0.1654751686291306], [11.979611773061745, 0.3329824596679478, 0.1313391237289621], [12.15159993640565, 0.2893549135443317, 0.1225329112343608], [12.89952170263108, 0.2717261682929993, 0.1151159192031876], [14.467693087025344, 0.2930099429791254, 0.1241645920533939], [16.464101785214027, 0.3442916117717732, 0.1656920494595791], [17.773109914483847, 0.3831748157753715, 0.1615218791323422]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctj8 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.2048860072166, 0.2852799360943733, 0.138031272346865], [12.752207378146425, 0.3470230392278323, 0.1439712123984021], [12.188087555321296, 0.2974871039210039, 0.1219749666862405], [11.796092687996287, 0.2745229861042306, 0.1133428844858164], [12.17109608291058, 0.2665631364767486, 0.1081311846839496], [13.103010987537456, 0.2956216942768981, 0.1375925480601967], [14.497666093655011, 0.3050988357150789, 0.1275273449428664], [16.107234018288906, 0.3482962654060506, 0.150396956179896], [17.605754155803734, 0.39571034586414, 0.1788786364000066], [18.63736149628662, 0.4204064020607629, 0.1848259231614399]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctj8 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220943460398927, 0.0004465028979302, 0.0001629111256562], [0.0649905237532927, 0.0013870882591926, 0.0005284088281988], [0.0195255591940828, 0.0005219629324702, 0.0002248852309586], [0.003917398111855, 0.0001378024890912, 9.158494636212383e-05], [0.0007205765574003, 2.154342965749936e-05, 2.368798998866273e-05], [0.0001286570875456, 7.538968934372119e-06, 1.5219671965538078e-05], [6.09278225305466e-06, 7.57558461828105e-08, 4.1600303806880074e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctj8 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3789917727122668, 0.0081645665603343, 0.0036706243513586], [0.1074495989791533, 0.0020628037009105, 0.0009592774765142], [0.0310945826748193, 0.0006241502107291, 0.000309830701006], [0.0076759024482115, 0.0001439390589953, 7.273139755958483e-05], [0.0015830834866262, 3.708074380445504e-05, 2.8240753027461286e-05], [0.0003468426517549, 7.507001952440821e-06, 3.471827304134494e-06], [8.469795058243085e-05, 1.0272572177219827e-06, 5.028192660134832e-07], [4.646777446897575e-06, 5.7743242548185794e-08, 3.1633030484489014e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctj8 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_sublead_y = [[8.368273403838101, 0.1679358973942949, 0.0742211556033025], [8.28630748160013, 0.1693222815955266, 0.0758118067954976], [8.134879965273532, 0.17093800092798, 0.0777716047033276], [7.769933789987295, 0.1598213464376281, 0.0711573876062517], [8.003117465671634, 0.1708246818634541, 0.0870988341203219], [7.259378334339048, 0.1511911683690278, 0.0686044804203683], [6.597678111317945, 0.142869606575066, 0.0758765061675368], [6.346367249100479, 0.1272934394905944, 0.0554923314815106], [5.956919051085328, 0.1233131424426185, 0.0575825645590627], [5.338806577201659, 0.1098521368737217, 0.0492689895890047]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctj8 + coeffs_jet_rad_sublead_y[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.937511666280547, 0.1681304091860416, 0.0733135275561083], [7.306578211532765, 0.1567578594807734, 0.0708100720100304], [5.553259818096068, 0.1145476705808682, 0.0511208022231016], [4.565158817449566, 0.0957008930992238, 0.0441815553956564], [3.776863137313739, 0.0765793505643599, 0.0383071546337033], [2.892706644737165, 0.0575486171168575, 0.0255256714549329], [2.0013502393226856, 0.0416752288694805, 0.0265127584345814], [1.21489608094876, 0.0225791186669378, 0.0105173755594578], [0.6138721551124904, 0.0101575785962439, 0.0047546616355257], [0.1686387147519774, 0.0027197354727134, 0.0012988042578992]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctj8 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.052759288212448, 0.1130066860132074, 0.0518549484705344], [6.220592967338711, 0.1391112757848517, 0.0668436002281004], [5.574690369845133, 0.1170192169483763, 0.0524677614083412], [5.149329295617874, 0.1040804119750667, 0.0452707710368711], [5.138031105422644, 0.0997324724684509, 0.0434651001996054], [5.337233522811135, 0.1117313924414911, 0.0574422043866709], [5.681525394371183, 0.11307722129764, 0.0504563953789302], [6.055692627153236, 0.1219442033500285, 0.0560594127467208], [6.432994847165897, 0.1281720255819225, 0.0614341513688415], [6.701985030158304, 0.1401417528448808, 0.0658245461437212]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctj8 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.087413183170098, 0.0876947450007953, 0.0404254731411797], [4.331049068812607, 0.090634961109541, 0.0394929587098534], [4.7402766826929135, 0.0926589770996238, 0.0428451867370155], [5.410791043455244, 0.1140597743994663, 0.0565623296407153], [6.335374817320224, 0.1219653288746878, 0.0537533138421141], [7.334316180155116, 0.157214784015287, 0.076157945515253], [7.902202628973257, 0.1679020708786097, 0.0766253435237445]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctj8 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.439924966763964, 0.1171089146873224, 0.05045976671382], [5.556678775227168, 0.1282956944663427, 0.0652656233646947], [5.482136628907356, 0.1151293689386065, 0.0544238574849148], [5.5540040810317866, 0.1121897129573336, 0.0519638330135433], [5.812547429549675, 0.1132504311882698, 0.051541488232364], [6.075282131698652, 0.118068532073918, 0.0524345326372456], [6.220824524688039, 0.1279562683920005, 0.0598921115580657]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctj8 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.910674565242376, 0.1047350661606026, 0.0467069808775344], [6.0615818867093765, 0.1309853711051828, 0.0634257508760307], [5.668657500528915, 0.127252896336344, 0.0592781831713044], [5.3360301837267485, 0.1137529114022109, 0.0600990487669636], [5.345642979813796, 0.1086192383168379, 0.0486800782388722], [5.51187900496146, 0.112329982069459, 0.0510628562393472], [5.765407363302547, 0.1100106066669578, 0.0493642217629844], [6.040235605170495, 0.1197958313699438, 0.0551596828065641], [6.278029608610948, 0.1268979506494733, 0.0579151219431761], [6.426697562440264, 0.1344986401579793, 0.0601773938207973]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctj8 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctj8 * params.ctj8
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598397969517296, 0.00135132521558, 0.0005736572263936], [0.0483604660451185, 0.0010055440951167, 0.0004695532845322], [0.011213047457068, 0.0002059406081675, 9.761977333924078e-05], [0.0023665637137173, 4.43538460246032e-05, 2.4469214778667916e-05], [0.0005054978448751, 1.048290182833508e-05, 8.315356519873352e-06], [0.0001111866083782, 1.4048200458451443e-06, 7.72825820804325e-07], [2.3994105378856097e-05, 2.940028182709777e-07, 1.511350455001994e-07], [1.78740295506204e-06, 3.484609810898112e-08, 1.2007595045566552e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctj8 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctj8 * params.ctj8
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

