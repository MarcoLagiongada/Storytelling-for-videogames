->INIZIO
===INIZIO===
Imprechi sonoramente da dietro la tua copertura, mentre il mostruoso gigante lancia la carcassa di Larry dietro il masso alla tua destra. Il pazzo voleva lanciargli un qualche incantesimo di trasmutazione, ma quello che si è trasformato in un ammasso informe di sangue e stoffe è stato lui.
Senti la freccia di Kelroos saettare alla tua sinistra. L'agghiacciante urlo di dolore della creatura anticipa di poco la sua vendetta. Una pioggia di macigni piombano inesorabili, schiacciando a morte il povero Elfo che ha scoccato la freccia.
"Cazzo", pensi mentre stringi il medaglione rotto. Senza un simbolo sacro o componenti non puoi lanciare incantesimi. Le tue mani arrivano alla cintura, "Solo una bomba e una misera spada arrugginita?!" pensi mentre controlli il tuo equipaggiamento "Ok, ok, posso farcela... credo... Magari gli altri avevano qualcosa di utile"
La creatura continua ad urlare furente. Se esci dalla copertura potresti essere colpito ma se resti qui sei sicuramente morto.

+ [Non ho il tempo di pensare, se resto qui sono morto, devo correre.]
-> Run
+ [Porto la mano alla cintura e lancio la bomba al gigante.]
-> Throw_Bomb
+ [Porto la mano alla cintura e lancio la spada per distrarlo.]
-> Throw_Sword
+ [Prendo la spada e carico contro la bestia.]
->TOO_SOON_END
VAR Gigant_HP = 30
VAR HP = 50
VAR Bomb = true
VAR Sword = true
VAR Rope = false
VAR Invis_Cloak = false
VAR Invis_Cloak_on = false
VAR Bow = false
VAR F_Ranger = false
VAR F_Mage = false


= Run 
~ HP = HP - 10
"Non mi posso permettere di perdere né tempo, né muntizioni" ti dici mentre tiri fuori ogni briciolo di coraggio che hai in corpo.
Così ti alzi e corri a per di fiato per raggiungere la copertura che ti permetterà di raggiungere i cadaveri dei tuoi amici. Quando però pensi di essere al sicuro il gigante ti individua e ti attacca colpendoti con la sua mazza. Stordito ma ancora vivo ti rialzi cercando rifuguio. 

* [Corri verso il mago] Il cadavere del tuo amico è irriconoscibile, puoi solo sperare di aiutarlo una volta che tutto questo sarà finito.
-> Mage
* [Corri verso il ranger] Il povero elfo è stato praticamente tranciato in due dalla roccia, "non sarà così facile riportarlo indietro" ti dici a denti stretti.
-> Ranger


= Throw_Bomb
~ Bomb = false
~ Gigant_HP = Gigant_HP - 10
Sei sicuro che il suono della bomba confonderà abbastanza il mostro da permetterti di raggiungere una copertura utile per arrivare dai tuoi compagni.
La bomba esplode fragorosamente facendo crollare una parte della parete rocciosa, apparentemente instabile.

* [Corri verso il mago] Il cadavere del tuo amico è irriconoscibile, puoi solo sperare di aiutarlo una volta che tutto questo sarà finito.
-> Mage
* [Corri verso il ranger] Il povero elfo è stato praticamente tranciato in due dalla roccia, "non sarà così facile riportarlo indietro" ti dici a denti stretti.
~ Bow = true
-> Ranger


= Throw_Sword
~ Sword = false
Ti convinci che potresti distrarre la creatura creando un rumore. Dovrai però agire in fretta, non sai quanto sarai in grado di lanciare lontano la spada. Raccimoli tutta la forza che hai in corpo scaraventando la spada il più lontano possibile. Fortunatamente riesci a raggiungere una lunghezza utile e il mostro si gira verso il rumore aprendoti un passaggio verso la prossima copertura. 

* [Corri verso il mago] Il cadavere del tuo amico è irriconoscibile, puoi solo sperare di aiutarlo una volta che tutto questo sarà finito.
-> Mage
* [Corri verso il ranger] Il povero elfo è stato praticamente tranciato in due dalla roccia, "non sarà così facile riportarlo indietro" ti dici a denti stretti.
-> Ranger

= Mage
~ Invis_Cloak = true
~ F_Ranger = false
~ F_Mage = true
{ 
- Bomb == false:  
- else: 
~ HP = HP - 10
}
{Throw_Bomb: Frughi dappertutto ma non trovi inizialmente nulla di utile. Altrettanto frustrato sembra essere il gigante, che colpisce il terreno con rabbia. La terra trema, per un attimo temi che possa cadere un' altra piccola frana, ma nulla succede. Torni a frugare e fortunatamente trovi il mantello dell'invisibilità di Larry, che prontamente indossi. Noti anche la corda che deve essergli caduta durante il volo, potrebbe tornarti utile?}
{not Throw_Bomb: Frughi dappertutto ma non trovi inizialmente nulla di utile. Altrettanto frustrato sembra essere il gigante, che colpisce il terreno con rabbia. La terra trema, una piccola frana inizia a caderti addosso, riesci a evitare di essere schiacciato a morte ma hai comunque preso una bella botta. Torni a frugare il corpo, per la maggior parte ormai sepolto. Dopo poco trovi fortunatamente il mantello dell'invisibilità di Larry, che indossi prontamente. Noti anche la corda che deve essergli caduta durante il volo, potrebbe tornarti utile?}

{ 
- Bow == true: 
+ [Uso l'arco] Incocchi la freccia, fai un respiro profondo e ti prepari a tirare.
-> Bow_from_Mage
}
{
- not Ranger: 
+ [Vado dal ranger] "Kel potrebbe avere qualcosa di utile addosso" pensi mentre ti prepari a fare uno sprint per la vita. Corri verso l'altro alleato quando la creatura ti sente ed inizia a lanciare massi, impedendoti di tornare indietro.
Il povero elfo è stato praticamente tranciato in due dalla roccia. "Non sarà così facile riportarlo indietro" ti dici a denti stretti.
~ Bow = true
-> Ranger
}
{ 
- Sword == true: 
+ [Prendo la spada e carico contro la bestia] ->TOO_SOON_END 
}
{ 
- Sword == true: 
+ [Per colpirlo devo attirare la sua attenzione, lancio la spada] -> Throw_Sword_2
}
{ 
- Bomb == true: 
+ [Per colpirlo devo attirare la sua attenzione, lancio la bomba] -> Throw_Bomb_2
}
{ 
- Invis_Cloak == true:
{ 
- Invis_Cloak_on == true: 
+ [Tolgo il mantello] -> Cloak_off
}
{ 
- Invis_Cloak_on == false: 
+ [Metto il mantello] -> Cloak_on
}
}
{ 
-Invis_Cloak_on == true: 
+ [Cerco di andarmene di nascosto] 
-> FLED_END
}
+ [Vado a prendere la corda]
-> Rope_from_Mage


= Ranger
~ F_Ranger = true
~ F_Mage = false

{
- Invis_Cloak == true: {Invis_Cloak_on == true: Sicuro sotto il mantello incantato} {Invis_Cloak_on == false: Delicatamente}, inizi ad ispezionare il corpo. Ti rendi subito conto che tutto quello che l'elfo aveva addosso è schiacciato sotto il masso, solo l'arco sembra essere utile a qualcosa, così lo raccogli.
    Rimane ancora la corda da recuperare 
- else: Delicatamente inizi ad ispezionare il corpo, ti rendi subito conto che tutto quello che l'elfo aveva addosso è stato schiacciato dal masso, solo l'arco sembra essere utile a qualcosa, così lo raccogli. Da qui riesci a vedere il corpo del povero Larry. In campo aperto noti anche la corda del mago. Deve essergli caduta nel volo.
}
{ 
- Bow == true: 
+ [Uso l'arco] Incocchi la freccia, fai un respiro profondo e ti prepari a tirare. -> Bow_from_ranger
}
{ 
- Invis_Cloak == true:
{ 
- Invis_Cloak_on == true: 
+ [Tolgo il mantello] -> Cloak_off 
}
{ 
- Invis_Cloak_on == false: 
+ [Metto il mantello] -> Cloak_on
}
}

{not Mage:
+ [Vado dal mago] "Larry potrebbe avere qualcosa di utile addosso" pensi mentre ti prepari a fare uno sprint per la vita. Corri verso l'altro tuo alleato quando la creatura ti sente ed inizia a lanciare massi, impedendoti di tornare indietro. 
Il cadavere del tuo amico è irriconoscibile. Puoi solo sperare di aiutarlo una volta che tutto questo sarà finito.
-> Mage
}

{ 
- Sword == true: 
+ [Prendo la spada e carico contro la bestia] ->TOO_SOON_END
}

{ 
- Sword == true: 
+ [Per colpirlo devo attirare la sua attenzione, lancio la spada] -> Throw_Sword_2
}
{ 
-Invis_Cloak_on == true: 
+ [Cerco di andarmene di nascosto] 
-> FLED_END
}
+ [Vado a prendere la corda]
-> Rope_from_Ranger


=Bow_from_ranger
~ Bow = false
~ Gigant_HP = Gigant_HP - 10
Cerchi di calmarti mentre muovi l'arco per tenere la testa della bestia sotto tiro. Non appena si gira scocchi. 
Il colpo è preciso e il giante grida di dolore, fortunatamente sembra non averti visto.

+[Continua]
-> Ranger


=Bow_from_Mage
~ Bow = false
~ Gigant_HP = Gigant_HP - 10
Cerchi di calmarti mentre muovi l'arco per tenere la testa della bestia sotto tiro. Non appena si gira scocchi. 
Il colpo è preciso e il giante grida di dolore, fortunatamente sembra non averti visto.

+[Continua]
-> Mage


=Cloak_off
~ Invis_Cloak_on = false
Ti togli il delicato mantello di seta grigia e torni visibile.

{
- F_Mage == true:
->Mage
- F_Ranger == true:
->Ranger
}


=Cloak_on
~ Invis_Cloak_on = true
Indossi il delicato mantello di seta grigia e diventi invisibile.

{
- F_Mage == true:
->Mage
- F_Ranger == true:
->Ranger
}

=Throw_Bomb_2
~ Bomb = false
~ Gigant_HP = Gigant_HP - 10
Prendi coraggio e lanci la bomba al gigante, che viene colpito in pieno petto, l'esplosione è enorme, non sai cosa ci fosse in quella bomba ma di certo ha sentito il colpo{Cloak_on == false:.}{Cloak_on == true:,l'aria che ha smosso muove il tuo mantello rendendoti visibile per un attimo}
La creatura corre ora nella tua direzione sbraitando e muovendo la mazza nell'aria. 
-> FINAL_choices

=Throw_Sword_2
~ Sword = false
~ HP = HP - 10
Prendi coraggio e lanci la spada verso il gigante. L'arma non fa però molta strada prima di raggiungere il terreno. Il gigante si gira verso di te e urla {Cloak_on == true:, smuovendo il mantello rendendoti visibile per un istante}. Terrorizzato guardi il gigante correrti in contro, d'istinto indietreggi, cadi ferendoti. 
La creatura sbraita e muove la mazza nell'aria. 
-> FINAL_choices

=Rope_from_Mage
~ Rope = true 
{ 
- Invis_Cloak_on == true:
Cautamente raggiungi la corda e la prendi in mano, fai un respiro di solievo, è arrivato il momento di agire. Senza pensarci urli alla creatura per attirare la sua attenzione. Il gigante si gira ed inizia a correrti in contro
- else:
Cerchi di raggiungere la corda cautamente. Non appena riesci a stringerla con la mano, la creatura ti nota e ti corre in contro urlando. dallo spavento cadi a terra colpendo bruscamente il terreno.
~ HP = HP - 10
}
-> FINAL_choices

=Rope_from_Ranger
~ Rope = true 
{ 
- Invis_Cloak_on == true:
Cautamente raggiungi la corda e la prendi in mano, prendi un respiro di solievo, è arrivato il momento di agire. Senza pensarci urli alla creatura per attirare la sua attenzione. Il gigante si gira ed inizia a correrti in contro
- else:
Non riuscirai mai a raggiungere la fune di soppiatto da qui, devi correre. Scatti verso la fune quando il mostro ti lancia un sasso, ti butti in avanti per schivarlo ma cadi ferendoti il volto. Con il sangue negli occhi vedi il gigante correrti in contro.
~ HP = HP - 20
}
-> FINAL_choices

= FINAL_choices
{
- Gigant_HP == 10:
Il gigante sembra stremato, corre in maniera goffa e sei abbastanza certo che non veda più da un occhio. Per quanto riguarda te invece...
- Gigant_HP == 20:
Il gigante sembra ferito, ma non abbastanza da non essere pericoloso, meglio essere cauti non è il caso di rischiarla ora. Per quanto riguarda te invece...
- Gigant_HP == 30:
Il gigante è in piene forze, corre furiosamente ed energicamente verso di te. Per quanto riguarda te invece...
}
{
- HP == 10:
Beh tu senti il fiato farsi sempre piu pesante, grondi di sangue, ed il terrore inizia a infettare le tue vene. Non riesci quasi a sentire i tuoi pensieri sotto il rumore del battito del cuore. Non sei messo affatto bene.
- HP == 50:
Beh tu senti l'adrenalina pomparti nelle vene, puoi farcela, sei sicuro, solo... cosa fare... 
- else:
Beh tu hai un po di fiatone e sanguini, ma sei ancora tutto intero, "è l'ultimo sforzo" ti dici a denti stretti. è ora di capire cosa fare.
}
{
- HP == 10 && Gigant_HP==30: 
+ [Rimango fermo dal terrore]
-> DIAMOND_END
}

{
- HP == 10 && Gigant_HP==30: 
+ [Rimango fermo dal terrore]
-> DIAMOND_END
}
{
- Sword == true:
+ [Sguaino la spada e gli corro incontro]
-> SWORD_END
}
{
- Bow==true:
+ [Afferro l'arco e prendo la mira]
-> BOW_END
}
{
- Sword == true && Rope == true:
+ [Uso la corda per farlo inciampare, ed infilzarlo] 
-> SWORD_PLUS_ROPE_END
}
{
- Bomb == true:
+ [Mi preparo a lanciare la bomba alla creatura]
-> BOMB_END
}
{
- Rope == true && Cloak_on == true:
+ [Mi sposto e sfrutto la mia invisibilità per intrappolarlo]
-> ROPE_PLUS_CLOAK_END
}
{
- Cloak_on == true:
+ [Sfrutto la mia invisibilità per scappare]
-> FLED_END
}



=TOO_SOON_END
{
- Invis_Cloak_on == true:
{
-Gigant_HP <= 20:
Corri verso il gigante urlando a pieno petto, furente di rabbia. Seppur la tua invisibilità ti aiuti sembra però non essere sufficente. ti, allontani per fagli perdere le tue tracce. Quando sembra piu confuso sfrutti il tuo vantaggio e gli salti addosso, infilzando la besia nel cuore, uccidendola.
-> END
- else: Corri verso il gigante urlando a pieno petto, furente di rabbia. La creatura è però molto piu forte di quanto ti aspettassi, ben presto ti trovi quindi a pentirti di averla attaccata a viso aperto. Beh almento sei sicuro che il tuo dio ti accoglierà a braccia aperte per aver affrontato la bataglia da vero guerriero.

+[Ricomincia]
->INIZIO
}
- else:
{
-Gigant_HP <= 10:
Corri verso il gigante urlando a pieno petto, furente di rabbia. Inizialmente la bestia sembra star avendo la meglio, lanciandoti via come una bambola di pezza, sfrutti però la cosa cercando di nasconderti per fagli perdere le tue tracce. la creatura non sembra molto sveglia e riesci a nasconderi. Quando sembra piu confuso sfrutti il tuo vantaggio e gli salti addosso, infilzando la besia nel cuore, uccidendola.
-> END
- else:
Corri verso il gigante urlando a pieno petto, furente di rabbia. La creatura è però molto piu forte di quanto ti aspettassi. Ben presto ti trovi qundi a pentirti di averla attaccata a viso aperto. Beh almento sei sicuro che il tuo dio ti accoglierà a braccia aperte per aver affrontato la bataglia da vero guerriero.
+[Ricomincia]
->INIZIO
}
}

= FLED_END
{
- Gigant_HP <= 20:
Ti dispiace lasciare indietro i tuoi compagni, e puoi solo pregare che il tuo dio ti perdoni, ma non hai intanzione di morire qui. Cerchi così di allontanarti dalla battaglia grazie al mantello.
Fortunatamente il gigante sembra molto stordito dai colpi che ha ricevuto, permettendoti di scappare.
Ti allontani senza guardarti indietro, il tuo dio insegna che c'è solo onore in una morte in battaglia, ma oggi hai deciso che quella gloria sarebbe spettata ad altri.
-> END
- else:
Ti dispiace lasciare indietro i tuoi compagni, e puoi solo pregare che il tuo dio ti perdoni, ma non hai intanzione di morire qui. cerchi così di allontanarti dalla battaglia grazie al mantello.
Cauto prosegui verso la libertà, quando la creatura si gira nella tua direzione, non sai come ma deve averti sentito. Inizi a correre a per di fiato, ma è troppo tardi. Senti l'impatto con la mazza, e poi più niente.

+[Ricomincia]
->INIZIO
}

= DIAMOND_END
Tutto d'un tratto ti senti come diventare di pietra. I tuoi arti non si muovono, il sangue ricopre il tuo volto ed il tuo corpo, sei terrorizzato.
Non sapendo cosa fare inizi a tirare di tutto alla bestia, e una volta finiti gli oggetti cominci con le pietre. Una roccia lo colpisce in un occhio, facendolo inciampare e quasi cadere, versando quindi parte del contenuto della sua borsa a terra. Da essa un diamante della grandezza di un occhio rotola sul pavimento.
"Potrei usarla per resusitare {F_Mage == true:Larry} {F_Ranger == true:Kelroos}," "o potrei scappare" pensi guardando uno spiraglio di salvezza.
+ [Raggiungi il diamante]
Ti lanci verso il diamante, fai giusto in tempo ad afferarlo, che il mostro di stringe nella sua presa, senti l'aria venir forzata fuori dai tuoi polmoni.
++[Recita la preghiera]
Reciti la preghiera mentre tutto inizia a farsi nero, l'ultima cosa che vedi è un lampo di luce che illumina il tuo compagno riportandolo in vita.
-> END
++[Lasciati andare]
Decidi che è il momento di cedere, è ormai inutile combattere, usi i tuoi ultimi istanti per guardare il cielo, poi è nulla.
-> END
+ [Sfrutti la confusione per scappare]
Provi a scappare ma sei troppo mal concio e spaventato, l'adrenalina è l'unica cosa che ti tiene in piedi, sembri quasi avercela fatta, quando il mostro ti prende strappandoti in due come nulla fosse.
->END

= SWORD_END
{
- Gigant_HP == 10 && HP == 50:
Sei sicuro di poter ammazzare quella bestia, corri verso il mostro tenedo la spada stretta. Il lento e stanco gigante, urla correndoti incontro. Seppur tu sia in vantaggio, sei certo che in uno scontro testa a testa non puoi vincere, usando quindi una roccia come base ti lancio, e utilizzando ogni briciolo di forza rimastati, infilzi la spada nel suo cranio uccidendolo sul colpo.
-> END
- else:
Pronto a combattare corri verso il mostro tenedo la spada in mano e urlando a denti stretti. Riesci a schivare il primo colpo del gigante e lo colpisci. Fai un balzo inditro e vedi il pugno del gigante saettarti davanti, sfiorandoti il naso. Sei pronto a colpire quando senti lo spostamento d'aria della mazza che ti sta venendo in contro. Distinto frapponi la spada all'arma nel tentativo di difletterla. Inutile dire che il fragoroso rumore delle tue ossa che si rompono ha rimbombato in tutto il regno, o così ti è sembrato nell'istante prima di perdere i sensi.

-> END
}

= BOW_END
{
- Gigant_HP <= 20:
La tua mano saetta alla faretra, mentre l'altra mira la bestia, hai solo un colpo, e speri davvero che sia sufficente. Il gigante si fa piu vicino e piu vicino ogni secondo che passa. Tutta la tua vita ti scorre davanti agli occhi, "Sono fottutto!" imprechi nella tua testa mentre scocchi la freccia. D'istinto distogli lo sguardo. Senti un tonfo, ti giri trovando la creatura in ginocchio esanime con una freccia nel ginocchio
-> END
- else:
La tua mano saetta alla faretra, mentre l'altra mira la bestia. Hai solo un colpo, e speri davvero che sia sufficente. Il gigante si fa piu vicino e piu vicino ogni secondo che passa, tutta la tua vita ti scorre davanti agli occhi. Socchi la freccia, e con orrore vedi l'enorme creatura prenderla al volo e lanciara in lontanaza. Sai che è finita, chiudi gli occhi e aspetti il tuo destino.
->END
}

= SWORD_PLUS_ROPE_END
{
- HP > Gigant_HP:
Corri in contro al mostro, ed inizi a saettargli tra le gambe, colpendolo con la spada. La creatura confusa cerca di catturarti per finirti, senza accorgersi di cio che stai facendo. Dopo poco i suoi piedi sono intrappolati in un groviglio di corde. Quando la creatura lo nota cerca subito di liberarsi ma riesci a tenere salda la presa. Balzi indieto e strattoni la fune facendo cadere di schiena il bestine. Scatti sul gigante e gli infizi la spada nell'occhio.
Ti accasci a terra ansimando, e ringraziando Il tuo dio che sia finita.
- else:
Corri in contro al mostro, ed inizi a saettargli tra le gambe, colpendolo con la spada. La creatura confusa cerca di catturarti per finirti, senza accorgersi di cio che stai facendo. Dopo poco i suoi piedi sono intrappolati in un groviglio di corda. Quando la creatura lo nota cerca di liberarsi. Non puoi nulla contro la forza del gigante, perdi la presa cadendo all'indietro. Fai giusto in tempo ad aprire gli occhi per vedere la mazza che ti piomba addosso.
->END
}

= BOMB_END
Prendi la mira e prontamente lanci la bomba, sei sicuro che lo colpira in pieno volto. Inaspettatamente la mazza del gigante incontra la bomba che, ancora piu Inaspettatamente, e sfidando ogni legge fisica, non si distrugge. Viene anzi rispedita indietro, colpendoti in pieno volto e uccidendoti sul colpo.
-> END

= ROPE_PLUS_CLOAK_END
Come un ragno invisibile tessi la tua tela attorno al gigante, che seppur cerchi di liberarsi, schiacciandoti, non riesce ad identificarti. 
In poco tempo hai completamente avvolto il gigante con la corda e ti posizioni dietro di lui facendolo inciampare. Il mostro crolla a terra e colpendo pesantemente la testa e perdendo i sensi.
Assicuri la corda e ti metti subito a rovistare nella borsa del gigante, all'interno trovi tre grossi diamanti. "Chissa che fine hanno fatto i poveri disgraziati a cui li ha presi" pensi analizzandoli "beh almeno posso riportare indietro quei due idioti" dici mentre ti dirigi a resuscitare i tuoi compagni.
-> END