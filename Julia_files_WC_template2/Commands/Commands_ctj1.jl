function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9485218760424328, 0.0011365946520339, 0.0237959228434699], [0.8287893854096513, 0.0010307085089506, 0.022732330906835], [0.295052494176984, 0.0004238641650379, 0.0096980698943845], [0.0771824243991649, 0.0001419671840224, 0.0035790008169616], [0.0161186304090035, 3.662614964849938e-05, 0.0015721924358909], [0.0035730097394859, 8.173085281137896e-06, 0.0003464904873331], [0.0009015224370972, 2.4754904569220017e-06, 0.0001481327214545], [0.0002140399473522, 6.204799837526013e-07, 5.601529548069712e-05], [1.0395707540928171e-05, 1.1581012152597881e-07, 1.5019239223789884e-05]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctj1 + coeffs_jet_W_lead_pt_Rebin[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_lead_y = [[52.04606593997244, 0.0655164367000884, 1.6536044116543451], [50.43492216447868, 0.0638178529070191, 1.5922603358226308], [47.10697151422912, 0.0634776606073276, 1.6069073958522184], [42.386536279729306, 0.0569709995346816, 1.3380997295621788], [38.6181191785512, 0.0541102210836561, 1.3511510286663766], [32.41287220892968, 0.0453522342002697, 1.1227632559700051], [25.773652934576297, 0.0360729023787328, 0.8345776451163779], [20.72888257334129, 0.0286760989713936, 0.5995422440372283], [16.049410283579675, 0.0223254348557095, 0.5335422148324421], [11.766193769959914, 0.0157747901686133, 0.3164189212356882]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctj1 + coeffs_jet_W_lead_y[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322485046789988, 0.0029065397034286, 0.0638533762461314], [0.3103626030862944, 0.0004728171733722, 0.0126685801081723], [0.0395156492953247, 8.258288531450053e-05, 0.0024425730425436], [0.003698723266069, 8.959871479153168e-06, 0.0002770674878969], [0.0003298525720023, 6.544770312783132e-07, 3.7577655874583054e-05], [6.477612027026886e-05, 7.40231344180665e-08, 1.0793825748194314e-06], [3.3538889030875195e-06, 8.166989468454605e-09, 4.0550961338132053e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctj1 + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_sublead_y = [[47.46642619854286, 0.0612056462468808, 1.453079061637533], [46.48424510652981, 0.0616372893119426, 1.537030661633212], [44.29775333327453, 0.0590662223081251, 1.4269102538338312], [40.259016438214566, 0.0547305199931255, 1.3251070015490178], [38.9225972054096, 0.0540139280973978, 1.3294535223508273], [32.7048108047785, 0.0435937276544913, 1.1085310423574088], [27.261691699958128, 0.0375933688220091, 0.9263748937556384], [23.907146293252296, 0.0330544311351437, 0.7639186004191765], [19.914360622701835, 0.0265966148627327, 0.5913143134675227], [16.112365457523243, 0.0220510812682803, 0.4875636633174476]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctj1 + coeffs_jet_W_sublead_y[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.7399451765357, 0.0796961150207607, 1.971791301198452], [49.4237369948865, 0.0689753839981307, 1.571468801706602], [32.79672100424739, 0.0403190325619675, 0.9479517996188752], [17.28086387780157, 0.0205921414377784, 0.5056382179891227], [7.682516903338915, 0.0091862264124809, 0.2280730369028801], [3.7523366262019526, 0.0045472249050728, 0.1059525268774714], [2.185099969124149, 0.002441735923611, 0.0643854720483478], [1.1967219832113487, 0.0014843102630133, 0.0364748428705109], [0.5286229493950255, 0.0005522416244635, 0.0118786497182681], [0.1310197443849892, 0.000199470662964, 0.0048138149968964]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctj1 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.69171568416156, 0.0392014304092407, 0.9912925911352618], [30.25965896540804, 0.0506120126057719, 1.541230625524751], [32.6944765872909, 0.0494732864881966, 1.222999459141689], [32.40848951757214, 0.0412589041352131, 0.9286718561885104], [30.26967740160301, 0.0370712992487734, 0.8088806097694395], [27.40425869029192, 0.0325247644960043, 0.6945642183294001], [24.89803495148399, 0.0287552766246531, 0.6239734382108266], [23.09451938240784, 0.0273976710661361, 0.600765815515708], [22.02132837485755, 0.0261561327813226, 0.6133291958959152], [21.705885389370028, 0.0271640330787424, 0.6136345547577712]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctj1 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5661469319085896, 0.0007434690256111, 0.0194232796103395], [0.29085811157665, 0.0003331822083664, 0.008477069701889], [0.1439032874412574, 0.0001620150226144, 0.0042962653289759], [0.0589581239181626, 6.68085987565684e-05, 0.0018065648011875], [0.0208752226495784, 2.3038542806221888e-05, 0.0006696387244012], [0.0072777674963273, 8.035014898492916e-06, 0.0003084450297982], [0.002465199783929, 3.5086012769303964e-06, 0.0001801123392935], [0.0007417549693838, 1.916660674570193e-06, 0.0001363415793035], [0.0001911136942277, 2.67399002459316e-07, 2.1694611546485004e-05], [1.127267462706565e-05, 6.9623797457724396e-09, 1.723365584014041e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctj1 + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_lead_y = [[20.52734773039384, 0.024580284455324, 0.651935608896383], [20.334922339075028, 0.0249422991957002, 0.6378170625262929], [19.84568485614441, 0.0259757068023336, 0.7439171498071792], [18.96960489031438, 0.023334623335843, 0.6005455415869968], [19.244964864421288, 0.0230400124315803, 0.6763628055745321], [17.739974188561288, 0.0219471527616991, 0.7227695100402], [16.154741098819827, 0.0187373990230682, 0.4580802220529276], [15.305393357843911, 0.0179532586488073, 0.4349455166290334], [14.206757886572008, 0.0163481707353302, 0.4374889268353101], [12.528999427986172, 0.0138995323554683, 0.3405542817663184]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctj1 + coeffs_jet_rad_lead_y[3] * params.ctj1 * params.ctj1
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.722831784231873, 0.0093055850021821, 0.235277424995103], [7.30071280741508, 0.0098940087227059, 0.3281535561049996], [8.454216935809674, 0.0101533459867789, 0.2531061481591803], [10.643716735692845, 0.0118631817917889, 0.2932584577930447], [14.607257165469724, 0.0156438078178947, 0.3995719257003627], [21.195893199396693, 0.0239026911341651, 0.5956985191796945], [28.47178510595246, 0.0368026294193314, 1.107441920981156]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctj1 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.614860241177135, 0.0188879884691761, 0.5997961242939552], [11.986807154033755, 0.0171997291827974, 0.4388006986144618], [12.158862476177722, 0.014982711199487, 0.3997834894467819], [12.907419752613112, 0.014061664726145, 0.3555096580385468], [14.476577835590172, 0.0156293009671894, 0.3764060757698295], [16.474222256830696, 0.017776541290331, 0.5373869869988914], [17.78415304589644, 0.0199252026438332, 0.4989325528478705]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctj1 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.21090093793762, 0.0146373142408561, 0.4923244292722613], [12.759921238735664, 0.0182760500955313, 0.4851011350052311], [12.195443761474328, 0.0158275057666287, 0.3955498831533037], [11.803128783867905, 0.0140036906735036, 0.3640841712542922], [12.17858775120936, 0.0139796434688354, 0.3319753741948617], [13.110948064034917, 0.015495178555663, 0.4543361486005434], [14.506661482726122, 0.0158236908713272, 0.3887675509115325], [16.117008102693806, 0.0181608846515087, 0.474805069736071], [17.616415263407355, 0.0202777330365025, 0.5834093632489425], [18.648859696106232, 0.0219367621840989, 0.5933445575630729]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctj1 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221080648675316, 2.241191276583609e-05, 0.0004511213238695], [0.0650299332720238, 7.130048033095005e-05, 0.001551478807555], [0.0195373336276271, 2.7699687577583357e-05, 0.0007644953560181], [0.0039196764086754, 7.420291940321241e-06, 0.0003622499561591], [0.0007209463286289, 1.157007619336565e-06, 9.814735918674324e-05], [0.0001286961361726, 3.9541563820493595e-07, 6.71477442821922e-05], [6.096722443672016e-06, 3.768145819404738e-09, 1.0853919155948977e-07]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctj1 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3792125715321753, 0.0004230189546496, 0.0119960962558422], [0.1075142924575784, 0.0001069508054143, 0.0029951218326867], [0.0311136560092128, 3.3375752280915816e-05, 0.0010020989506889], [0.0076808452172911, 7.356455797433021e-06, 0.0002261569561632], [0.0015841143353691, 1.9110823501335143e-06, 0.0001053300666086], [0.0003470926188725, 4.32646825977077e-07, 1.0441414525958837e-05], [8.47712964606801e-05, 5.231575084045919e-08, 7.78138460900104e-07], [4.649807755816156e-06, 2.873197398635981e-09, 8.182571796932174e-08]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctj1 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_sublead_y = [[8.373267482357667, 0.0084404092062932, 0.2314748333005073], [8.291353528967528, 0.0088743124203186, 0.2373095850659808], [8.139727341113705, 0.0090550087042377, 0.2500045340221221], [7.774664048487348, 0.0082458543166702, 0.2229055706448653], [8.007807472001367, 0.0089737655064411, 0.295078885860102], [7.263671251233892, 0.0077886360095885, 0.2203166701104177], [6.601518168308837, 0.0072962223155027, 0.2617215722171571], [6.350068075041591, 0.006736285132231, 0.1737212144456824], [5.960331809384031, 0.0064698292717995, 0.1889511896335944], [5.341856111518693, 0.0057873330614743, 0.1590792493196915]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctj1 + coeffs_jet_rad_sublead_y[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.942219973348774, 0.0088081252950698, 0.2330503072238794], [7.31096088082076, 0.0081940128828391, 0.228330619205464], [5.556494343374089, 0.0059853294833976, 0.1636429539873892], [4.567870726963884, 0.0049050563937711, 0.1429554946848072], [3.779143829138631, 0.0039711904942486, 0.1254426636124856], [2.894417999540277, 0.0029579019618419, 0.0797511776096483], [2.0024755070227007, 0.0021870097890163, 0.0959564408023604], [1.2156172605423592, 0.0011211703400444, 0.0326433956738188], [0.6142149156458327, 0.0005512892576189, 0.0144952272028203], [0.1687392273859316, 0.0001892091193858, 0.0038174612627215]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctj1 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.055769595632989, 0.0060292292467968, 0.1709690049090708], [6.224109192511081, 0.0072808034091078, 0.2280641226157249], [5.577993307973811, 0.0062236034705861, 0.1679984437696266], [5.152360701610699, 0.005284992095034, 0.141482439071962], [5.141048899228017, 0.0051272197061456, 0.1337710100572356], [5.340330720213535, 0.0056872324054507, 0.1943707053305183], [5.684876833327684, 0.0058765568878897, 0.1582548870778595], [6.059390792460889, 0.0063558232777682, 0.1762730929275887], [6.436859840804512, 0.0066123605517845, 0.1970056140625542], [6.7059975214104135, 0.0073071313340868, 0.21361835307278]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctj1 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.089829267906946, 0.0045599470136899, 0.1320126632452389], [4.333677547728144, 0.0046062319520583, 0.1235398267161793], [4.743097410318213, 0.0047374985716539, 0.1349471801914574], [5.413982900635905, 0.0060863055733802, 0.1887037805853708], [6.339145040989089, 0.0063253505503688, 0.1648956282284399], [7.338590535142664, 0.0081482597700048, 0.2544570236587788], [7.90684468470285, 0.0088282013745947, 0.2493050782746874]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctj1 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.443067955934279, 0.0062012105872609, 0.1622246872677215], [5.5599432923062375, 0.0067001125646306, 0.2257066439550525], [5.4853724618637, 0.0059777170593872, 0.1781146688717856], [5.557281392529786, 0.0057377807967294, 0.1664974823377828], [5.816008634185963, 0.0060156815630295, 0.1611968463506166], [6.078904379096346, 0.0062050784384141, 0.1619504471748595], [6.224566380920112, 0.0064194823066558, 0.1926125122866705]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctj1 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.9134743918725645, 0.0054013179813214, 0.1524482177270094], [6.065107790991542, 0.0068384589493758, 0.2125170167094123], [5.67197245174915, 0.0065570028280057, 0.1980844634850252], [5.339143113080091, 0.0059505794627616, 0.2058489194937982], [5.348812256512909, 0.0056411526884092, 0.1539453526962771], [5.515185760418325, 0.0058887055437769, 0.1617603890201121], [5.768855517399022, 0.0058002301918091, 0.1516776326377122], [6.043845294950073, 0.0061792113347611, 0.1741659584232772], [6.281826191175031, 0.0065807601304296, 0.1825428870378219], [6.430504848605449, 0.0069951174494401, 0.1922952704142187]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctj1 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctj1 * params.ctj1
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598743715463705, 7.149709484122844e-05, 0.0018658819306851], [0.0483889447044213, 5.2222433080484976e-05, 0.0015274878624426], [0.0112199274126653, 1.0580968138082849e-05, 0.0002991451005198], [0.0023680052001576, 2.332469263092939e-06, 8.065173072438898e-05], [0.0005058258841604, 5.489924713304103e-07, 3.058385167862336e-05], [0.0001112561420147, 6.511411466693644e-08, 2.0913409479234503e-06], [2.401274267584272e-05, 1.482522617140476e-08, 3.0455888163852174e-07], [1.788840333708864e-06, 2.9530871437727595e-09, 2.4392513463073265e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctj1 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctj1 * params.ctj1
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

