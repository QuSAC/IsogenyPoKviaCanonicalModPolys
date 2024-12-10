# Verification of the additional computational claims
R.<X,j,J0,J1> = PolynomialRing(ZZ)

# These are the canonical modular polynomials Phi_ell^c(X.j)
CanonModPoly = {
    2:  X^3 + 48*X^2 + 768*X + 4096 - X*j ,
    3:  X^4 + 36*X^3 + 270*X^2 + 756*X + 729 - X*j ,
    5:  X^6 + 30*X^5 + 315*X^4 + 1300*X^3 + 1575*X^2 + 750*X + 125 - X*j,
    7:  X^8 + 28*X^7 + 322*X^6 + 1904*X^5 + 5915*X^4 + 8624*X^3 + 4018*X^2 + 748*X + 49 - X*j,
    13: X^14 + 26*X^13 + 325*X^12 + 2548*X^11 + 13832*X^10 + 54340*X^9 + 157118*X^8 + 333580*X^7 + 509366*X^6 + 534820*X^5 + 354536*X^4 + 124852*X^3 + 15145*X^2 + 746*X + 13 - X*j
}

# These are the corresponding classical modular polynomials Phi_ell(J_0, J_1)
ClassModPoly = {
    2:  -J0^2*J1^2 + J0^3 + 1488*J0^2*J1 + 1488*J0*J1^2 + J1^3 - 162000*J0^2 + 40773375*J0*J1 - 162000*J1^2 + 8748000000*J0 + 8748000000*J1 - 157464000000000,
    3:  -J0^3*J1^3 + 2232*J0^3*J1^2 + 2232*J0^2*J1^3 + J0^4 - 1069956*J0^3*J1 + 2587918086*J0^2*J1^2 - 1069956*J0*J1^3 + J1^4 + 36864000*J0^3 + 8900222976000*J0^2*J1 + 8900222976000*J0*J1^2 + 36864000*J1^3 + 452984832000000*J0^2 - 770845966336000000*J0*J1 + 452984832000000*J1^2 + 1855425871872000000000*J0 + 1855425871872000000000*J1,
    5:  -J0^5*J1^5 + 3720*J0^5*J1^4 + 3720*J0^4*J1^5 - 4550940*J0^5*J1^3 + 1665999364600*J0^4*J1^4 - 4550940*J0^3*J1^5 + 2028551200*J0^5*J1^2 + 107878928185336800*J0^4*J1^3 + 107878928185336800*J0^3*J1^4 + 2028551200*J0^2*J1^5 + J0^6 - 246683410950*J0^5*J1 + 383083609779811215375*J0^4*J1^2 - 441206965512914835246100*J0^3*J1^3 + 383083609779811215375*J0^2*J1^4 - 246683410950*J0*J1^5 + J1^6 + 1963211489280*J0^5 + 128541798906828816384000*J0^4*J1 + 26898488858380731577417728000*J0^3*J1^2 + 26898488858380731577417728000*J0^2*J1^3 + 128541798906828816384000*J0*J1^4 + 1963211489280*J1^5 + 1284733132841424456253440*J0^4 - 192457934618928299655108231168000*J0^3*J1 + 5110941777552418083110765199360000*J0^2*J1^2 - 192457934618928299655108231168000*J0*J1^3 + 1284733132841424456253440*J1^4 + 280244777828439527804321565297868800*J0^3 + 36554736583949629295706472332656640000*J0^2*J1 + 36554736583949629295706472332656640000*J0*J1^2 + 280244777828439527804321565297868800*J1^3 + 6692500042627997708487149415015068467200*J0^2 - 264073457076620596259715790247978782949376*J0*J1 + 6692500042627997708487149415015068467200*J1^2 + 53274330803424425450420160273356509151232000*J0 + 53274330803424425450420160273356509151232000*J1 + 141359947154721358697753474691071362751004672000,
    7:  -J0^7*J1^7 + 5208*J0^7*J1^6 + 5208*J0^6*J1^7 - 10246068*J0^7*J1^5 + 312598931380281*J0^6*J1^6 - 10246068*J0^5*J1^7 + 9437674400*J0^7*J1^4 + 177089350028475373552*J0^6*J1^5 + 177089350028475373552*J0^5*J1^6 + 9437674400*J0^4*J1^7 - 4079701128594*J0^7*J1^3 + 4460942463213898353207432*J0^6*J1^4 - 18300817137706889881369818348*J0^5*J1^5 + 4460942463213898353207432*J0^4*J1^6 - 4079701128594*J0^3*J1^7 + 720168419610864*J0^7*J1^2 + 16125487429368412743622133040*J0^6*J1^3 + 14066810691825882583305340438456800*J0^5*J1^4 + 14066810691825882583305340438456800*J0^4*J1^5 + 16125487429368412743622133040*J0^3*J1^6 + 720168419610864*J0^2*J1^7 + J0^8 - 34993297342013192*J0^7*J1 + 10685207605419433304631062899228*J0^6*J1^2 - 901645312135695263877115693740562092344*J0^5*J1^3 + 88037255060655710247136461896264828390470*J0^4*J1^4 - 901645312135695263877115693740562092344*J0^3*J1^5 + 10685207605419433304631062899228*J0^2*J1^6 - 34993297342013192*J0*J1^7 + J1^8 + 104545516658688000*J0^7 + 1038063543615451121419229773824000*J0^6*J1 + 11269804827778129625111322263056523132928000*J0^5*J1^2 + 17972351380696034759035751584170427941396480000*J0^4*J1^3 + 17972351380696034759035751584170427941396480000*J0^3*J1^4 + 11269804827778129625111322263056523132928000*J0^2*J1^5 + 1038063543615451121419229773824000*J0*J1^6 + 104545516658688000*J1^7 + 3643255017844740441130401792000000*J0^6 - 40689839325168186578698294668599003971584000000*J0^5*J1 + 308718989330868920558541707287296140145328128000000*J0^4*J1^2 - 5397554444336630396660447092290576395211374592000000*J0^3*J1^3 + 308718989330868920558541707287296140145328128000000*J0^2*J1^4 - 40689839325168186578698294668599003971584000000*J0*J1^5 + 3643255017844740441130401792000000*J1^6 + 42320664241971721884753245384947305283584000000000*J0^5 + 553293497305121712634517214392820316998991872000000000*J0^4*J1 + 72269669689202948469186346100000679630099972096000000000*J0^3*J1^2 + 72269669689202948469186346100000679630099972096000000000*J0^2*J1^3 + 553293497305121712634517214392820316998991872000000000*J0*J1^4 + 42320664241971721884753245384947305283584000000000*J1^5 + 41375720005635744770247248526572116368162816000000000000*J0^4 - 129686683986501811181602978946723823397619367936000000000000*J0^3*J1 - 46666007311089950798495647194817495401448341504000000000000*J0^2*J1^2 - 129686683986501811181602978946723823397619367936000000000000*J0*J1^3 + 41375720005635744770247248526572116368162816000000000000*J1^4 + 13483958224762213714698012883865296529472356352000000000000000*J0^3 - 838538082798149465723818021032241603179964268544000000000000000*J0^2*J1 - 838538082798149465723818021032241603179964268544000000000000000*J0*J1^2 + 13483958224762213714698012883865296529472356352000000000000000*J1^3 + 1464765079488386840337633731737402825128271675392000000000000000000*J0^2 + 1221349308261453750252370983314569119494710493184000000000000000000*J0*J1 + 1464765079488386840337633731737402825128271675392000000000000000000*J1^2,
    13: -J0^13*J1^13 + 9672*J0^13*J1^12 + 9672*J0^12*J1^13 - 40616316*J0^13*J1^11 + 63336131453282305176*J0^12*J1^12 - 40616316*J0^11*J1^13 + 97116140576*J0^13*J1^10 + 5339704017492387472276862944*J0^12*J1^11 + 5339704017492387472276862944*J0^11*J1^12 + 97116140576*J0^10*J1^13 - 145742356534710*J0^13*J1^9 + 7038227861570702862399825051262104*J0^12*J1^10 - 936062849021824119784660671862200161988*J0^11*J1^11 + 7038227861570702862399825051262104*J0^10*J1^12 - 145742356534710*J0^9*J1^13 + 142727120530755696*J0^13*J1^8 + 1017131468961830048705766611220442641072*J0^12*J1^9 + 214191411057420328765018422101187988893741675744*J0^11*J1^10 + 214191411057420328765018422101187988893741675744*J0^10*J1^11 + 1017131468961830048705766611220442641072*J0^9*J1^12 + 142727120530755696*J0^8*J1^13 - 91944131414745883208*J0^13*J1^7 + 32988905472599070890328795217808043240900816*J0^12*J1^8 - 1967575998834670421411906070499119710120923910594022072*J0^11*J1^9 + 2303156526339236416244981158503557124969923397655602595936*J0^10*J1^10 - 1967575998834670421411906070499119710120923910594022072*J0^9*J1^11 + 32988905472599070890328795217808043240900816*J0^8*J1^12 - 91944131414745883208*J0^7*J1^13 + 38373375189621696878784*J0^13*J1^6 + 333551826778342195432371586876023049547129080896*J0^12*J1^7 + 2117324199178304244393290847066787694415213468957410146838208*J0^11*J1^8 + 333376714930461597630366410672145363642373801348744230962709165120*J0^10*J1^9 + 333376714930461597630366410672145363642373801348744230962709165120*J0^9*J1^10 + 2117324199178304244393290847066787694415213468957410146838208*J0^8*J1^11 + 333551826778342195432371586876023049547129080896*J0^7*J1^12 + 38373375189621696878784*J0^6*J1^13 - 9980376107988974265288009*J0^13*J1^5 + 1234257162452453722866237618078783279952599399679176*J0^12*J1^6 - 481806591005250661668209263946913789583739163176277250633369496316*J0^11*J1^7 + 2965269806029300518982153645576999878343315273199400249881587616072766840*J0^10*J1^8 - 344642844610887365333843812260789022299828714507153260278660403308943561718*J0^9*J1^9 + 2965269806029300518982153645576999878343315273199400249881587616072766840*J0^8*J1^10 - 481806591005250661668209263946913789583739163176277250633369496316*J0^7*J1^11 + 1234257162452453722866237618078783279952599399679176*J0^6*J1^12 - 9980376107988974265288009*J0^5*J1^13 + 1508484527780717514871680200*J0^13*J1^4 + 1787206767475651398304042906319887696372425891847417480*J0^12*J1^5 + 33157532644992168541479115114277423707920632043639237944990254217082784*J0^11*J1^6 + 3319074015126775003340627498451966608621776985617068464040481273875824853713440*J0^10*J1^7 + 11510485988607799847944664306226745280653016997751179971212105953518910829665118960*J0^9*J1^8 + 11510485988607799847944664306226745280653016997751179971212105953518910829665118960*J0^8*J1^9 + 3319074015126775003340627498451966608621776985617068464040481273875824853713440*J0^7*J1^10 + 33157532644992168541479115114277423707920632043639237944990254217082784*J0^6*J1^11 + 1787206767475651398304042906319887696372425891847417480*J0^5*J1^12 + 1508484527780717514871680200*J0^4*J1^13 - 117589277940072151921466095740*J0^13*J1^3 + 1010922460622081033367079280521141037085193349093095277208*J0^12*J1^4 - 874174690463455858478740034973677797874649720724911207202908349653368101836*J0^11*J1^5 + 707602306954335961264387747392830714609124951294341249227988393380722334150416923424*J0^10*J1^6 - 28971833722004769608218351898602997023873718918496584569542741468721604925350565276800952*J0^9*J1^7 + 763629377534280239525001752797018342037897631130969295340196615666330614048031692849601680*J0^8*J1^8 - 28971833722004769608218351898602997023873718918496584569542741468721604925350565276800952*J0^7*J1^9 + 707602306954335961264387747392830714609124951294341249227988393380722334150416923424*J0^6*J1^10 - 874174690463455858478740034973677797874649720724911207202908349653368101836*J0^5*J1^11 + 1010922460622081033367079280521141037085193349093095277208*J0^4*J1^12 - 117589277940072151921466095740*J0^3*J1^13 + 3813066975450671721121304807712*J0^13*J1^2 + 207577177886168263601723424708043354620195244558620874018272*J0^12*J1^3 + 10335702376336052876569385632176208762756384874046214470799722804104208232161120*J0^11*J1^4 + 36877562398966114743254895852508154513817343754571889820596205093997469123113726984508320*J0^10*J1^5 + 8968707059877929793953816639999625053085656781146444057912686388706404082753228694260847129920*J0^9*J1^6 + 2155218753344782821853617766133779473725138989326106677408530224250256987904613455196577522696384*J0^8*J1^7 + 2155218753344782821853617766133779473725138989326106677408530224250256987904613455196577522696384*J0^7*J1^8 + 8968707059877929793953816639999625053085656781146444057912686388706404082753228694260847129920*J0^6*J1^9 + 36877562398966114743254895852508154513817343754571889820596205093997469123113726984508320*J0^5*J1^10 + 10335702376336052876569385632176208762756384874046214470799722804104208232161120*J0^4*J1^11 + 207577177886168263601723424708043354620195244558620874018272*J0^3*J1^12 + 3813066975450671721121304807712*J0^2*J1^13 + J0^14 - 32685702714621175092948209889806*J0^13*J1 + 12893770087100209197778927627416397147602669299324665034127451*J0^12*J1^2 - 60259084880308652560754125957376955923094701831235097378932424092592846288059835756*J0^11*J1^3 + 539434066952838633601058314080351829728768185613881497302494155281483862817525900116623514601*J0^10*J1^4 - 474980656775733704222417133934306465523573652393831168608700490473956434788522583600537536840594898*J0^9*J1^5 + 415431723402642702720731130934926941857797474097020970018619513668017459051573659373309870938643397563*J0^8*J1^6 - 3539294606963747267479265746594748156709881306171284362655032102198235369837795589356541679185977279848*J0^7*J1^7 + 415431723402642702720731130934926941857797474097020970018619513668017459051573659373309870938643397563*J0^6*J1^8 - 474980656775733704222417133934306465523573652393831168608700490473956434788522583600537536840594898*J0^5*J1^9 + 539434066952838633601058314080351829728768185613881497302494155281483862817525900116623514601*J0^4*J1^10 - 60259084880308652560754125957376955923094701831235097378932424092592846288059835756*J0^3*J1^11 + 12893770087100209197778927627416397147602669299324665034127451*J0^2*J1^12 - 32685702714621175092948209889806*J0*J1^13 + J1^14 + 15787756016985099663979167744000*J0^13 + 157870586217596053304332218736965888119051656824626442141696000*J0^12*J1 + 179312619437995268862785568892538140587316635932472934686318597956817819648897662976000*J0^11*J1^2 + 2308916580373705363546321120346521865137649088713708960950564814885950596793631208268755124224000*J0^10*J1^3 + 5716677920985743655201500120101677007190102608912515081206876829642793929337037298192242022307430400000*J0^9*J1^4 + 5757558921048446015266554919402344737333501100152974630225108131920384126722107536788649181513676013568000*J0^8*J1^5 + 187433051934148497537178792064160144226449743146562769523813325806108271927829978476604969216803944169472000*J0^7*J1^6 + 187433051934148497537178792064160144226449743146562769523813325806108271927829978476604969216803944169472000*J0^6*J1^7 + 5757558921048446015266554919402344737333501100152974630225108131920384126722107536788649181513676013568000*J0^5*J1^8 + 5716677920985743655201500120101677007190102608912515081206876829642793929337037298192242022307430400000*J0^4*J1^9 + 2308916580373705363546321120346521865137649088713708960950564814885950596793631208268755124224000*J0^3*J1^10 + 179312619437995268862785568892538140587316635932472934686318597956817819648897662976000*J0^2*J1^11 + 157870586217596053304332218736965888119051656824626442141696000*J0*J1^12 + 15787756016985099663979167744000*J1^13 + 83084413350616406183495875982586495825900375128760385536000000*J0^12 - 260241334661897724169148477062778090370575619826743149104887568856318553170833833984000000*J0^11*J1 + 2678665736689769049900018109140598264035750069305308244518131035743577819824227828206936260608000000*J0^10*J1^2 - 20678078537212882761694153848026684161510425619867392882628417971589808513139875419201055859633291264000000*J0^9*J1^3 - 6095414391440954795178869663499425828291538452766653566256327921063584062137305104052711687223009869824000000*J0^8*J1^4 - 3702665127143760979998154278812085426166716114551745045128607584536820099329002243268464660519705479479296000000*J0^7*J1^5 + 21919503989502556482532977985659185423685666886088290313930781118854798926106308297736210617657464845238272000000*J0^6*J1^6 - 3702665127143760979998154278812085426166716114551745045128607584536820099329002243268464660519705479479296000000*J0^5*J1^7 - 6095414391440954795178869663499425828291538452766653566256327921063584062137305104052711687223009869824000000*J0^4*J1^8 - 20678078537212882761694153848026684161510425619867392882628417971589808513139875419201055859633291264000000*J0^3*J1^9 + 2678665736689769049900018109140598264035750069305308244518131035743577819824227828206936260608000000*J0^2*J1^10 - 260241334661897724169148477062778090370575619826743149104887568856318553170833833984000000*J0*J1^11 + 83084413350616406183495875982586495825900375128760385536000000*J1^12 + 145746271865985701303006968690727073623110154189151557978520314340489760352149438464000000000*J0^11 + 618365025729687208026621844082518672586866478732183940869747889968364543178129991952544825344000000000*J0^10*J1 + 25872463908449289016750628555567372710185328848483463083494077182570444339188517407317465229936295936000000000*J0^9*J1^2 - 62333021735677560171642749900635564915892941745383692317263013992372210489562891779314959788281383878656000000000*J0^8*J1^3 - 18313220589707554303919628836565371160582541687979396960418053123247399413186658869150749995799620001726464000000000*J0^7*J1^4 - 1410473999113376096921325206927033932443299808279922080543730137710923836158828899053966820213587545583255552000000000*J0^6*J1^5 - 1410473999113376096921325206927033932443299808279922080543730137710923836158828899053966820213587545583255552000000000*J0^5*J1^6 - 18313220589707554303919628836565371160582541687979396960418053123247399413186658869150749995799620001726464000000000*J0^4*J1^7 - 62333021735677560171642749900635564915892941745383692317263013992372210489562891779314959788281383878656000000000*J0^3*J1^8 + 25872463908449289016750628555567372710185328848483463083494077182570444339188517407317465229936295936000000000*J0^2*J1^9 + 618365025729687208026621844082518672586866478732183940869747889968364543178129991952544825344000000000*J0*J1^10 + 145746271865985701303006968690727073623110154189151557978520314340489760352149438464000000000*J1^11 + 7605348735017212625875837184978457615081634815943367015020891775626681233374752203029348352000000000000*J0^10 - 8674072694766581259832161984558424258242345509461562068916284333261672299485935075259027823494430720000000000000*J0^9*J1 + 367699880302507769522184906338576349930282889799687609612600740135262931410546189503475085055061919793152000000000000*J0^8*J1^2 + 303628396849623247388501617704769126069627806954925724909207701265590212162332663163323999037945093480775680000000000000*J0^7*J1^3 + 17722361050304472620163034691211680403065699682566045788144444570455590725483253301914282961928612252886237184000000000000*J0^6*J1^4 + 5627576194161215810088198676115700033241050131121473877965970475637724125302025889733550246015725064794669056000000000000*J0^5*J1^5 + 17722361050304472620163034691211680403065699682566045788144444570455590725483253301914282961928612252886237184000000000000*J0^4*J1^6 + 303628396849623247388501617704769126069627806954925724909207701265590212162332663163323999037945093480775680000000000000*J0^3*J1^7 + 367699880302507769522184906338576349930282889799687609612600740135262931410546189503475085055061919793152000000000000*J0^2*J1^8 - 8674072694766581259832161984558424258242345509461562068916284333261672299485935075259027823494430720000000000000*J0*J1^9 + 7605348735017212625875837184978457615081634815943367015020891775626681233374752203029348352000000000000*J1^10 + 132287948592242819730686388197721726586421046648941198415164132202495387061267918873489002706501632000000000000000*J0^9 - 913844005726821508929480521086904504761295550807304466343649705885472617699094229816628221421776732684288000000000000000*J0^8*J1 - 226668496996199203777352229716417461096995804909768763297196647245168959821482189931394270493086737753964544000000000000000*J0^7*J1^2 - 17733806301048501011486217516580565338695560468655559232106708808776991496975958558628543386809658957681917952000000000000000*J0^6*J1^3 + 828973674649555922651050874150305990627094598448649047796953362599591050742151260055665892525003926982843432960000000000000000*J0^5*J1^4 + 828973674649555922651050874150305990627094598448649047796953362599591050742151260055665892525003926982843432960000000000000000*J0^4*J1^5 - 17733806301048501011486217516580565338695560468655559232106708808776991496975958558628543386809658957681917952000000000000000*J0^3*J1^6 - 226668496996199203777352229716417461096995804909768763297196647245168959821482189931394270493086737753964544000000000000000*J0^2*J1^7 - 913844005726821508929480521086904504761295550807304466343649705885472617699094229816628221421776732684288000000000000000*J0*J1^8 + 132287948592242819730686388197721726586421046648941198415164132202495387061267918873489002706501632000000000000000*J1^9 + 767013621315952423931475176267170123577142608595930709148835175130350223089832292329376203694232005771264000000000000000000*J0^8 - 465337020884877935874185748520218965445631193822519111113045800260798180133962179115662432186399226106740736000000000000000000*J0^7*J1 + 175801761541721296614163144760797961999581545737966242399898402245904424096892942484369837626392492960431210496000000000000000000*J0^6*J1^2 - 941802378462465511244447050809161114536892868345640328360842000821724559505492381497133977607854427475915309056000000000000000000*J0^5*J1^3 + 4081674117329728804489206772464831122415122070151308117835102044725072517715001683094459791402673386965744746496000000000000000000*J0^4*J1^4 - 941802378462465511244447050809161114536892868345640328360842000821724559505492381497133977607854427475915309056000000000000000000*J0^3*J1^5 + 175801761541721296614163144760797961999581545737966242399898402245904424096892942484369837626392492960431210496000000000000000000*J0^2*J1^6 - 465337020884877935874185748520218965445631193822519111113045800260798180133962179115662432186399226106740736000000000000000000*J0*J1^7 + 767013621315952423931475176267170123577142608595930709148835175130350223089832292329376203694232005771264000000000000000000*J1^8 + 66829334150181693395733549605487911633242059793148257435222656254771339933627547003847032182942337299644416000000000000000000000*J0^7 + 34208636313948962505255416382800378890590483698550917680568729071142350960549152337412536609529405160000847872000000000000000000000*J0^6*J1 - 5648591949659254685659692003344338379638954758557151198844390691020983772484333009507611037427149946420681768960000000000000000000000*J0^5*J1^2 - 24885848452127894014624454936412695642180132782686131038890849143846266810389567025962091921161996214123131568128000000000000000000000*J0^4*J1^3 - 24885848452127894014624454936412695642180132782686131038890849143846266810389567025962091921161996214123131568128000000000000000000000*J0^3*J1^4 - 5648591949659254685659692003344338379638954758557151198844390691020983772484333009507611037427149946420681768960000000000000000000000*J0^2*J1^5 + 34208636313948962505255416382800378890590483698550917680568729071142350960549152337412536609529405160000847872000000000000000000000*J0*J1^6 + 66829334150181693395733549605487911633242059793148257435222656254771339933627547003847032182942337299644416000000000000000000000*J1^7 + 3268240030696916778423724456839641770009309037438345492166218927315814548015978322807870290034191070539022336000000000000000000000000*J0^6 + 1617796325733693961426612991967106010346218233891170279500742895526209242404102299051177796077528512644260036608000000000000000000000000*J0^5*J1 + 58405353917014162404952148388731205467622015248477898593099624781969985828433123084038663979821981572463218130944000000000000000000000000*J0^4*J1^2 - 4983534780898623837208148120899538170442693994917976285662769716226848993219053110271292940660067899070381817856000000000000000000000000*J0^3*J1^3 + 58405353917014162404952148388731205467622015248477898593099624781969985828433123084038663979821981572463218130944000000000000000000000000*J0^2*J1^4 + 1617796325733693961426612991967106010346218233891170279500742895526209242404102299051177796077528512644260036608000000000000000000000000*J0*J1^5 + 3268240030696916778423724456839641770009309037438345492166218927315814548015978322807870290034191070539022336000000000000000000000000*J1^6 + 95888722830042559821615002218841595211920062873311035820055532712656384110985948315484610123352758708871364608000000000000000000000000000*J0^5 - 4772454395099970588376889812892387899584728241524331459452038527296029061412099051047499510623295031345026170880000000000000000000000000000*J0^4*J1 + 60459932962707148685750780439295720777105469153376987257360608129644675668266607620124314344109550426506206904320000000000000000000000000000*J0^3*J1^2 + 60459932962707148685750780439295720777105469153376987257360608129644675668266607620124314344109550426506206904320000000000000000000000000000*J0^2*J1^3 - 4772454395099970588376889812892387899584728241524331459452038527296029061412099051047499510623295031345026170880000000000000000000000000000*J0*J1^4 + 95888722830042559821615002218841595211920062873311035820055532712656384110985948315484610123352758708871364608000000000000000000000000000*J1^5 + 1885223597142817735215521923030446116923320678716240056759672332116990135924145606946025364033903751052868452352000000000000000000000000000000*J0^4 - 185232507560749354757488264428490031076630581809117895374513401195331750782161966573976898709883093065359517810688000000000000000000000000000000*J0^3*J1 + 26281453854686565480854489645262487309390226496990889730097271768767754182467308700379350639320763133343165317120000000000000000000000000000000*J0^2*J1^2 - 185232507560749354757488264428490031076630581809117895374513401195331750782161966573976898709883093065359517810688000000000000000000000000000000*J0*J1^3 + 1885223597142817735215521923030446116923320678716240056759672332116990135924145606946025364033903751052868452352000000000000000000000000000000*J1^4 + 22236398027215399937779019690353966999876882002081199329677306063131993047041542443852802352851578390365960404992000000000000000000000000000000000*J0^3 - 37066027755072565194081927511328660876696510055655033788696425898925604370808677258232777955584843608603884519424000000000000000000000000000000000*J0^2*J1 - 37066027755072565194081927511328660876696510055655033788696425898925604370808677258232777955584843608603884519424000000000000000000000000000000000*J0*J1^2 + 22236398027215399937779019690353966999876882002081199329677306063131993047041542443852802352851578390365960404992000000000000000000000000000000000*J1^3 + 147213371414156573713539483874043827500390696883068187579053600467101994104225901089258359895920442702174699388928000000000000000000000000000000000000*J0^2 - 33905309938808933226695939390198532869912468194279700917160273935527359588865865248595689625551089671051614879744000000000000000000000000000000000000*J0*J1 + 147213371414156573713539483874043827500390696883068187579053600467101994104225901089258359895920442702174699388928000000000000000000000000000000000000*J1^2
}

# These are the polynomials g_{ell, 0}
g_0 = {
    2:  1,
    3:  X + 27,
    5:  1,
    7:  X^2 + 13*X + 49,
    13: X^2 + 5*X + 13    
}

# These are the polynomials h_{ell, 0, +}
hplus_0 = {
    2:  X + 16,
    3:  X + 3,
    5:  X^2 + 10*X + 5,
    7:  X^2 + 5*X + 1,
    13: X^4 + 7*X^3 + 20*X^2 + 19*X + 1
}

# These are the polynomials h_{ell, 0, -}
hminus_0 = {
    2:  X + 256,
    3:  X + 243,
    5:  X^2 + 250*X + 3125,
    7:  X^2 + 245*X + 2401,
    13: X^4 + 247*X^3 + 3380*X^2 + 15379*X + 28561
}

# These are the polynomials g_{ell, 1728}
g_1728 = {
    2:  X + 64,
    3:  1,
    5:  X^2 + 22*X + 125,
    7:  1,
    13: X^2 + 6*X + 13
}

# These are the polynomials h_{ell, 1728, +}
hplus_1728 = {
    2:  X - 8,
    3:  X^2 + 18*X - 27,
    5:  X^2 + 4*X - 1,
    7:  X^4 + 14*X^3 + 63*X^2 + 70*X - 7,
    13: X^6 + 10*X^5 + 46*X^4 + 108*X^3 + 122*X^2 + 38*X - 1    
}

# These are the polynomials h_{ell, 1728, -}
hminus_1728 = {
    2:  X - 512,
    3:  X^2 - 486*X - 19683,
    5:  X^2 - 500*X - 15625,
    7:  X^4 - 490*X^3 - 21609*X^2 - 235298*X - 823543,
    13: X^6 -  494*X^5 - 20618*X^4 - 237276*X^3 - 1313806*X^2 - 3712930*X - 4826809
}

# These are the maximal primes p_ell for ell <= 13
max_prime = {
    2: 13,
    3: 53,
    5: 379,
    7: 1217,
    11: 5101,
    13: 8387
}

for l in [2,3,5,7,13]:
    # Construct the target polynomial Theta_ell^c(X,j)
    s = 12/gcd(l-1, 12)
    Class = ClassModPoly[l]
    Phi = CanonModPoly[l]
    Theta = R(Phi(X=l^s/X) * X^(l+1)/ l^s)

    # First verify the resultant relation between the polynomials
    assert Theta(j=J1).resultant(Phi(j=J0), variable=X) == l^(s*l) * ClassModPoly[l]

    # Next verify the claims made for analyzing the existence of multiple roots:
    # First define the polynomial D_ell(X) ...
    D = j + Phi.derivative(X)

    # ... and the polynomial Phi_D = - Phi_ell(X, D_ell(X))
    Phi_D = -Phi(j = D)

    # Check that Phi_D has leading coefficient ell
    assert list(Phi_D)[0] == (l, X^Phi_D.degree())

    # Compute the resultant of Phi and Phi_D ...
    res = Phi.resultant(Phi_D, variable=X)

    # ... and confirm its form by first confirming
    # the leading coefficient to be (-1)^ell * ell^e ...
    c = (-1)^l * list(res)[0][0]
    assert c > 0
    assert len(c.factor()) == 1 and (c % l) == 0

    # ... and then the linear factors to be j and (j-1728)
    # by checking that j^ell * (j-1728)^ell is congruent to 
    # 0 modulo res/c
    assert j^l * (j-1728)^l % (R(res/c)) == 0

    # Next, assert the computational claims on the specific polynomial forms
    # at the special j-invariants 0 ...
    g0_l = R(g_0[l])
    assert Phi(j=0) == g0_l * hplus_0[l]^3
    assert Theta(j=0) == g0_l * hminus_0[l]^3

    # ... and 1728 ...
    g1728_l = R(g_1728[l])
    assert Phi(j=1728) == g1728_l * hplus_1728[l]^2
    assert Theta(j=1728) == g1728_l * hminus_1728[l]^2

    # ... as well as the claims on certain related prime factors, first for j = 0 ...
    for h in (hplus_0[l], hminus_0[l]):
        # Check that the degree deg(h_{ell, 0, +-}) only has the prime factors 2 and 3 ...
        assert 6 % prod([p for (p,e) in ZZ(h.degree()).factor()]) == 0

        # ... and that its discriminant as well as its resultant with g_{ell, 0} only has prime factors in {2,3,ell}
        assert 6*l % prod([p for (p,e) in h.discriminant(variable=X).factor()]) == 0
        assert 6*l % prod([p for (p,e) in g0_l.resultant(h, variable=X).factor()]) == 0

    # ... and then for j = 1728
    for h in (hplus_1728[l], hminus_1728[l]):
        # Check that the degree deg(h_{ell, 1728, +-}) only has the prime factors 2 and 3 ...
        assert 6 % prod([p for (p,e) in ZZ(h.degree()).factor()]) == 0

        # ... and that its discriminant as well as its resultant with g_{ell, 1728} only has prime factors in {2,3,ell}
        assert 6*l % prod([p for (p,e) in h.discriminant(variable=X).factor()]) == 0
        assert 6*l % prod([p for (p,e) in g1728_l.resultant(h, variable=X).factor()]) == 0


    # Next, confirm that the maximal prime factor of Phi_ell(0, 1728) is smaller than p_ell ...
    assert Class(J0=0, J1=1728) != 0
    assert max_prime[l] > max([p for (p,e) in Class(J0=0, J1=1728).factor()])

    # ... and that, for l = 2,3, the polynomial Phi_l(0, J_1) has a triple root (not equal to 1728 in F_p for p > p_ell
    # by the above) that is also not equal to 0 in F_p for p > p_ell, as well as a simple root at J_1 = 0 for l = 3
    if l <= 3:
        (h, e) = R(Class(J0=0)/J1^(l-2)).factor()[0]
        assert Class(J0=0) == h^3 * (J1-0)^(l-2)

        # Check that the root is not equal to 0 in F_p by checking that it is not divisible by p > p_ell
        j1 = - h(J1=0)
        assert max_prime[l] > max([p for (p,e) in j1.factor()])


    # Finally, check that the degree sum of distinct irreducible factors of the resultant
    # of Phi_ell(J_0,J_1) with its J_1-derivative is bounded above by ell^2 + 1
    assert sum([R(h).degree() for (h,e) in Class.resultant(Class.derivative(J1), variable=J1).factor()]) <= l^2 + 1

    print(f"All claims are correct for l = {l}!")