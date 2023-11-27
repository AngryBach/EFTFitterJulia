function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.949187928806738, -0.0670278867694641, 0.1935141138872676], [0.8293941897803989, -0.0580752240527077, 0.19409175656428], [0.2952992142358519, -0.0203833305066358, 0.1099468230685579], [0.0772610637965416, -0.0054227522650337, 0.0511621806331135], [0.0161403263530073, -0.0012080343429745, 0.0177859185978957], [0.0035785692511921, -0.0002878157851164, 0.0053395420337863], [0.0009033172874966, -7.324895260040973e-05, 0.0020003313102077], [0.0002146568969133, -1.7429636977211708e-05, 0.0009313504723794], [1.0419803238002192e-05, -8.720557550992053e-07, 4.5288656806455006e-05]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cG + coeffs_jet_W_lead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_y = [[52.08839548047075, -3.4373875569349623, 18.573926144054823], [50.47613569680361, -3.350670331756893, 18.352714473318667], [47.1455927861183, -3.1803558666070195, 16.858207520759183], [42.42084875550827, -2.9162479816601747, 14.371147072354702], [38.64879759845239, -2.7175494080712608, 12.27972295004862], [32.4380671654469, -2.3800517006544784, 10.040609557587183], [25.793421597170475, -1.935033419198808, 7.192208202470325], [20.74416613977341, -1.6161118705702422, 5.243501617064485], [16.060964684798392, -1.26573645244554, 3.834851368471173], [11.77479916198253, -0.9466741885565128, 2.906464126125386]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cG + coeffs_jet_W_lead_y[3] * params.cG * params.cG
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.32386144861168, -0.1633713353399419, 0.6325008694858641], [0.3106428456505096, -0.0217332802034608, 0.1407161602456519], [0.0395601165683636, -0.0027590623203766, 0.0320802257328147], [0.0037046287291606, -0.0002762524747075, 0.0050963345843354], [0.0003304300896941, -2.8188116325663327e-05, 0.0004981450201972], [6.489922881844002e-05, -5.627681003695377e-06, 9.969569737506224e-05], [3.358345571467353e-06, -3.284498597867442e-07, 2.9975204107870823e-06]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cG + coeffs_jet_W_sublead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_W_sublead_y = [[47.50554718616103, -3.177135389510728, 16.689457164506692], [46.52200023673434, -3.112506977897364, 16.232955221130787], [44.33384106188296, -3.024239460913882, 15.177283680096984], [40.290936088829646, -2.7820695373369477, 13.142487821765105], [38.95284546694816, -2.7270687601798773, 12.344648421517295], [32.72985476505498, -2.3576670475686656, 9.867443349405242], [27.283332091883597, -1.9931372500717548, 8.515693663558924], [23.925512094898217, -1.7968862370171603, 7.255917760316114], [19.929173307240752, -1.5164042889264735, 5.662883487086543], [16.124906584635564, -1.247515121836125, 4.937085056602737]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cG + coeffs_jet_W_sublead_y[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.78443208392893, -3.754267703518345, 19.68023634663737], [49.46352533355519, -3.4083074437827383, 16.54430813953453], [32.821968368011085, -2.2866690184789404, 9.240220406727577], [17.29370624679839, -1.2343770727306682, 4.867875582969176], [7.688668075280672, -0.5603614024831318, 2.4174513167959013], [3.7551496569136233, -0.2889622097227767, 1.0529243429929482], [2.18688581344707, -0.1761710041950109, 0.6473815466028034], [1.19754173674016, -0.1011551184574717, 0.2783068877235279], [0.5289512377006407, -0.0486823417106605, 0.0882015617390358], [0.1311088748694044, -0.0109248123143511, 0.0304157853562589]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cG + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.713016906538325, -1.638104522462965, 11.84888274221194], [30.287400904292497, -2.1000578925205224, 15.513127174099646], [32.72137860690624, -2.237893238458533, 12.533558522548123], [32.43338765850052, -2.239428835302812, 9.74562778008752], [30.293004302087457, -2.1448510993206265, 8.062125719881926], [27.42392802913122, -1.945795679703065, 6.471147178870582], [24.916585763055476, -1.784406781658623, 6.144375966598309], [23.112438452308982, -1.6508846108835935, 6.027909076363131], [22.03725270935835, -1.5814327200617857, 5.113039749426678], [21.72188708045545, -1.5631781167766663, 5.069227725328464]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5665515674921499, -0.0393153846404512, 0.1533536672974045], [0.2910724857562011, -0.0211641183475557, 0.0865034911338874], [0.1440180483277391, -0.0107346850169229, 0.0528949271154036], [0.0590095372239031, -0.0045403622253929, 0.0272863018419336], [0.0208956266877153, -0.0017164828325425, 0.0116029961112846], [0.0072857215842966, -0.0006152185631235, 0.0056625935559224], [0.0024686582698449, -0.0002175510779538, 0.0029018245733017], [0.000743204473691, -6.869370832773502e-05, 0.0014031168241627], [0.0001915435167085, -1.7256372974254843e-05, 0.0002737641113091], [1.1281188631687557e-05, -1.1259540175589624e-06, 2.161282057337952e-06]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cG + coeffs_jet_rad_lead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_y = [[20.544491092761938, -1.4416928688570312, 8.234872015119887], [20.3518824720486, -1.4397853286553948, 8.211618486635706], [19.861561038825855, -1.4158039806347338, 7.659948473759765], [18.98477486146442, -1.3675098626998143, 6.928523803046306], [19.259647842453653, -1.418337414348726, 6.700156228907486], [17.753735642632353, -1.3251611770706766, 5.928922248015315], [16.16721657387166, -1.2298174753239193, 5.389208570010628], [15.316900024069884, -1.1702243755137898, 5.053200696296881], [14.217582424634266, -1.0909665639546666, 4.78198086189586], [12.538479498455915, -0.9664044922990253, 3.971342593297335]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cG + coeffs_jet_rad_lead_y[3] * params.cG * params.cG
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.728643249929828, -0.4926669868155559, 2.9001598824834045], [7.306623122092528, -0.5364358024810444, 2.857778099322635], [8.460962074940545, -0.621838352857015, 3.107955016361033], [10.652029193095776, -0.7669354884048768, 3.772219854884345], [14.618124328208989, -1.0543088843225488, 4.625852196247165], [21.211604020249595, -1.5549593805692312, 6.58734961023759], [28.495492680663315, -2.1365417421948365, 11.476559709306574]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cG + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.625709005787956, -0.8147078167132535, 6.545554981478635], [11.996952621659776, -0.8481001845052255, 5.557079637164549], [12.168352663365832, -0.8720438009262538, 4.614237831768196], [12.917426537345294, -0.9429950072605896, 4.490255352317856], [14.487508386119911, -1.051184711388432, 4.50478851327531], [16.486471338487572, -1.237536831792793, 4.814446637448698], [17.79749366175151, -1.393117621759437, 4.86236178955419]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cG + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.21909947311857, -0.7463014460416625, 3.9864569806238337], [12.770357236245465, -0.9175599721859016, 5.244850795845082], [12.205421774514164, -0.873470718582182, 4.89830660772014], [11.81238226740972, -0.8540469838169675, 4.400234336750911], [12.188461352884406, -0.8844017792619283, 4.712549641462104], [13.121608751433165, -0.9536102590546206, 4.990987715187412], [14.518099641335592, -1.066043028721182, 5.177062413454598], [16.12954953459698, -1.191358331594709, 5.596531788261007], [17.629740330149616, -1.321576943689358, 5.52481945623194], [18.662993724312035, -1.4177427423964095, 5.6668458030011655]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221213854467237, -0.00118182377344, 0.0019786252869239], [0.0650748214619342, -0.0047100517699223, 0.014798599805596], [0.0195554130034436, -0.0017052288608889, 0.0118624861135544], [0.0039249342599814, -0.0003775290523839, 0.0046617487703997], [0.0007223339928497, -7.285185555098705e-05, 0.0014381811762179], [0.0001289988545133, -1.3497829012762524e-05, 0.0003218346192926], [6.110519427021647e-06, -6.757951811615313e-07, 1.452905771685137e-05]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cG + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3794925270948124, -0.028387085637034, 0.1318847770174707], [0.1076009890721816, -0.008460392888462, 0.044796181573532], [0.0311422585391439, -0.0025176498270832, 0.0161708714819141], [0.007688301992601, -0.0006540832977021, 0.0045653658460425], [0.0015862154195576, -0.0001411420630616, 0.0013497366985856], [0.0003478462942187, -3.233078862575202e-05, 0.0004959569844973], [8.487639560542932e-05, -8.630619675096745e-06, 4.536532904135552e-05], [4.658914926796448e-06, -6.20854546970471e-07, 9.561411154446529e-06]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cG + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_sublead_y = [[8.380269481718505, -0.6282072401965355, 3.625065506551739], [8.298175112922346, -0.6152558842467326, 3.436228053152312], [8.146364940885348, -0.6109659526776604, 3.3220258857188534], [7.780921772368433, -0.5962665803745059, 3.120228546670491], [8.013958663615487, -0.6217918583722721, 3.0640402555375106], [7.269393941283501, -0.5718143808617132, 2.851721700429103], [6.606561260860592, -0.519940267052901, 2.494677889110277], [6.355052437353271, -0.5062281496192796, 2.5219229022825957], [5.964880826756502, -0.4739585274345593, 2.368732530799216], [5.34585620999157, -0.4152820734186183, 2.110806255059287]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cG + coeffs_jet_rad_sublead_y[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.948610689849206, -0.5999737276915528, 3.280444482802108], [7.316983378441416, -0.5552501939494024, 3.041620327152261], [5.560706422978711, -0.4201649645587956, 2.151821306114248], [4.571451740858191, -0.3502786527422735, 1.7437762665791288], [3.782334215511899, -0.2956472249752556, 1.623971467896174], [2.896621020397487, -0.2312352273698652, 1.074285501472499], [2.004005669692991, -0.1626872718525474, 0.8074219289664817], [1.2165529016183574, -0.0990680462164176, 0.466770767674858], [0.6146504473980084, -0.0509596150943472, 0.2313884994183313], [0.168851083786776, -0.013894708567999, 0.0406951916315072]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cG + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.059890194021137, -0.3937470610766431, 2.160788649372112], [6.2291428184999, -0.4704844835550342, 2.794160083288045], [5.582484643899487, -0.4304110752759684, 2.3144613665391462], [5.156355204342239, -0.3910275202014555, 2.021658255734048], [5.145021393314505, -0.3917983524768166, 2.0167747799744262], [5.344600696965285, -0.4089280349053826, 2.291764944245487], [5.689297456745476, -0.43980845037865, 2.219192722743072], [6.064273658096081, -0.4712379597410969, 2.384989222837293], [6.441910370332553, -0.4987146023208459, 2.3000323779520517], [6.711253285082419, -0.5262981078596863, 2.5040680467524314]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cG + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.093070069736196, -0.3143995213653719, 1.7041773124644912], [4.337314694090408, -0.3345850435908175, 1.8196430922423243], [4.746938708598909, -0.3676934597598574, 1.917288974344676], [5.4182256362879215, -0.4100398753193687, 2.122945558907562], [6.344127604352142, -0.4885330087810474, 2.5219736385978018], [7.344283889981755, -0.5709495599844958, 2.8751543139949374], [7.913072835131127, -0.6094649212038689, 3.1625884748022943]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cG + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.447489723711362, -0.4109565010637552, 2.4854749289983347], [5.564509501198138, -0.4219270185848628, 2.508486768995472], [5.489840804386954, -0.423090879382705, 2.292388385377843], [5.561659710315999, -0.422989740030703, 2.2322136514866915], [5.820444081495408, -0.4472073546151158, 2.107314575827251], [6.08376181502572, -0.4768602189112146, 2.312008197756108], [6.229286622296651, -0.492588691727043, 2.178143826199449]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cG + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.917239452221856, -0.3755299556222207, 2.030851303187636], [6.06990315192703, -0.4649370078805601, 2.487071732119268], [5.676488242983194, -0.4348389762633409, 2.419310630973583], [5.3435152610513965, -0.4039710580032286, 2.3280757256660545], [5.353068444541266, -0.4133069893083027, 2.1485105284779724], [5.519604342134173, -0.4242866814675669, 2.2380093957250824], [5.773619542463188, -0.4379852492058338, 2.3832708651684134], [6.048617508165417, -0.4772026203336082, 2.374039287261492], [6.286857762774572, -0.4915560833701884, 2.33624533229436], [6.435337971140474, -0.4980497488643747, 2.2913991027502747]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0599173156578416, -0.004320077026775, 0.0198679473138454], [0.0484268476053289, -0.003710835179296, 0.0186702308423944], [0.0112294617728518, -0.0009161010743074, 0.0052613524919639], [0.0023702781420072, -0.0002056055713389, 0.0013662078902346], [0.0005064847699644, -4.5005214405267656e-05, 0.0003760300961099], [0.0001113742978299, -1.0871587707798082e-05, 8.360293346310402e-05], [2.403484839312984e-05, -2.1449266772383403e-06, 7.316372665919808e-06], [1.7905397212085463e-06, -1.5810168189192765e-07, 5.172478238223956e-07]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cG + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cG * params.cG
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

function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.949187928806738, -0.0670278867694641, 0.1935141138872676], [0.8293941897803989, -0.0580752240527077, 0.19409175656428], [0.2952992142358519, -0.0203833305066358, 0.1099468230685579], [0.0772610637965416, -0.0054227522650337, 0.0511621806331135], [0.0161403263530073, -0.0012080343429745, 0.0177859185978957], [0.0035785692511921, -0.0002878157851164, 0.0053395420337863], [0.0009033172874966, -7.324895260040973e-05, 0.0020003313102077], [0.0002146568969133, -1.7429636977211708e-05, 0.0009313504723794], [1.0419803238002192e-05, -8.720557550992053e-07, 4.5288656806455006e-05]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cG + coeffs_jet_W_lead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_y = [[52.08839548047075, -3.4373875569349623, 18.573926144054823], [50.47613569680361, -3.350670331756893, 18.352714473318667], [47.1455927861183, -3.1803558666070195, 16.858207520759183], [42.42084875550827, -2.9162479816601747, 14.371147072354702], [38.64879759845239, -2.7175494080712608, 12.27972295004862], [32.4380671654469, -2.3800517006544784, 10.040609557587183], [25.793421597170475, -1.935033419198808, 7.192208202470325], [20.74416613977341, -1.6161118705702422, 5.243501617064485], [16.060964684798392, -1.26573645244554, 3.834851368471173], [11.77479916198253, -0.9466741885565128, 2.906464126125386]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cG + coeffs_jet_W_lead_y[3] * params.cG * params.cG
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.32386144861168, -0.1633713353399419, 0.6325008694858641], [0.3106428456505096, -0.0217332802034608, 0.1407161602456519], [0.0395601165683636, -0.0027590623203766, 0.0320802257328147], [0.0037046287291606, -0.0002762524747075, 0.0050963345843354], [0.0003304300896941, -2.8188116325663327e-05, 0.0004981450201972], [6.489922881844002e-05, -5.627681003695377e-06, 9.969569737506224e-05], [3.358345571467353e-06, -3.284498597867442e-07, 2.9975204107870823e-06]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cG + coeffs_jet_W_sublead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_W_sublead_y = [[47.50554718616103, -3.177135389510728, 16.689457164506692], [46.52200023673434, -3.112506977897364, 16.232955221130787], [44.33384106188296, -3.024239460913882, 15.177283680096984], [40.290936088829646, -2.7820695373369477, 13.142487821765105], [38.95284546694816, -2.7270687601798773, 12.344648421517295], [32.72985476505498, -2.3576670475686656, 9.867443349405242], [27.283332091883597, -1.9931372500717548, 8.515693663558924], [23.925512094898217, -1.7968862370171603, 7.255917760316114], [19.929173307240752, -1.5164042889264735, 5.662883487086543], [16.124906584635564, -1.247515121836125, 4.937085056602737]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cG + coeffs_jet_W_sublead_y[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.78443208392893, -3.754267703518345, 19.68023634663737], [49.46352533355519, -3.4083074437827383, 16.54430813953453], [32.821968368011085, -2.2866690184789404, 9.240220406727577], [17.29370624679839, -1.2343770727306682, 4.867875582969176], [7.688668075280672, -0.5603614024831318, 2.4174513167959013], [3.7551496569136233, -0.2889622097227767, 1.0529243429929482], [2.18688581344707, -0.1761710041950109, 0.6473815466028034], [1.19754173674016, -0.1011551184574717, 0.2783068877235279], [0.5289512377006407, -0.0486823417106605, 0.0882015617390358], [0.1311088748694044, -0.0109248123143511, 0.0304157853562589]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cG + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.713016906538325, -1.638104522462965, 11.84888274221194], [30.287400904292497, -2.1000578925205224, 15.513127174099646], [32.72137860690624, -2.237893238458533, 12.533558522548123], [32.43338765850052, -2.239428835302812, 9.74562778008752], [30.293004302087457, -2.1448510993206265, 8.062125719881926], [27.42392802913122, -1.945795679703065, 6.471147178870582], [24.916585763055476, -1.784406781658623, 6.144375966598309], [23.112438452308982, -1.6508846108835935, 6.027909076363131], [22.03725270935835, -1.5814327200617857, 5.113039749426678], [21.72188708045545, -1.5631781167766663, 5.069227725328464]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5665515674921499, -0.0393153846404512, 0.1533536672974045], [0.2910724857562011, -0.0211641183475557, 0.0865034911338874], [0.1440180483277391, -0.0107346850169229, 0.0528949271154036], [0.0590095372239031, -0.0045403622253929, 0.0272863018419336], [0.0208956266877153, -0.0017164828325425, 0.0116029961112846], [0.0072857215842966, -0.0006152185631235, 0.0056625935559224], [0.0024686582698449, -0.0002175510779538, 0.0029018245733017], [0.000743204473691, -6.869370832773502e-05, 0.0014031168241627], [0.0001915435167085, -1.7256372974254843e-05, 0.0002737641113091], [1.1281188631687557e-05, -1.1259540175589624e-06, 2.161282057337952e-06]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cG + coeffs_jet_rad_lead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_y = [[20.544491092761938, -1.4416928688570312, 8.234872015119887], [20.3518824720486, -1.4397853286553948, 8.211618486635706], [19.861561038825855, -1.4158039806347338, 7.659948473759765], [18.98477486146442, -1.3675098626998143, 6.928523803046306], [19.259647842453653, -1.418337414348726, 6.700156228907486], [17.753735642632353, -1.3251611770706766, 5.928922248015315], [16.16721657387166, -1.2298174753239193, 5.389208570010628], [15.316900024069884, -1.1702243755137898, 5.053200696296881], [14.217582424634266, -1.0909665639546666, 4.78198086189586], [12.538479498455915, -0.9664044922990253, 3.971342593297335]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cG + coeffs_jet_rad_lead_y[3] * params.cG * params.cG
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.728643249929828, -0.4926669868155559, 2.9001598824834045], [7.306623122092528, -0.5364358024810444, 2.857778099322635], [8.460962074940545, -0.621838352857015, 3.107955016361033], [10.652029193095776, -0.7669354884048768, 3.772219854884345], [14.618124328208989, -1.0543088843225488, 4.625852196247165], [21.211604020249595, -1.5549593805692312, 6.58734961023759], [28.495492680663315, -2.1365417421948365, 11.476559709306574]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cG + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.625709005787956, -0.8147078167132535, 6.545554981478635], [11.996952621659776, -0.8481001845052255, 5.557079637164549], [12.168352663365832, -0.8720438009262538, 4.614237831768196], [12.917426537345294, -0.9429950072605896, 4.490255352317856], [14.487508386119911, -1.051184711388432, 4.50478851327531], [16.486471338487572, -1.237536831792793, 4.814446637448698], [17.79749366175151, -1.393117621759437, 4.86236178955419]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cG + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.21909947311857, -0.7463014460416625, 3.9864569806238337], [12.770357236245465, -0.9175599721859016, 5.244850795845082], [12.205421774514164, -0.873470718582182, 4.89830660772014], [11.81238226740972, -0.8540469838169675, 4.400234336750911], [12.188461352884406, -0.8844017792619283, 4.712549641462104], [13.121608751433165, -0.9536102590546206, 4.990987715187412], [14.518099641335592, -1.066043028721182, 5.177062413454598], [16.12954953459698, -1.191358331594709, 5.596531788261007], [17.629740330149616, -1.321576943689358, 5.52481945623194], [18.662993724312035, -1.4177427423964095, 5.6668458030011655]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cG * params.cG
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221213854467237, -0.00118182377344, 0.0019786252869239], [0.0650748214619342, -0.0047100517699223, 0.014798599805596], [0.0195554130034436, -0.0017052288608889, 0.0118624861135544], [0.0039249342599814, -0.0003775290523839, 0.0046617487703997], [0.0007223339928497, -7.285185555098705e-05, 0.0014381811762179], [0.0001289988545133, -1.3497829012762524e-05, 0.0003218346192926], [6.110519427021647e-06, -6.757951811615313e-07, 1.452905771685137e-05]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cG + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3794925270948124, -0.028387085637034, 0.1318847770174707], [0.1076009890721816, -0.008460392888462, 0.044796181573532], [0.0311422585391439, -0.0025176498270832, 0.0161708714819141], [0.007688301992601, -0.0006540832977021, 0.0045653658460425], [0.0015862154195576, -0.0001411420630616, 0.0013497366985856], [0.0003478462942187, -3.233078862575202e-05, 0.0004959569844973], [8.487639560542932e-05, -8.630619675096745e-06, 4.536532904135552e-05], [4.658914926796448e-06, -6.20854546970471e-07, 9.561411154446529e-06]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cG + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cG * params.cG
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
    coeffs_jet_rad_sublead_y = [[8.380269481718505, -0.6282072401965355, 3.625065506551739], [8.298175112922346, -0.6152558842467326, 3.436228053152312], [8.146364940885348, -0.6109659526776604, 3.3220258857188534], [7.780921772368433, -0.5962665803745059, 3.120228546670491], [8.013958663615487, -0.6217918583722721, 3.0640402555375106], [7.269393941283501, -0.5718143808617132, 2.851721700429103], [6.606561260860592, -0.519940267052901, 2.494677889110277], [6.355052437353271, -0.5062281496192796, 2.5219229022825957], [5.964880826756502, -0.4739585274345593, 2.368732530799216], [5.34585620999157, -0.4152820734186183, 2.110806255059287]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cG + coeffs_jet_rad_sublead_y[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.948610689849206, -0.5999737276915528, 3.280444482802108], [7.316983378441416, -0.5552501939494024, 3.041620327152261], [5.560706422978711, -0.4201649645587956, 2.151821306114248], [4.571451740858191, -0.3502786527422735, 1.7437762665791288], [3.782334215511899, -0.2956472249752556, 1.623971467896174], [2.896621020397487, -0.2312352273698652, 1.074285501472499], [2.004005669692991, -0.1626872718525474, 0.8074219289664817], [1.2165529016183574, -0.0990680462164176, 0.466770767674858], [0.6146504473980084, -0.0509596150943472, 0.2313884994183313], [0.168851083786776, -0.013894708567999, 0.0406951916315072]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cG + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cG * params.cG
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.059890194021137, -0.3937470610766431, 2.160788649372112], [6.2291428184999, -0.4704844835550342, 2.794160083288045], [5.582484643899487, -0.4304110752759684, 2.3144613665391462], [5.156355204342239, -0.3910275202014555, 2.021658255734048], [5.145021393314505, -0.3917983524768166, 2.0167747799744262], [5.344600696965285, -0.4089280349053826, 2.291764944245487], [5.689297456745476, -0.43980845037865, 2.219192722743072], [6.064273658096081, -0.4712379597410969, 2.384989222837293], [6.441910370332553, -0.4987146023208459, 2.3000323779520517], [6.711253285082419, -0.5262981078596863, 2.5040680467524314]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cG + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.093070069736196, -0.3143995213653719, 1.7041773124644912], [4.337314694090408, -0.3345850435908175, 1.8196430922423243], [4.746938708598909, -0.3676934597598574, 1.917288974344676], [5.4182256362879215, -0.4100398753193687, 2.122945558907562], [6.344127604352142, -0.4885330087810474, 2.5219736385978018], [7.344283889981755, -0.5709495599844958, 2.8751543139949374], [7.913072835131127, -0.6094649212038689, 3.1625884748022943]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cG + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.447489723711362, -0.4109565010637552, 2.4854749289983347], [5.564509501198138, -0.4219270185848628, 2.508486768995472], [5.489840804386954, -0.423090879382705, 2.292388385377843], [5.561659710315999, -0.422989740030703, 2.2322136514866915], [5.820444081495408, -0.4472073546151158, 2.107314575827251], [6.08376181502572, -0.4768602189112146, 2.312008197756108], [6.229286622296651, -0.492588691727043, 2.178143826199449]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cG + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.917239452221856, -0.3755299556222207, 2.030851303187636], [6.06990315192703, -0.4649370078805601, 2.487071732119268], [5.676488242983194, -0.4348389762633409, 2.419310630973583], [5.3435152610513965, -0.4039710580032286, 2.3280757256660545], [5.353068444541266, -0.4133069893083027, 2.1485105284779724], [5.519604342134173, -0.4242866814675669, 2.2380093957250824], [5.773619542463188, -0.4379852492058338, 2.3832708651684134], [6.048617508165417, -0.4772026203336082, 2.374039287261492], [6.286857762774572, -0.4915560833701884, 2.33624533229436], [6.435337971140474, -0.4980497488643747, 2.2913991027502747]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cG + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cG * params.cG
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0599173156578416, -0.004320077026775, 0.0198679473138454], [0.0484268476053289, -0.003710835179296, 0.0186702308423944], [0.0112294617728518, -0.0009161010743074, 0.0052613524919639], [0.0023702781420072, -0.0002056055713389, 0.0013662078902346], [0.0005064847699644, -4.5005214405267656e-05, 0.0003760300961099], [0.0001113742978299, -1.0871587707798082e-05, 8.360293346310402e-05], [2.403484839312984e-05, -2.1449266772383403e-06, 7.316372665919808e-06], [1.7905397212085463e-06, -1.5810168189192765e-07, 5.172478238223956e-07]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cG + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cG * params.cG
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

