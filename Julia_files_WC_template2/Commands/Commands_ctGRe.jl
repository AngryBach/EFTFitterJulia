function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9476386321714296, -0.2739509105940771, 0.0371956797956247], [0.8280090842787805, -0.2373639930032954, 0.0339027404801228], [0.2947727518399329, -0.0834273269963946, 0.0141756483563794], [0.0771084212766538, -0.0221313315443341, 0.0046526538581912], [0.0161028550567286, -0.0047154410377761, 0.0011588922560587], [0.0035696021265254, -0.0010492266705174, 0.0002785944346165], [0.0009006255121536, -0.0002648997131438, 8.06857684670414e-05], [0.0002138305696122, -6.289570015312245e-05, 2.320980254261876e-05], [1.0387985587924088e-05, -3.019790894151953e-06, 1.0834766695303223e-06]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.ctGRe + coeffs_jet_W_lead_pt_Rebin[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_lead_y = [[51.99694619218255, -15.0291775067782, 2.4271062667923653], [50.388068528888326, -14.567385135160542, 2.3576394508505576], [47.0621316994968, -13.563997590089595, 2.173411274216139], [42.3462038576036, -12.176736194638544, 1.918003565794973], [38.58143841370311, -11.076932758813298, 1.7170912422782472], [32.382796295334, -9.236107286765026, 1.4095930134012484], [25.749182892368992, -7.318223937650591, 1.0828686327001635], [20.70922121729352, -5.8719043477810855, 0.845174743006322], [16.034397198867765, -4.536388448552916, 0.6398838898163831], [11.755192156603377, -3.31906901887642, 0.4652184221111271]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.ctGRe + coeffs_jet_W_lead_y[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.319990313820352, -0.6668019139755087, 0.0983336163121636], [0.310064579131755, -0.0882184685189112, 0.015612661662567], [0.0394776221534835, -0.0113651848648819, 0.0025811616180911], [0.0036950049498203, -0.0010813527013183, 0.0002894642560826], [0.0003295013308972, -9.379987705590327e-05, 2.4381378216291394e-05], [6.469824625265265e-05, -1.8476459129931808e-05, 4.845133298184658e-06], [3.3501042038596127e-06, -9.381883240181344e-07, 2.168936922712021e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.ctGRe + coeffs_jet_W_sublead_pt_Rebin[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_sublead_y = [[47.42120116325127, -13.697832892817877, 2.1885275324016416], [46.44004711727763, -13.404419085260942, 2.14055896499471], [44.25572071165315, -12.74783438122065, 2.013916767076764], [40.22075998548171, -11.57602664895228, 1.8158022475317976], [38.88613931703384, -11.160067718407204, 1.7340938288880945], [32.67401821031832, -9.345033984822106, 1.4282925152297885], [27.23576162949211, -7.776523370627878, 1.181495926606544], [23.885048635213145, -6.787146646026703, 1.0284147683040954], [19.89602500506928, -5.653966730731445, 0.8395208294930824], [16.097539145904808, -4.553648982832248, 0.6738263702944316]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.ctGRe + coeffs_jet_W_sublead_y[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.68884596368805, -15.402585091120132, 2.487941653569704], [49.377032313985445, -14.150603401690075, 2.2419657539305944], [32.76609763663623, -9.415904009451031, 1.4016101634266631], [17.264915272880973, -4.980426291112006, 0.7375979699332824], [7.675331743663962, -2.2089648941716327, 0.3315189414102891], [3.748823679109131, -1.073169657233455, 0.1571654688527552], [2.182946097244589, -0.6194917885689915, 0.0899777704579868], [1.1956441308766383, -0.3375849686479901, 0.04698341334951], [0.5281541278671731, -0.1464167350740731, 0.0191436314894942], [0.1309023378814823, -0.0365626202255456, 0.0051393710160442]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.ctGRe + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.66968616372452, -6.787050787579254, 1.2341360953681075], [30.230798915747204, -8.661575450833421, 1.6001725096597583], [32.66368068497618, -9.295868062115048, 1.5710476044138355], [32.377996399839944, -9.222018295957316, 1.4256166628219231], [30.24069174712183, -8.66815242456784, 1.2635387974896946], [27.378568583105523, -7.907039112605205, 1.1225468038477424], [24.874658555157367, -7.187826709476834, 1.0154269756806322], [23.072846659586823, -6.6578099833263495, 0.9400676117394834], [22.000562975412222, -6.340728473126179, 0.888241337148364], [21.685341540562117, -6.245328871506729, 0.8720873997850052]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.ctGRe + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5656390846327133, -0.1626069598874095, 0.0245463907173683], [0.2905935077472737, -0.083249542510513, 0.0129489493358265], [0.1437717650314024, -0.0410547177477921, 0.0068512234361524], [0.0589036880329136, -0.0168427596526052, 0.0029930089776271], [0.0208551324600382, -0.0059625403139412, 0.0010977780801478], [0.0072709848914119, -0.0020859921498752, 0.0004171580173277], [0.0024628697431024, -0.0007029530136211, 0.0001560464415497], [0.0007410581110194, -0.0002087806913484, 5.343148201949053e-05], [0.0001909177620314, -5.353928946408181e-05, 1.144054839873598e-05], [1.126085592920844e-05, -3.084962474241522e-06, 4.2974835028219765e-07]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.ctGRe + coeffs_jet_rad_lead_pt_Rebin[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_lead_y = [[20.50839379627746, -5.899905957332323, 0.9834269263755886], [20.316309998052752, -5.837230110227615, 0.9719228254903908], [19.827718224196538, -5.698726627635842, 0.9435739869494492], [18.952317260496205, -5.4322818219781, 0.8880459755523465], [19.22762865967234, -5.507467712919956, 0.8906959075413295], [17.723649045310655, -5.066670532659641, 0.8062769307221074], [16.13995962295319, -4.6087776575154855, 0.7319973750373651], [15.291578694405848, -4.358469070556282, 0.6940496819922335], [14.193920237191616, -4.062841451829603, 0.6445656432689117], [12.517503015006405, -3.583271935870189, 0.5626561389533937]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.ctGRe + coeffs_jet_rad_lead_y[3] * params.ctGRe * params.ctGRe
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.716685071574403, -1.923351734384788, 0.3245113494823339], [7.294062537360421, -2.0893873825784675, 0.3458753772299274], [8.44648052317782, -2.4145187883290182, 0.3962883290854725], [10.63408105311913, -3.037840244048565, 0.4956138669571572], [14.594033976860644, -4.169730955126367, 0.6672236063804219], [21.17667696168873, -6.064761441383671, 0.9611068962539936], [28.4456229166166, -8.187003709024662, 1.338757593557412]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.ctGRe + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.604399832834956, -3.317337176581327, 0.616933851974374], [11.975933759626246, -3.4191863727976903, 0.6113188037075579], [12.147947086358291, -3.4582835765351905, 0.5850066855490752], [12.895676657441207, -3.678732195424221, 0.5970768738246557], [14.463385384247292, -4.143703804103319, 0.6535808546658654], [16.459050024618907, -4.736884643214492, 0.721093687610342], [17.76769938454598, -5.131954014941346, 0.7480331202412105]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.ctGRe + coeffs_top_had_jet_rad_lead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.20147309280934, -2.9172571351641725, 0.4878358933350707], [12.748255163003856, -3.647074416138672, 0.6213876495934563], [12.184415166256557, -3.4884376472915646, 0.5874207567565277], [11.792614113775551, -3.366475420658599, 0.5565571954967988], [12.16745339739448, -3.481046322091409, 0.5765429150678706], [13.09900073675755, -3.754929811768863, 0.6184494230949344], [14.493312105495392, -4.158338858059755, 0.6782758938512018], [16.102444519915718, -4.617746687935178, 0.7407389829099862], [17.600391469163245, -5.053698175006397, 0.7825034899590967], [18.63165455418514, -5.349724486941341, 0.8163046789930847]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.ctGRe + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0220878324043897, -0.0066715367656268, 0.0008129072499453], [0.0649711085288267, -0.018457880688181, 0.0027928599568241], [0.0195195429382002, -0.0054743596626058, 0.0011010973463807], [0.0039160735075854, -0.001091294697751, 0.000266096376988], [0.0007202593427469, -0.0001989772182894, 5.592762057547956e-05], [0.0001285528309799, -3.543728196257559e-05, 1.0343539153906508e-05], [6.0909908768855096e-06, -1.665009063412004e-06, 4.51927190449793e-07]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.ctGRe + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3788845787002678, -0.1085819656138309, 0.0176028653450791], [0.1074187456100082, -0.0306139108202682, 0.0052433731337383], [0.0310852588252897, -0.0088292656594832, 0.0016084139334619], [0.0076735043480503, -0.0021759917350927, 0.0004187445368527], [0.001582503168204, -0.0004468886875023, 8.794281844991013e-05], [0.0003467188934033, -9.808151260401324e-05, 2.1073152582253598e-05], [8.466210483585797e-05, -2.293429127260541e-05, 3.934230901188479e-06], [4.645368566583453e-06, -1.2337840216639446e-06, 2.827408656262889e-07]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.ctGRe + coeffs_jet_rad_sublead_pt_Rebin[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_sublead_y = [[8.365862120810329, -2.398382562092616, 0.4092122151556506], [8.283857066688617, -2.377353390438764, 0.4024372994414474], [8.132509730282166, -2.330545894495279, 0.3951549841546445], [7.767633304680842, -2.2231521934405336, 0.3745129405899783], [8.000776711668983, -2.2849799333698324, 0.3796540496684561], [7.257275121611192, -2.071278594382464, 0.345681251473219], [6.595694126192112, -1.880159852596347, 0.3123700188628284], [6.344565716203351, -1.8008452328111957, 0.3007548114636653], [5.955259126377975, -1.694197384111482, 0.2843125523097032], [5.33732870278605, -1.5228189612724377, 0.2568649161033585]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.ctGRe + coeffs_jet_rad_sublead_y[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.93523479396671, -2.2714805386505006, 0.3864849187391343], [7.304443341853624, -2.090858717602404, 0.353467243735958], [5.551698409144193, -1.588578306693358, 0.2669911073099072], [4.563830835291872, -1.3039235932472444, 0.2168166226045075], [3.7757375097616186, -1.0779876385712368, 0.1824849695317945], [2.8918777278839163, -0.8235142408677416, 0.1357973319445014], [2.0007489530443974, -0.5685276537717011, 0.0953994957824852], [1.2145517006959878, -0.3447892308578355, 0.0571696918213396], [0.6137135091946341, -0.174483656789457, 0.0288848915555474], [0.1685917009015726, -0.0482365703495081, 0.0073079192852536]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.ctGRe + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.051268211053104, -1.4412504879190189, 0.2485886083185713], [6.2188600346996985, -1.7781510052564162, 0.3119361741480199], [5.573068651122547, -1.5841532584134077, 0.2709842767862079], [5.1478657607322855, -1.4710131410355545, 0.2476997052454285], [5.136578216676318, -1.465698464135248, 0.2480909663141655], [5.3356470292918265, -1.525897231965398, 0.2598928340435739], [5.679900243598719, -1.6202971761178897, 0.271368536361089], [6.053893150331302, -1.7351924850979104, 0.2871804802102166], [6.4310983572180485, -1.839571378726955, 0.2970066468386774], [6.700021420909768, -1.9201647051941184, 0.3113613348324505]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.ctGRe + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.086226190452712, -1.170096338223607, 0.1992993778623984], [4.3297647637655245, -1.2415168748376195, 0.207954800744266], [4.738914467751361, -1.3532053473371235, 0.2259772784998218], [5.409213104576911, -1.5474945884990627, 0.2596463091095145], [6.33357030736381, -1.8060524341163795, 0.3046006707247061], [7.332179175258929, -2.0893053249937106, 0.3509835184543], [7.899950362997244, -2.259457705597934, 0.3800530899476621]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.ctGRe + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.438389779671609, -1.5506908602986225, 0.273925729740269], [5.554999625416642, -1.58432123527043, 0.2795878781890711], [5.480537861221565, -1.5615564021233643, 0.2666160997846467], [5.552413008188764, -1.587127547876845, 0.2682665657153837], [5.810885324540533, -1.662694969772769, 0.2711671966787184], [6.07355342526531, -1.7386789056712515, 0.2829816730241706], [6.219004938221697, -1.7816961099466706, 0.2857960592735385]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.ctGRe + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.909307523450852, -1.4025687434925174, 0.2401914624658453], [6.059823253787938, -1.728741468538774, 0.2962388801630945], [5.667014657442832, -1.6182126694496506, 0.2780609632942571], [5.334422402328333, -1.5303750995198733, 0.2616104093607682], [5.344102137491262, -1.5244037930834191, 0.2572997244825053], [5.51026658871273, -1.5757754128746433, 0.2658041881251272], [5.763757067933983, -1.649616717335475, 0.2768311395261082], [6.038480066156333, -1.7209717184154891, 0.2858326029192312], [6.2761788822836175, -1.79204167206592, 0.2931069740473705], [6.424838524112026, -1.838444767397678, 0.3003914382327488]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.ctGRe + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.ctGRe * params.ctGRe
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598228639549627, -0.0171519518376385, 0.0027923538641065], [0.0483464946617619, -0.0138275111924069, 0.0023004625751625], [0.0112097682344531, -0.0031910734790589, 0.0005598156731964], [0.0023658635773287, -0.000669923533558, 0.0001222362526614], [0.0005053190126314, -0.0001426265097877, 2.6813539739246395e-05], [0.0001111547508355, -3.102189588497416e-05, 5.955610421931914e-06], [2.3985199306003723e-05, -6.732316078091846e-06, 1.0414339538457934e-06], [1.7866897189118311e-06, -4.946615675496369e-07, 7.369530900867397e-08]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.ctGRe + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.ctGRe * params.ctGRe
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

