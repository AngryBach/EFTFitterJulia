function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9481276640382024, 0.0066112137060522, 0.0056907702059459], [0.8284579708101226, 0.0058427288303115, 0.0049344016274871], [0.2949269572749919, 0.0024205698725512, 0.0022836062459476], [0.0771491657590331, 0.0008078889515194, 0.0008172648448261], [0.0161114371000243, 0.0002240451181317, 0.0002737300038912], [0.0035714637526557, 7.011030437622356e-05, 8.417232583941898e-05], [0.0009011098365889, 8.19629944340274e-07, 3.751827547940093e-05], [0.0002139394657773, -9.567168231179774e-06, 2.1155007251108368e-05], [1.0391611312735236e-05, 3.5219688148840815e-07, 9.37774775439844e-07]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQj38 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_lead_y = [[52.02387789107287, 0.3528344065323904, 0.3737234616367707], [50.413765380269126, 0.3725067888688564, 0.37371294900011], [47.08672723185053, 0.3574611919451347, 0.3229144186039163], [42.36837486268071, 0.3213725212029588, 0.305679812862079], [38.6016058444084, 0.3179814684861232, 0.298159488169813], [32.399409988062125, 0.2547346226357474, 0.2326950489481816], [25.76273864111816, 0.2088696617882186, 0.1860456318780568], [20.720101948707143, 0.1880123817177265, 0.1500301547395091], [16.04273283085926, 0.1467514613184728, 0.1233093703153868], [11.761298415471291, 0.1001928231586568, 0.0801388883052188]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQj38 + coeffs_jet_W_lead_y[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.3213037930178184, 0.017137788250315, 0.0155131477690827], [0.3102282996834686, 0.0027171551606926, 0.002789627622981], [0.0394985111459605, 0.0004142492054836, 0.0005132667947126], [0.003697032958642, 6.595786034548002e-05, 5.435711032335177e-05], [0.0003296926249499, 1.373764018950515e-06, 4.7796444907910375e-06], [6.474092686945854e-05, 5.536910287805703e-07, 2.417751018871041e-07], [3.3522048606472667e-06, 1.7906352680424568e-07, 1.6179774839917877e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQj38 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_sublead_y = [[47.44602425504815, 0.3580072776440462, 0.3203498542510081], [46.46427343536386, 0.3366250538618821, 0.3335304234491574], [44.27881518349695, 0.3276317614410621, 0.3219595832305859], [40.24174552922714, 0.3188785203195984, 0.2878658861409718], [38.90620946543227, 0.3036482141290502, 0.2909933053410726], [32.69101259904357, 0.2471973958551731, 0.2262330892826312], [27.25008354285245, 0.2192274780048048, 0.1905008993443487], [23.897302108443533, 0.1933617150154585, 0.1858320375356149], [19.906187859728, 0.1675931797331306, 0.1524120027990993], [16.105758187109167, 0.1475294372716276, 0.139153125032661]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQj38 + coeffs_jet_W_sublead_y[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.71720905716083, 0.4445744843927056, 0.4271316068395596], [49.40259976420101, 0.3852151364386151, 0.3612677383344747], [32.78291371898504, 0.2337963940859392, 0.1992496591480312], [17.273708281092873, 0.1271378251392582, 0.1186016907903443], [7.679300833706104, 0.0540308490414177, 0.0539559686211157], [3.7507670376170776, 0.0255475954397214, 0.0260931775024981], [2.1841445133244104, 0.0210084282217844, 0.0215907620206855], [1.1962426577666638, 0.0100678831782525, 0.0092939621359193], [0.5284146793515492, 0.0036383567392201, 0.0027166438262056], [0.1309674679239565, 0.0024916894411635, 0.0019128460961756]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQj38 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.68182279609691, 0.2239691470576473, 0.2185530163235312], [30.24658466212155, 0.2758289914495269, 0.3042650317113489], [32.68058944096358, 0.2855295902663176, 0.2564352969300748], [32.39478801853536, 0.2351309290165553, 0.2305032498505352], [30.256694457860046, 0.2263617927036171, 0.1909293092970683], [27.39272662489974, 0.1787354105673905, 0.1577226507154073], [24.88762744716074, 0.1749128674370311, 0.1607333415491265], [23.08483934916, 0.1652287131302467, 0.137695544232954], [22.012084745862968, 0.1592798329235342, 0.1399413158347789], [21.69671571516681, 0.1495769738912691, 0.1380170173563203]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQj38 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5659174429291367, 0.0042044996175284, 0.0037427489509893], [0.2907387922133879, 0.001997434979399, 0.001745026695406], [0.1438444896011757, 0.0009995794756426, 0.0010323200880437], [0.0589337367296454, 0.0003968343817084, 0.000387151414126], [0.0208662373699717, 0.0001549907989307, 0.0001501856452001], [0.0072747187330125, 5.995664363575024e-05, 5.358649074410568e-05], [0.0024641474310332, 2.689633312414444e-05, 2.7411653080818468e-05], [0.0007414935081558, 2.5484327976954933e-05, 5.586901337431357e-05], [0.0001910389267206, 8.640209739319772e-06, 1.6848409356932258e-05], [1.1267424033098062e-05, 5.885985896630746e-08, 4.2020234093508073e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQj38 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_lead_y = [[20.51885270324341, 0.1426069280526314, 0.1488121917101952], [20.326610947845577, 0.1390258923584958, 0.132368661176194], [19.837643309121336, 0.1580883421478806, 0.1288823359754598], [18.961926918364657, 0.1429112261131342, 0.1573597633553494], [19.23719835512499, 0.1348553332159078, 0.1334122210218411], [17.73264067544869, 0.1299373765947837, 0.1158583833455291], [16.14815096339911, 0.1117540684769905, 0.1063124633926526], [15.299226644232103, 0.115996077820735, 0.099225398128515], [14.201035624259504, 0.1091262090823518, 0.0989655773395229], [12.52386330672233, 0.0866047340476829, 0.0819516494304523]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQj38 + coeffs_jet_rad_lead_y[3] * params.cQj38 * params.cQj38
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.720084298041296, 0.0490879351307088, 0.0487327495886123], [7.297736775630635, 0.0613973116241188, 0.0513398862768858], [8.450771015346279, 0.065993337458825, 0.0620132330985598], [10.639418617603862, 0.0672461703680532, 0.059367417421458], [14.601347989836214, 0.0974319332410296, 0.0840211170653178], [21.187231396263456, 0.1489915313163669, 0.1348455647497873], [28.459936081984985, 0.2203199743812144, 0.23560703880478]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQj38 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.610183360036052, 0.0973347211342193, 0.1229989110852381], [11.9819448717114, 0.1018154342560136, 0.103731800324731], [12.153985766781997, 0.0848144159691027, 0.078675913495306], [12.90218563070428, 0.0881040792789422, 0.0769440833080477], [14.470704494609416, 0.100039104738488, 0.0907647397693857], [16.4673893514201, 0.1155350862081891, 0.0972571670434633], [17.776808203251075, 0.1227065129557415, 0.1059777639066489]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQj38 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.206667200449829, 0.0805408724977248, 0.0839168957020068], [12.754700711435117, 0.1017581480910805, 0.1015211105946676], [12.190549827574989, 0.0956437184971374, 0.1051065908337752], [11.798442133185771, 0.0840701166441173, 0.0837961998585262], [12.173615993973838, 0.0924907142445464, 0.0827641411737521], [13.105590529102908, 0.0977079381439116, 0.0852856352542248], [14.50068417501694, 0.090525494936035, 0.0879419808167956], [16.110496065411866, 0.1204521869066556, 0.1030882574677454], [17.60923628957548, 0.120831914851522, 0.1089967666196254], [18.64116737492464, 0.128478945440716, 0.1193348099058487]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQj38 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220989597464912, 0.0001310920206859, 9.852441558712136e-05], [0.0650035705630285, 0.0004181342683344, 0.0003350381885546], [0.01952929444302, 0.0001607455464166, 0.0001617669271922], [0.0039180526469168, 4.7193329772996366e-05, 6.143905198328568e-05], [0.0007206351768473, 1.4004459037351314e-05, 2.562137947865889e-05], [0.0001286455696554, 6.347729336802694e-06, 1.6509097020833784e-05], [6.09415331631414e-06, 3.156324819107748e-08, 2.4164065400964613e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQj38 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3790640880055497, 0.0026560676363047, 0.0023458182678024], [0.107471728640761, 0.0007343552607911, 0.000705947125825], [0.0311009636054544, 0.0002125976169569, 0.0001943815435962], [0.0076776614625444, 6.9553085121453e-05, 0.0001049451162031], [0.0015833867364345, 1.0035960405714786e-05, 8.042978270610724e-06], [0.0003469245719716, 3.3628314272652856e-06, 2.005332466836624e-06], [8.47225906799027e-05, 4.521973506987241e-07, 2.5726087291248853e-07], [4.647830963866886e-06, 2.408652384060761e-08, 1.8176731748697383e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQj38 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_sublead_y = [[8.369957601050263, 0.0515478037902202, 0.0513424573091628], [8.288009782044256, 0.0619009630238612, 0.0558197643062237], [8.136505765769575, 0.0596431268817906, 0.056279657627134], [7.771524009174207, 0.0505801821092169, 0.045930360825803], [8.004662507686088, 0.0545577823825136, 0.0483952358678725], [7.26084337665797, 0.0538296884014698, 0.059531226027565], [6.598917645595562, 0.0485027645181813, 0.0513602478612284], [6.347614972749884, 0.043169054254733, 0.0370994082560774], [5.958067055613946, 0.0424417418923428, 0.0357370860047303], [5.3398336608094015, 0.040273566509218, 0.0314421877752642]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQj38 + coeffs_jet_rad_sublead_y[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.93911155377938, 0.0616114542466004, 0.055289341452983], [7.308063052757762, 0.0497774802783908, 0.0587512176635104], [5.554350412403394, 0.0367294084204253, 0.0340885523239663], [4.566069833960902, 0.0304099343420787, 0.0243353048825753], [3.7776217081802246, 0.0248205163995239, 0.0202054438017903], [2.8932836224325023, 0.0212482824880207, 0.0182452573859837], [2.001700744019985, 0.0168583083066797, 0.0147476776836113], [1.215141264111162, 0.0062163868181337, 0.0070027199094829], [0.6139911371097172, 0.0037920880252346, 0.0031791691779381], [0.1686732959504257, 0.0019314052032993, 0.001092221840404]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQj38 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.053763922522795, 0.0364181390452759, 0.0378467886617872], [6.221787111312264, 0.0514146128349906, 0.0657744585035005], [5.575793181864593, 0.0440634855217528, 0.0325745937514821], [5.150353156262606, 0.0353256688350142, 0.0315018130973606], [5.139053414319864, 0.0319851607702621, 0.030755107106748], [5.338233595345914, 0.0336020774613528, 0.0317461020682876], [5.682655366444913, 0.038850518692472, 0.0316028351305666], [6.056934802078906, 0.038470028094818, 0.0374371088213077], [6.43428575938305, 0.0437001182117144, 0.0384909462330299], [6.703326570029951, 0.0491667045257685, 0.0384065572037423]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQj38 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.088217498646429, 0.028876962438622, 0.0246708741915131], [4.331927863555869, 0.0270825437512297, 0.0260325638864053], [4.741232824213992, 0.0342287876063967, 0.0292750180616679], [5.411854747582533, 0.0382967092786853, 0.035732806933312], [6.336656998253225, 0.041093816460503, 0.0351175198205985], [7.33573007824165, 0.0532799012436509, 0.0564120983315888], [7.903784649532662, 0.0591840209542108, 0.0564780228473743]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQj38 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.440994702096929, 0.043100636137477, 0.0422181922784138], [5.557737664050144, 0.0385892726083128, 0.0459874838547476], [5.4832206913720825, 0.0414663044744049, 0.0371969989886677], [5.555108755513938, 0.0358516285976049, 0.0328477659521766], [5.813726456606059, 0.0456059408727059, 0.0366363731331311], [6.07651940082052, 0.0402474110672631, 0.0328717452542015], [6.222084722359389, 0.0373415739819258, 0.0361627784427326]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQj38 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.911610595245143, 0.0314984671602111, 0.0309554801498119], [6.062768071651358, 0.044877301741215, 0.0479995603239779], [5.669762042356185, 0.0414251814275017, 0.0456632305656557], [5.337024518791177, 0.0368740572819935, 0.0379609356550238], [5.346712697481797, 0.0388097058861828, 0.0380998381781534], [5.51298755117389, 0.0386876883995561, 0.03184264329259], [5.76658224821608, 0.0405353271462948, 0.0343382989216822], [6.041452719684197, 0.0443961545793645, 0.0373083155455757], [6.279305040624815, 0.0411346327794659, 0.034340183026735], [6.427972083518042, 0.0448034405428032, 0.0387749991661518]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQj38 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQj38 * params.cQj38
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598513407017376, 0.0004442295232653, 0.0004276306532755], [0.0483698459398447, 0.0003220739327161, 0.0002822511954203], [0.0112154204989224, 8.204450230432913e-05, 8.46911160613522e-05], [0.0023670465027618, 1.68957339356898e-05, 1.4161354114928314e-05], [0.0005056004064039, 4.623281258018334e-06, 5.375667239759448e-06], [0.0001112108948827, 2.2456572266339493e-07, 6.213345692828079e-07], [2.4000443520638463e-05, 1.2663699904923373e-07, 8.168162220610782e-08], [1.7878808441104203e-06, 1.7623313366322184e-08, 6.323021746421298e-09]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQj38 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQj38 * params.cQj38
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

