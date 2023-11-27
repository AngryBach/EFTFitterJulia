function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.948529426126126, -0.0005867362788483, -0.0027028610938371], [0.8287802616187311, -0.0005344610330977, -0.0024355486871176], [0.2950546203045371, -0.0002271757903209, -8.257481788409571e-05], [0.0771819498332011, -7.515143758286709e-05, 0.0003232436993608], [0.0161184721987793, -1.910028059866596e-05, 0.0001922553142992], [0.0035729990209966, -3.967609538876773e-06, 5.359255687384544e-05], [0.0009015413247847, -2.632064368744242e-06, 7.79785600497117e-05], [0.0002140770473956, -1.3711604537629009e-06, 8.000534016201874e-05], [1.0395731256763609e-05, -2.1452579184401453e-08, 1.471279632614388e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_y = [[52.04597723402478, -0.0388121423451951, -0.0118669371082596], [50.4347579261611, -0.0360039141744176, -0.012057280737083], [47.10675743576351, -0.0331230432536871, -0.0675890709063107], [42.386348169000975, -0.0301168153802881, -0.0541089370178533], [38.61784726220992, -0.0273728830934439, -0.0068980127724344], [32.41264382338731, -0.0227129807041105, -0.0282628392870316], [25.77351547235149, -0.0179985864681455, -0.006086458113317], [20.728759385304635, -0.0134709595791151, -0.0376399302374435], [16.049294187065403, -0.0103287706761354, -0.04275511436999], [11.76612998054057, -0.0074070854660317, -0.0149466865532019]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctd1 + coeffs_jet_W_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322151869279203, -0.0015583252461226, -0.0031875546681414], [0.3103626404754294, -0.0002617069950986, 0.0005342048630476], [0.0395155354052932, -4.566756003669155e-05, 0.0004060673117392], [0.0036987004587924, -3.254085709430545e-06, 1.383723820128184e-05], [0.0003298516084311, -3.443001736744487e-07, 6.8782752832989095e-06], [6.477556268966304e-05, -1.9851373049213842e-08, -5.816642390672024e-07], [3.3538428433363204e-06, -1.802006714049589e-09, -2.2881478474574632e-08]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_y = [[47.46619936810017, -0.0330481749119825, -0.0853246895158309], [46.48400473990768, -0.0339774975084539, -0.0081201715119449], [44.29762270224692, -0.0317988929548407, -0.0439952023716347], [40.25876442364298, -0.0275052849854036, -0.0431013773452246], [38.9224066203298, -0.0274612134969436, -0.035934919015256], [32.70456605113971, -0.0228886406947326, -0.040039776181151], [27.261486934962925, -0.0184654279146156, -0.0231748624988994], [23.907000032732697, -0.0169017475651651, -0.0054529278909558], [19.91427507752723, -0.0136286477957632, -0.0032445173391726], [16.112277256523225, -0.0113981458042318, 0.0116564153327181]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctd1 + coeffs_jet_W_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.74018232377517, -0.042320190856405, 0.0082037567364691], [49.423871269608846, -0.0363625037654475, -0.0294727004092587], [32.79698490865338, -0.0207994909833539, -0.0857164526019344], [17.280757183195444, -0.0106808062045574, -0.0362804232022632], [7.682473404676444, -0.0049711582557957, 0.0040942320964838], [3.752318253184362, -0.0026484700465428, 0.0004115779472116], [2.185085410207435, -0.0013646418028727, -0.005709611383396], [1.1967144716787137, -0.0006869537660654, -0.0036362869351143], [0.5286196873815855, -0.0002831593006986, -0.0019241582940596], [0.1310188499841967, -5.2020064427622295e-05, -0.0006666699793233]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.69158960535373, -0.0197256757910171, 0.0725864168445938], [30.259474078702706, -0.0278004430568936, 0.0998483544852192], [32.694332447594086, -0.0251902910960299, -0.0105071952204064], [32.408327409506, -0.0231062028595285, -0.033456383398331], [30.269465008468103, -0.0188386106960364, -0.0784235229142362], [27.404117006483283, -0.0172604228256237, -0.0564631878483464], [24.897851841898504, -0.0147616495275593, -0.0665047019174721], [23.09434023944751, -0.0136279018255069, -0.0741701576434154], [22.021176844549863, -0.0132839697043804, -0.0691810498893043], [21.705743454121134, -0.0134880399748557, -0.0248013878772485]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.566151376168365, -0.0003822680426843, -0.0007765721874104], [0.2908570738935898, -0.000169019140128, -0.0007781352746072], [0.1439024648162115, -8.33469893772107e-05, -0.000163020406211], [0.0589577042937024, -3.3520211941347045e-05, -6.693810269362752e-05], [0.0208751139430328, -1.1244714516031468e-05, -2.589182890381076e-05], [0.0072777137200655, -3.242751933144545e-06, -2.1672917975506023e-05], [0.0024651792106055, -1.2833365418481855e-06, 1.1985687938003051e-06], [0.0007417536329913, -6.185457025207245e-07, 1.671771140564488e-05], [0.0001911118018975, -1.0741894172122709e-07, 8.336128724872751e-07], [1.1272591693303963e-05, -2.985591846539032e-09, -8.088220228252756e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_y = [[20.527218632491955, -0.0129000632848994, -0.0259109484339635], [20.334796976521453, -0.0125954915267216, -0.0269631508276489], [19.845511211979545, -0.0114937125366445, -0.0505384631330453], [18.969513332723302, -0.0118645419867394, -0.0103702468114244], [19.24482893577068, -0.012069217484293, -0.0254650175537954], [17.73981068740747, -0.0108637594902395, -0.0324929119748159], [16.154648545760068, -0.0095992143241846, -0.0250681450804526], [15.305292030203727, -0.0085539610746263, -0.0300329289492756], [14.206662840069528, -0.0073428422030693, -0.037553649568524], [12.528919043744088, -0.0070163934929541, -0.0085766804758609]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctd1 + coeffs_jet_rad_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.722793423904204, -0.004822836772818, 0.0038188645837584], [7.300643228839884, -0.0045382510039584, -0.0172094891986047], [8.454160423993107, -0.0049936589594647, -0.0199284946328628], [10.643647742692478, -0.005814417548443, -0.0254110421804619], [14.607138146276757, -0.0076652997446086, -0.0367075252055686], [21.195770059911798, -0.0119155159102197, -0.0564615148071974], [28.471691214589967, -0.0193087686005143, 0.0071402108240684]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.614782101616742, -0.0099193706110497, 0.055348022328938], [11.986732829986249, -0.0088602338237075, 0.0056732175117222], [12.158784038362494, -0.0074285381810652, -0.0195271911707517], [12.90732942051818, -0.0067914107667577, -0.0409042229328136], [14.476478857706322, -0.007501534676718, -0.0327818757426461], [16.474077473891207, -0.0083230772242507, -0.0631373802590994], [17.784024124860665, -0.0098060934350438, -0.0467072934057077]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.210815659996182, -0.007619108559216, 0.0114935873075868], [12.759836242997888, -0.0090835524082941, 0.0003121003973273], [12.19538087860827, -0.0080664733834564, 0.0166459732560889], [11.803057026062094, -0.0071714917862421, -0.0244416903009885], [12.178496145380402, -0.0067560607507538, -0.0332032444534454], [13.11084362399621, -0.0069782548740444, -0.041009346091152], [14.506568687986702, -0.0084386796347172, -0.0243242963851486], [16.116895052075535, -0.0086340585024893, -0.0377243599270524], [17.61627485115153, -0.0098468356763483, -0.0450318075314396], [18.64873627855502, -0.010763247015273, -0.0329802907183958]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221079323539791, -1.1238088811657411e-05, -0.0001114056577198], [0.0650309694847142, -3.650981820935748e-05, -0.0002423170682647], [0.0195372113132377, -1.4266696959466252e-05, 3.672152159463651e-05], [0.0039196582365728, -3.216391695907835e-06, 4.273567306948734e-05], [0.0007209362300534, -6.069857535993311e-07, 1.878753949942435e-05], [0.0001286822489413, -8.429269188412382e-08, 1.6656259495906524e-06], [6.096680011423848e-06, -1.6110263385266582e-09, -3.7477984886182e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctd1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3792104548718822, -0.0001991127211204, -0.0007816059937606], [0.1075137540993557, -5.1316888244034594e-05, -0.0002597455223573], [0.0311134779187031, -1.439317638459716e-05, -9.038148003656313e-05], [0.0076807973824746, -3.568981677613056e-06, -2.412014480172656e-05], [0.0015840937384085, -6.47271662954226e-07, -7.244841600411808e-06], [0.0003470897440008, -1.2850327981792585e-07, -2.366680161759187e-06], [8.477055720012068e-05, -2.2407701718527943e-08, -8.400984627794206e-07], [4.649775796411884e-06, -1.2266141635534036e-09, -2.9272420036073218e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_y = [[8.37322548751239, -0.0044141078502328, -0.0062819079078955], [8.291301346732567, -0.0039949357737022, -0.0209625525475911], [8.139678144040154, -0.0039595093643027, -0.0167324618995454], [7.774616904508275, -0.004020318195441, -0.0192887571862076], [8.00774968992097, -0.0040559396618112, -0.0209229914678703], [7.263633858360494, -0.0035561457423776, -0.0221372119286948], [6.6014694813604615, -0.0034758310496015, -0.0104221336280341], [6.350033101357587, -0.0031480903782066, -0.0148975025938272], [5.960298518176197, -0.0026931233724417, -0.0197214557431183], [5.341824159160661, -0.0026050728122194, -0.0160392374718991]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctd1 + coeffs_jet_rad_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.942167345228, -0.0038377020348863, -0.0259541089639679], [7.310918460259497, -0.0041224060731721, -0.0011287020987245], [5.556462235195198, -0.0028729858249976, -0.0065787691400931], [4.56784234304556, -0.0020226842744281, -0.0182743394330719], [3.779116955390908, -0.0017686161553627, -0.0144329299457652], [2.8944022123152044, -0.0014683017989263, -0.0076302841626327], [2.0024587020915576, -0.0008891994849905, -0.0048932429423678], [1.2156108645874364, -0.0006419427004696, -0.0016773726299078], [0.6142113444454944, -0.0002536830772699, -0.0016163289396629], [0.1687381076540677, -4.459949354569568e-05, -0.0009028372655587]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.05574267295726, -0.0027792108794748, -0.0079044870615458], [6.224083556224627, -0.0035554193585594, 0.0105662285994497], [5.5779595552776895, -0.0025154079237248, -0.0204716039870703], [5.152331347845951, -0.0025729544638242, -0.015375694381595], [5.141020987061778, -0.0026364762220465, -0.0112708847844478], [5.3402909749629845, -0.0027198674331103, -0.0124356435561199], [5.68484394044405, -0.0025392512783789, -0.0208848409376518], [6.059359635655838, -0.0031776267790065, -0.0056979338088779], [6.436809932092044, -0.0029836685152306, -0.0254263879633094], [6.705948173121905, -0.0030922144710212, -0.0241953593617938]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.089806237182092, -0.0020636927592581, -0.0106630522802606], [4.333654508349008, -0.0023183044458425, -0.007342505193308], [4.743066074676128, -0.0020982044678841, -0.0190373215803542], [5.413948584596874, -0.00280964936404, -0.0111774209016322], [6.3391020217561005, -0.002934590609799, -0.0225414891384729], [7.338545471189475, -0.0038621914335208, -0.0003595010994019], [7.9067923861797, -0.0039234885862911, -0.0212851651369484]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.443033437940382, -0.0028578273858448, -0.012967459083004], [5.559915169103723, -0.0031196504036389, 0.0093343209786637], [5.485338485419266, -0.0026423470722396, -0.0197131672912325], [5.557252706239898, -0.0028606858390006, -0.0123283981798971], [5.815970879973071, -0.0025940863871962, -0.0217314943191498], [6.07886510051318, -0.0027285508048669, -0.0221628288066494], [6.224531264307192, -0.0032303380350061, -0.013081452070286]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.913450835793784, -0.0026151676420258, -0.0008683999568073], [6.065067453886771, -0.003051971110225, -0.0156730563561224], [5.671942398206284, -0.002965294567648, -0.0083258580106745], [5.339110551176857, -0.0028717095815437, 0.0046880268413805], [5.348779084801597, -0.0027116984706073, -0.0164894243378012], [5.515153371690799, -0.0025924832454032, -0.0182220088255282], [5.768821441866538, -0.002732812692637, -0.0194371304337017], [6.043804688407119, -0.0028299529135221, -0.0224068503632713], [6.281790961187937, -0.0029934273988407, -0.0191806966165684], [6.430468595625857, -0.0032521767426741, -0.0157675141073739]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.059873941873697, -3.3073052974193425e-05, -5.1312798592073925e-05], [0.0483886200980364, -2.3989994317285036e-05, -0.0001271477149489], [0.0112198501396248, -5.104940527122958e-06, -3.4253660965466033e-05], [0.0023679901491755, -9.63498911109586e-07, -8.946697671770177e-06], [0.0005058195765732, -1.6488329738888042e-07, -3.127592885712197e-06], [0.0001112556306551, -6.29873380351508e-08, 1.2146427926057813e-07], [2.401255124543804e-05, -6.342257708591976e-09, -2.019221952166429e-07], [1.7888254334906705e-06, -4.734227767142364e-10, -1.5919435143862714e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctd1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_pt_Rebin = [[0.948529426126126, -0.0005867362788483, -0.0027028610938371], [0.8287802616187311, -0.0005344610330977, -0.0024355486871176], [0.2950546203045371, -0.0002271757903209, -8.257481788409571e-05], [0.0771819498332011, -7.515143758286709e-05, 0.0003232436993608], [0.0161184721987793, -1.910028059866596e-05, 0.0001922553142992], [0.0035729990209966, -3.967609538876773e-06, 5.359255687384544e-05], [0.0009015413247847, -2.632064368744242e-06, 7.79785600497117e-05], [0.0002140770473956, -1.3711604537629009e-06, 8.000534016201874e-05], [1.0395731256763609e-05, -2.1452579184401453e-08, 1.471279632614388e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_y = [[52.04597723402478, -0.0388121423451951, -0.0118669371082596], [50.4347579261611, -0.0360039141744176, -0.012057280737083], [47.10675743576351, -0.0331230432536871, -0.0675890709063107], [42.386348169000975, -0.0301168153802881, -0.0541089370178533], [38.61784726220992, -0.0273728830934439, -0.0068980127724344], [32.41264382338731, -0.0227129807041105, -0.0282628392870316], [25.77351547235149, -0.0179985864681455, -0.006086458113317], [20.728759385304635, -0.0134709595791151, -0.0376399302374435], [16.049294187065403, -0.0103287706761354, -0.04275511436999], [11.76612998054057, -0.0074070854660317, -0.0149466865532019]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctd1 + coeffs_jet_W_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322151869279203, -0.0015583252461226, -0.0031875546681414], [0.3103626404754294, -0.0002617069950986, 0.0005342048630476], [0.0395155354052932, -4.566756003669155e-05, 0.0004060673117392], [0.0036987004587924, -3.254085709430545e-06, 1.383723820128184e-05], [0.0003298516084311, -3.443001736744487e-07, 6.8782752832989095e-06], [6.477556268966304e-05, -1.9851373049213842e-08, -5.816642390672024e-07], [3.3538428433363204e-06, -1.802006714049589e-09, -2.2881478474574632e-08]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_y = [[47.46619936810017, -0.0330481749119825, -0.0853246895158309], [46.48400473990768, -0.0339774975084539, -0.0081201715119449], [44.29762270224692, -0.0317988929548407, -0.0439952023716347], [40.25876442364298, -0.0275052849854036, -0.0431013773452246], [38.9224066203298, -0.0274612134969436, -0.035934919015256], [32.70456605113971, -0.0228886406947326, -0.040039776181151], [27.261486934962925, -0.0184654279146156, -0.0231748624988994], [23.907000032732697, -0.0169017475651651, -0.0054529278909558], [19.91427507752723, -0.0136286477957632, -0.0032445173391726], [16.112277256523225, -0.0113981458042318, 0.0116564153327181]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctd1 + coeffs_jet_W_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.74018232377517, -0.042320190856405, 0.0082037567364691], [49.423871269608846, -0.0363625037654475, -0.0294727004092587], [32.79698490865338, -0.0207994909833539, -0.0857164526019344], [17.280757183195444, -0.0106808062045574, -0.0362804232022632], [7.682473404676444, -0.0049711582557957, 0.0040942320964838], [3.752318253184362, -0.0026484700465428, 0.0004115779472116], [2.185085410207435, -0.0013646418028727, -0.005709611383396], [1.1967144716787137, -0.0006869537660654, -0.0036362869351143], [0.5286196873815855, -0.0002831593006986, -0.0019241582940596], [0.1310188499841967, -5.2020064427622295e-05, -0.0006666699793233]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.69158960535373, -0.0197256757910171, 0.0725864168445938], [30.259474078702706, -0.0278004430568936, 0.0998483544852192], [32.694332447594086, -0.0251902910960299, -0.0105071952204064], [32.408327409506, -0.0231062028595285, -0.033456383398331], [30.269465008468103, -0.0188386106960364, -0.0784235229142362], [27.404117006483283, -0.0172604228256237, -0.0564631878483464], [24.897851841898504, -0.0147616495275593, -0.0665047019174721], [23.09434023944751, -0.0136279018255069, -0.0741701576434154], [22.021176844549863, -0.0132839697043804, -0.0691810498893043], [21.705743454121134, -0.0134880399748557, -0.0248013878772485]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.566151376168365, -0.0003822680426843, -0.0007765721874104], [0.2908570738935898, -0.000169019140128, -0.0007781352746072], [0.1439024648162115, -8.33469893772107e-05, -0.000163020406211], [0.0589577042937024, -3.3520211941347045e-05, -6.693810269362752e-05], [0.0208751139430328, -1.1244714516031468e-05, -2.589182890381076e-05], [0.0072777137200655, -3.242751933144545e-06, -2.1672917975506023e-05], [0.0024651792106055, -1.2833365418481855e-06, 1.1985687938003051e-06], [0.0007417536329913, -6.185457025207245e-07, 1.671771140564488e-05], [0.0001911118018975, -1.0741894172122709e-07, 8.336128724872751e-07], [1.1272591693303963e-05, -2.985591846539032e-09, -8.088220228252756e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_y = [[20.527218632491955, -0.0129000632848994, -0.0259109484339635], [20.334796976521453, -0.0125954915267216, -0.0269631508276489], [19.845511211979545, -0.0114937125366445, -0.0505384631330453], [18.969513332723302, -0.0118645419867394, -0.0103702468114244], [19.24482893577068, -0.012069217484293, -0.0254650175537954], [17.73981068740747, -0.0108637594902395, -0.0324929119748159], [16.154648545760068, -0.0095992143241846, -0.0250681450804526], [15.305292030203727, -0.0085539610746263, -0.0300329289492756], [14.206662840069528, -0.0073428422030693, -0.037553649568524], [12.528919043744088, -0.0070163934929541, -0.0085766804758609]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctd1 + coeffs_jet_rad_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.722793423904204, -0.004822836772818, 0.0038188645837584], [7.300643228839884, -0.0045382510039584, -0.0172094891986047], [8.454160423993107, -0.0049936589594647, -0.0199284946328628], [10.643647742692478, -0.005814417548443, -0.0254110421804619], [14.607138146276757, -0.0076652997446086, -0.0367075252055686], [21.195770059911798, -0.0119155159102197, -0.0564615148071974], [28.471691214589967, -0.0193087686005143, 0.0071402108240684]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.614782101616742, -0.0099193706110497, 0.055348022328938], [11.986732829986249, -0.0088602338237075, 0.0056732175117222], [12.158784038362494, -0.0074285381810652, -0.0195271911707517], [12.90732942051818, -0.0067914107667577, -0.0409042229328136], [14.476478857706322, -0.007501534676718, -0.0327818757426461], [16.474077473891207, -0.0083230772242507, -0.0631373802590994], [17.784024124860665, -0.0098060934350438, -0.0467072934057077]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.210815659996182, -0.007619108559216, 0.0114935873075868], [12.759836242997888, -0.0090835524082941, 0.0003121003973273], [12.19538087860827, -0.0080664733834564, 0.0166459732560889], [11.803057026062094, -0.0071714917862421, -0.0244416903009885], [12.178496145380402, -0.0067560607507538, -0.0332032444534454], [13.11084362399621, -0.0069782548740444, -0.041009346091152], [14.506568687986702, -0.0084386796347172, -0.0243242963851486], [16.116895052075535, -0.0086340585024893, -0.0377243599270524], [17.61627485115153, -0.0098468356763483, -0.0450318075314396], [18.64873627855502, -0.010763247015273, -0.0329802907183958]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221079323539791, -1.1238088811657411e-05, -0.0001114056577198], [0.0650309694847142, -3.650981820935748e-05, -0.0002423170682647], [0.0195372113132377, -1.4266696959466252e-05, 3.672152159463651e-05], [0.0039196582365728, -3.216391695907835e-06, 4.273567306948734e-05], [0.0007209362300534, -6.069857535993311e-07, 1.878753949942435e-05], [0.0001286822489413, -8.429269188412382e-08, 1.6656259495906524e-06], [6.096680011423848e-06, -1.6110263385266582e-09, -3.7477984886182e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctd1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3792104548718822, -0.0001991127211204, -0.0007816059937606], [0.1075137540993557, -5.1316888244034594e-05, -0.0002597455223573], [0.0311134779187031, -1.439317638459716e-05, -9.038148003656313e-05], [0.0076807973824746, -3.568981677613056e-06, -2.412014480172656e-05], [0.0015840937384085, -6.47271662954226e-07, -7.244841600411808e-06], [0.0003470897440008, -1.2850327981792585e-07, -2.366680161759187e-06], [8.477055720012068e-05, -2.2407701718527943e-08, -8.400984627794206e-07], [4.649775796411884e-06, -1.2266141635534036e-09, -2.9272420036073218e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_y = [[8.37322548751239, -0.0044141078502328, -0.0062819079078955], [8.291301346732567, -0.0039949357737022, -0.0209625525475911], [8.139678144040154, -0.0039595093643027, -0.0167324618995454], [7.774616904508275, -0.004020318195441, -0.0192887571862076], [8.00774968992097, -0.0040559396618112, -0.0209229914678703], [7.263633858360494, -0.0035561457423776, -0.0221372119286948], [6.6014694813604615, -0.0034758310496015, -0.0104221336280341], [6.350033101357587, -0.0031480903782066, -0.0148975025938272], [5.960298518176197, -0.0026931233724417, -0.0197214557431183], [5.341824159160661, -0.0026050728122194, -0.0160392374718991]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctd1 + coeffs_jet_rad_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.942167345228, -0.0038377020348863, -0.0259541089639679], [7.310918460259497, -0.0041224060731721, -0.0011287020987245], [5.556462235195198, -0.0028729858249976, -0.0065787691400931], [4.56784234304556, -0.0020226842744281, -0.0182743394330719], [3.779116955390908, -0.0017686161553627, -0.0144329299457652], [2.8944022123152044, -0.0014683017989263, -0.0076302841626327], [2.0024587020915576, -0.0008891994849905, -0.0048932429423678], [1.2156108645874364, -0.0006419427004696, -0.0016773726299078], [0.6142113444454944, -0.0002536830772699, -0.0016163289396629], [0.1687381076540677, -4.459949354569568e-05, -0.0009028372655587]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.05574267295726, -0.0027792108794748, -0.0079044870615458], [6.224083556224627, -0.0035554193585594, 0.0105662285994497], [5.5779595552776895, -0.0025154079237248, -0.0204716039870703], [5.152331347845951, -0.0025729544638242, -0.015375694381595], [5.141020987061778, -0.0026364762220465, -0.0112708847844478], [5.3402909749629845, -0.0027198674331103, -0.0124356435561199], [5.68484394044405, -0.0025392512783789, -0.0208848409376518], [6.059359635655838, -0.0031776267790065, -0.0056979338088779], [6.436809932092044, -0.0029836685152306, -0.0254263879633094], [6.705948173121905, -0.0030922144710212, -0.0241953593617938]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.089806237182092, -0.0020636927592581, -0.0106630522802606], [4.333654508349008, -0.0023183044458425, -0.007342505193308], [4.743066074676128, -0.0020982044678841, -0.0190373215803542], [5.413948584596874, -0.00280964936404, -0.0111774209016322], [6.3391020217561005, -0.002934590609799, -0.0225414891384729], [7.338545471189475, -0.0038621914335208, -0.0003595010994019], [7.9067923861797, -0.0039234885862911, -0.0212851651369484]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.443033437940382, -0.0028578273858448, -0.012967459083004], [5.559915169103723, -0.0031196504036389, 0.0093343209786637], [5.485338485419266, -0.0026423470722396, -0.0197131672912325], [5.557252706239898, -0.0028606858390006, -0.0123283981798971], [5.815970879973071, -0.0025940863871962, -0.0217314943191498], [6.07886510051318, -0.0027285508048669, -0.0221628288066494], [6.224531264307192, -0.0032303380350061, -0.013081452070286]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.913450835793784, -0.0026151676420258, -0.0008683999568073], [6.065067453886771, -0.003051971110225, -0.0156730563561224], [5.671942398206284, -0.002965294567648, -0.0083258580106745], [5.339110551176857, -0.0028717095815437, 0.0046880268413805], [5.348779084801597, -0.0027116984706073, -0.0164894243378012], [5.515153371690799, -0.0025924832454032, -0.0182220088255282], [5.768821441866538, -0.002732812692637, -0.0194371304337017], [6.043804688407119, -0.0028299529135221, -0.0224068503632713], [6.281790961187937, -0.0029934273988407, -0.0191806966165684], [6.430468595625857, -0.0032521767426741, -0.0157675141073739]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.059873941873697, -3.3073052974193425e-05, -5.1312798592073925e-05], [0.0483886200980364, -2.3989994317285036e-05, -0.0001271477149489], [0.0112198501396248, -5.104940527122958e-06, -3.4253660965466033e-05], [0.0023679901491755, -9.63498911109586e-07, -8.946697671770177e-06], [0.0005058195765732, -1.6488329738888042e-07, -3.127592885712197e-06], [0.0001112556306551, -6.29873380351508e-08, 1.2146427926057813e-07], [2.401255124543804e-05, -6.342257708591976e-09, -2.019221952166429e-07], [1.7888254334906705e-06, -4.734227767142364e-10, -1.5919435143862714e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctd1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_pt_Rebin = [[0.948529426126126, -0.0005867362788483, -0.0027028610938371], [0.8287802616187311, -0.0005344610330977, -0.0024355486871176], [0.2950546203045371, -0.0002271757903209, -8.257481788409571e-05], [0.0771819498332011, -7.515143758286709e-05, 0.0003232436993608], [0.0161184721987793, -1.910028059866596e-05, 0.0001922553142992], [0.0035729990209966, -3.967609538876773e-06, 5.359255687384544e-05], [0.0009015413247847, -2.632064368744242e-06, 7.79785600497117e-05], [0.0002140770473956, -1.3711604537629009e-06, 8.000534016201874e-05], [1.0395731256763609e-05, -2.1452579184401453e-08, 1.471279632614388e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_y = [[52.04597723402478, -0.0388121423451951, -0.0118669371082596], [50.4347579261611, -0.0360039141744176, -0.012057280737083], [47.10675743576351, -0.0331230432536871, -0.0675890709063107], [42.386348169000975, -0.0301168153802881, -0.0541089370178533], [38.61784726220992, -0.0273728830934439, -0.0068980127724344], [32.41264382338731, -0.0227129807041105, -0.0282628392870316], [25.77351547235149, -0.0179985864681455, -0.006086458113317], [20.728759385304635, -0.0134709595791151, -0.0376399302374435], [16.049294187065403, -0.0103287706761354, -0.04275511436999], [11.76612998054057, -0.0074070854660317, -0.0149466865532019]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctd1 + coeffs_jet_W_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322151869279203, -0.0015583252461226, -0.0031875546681414], [0.3103626404754294, -0.0002617069950986, 0.0005342048630476], [0.0395155354052932, -4.566756003669155e-05, 0.0004060673117392], [0.0036987004587924, -3.254085709430545e-06, 1.383723820128184e-05], [0.0003298516084311, -3.443001736744487e-07, 6.8782752832989095e-06], [6.477556268966304e-05, -1.9851373049213842e-08, -5.816642390672024e-07], [3.3538428433363204e-06, -1.802006714049589e-09, -2.2881478474574632e-08]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_sublead_y = [[47.46619936810017, -0.0330481749119825, -0.0853246895158309], [46.48400473990768, -0.0339774975084539, -0.0081201715119449], [44.29762270224692, -0.0317988929548407, -0.0439952023716347], [40.25876442364298, -0.0275052849854036, -0.0431013773452246], [38.9224066203298, -0.0274612134969436, -0.035934919015256], [32.70456605113971, -0.0228886406947326, -0.040039776181151], [27.261486934962925, -0.0184654279146156, -0.0231748624988994], [23.907000032732697, -0.0169017475651651, -0.0054529278909558], [19.91427507752723, -0.0136286477957632, -0.0032445173391726], [16.112277256523225, -0.0113981458042318, 0.0116564153327181]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctd1 + coeffs_jet_W_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.74018232377517, -0.042320190856405, 0.0082037567364691], [49.423871269608846, -0.0363625037654475, -0.0294727004092587], [32.79698490865338, -0.0207994909833539, -0.0857164526019344], [17.280757183195444, -0.0106808062045574, -0.0362804232022632], [7.682473404676444, -0.0049711582557957, 0.0040942320964838], [3.752318253184362, -0.0026484700465428, 0.0004115779472116], [2.185085410207435, -0.0013646418028727, -0.005709611383396], [1.1967144716787137, -0.0006869537660654, -0.0036362869351143], [0.5286196873815855, -0.0002831593006986, -0.0019241582940596], [0.1310188499841967, -5.2020064427622295e-05, -0.0006666699793233]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.69158960535373, -0.0197256757910171, 0.0725864168445938], [30.259474078702706, -0.0278004430568936, 0.0998483544852192], [32.694332447594086, -0.0251902910960299, -0.0105071952204064], [32.408327409506, -0.0231062028595285, -0.033456383398331], [30.269465008468103, -0.0188386106960364, -0.0784235229142362], [27.404117006483283, -0.0172604228256237, -0.0564631878483464], [24.897851841898504, -0.0147616495275593, -0.0665047019174721], [23.09434023944751, -0.0136279018255069, -0.0741701576434154], [22.021176844549863, -0.0132839697043804, -0.0691810498893043], [21.705743454121134, -0.0134880399748557, -0.0248013878772485]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.566151376168365, -0.0003822680426843, -0.0007765721874104], [0.2908570738935898, -0.000169019140128, -0.0007781352746072], [0.1439024648162115, -8.33469893772107e-05, -0.000163020406211], [0.0589577042937024, -3.3520211941347045e-05, -6.693810269362752e-05], [0.0208751139430328, -1.1244714516031468e-05, -2.589182890381076e-05], [0.0072777137200655, -3.242751933144545e-06, -2.1672917975506023e-05], [0.0024651792106055, -1.2833365418481855e-06, 1.1985687938003051e-06], [0.0007417536329913, -6.185457025207245e-07, 1.671771140564488e-05], [0.0001911118018975, -1.0741894172122709e-07, 8.336128724872751e-07], [1.1272591693303963e-05, -2.985591846539032e-09, -8.088220228252756e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_y = [[20.527218632491955, -0.0129000632848994, -0.0259109484339635], [20.334796976521453, -0.0125954915267216, -0.0269631508276489], [19.845511211979545, -0.0114937125366445, -0.0505384631330453], [18.969513332723302, -0.0118645419867394, -0.0103702468114244], [19.24482893577068, -0.012069217484293, -0.0254650175537954], [17.73981068740747, -0.0108637594902395, -0.0324929119748159], [16.154648545760068, -0.0095992143241846, -0.0250681450804526], [15.305292030203727, -0.0085539610746263, -0.0300329289492756], [14.206662840069528, -0.0073428422030693, -0.037553649568524], [12.528919043744088, -0.0070163934929541, -0.0085766804758609]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctd1 + coeffs_jet_rad_lead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.722793423904204, -0.004822836772818, 0.0038188645837584], [7.300643228839884, -0.0045382510039584, -0.0172094891986047], [8.454160423993107, -0.0049936589594647, -0.0199284946328628], [10.643647742692478, -0.005814417548443, -0.0254110421804619], [14.607138146276757, -0.0076652997446086, -0.0367075252055686], [21.195770059911798, -0.0119155159102197, -0.0564615148071974], [28.471691214589967, -0.0193087686005143, 0.0071402108240684]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.614782101616742, -0.0099193706110497, 0.055348022328938], [11.986732829986249, -0.0088602338237075, 0.0056732175117222], [12.158784038362494, -0.0074285381810652, -0.0195271911707517], [12.90732942051818, -0.0067914107667577, -0.0409042229328136], [14.476478857706322, -0.007501534676718, -0.0327818757426461], [16.474077473891207, -0.0083230772242507, -0.0631373802590994], [17.784024124860665, -0.0098060934350438, -0.0467072934057077]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.210815659996182, -0.007619108559216, 0.0114935873075868], [12.759836242997888, -0.0090835524082941, 0.0003121003973273], [12.19538087860827, -0.0080664733834564, 0.0166459732560889], [11.803057026062094, -0.0071714917862421, -0.0244416903009885], [12.178496145380402, -0.0067560607507538, -0.0332032444534454], [13.11084362399621, -0.0069782548740444, -0.041009346091152], [14.506568687986702, -0.0084386796347172, -0.0243242963851486], [16.116895052075535, -0.0086340585024893, -0.0377243599270524], [17.61627485115153, -0.0098468356763483, -0.0450318075314396], [18.64873627855502, -0.010763247015273, -0.0329802907183958]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221079323539791, -1.1238088811657411e-05, -0.0001114056577198], [0.0650309694847142, -3.650981820935748e-05, -0.0002423170682647], [0.0195372113132377, -1.4266696959466252e-05, 3.672152159463651e-05], [0.0039196582365728, -3.216391695907835e-06, 4.273567306948734e-05], [0.0007209362300534, -6.069857535993311e-07, 1.878753949942435e-05], [0.0001286822489413, -8.429269188412382e-08, 1.6656259495906524e-06], [6.096680011423848e-06, -1.6110263385266582e-09, -3.7477984886182e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctd1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3792104548718822, -0.0001991127211204, -0.0007816059937606], [0.1075137540993557, -5.1316888244034594e-05, -0.0002597455223573], [0.0311134779187031, -1.439317638459716e-05, -9.038148003656313e-05], [0.0076807973824746, -3.568981677613056e-06, -2.412014480172656e-05], [0.0015840937384085, -6.47271662954226e-07, -7.244841600411808e-06], [0.0003470897440008, -1.2850327981792585e-07, -2.366680161759187e-06], [8.477055720012068e-05, -2.2407701718527943e-08, -8.400984627794206e-07], [4.649775796411884e-06, -1.2266141635534036e-09, -2.9272420036073218e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctd1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_sublead_y = [[8.37322548751239, -0.0044141078502328, -0.0062819079078955], [8.291301346732567, -0.0039949357737022, -0.0209625525475911], [8.139678144040154, -0.0039595093643027, -0.0167324618995454], [7.774616904508275, -0.004020318195441, -0.0192887571862076], [8.00774968992097, -0.0040559396618112, -0.0209229914678703], [7.263633858360494, -0.0035561457423776, -0.0221372119286948], [6.6014694813604615, -0.0034758310496015, -0.0104221336280341], [6.350033101357587, -0.0031480903782066, -0.0148975025938272], [5.960298518176197, -0.0026931233724417, -0.0197214557431183], [5.341824159160661, -0.0026050728122194, -0.0160392374718991]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctd1 + coeffs_jet_rad_sublead_y[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.942167345228, -0.0038377020348863, -0.0259541089639679], [7.310918460259497, -0.0041224060731721, -0.0011287020987245], [5.556462235195198, -0.0028729858249976, -0.0065787691400931], [4.56784234304556, -0.0020226842744281, -0.0182743394330719], [3.779116955390908, -0.0017686161553627, -0.0144329299457652], [2.8944022123152044, -0.0014683017989263, -0.0076302841626327], [2.0024587020915576, -0.0008891994849905, -0.0048932429423678], [1.2156108645874364, -0.0006419427004696, -0.0016773726299078], [0.6142113444454944, -0.0002536830772699, -0.0016163289396629], [0.1687381076540677, -4.459949354569568e-05, -0.0009028372655587]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.05574267295726, -0.0027792108794748, -0.0079044870615458], [6.224083556224627, -0.0035554193585594, 0.0105662285994497], [5.5779595552776895, -0.0025154079237248, -0.0204716039870703], [5.152331347845951, -0.0025729544638242, -0.015375694381595], [5.141020987061778, -0.0026364762220465, -0.0112708847844478], [5.3402909749629845, -0.0027198674331103, -0.0124356435561199], [5.68484394044405, -0.0025392512783789, -0.0208848409376518], [6.059359635655838, -0.0031776267790065, -0.0056979338088779], [6.436809932092044, -0.0029836685152306, -0.0254263879633094], [6.705948173121905, -0.0030922144710212, -0.0241953593617938]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.089806237182092, -0.0020636927592581, -0.0106630522802606], [4.333654508349008, -0.0023183044458425, -0.007342505193308], [4.743066074676128, -0.0020982044678841, -0.0190373215803542], [5.413948584596874, -0.00280964936404, -0.0111774209016322], [6.3391020217561005, -0.002934590609799, -0.0225414891384729], [7.338545471189475, -0.0038621914335208, -0.0003595010994019], [7.9067923861797, -0.0039234885862911, -0.0212851651369484]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.443033437940382, -0.0028578273858448, -0.012967459083004], [5.559915169103723, -0.0031196504036389, 0.0093343209786637], [5.485338485419266, -0.0026423470722396, -0.0197131672912325], [5.557252706239898, -0.0028606858390006, -0.0123283981798971], [5.815970879973071, -0.0025940863871962, -0.0217314943191498], [6.07886510051318, -0.0027285508048669, -0.0221628288066494], [6.224531264307192, -0.0032303380350061, -0.013081452070286]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.913450835793784, -0.0026151676420258, -0.0008683999568073], [6.065067453886771, -0.003051971110225, -0.0156730563561224], [5.671942398206284, -0.002965294567648, -0.0083258580106745], [5.339110551176857, -0.0028717095815437, 0.0046880268413805], [5.348779084801597, -0.0027116984706073, -0.0164894243378012], [5.515153371690799, -0.0025924832454032, -0.0182220088255282], [5.768821441866538, -0.002732812692637, -0.0194371304337017], [6.043804688407119, -0.0028299529135221, -0.0224068503632713], [6.281790961187937, -0.0029934273988407, -0.0191806966165684], [6.430468595625857, -0.0032521767426741, -0.0157675141073739]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctd1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctd1 * params.ctd1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.059873941873697, -3.3073052974193425e-05, -5.1312798592073925e-05], [0.0483886200980364, -2.3989994317285036e-05, -0.0001271477149489], [0.0112198501396248, -5.104940527122958e-06, -3.4253660965466033e-05], [0.0023679901491755, -9.63498911109586e-07, -8.946697671770177e-06], [0.0005058195765732, -1.6488329738888042e-07, -3.127592885712197e-06], [0.0001112556306551, -6.29873380351508e-08, 1.2146427926057813e-07], [2.401255124543804e-05, -6.342257708591976e-09, -2.019221952166429e-07], [1.7888254334906705e-06, -4.734227767142364e-10, -1.5919435143862714e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctd1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctd1 * params.ctd1
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

