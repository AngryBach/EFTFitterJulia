function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9477477555015325, -0.0022078124136034, 0.0270335222935926], [0.8280985774705, -0.0019201452987063, 0.0254429577293224], [0.2948041993941426, -0.0006539862622731, 0.0100458235793911], [0.0771157848142412, -0.0001558185714266, 0.0032809844001944], [0.0161045346160811, -3.0555253712102564e-05, 0.0011694438681508], [0.0035699008678533, -6.667661818160627e-06, 0.0002270275749905], [0.0009006916845559, -1.4627877175082666e-06, 0.0001102685604514], [0.0002138433528468, -3.087820013971378e-07, 3.869546770536059e-05], [1.0386573794360918e-05, 5.5204976732998664e-08, 1.231488964286324e-05]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQu1 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_lead_y = [[52.00217235656103, -0.1194987703151329, 1.7142655749896136], [50.39301707893412, -0.1140995864140718, 1.635268154940268], [47.06708893750292, -0.1073719251732115, 1.617961141157722], [42.35065997006552, -0.0965058377794328, 1.3970331231651414], [38.58548070863112, -0.086494895080365, 1.414038774072414], [32.38605725627661, -0.070331331315252, 1.0887409371358756], [25.75189822177129, -0.0577485378530075, 0.8576916026342074], [20.711427232584786, -0.0469709469197976, 0.6373808905721529], [16.036077867514464, -0.035224547605135, 0.5667031887432824], [11.756435500821816, -0.0264652592457496, 0.3563907138428991]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQu1 + coeffs_jet_W_lead_y[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.320486613082936, -0.0050282763791811, 0.0719946197123625], [0.3100970842278429, -0.0006818276743602, 0.0124365965630898], [0.0394813261080294, -7.405850390434532e-05, 0.0019976985221085], [0.0036953391827937, -7.155523271386939e-06, 0.0002231461656047], [0.0003295312522654, -7.296399894473119e-07, 3.790387788553872e-05], [6.47062327443899e-05, -2.279653363005152e-07, 1.4533450444274878e-06], [3.350413331283968e-06, -6.525704751294745e-09, 4.260758280361416e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQu1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_sublead_y = [[47.42617404210262, -0.1101098871883674, 1.5314461039081928], [46.44491763494371, -0.1066268020734455, 1.568383217794689], [44.26034464915624, -0.1005458402718799, 1.5028296868511466], [40.2248689718228, -0.0919360267818039, 1.298808392687823], [38.89003941048541, -0.0861547510507198, 1.3360812107945486], [32.677464038809255, -0.073629651124887, 1.157464854789022], [27.23861872473339, -0.0616281645494546, 0.96490432521085], [23.887482394488117, -0.0516650232401546, 0.8009983194123559], [19.898080868929284, -0.0437402926304566, 0.6131049170389126], [16.09920707097263, -0.0350022214457537, 0.5078829168014989]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQu1 + coeffs_jet_W_sublead_y[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.69499133596421, -0.1182056333727902, 1.9746547840071027], [49.38258919606815, -0.1118570362057557, 1.6164561778459818], [32.76958041097588, -0.075388225995902, 1.0291810996274966], [17.266644700404576, -0.0395373571279029, 0.5452339153946307], [7.67612674900097, -0.0181457632137721, 0.2316445943795116], [3.7492148683328086, -0.0087444849320896, 0.1122179312249393], [2.183187104722049, -0.0056160746277981, 0.0745030207318684], [1.1957662464175247, -0.0026848085676757, 0.0358841153889019], [0.5282089335886249, -0.0011992918803103, 0.0140993628068207], [0.1309152426299356, -0.0002605986777929, 0.0053514720204285]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQu1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.67192504205096, -0.0478939409052707, 0.9475634532008848], [30.233834291321447, -0.0629927459903793, 1.364820168929998], [32.667079545424535, -0.0697901996247526, 1.197593235351211], [32.3813330239668, -0.0737517227856499, 1.005533984596432], [30.24382413589363, -0.0719530273938026, 0.9190950704595998], [27.381408492944452, -0.0641826742964613, 0.7707192293365045], [24.877218016912654, -0.0587768884810399, 0.7184979562966849], [23.075228762698885, -0.0542835948934169, 0.6692237121038941], [22.002866837667924, -0.0518614730107106, 0.6693231676641509], [21.687604036577348, -0.0508157367737715, 0.6708742023633375]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQu1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5656979373984977, -0.0011990974827786, 0.0200215403487189], [0.2906223338931442, -0.0006674514582884, 0.0088708171620487], [0.1437860644180407, -0.0003402242727453, 0.0044545933768617], [0.0589095631359379, -0.0001411672657365, 0.0019364698176396], [0.0208572914768042, -5.422483101219359e-05, 0.0006852569593389], [0.0072717081423096, -1.8324283121364985e-05, 0.0002902663927578], [0.0024630965298175, -5.578382278791443e-06, 0.0001843015239168], [0.0007411031354005, -1.0646691190069936e-06, 0.0001259817914169], [0.000190938119154, -5.718883894623563e-07, 7.419574015260365e-06], [1.1262239382266754e-05, -3.620843144994464e-08, 2.576934657851605e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQu1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_lead_y = [[20.510446811528748, -0.0477064430420459, 0.6612464006531695], [20.31834313371139, -0.04625043098406, 0.65616184212557], [19.829690151546465, -0.0432275408717452, 0.7602216134528909], [18.954211529492976, -0.0428386518558878, 0.6292012581243148], [19.229513827337485, -0.0429914479185402, 0.6849009679554495], [17.725541817774204, -0.0403924580411304, 0.7009520308392551], [16.14156841794526, -0.0376103250515491, 0.489382751902465], [15.293102440077032, -0.0347162425473501, 0.4809051400061994], [14.195342584993105, -0.032755526262218, 0.4527959143885481], [12.518761989367857, -0.0301242529932387, 0.3691072407388526]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQu1 + coeffs_jet_rad_lead_y[3] * params.cQu1 * params.cQu1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.7173476800088965, -0.0145486959509238, 0.232182458267725], [7.294806283560665, -0.0158767907109167, 0.2893986880342963], [8.447323072315966, -0.0193122077916378, 0.2715712393660043], [10.635142899536612, -0.0248293256775204, 0.3104411433921328], [14.595487252690944, -0.0343733218004557, 0.4416063413338318], [21.17873977353153, -0.0488653007096695, 0.6495214119082704], [28.44848252183766, -0.0634493554974938, 1.1086861935890604]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQu1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.605556675906492, -0.0225138325081984, 0.5521470026161439], [11.977090696916678, -0.024966776615332, 0.4318513634336573], [12.14915244697666, -0.026903537165071, 0.4146248544488684], [12.896972702266211, -0.0304567867873852, 0.381551554124087], [14.464814980382457, -0.0343049009245425, 0.4295861002258051], [16.46072130027131, -0.0396093063084517, 0.5454433510156798], [17.769451881206987, -0.0425687230260567, 0.5443565188939264]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQu1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.202574578710976, -0.0220958168840837, 0.4647400079797293], [12.749506079609692, -0.0271960236327843, 0.4780510492542291], [12.18562805704319, -0.0266831899068408, 0.3912856721460125], [11.79376597260888, -0.0259046710953831, 0.3928545137420151], [12.16867055908297, -0.0283315172253079, 0.3620191986913714], [13.100332375229318, -0.0301709040183295, 0.4802957449004414], [14.494780572907908, -0.0347433666360937, 0.4262158676370877], [16.104037988447573, -0.0372865267818263, 0.514224251027803], [17.60214432767218, -0.0407890436057411, 0.5623612902691013], [18.633527557034228, -0.0436287326982465, 0.6269211753655689]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQu1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.022090011577315, -5.208499413441693e-05, 0.0005620004062248], [0.0649784767951586, -0.0001524345047628, 0.0017909667337631], [0.0195214094301227, -4.262594047535375e-05, 0.0007200007376423], [0.003916411468986, -7.506871093169777e-06, 0.0003077020930221], [0.0007203603569158, -1.6148428813085008e-06, 8.74858603201458e-05], [0.0001285792131142, -2.413146514009713e-07, 4.4717344429416085e-05], [6.091613826419538e-06, -1.748808994604993e-08, 1.461333991358791e-07]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQu1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3789201120759789, -0.0008301948332451, 0.0119678654564285], [0.107429303735758, -0.0002579224096941, 0.0031721830466153], [0.0310883423920778, -7.530262449196772e-05, 0.0010600401095957], [0.0076743008147003, -2.0536109664732432e-05, 0.000241429273649], [0.0015826826323761, -4.193163273628383e-06, 0.0001147814651122], [0.0003467577673816, -9.94322473272679e-07, 1.2862602088954656e-05], [8.467460826616119e-05, -3.4330853652058217e-07, 1.7009981609510314e-06], [4.645877132773978e-06, -1.3473374117778806e-08, 1.1091533627432264e-07]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQu1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_sublead_y = [[8.36667149733851, -0.0195846076503273, 0.2473649732556467], [8.284673272058587, -0.0197833017657035, 0.2510506027487058], [8.133299859800942, -0.0187008218443331, 0.2482040597771474], [7.76840333657406, -0.0184486011747405, 0.2424912549304124], [8.001546076103223, -0.0178907285113129, 0.310305367609385], [7.257985478139011, -0.0166944082803983, 0.2244783677245951], [6.596329562960771, -0.0150457524363076, 0.2121449360165229], [6.345180998475916, -0.0141021045261114, 0.1952431857051237], [5.955815892516307, -0.013012571192169, 0.1928096967174458], [5.337826861468408, -0.0115233956299978, 0.1693294370004645]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQu1 + coeffs_jet_rad_sublead_y[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.93600261959554, -0.0180092583894863, 0.2454600080667568], [7.305153090299396, -0.0168874073786595, 0.2278399289258453], [5.552221866197446, -0.0123979456287863, 0.1665572379568199], [4.56427429662041, -0.0104602929324773, 0.1534461661216796], [3.7761099192146266, -0.0089134127045786, 0.1383951063949524], [2.892159981940328, -0.0066688976713691, 0.088601433691011], [2.0009385881093165, -0.0045146709579, 0.0671264163602371], [1.2146700082453077, -0.002884384112663, 0.0362179544509902], [0.6137698899267576, -0.001341920877968, 0.0170563232476561], [0.1686082264741292, -0.0003908942845639, 0.0046983606021661]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQu1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.051756530323712, -0.011314888454954, 0.177641844320419], [6.219422722397188, -0.0130679812298604, 0.222145854348395], [5.573615055410576, -0.0126203663311534, 0.1737448567241758], [5.148359518819317, -0.0117934505554209, 0.1516728366040406], [5.13707588202625, -0.0118763836084172, 0.1430313453093707], [5.336162251379165, -0.0122616423437111, 0.1539615677318102], [5.68044982458787, -0.013038286061305, 0.1747732010994802], [6.054495876767981, -0.0144798877180742, 0.1944957159609682], [6.4317359777379535, -0.0151671861364636, 0.2177354496890192], [6.700676201186485, -0.0155760601350776, 0.2136810340655393]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQu1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.086620514384512, -0.0093526444504667, 0.1299701216317987], [4.330193642914375, -0.0102299231506445, 0.1335737363180495], [4.739374494242281, -0.0110555939664468, 0.1513913671502222], [5.409736353178127, -0.0121695461244992, 0.1940786385370601], [6.3341837365148805, -0.0148282072009881, 0.1823273948706954], [7.332883928777916, -0.0165627747438359, 0.2228026027779711], [7.900704183078882, -0.017661193755471, 0.2619994482878397]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQu1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.438903514703785, -0.0117934108476232, 0.1701351458608325], [5.555536092359762, -0.01253850163243, 0.185383834913522], [5.481068330139658, -0.0124310764332394, 0.19052486119256], [5.552949339293987, -0.0128333846387646, 0.169449137806128], [5.811449788259128, -0.0134045038913843, 0.1823285670256854], [6.074142499859671, -0.0141135175607918, 0.1820484715853874], [6.219614574649383, -0.0147510358915077, 0.1969375466573611]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQu1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.909765189452554, -0.01061611431147, 0.1487602326480059], [6.060401714247447, -0.0134962337779753, 0.2201499574791371], [5.6675512605647205, -0.0124450682662744, 0.2065822204112214], [5.334941067305189, -0.0123490162143038, 0.1526775132981764], [5.344621297231317, -0.0122720229605449, 0.1614120296131138], [5.510808355090727, -0.0129478238229033, 0.1676313355281462], [5.764318461264947, -0.0134988355856114, 0.1738282231006997], [6.039070347023825, -0.014024768679817, 0.1980383803160762], [6.276801315173215, -0.0148475058497998, 0.1985948864049825], [6.425462538430024, -0.014726328377488, 0.196363782147959]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQu1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQu1 * params.cQu1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598285271208143, -0.0001268558048886, 0.0018891849616724], [0.048351066886724, -0.0001108300199484, 0.0014987708432635], [0.0112108834400622, -2.7786484823566847e-05, 0.0003358317957128], [0.0023660934217355, -5.751354972554845e-06, 9.21583325264872e-05], [0.00050537577737, -1.3849269916363492e-06, 3.222284385516885e-05], [0.0001111661617815, -3.0648320429876896e-07, 2.708541014025042e-06], [2.3988309264879867e-05, -8.573047442444863e-08, 5.195378095704585e-07], [1.7869347581896065e-06, -5.595722643151801e-09, 4.1867953433303254e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQu1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQu1 * params.cQu1
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

