function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9477718757547208, 0.009413589659247, 0.0013307294893359], [0.8281097346057943, 0.0085339206890437, 0.0012222954611372], [0.2948152996184339, 0.0034208128602698, 0.0005687073374268], [0.0771195665832601, 0.0010745104367981, 0.0002383475167961], [0.0161059249021564, 0.0002950100543676, 0.0001255488734021], [0.0035702271813714, 6.511145911374199e-05, 3.45033237483725e-05], [0.0009007892585332, 2.263086991745958e-05, 1.0614943848023906e-05], [0.0002138775759184, 5.914473870967668e-06, 4.366896937365159e-06], [1.0392070837035485e-05, 4.244723502504541e-07, 6.312690602944943e-07]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQd8 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_lead_y = [[52.00418750637934, 0.5810148326099663, 0.0994559609441644], [50.39488442066804, 0.5625792482422929, 0.0975937277723004], [47.0687610097996, 0.5303088807507887, 0.0998438981571096], [42.35213744024431, 0.4819703050563316, 0.0791464542687299], [38.58681123011181, 0.4229986848178485, 0.0698711212801051], [32.38758455291452, 0.3628996357800182, 0.0760312376749121], [25.752852351413217, 0.2837532666916327, 0.0507213965315188], [20.712135549329854, 0.2201422522474353, 0.0363098981823127], [16.036626980363614, 0.1651852428571648, 0.0268236975904944], [11.75679954090869, 0.1106522522030088, 0.016110968040715]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQd8 + coeffs_jet_W_lead_y[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.320335042320892, 0.024514725920531, 0.0040378062664078], [0.3101095116502357, 0.0038374244673287, 0.0007370283943545], [0.0394835950561832, 0.0006310263492045, 0.0001875965915497], [0.0036955835353473, 6.315428586956957e-05, 2.077072470708473e-05], [0.0003295511350978, 2.749595656977379e-06, 7.756193461935116e-07], [6.470900552119954e-05, 7.967505930378178e-07, 9.652808662691196e-08], [3.350637193392384e-06, 4.4106513471542077e-08, 4.752758361688887e-09]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQd8 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_sublead_y = [[47.42782440806291, 0.5170339373399219, 0.0856087399418279], [46.446517583898974, 0.5313187597723228, 0.0939051419031188], [44.26180997842635, 0.4863106576571364, 0.0794318997600537], [40.22671666855403, 0.4475861977734903, 0.0929580743616542], [38.89157851216986, 0.4419292267528125, 0.0820342208871021], [32.67858851127439, 0.3552422302138002, 0.0592870695363695], [27.239621300819135, 0.2991860972120118, 0.0507150437800437], [23.88830431153392, 0.2580957454028653, 0.0422475543774861], [19.898728113473787, 0.2149495749072239, 0.0368876259697743], [16.09974589223806, 0.1709980869716254, 0.0291656413633135]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQd8 + coeffs_jet_W_sublead_y[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.69644973112791, 0.6339290981802541, 0.1186925441026055], [49.38418951254663, 0.559638031507546, 0.0984630702761624], [32.77079473043008, 0.3376293144107347, 0.0525529245895054], [17.26724240221483, 0.1733739077699345, 0.0276135126569781], [7.6763959765649, 0.0792448248690956, 0.0155441237005783], [3.749337893627641, 0.0391140666637842, 0.0066114230157266], [2.1832581251372205, 0.0193280779281326, 0.0026596915624957], [1.195805865405524, 0.0125165539989462, 0.0025773338176381], [0.5282225380009798, 0.0045028787628768, 0.0005644021936231], [0.1309193794531492, 0.0011606725213731, 0.0001495176833017]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQd8 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.672969246887728, 0.2989021791781586, 0.060678236817096], [30.235418641671803, 0.4161731521111329, 0.1054648854191525], [32.66823290082827, 0.4047733590261973, 0.0763198671688817], [32.38247340887279, 0.347623967706015, 0.0525144912580938], [30.24492371298964, 0.2984711666513716, 0.0417074103677194], [27.382315927474533, 0.2716602521050155, 0.0414927617269319], [24.87806384783073, 0.2417565651050263, 0.032236148722123], [23.076010838001302, 0.2318367674543634, 0.0341611177048179], [22.00362399889789, 0.224377477256768, 0.0348991834360057], [21.68835376454255, 0.2148581448730928, 0.0341129805749197]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQd8 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5657179152452767, 0.006173830535827, 0.0010370963761515], [0.290633176399954, 0.0027636582569651, 0.0005139445402673], [0.1437912262216133, 0.0013850910410658, 0.0002644543574894], [0.0589115649114199, 0.000536995755563, 9.517909967620668e-05], [0.0208580534683748, 0.000187490304314, 4.235797171871398e-05], [0.0072719857751399, 6.897407076096673e-05, 1.9552986887304216e-05], [0.002463198749487, 1.9546223721256875e-05, 4.539000648845705e-06], [0.0007411695810261, 8.214423215890216e-06, 4.057778827059331e-06], [0.0001909666820012, 3.910664741493403e-06, 3.599785290853284e-06], [1.126259035344442e-05, 6.344962055847492e-08, 7.560053942226962e-09]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQd8 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_lead_y = [[20.51117448425216, 0.2137382796218519, 0.0411295676291327], [20.3190293311892, 0.2110123426496945, 0.0384144350596075], [19.83036927193121, 0.202658539116315, 0.0374016293874638], [18.95484993566109, 0.192500069223435, 0.0330809016425655], [19.23017816923561, 0.1968420824575273, 0.0376946155246485], [17.72627226854763, 0.176637035583364, 0.0415612752392122], [16.142109474917692, 0.152606218599983, 0.0267035432325465], [15.293567466993048, 0.1402954711328748, 0.0212076942423145], [14.19580292969576, 0.1355912737450347, 0.0257835919626364], [12.519167519722403, 0.1126128013205879, 0.0197703607938576]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQd8 + coeffs_jet_rad_lead_y[3] * params.cQd8 * params.cQd8
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.717590233386337, 0.0784578730395874, 0.0147843008932426], [7.295199890303469, 0.0795577366894168, 0.0235773431581814], [8.447604896500174, 0.0809848024775248, 0.0135323843598921], [10.635490555179228, 0.098995659919219, 0.0180695963582537], [14.595967951351204, 0.1324287546805488, 0.0207417069188044], [21.179456294317355, 0.1994886554216497, 0.0318471059468502], [28.44948177040086, 0.30206577999405, 0.0596438658261002]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQd8 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.605984053204764, 0.1493264725852817, 0.0346019916759647], [11.977545601452322, 0.1412485872869905, 0.0265173608662193], [12.149554554865782, 0.125255153403089, 0.021578449875286], [12.897393740728193, 0.1189064173360912, 0.0209003256983928], [14.465288400984242, 0.1226483107486189, 0.0182269599987392], [16.461405787970318, 0.1483420500966885, 0.0325167916805437], [17.770112115198703, 0.1683666434509511, 0.0275299695327524]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQd8 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.202894354812951, 0.1249523026813356, 0.027550824894573], [12.749990922163288, 0.1469696813907736, 0.0283347815032467], [12.186050070256004, 0.126756144820758, 0.0260726269464242], [11.794136442596642, 0.1149218916703701, 0.0175800268240136], [12.169054191027373, 0.1141221671377656, 0.0186478835383751], [13.100726296232956, 0.1241184086257328, 0.0214298782341358], [14.495237386779689, 0.1323416105555266, 0.0219880051812704], [16.104552977940333, 0.1489084957177513, 0.0243835908055929], [17.602935826415276, 0.1729204466865002, 0.0408929105256819], [18.63418335143134, 0.1802438540834475, 0.0317868664803433]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQd8 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220906528231766, 0.0002004985917428, 2.1494571174948577e-05], [0.0649803591681313, 0.0006120780054416, 8.249044232141786e-05], [0.0195222114161113, 0.0002184621054694, 5.063163492265909e-05], [0.0039166537355242, 4.9011909054772114e-05, 2.060577359162562e-05], [0.0007203697039046, 7.588250674645978e-06, 3.894791660219111e-06], [0.0001286397007536, 2.745955638242697e-06, 5.2266758239974604e-06], [6.091776037935117e-06, 3.476041332250916e-08, 4.621817016637302e-09]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQd8 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.378933504693505, 0.0035431406209753, 0.000749435143424], [0.1074325591099277, 0.0009204893338719, 0.0001774409072484], [0.0310893116253855, 0.0002508629807355, 5.181354307739364e-05], [0.0076745632679019, 6.437834269577635e-05, 1.3334684304172051e-05], [0.001582729308445, 1.2240435529287283e-05, 1.6232204709248182e-06], [0.0003467710992669, 2.4969012471425253e-06, 3.2054430386974124e-07], [8.46781984362643e-05, 4.616488315197305e-07, 4.097402839416315e-08], [4.64600239934799e-06, 2.6472930763469232e-08, 3.520949900714157e-09]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQd8 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_sublead_y = [[8.366914342175331, 0.0755302571718635, 0.0133385596938308], [8.284927385354665, 0.0750725185578811, 0.0140383027023604], [8.133557890192133, 0.0743558091523341, 0.0168061864749521], [7.7686337107573875, 0.0684334096843343, 0.0116680848679188], [8.001774009394703, 0.0700424241407391, 0.0126852807689546], [7.258206492169986, 0.067192430803031, 0.0136009911969173], [6.596776016808267, 0.064463354325805, 0.0240021545772283], [6.345346919654058, 0.0510577398182554, 0.0077059572452864], [5.955996222600396, 0.053041656292681, 0.0106823271495165], [5.337977284697786, 0.0463807234703254, 0.0080267663382993]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQd8 + coeffs_jet_rad_sublead_y[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.936245340533539, 0.0729517046252817, 0.0131200453388008], [7.305404463861822, 0.0693320207506772, 0.0149311694922705], [5.552390517242659, 0.0503802400665855, 0.0102495324768403], [4.5644067919974844, 0.0401982256158884, 0.0068771687115081], [3.77621563375968, 0.0308660672762498, 0.0049003106586758], [2.892239998998829, 0.0249103680681762, 0.0038148733486691], [2.0011205342127942, 0.0192727207908085, 0.0101896930837539], [1.2147036713097514, 0.0098678224178731, 0.0016248429055766], [0.6137832330432632, 0.004076018901941, 0.0005634704978919], [0.1686123284985344, 0.0009710196804948, 0.0001371990775536]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQd8 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.051916738010996, 0.0456839488394791, 0.0087985831387531], [6.219620397184286, 0.0596548140039161, 0.0133140245354069], [5.573784337125217, 0.0489162321323021, 0.0098979768472171], [5.148505662316375, 0.0466888609264016, 0.007961134666981], [5.137217348568841, 0.0451877492326071, 0.0080869944615301], [5.3365150586524175, 0.0516806992251267, 0.0193867907591571], [5.680603940521973, 0.0484743476629036, 0.0076481553119565], [6.054671664505807, 0.0510578001984399, 0.0084744546072974], [6.431912723290267, 0.0550513408855264, 0.0085315513348094], [6.700890252914994, 0.061597845959281, 0.0135820222668071]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQd8 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.086750571323203, 0.0396976683575199, 0.0086548200312848], [4.330322989328581, 0.0391229517525285, 0.0066845641370969], [4.739500464388581, 0.0396257852484766, 0.0058835043969615], [5.409900114274665, 0.0459383723130857, 0.0096703906315911], [6.334366594180892, 0.0532991080786632, 0.0087742487405861], [7.333258135890139, 0.0713397517164807, 0.0214215997100451], [7.900944573228097, 0.0710210893904721, 0.0128847459966686]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQd8 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.4390581008726, 0.0507749153573443, 0.0089043276951686], [5.555864423502628, 0.0573303502159175, 0.0200629190422425], [5.481222752553203, 0.0477649935735143, 0.0082687849728455], [5.553118262984829, 0.0497777646249862, 0.010402455183018], [5.811609797214956, 0.0464823923503427, 0.0069495820458328], [6.074311236198602, 0.0499278074547309, 0.0077015718478815], [6.219813504385083, 0.0577857928411011, 0.0116925713980777]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQd8 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.9099178411538364, 0.04660411684973, 0.0102912123865783], [6.060581165930191, 0.0561663628503608, 0.0103659038362109], [5.667726081621726, 0.0529954213308891, 0.0094534117470592], [5.335313357750052, 0.054072855657318, 0.0222853648935745], [5.344782537001767, 0.0466922338087609, 0.0090321729520533], [5.510978219216982, 0.0493348783650484, 0.0098706351414496], [5.764471832112071, 0.0460200040069292, 0.0066663379124087], [6.039234958273087, 0.0488053682666499, 0.0069192810080365], [6.27697895082887, 0.0535018820037738, 0.0092883527627943], [6.4256534487895385, 0.0602064147581726, 0.0120000167290692]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQd8 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQd8 * params.cQd8
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598304022944547, 0.0005814065811335, 0.0001119395263993], [0.0483530366185048, 0.0004450603198886, 0.0001024375864373], [0.0112112112173725, 8.821452031640531e-05, 1.492045291533596e-05], [0.0023661629136778, 1.6401519011848487e-05, 2.345696420559697e-06], [0.00050539186425, 3.910371643207982e-06, 8.001309968201023e-07], [0.0001111689750644, 6.563098265118295e-07, 9.139170230299003e-08], [2.398917400219476e-05, 1.3326861668860884e-07, 1.4371260109315382e-08], [1.7870043525796057e-06, 9.841010158141931e-09, 9.66537846575437e-10]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQd8 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQd8 * params.cQd8
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

