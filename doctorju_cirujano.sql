-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-04-2016 a las 09:13:05
-- Versión del servidor: 5.6.29
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `doctorju_cirujano`
--
CREATE DATABASE IF NOT EXISTS `doctorju_cirujano` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doctorju_cirujano`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonos_cirujano`
--

CREATE TABLE IF NOT EXISTS `bonos_cirujano` (
  `id_bonus_cirujano` int(11) NOT NULL AUTO_INCREMENT,
  `cirujias_realizadas` int(11) NOT NULL,
  `horas_estudio` int(11) NOT NULL,
  `anios_experiencia` int(11) NOT NULL,
  `certificaciones` int(11) NOT NULL,
  `eslogan` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `eslogan_por` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `imagen_fondo_items` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `imagen_fondo_eslogan` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_bonus_cirujano`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bonos_cirujano`
--

INSERT INTO `bonos_cirujano` (`id_bonus_cirujano`, `cirujias_realizadas`, `horas_estudio`, `anios_experiencia`, `certificaciones`, `eslogan`, `eslogan_por`, `imagen_fondo_items`, `imagen_fondo_eslogan`) VALUES
(1, 50, 1200, 10, 7, 'Tu vida cambiará más que tu cuerpo', 'Sua vida vai mudar mais do que seu corpo', 'PanoramicaQuirofanoAzul.jpg', 'ojos eslogan.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombres_contacto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `servicio` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_movil_contacto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_contacto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asunto_contacto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_contacto` text COLLATE utf8_spanish_ci,
  `fecha_contacto` date NOT NULL,
  `visto` int(11) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_curriculum`
--

CREATE TABLE IF NOT EXISTS `contenido_curriculum` (
  `id_contenido_curriculum` int(11) NOT NULL AUTO_INCREMENT,
  `id_curriculum` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL,
  `curriculum_completo` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_contenido_curriculum`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `contenido_curriculum`
--

INSERT INTO `contenido_curriculum` (`id_contenido_curriculum`, `id_curriculum`, `id_idioma`, `curriculum_completo`) VALUES
(1, 1, 1, 'El Dr. Julio Reyes, desde el inicio de su carrera sentía pasión por la Cirugía Plástica, lo que lo llevó a encausar su trayectoria profesional y académica en el área luego de recibir su título como Médico Cirujano en el año 2005 en la Universidad Mayor Real y Pontificia San Francisco Xavier de Chuquisaca. Esa pasión lo llevó a realizar inicialmente una especialidad de 4 años en cirugía general y laparoscópica en el Centro Gallego de Buenos Aires, y luego una Especialidad de tres años en cirugía plástica: estética, reconstructiva y maxilofacial en la Universidad de Buenos Aires, Argentina.\r\n\r\nAdicionalmente, desde el año 2005 el Dr. Julio ha realizado un sin fin de cursos que fortalecen sus habilidades para ejercer su carrera con las mejores herramientas y técnicas disponibiles en la actualidad, entre los cuales resaltan: Curso anual de cirugía laparoscópica y mini invasiva en el Hospital Cosme Argerich de Argentina; el Curso anual de actualizaciones en cirugía plástica en la Asociación Médica Argentina; Curso de disección anatomo-quirúrgico nasal con el Dr. Profesor José D. Giacomotti en la Universidad de Buenos Aires; Curso de actualización y aplicación de plasma rico en factores de crecimiento en la Fundación de Altos Estudios de la Escuela AVICENA.\r\n\r\nEn vista de que la experiencia tiene una gran importancia en esta área, el Dr. Reyes viene realizando rotaciones de cirugía plástica al lado de cirujanos de experiencia reconocida desde el año 2008 en lugares como Hospital Felicio Rocho en Belo Horizonte, Brasil; el Hospital Pediátrico P. Garrahan y el Hospital Britanico de Buenos Aires en Argentina; y en el Centro Gaetano Di Bianco  con el Dr. Andres Ruiz Cirujano oficial organización Miss Venezuela. Además, fue el Cirujano de Guardia del Hospital Centro Gallego de Buenos Aires desde el 2010 hasta el año 2013.'),
(2, 1, 2, 'O Dr. Julio Reyes, desde o início de sua carreira tinha uma paixão para a cirurgia plástica, o que levou a processar a sua experiência profissional e acadêmica na área depois de receber seu título de cirurgião em 2005 na Universidad Mayor Real e Pontifícia San Francisco Xavier de Chuquisaca. Essa paixão o levou, inicialmente, fazer uma especialidade de quatro anos em cirurgia geral e laparoscópica no Centro Gallego de Buenos Aires, e, em seguida, uma especialidade de três anos em cirurgia plástica: estetica, reconstrutiva e maxilo cirurgia, na Universidade de Buenos Aires, Argentina.\r\n\r\nAlém disso, desde 2005 o Dr. Julio fez inúmeros cursos que fortalecem suas habilidades para exercer a sua carreira com as melhores ferramentas e técnicas disponíveis no presente, entre os quais se destacam: Curso anual de laparoscópica e mini-invasiva Cosme Argerich Hospital da Argentina; Curso actualizações anuais em cirurgia plástica na Argentina Associação Médica; Anatômica nasal curso e dissecção cirúrgica com o Professor Dr. Joseph D. Giacomotti na Universidade de Buenos Aires; Curso de reciclagem e aplicação de plasma rico em factores de crescimento na Fundação de Estudos Avançados na AVICENA School.\r\n\r\nDado que a experiência é muito importante nesta área, o Dr. Reyes vem fazendo rotações de cirurgia plástica ao lado de cirurgiões com experiência reconhecidas desde 2008 em lugares como Hospital Felicio Rocho em Belo Horizonte, Brasil; no Hospital Pediátrico P. Garrahan e no Hospital Britânico de Buenos Aires, na Argentina; e no Centro Gaetano Di Bianco  com o Dr. Andres Ruiz cirurgião oficial da organização Miss Venezuela. Ele também foi o cirurgião de guarda no hospital Centro Gallego de Buenos Aires desde 2010 até 2013.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_procedimiento`
--

CREATE TABLE IF NOT EXISTS `contenido_procedimiento` (
  `id_contenido_procedimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_procedimiento` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL,
  `titulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `sub_titulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_contenido_procedimiento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=59 ;

--
-- Volcado de datos para la tabla `contenido_procedimiento`
--

INSERT INTO `contenido_procedimiento` (`id_contenido_procedimiento`, `id_procedimiento`, `id_idioma`, `titulo`, `sub_titulo`, `detalle`) VALUES
(17, 9, 1, 'RINOPLASTIA', 'Consiste en mejorar el aspecto de la nariz adaptándolo a las facciones y características propias de cada persona', 'Si se acompaña de una rinoplastia funcional puede corregir problemas respiratorios.\r\nExisten dos formas de llevar a cabo esta intervención. La más común es la rinoplastia cerrada donde se realizan incisiones en el interior de los orificios nasales y no queda visible ninguna cicatriz externa. \r\nPara aquellos casos con mayor grado de dificultad o narices operadas con anterioridad se realiza la llamada rinoplastia abierta.\r\nLa  recuperación dependerá de cada paciente, pero en general una semana después de la cirugía el paciente puede volver a las actividades diarias que no requieran gran esfuerzo físico. \r\nEl resultado definitivo se observa en un lapso no menor a nueve meses.'),
(18, 9, 2, 'RINOPLASTIA', 'É para melhorar a aparência do nariz adaptado para as características e as características de cada pessoa. ', 'Quando se juntou a uma rinoplastia funcional pode corrigir problemas respiratórios.\r\nHá duas maneiras de realizar este procedimento. O mais comum é a rinoplastia fechada, onde as incisões são feitas dentro das narinas e nenhuma cicatriz externa não é visível.\r\nPara os casos com o mais alto grau de dificuldade ou narizes operados anteriormente chamado rinoplastia aberta é realizada.\r\nRecuperação vai depender de cada paciente, mas no geral uma semana após a cirurgia o paciente pode retornar às atividades diárias que não exigem grande esforço físico.\r\nO resultado final é observado em um período não inferior a nove meses.'),
(19, 10, 1, 'BLEFAROPLASTIA', 'Es un procedimiento que consiste en extraer la grasa y exceso de piel de los párpados superiores e inferiores', 'corrigiendo la caída de los párpados superiores y las bolsas de los inferiores. Estas características dan un aspecto de cansancio y pueden interferir con la visión.\r\nEn el parpado superior la cicatriz queda en el pliegue y en el parpado inferior debajo de las pestañas. (cicatrices no visibles). Esta cirugía suele ir acompañada de un levantamiento de la ceja. \r\nLa recuperación varia entre cinco a siete días.\r\nEl resultado definitivo se observa a los dos meses aproximadamente.\r\n\r\n				'),
(20, 10, 2, 'BLEFAROPLASTIA', 'É um procedimento que envolve a remoção de gordura e excesso de pele das pálpebras superiores e inferiores', 'corrigindo pálpebras superiores caídas e bolsas inchadas abaixo. Estas características dão uma aparência de cansaço e pode interferir com a visão.\r\nNo cicatriz pálpebra superior é no vinco e sob as pestanas pálpebra inferior. (Sem cicatrizes visíveis). Esta cirurgia é muitas vezes acompanhada por um aumento da sobrancelha.\r\nRecuperação varia entre cinco a sete dias.\r\nO resultado final é observada em cerca de dois meses.\r\n				'),
(21, 11, 1, 'OTOPLASTIA', 'Procedimiento quirúrgico en el cual se mejora el aspecto de las orejas.', 'Es solicitada por aquellas personas que sufren de orejas grandes o sobresalientes. Ésta cirugía es simple y los resultados son inmediatos.\r\nLas cicatrices quedan ocultas detrás de las orejas, de manera que se obtiene un resultado natural sin estigmas quirúrgicos.\r\nLa recuperación es de aproximadamente cinco días y en los niños se puede realizar a partir de los siete años de edad.\r\n\r\n				'),
(22, 11, 2, 'OTOPLASTIA', 'Procedimento cirúrgico que melhora a aparência das orelhas.', 'É solicitado por aqueles que sofrem de orelhas grandes ou salientes. Esta cirurgia é simples e os resultados são imediatos.\r\nAs cicatrizes ficam escondidas atrás das orelhas, de modo a obter um resultado natural, sem estigmas cirúrgico.\r\nA recuperação é cerca de cinco dias e as crianças pode ser feito a partir de sete anos de idade.		'),
(23, 12, 1, 'LIPOESCULTURA', 'Consiste en la eliminación de células grasas mediante una cánula en zonas donde la dieta o el ejercicio no los desaparece.', 'Trata de mejorar el contorno y la figura, dando el aspecto de un cuerpo atlético y armónico.\r\nEsta cirugía suele ir acompañada de injerto de grasa en los glúteos y definición de los músculos abdominales.\r\nLa incapacidad y el incorporarse a sus actividades cotidianas sera variable, entre cuatro y diez días.\r\nLos resultados se observan a partir del tercer mes y son duraderos si mantiene una alimentación balanceada, baja en hidratos de carbono y actividad física.			'),
(24, 12, 2, 'LIPOESCULTURA', 'Envolve a remoção de células de gordura através de uma cânula em áreas onde a dieta ou exercício não vai desaparecer.', 'Tente melhorar o contorno e forma, dando a aparência de um corpo atlético e harmonioso.\r\nEsta cirurgia é muitas vezes acompanhada de enxerto de gordura para as nádegas e definição muscular abdominal.\r\nIncapacidade e participar de suas atividades diárias vão variar entre quatro e dez dias.\r\nOs resultados podem ser vistos a partir do terceiro mês e são duráveis se você continuar, uma alimentação pobre em carboidratos equilibrada e atividade física.\r\n				'),
(25, 13, 1, 'AUMENTO MAMARIO', 'Consiste en la colocación de una prótesis para mejorar el aspecto y la armonía corporal.', 'Se realiza en mujeres con mamas poco desarrolladas o en mamas que por los embarazos y lactancias han perdido volumen. Se debe señalar que la simple colocación de prótesis no elevara una mama caída, para ello es necesario un procedimiento adicional llamado mastopexia. \r\nLa selección de la prótesis ideal debe adecuarse al tamaño del tórax y constitución de la paciente, para conseguir un resultado armónico. \r\nEl abordaje se podrá realizar por la areola, el surco mamario inferior o la axila y la ubicación de la prótesis dependerá de las características de la mama, podrá ser delante o detrás del musculo. \r\nLa incapacidad varia entre cuatro y siete días, dependerá del tipo de actividad laboral que la paciente realiza.\r\nLos resultados son inmediatos y termina de desinflamar al mes.\r\nActualmente se utiliza grasa autologa (del mismo paciente) para dar aumento a las mamas y así se evita la colo			'),
(26, 13, 2, 'AUMENTO DO PEITO', 'Ela envolve a colocação de uma prótese para melhorar a aparência e harmonia corporal.', 'Ela é realizada em mulheres com seios subdesenvolvidos ou seios que a gravidez eo aleitamento perderam volume. Deve notar-se que, simplesmente colocando uma gota prótese aumento do peito a este procedimento adicional chamado mastopexia necessário.\r\nA selecção do stent ideal deve ser adaptado ao tamanho do peito e da constituição do paciente, para conseguir um resultado harmonioso.\r\nA abordagem pode ser feita pela aréola, a ranhura inferior da mama ou na axila e na localização da prótese depende das características da mama, pode estar à frente ou atrás do músculo.\r\nA incapacidade varia de quatro a sete dias, dependendo do tipo de actividade de trabalho que o doente toma.\r\nOs resultados são imediatos e termina um mês de inflamação.\r\nActualmente gordura autóloga (paciente) é utilizado para aumentar e assim a colocação de prótese do peito é impedida.				'),
(27, 14, 1, 'ABDOMINOPLASTIA', 'Consiste en eliminar el exceso de grasa y piel en la zona abdominal a fin de mejorar el aspecto estético.', 'ABDOMINOPLASTIA\r\nEn la mayoria de los casos repara músculos debilitados o separados creando un perfil abdominal mas liso y firme, proporcional a su tipo de cuerpo y peso.\r\nUna abdominoplastia no es sustituto para el adelgazamiento y sus resultados son técnicamente permanentes, las fluctuaciones de peso significativas pueden reducir en gran medida un resultado positivo.\r\nLa cicatriz es orientada horizontalmente en el vello púbico  y otra alrededor del ombligo para eliminar el exceso de piel en la parte superior del abdomen.\r\nLos resultados definitivos se apreciaran a partir del tercer mes.\r\nLa incapacidad  es de aproximadamente dos semanas.\r\n\r\n				'),
(28, 14, 2, 'ABDOMINOPLASTIA', 'É para remover o excesso de gordura e da pele na área abdominal para melhorar o aspecto estético.', 'Na maioria dos casos de reparação ou enfraquecido músculos separados criando uma mais lisa e firme, proporcional ao seu tipo de corpo e peso perfil abdominal.\r\nA abdominoplastia não é um substituto para a perda de peso e os resultados são tecnicamente permanentes, flutuações significativas de peso pode reduzir significativamente um resultado positivo.\r\nA cicatriz é orientado horizontalmente nos pêlos pubianos e outra ao redor do umbigo para remover o excesso de pele no abdômen superior.\r\nOs resultados finais serão apreciadas a partir do terceiro mês.\r\nA incapacidade é cerca de duas semanas.\r\n				'),
(29, 15, 1, 'MASTOPEXIA CON O SIN PROTESIS', 'Consiste en elevar las mamas caídas, remodelar la mama, recolocar el pezón en una posición mas alta y así recuperar un pecho firme.', 'Cuando el pecho esta vacío podrá estar acompañada de un aumento con prótesis que aportara volumen o una remodelación de los tejidos llamada autoprótesis, técnica en la que se utiliza el tejido mamario caído y cuando el volumen mamario es excesivo se asocia a una mamoplastia de reducción.\r\nTiempo de recuperación diez días.\r\n\r\n				'),
(30, 15, 2, 'COM OU SEM PROTESIS MASTOPEXIA', 'É levantar os seios caídos, reformular o peito, reposicionar o mamilo em uma posição mais elevada e recuperar um peito firme.', 'Quando a caixa está vazia pode ser acompanhado por um aumento no volume da prótese Furnish ou remodelação de tecidos técnica chamada autoprótesis no tecido mamário caído como o volume da mama excessiva está associada a uma redução de mama é usado.\r\nO tempo de recuperação de dez dias.\r\n				'),
(31, 16, 1, 'MENTOPLASTIA', 'Es un procedimiento quirúrgico de aumento o reducción del mentón.', 'Se coloca el mentón en una posición ideal de acuerdo a parámetros de estética facial. Se puede realizar a través de la colocación de implantes (con prótesis) o avance del mentón.\r\nSe puede colocar por dentro de la boca a través de una incisión en el surco gingival, así no queda cicatriz o con una incisión externa por debajo del mentón, en este ultimo caso queda una cicatriz prácticamente imperceptible.\r\nSi se realiza a través de avance consiste en deslizar la mandíbula movilizando el hueso del mentón hacia la posición deseada.\r\nEste procedimiento puede estar acompañado de lipoaspiración  de la papada.\r\nTiempo de recuperación entre cinco y siete días.\r\n\r\n				'),
(32, 16, 2, 'MENTOPLASTIA', 'É um procedimento cirúrgico para aumentar ou diminuir o queixo.', 'Queixo é colocado em uma posição ideal de acordo com parâmetros estéticos faciais. Ela pode ser realizada por colocação de implantes protéticos (avanço) ou queixo.\r\nEle pode ser colocado no interior da boca, através de uma incisão no sulco gengival, assim não há nenhuma cicatriz ou uma incisão externa sob o queixo, neste último caso, uma cicatriz permanece quase imperceptível.\r\nSe realizada por meio do avanço envolve deslizamento mandíbula mobilização do osso do queixo até a posição desejada.\r\nEste procedimento pode ser acompanhado por lipoaspiração do queixo.\r\nO tempo de recuperação entre cinco e sete dias.			'),
(33, 17, 1, 'LIFTING FACIAL ', 'Consiste en corregir a través de procedimientos quirúrgicos la flacidez de la cara y del cuello, eliminando así los tejidos en exceso.', 'Los candidatos para este procedimiento son pacientes con envejecimiento facial evidenciado y dependiendo de cada caso se realizara minilifting o lifting clásico. \r\nTiempo de recuperación entre diez y quince días\r\nA partir de los treinta días la cara recupera paulatinamente su forma y expresión\r\n				'),
(34, 17, 2, 'FACELIFT', 'É para corrigir através de procedimentos cirúrgicos flacidez rosto e pescoço, removendo o excesso de tecido.', 'Os candidatos para este procedimento são pacientes com envelhecimento facial e evidenciou dependendo do caso será realizada Minilifting ou facelift clássico.\r\nO tempo de recuperação entre dez e quinze dias\r\nDepois de trinta dias, o rosto recupera gradualmente sua forma e expressão.\r\n				'),
(35, 18, 1, 'REDUCCION MAMARIA', 'Consiste en reducir el volumen mamario excesivo', 'Retirando tejido glandular, grasa y piel  manteniendo una forma estéticamente armónica con el resto del cuerpo.\r\nLa cicatriz dependiendo de la técnica sera en ancla (T invertida), con cicatriz vertical o periareolar.\r\nSera necesario utilizar un corpiño por aproximadamente treinta días.\r\nLos resultados se observan de forma inmediata y la inflamación desaparece a los treinta días aproximadamente.\r\n		'),
(36, 18, 2, 'REDUÇÃO DE MAMA', 'É reduzir o volume mamário excessivo.', 'A remoção de tecido glandular, gordura e da pele mantendo ao mesmo tempo uma esteticamente harmonioso com o resto do corpo.\r\nA cicatriz dependendo da técnica estará na escora (T invertido), vertical ou cicatriz periareolares.\r\nSerá necessário usar um sutiã durante aproximadamente trinta dias.\r\nOs resultados são vistos imediatamente e inflamação desaparece aproximadamente trinta dias.			'),
(37, 19, 1, 'GINECOMASTIA', 'Es el desarrollo mamario en el hombre, dando un aspecto ginecoide, muy frecuente en pacientes con sobrepeso o que utilizaron esteroides.', 'Se realiza una pequeña incisión periareolar se reseca el tejido mamario y esta acompañado de lipoaspiración. \r\nEl paciente deberá llevar una venda elástica en el tórax por el lapso de un mes.\r\nSe incorporara a sus actividades según las mismas, entre cinco y siete días.		'),
(38, 19, 2, 'GINECOMASTIA', 'É o desenvolvimento das mamas nos homens, dando-lhe um aspecto ginecoide, muito comum em sobrepeso ou que usou esteróides.', 'Uma pequena incisão periareolar tecido da mama torna-se seca e é acompanhada por lipoaspiração é realizada.\r\nO paciente deve usar uma bandagem elástica no peito dentro de um mês.\r\nEle é incorporado nas suas actividades de acordo com o mesmo, entre cinco e sete dias.\r\n				'),
(39, 20, 1, 'BICHECTOMIA', 'Se busca mejorar los rasgos faciales.', 'Creando la ilusión óptica de tener la cara un poco más alargada y delgada mejorando de esta manera el aspecto estético y la armonía facial.\r\nSe realiza una incisión por dentro de la boca, se buscan las bolsas de bichat (bolsas grasas) y se retiran.\r\nLa recuperación es de tres días.\r\nEl resultado final se observa a los dos meses.\r\n\r\n				'),
(40, 20, 2, 'BICHECTOMIA', 'Visa melhorar as características faciais', 'Criando a ilusão de ter um pouco mais alongado e rosto fino melhorando assim a aparência estética e harmonia facial.\r\nUma incisão é feita no interior da boca, bichat sacos (bolsas gorduras) são pesquisados e removido.\r\nA recuperação é de três dias.\r\nO resultado final é observado em dois meses.\r\n				'),
(43, 22, 1, 'FRONTOPLASTIA ENDOSCOPICA', 'Es también llamada cirugía de rejuvenecimiento de la frente por vía endoscópica', 'Es un procedimiento en el cual se utilizan ópticas y cámaras conectadas a una pantalla de televisión que permiten realizar incisiones mínimas en el cuero cabelludo. \r\nCon este procedimiento se puede elevar la frente, las cejas y a la vez eliminar las líneas de expresión frontales y perioculares, es decir, lograr rejuvenecimiento del tercio superior de la cara.\r\nLa recuperación es de aproximadamente una semana.\r\nLos resultados definitivos se observaran al mes y son duraderos.\r\n'),
(44, 22, 2, 'FRONTOPLASTIA ENDOSCÓPICA', 'Também é chamada cirurgia de rejuvenescimento endoscópico da testa', 'É um procedimento no qual são usados ópticas e câmeras ligadas a um monitor que permitem incisões mínimas no couro cabeludo.\r\nEste procedimento pode aumentar a testa, sobrancelhas e, simultaneamente, remover as linhas de frente e expressão periocular , ou seja, alcançar o rejuvenescimento do terço superior da face.\r\nA recuperação é cerca de uma semana .\r\nOs resultados finais foram observados um mês e são duráveis ​​.'),
(45, 23, 1, 'AUMENTO GLUTEO', 'Consiste en aumentar el volumen y la proyección de la zona glútea.', 'Se puede realizar mediante la colocación de prótesis glútea que ingresa a través de una pequeña incisión ubicada en el pliegue entre ambas nalgas.\r\nEn la actualidad se ha implementado la transferencia de grasa adicional a la colocación de las prótesis y así se optimizan los resultados.\r\nAl menos, durante los primeros quince días debera evitar sentarse o dormir boca arriba.\r\nEl resultado se observa de forma inmediata, aunque el resultado definitivo se da en uno o dos meses, cuando ha desaparecido la inflamación y las protesis se han acomodado.\r\n'),
(46, 23, 2, 'AUMENTO DO BUMBUM', 'É aumentar o volume e projeção das nádegas', 'Isso pode ser feito através da colocação de prótese glútea que entra através de uma pequena incisão localizado na dobra entre as duas nádegas .\r\nActualmente, a transferência foi implementada para além da colocação de próteses de gordura e , portanto, são resultados optimizados.\r\nPelo menos para as primeiras duas semanas deve evitar sentar ou dormir em sua volta .\r\nO resultado é visto imediatamente , embora o resultado final é dado em um ou dois meses , quando o inchaço tiver resolvido e próteses foram acomodados.'),
(47, 24, 1, 'BRAQUIOPLASTIA', 'Intervención quirurgica destinada a quitar el exceso de piel flácida o piel colgante en la cara interna de los brazos.', 'Dependiendo del grado de flacidez se realizará: liposucción cuando el defecto es menor, quedará una cicatriz en la axila cuando es intermedia y en los casos más avanzados sera necesario dejar una cicatriz longitudinal en la cara interna de los brazos.\r\nLa recuperación es de aproximadamente una semana.\r\nLos resultados se observan a la semana.\r\n'),
(48, 24, 2, 'BRAQUIOPLASTIA', 'A intervenção cirúrgica para remover o excesso de flacidez da pele ou flacidez da pele no lado de dentro dos braços .', 'Dependendo do grau de curvatura executar lipoaspiração quando o defeito é pequeno , ele será uma cicatriz na axila quando será necessário casos intermediários e avançados para fazer uma cicatriz longitudinal no interior dos braços .\r\nA recuperação é cerca de uma semana .\r\nOs resultados são observados uma semana .'),
(49, 25, 1, 'REJUVENECIMIENTO VAGINAL', 'Es una cirugía donde se elimina el exceso de tejido vaginal, con el fin de recuperar la firmeza, estrechez y mejorar el aspecto de la vagina', 'Si se trata de un procedimiento con objetivos meramente estéticos, estamos en presencia de una labioplastia, ya que la tonificación es un elemento que forma parte de la vaginoplastia.\r\nEl paciente requerirá dos días de reposo y podrá retomar su rutina al cuarto día. No obstante, las heridas de la zona intervenida en la cirugía vaginal tomarán entre dos y tres semanas en cicatrizar.\r\nLos resultados se podrán apreciar al transcurrir dos o tres semanas.'),
(50, 25, 2, 'REJUVENECIMENTO VAGINAL', 'É uma cirurgia em que o tecido vaginal em excesso é removido , a fim de restaurar a firmeza , aperto e melhorar a aparência da vagina', 'É um procedimento com objetivos puramente estéticos , estamos em presença de uma labioplastia porque tonificação é um elemento que faz parte da vaginoplastia .\r\nO paciente vai precisar de dois dias de descanso e vai retomar a sua rotina no quarto dia . No entanto, as feridas de sítio cirúrgico em cirurgia vaginal vai demorar de duas a três semanas para curar.\r\nOs resultados podem ser vistos a passagem de duas ou três semanas .'),
(51, 26, 1, 'TOXINA BOTULÍNICA', 'Es una sustancia que se utiliza para disminuir las líneas de expresión.', 'Se inyecta la toxina botulínica con la finalidad de bloquear la transmisión del impulso nervioso a través del músculo, la piel que lo cubre se relaja y las líneas de expresión se suavizan.\r\nLos efectos de la toxina botulínica, comienzan a notarse a partir de los cinco a diez días después de su infiltración y se mantiene entre cuatro y seis meses.	'),
(52, 26, 2, 'TOXINA BOTULÍNICA', 'É uma substância usada para reduzir as linhas de expressão .', 'A toxina botulínica é injectado , a fim de bloquear a transmissão de impulsos nervosos através do músculo , da pele sobreposta e relaxa as linhas de expressão são suavizadas .\r\nOs efeitos da toxina botulínica , começa a ser sentida após cinco a dez dias após a infiltração e realizada de quatro a seis meses.'),
(53, 27, 1, 'CIRUGÍA RECONSTRUCTIVA', 'La cirugía reconstructiva tiene como finalidad mejorar la salud del paciente y se aplica en diferentes casos', 'La cirugía reconstructiva tiene como finalidad mejorar la salud del paciente y se aplica en diferentes casos: corregir secuelas de procedimientos oncológicos o cirugía oncoplástica, cirugía maxilofacial, quemaduras, cirugía de la mano y microcirugía. Todos estos procedimientos son orientados a recuperar la funcionalidad y la estética.'),
(54, 27, 2, 'CIRUGÍA RECONSTRUTIVA', 'A cirurgia reconstrutiva visa melhorar a saúde do paciente e aplicada em casos diferentes', 'A cirurgia reconstrutiva visa melhorar a saúde do paciente e é aplicada em diferentes casos: correção de seqüelas de câncer procedimentos oncoplasticos ou cirurgia, cirurgia maxilo-facial, queimaduras, cirurgia de mão e microcirurgia. Estes procedimentos são projetados para restaurar a função e estética do corpo.'),
(55, 28, 1, 'RELLENOS FACIALES', 'Consiste en devolver el volumen o mejorar el aspecto estético de la piel del rostro con Ácido Hialuronico', 'A través de este procedimiento se realza el volumen de los labios, se remodela su forma, se tensa la piel circundante y rellena líneas de expresión y arrugas moderadas. Es un procedimiento muy fácil de realizar \r\nEl paciente puede incorporarse a su trabajo inmediatamente después del procedimiento.\r\nLos resultados suelen durar en promedio 6 meses, aunque pueden ser necesarios retoques en las zonas que son más propensas al movimiento.'),
(56, 28, 2, 'ENCHIMENTOS FACIAIS', 'É para retornar o volume ou melhorar a aparência da pele facial com ácido hialurónico', 'Através deste processo, o volume dos lábios é aumentado, a sua forma é remodelada, a pele circundante é tensada e sao preenchidas as linhas e rugas moderadas . É um processo muito fácil.\r\nO paciente pode voltar ao trabalho imediatamente após o procedimento.\r\nOs resultados geralmente duram uma média de seis meses , embora possam ser necessários ajustes nas áreas que são mais propensas ao movimento.'),
(57, 29, 1, 'PERFILOPLASTIA', '', 'La perfiloplastia es el conjunto de cirugías estéticas que se realizan con el fin de armonizar y equilibrar todas las estructuras faciales mayores que determinan un perfil bello, como son la nariz, los pómulos y el mentón.\r\nLa incapacidad es de siete a diez días.\r\n	'),
(58, 29, 2, 'PERFILOPLASTIA', '', 'A Perfiloplastia é o conjunto de cirurgias cosméticas que são realizados a fim de harmonizar e equilibrar todas as estruturas faciais que determinam uma multa maior visibilidade , como o nariz, maçãs do rosto e queixo.\r\nA deficiência é de sete a dez dias.	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_doc`
--

CREATE TABLE IF NOT EXISTS `curriculum_doc` (
  `id_curriculum` int(11) NOT NULL AUTO_INCREMENT,
  `img_curriculum` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_curriculum`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `curriculum_doc`
--

INSERT INTO `curriculum_doc` (`id_curriculum`, `img_curriculum`) VALUES
(1, 'DSC_0045 v2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_contacto`
--

CREATE TABLE IF NOT EXISTS `datos_contacto` (
  `id_datos_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `coordenadas_mapa` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `clave_email` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fax` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `instagram` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `googlepluss` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_datos_contacto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `datos_contacto`
--

INSERT INTO `datos_contacto` (`id_datos_contacto`, `direccion`, `coordenadas_mapa`, `email`, `clave_email`, `telefono`, `fax`, `facebook`, `twitter`, `instagram`, `googlepluss`) VALUES
(1, '#213 Calle La Paz, La Santisima Trinidad, Departamento de Beni, Bolivia', '-14.836794, -64.906962', 'contacto@doctorjulioreyes.com', 'sadsads', '+591-7688-9000', '', 'https://facebook.com/doctorjulioreyes', 'https://twitter.com/campusb', 'https://instagram.com/doctorjulioreyes', 'vcxvxvx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE IF NOT EXISTS `idioma` (
  `id_idioma` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_idioma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id_idioma`, `idioma`) VALUES
(1, 'spanish'),
(2, 'portugues');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_procedimientos`
--

CREATE TABLE IF NOT EXISTS `img_procedimientos` (
  `id_img_procedimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_procedimiento` int(5) DEFAULT NULL,
  `img_antes` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_despues` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_img_procedimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_testimonios`
--

CREATE TABLE IF NOT EXISTS `img_testimonios` (
  `id_img_testimonio` int(11) NOT NULL AUTO_INCREMENT,
  `id_testimonio` int(5) DEFAULT NULL,
  `nombre_img` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_img_testimonio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimientos`
--

CREATE TABLE IF NOT EXISTS `procedimientos` (
  `id_procedimiento` int(11) NOT NULL AUTO_INCREMENT,
  `img_principal_procedimiento` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `orden_inicio` int(11) NOT NULL,
  PRIMARY KEY (`id_procedimiento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `procedimientos`
--

INSERT INTO `procedimientos` (`id_procedimiento`, `img_principal_procedimiento`, `orden_inicio`) VALUES
(9, 'rinoplastia.jpg', 1),
(10, 'blefaroplastia 2.jpg', 0),
(11, 'otoplastia -sat.jpg', 0),
(12, 'lipoescultura.jpg', 1),
(13, 'aumento mamario.jpg', 0),
(14, 'Abdominoplastia.jpg', 0),
(15, 'mastopexia -sat.jpg', 0),
(16, 'mentoplastia.jpg', 0),
(17, 'lifting facial.jpg', 0),
(18, 'Reduccion mamaria.jpg', 0),
(19, 'ginecomastia.jpg', 0),
(20, 'bichectomia.jpg', 0),
(22, 'frontoplastia -sat.jpg', 0),
(23, 'Aumento de Gluteo.jpg', 0),
(24, 'braquioplastia.jpg', 0),
(25, 'rejuvenecimiento_vaginal -sat.jpg', 0),
(26, 'botox.jpg', 0),
(27, 'reconstructiva 2.jpg', 1),
(28, 'rellenos faciales.jpg', 0),
(29, 'perfiloplastia.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `slider` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id_slider`, `slider`, `orden`) VALUES
(36, 'slider 1b.jpg', 1),
(38, 'slider 2c.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `id_testimonio` int(11) NOT NULL AUTO_INCREMENT,
  `nombres_del_descriptor` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_del_descriptor` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo_testimonio` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle_testimonio` text COLLATE utf8_spanish_ci,
  `img_principal_testimonio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `aprobado` int(11) NOT NULL,
  `orden_inicio` int(11) NOT NULL,
  PRIMARY KEY (`id_testimonio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_testimonio`, `nombres_del_descriptor`, `email_del_descriptor`, `titulo_testimonio`, `detalle_testimonio`, `img_principal_testimonio`, `aprobado`, `orden_inicio`) VALUES
(23, 'Maria Elena Perez', 'contacto@doctorjuioreyes.com', '100% Satisfecha', 'Quería un pequeño cambio en mi imagen, me realice la cirugía  con la cual quede satisfecha por los resultados ya que se ve natural, la atención impartida por el Doctor es calidad, y crea un ambiente de confianza', 'user.png', 1, 1),
(24, 'AMPARITO CHAVEZ', 'contacto@doctorjulioreyes.com', 'Excelente atención', 'La atención es muy buena... En la operación no se siente ningún dolor... La recuperación es rápida y sin dolor y el resultado fue el esperado', 'user.png', 1, 1),
(25, 'Stefania Melgar Aguilera', 'contacto@doctorjulioreyes.com', 'Muchisimas gracias Doctor Reyes', 'Me llamo Stefania Melgar Aguilera, tengo 14 años y estoy muy agradecida con el Dr. Julio Reyes  por la operación que me hizo en mis orejas porque aparte de que quedé como yo deseaba mi autoestima se niveló, muchas gracias Doctor por esa calidad humana que usted tiene y por ser un instrumento de Dios. Él lo pondrá siempre en un lugar donde marque la diferencia.', 'user.png', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `clave`, `nombres`, `apellidos`, `rol`) VALUES
(1, 'doctorjulio', '9fe308e08c6f406366163842f43bac3c083d5716', 'Jhonny', 'Vasquez', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
