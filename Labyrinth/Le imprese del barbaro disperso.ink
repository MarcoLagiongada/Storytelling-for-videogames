->INIZIO
=== INIZIO ===
Ti svegli in una selva, il mago che si trovava dinanzi a te è sparito, deve averti trasportato da qualche parte.Guardando le montagne noti uno strano bagliore.

+ [Avvicinati agli alberi ed ispezionali]
-> Radura
+ [Cerca di raggiungere il bagliore]
-> Bagliore

= INIZIO2
Ti ritrovi in una fitta selva, ci metti un attimo a realizzarlo ma ti trovi nuovamente dove ti sei svegliato. Da questo punto riesci di nuovo a vedere sia la radura che il bagliore sui monti.

+ [Vai verso la radura]
-> Radura
+ [Cerca di raggiungere il bagliore]
-> Bagliore


= Radura
{not Campi:{not spada: Gli alberi che inizialmente sono di un verde acceso classico del periodo estivo iniziano ad incecchiare al tuo avvicinarti, una volta che li raggiungi sono rinsecchite e vecchi, Oltre ad essi noti una radura con un piccolo lago avvicinandoti ti assale una sensazione di déjà vu, sei gia stato qui, in questo momento noti una spada ai tuoi piedi.Al di la degli alberi che circondano la radura scorgi come una luce dorata, mentre alle tue spalle il bagliore sui monti si fa sempre piu flebile}{spada: La radura incontaminata risulta ancora una volta a te familiare, hai come l'impressione di essere gia stato qui, il limpido lago brilla per la luce di quella che non sai se definire luce lunare o solare, al di la degli alberi che circondano la radura scorgi come una luce dorata, mentre alle tue spalle il bagliore sui monti si fa sempre piu flebile.}}
{Campi:Ti ritrovi nuovamente nella radura di prima, davanti a te i campi e dietro il bagliore}

+ [Raggiungi il bagliore sui monti]
->Bagliore
+ [Dirigiti verso la luce dorata]
-> Campi
* [prendi la spada]
-> spada 
= spada
Raccogli la spada che scintilla lucente tra le tue mani.
->Radura

= Bagliore
Ti metti in viaggio e dopo quelle che sembrano ore di impervie vie e scalate impossibili ti giri e vedi l'immensa foresta cosparsa di radure imponente e smisurata davanti a te. Alle tue spalle invece il bagliore del lago
+ [Raggiungi la radura sottostante] La strada è impervia ma riesci ad uscirne sano e salvo.
-> Radura
+ [Dirigiti vero lo specchio d'acqua] Ti avvicini al lago e non appena il tuo occhio cade sul riflesso...
-> Donna

=Campi
{not Girati: Mentre attraversi gli alberi per raggiungere l'altro lato della fitta boschaglia la dolce luce dorata si dipana mostrandosi come un mare di spighe di grano che si muovono al vendo, riconosci questo luogo, sei sicuro si tratti della tua casa d'infanzia.} Che si nasconde tra le spighe riconosci la tua vecchia casa e una macchia nera in lontananza. {not Girati:Ma una cosa ti confonde, non c'erano boschi dove sei cresciuto}

+ [Vai verso casa] La casa è esattamente come te la ricordi, ad aprire la porta è tua madre "caro" ti dice con le lacrime agli occhi mentre ti invita ad entrare, vieni siediti.
-> Casa
+ [Vai verso la macchia nera] La macchia si rivela essere piu grande man mano che ti avvicini, ingrandisce ed ingrandisce finchè non ti trovi all'interno di una piccola foresta di rovi, a terra corpi, che dopo una veloce analisi appartengono agli uomini e donne che hai ucciso nei tuoi viaggi.
->Macchia
* [Girati] 
-> Girati
=Girati 
Ti giri e il bosco è sparito, al suo posto i campi si estendono al di la dell'orizzonte, solo casa tua ed una piccola macchia nera si stagliano al di sopra dei campi 
-> Campi

= Casa
La casa è ricolma del dolce odore della torta di mele di tua madre, "mentre aspettiamo tuo padre, mangia una fetta di torta caro" dice mentre ti serve una fetta di torta.
Passa qualche ora e nessuno si è ancora fatto vivo, stai per alzati quando tua madre ti dice di fermarti ancora per qualche minuto
+ [Ma si,perchè non restare ancora qualche minuto] Ti risiedi e tua madre ti guarda felice.
-> Casa
+ [Forse è il caso di andarsene] Dai un bacio sulla guancia a tua madre ed esci. 
-> Campi2

=Campi2 
Esci dalla casa e ti ritrovi nuovamente tra i campi.
+ [Rientra in casa] Perchè mai sono uscito? rientri in casa.
-> Casa 
+ [Sei stanco di questi giochetti, raggiungi la macchia nera] La macchia si rivela essere piu grande man mano che ti avvicini, ingrandisce ed ingrandisce finchè non ti trovi all'interno di una piccola foresta di rovi, a terra corpi, che dopo una veloce analisi appartengono agli uomini e donne che hai ucciso nei tuoi viaggi.
-> Macchia 

= Macchia
Raggiungi il centro del bosco di rovi e ti trovi davanti ad un catello composto da migliaia di ossa di qualsiasi taglia, attorno ad esso il bosco di rovi che sembra piu rigoglioso attorno al castello. davanti ad esso una fontana dall'acqua luminosa si staglia.

+ [Entra nel cupo castello] Deciso ti dirigi spedito verso il castello.
-> Castello
+ [Ispeziona la fontana prima di entrare] Ti avvicini incuriosito dalla fontana.
-> Fontana
+ [Ispeziona la Foresta attorno al castello] ti avvicini alla foresta entrando cautamente, purtroppo in poco tempo ti trovi disperso tra i rovi che pian piano si tramutano in vecchi pini rinsecchiti.
-> Radura

= Castello
Dinanzi a te si trova il Mago che ti ha fatto questo, che dall'alto del suo trono ti guarda con sguardo beffaro, "Caro non pensavo ci avresti messo così poco, {not Fontana: Non ti sei fermato alla fontana che ho fatto appositamente per te?}. bravo sono proprio fiero per questo motivo ho deciso di lasciarti libero" Il mago si alza e si avvicina scendendo dal suo trono, mentre dietro di lui il muro si trasforma in una parete rocciosa "Beh sei libero di raggiungere i tuoi amici fuori dal mio reame e di laciarmi in pace, vattene, finche puoi" il mago si gira dandoti le spalle.

+ [Avvicinati Cautamente alla fontana] Raggiungi la fontana e ti rendi conto di non essere piu nel castello.
-> Fontana
+ [Entra in ira] Accecato dalla rabbia corri verso il mago urlando a pieni polmoni
-> Mago
+ [Raggiungi i tuoi compagni all'uscita] Lanciando un occhiataccia al mago, che ti sorride, raggiungi l'uscita dove i tuoi amici di aspettano
-> Compagni

= Compagni
I tuoi amici ti accolgono a braccia aperte e vi mettete subito in viaggio, nella tua testa pensi a quanto il calore del sole, quello vero, ti sia mancata, in quel momento solo per un istante ti sembra che il sole non ti stesse scaldando.
+ [Qualcosa non va fermati] C'è qualcosa di sbagliato in tutto questo, ti sembra tutto troppo semplice, e quella sensazione... non ti convince.
++ ferma i tuoi compagni -> BOSS
++ Tieni per te i tuoi dubbi e continua a camminare ->SI_RIPARTE
+ [Continua a camminare] Ti scrolli di dosso l'agitazione sarà stata solo un'illusione visiva ->SI_RIPARTE

= Fontana
Attorno a te si trovana un cerchio di rovi che ti circonda e al centro di esso la fontana che brilla di un intensa luce argento. 
* [Cerca di uscire dal cerchio di rovi] i rovi ti feriscono ma riesci a farti strada nei fitti rami.
-> INIZIO2
* [Specchiati nella fontana] guardi nello specchio d'acqua qunado...
-> Donna

=Donna
in un attimo tu ed il tuo riflesso vi invertite e l'uno diventa l'altro. Ti trovi ora in un lago argenteo nel quale una ninfa sta cantando, i suoi occhi incontrano i tuoi e le tue gambe ti spingono verso la donna, gli occhi si fanno sempre piu pesanti; Sei ora ad un passo dall'etereaa figura.

{spada: la spada si illumina riportandoti in te mentre ti rendi conto che la donna è in realtà una melma -> MELMA}
+ [Bacia la donna] Il delicato bacio vi avvolge per quelli che sembrano essere eoni, nulla piu esiste non i tuoi compagni non quell'infame di un mago che ti ha spedito li, quando ti rendi conto che il bacio è diventato piu umido e sempre piu melmoso.
++ [continua a baciare la donna] scacci la sensazione e tutto torna calmo ad un certo punto non riesci piu a capire che succede -> MORTE1
++ [staccati] ti stacchi dal bacio per renderti conto di non essere piu con la donna e nemmeno nel lago argenteo se per questo, ti trovi all'intenro di una melma -> MORTE1

=Mago
{spada: Colpisci il mago con un colpo netto facendoigli saltare la testa, che vola in aria mentre zampilli di sangue si sprgono sulle pareti e sul pavimento. Da dietro di te una voce "complimenti questo mi ha sorpreso". ti giri ed il mago si trova li, ancora con la sua testa sulle spalle, lo attacchi e lo attacchi ancora, il pavimento è ormai cosparso dal liquido viscoso, con un ultimo fendente lo tagli a meta, cadi a terra in ginocchio, anisimante mentre l'ira si dipana e con essa i tuoi sensi tornano. Guardi il cadavere davanti a te, non si tratta del mago, è il tuo compagno di squadra, ti guardi attorno in orrore mentre la realizzi cos'è successo e le risate del mago svaniscono nell'aria.}
{not spada: il mago si gira verso di te e ride puntando il dito verso di te, una saetta verde parte dal suo dito, lasciando di te solo polvere}
-> END

=MELMA
Nell'alzare la guardia illumini la creatura che arretra come spaventata dalla luce, con un preciso colpo di spada squarci quindi il mostro che con quelle che sembrano urla esplode in una pioggia agento che scioglie la realtà attorno a se.
->Al_di_la

=MORTE1
Piano piano tutto si fa scuro e i sensi si fanno sempre piu flebili, ad un certo punto non senti piu nulla, solo vuoto.
->INIZIO

=SI_RIPARTE
Cammini con i tuoi compagni per qualche chilometro, quando raggiungete una foresta. Ad un certo punto li perdi di vista non hai la minima idea di dove siano finiti, finisci a girovagare nella foresta mentre i tuoi ricordi si fanno sempre piu nebulosi.
Passano ore e non sai quando tu sia entrato o perchè sai solo che hai sonno... tanto tanto sonno...

+ Appoggiati ad un albero e dormi
->INIZIO

=BOSS
Fermi i tuoi compagni di party per chiedergli cosa stia succedendo, quando i 4 si mettono a ridere quando e girandosi si mergono in un unica creatura dalla forma indefinita che si staglia su di te.

{spada:Sguaini la spada che si illumina con una luce brillante che quasi ti acceca. Una volta che il bagliore passa vedi che hai colpito il mostro che brucia e sembra quasi urlare di dolore, gli dai quindi il colpo finale che lo fa esplodere in una pioggia argentea che scioglie la realtà attorno a te. ->Al_di_la}
{not spada:->MORTE1}


=Al_di_la
"Bene passi il tiro salvezza saggezza, sei di nuovo cosciente" ti dice il master "è il tuo turno, davanti a te si trova il mago, che ti guarda con aria sconvolta, cosa vuoi fare?
->END
