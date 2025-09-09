extends Node
var page = 0
var frgeneral = 0
var frcam1 = 0
var frcam2 = 0
var frfiltros = 0
var seleccion = [" "];
var posicionp
var screamer
var suave
var timeDict = OS.get_time();
var hour = timeDict.hour;
var ano = OS.get_date()
var elano = ano.year
var lostrucos
var dialogos
var f


# Called when the node enters the scene tree for the first time.
func _ready():
	f = false
	if f ==false:
		OS.window_fullscreen = !OS.window_fullscreen
		f = true
	lostrucos = ["lista de trucos: jugar a las 3 A.M", "Árbol de decisiones: jugar a la 1 A.M", "Pixel art: jugar a media noche", "Modo suave: jugar en el 2.000", "SoundTrucK: jugar a las 6 A.M", "Quitar Screamer: jugar a las 7 A.M", "Árbol de mascotas perro: jugar a las 2 A.M","Rock'nChile: jugar en 2.019"]
	dialogos = ["                                                                       Para una máxima experiencia de terror, se recomienda jugar MOKUBIN.EXE con la luz apagada y con audífonos... a las 3 A.M con luna llena, jugando a la Ouija, en un cementerio; al lado de un ritual satánico y un aquelarre.", 
		"MOKUBIN.EXE                                                presione donde sea                             Controles:                                                   flechas direccionales o presionar la pantalla                                                    Esc para salir",
		"MOKUBIN.EXE                                                menos ahí",
		"MOKUBIN.EXE                                                ahí tampoco",
		"MOKUBIN.EXE                                                muy cerca",
		" ",
		"25 de Diciembre, 2:00 A.M",
		" ",
		" ",
		"        ¡Demonios!, se descargó, pero si    .      tenía 30% de carga",
		"          ¿Qué debo hacer?                .                   .                  .                     .                            .                                            .                                             .                                                        .                                                                        .                                                 .                                                          .                                           .                                                        .                                                       Cargarlo                                Jugar otra cosa",
		"     Lo cargaré",
		"          ¿En qué sentido debo               .          enchufarlo?                  .                   .                  .                     .                            .                                            .                                             .                                                        .                                                                        .                                                 .                                                          .                                           .                                                        .                                  .                     Arriba                              Abajo",
		"             No entra",
		"             Probaré al revés",
		" ",
		"              .          .      Tengo miedo, Alonsito",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Ir a dormir             Ir a la cocina",
		"             ¿Alonsito?",
		" ",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Volver                     Ir",
		" ",
		" ",
		" ",
		" ",
		"             Subamos a dormir",
		"             Subamos a dormir, Triny",
		" ",
		" ",
		"                 Jugaré con la Triny",
		" ",
		"         Hola Alonsito, yo soy Pinky Pooh",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Camión              Twilight pigglet",
		" ",
		" ",
		" ",
		" ",
		"      Hay que dormir pronto, mañana jugarán con sus regalos de navidad",
		"      Pero a ésta hora darán la nueva de Megnado vs Orcnado",
		"      Yo espero que aparezca un tiburon tigre o un Mosasaurio",
		"              La TV no enciende",
		"            Todo está desenchufado, lo volveré a enchufar",
		" ",
		"            Todos tranquilos",
		" ",
		"            ¿Qué demonios?, ¿por qué sonó un caballo?",
		"            Talvez es Pinky Robin            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Creo que es Apple robin",
		"                               Ya volvió",
		"                               ¿Están bien?",
		"Ah...  ...Damyan, refugiandome del miedo en el sarcasmo, creo que...",
		"otro Damyan entró a la cocina, al parecer",
		"Vaya, qué locochon",
		" ",
		"Bueno, las cosas paranormales ocurren todo el tiempo; y aun así, seguimos con vida",
		"Mejor vamos a dormir, para que el fantasma encienda que es inútil llamar nuestra atención",
		" ",
		" ",
		"3 de Enero, 4:30 P.M",
		" ",
		" ",
		" ",
		" Hey, quieren ir al cine                .              a ver 'Lago'",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Si quiero             No quiero",
		" ",
		"3 de Enero, 7:00 P.M",
		" ",
		" ",
		" ",
		"¿Qué bebida vas       .              .        .       .   a querer?, Alonso",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .    Jugo de manzana        Coca-La",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .    Quiero ",
		"Perfecto",
		"Vamos a poner los           .           . polerones encima para            .            .  que crean que sólo            .            .   llevamos ropa",
		"cul explosiónArgumentosInesperado     .                                         final           Sí    .                             .                              .                         .     .                  Sí Tata  .                .                     .                  .             .                    .                         .               .                             .                   .                          .                      .                    .                        .                .                     .                  .             .                    .                         .               .                             .                   .               .  y a ustedes les gustó?",
		" A ésta hora el mall está cerrado; sin embargo, para llegar a al estacionamiento subterráneo, debemos entrar y llegar a las escaleras",
		" ",
		" ",
		" ",
		" ",
		"          ¡Corran al auto!",
		"                   Entren",
		" ",
		" ",
		"4 de Enero, 12:12 A.M",
		" ",
		"                              Todo va a estar bien, .                                amigüitos",
		"                ¡Cuidado con ese men!",
		"                                         .                       .    Hay menos tráfico por la              . derecha, debemos perderlo   .                .  en la oscuridad de la                 .             periféria",
		"   ¿Qué debo lanzarle al mosntruo            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .       Pelota                       Botella",
		" ",
		" ",
		" ",
		" ",
		" ",
		"                             Eso fue muy peligroso,    .                            Mokubin; sin embargo, .                             el resultado fue extraño",
		"                                                .             .     Yo no quiero ir,                            .        .   Tata",
		"Yo me quedaré                       .             contigo y la abuela                                     . Manda, Alonsito",
		"Está bien, intentaremos                                    . vovler a las 12:15 A.M",
		"                                   Tranquilo Alonsito,    .                     .           estaremos bien",
		" ",
		"3 de Enero, 9 P.M",
		" ",
		"                                    Juguemos a     .                                 la pinta con mis    .                                        Winnie Poony",
		"                                  Si me atrapas y    .                                luego  aguantas 30   .                                   segundos sin ser      .                                  atrapado, ganas",
		"¿Quieres                                        .        descansar?",
		"Esas marcas no son                          .   parte del mural",
		" ",
		"            .                     .                          .                                   .                 .                        .                .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                                     .                      ¿Canelita,Copito?",
		" ",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .    Acerecarse             Llamar a la Manda",
		" ",
		" ",
		"           ¡Manda!",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		"4 de Enero, 1:01 A.M",
		" ",
		"                 La criatura volverá, y hay que  .                            hacer un plan sensato",
		"El miedo a un                                 .       escobazo, el agua fría                                 .y querer perseguir                                 . pelotas; indican que se                               . comporta como un                                . perro",
		"Debe comportarse así, porque el Copito y la Canela están dentro de la criatura",
		"Debemos derrotarlo, usando las debilidades de un perro",
		"La manda lo distraerá con su autoridad sobre los perros y yo lo emboscaré",
		"Yo no quiero que                                 .    dañen al Copito y a la                           . Canelita",
		" ",
		"Caco, hay unas marcas sospechosas en tu mural",
		" ",
		"             Adentro todos",
		"¿No podemos salvar a los perritus?",
		" ",
		"Salvaremos a TODOS los perritos",
		"Cuando esté distraido, debemos abrazarlo",
		" ",
		"Manda, tienes dos sombras",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		"            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .                                          .        Apuñalarlo                     Abrazarlo",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		" ",
		"¿Así que la criatura eran nuestros perro fallecidos?",
		"pero, ¿por qué nos atacaban?",
		"creo que su casa ha sufrido muchos cambios, sin embargo, el cariño es el que nos ayuda a adaptarnos al paso del tiempo",
		" ",
		"¿Vamos a jugar?, Alonsito",
		"Está bien, Triny",
		" ",
		"Felicidades por sobrevivir, desbloqueaste el truco:                                                            ",
		" "]
	timeDict = OS.get_time();
	hour = timeDict.hour;
	ano = OS.get_date()
	elano = ano.year
	suave=false
	if elano==2000:
		suave=true
		screamer=false
	elif elano !=2000:
		if hour==7:
			screamer=false
		elif hour!=7:
			screamer=true
	posicionp=Vector2()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
