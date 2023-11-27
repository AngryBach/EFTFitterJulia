function get_coeffs_jet_W_lead_pt_Rebin(i) 
    coeffs_jet_W_lead_pt_Rebin = [[0.9487901272456104, 0.0181536360059192, 0.0039803072964916], [0.8290318540702613, 0.0164249865531911, 0.0034217471078653], [0.295139891858251, 0.0069833169965476, 0.0017406495719515], [0.0772054895549129, 0.0023465190767024, 0.0006742508146716], [0.016123529903421, 0.000611741741057, 0.000243045166044], [0.0035741318513206, 0.0001494081830962, 7.725304350794418e-05], [0.0009018323113982, 5.493651225558631e-05, 3.577608203202426e-05], [0.0002141324779315, 1.8501807530140936e-05, 2.0706655798035733e-05], [1.0398473070843918e-05, 7.856557088028698e-07, 9.175539206616692e-07]]
    return coeffs_jet_W_lead_pt_Rebin[i]
end

function my_dist_func_jet_W_lead_pt_Rebin(params, i)
    coeffs_jet_W_lead_pt_Rebin = get_coeffs_jet_W_lead_pt_Rebin(i)
    return coeffs_jet_W_lead_pt_Rebin[1] + coeffs_jet_W_lead_pt_Rebin[2] * params.cQj18 + coeffs_jet_W_lead_pt_Rebin[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_lead_y = [[52.06107695049835, 1.133901922515897, 0.2785115666321626], [50.44930277412956, 1.1025368239906732, 0.2825243517396956], [47.12047253001015, 1.020363456888832, 0.2361010502605856], [42.39883607597303, 0.9312711546529006, 0.2273791501689568], [38.62926868173523, 0.8736322323566946, 0.226879015774589], [32.422073811293615, 0.7178196159709919, 0.1743404957941493], [25.781164361928575, 0.5769494379858033, 0.138549647875669], [20.734893846835547, 0.4603513415772956, 0.1117754312761872], [16.054008096726935, 0.3551443186551488, 0.0940293258013845], [11.769555962954536, 0.2467202045465938, 0.0587301941850012]]
    return coeffs_jet_W_lead_y[i]
end

function my_dist_func_jet_W_lead_y(params, i)
    coeffs_jet_W_lead_y = get_coeffs_jet_W_lead_y(i)
    return coeffs_jet_W_lead_y[1] + coeffs_jet_W_lead_y[2] * params.cQj18 + coeffs_jet_W_lead_y[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_sublead_pt_Rebin = [[2.322983677594441, 0.0481231077154973, 0.0107881249255635], [0.3104543971197288, 0.0079791413905572, 0.0022128753007549], [0.0395275970722414, 0.0013512745428977, 0.0004400389472056], [0.0036998962898926, 0.0001298970881269, 4.697633311682929e-05], [0.0003299621693225, 7.816534021919588e-06, 4.0826286809211445e-06], [6.480019129972509e-05, 8.60018593932513e-07, 8.634507604695263e-08], [3.355208155666591e-06, 2.1522850741951698e-07, 1.5342041272335673e-07]]
    return coeffs_jet_W_sublead_pt_Rebin[i]
end

function my_dist_func_jet_W_sublead_pt_Rebin(params, i)
    coeffs_jet_W_sublead_pt_Rebin = get_coeffs_jet_W_sublead_pt_Rebin(i)
    return coeffs_jet_W_sublead_pt_Rebin[1] + coeffs_jet_W_sublead_pt_Rebin[2] * params.cQj18 + coeffs_jet_W_sublead_pt_Rebin[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_sublead_y = [[47.48005661084485, 1.0199939597363346, 0.2328126147836941], [46.49760096294614, 1.024672652967604, 0.2479786707009645], [44.31062076199683, 0.967312562739299, 0.2401809770017997], [40.27060952382075, 0.8719264525565136, 0.2134948240817102], [38.93378562781188, 0.8600407587215912, 0.2199966436828122], [32.71420715256622, 0.7143954586090835, 0.1665619951693072], [27.26959418994065, 0.5968766683017328, 0.1401325206010587], [23.913978551786467, 0.5404284655487496, 0.1428008631220871], [19.92000235040864, 0.4457296226109265, 0.1166943761660333], [16.116921907287633, 0.379347279705476, 0.1103051723254615]]
    return coeffs_jet_W_sublead_y[i]
end

function my_dist_func_jet_W_sublead_y(params, i)
    coeffs_jet_W_sublead_y = get_coeffs_jet_W_sublead_y(i)
    return coeffs_jet_W_sublead_y[1] + coeffs_jet_W_sublead_y[2] * params.cQj18 + coeffs_jet_W_sublead_y[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_lead_jet_W_sublead_Dy = [[53.75551932093197, 1.286073548458687, 0.3285509991509149], [49.437988603183136, 1.1136352382556498, 0.270770357292031], [32.806178843897385, 0.6470528873959107, 0.139501780907], [17.285743250957477, 0.3416374834784355, 0.0873994410420026], [7.6847172932556465, 0.1530056188793396, 0.0399099220923527], [3.753414963446335, 0.0789206121832863, 0.0192762376210359], [2.185778196374612, 0.0474493669151643, 0.0173243158401952], [1.1970537955192593, 0.0236463019444969, 0.0071749154349227], [0.5287645343906797, 0.009227894963687, 0.0018054026617189], [0.1310566727518344, 0.0034829535181847, 0.0016730876175757]]
    return coeffs_jet_W_lead_jet_W_sublead_Dy[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dy(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dy = get_coeffs_jet_W_lead_jet_W_sublead_Dy(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dy[1] + coeffs_jet_W_lead_jet_W_sublead_Dy[2] * params.cQj18 + coeffs_jet_W_lead_jet_W_sublead_Dy[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_lead_jet_W_sublead_Dphi = [[23.69855465806168, 0.6286671155744612, 0.1757441760337055], [30.26848854727901, 0.8452811346862859, 0.248565837784005], [32.70377565727336, 0.7964221271018024, 0.1969827170773915], [32.4178573687077, 0.7044212613254577, 0.1712462450303957], [30.278499297709416, 0.6021577019589409, 0.1344407340434161], [27.41206122334955, 0.5274841578512545, 0.1078086341062659], [24.9052355827262, 0.4762592467159006, 0.1150564327529274], [23.101158976542983, 0.4423840025914354, 0.0953549826767033], [22.027697841095723, 0.4293330953080114, 0.099381389285246], [21.71219437224068, 0.4214458925656091, 0.0979187186753743]]
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_W_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_W_sublead_Dphi = get_coeffs_jet_W_lead_jet_W_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_W_sublead_Dphi[1] + coeffs_jet_W_lead_jet_W_sublead_Dphi[2] * params.cQj18 + coeffs_jet_W_lead_jet_W_sublead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_lead_pt_Rebin = [[0.5663040706320722, 0.0119081588081372, 0.0027539349108937], [0.2909376104812137, 0.0052376476058093, 0.0012275637616115], [0.1439439170396522, 0.0026141972755236, 0.000772698168754], [0.0589748068704735, 0.0010383394662517, 0.0002798123240361], [0.0208814367566195, 0.0003589055430055, 0.0001102911002183], [0.0072798507807952, 0.0001169351197595, 4.000892935528652e-05], [0.0024659214656907, 4.955714093422787e-05, 2.270533517815776e-05], [0.0007421343431905, 3.687932941650089e-05, 5.398956327632276e-05], [0.0001912062958085, 1.0538967617337646e-05, 1.6335205273108087e-05], [1.1276272567193173e-05, 9.626409174004613e-08, 1.850047257194828e-08]]
    return coeffs_jet_rad_lead_pt_Rebin[i]
end

function my_dist_func_jet_rad_lead_pt_Rebin(params, i)
    coeffs_jet_rad_lead_pt_Rebin = get_coeffs_jet_rad_lead_pt_Rebin(i)
    return coeffs_jet_rad_lead_pt_Rebin[1] + coeffs_jet_rad_lead_pt_Rebin[2] * params.cQj18 + coeffs_jet_rad_lead_pt_Rebin[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_lead_y = [[20.533203160228183, 0.4014717359903129, 0.1115117970356173], [20.340627633672224, 0.3907994376705105, 0.0959105343104039], [19.851159935785684, 0.3874862253582413, 0.0936888358215479], [18.97504197415285, 0.378655308470148, 0.1231357035924301], [19.250258666747, 0.3760966170247392, 0.0994646289827089], [17.74489990001003, 0.3447307852107474, 0.0840163879376216], [16.159284639437185, 0.3001566953967098, 0.077269754452597], [15.30960887229787, 0.2826414178166609, 0.0721009236170813], [14.210701938046022, 0.2507018757131953, 0.0735661810943019], [12.53252107795868, 0.2194005894276198, 0.059314607960128]]
    return coeffs_jet_rad_lead_y[i]
end

function my_dist_func_jet_rad_lead_y(params, i)
    coeffs_jet_rad_lead_y = get_coeffs_jet_rad_lead_y(i)
    return coeffs_jet_rad_lead_y[1] + coeffs_jet_rad_lead_y[2] * params.cQj18 + coeffs_jet_rad_lead_y[3] * params.cQj18 * params.cQj18
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
    coeffs_top_lep_jet_rad_lead_Dphi = [[6.724715149373032, 0.1467691684355599, 0.0367882793998652], [7.302729568604242, 0.1520896494253428, 0.0383666567704817], [8.456611659752028, 0.1643521345876158, 0.046780495666205], [10.646664211244715, 0.1810694615535266, 0.0404369872501846], [14.611291182372543, 0.2469908050233234, 0.0580139296983593], [21.201764931103707, 0.3797707168145887, 0.0970125650282088], [28.47979093774148, 0.5978172113776687, 0.1842000615827701]]
    return coeffs_top_lep_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_lead_Dphi(params, i)
    coeffs_top_lep_jet_rad_lead_Dphi = get_coeffs_top_lep_jet_rad_lead_Dphi(i)
    return coeffs_top_lep_jet_rad_lead_Dphi[1] + coeffs_top_lep_jet_rad_lead_Dphi[2] * params.cQj18 + coeffs_top_lep_jet_rad_lead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_top_had_jet_rad_lead_Dphi = [[11.618134750220316, 0.3018372510812377, 0.1025639698632148], [11.9901721339914, 0.283320604035101, 0.0825122366753075], [12.162201346909992, 0.2338305021556392, 0.0573121068769463], [12.911029611572058, 0.2207870157969015, 0.0537932444670708], [14.480647519698392, 0.2442355182682495, 0.0647020565178846], [16.47879830488218, 0.274977127463554, 0.067407442403221], [17.789231913712307, 0.3131780294377171, 0.07359723748012]]
    return coeffs_top_had_jet_rad_lead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_lead_Dphi(params, i)
    coeffs_top_had_jet_rad_lead_Dphi = get_coeffs_top_had_jet_rad_lead_Dphi(i)
    return coeffs_top_had_jet_rad_lead_Dphi[1] + coeffs_top_had_jet_rad_lead_Dphi[2] * params.cQj18 + coeffs_top_had_jet_rad_lead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_lead_jet_rad_lead_Dphi = [[10.21376544486938, 0.2350056113914398, 0.065630598524099], [12.763510470889983, 0.2856394023045757, 0.0787587256314252], [12.198919363364906, 0.2566679418354933, 0.0833197392634731], [11.806362499039508, 0.2272488752288103, 0.0631536789524238], [12.182011230417922, 0.2249650373785517, 0.0607988821018274], [13.114596588543446, 0.2331289627414588, 0.0617134932036613], [14.510743871086994, 0.2552004863663087, 0.0617324072571348], [16.12147690811429, 0.289295068648455, 0.0743656437046471], [17.621297732767427, 0.3149778083916212, 0.0775448703018705], [18.654145908227864, 0.3406511905259501, 0.0855469834039451]]
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_lead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_lead_Dphi = get_coeffs_jet_W_lead_jet_rad_lead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_lead_Dphi[1] + coeffs_jet_W_lead_jet_rad_lead_Dphi[2] * params.cQj18 + coeffs_jet_W_lead_jet_rad_lead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_mttbar_jet_rad_lead_Rebin = [[0.0221141932976422, 0.0003611934158605, 5.885444465234611e-05], [0.0650482350651894, 0.0011263812272824, 0.0002199777952886], [0.0195427493655389, 0.0004369936377886, 0.0001269972371697], [0.0039208145413608, 0.0001085819691808, 5.4192714924321565e-05], [0.0007211723433151, 2.5347948079124447e-05, 2.414271734607076e-05], [0.0001287737862869, 7.809421432044146e-06, 1.6099689519613724e-05], [6.098476648823511e-06, 5.349931526201759e-08, 1.261984209085736e-08]]
    return coeffs_mttbar_jet_rad_lead_Rebin[i]
end

function my_dist_func_mttbar_jet_rad_lead_Rebin(params, i)
    coeffs_mttbar_jet_rad_lead_Rebin = get_coeffs_mttbar_jet_rad_lead_Rebin(i)
    return coeffs_mttbar_jet_rad_lead_Rebin[1] + coeffs_mttbar_jet_rad_lead_Rebin[2] * params.cQj18 + coeffs_mttbar_jet_rad_lead_Rebin[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_sublead_pt_Rebin = [[0.3793117233351024, 0.0064619213669056, 0.001698983736341], [0.1075437666262201, 0.0016871211400339, 0.0005157928365493], [0.0311223794839841, 0.0004698929867151, 0.0001379044535542], [0.0076834041343082, 0.0001320596824533, 8.95924557613244e-05], [0.0015845956377783, 2.089422790062404e-05, 4.858631583229866e-06], [0.0003472076403689, 5.358906193509662e-06, 1.2591348893615672e-06], [8.480486594312658e-05, 6.723691478905985e-07, 4.041352516060613e-08], [4.651158224135589e-06, 4.0656230177584286e-08, 9.295455108211716e-09]]
    return coeffs_jet_rad_sublead_pt_Rebin[i]
end

function my_dist_func_jet_rad_sublead_pt_Rebin(params, i)
    coeffs_jet_rad_sublead_pt_Rebin = get_coeffs_jet_rad_sublead_pt_Rebin(i)
    return coeffs_jet_rad_sublead_pt_Rebin[1] + coeffs_jet_rad_sublead_pt_Rebin[2] * params.cQj18 + coeffs_jet_rad_sublead_pt_Rebin[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_sublead_y = [[8.375538045196995, 0.1359259153230536, 0.0367184978114137], [8.293670881672266, 0.1365812077706883, 0.0409128075871673], [8.14195443447382, 0.1341217915731885, 0.041926918003142], [7.776816882360805, 0.1264611386120903, 0.0320665751979687], [8.009948140501962, 0.1313724458742095, 0.0345263232799532], [7.26572217718768, 0.1211243174984744, 0.0466588461549793], [6.603314659638587, 0.1149730615216221, 0.0397929433800126], [6.351751305290435, 0.1027341263219912, 0.0262405087283421], [5.961884935840764, 0.0934321382949599, 0.0256697108755584], [5.3432369332358665, 0.0900563535434132, 0.0225014751372302]]
    return coeffs_jet_rad_sublead_y[i]
end

function my_dist_func_jet_rad_sublead_y(params, i)
    coeffs_jet_rad_sublead_y = get_coeffs_jet_rad_sublead_y(i)
    return coeffs_jet_rad_sublead_y[1] + coeffs_jet_rad_sublead_y[2] * params.cQj18 + coeffs_jet_rad_sublead_y[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = [[7.944385933455922, 0.1353385581583356, 0.0413820686548394], [7.313013591103402, 0.1291898611476785, 0.0457482342368756], [5.557960805898592, 0.0916371149327473, 0.024605204361738], [4.569103090805588, 0.0681995787255723, 0.0163425829817421], [3.780183296232463, 0.0576590012657956, 0.0134751202639303], [2.89519609742827, 0.049093326924624, 0.0132264655999624], [2.00299625942272, 0.0332484166804039, 0.0113138470401711], [1.215941883307054, 0.0182417900171259, 0.0049020479078555], [0.614366783991709, 0.0083762060410129, 0.0021830747457266], [0.1687843068914952, 0.0025717730708575, 0.0007944887742433]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dy(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dy = get_coeffs_jet_rad_lead_jet_rad_sublead_Dy(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dy[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dy[2] * params.cQj18 + coeffs_jet_rad_lead_jet_rad_sublead_Dy[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = [[5.05716644675096, 0.0892130063313541, 0.0289171389484969], [6.225814751645267, 0.1204482928315141, 0.0551388455727874], [5.579497973563134, 0.0912227774015331, 0.0228282139569666], [5.1537403859875965, 0.0845992723298999, 0.0226095237315621], [5.142421387708503, 0.0820646264873574, 0.0219193643792483], [5.341749528516023, 0.085411123970293, 0.0225205458319167], [5.686397186207312, 0.0864357356084817, 0.0217480646126189], [6.061077956479878, 0.0980564981100668, 0.0265805170797628], [6.438624248668199, 0.0996260962577279, 0.0270811992463006], [6.707821120650209, 0.1069983785800075, 0.026591882690874]]
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_rad_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_rad_lead_jet_rad_sublead_Dphi = get_coeffs_jet_rad_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_rad_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[2] * params.cQj18 + coeffs_jet_rad_lead_jet_rad_sublead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_top_lep_jet_rad_sublead_Dphi = [[4.09093174723182, 0.0682776200058095, 0.0175550568133874], [4.334877255345989, 0.0713076833465814, 0.0183220917046235], [4.74438367009183, 0.0733662274133219, 0.0209609527287765], [5.415443900180757, 0.0913091004842981, 0.0262961263908903], [6.340847890783822, 0.0958427626063572, 0.0240766503388634], [7.340562133429876, 0.1272941911279234, 0.043670386580212], [7.909007975886621, 0.1339482039668072, 0.0427171873523032]]
    return coeffs_top_lep_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_lep_jet_rad_sublead_Dphi(params, i)
    coeffs_top_lep_jet_rad_sublead_Dphi = get_coeffs_top_lep_jet_rad_sublead_Dphi(i)
    return coeffs_top_lep_jet_rad_sublead_Dphi[1] + coeffs_top_lep_jet_rad_sublead_Dphi[2] * params.cQj18 + coeffs_top_lep_jet_rad_sublead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_top_had_jet_rad_sublead_Dphi = [[5.444545965626532, 0.0983978878341353, 0.0328821217391087], [5.561471982075707, 0.0982352441654842, 0.0361499875355268], [5.486865051603576, 0.0914605573062658, 0.027591911856503], [5.55877240149438, 0.0901628944231009, 0.0232268157043179], [5.817578558427456, 0.0936856061827905, 0.0264586150527143], [6.08053224439757, 0.090693137250054, 0.0222745009026504], [6.226267014902314, 0.0986651633901921, 0.0251887579958529]]
    return coeffs_top_had_jet_rad_sublead_Dphi[i]
end

function my_dist_func_top_had_jet_rad_sublead_Dphi(params, i)
    coeffs_top_had_jet_rad_sublead_Dphi = get_coeffs_top_had_jet_rad_sublead_Dphi(i)
    return coeffs_top_had_jet_rad_sublead_Dphi[1] + coeffs_top_had_jet_rad_sublead_Dphi[2] * params.cQj18 + coeffs_top_had_jet_rad_sublead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = [[4.914749997651479, 0.0821754114489355, 0.0227245089040244], [6.066794453082063, 0.1027928780532711, 0.0373930159018528], [5.673511437016278, 0.0984155046311818, 0.0357859957028904], [5.340585954345348, 0.0915913148379236, 0.0286202516668783], [5.350272294643381, 0.0902823589025751, 0.0287434218633005], [5.51668977767358, 0.0870666754514804, 0.0221098945929627], [5.77041891147214, 0.0914742576114985, 0.0242350878933497], [6.045489678391488, 0.0973088742123526, 0.0266782997301764], [6.283558006354236, 0.0969254993228879, 0.0231736752505325], [6.4322398043699485, 0.1068453337392974, 0.0275925038157402]]
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[i]
end

function my_dist_func_jet_W_lead_jet_rad_sublead_Dphi(params, i)
    coeffs_jet_W_lead_jet_rad_sublead_Dphi = get_coeffs_jet_W_lead_jet_rad_sublead_Dphi(i)
    return coeffs_jet_W_lead_jet_rad_sublead_Dphi[1] + coeffs_jet_W_lead_jet_rad_sublead_Dphi[2] * params.cQj18 + coeffs_jet_W_lead_jet_rad_sublead_Dphi[3] * params.cQj18 * params.cQj18
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
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = [[0.0598901798309208, 0.0011013282989398, 0.0003259309941046], [0.0484018158501843, 0.0007764993315031, 0.0001982837367706], [0.0112231264358259, 0.00017406769402, 6.425008502851138e-05], [0.0023686586220911, 3.348096489113555e-05, 9.88797246729357e-06], [0.0005059852552854, 7.136386964493309e-06, 4.341504300471539e-06], [0.0001112871846165, 1.337355567258629e-06, 4.209879062068818e-07], [2.402119371978296e-05, 1.986663722818374e-07, 2.6743517090897252e-08], [1.7894965220823558e-06, 2.2717953687085787e-08, 2.0643082887846917e-09]]
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[i]
end

function my_dist_func_m_jet_rad_lead_jet_rad_sublead_Rebin(params, i)
    coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin = get_coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin(i)
    return coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[1] + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[2] * params.cQj18 + coeffs_m_jet_rad_lead_jet_rad_sublead_Rebin[3] * params.cQj18 * params.cQj18
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

