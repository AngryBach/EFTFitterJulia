function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9478929650078184, 0.0014279513573001, 0.0166083450620649], [0.8282215473069487, 0.0013347107706576, 0.014417357747175], [0.2948542122255619, 0.0005923773302859, 0.0066089537258654], [0.0771290325880668, 0.0002203419278429, 0.0023585363863397], [0.0161071978518664, 6.336818093811056e-05, 0.0008245001355958], [0.0035705436199238, 1.752946581016508e-05, 0.0002774198693303], [0.0009008699179249, 4.434456592834795e-06, 7.811200293815372e-05], [0.0002138862070727, 6.377569455294956e-07, 1.1811793276375534e-05], [1.0389959710132331e-05, 9.925609216680717e-08, 2.6198737195668672e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctu1 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_lead_y = [[52.01094070260695, 0.0896232224727815, 1.0405120255563816], [50.40130360466408, 0.0904256314728281, 1.0704177162571706], [47.07486829353172, 0.0834685931759881, 0.9274475261178188], [42.35766741548412, 0.0764995065667258, 0.8960192998419494], [38.59180169000653, 0.0741513080262479, 0.8620601463588], [32.391312246919505, 0.0600742725025478, 0.6774817323669845], [25.756166228392534, 0.0485312180185698, 0.5189790998236471], [20.714850940180995, 0.0406804987726885, 0.4519833854276438], [16.03869486027246, 0.0317695841886379, 0.3989948564417258], [11.758347324812862, 0.0213308896207776, 0.2300211545703052]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctu1 + coeffs_jet_W_lead_y[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.3207242871349227, 0.0041758998760857, 0.0444764114603764], [0.3101497945635323, 0.0007010886297059, 0.0080327008165024], [0.039488247535138, 0.0001268390330474, 0.0013884911635117], [0.0036960302795388, 1.4785489873315788e-05, 0.0001795308226641], [0.0003295987822562, 5.492091847940934e-07, 9.91311142267665e-06], [6.47199010420698e-05, 6.181011203924554e-08, 6.324302658633788e-07], [3.351181119151605e-06, 3.424257675689804e-08, 6.950644830854423e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctu1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_sublead_y = [[47.43402154191702, 0.0834479689076784, 0.9289026754355744], [46.45253395552115, 0.0826423887616998, 0.9240638385237208], [44.26768739336032, 0.0787961958450133, 0.935636019123814], [40.23165376663826, 0.0726399192831079, 0.8311649628495248], [38.896502118010126, 0.0716744184492501, 0.8609085509347079], [32.68269382231952, 0.0587971117061756, 0.6514176270545413], [27.243104202779627, 0.0500814566225675, 0.5371961345592212], [23.891363254927253, 0.0461405393222371, 0.5484877013668663], [19.901273074276894, 0.0388397024794011, 0.4456892119199163], [16.101771356156238, 0.0342384058510288, 0.4178121529520467]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctu1 + coeffs_jet_W_sublead_y[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.7034735973993, 0.1107372326227401, 1.232249034534862], [49.39036394470883, 0.092854858841478, 1.0322862411699645], [32.77500592414089, 0.0510033224627798, 0.5738020734395801], [17.269418278155545, 0.028044221111585, 0.3590737406983297], [7.677374961499874, 0.0123277196848904, 0.1436355974851314], [3.74982527059062, 0.0063304258467321, 0.070622363777151], [2.183563556893794, 0.0044048162606836, 0.0742975313276129], [1.195953767025883, 0.0021017832258738, 0.0312280983638085], [0.528289528022712, 0.0007465557171978, 0.0080131078397428], [0.1309361217886773, 0.0004472769335443, 0.0076772601059104]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctu1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.67585033690231, 0.0570859124322644, 0.6157756915850254], [30.23894563418401, 0.0757211229238842, 0.8834250895313329], [32.67240600764371, 0.0697703795174806, 0.7553770301388976], [32.38674111604745, 0.0569342815027694, 0.6671412945639394], [30.24895419314951, 0.0483623154048322, 0.5540032681521875], [27.38582994571332, 0.0400177007165496, 0.4272921253472123], [24.88124998237197, 0.0373825519557862, 0.4815725587018773], [23.0789682389278, 0.03503267713469, 0.4080233286044269], [22.00644338268844, 0.0344970151568825, 0.4252156676157483], [21.69115349339232, 0.0327051052166384, 0.3745296076511202]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctu1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5657867012943649, 0.0009820016574261, 0.0108389359476237], [0.2906685199141646, 0.0004198950719589, 0.0051382463676975], [0.1438089337578741, 0.000214614100398, 0.0030689009069554], [0.0589191957235548, 8.381730172755521e-05, 0.0010891256693928], [0.0208608198438951, 3.0219938166158224e-05, 0.000435094858089], [0.0072728921507371, 1.0662455200633716e-05, 0.0001728053833893], [0.0024635226457364, 5.16044690929324e-06, 9.088100233427362e-05], [0.0007412700487, 5.426847673622887e-06, 0.000224666183479], [0.0001909767933709, 1.7007092735409349e-06, 7.21226951020752e-05], [1.1264271834457848e-05, 4.8571909147968894e-09, 1.1595930399616297e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctu1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_lead_y = [[20.513784264477863, 0.0325509733439071, 0.4441954036532311], [20.321611272088465, 0.0314219122926333, 0.3764121911558828], [19.832821270596277, 0.0333418163361849, 0.3928613310761069], [18.95726269868297, 0.0320786913833481, 0.489298078380208], [19.232565877650835, 0.031055199576534, 0.3966696845767224], [17.728268122558404, 0.0286985751939521, 0.3387850758861372], [16.14417453245917, 0.0243092295393322, 0.3079422478805584], [15.295501334463143, 0.0240358682624078, 0.294054037313626], [14.197575228763895, 0.0215342473186009, 0.3133252643538089], [12.52076501048512, 0.0178554016159471, 0.2256537240926348]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctu1 + coeffs_jet_rad_lead_y[3] * params.ctu1 * params.ctu1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.71842808575994, 0.0122120934487546, 0.133982309159564], [7.295945520124283, 0.0134426457964204, 0.1603395876163227], [8.448681683671017, 0.0141387362047008, 0.1967044267022439], [10.636834735614098, 0.0139193549172767, 0.1654320569962931], [14.59776777083161, 0.0195682066705697, 0.2406260112946969], [21.18211244841565, 0.0309816932330591, 0.4089888580278331], [28.453105764843365, 0.0510187185559798, 0.7049127517698438]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctu1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.607360712850738, 0.02673873353234, 0.3587408099043258], [11.979017364532387, 0.0251857234596461, 0.3163498601123526], [12.151069270442203, 0.0191013310114489, 0.2293123254164168], [12.899012764039009, 0.0177209666675785, 0.2322913802219367], [14.467109084427795, 0.019656329906492, 0.2670186040447208], [16.463302924194124, 0.0221847770217003, 0.300988629262162], [17.772318509854824, 0.0249662448820263, 0.3062242503546149]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctu1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.20414375356949, 0.0202595037329417, 0.2413976403545399], [12.75156821210678, 0.0246351403864648, 0.3017659320337332], [12.18756289168336, 0.0221172959000143, 0.310016158970498], [11.795605779930902, 0.0189090145942194, 0.2626487873746836], [12.170617094414728, 0.0190035419044568, 0.2584916303720182], [13.102389729496656, 0.0195435818488952, 0.2669682103272339], [14.497107813521184, 0.0196013184404265, 0.2438886566945975], [16.10660695846194, 0.024466010971056, 0.308840022421585], [17.604957819989075, 0.0254138029053621, 0.3238430962100553], [18.63654640722937, 0.0273175548615258, 0.3425356005751506]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctu1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.022093548337629, 2.49576279949264e-05, 0.000287430040088], [0.0649885042241778, 8.599139276414319e-05, 0.0009668263193441], [0.0195245775053971, 3.9285811977088045e-05, 0.0004543082899549], [0.0039170868090938, 1.1436418949669024e-05, 0.000184788529604], [0.0007204498056594, 3.1765320731250134e-06, 8.700613044297401e-05], [0.0001285958013734, 1.2806103858857827e-06, 7.073539077712002e-05], [6.09260609351076e-06, 3.2116036999094203e-09, 7.087805647720567e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctu1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3789769405219114, 0.0005377825353456, 0.007003405888472], [0.1074459065546343, 0.0001401499730248, 0.0021731294702442], [0.0310933211439115, 3.837364675642192e-05, 0.0005902661575576], [0.0076756189265356, 1.2786752312601664e-05, 0.0003991159354795], [0.0015829568935428, 1.4854131549013806e-06, 2.2318380013690165e-05], [0.0003468242185274, 4.831901120537451e-07, 6.420544963193119e-06], [8.469351147721542e-05, 1.6419893566237604e-08, 5.697407654664436e-07], [4.646640877631899e-06, 2.4052272280557284e-09, 5.3090951898712224e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctu1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_sublead_y = [[8.367961469361033, 0.0107455818812545, 0.1396795210517999], [8.285982834092657, 0.0117062645472947, 0.1730672793879182], [8.1345609292299, 0.0113985745724868, 0.1744917288473189], [7.769628820411863, 0.0100912424963346, 0.1333190762343835], [8.002771414093418, 0.0108346582235659, 0.1461200964148603], [7.259105767527874, 0.0105325994444589, 0.205662605799927], [6.597348349023453, 0.0099690247919851, 0.1647261008444365], [6.346134135942441, 0.0085200714025371, 0.109424847992913], [5.956697548683071, 0.0079675505262973, 0.1137149221176368], [5.338614756522824, 0.0079530095529061, 0.0977922414617034]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctu1 + coeffs_jet_rad_sublead_y[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.937222645464262, 0.011852044653984, 0.1823258539778286], [7.306296374502708, 0.0106354654270254, 0.1793352902418725], [5.553060656952929, 0.007528229624553, 0.0966637625877581], [4.564979571947792, 0.0054974431721102, 0.0746603892709097], [3.7767015472214855, 0.0045928279372088, 0.0605347261480858], [2.8926016222384137, 0.0042532154317956, 0.0561840782313283], [2.0012390983886315, 0.0031426646638987, 0.0484774978198542], [1.214855153796342, 0.001333747219531, 0.0191988671323694], [0.6138562449695617, 0.0006838287804928, 0.0093406541466133], [0.1686337770997707, 0.0002854195280919, 0.0038555008130662]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctu1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.052547519042608, 0.0075619584672028, 0.1187234137462075], [6.2203554328348725, 0.0112299543234156, 0.2155931704608583], [5.574471423846695, 0.0080747691165048, 0.1020720939164738], [5.1491386614492844, 0.0070553481181951, 0.0978662572921018], [5.13784890214484, 0.0065278856643118, 0.0907992989459686], [5.3369728908206655, 0.0068071264735487, 0.0937857310264355], [5.681319332542171, 0.0071066923180466, 0.0975149690534726], [6.055454429236938, 0.0077218632601201, 0.1016545506611087], [6.432740277756265, 0.0081035600958583, 0.1228412717038356], [6.701715982758251, 0.0090950122500765, 0.118264957862507]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctu1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.087251129964606, 0.0057311700910798, 0.0740864840959939], [4.330876877240764, 0.0055793756593256, 0.0728873540374803], [4.74010466947767, 0.006259308679016, 0.0956297465679602], [5.410566736870453, 0.0076887955875516, 0.1089996726454529], [6.335157537055132, 0.0076633327340878, 0.1071728720128641], [7.334002807554818, 0.0109198694688389, 0.1694372809700596], [7.901910202449394, 0.0116434096026089, 0.1843619429779906]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctu1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.439725004213647, 0.0088520348014294, 0.1411418072685737], [5.556398820672652, 0.0082043229623715, 0.1321680266197563], [5.481913767087503, 0.007968583548006, 0.1232173141228604], [5.553796050057561, 0.0072951987722752, 0.095873858542967], [5.8123371246319575, 0.0083207196862311, 0.118936764095305], [6.075072806073094, 0.0073200446005707, 0.0996135286360485], [6.220580587310587, 0.0076170791420231, 0.1025819980199416]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctu1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.910488138650424, 0.0067012472168189, 0.0851986609169703], [6.061330400664285, 0.0089595290717413, 0.1620338269246419], [5.66842239250703, 0.0084755116648688, 0.1482781000233894], [5.335758923847375, 0.007634916308049, 0.1037526988073172], [5.345440367012515, 0.0077247529909243, 0.1258063194060287], [5.511663843818498, 0.0072279242937464, 0.0966622432490829], [5.765201518923302, 0.0076471934141382, 0.1067135905761092], [6.040007239323569, 0.0083617431589475, 0.1195606921880638], [6.277786626623538, 0.0077118091973402, 0.0992615658035802], [6.426453605675931, 0.0089181018077758, 0.1154691022996269]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctu1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctu1 * params.ctu1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598375413695184, 9.430459231355364e-05, 0.0012942830135741], [0.0483585530016676, 6.273129823942433e-05, 0.000836507693315], [0.0112126662822318, 1.4993942843111144e-05, 0.0002810686529353], [0.002366471735712, 2.8449734648206773e-06, 4.4409368208738206e-05], [0.000505463046044, 6.777299786810822e-07, 2.0629303078233106e-05], [0.0001111836333418, 6.22394032874266e-08, 1.3504644872893696e-06], [2.399307819832241e-05, 7.904356998380639e-09, 2.087680943191819e-07], [1.7873076449610582e-06, 1.5748651730548816e-09, 1.6025828803536643e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctu1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctu1 * params.ctu1
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

