function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9491379381108868, 0.0026601189200533, 0.0192484742854113], [0.8293294961451331, 0.002362523089051, 0.0165811572309901], [0.2952457932591413, 0.0009713262517929, 0.0082515656345757], [0.0772328624495877, 0.0003223529100868, 0.0031372547604143], [0.0161293277222981, 9.002523317430894e-05, 0.001114413039844], [0.0035753819957688, 2.7890191075263463e-05, 0.0003523265048489], [0.0009021546728305, 1.035504283178043e-06, 0.0001620729837544], [0.0002142046236184, -3.411153547947547e-06, 9.356718475567386e-05], [1.04006224749859e-05, 1.3700982000204793e-07, 4.1482057376419895e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQj11 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_lead_y = [[52.07963817903132, 0.1446845137859811, 1.3295493532592098], [50.46674205421393, 0.1516755091781661, 1.346055743882845], [47.1370891335271, 0.1436294533947749, 1.1336966921041085], [42.41383534621799, 0.1301472498939457, 1.0873380454428758], [38.64289644812589, 0.1267309388710721, 1.0789854625275943], [32.433160017000816, 0.1011081818066576, 0.8323002872906367], [25.790239195163743, 0.0827064304899913, 0.6618408677301197], [20.742207011270576, 0.0735284487726682, 0.5338802261830798], [16.059584304679078, 0.0575426763855729, 0.447023742484304], [11.773634999876537, 0.038594792789563, 0.2821422829825262]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQj11 + coeffs_jet_W_lead_y[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.3240234313341976, 0.006835927095647, 0.0507766202202542], [0.3105669412276871, 0.0010923646079692, 0.0103890889775942], [0.0395416802283642, 0.0001667523270185, 0.0020308730691697], [0.0037012798852872, 2.5599056834088624e-05, 0.0002164565470394], [0.000330091413085, 5.375049128107635e-07, 1.8980684924104183e-05], [6.482933560386199e-05, 2.157896868880986e-07, 5.269048694573282e-07], [3.356558023786626e-06, 7.110237677572301e-08, 6.953600623872787e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQj11 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_sublead_y = [[47.49683882123118, 0.1445985350300882, 1.1191960217728354], [46.51393838972156, 0.1367961547789748, 1.185910726010735], [44.326242225440346, 0.1322494158423968, 1.1480681359620644], [40.28492143733616, 0.1269651103543222, 1.0215738002667971], [38.94737837690372, 0.1213471228056302, 1.048613017000404], [32.72554840841898, 0.098987617325504, 0.7987748424157828], [27.27914645988785, 0.0873085436717068, 0.6718842922168843], [23.92219733773392, 0.0767875579649125, 0.6774179394057546], [19.926818110397612, 0.0665673193919283, 0.5543384470925722], [16.122415631744023, 0.0581310212942785, 0.519584568019238]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQj11 + coeffs_jet_W_sublead_y[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.77571017914199, 0.1789955024475845, 1.5502629228992226], [49.45604782736932, 0.1555027214109872, 1.2876731531014896], [32.817827767536215, 0.0938460744824385, 0.6764959151014591], [17.291649666768357, 0.0511835170529733, 0.4199143583405268], [7.687378354769723, 0.0216648341987895, 0.1915960131292166], [3.754717193680312, 0.0103383949624756, 0.092470865587334], [2.1865748605699395, 0.0083329829985933, 0.0815718727448128], [1.1974538630993128, 0.0039532600161217, 0.0341077198149532], [0.5289386980726554, 0.0014377492154426, 0.0089198321424481], [0.1310998111173353, 0.0009601694377908, 0.0077216033160916]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQj11 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.70666231980473, 0.0889915188141174, 0.8240292166860714], [30.27918910114193, 0.1118083514088881, 1.160732343794024], [32.71520346338828, 0.1143578600258689, 0.933322460890824], [32.42919770808411, 0.0949693103874011, 0.8196506875286513], [30.28940253952859, 0.089942288251511, 0.6516941982973515], [27.42161051797606, 0.0715300101171055, 0.527402714387721], [24.913850517061324, 0.0701487974971642, 0.5570255129141418], [23.109167894437935, 0.0661376213144469, 0.4654222301714335], [22.03534594421293, 0.0641708858311866, 0.4821252410142262], [21.719772616877343, 0.0590534859036232, 0.4749497926686181]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQj11 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.566496670411805, 0.0016931920197282, 0.013191017937657], [0.2910369089394135, 0.0007974858625017, 0.0059698516574622], [0.1439925078393264, 0.0003999344070539, 0.003707388659806], [0.0589951246639904, 0.0001578791331972, 0.0013532676526998], [0.020888894966311, 6.087332086123588e-05, 0.0005321666709248], [0.0072823676833494, 2.363709613976312e-05, 0.0001925025583473], [0.0024667815264188, 1.0470243068044834e-05, 0.000106348787991], [0.0007423735169994, 9.991229708543532e-06, 0.0002448925797218], [0.0001912773164797, 3.4471499028426995e-06, 7.400927478063464e-05], [1.12806312094964e-05, 2.2781004225068908e-08, 1.0626201257174673e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQj11 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_lead_y = [[20.540275221517373, 0.0577282804652539, 0.5337831657598847], [20.347571490910155, 0.0557318248525747, 0.462746167521206], [19.857845839819333, 0.0624205627232705, 0.4514201980934583], [18.981482967257165, 0.0570862179751904, 0.5834987457411348], [19.256711666259697, 0.0546015240414074, 0.4766131845391581], [17.75094077669071, 0.0517773268647846, 0.4053587066619316], [16.16482013515326, 0.044417483413569, 0.3728046703053379], [15.314747957050358, 0.0457658086941607, 0.3480168046428754], [14.2154743377556, 0.0432303027682433, 0.3536353707001725], [12.536794755431057, 0.0339814145249199, 0.2869663386667661]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQj11 + coeffs_jet_rad_lead_y[3] * params.cQj11 * params.cQj11
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.727007326351942, 0.0197649667242049, 0.175398524999233], [7.305200115224155, 0.0243105985418964, 0.1834827584757946], [8.459489615482347, 0.0262375838967525, 0.2236576708524387], [10.650264016075068, 0.0266398814222187, 0.1986743157563057], [14.616175048008923, 0.0389215558131121, 0.2842754702719781], [21.2088912568484, 0.0595241491510643, 0.4700727804475814], [28.48957204866917, 0.0883140974901241, 0.8720570742136885]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQj11 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.622013752601658, 0.0391906931177344, 0.4775861188012438], [11.994221759877233, 0.0410270556920662, 0.3883711565839095], [12.166269750546498, 0.033967369913478, 0.2762202465937564], [12.915365650601649, 0.0351579351855224, 0.2628184951537746], [14.4855362900267, 0.0394005397373823, 0.3144883302759172], [16.484422200395624, 0.045905027815892, 0.3300034833120492], [17.79527977012962, 0.0488777750709661, 0.3599361669101764]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQj11 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.217250580129228, 0.032603060006023, 0.3102678535187158], [12.767846580222924, 0.0406410482424474, 0.3731227825558133], [12.203013102439815, 0.0379394184030792, 0.393505848332788], [11.810276263860606, 0.0338311131612944, 0.3020336974707101], [12.186153007034273, 0.0367040191594904, 0.2928626045021522], [13.119032132946506, 0.038646538998048, 0.2985804736694271], [14.515729692708092, 0.0361432140671513, 0.3007033044125542], [16.12690735953304, 0.0478684562045015, 0.3597070942192802], [17.62727456537403, 0.0483248711056595, 0.37628854807763], [18.660531518581777, 0.0511852696712689, 0.4142955840114621]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQj11 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221218424237487, 5.292184388439995e-05, 0.0002995897210997], [0.0650707060870193, 0.0001683719829051, 0.0010877820821084], [0.0195493454753039, 6.387458947717755e-05, 0.0006004896834924], [0.0039221299653295, 1.858200058987289e-05, 0.0002498803187955], [0.0007214162177447, 5.559426266982518e-06, 0.0001099505160349], [0.0001288221324128, 2.5092181444197038e-06, 7.291273174343083e-05], [6.100618200832883e-06, 1.2321797991602004e-08, 6.825631483907895e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQj11 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3794325269664292, 0.001055925234076, 0.0082294716131153], [0.1075794850846944, 0.0002910161709992, 0.0024941798780997], [0.0311329164081345, 8.273085861401154e-05, 0.000673114522218], [0.0076860945347893, 2.7556465775505003e-05, 0.0004179619045501], [0.001585191367206, 3.906556332041444e-06, 2.4819103221081287e-05], [0.0003473466702518, 1.2677455547865815e-06, 6.330007506845642e-06], [8.484498577951603e-05, 1.7136006222622318e-07, 3.8801266231458985e-07], [4.652805518676537e-06, 9.39563685268894e-09, 5.0642033964616637e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQj11 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_sublead_y = [[8.378289899690627, 0.0207727705123232, 0.1785707881221132], [8.296459490265574, 0.0243922542964482, 0.1976442280791502], [8.144636901081908, 0.0233934525492661, 0.2018107526208714], [7.779432777742813, 0.0201012995271886, 0.1568580887652594], [8.012556345880755, 0.0215069284239299, 0.1680013914613524], [7.268084763979641, 0.021369834923327, 0.2219734075324516], [6.605469948056077, 0.0193749122875, 0.1895911831706981], [6.353793422627254, 0.0169807382116184, 0.1279780659091908], [5.9637712486997385, 0.0167155340567808, 0.1248003480100818], [5.344924953088788, 0.0159007065922829, 0.1092742450582408]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQj11 + coeffs_jet_rad_sublead_y[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.9469906641489585, 0.0243296295105259, 0.1986905280326103], [7.315436718011179, 0.0197864560208876, 0.2175737428811652], [5.559749097212029, 0.0145647855453118, 0.1193373538317941], [4.570603530005656, 0.0120361033440167, 0.0809547934737306], [3.781451342321252, 0.0097894071353774, 0.0668014992241299], [2.896141495801145, 0.0084696677173732, 0.0640270730859718], [2.0036357407073924, 0.0066422523728972, 0.0540527426326876], [1.21633920979432, 0.0025259215957253, 0.0240040707467613], [0.614554164564554, 0.0014753634287637, 0.010769340147055], [0.1688391422973159, 0.0007119458779033, 0.0038476775619475]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQj11 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.058840083355084, 0.01430119493147, 0.1381652056757229], [6.227747284935673, 0.0204509609243696, 0.2578996455261305], [5.581327427574784, 0.0172562561594585, 0.1115628900062402], [5.155413076372194, 0.0141390557719715, 0.1098323728605262], [5.144081102890646, 0.0127584703699398, 0.1067661343231764], [5.343486078052317, 0.0134375748481075, 0.1098133993758823], [5.688249515746091, 0.0153318281532438, 0.1069665603599762], [6.063119969356961, 0.0152237376372353, 0.1294915250330088], [6.440765713857505, 0.0172956043554777, 0.132351811206335], [6.710041674472246, 0.019388638436315, 0.130379370984208]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQj11 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.092271336801864, 0.0114569090890192, 0.085433288973619], [4.336330569769223, 0.0108442092279416, 0.0894339812118412], [4.745939530236084, 0.0135737886887542, 0.1020031645762755], [5.417215204134637, 0.0150139057008632, 0.1268927612213312], [6.342926321292966, 0.016261614497445, 0.118513664147839], [7.342945558842419, 0.0211876710211721, 0.2080464606411751], [7.9115740934914704, 0.0233466527455161, 0.2046851318938892]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQj11 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.4462761080667095, 0.017018518483807, 0.1564065626851669], [5.56330318710639, 0.0153064226143928, 0.1716392061396823], [5.488660507496095, 0.0163961190539504, 0.1329293252482226], [5.560588976067299, 0.0143178870251901, 0.11327158475407], [5.819482753438881, 0.0178824462098795, 0.128342310296076], [6.082532189048786, 0.0158025368306601, 0.110013965654891], [6.228335576595604, 0.0150285852852926, 0.1234073366403343]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQj11 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.9162983367267605, 0.0125689783093289, 0.109758550421291], [6.068747121369438, 0.0177581341700115, 0.1780705414545553], [5.675352311545833, 0.0164861325111746, 0.1700554354235708], [5.342333789684925, 0.0146159918743221, 0.1372634849526387], [5.352020757905425, 0.0154011883696019, 0.1378692508486273], [5.518518537508059, 0.0152440728184083, 0.1084133091009669], [5.772315496159416, 0.0159478014022386, 0.1183005750275148], [6.047482340004856, 0.0175832083736027, 0.1297634528887134], [6.285658160505872, 0.0162393979924226, 0.1145162811660789], [6.43434644995197, 0.0177463660985348, 0.1342847040170706]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQj11 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQj11 * params.cQj11
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0599094143135828, 0.0001757318121745, 0.0015557218777208], [0.0484176768683499, 0.0001279135042436, 0.0009688994162125], [0.0112268940245328, 3.249618976147634e-05, 0.000308236096769], [0.0023694556522799, 6.603604708369682e-06, 4.849518564621264e-05], [0.0005061724669474, 1.7948538188212094e-06, 2.052745533952964e-05], [0.0001113248351801, 9.824893379097959e-08, 2.090449401414947e-06], [2.403136643817792e-05, 4.85680080744088e-08, 1.7337985189893333e-07], [1.7902916954286009e-06, 5.669001543910419e-09, 1.3088211828955481e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQj11 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQj11 * params.cQj11
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

