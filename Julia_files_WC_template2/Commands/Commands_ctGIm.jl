function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9484322599452326, -1.010958694536157e-08, 0.0366231196047398], [0.8287146984776258, 8.118948212441734e-09, 0.0330293026447909], [0.2950289855505285, -3.18605210064013e-10, 0.0134554402396423], [0.0771776284261157, -2.051050494246715e-11, 0.0043764826469514], [0.0161179119019877, -3.4611554736666914e-10, 0.0011002123598808], [0.0035729234527402, 1.868919086148365e-11, 0.000267019016674], [0.0009015200140578, 2.154906323504976e-12, 7.771488294243933e-05], [0.0002140477422391, 7.742373590369411e-14, 2.2535497934673657e-05], [1.0395681504450608e-05, -3.788501664609974e-15, 1.0411721687008094e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctGIm + coeffs_jet_W_lead_pt_Rebin[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_lead_y = [[52.04177541243436, -5.223003873844335e-08, 2.3424968169495943], [50.43081777220461, 1.0919659065855571e-08, 2.2730718129418457], [47.10281896847174, 7.1909463201592e-07, 2.098124970132684], [42.38274825195776, -1.2368810362900489e-07, 1.852748852636923], [38.614530072375686, 2.236817953389705e-07, 1.6588666508507164], [32.409985469481924, -2.2141636524253272e-08, 1.3594696700826123], [25.77125855323939, -3.4806963755684706e-08, 1.048541754292789], [20.72691698378284, -1.1676688491970057e-07, 0.8212866151397401], [16.047873715233585, 9.799498434936993e-09, 0.6226883482630833], [11.76505498989655, 4.247378614667106e-09, 0.454191783154133]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctGIm + coeffs_jet_W_lead_y[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322006354386956, 8.214193103484035e-09, 0.095632563049672], [0.310338506321772, 1.2873045962535912e-08, 0.0148527563535116], [0.0395135907260538, 6.292229625664741e-11, 0.0024223310421681], [0.0036986281971596, 1.6782469186924533e-11, 0.0002749309213204], [0.000329840248004, -1.1010010698214665e-12, 2.3546951126534728e-05], [6.477404187905041e-05, -2.2161489417059842e-13, 4.705894925268917e-06], [3.353684811904685e-06, 9.516563046192716e-15, 2.096962938998837e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctGIm + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_sublead_y = [[47.46229621992489, 4.9182609096476434e-09, 2.1152977722755777], [46.48014216745367, 4.573899465324032e-07, 2.066896017052105], [44.29387243531422, 1.4536983123546738e-07, 1.9460404115863563], [40.25543033301795, -4.827627853032368e-09, 1.756013909606276], [38.91918952836298, 2.5744132615669056e-07, 1.6743551736058329], [32.701813405718426, -6.738570374851406e-07, 1.3803637927149666], [27.259196170388588, -8.079951543393804e-07, 1.1441006182180429], [23.90504622173213, -4.37551823662119e-08, 0.9921944879976292], [19.912565743480435, -1.8831895624332846e-07, 0.8117273986435668], [16.110902892124773, 6.347685777938448e-08, 0.6517614516428951]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctGIm + coeffs_jet_W_sublead_y[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.7354795197082, -1.4663470437881188e-08, 2.394974736126504], [49.4194585888335, 4.570883005428073e-08, 2.15772804457746], [32.7938924861576, 1.5798390595733736e-08, 1.3617976347974523], [17.279299956955825, -2.666475311663419e-07, 0.7190641187472087], [7.681832857815992, 3.553311197520151e-09, 0.3238350102265419], [3.751994691722479, 7.081700670319435e-09, 0.1535034491073217], [2.184886876795706, 3.812572115704978e-09, 0.088689838646505], [1.1966102062070003, -9.579079751631523e-10, 0.0458898090999089], [0.5285715614756376, -3.7240258852991583e-10, 0.0187313719014202], [0.131007564620005, 2.681999300936798e-09, 0.0050085836721189]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctGIm + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.689965585330334, 3.3852335934447815e-08, 1.1725883921257814], [30.2573812667163, -1.126527555683765e-07, 1.520370507917891], [32.69172312439315, 3.4239847436583494e-08, 1.4940890190190592], [32.40559127744922, -3.171667328771832e-08, 1.371157114986633], [30.26679894674099, 2.909882219237604e-07, 1.232402964985849], [27.401708067133757, -6.240907434142809e-09, 1.0995943572619706], [24.89569821876521, -5.1263480349561525e-08, 0.996394504448306], [23.09233953367895, 4.954842203197529e-09, 0.922524700938753], [22.01923486813376, -3.66508643434571e-08, 0.8721668555743063], [21.70380580154565, 4.220080025616832e-07, 0.8571593165742912]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctGIm + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.566099831713302, 9.7648787650139e-10, 0.0236873985701746], [0.2908332707282481, 9.621784098045116e-10, 0.0125339578511036], [0.1438918320400917, -1.0278992536686018e-10, 0.0065942376044502], [0.0589537704575482, -3.3224897245164353e-10, 0.0028783264882018], [0.0208737203085834, -1.2893620549160596e-11, 0.0010638258565504], [0.0072773150133733, 3.6377366422051248e-12, 0.000404000979667], [0.0024650719005254, 6.869343311733754e-12, 0.0001513278213877], [0.000741728773865, -1.00284039967437e-12, 5.167934549496654e-05], [0.000191101566416, 2.8572868630446843e-13, 1.1144151937215697e-05], [1.1271462337767435e-05, 4.067680688272144e-15, 4.309151133352849e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctGIm + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_lead_y = [[20.525730918383086, -2.246336492799498e-08, 0.9481919282379976], [20.33332460683661, 4.952303136462888e-07, 0.9362258913435082], [19.844098441706528, -1.8875437539448493e-07, 0.9076893804156214], [18.968100171459483, -1.4655315007508681e-07, 0.8555030773508497], [19.24341037504241, 4.636788283329807e-07, 0.8585859776141068], [17.738442568900552, 4.4397941323381935e-08, 0.7788242673558625], [16.15338848643951, -5.1405220524713975e-08, 0.708321789427105], [15.30413351859401, -2.839960189238156e-07, 0.6705343384633162], [14.205586776842056, -3.3342731506370345e-08, 0.6244897746232768], [12.527940226321906, 2.92015391970239e-07, 0.5469894264830859]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctGIm + coeffs_jet_rad_lead_y[3] * params.ctGIm * params.ctGIm
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.722301978726063, 1.4875026765892585e-08, 0.311314204942154], [7.300112729492545, 1.46550671598078e-08, 0.332466355007261], [8.453528775694076, 6.995304779877641e-09, 0.3817952142545423], [10.642874392647666, 2.0426362122730562e-07, 0.4778461757138604], [14.60602787169056, 2.065548896368341e-07, 0.6435916950951796], [21.194127078180184, -1.5705986464720212e-06, 0.9284324596992072], [28.469453739679917, -1.8433302884091063e-08, 1.2959250923967625]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctGIm + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.614035561202751, 1.7815245019955004e-08, 0.5846512855634605], [11.985913450485643, -3.0706917340656754e-08, 0.5808789118029781], [12.1579171438995, -1.4746128984555185e-08, 0.5588187572623666], [12.906362083959134, 1.5879658366024785e-08, 0.5757642730469251], [14.475355637458687, -1.5537486630634593e-08, 0.6335693114488354], [16.472761853367718, -7.655749812558007e-09, 0.7044932160461835], [17.782568001306554, -2.637422486759209e-08, 0.7361728158933548]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctGIm + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.210044075248502, -1.3659198461191124e-07, 0.4677646302166822], [12.758921807934197, 1.9639372572655134e-07, 0.5945748745864103], [12.19450642443244, 1.707301154896257e-07, 0.562635818839533], [11.802205072526991, -1.9013574514836762e-07, 0.5339110192552468], [12.177612811543396, 1.6573332073388516e-07, 0.5558188340168615], [13.109883569751824, -2.3388383349609842e-08, 0.5967578041524054], [14.505498513603506, -3.622457150472642e-08, 0.6561262193790913], [16.115708206519372, -5.93500589340934e-07, 0.7165470695455983], [17.61491131654206, 3.9732481047117855e-08, 0.7605310439071872], [18.647266324831165, -9.574243270758833e-09, 0.7957758175584182]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctGIm + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221058984697434, -5.113649365835574e-11, 0.0008193569094331], [0.0650246411708474, 1.2807324327240618e-10, 0.0026912865829954], [0.0195360760205619, -6.112106934006942e-11, 0.0010432335189575], [0.0039195026654157, 9.941624826299278e-12, 0.0002530521664044], [0.0007209151857181, -7.32589939650469e-13, 5.346480717291483e-05], [0.000128680468134, 1.1835288274809926e-14, 9.9950023274959e-06], [6.096574909122488e-06, 1.4461631840713842e-14, 4.373592150921944e-07]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctGIm + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.379182746475737, -3.5894269778680155e-09, 0.0169583625912342], [0.1075065867456213, -2.0632519447329918e-10, 0.0050564102787267], [0.0311114386117541, -2.3654083756214748e-12, 0.0015474684512781], [0.0076803277420903, 6.010316000983676e-10, 0.0004041767097174], [0.0015839957561909, 2.421877282941043e-12, 8.548862406561325e-05], [0.0003470721893482, 9.111807104369253e-13, 2.0654084028591345e-05], [8.476223471458887e-05, 2.352286197763981e-13, 3.950792235712472e-06], [4.649572687700684e-06, 3.89309612189463e-16, 2.773150513415101e-07]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctGIm + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_sublead_y = [[8.372639670911443, 1.6411732417509484e-08, 0.3943591892712089], [8.290714540906736, 2.1196279731405813e-08, 0.3888762531172368], [8.139111840558336, -1.976289770814555e-08, 0.3807594283978711], [7.7740635075910465, -1.2726210529834248e-08, 0.3618618963935974], [8.007180073251641, -1.4417120303998756e-08, 0.3657932320931022], [7.263115767083964, -4.192906999378465e-08, 0.3331661375583941], [6.6009949291884364, -9.561410249212357e-09, 0.3011737418523341], [6.349587668497901, 7.555337844245004e-08, 0.2892954421340542], [5.959888314219318, -1.5388028437322437e-08, 0.2731993400059109], [5.341461568937366, -9.337391973668014e-09, 0.2464843752216732]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctGIm + coeffs_jet_rad_sublead_y[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.941638193774155, -7.811837576809921e-08, 0.3717291503819749], [7.310409854532357, -2.00824415053971e-08, 0.3404596898398949], [5.556080401151213, -4.488317939532749e-09, 0.2568116027532393], [4.567518917828036, 3.476169685434627e-09, 0.2092312049266461], [3.7788489085914025, -2.0692636493180316e-09, 0.1763776587816232], [2.894193308503809, -2.894687822774244e-09, 0.1309327045267211], [2.0023206235526243, 1.5326542017095896e-09, 0.0919557905899072], [1.2155242193286744, -8.225196683703244e-10, 0.0553200385831982], [0.6141704665976542, 1.569871755883436e-09, 0.0278118318796994], [0.1687251482129261, -4.463943302696168e-10, 0.0071207366587903]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctGIm + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.055390109129532, 9.768933437594545e-09, 0.2388856605898236], [6.223673853373848, -2.368959695076001e-08, 0.2981362277262118], [5.577573671380966, 9.846027953547702e-09, 0.2602354338582747], [5.1519761500898085, -7.108630493648663e-09, 0.2382262056381445], [5.140665297285071, -9.268638523352024e-09, 0.2384595079058796], [5.339923507714008, 3.26639694181452e-08, 0.2503799863092075], [5.684443641230466, 6.8785056539510955e-09, 0.2614443921911402], [6.058910582803584, -4.0093269562934785e-09, 0.2783768582476578], [6.436339519025888, -6.153094256333702e-09, 0.2878779876858056], [6.70545515534757, 2.7877119967404794e-09, 0.3019036803551199]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctGIm + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.089524494867038, -1.5864050073588487e-09, 0.1920131910308379], [4.33333902565211, -1.3312759117312112e-08, 0.2013143867503039], [4.74273278126304, -1.3906172600642385e-08, 0.2181299432614036], [5.4135662350894735, -1.6142122305495832e-08, 0.2501442106484531], [6.338660677706971, 1.9756626091713064e-08, 0.2933193093398149], [7.33803059846524, -1.4625051170114034e-08, 0.3374774725080471], [7.906266719020559, -7.201263985123775e-08, 0.3659458448283463]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctGIm + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.442676492362048, -5.2263854133371985e-08, 0.2613781812128978], [5.559534488390979, -2.8782140004679494e-08, 0.2682258024419615], [5.4849585646907, -9.820302445914677e-09, 0.255949577670012], [5.55686688388642, 9.910457003652248e-09, 0.2582723898286844], [5.815552494417728, 3.6496219824044835e-08, 0.2622480699069773], [6.078423378457149, -4.139884906749725e-08, 0.2742959092038896], [6.22406564906462, -7.022421664601648e-09, 0.2777886215678735]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctGIm + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.9131178767793084, 6.607850933093572e-10, 0.2301482790104793], [6.064656220665223, -1.2561639886398528e-08, 0.2840639622493105], [5.671552669122156, 3.5828754262287356e-09, 0.2670274482546263], [5.338733717432532, -1.3806150766143722e-08, 0.2521722655834599], [5.348406141820921, 1.3593843416589505e-08, 0.247700553858343], [5.514761222749476, 1.0738233524598684e-08, 0.2564146987372701], [5.768421023207137, 5.9425938614410265e-09, 0.2671635501470449], [6.043372190532143, -2.2033468383142463e-09, 0.2761708057678385], [6.281326871680367, 8.87030602816027e-10, 0.2838539195909279], [6.429999163607016, -1.5089770661025535e-08, 0.2902717005774928]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctGIm + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctGIm * params.ctGIm
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.059869789111295, 3.536415611506942e-11, 0.0026795369543508], [0.048385231139311, -3.505483236356149e-11, 0.0022179651535185], [0.0112191066232473, -4.5075476735717966e-11, 0.0005411890356213], [0.002367838915476, 7.692190712490818e-12, 0.0001181520477971], [0.000505786334779, 3.566703073588505e-13, 2.612348879746333e-05], [0.0001112487667651, -7.030631240715332e-13, 5.778488406211393e-06], [2.4010242824832225e-05, 3.646903487432678e-14, 1.045095259970689e-06], [1.788633679617106e-06, 8.404693389077358e-15, 7.31946721112219e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctGIm + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctGIm * params.ctGIm
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

