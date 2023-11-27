function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9498374401076324, 0.0060403835616249, 0.0161817037464015], [0.8299571309054041, 0.0055285983649921, 0.0139321532594974], [0.2954702670721053, 0.0023804228320473, 0.0072692948658992], [0.0772924092480314, 0.0008201319971208, 0.0028756468980139], [0.0161419778335605, 0.0002196278011599, 0.0010587084281487], [0.0035781497855072, 5.481647635328313e-05, 0.0003401716418367], [0.0009028865184257, 2.008220557758173e-05, 0.0001588889044026], [0.0002143799380675, 6.763943822833776e-06, 9.28245494010446e-05], [1.0406710587305075e-05, 2.927397505959151e-07, 4.121793613706873e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQj31 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_lead_y = [[52.11885854115474, 0.3847193989203936, 1.157651664281356], [50.50443552820867, 0.3751067371759253, 1.1810211538702386], [47.17306870894741, 0.3457316424635662, 0.9757685314337986], [42.44616931981513, 0.3151155576704859, 0.9447046978112936], [38.67231164610137, 0.2967168685261455, 0.949046689354994], [32.4572446702542, 0.2428250559959879, 0.7259570027014128], [25.80980140924922, 0.195348827940908, 0.5755044602858809], [20.75789726817026, 0.1568469845372513, 0.4646279948672585], [16.07154875259123, 0.1211980830575499, 0.3943834731793445], [11.7823964867941, 0.0843798995338199, 0.2433619472561978]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQj31 + coeffs_jet_W_lead_y[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.3256754893068363, 0.015962646139792, 0.044612439575431], [0.3108048091261686, 0.0027452252392685, 0.0093495720227428], [0.0395722709731943, 0.0004743431527594, 0.0018962025803253], [0.0037042899090041, 4.691258962503493e-05, 0.0002032114453082], [0.0003303735076591, 2.8924227580715186e-06, 1.7738836985864336e-05], [6.489217453107406e-05, 3.010530917927712e-07, 2.492592315515828e-07], [3.3596206995897118e-06, 8.091250028241507e-08, 6.818962070628966e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQj31 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_sublead_y = [[47.53310996829854, 0.3466326028068614, 0.9599947045478096], [46.5494273741186, 0.3471632925097446, 1.0302263381700358], [44.35996754191562, 0.3275565239495508, 0.9998627167173952], [40.31550754060609, 0.2959758947024017, 0.8863555780007523], [38.97668369349915, 0.2917535895035542, 0.9187813427238548], [32.7501861207978, 0.2419469941191319, 0.6901083980187761], [27.29989827878142, 0.2022859204576545, 0.5804496086438014], [23.939818227161904, 0.1836538853281884, 0.5996995043444654], [19.94147640454093, 0.1519460260853772, 0.4896524285731943], [16.134232204192074, 0.1300362898187372, 0.4675471658726884]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQj31 + coeffs_jet_W_sublead_y[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.8163605829959, 0.4370164942377996, 1.372540361865945], [49.49321673922738, 0.3760987987353347, 1.1234994703642025], [32.842265231158734, 0.2173978669350254, 0.5694175504663316], [17.304441542287044, 0.1160550637882488, 0.3634874380084722], [7.693119324144088, 0.0524613594898806, 0.1662867867131113], [3.757520448840645, 0.0270233955482814, 0.0800947310892034], [2.1882979126668296, 0.0167200236641616, 0.0739796333321037], [1.1983135078744696, 0.0081476968699214, 0.0303153271505851], [0.5293108712318859, 0.0031468326943985, 0.0072767567003867], [0.1311935230895892, 0.0012460125081753, 0.0073079886549562]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQj31 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.72441130124649, 0.2163926020114235, 0.7457532855648326], [30.30237903164367, 0.29166048156205, 1.058307006063747], [32.73995160737697, 0.2710515680168266, 0.8244571483123895], [32.45360832261452, 0.2379581960994813, 0.7117983790340123], [30.31254892034322, 0.2034094153053839, 0.5496026833454464], [27.44218952949606, 0.1768452364062072, 0.4366112911437894], [24.932588257739347, 0.1600621345858235, 0.474475471618699], [23.126525328971567, 0.1486492944147019, 0.3888955306708725], [22.052003823243847, 0.144765372505518, 0.4085430373844976], [21.736232426498987, 0.1422207290963514, 0.4021900036392525]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQj31 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5669021615007525, 0.0040078477385671, 0.0114092871785888], [0.2912485137559961, 0.0017984261489766, 0.0050397370641316], [0.1440982085980322, 0.000915003472047, 0.0032402383482528], [0.0590385519646956, 0.0003669555156228, 0.00116198795975], [0.0209049694520373, 0.0001298039907915, 0.0004611074272019], [0.0072878007451125, 4.269781446312519e-05, 0.0001684926389844], [0.002468648609681, 1.840392551164809e-05, 9.810929973196777e-05], [0.0007429616583556, 1.3963732653688404e-05, 0.0002424211589434], [0.0001914410574176, 4.07301713410454e-06, 7.330432055963015e-05], [1.1290014990977776e-05, 3.7200596515187614e-08, 6.477569702899114e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQj31 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_lead_y = [[20.55544224683047, 0.1381462992856365, 0.4667905246407759], [20.36243385300399, 0.1339855344654039, 0.3972138878521203], [19.872180856834422, 0.1329298719765668, 0.3881769442652245], [18.995327413752463, 0.1306794874646104, 0.5226287328924759], [19.27056753313783, 0.1297010160296456, 0.4156821966934199], [17.763958882876324, 0.1190595296875346, 0.3479206793251305], [16.176612138713345, 0.1039750221138975, 0.3209204167923269], [15.325767345778456, 0.0981261337229564, 0.2994165909547867], [14.225732816793634, 0.087295664292818, 0.3083676190079704], [12.545952598948356, 0.0770868891279234, 0.2465824830680371]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQj31 + coeffs_jet_rad_lead_y[3] * params.cQj31 * params.cQj31
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.73191738854129, 0.0502320479844777, 0.1537384335751989], [7.310487886455392, 0.0523598027150226, 0.1601755566478097], [8.465676496120576, 0.0569813503778142, 0.1963942319651367], [10.657960304336733, 0.0622806664729295, 0.1646657193358374], [14.626751067828682, 0.0852769214039556, 0.2376087651141386], [21.224363192436726, 0.1311050154892998, 0.4017655467291142], [28.51050398944324, 0.2071102479829323, 0.7799260942172884]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQj31 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.630379480281754, 0.1038560982989478, 0.4409010481007429], [12.002915334782074, 0.0973913021588514, 0.3500217716841972], [12.174980749965355, 0.0801154345564741, 0.2377013333508753], [12.924759708541506, 0.0763128100814532, 0.2212779269163267], [14.496113192493942, 0.0849220503761331, 0.2677778295505402], [16.496588506418266, 0.0954560192881559, 0.2762079318635796], [17.80851143195696, 0.1080902341118484, 0.3014527105640538]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQj31 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.22476057493278, 0.0809376916018678, 0.2771670926402893], [12.777173908635993, 0.098307848197848, 0.33204666161189], [12.21183347940562, 0.0883838802024768, 0.3546589110697787], [11.81867622822129, 0.0780598508564525, 0.2650071876819966], [12.195060355090288, 0.0778110625116074, 0.2535083395620863], [13.128594057775748, 0.080646030595707, 0.2563710112235211], [14.526382192067238, 0.0885190170837106, 0.2537785105533873], [16.138531748399213, 0.1004590440296063, 0.3083939062221641], [17.64007051189488, 0.1087527663543969, 0.3196586307097481], [18.67428847115903, 0.1175099671725268, 0.3534414274328535]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQj31 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221380759915984, 0.00011637593686, 0.0002276604762232], [0.0651179344723222, 0.0003824884028406, 0.0008791382794201], [0.0195636219822318, 0.0001560657298629, 0.0005373280020393], [0.0039250148554824, 4.004353980466599e-05, 0.0002371459774042], [0.0007219638071918, 9.62665323013236e-06, 0.0001075477675331], [0.0001289338645488, 2.98425185376783e-06, 7.247225106927082e-05], [6.105211270698078e-06, 2.0396790003221696e-08, 4.7944210691259264e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQj31 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3796970932943957, 0.0022403925578954, 0.0070642048404995], [0.1076558322754083, 0.0006003691804782, 0.0021580348882168], [0.0311556310018301, 0.0001688554236565, 0.0005725152784745], [0.0076920437055605, 4.841972912237159e-05, 0.0003918116836881], [0.0015864725821396, 7.5618768421848014e-06, 1.9158130591110657e-05], [0.0003476464141112, 1.961328751547183e-06, 5.006104165049891e-06], [8.493192507798775e-05, 2.69233965500736e-07, 3.924146704095128e-09], [4.65633976717677e-06, 1.5518845936022472e-08, 3.501171510539472e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQj31 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_sublead_y = [[8.384200345617153, 0.0477322880949026, 0.152466829750673], [8.302447877072952, 0.0481956200191048, 0.1711731992112882], [8.150407546942716, 0.0470752226973652, 0.1762416847681601], [7.785049690459402, 0.0444481783502873, 0.1319926032585351], [8.01816822049137, 0.045990525546483, 0.1431330470905879], [7.273216195693473, 0.0425394063297818, 0.199294050367561], [6.610116743063016, 0.0405410938071719, 0.1690791345419455], [6.35818304760393, 0.0360040253039331, 0.1085780080880631], [5.9678200118533935, 0.0326318048561084, 0.1069058877792715], [5.348539160170719, 0.0315523825724457, 0.093313317970499]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQj31 + coeffs_jet_rad_sublead_y[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.95257662816701, 0.047309483271307, 0.1740947989745115], [7.320659163367575, 0.0452324477228055, 0.1946351685432946], [5.563576007576366, 0.032077244180237, 0.1024331405313639], [4.5738266309661055, 0.0238089117440922, 0.0666675136452204], [3.78416841418216, 0.0202994039911197, 0.05478175837177], [2.898171434244538, 0.0173369748165945, 0.0550594833907315], [2.0050097341394544, 0.0119077330421185, 0.0479858940959951], [1.2171892319491653, 0.0064891180085136, 0.0202537503622582], [0.6149540111828344, 0.0029856866196766, 0.0090009859379035], [0.1689568843553979, 0.0009418536726192, 0.0033271039519264]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQj31 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.062442837747049, 0.0314362123427512, 0.1222675856238836], [6.231968036654402, 0.0425277657681792, 0.2392517391221766], [5.5852557119863855, 0.0319931052596315, 0.0941579988330832], [5.1590058158237655, 0.0295777838712362, 0.0939574126712802], [5.147655458617342, 0.0287681655617675, 0.0909701629648839], [5.34722082811429, 0.029894311933666, 0.0933006572117249], [5.692223956792442, 0.0302318703739961, 0.0893576369977345], [6.0675092508208985, 0.0346218854701545, 0.1100859953244876], [6.445362108837715, 0.0348771562409297, 0.1120174930766836], [6.714806803088649, 0.0375721827573278, 0.1093072235262255]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQj31 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.095153221579727, 0.0239086959174842, 0.0726707272148972], [4.339456811470791, 0.0249654294240375, 0.0756104062950171], [4.749279465002988, 0.025842863414657, 0.0872011286555762], [5.421021896179826, 0.032184475334735, 0.1100663679859481], [6.347378521436811, 0.0336374194207343, 0.0988342427493453], [7.348059719402368, 0.044714752343627, 0.1854781334503729], [7.917091815442388, 0.0469509953217328, 0.1803712064135937]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQj31 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.450024565381998, 0.034359349023416, 0.1398473308539315], [5.567252827397347, 0.034528943913442, 0.1541932203903942], [5.492530084620743, 0.032117784864213, 0.1157834667448858], [5.564478931178369, 0.0316765033453449, 0.0960721257132331], [5.823572743883855, 0.0330873777749511, 0.1102688478186956], [6.086800281726568, 0.0318825137242142, 0.0911276598904546], [6.23277830961383, 0.0345861750695546, 0.1037496798096654]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQj31 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.919633372477856, 0.0285881111251986, 0.0950357177279725], [6.072979780068423, 0.0360852807177668, 0.1593900199209147], [5.6793181350577004, 0.0344825130113728, 0.152527974276607], [5.34609953215812, 0.0322107558433125, 0.120625176608923], [5.355787496036506, 0.0317185771973226, 0.1212268292668575], [5.522449215094915, 0.0306132725451922, 0.0910091796788702], [5.776390576842661, 0.0322562230073591, 0.1002688558829421], [6.051761404955958, 0.0343649869107539, 0.1108319334945844], [6.290166106795557, 0.0340396049326996, 0.094558144216511], [6.438867731775946, 0.0374225920209973, 0.1142343746640976]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQj31 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQj31 * params.cQj31
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0599504981057529, 0.0003796129700144, 0.0013741845357357], [0.0484516855405702, 0.0002716091222208, 0.0008177992637653], [0.0112350401123481, 6.266851402782871e-05, 0.0002722345984017], [0.0023711683998614, 1.2211117844814462e-05, 4.092529309321136e-05], [0.0005065778179811, 2.6567195264308274e-06, 1.873742344092418e-05], [0.0001114057736194, 5.018307092734639e-07, 1.733010490926341e-06], [2.4053338348048795e-05, 7.791018281504514e-08, 7.626634871993186e-08], [1.7920049133896206e-06, 7.81614414329727e-09, 5.518039805087433e-09]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQj31 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQj31 * params.cQj31
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

