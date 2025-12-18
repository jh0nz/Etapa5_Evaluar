#import "@preview/lilaq:0.5.0" as lq
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot
#import "@preview/plotst:0.2.0" as pst
#import "@preview/based:0.2.0": base64
#let file = json("images.json")

#import "heuristicas.typ": heuristicas
#import "Gutierrez_Hinojosa_Jhon.typ": heuristicas_eval as eval_jhon
#import "Anturiano_Eulate_Eleonor.typ": heuristicas_eval as eval_eleonor
#import "Merudia_Calderón_Dayeza.typ": heuristicas_eval as eval_dayeza
#import "Villarpando_Rodriguez_Joaquin_Alejandro.typ": heuristicas_eval as eval_joaquin

#set page(width: 8.5in, height: 11in, margin: 1in, header: none)
#set text(size: 13pt, lang: "es")
#set heading(numbering: "1.")
#show heading: set text(size: 1.2em)
#show heading: set block(spacing: 1.2em)

#let today = datetime.today()
#show link: set text(fill: blue)
#show link: underline
#show bibliography: set heading(numbering: "1.")


#set par(leading: 1.1em, spacing: 1.2em, justify: true)
#let cabezera_barata = {
  block(spacing: 0em)[
    #table(
      columns: (13.5%, 73%, 13.5%),
      align: horizon + center,
      stroke: none,
      table.cell(inset: 0pt)[ #image(base64.decode(file.main.umss), width: 70%)],
      table.cell(inset: 0pt)[
        #text(size: 14pt)[
          #table(
            columns: 1,
            stroke: none,
            [
              *UNIVERSIDAD MAYOR DE SAN SIMÓN*
            ],
            [
              *FACULTAD DE CIENCIAS Y TECNOLOGÍA*
            ],
          )
        ]

        #text(size: 14pt)[*CARRERA DE INGENIERÍA INFORMÁTICA*]
      ],
      table.cell(inset: 0pt)[#image(base64.decode(file.main.fcyt), width: 100%)],
    )
  ]
}

#let fecha_entrega = datetime(year: 2025, month: 12, day: 18)

#align(center)[
  #cabezera_barata
  #v(4cm)
  #table(
    columns: 2,
    align: (left, left),
    stroke: none,
    fill: none,
    [*Tema:*], [#upper[Trabajando la Etapa 5: EVALUAR]],

    [], [],
    [*Materia:*], [#upper[Interacción Humano Computador]],
    [], [],
    [*Integrantes:*], [#upper[ Anturiano Eulate Eleonor Camile - 202206250] ],
    [], [#upper[Gutiérrez Hinojosa Jhon Deymar] - 202107786],
    [], [#upper[Merudia Calderón Dayeza] - 202202138],
    [], [#upper[Villarpando rodriguez joaquin Alejandro - 201909840 ] ],
    [], [],
    [*Grupo:*], [API],
    [], [],
    [*Docente:*], [#upper[LIC. Flores Villarroel Corina Justina]],
    [], [],
    [*Fecha:*], [#fecha_entrega.display("[day]/[month]/[year]")],
  )
]

#v(5cm)
#align(center)[COCHABAMBA-BOLIVIA]
#set text(size: 12pt)
#pagebreak()

// indice
#outline(indent: auto, title: [CONTENIDO])

#pagebreak()
#counter(page).update(1)
#set page(
  footer: [
    #block[
      #line(length: 100%)
      #h(1fr)
      #context counter(page).display()
    ]
  ],
)

#set text(size: 11pt)
#set par(leading: 1.145em)
#show image: it => align(center, it)
#set table(
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + rgb("E0E0E0") } else { none },
    right: none,
    top: if y > 0 { 0.5pt + rgb("E0E0E0") } else { 1pt + rgb("2C3E50") },
    bottom: if y == 0 { 1.5pt + rgb("2C3E50") } else { 0.5pt + rgb("E0E0E0") },
  ),
  inset: 4pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { rgb("34495E") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
)
#show table.cell: it => {
  if it.y == 0 {
    set text(white, weight: "bold")
    it
  } else { it }
}

= Introducción

La evaluación heurística es un método de inspección de usabilidad que consiste en evaluar un producto por parte de evaluadores expertos usando principios reconocidos de usabilidad @nielsen1994usability. Este método, desarrollado por Jakob Nielsen y Rolf Molich @molich1990improving, permite identificar problemas de usabilidad de manera sistemática y efectiva @jeffries1991user.

Este informe presenta los resultados de la evaluación heurística realizada sobre el prototipo del sitio web de Posgrado de la Facultad de Ciencias y Tecnología de la Universidad Mayor de San Simón. El objetivo es identificar problemas de usabilidad y proponer recomendaciones para mejorar la experiencia del usuario.

El proceso de evaluación fue llevado a cabo de manera independiente por cada miembro del equipo, aplicando las heurísticas según un conjunto de tareas prioritarias. Posteriormente, se consolidaron los hallazgos para generar este informe grupal.

= Marco de Referencia

La evaluación se fundamenta en las 10 reglas heurísticas de usabilidad de Jakob Nielsen @nielsen1990heuristic @nielsen1994heuristic, que son ampliamente reconocidas en la industria como principios fundamentales para el diseño de interfaces usables:

1. Visibilidad del estado del sistema
2. Relación entre el sistema y el mundo real
3. Control y libertad del usuario
4. Consistencia y estándares
5. Prevención de errores
6. Reconocimiento antes que recuerdo
7. Flexibilidad y eficiencia de uso
8. Estética y diseño minimalista
9. Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de errores
10. Ayuda y documentación

#pagebreak()

= Escenarios de Evaluación

== Guía de Evaluación Heurística: Posgrado FCyT

- Sitio objetivo y despliegue para pruebas: #link("https://postgrado-umss.vercel.app")
- Repositorio evaluado: #link("https://github.com/Dantec01/PostgradoUMSSPrototipo.git")
- Equipo autor: root compartió el repositorio para su revisión.

== Usuario que accede al sitio

Estudiante de pregrado en fase de titulación o egresado en una carrera de la FCYT de la UMSS, que busca opciones de especialización y posibles rutas de titulación a través de programas de posgrado ofrecidos por la facultad.

=== Tareas Prioritarias para la Evaluación

Para realizar una evaluación objetiva y representativa, se simularán las siguientes tareas clave que ejecutaría un usuario real en su búsqueda de información sobre programas de posgrado:

1. *Explorar la oferta académica*: Revisar los tipos de programas disponibles (maestrías y diplomados) desde la página de inicio.

2. *Consultar detalles de un programa*: Seleccionar un programa de interés y acceder a 'Más Información' para conocer costo, duración, requisitos y modalidad. //*(Nota: solo el diplomado de Ciencia de Datos ofrece PDFs funcionales actualmente)*

3. *Buscar información de inscripción*: Utilizar el chatbot para consultar procedimientos de inscripción o explorar guías disponibles.

4. *Filtrar por área de estudio*: Buscar diplomados en áreas específicas mediante buscador o filtros.

5. *Localizar contactos e información adicional*: Encontrar avisos, noticias y vías de contacto navegando por secciones de información o consultando al chatbot.

#pagebreak()

= Metodología de Evaluación

== Proceso de Evaluación

El proceso de evaluación seguido en este trabajo se estructuró de la siguiente manera:

+ Evaluación independiente: Cada miembro del equipo evaluador procedió de forma independiente a analizar el prototipo aplicando las 10 heurísticas de usabilidad de Jakob Nielsen siguiendo las tareas planteadas. Este enfoque independiente reduce el sesgo y aumenta la cobertura de problemas detectados @nielsen1990heuristic.

+ Registro de hallazgos: Se documentaron de manera detallada las violaciones a las heurísticas, especificando para cada caso la descripción del problema, el contexto de aparición y evidencia @nielsen1994heuristic.

+ Análisis grupal: El equipo se reunió para intercambiar, discutir y analizar los resultados individuales, identificando patrones comunes y priorizando los problemas según su severidad, frecuencia e impacto.

+ Consolidación de resultados: Se elaboró este informe grupal que lista los problemas identificados junto con sus características de severidad y recomendaciones de mejora.

== Criterios de Evaluación

Para cada pregunta de evaluación se asignó una puntuación según los siguientes criterios:

- *1* = Sí (cumple completamente): El sistema satisface el criterio de manera completa y efectiva.
- *0.5* = Mejorable (cumple parcialmente): El sistema satisface el criterio de manera parcial o con limitaciones significativas.
- *0* = No (no cumple): El sistema no satisface el criterio o lo viola.
- *N/A* = No aplica: El criterio no es relevante para este contexto.

#pagebreak()

= Evaluación Heurística Detallada

== Heurísticas y Preguntas de Evaluación

#table(
  columns: (1fr, 4fr),
  align: (center + horizon, left + top),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + rgb("E0E0E0") } else { none },
    right: none,
    top: if y > 0 { 0.5pt + rgb("E0E0E0") } else { 1pt + rgb("2C3E50") },
    bottom: if y == 0 { 1.5pt + rgb("2C3E50") } else { 0.5pt + rgb("E0E0E0") },
  ),
  inset: 6pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { rgb("34495E") } else if calc.odd(y) { white } else { rgb("F8F9FA") },

  table.header(
    text(weight: "bold", fill: white, size: 10pt)[Heurística],
    text(weight: "bold", fill: white, size: 10pt)[Preguntas de Evaluación],
  ),

  text(size: 9pt)[Visibilidad del Estado del Sistema],
  text(size: 9pt)[
    - ¿Se muestra visualmente el estado de carga?
    - ¿Se indica la página actual?
    - ¿Se informa el resultado de acciones (búsquedas, filtros)?
    - ¿Las páginas vacías o en desarrollo muestran mensajes claros?
    - ¿Los elementos interactivos dan retroalimentación visual?
    - ¿Las migas de pan reflejan la ubicación?
  ],

  text(size: 9pt)[Relación entre el Sistema y el Mundo Real],
  text(size: 9pt)[
    - ¿La terminología es familiar para el usuario?
    - ¿Enlaces e íconos apuntan a las herramientas correctas?
    - ¿Etiquetas y filtros son claras y sencillas?
    - ¿Contactos están en formato copiable y correcto?
    - ¿Los errores usan lenguaje cotidiano?
    - ¿Mapas y documentos están bien etiquetados?
    - ¿El chatbot es natural y conversacional?
  ],

  text(size: 9pt)[Control y Libertad del Usuario],
  text(size: 9pt)[
    - ¿Se vuelve al Inicio con un solo clic?
    - ¿Se puede cambiar entre tipos de programas sin regresar?
    - ¿Existe botón claro para borrar filtros?
    - ¿Los avisos emergentes pueden cerrarse fácilmente?
    - ¿Es fácil copiar datos de contacto?
    - ¿Hay rutas de escape visibles si falla una acción?
  ],

  text(size: 9pt)[Consistencia y Estándares],
  text(size: 9pt)[
    - ¿Los enlaces y menús funcionan igual en todas las páginas?
    - ¿El diseño es coherente (colores, tipografías, botones)?
    - ¿Los controles mantienen el mismo comportamiento?
    - ¿Las etiquetas y términos son consistentes?
    - ¿El logo y rutas principales llevan siempre al inicio?
  ],

  text(size: 9pt)[Prevención de Errores],
  text(size: 9pt)[
    - ¿Se ocultan o deshabilitan enlaces no funcionales?
    - ¿El buscador sugiere correcciones o alternativas?
    - ¿Los formularios señalan campos obligatorios y errores?
    - ¿Los enlaces e imágenes rotas se comunican?
    - ¿Hay opciones para recuperar una acción fallida?
    - ¿Los mensajes de error ayudan a resolver?
  ],

  text(size: 9pt)[Reconocimiento antes que Recuerdo],
  text(size: 9pt)[
    - ¿Se ven los filtros aplicados?
    - ¿El contacto es fácil de encontrar?
    - ¿Nombres de programas visibles?
    - ¿Menú accesible al hacer scroll?
    - ¿Iconos identifican categorías?
    - ¿Buscador sugiere en tiempo real?
    - ¿Se recuerdan búsquedas previas?
  ],

  text(size: 9pt)[Flexibilidad y Eficiencia de Uso],
  text(size: 9pt)[
    - ¿Los usuarios frecuentes realizan tareas más rápido?
    - ¿Se accede fácilmente a novedades y avisos?
    - ¿Buscador y filtros entregan resultados útiles?
    - ¿La navegación móvil es fluida?
    - ¿Hay atajos o accesos directos?
    - ¿Permiten comunicación rápida?
  ],

  text(size: 9pt)[Estética y Diseño Minimalista],
  text(size: 9pt)[
    - ¿El diseño es claro y sin elementos innecesarios?
    - ¿La información se lee rápido?
    - ¿Colores y tipografías son coherentes?
    - ¿Espaciado y alineación adecuados?
    - ¿Las imágenes aportan calidad?
    - ¿Transmite confianza y profesionalismo?
  ],

  text(size: 9pt)[Reconocer, Diagnosticar y Recuperarse de Errores],
  text(size: 9pt)[
    - ¿Los errores son claros y comprensibles?
    - ¿Se indican pasos o soluciones para continuar?
    - ¿Hay páginas para contenido no disponible (404)?
    - ¿Se sugieren alternativas cuando falla la búsqueda?
    - ¿Se informa de fallos sin molestar?
    - ¿"Próximamente" indica cuándo?
    - ¿Existen rutas para volver atrás?
  ],

  text(size: 9pt)[Ayuda y Documentación],
  text(size: 9pt)[
    - ¿Hay guía de admisión visible?
    - ¿Existen FAQs o manuales?
    - ¿Se distingue contacto técnico vs. académico?
    - ¿Se indican las modalidades?
    - ¿Contexto institucional claro?
    - ¿La ayuda es fácil de buscar?
    - ¿Documentos actualizados?
    - ¿Vías de soporte claras?
    - ¿Chatbot preciso y útil?
  ],
)

#pagebreak()

== Hallazgos y Análisis

Después de la evaluación individual realizada por los cuatro miembros del equipo, se consolidaron los resultados cuantitativos de la evaluación heurística. La siguiente tabla presenta las puntuaciones obtenidas por cada heurística, evaluadas de forma independiente por cada integrante del equipo.

Las puntuaciones se calcularon considerando el peso asignado a cada pregunta dentro de cada heurística, donde 1.0 representa el cumplimiento completo del criterio, 0.5 indica cumplimiento parcial con oportunidades de mejora, y 0.0 señala incumplimiento del criterio evaluado. El total para cada evaluador representa la suma de las puntuaciones de las 10 heurísticas, permitiendo obtener una visión global de la usabilidad del prototipo.

=== Tabla de Puntuaciones por Heurística

#let estudiantes = (
  (nombre: "Jhon Gutiérrez", eval: eval_jhon),
  (nombre: "Eleonor Anturiano", eval: eval_eleonor),
  (nombre: "Dayeza Merudia", eval: eval_dayeza),
  (nombre: "Joaquin Villarpando", eval: eval_joaquin),
)

#let calcular_puntuacion(preguntas) = {
  let peso_aplicable = 0.0
  let punt_obtenida = 0.0
  for p in preguntas {
    if p.puntuacion != none {
      peso_aplicable += p.peso
      punt_obtenida += p.puntuacion * p.peso
    }
  }
  if peso_aplicable > 0 { punt_obtenida / peso_aplicable } else { 0.0 }
}

// Calcular puntuaciones para todos
#let resultados = ()
#for est in estudiantes {
  let puntuaciones = ()

  for h in est.eval {
    let p = calcular_puntuacion(h.preguntas)
    puntuaciones.push(p)
  }

  let total = puntuaciones.sum()
  resultados.push((nombre: est.nombre, puntuaciones: puntuaciones, total: total))
}

// Calcular promedio general
#let promedio_general = resultados.map(r => r.total).sum() / resultados.len()

#table(
  columns: (2.5fr, 1.2fr, 1.2fr, 1.2fr, 1.2fr, 1.2fr),
  align: (left, center, center, center, center, center),
  stroke: 0.5pt + rgb("D0D0D0"),
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { rgb("FFFFFF") } else { rgb("F5F7FA") },

  table.header(
    text(weight: "bold", fill: white, size: 11pt)[Heurística],
    ..for r in resultados { (text(weight: "bold", fill: white, size: 11pt)[#r.nombre],) },
    text(weight: "bold", fill: white, size: 11pt)[Promedio],
  ),

  ..for (i, h) in heuristicas.enumerate() {
    let fila = (text(fill: rgb("2C3E50"), size: 10pt)[#h.nombre],)
    for r in resultados {
      fila.push(text(weight: "bold", fill: rgb("1F4788"), size: 10pt)[#calc.round(r.puntuaciones.at(i), digits: 2)])
    }
    let promedio_h = resultados.map(r => r.puntuaciones.at(i)).sum() / resultados.len()
    fila.push(text(weight: "bold", fill: rgb("27AE60"), size: 10pt)[#calc.round(promedio_h, digits: 2)])
    fila
  },

  text(weight: "bold", fill: rgb("34495E"), size: 11pt)[TOTAL],
  ..for r in resultados { (text(weight: "bold", fill: rgb("1F4788"), size: 11pt)[#calc.round(r.total, digits: 2)],) },
  text(weight: "bold", fill: rgb("27AE60"), size: 11pt)[#calc.round(promedio_general, digits: 2)],
)

#let (categoria_text, categoria_color) = if promedio_general < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if promedio_general <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if promedio_general <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if promedio_general <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (1fr, auto),
  align: left,
  stroke: 0.5pt + rgb("D0D0D0"),
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else { categoria_color.lighten(85%) },

  table.header(
    text(weight: "bold", fill: white, size: 11pt)[Clasificación],
    text(weight: "bold", fill: white, size: 11pt)[Puntuación],
  ),

  text(weight: "bold", fill: categoria_color, size: 11pt)[#categoria_text],
  text(weight: "bold", fill: categoria_color, size: 11pt)[#calc.round(promedio_general, digits: 2)],
)

=== Análisis de Resultados

La evaluación arrojó una puntuación promedio general de #calc.round(promedio_general, digits: 2) puntos sobre 10, clasificando al prototipo en la categoría "#categoria_text". Este resultado evidencia un sistema funcional con oportunidades significativas de mejora en usabilidad.

La distribución de puntuaciones de las 10 heurísticas evaluadas revela una marcada polarización entre áreas críticas, moderadas y fortalezas. Las áreas más deficientes corresponden a Recuperación de Errores (0.23), Prevención de Errores (0.31) y Ayuda y Documentación (0.36), representando 3 heurísticas críticas que requieren atención inmediata. Las 5 heurísticas con puntuaciones moderadas (0.57-0.69) incluyen aspectos de visibilidad, control de usuario, consistencia, flexibilidad y diseño que necesitan mejoras pero no son críticos. En contraste, solo 2 heurísticas son fortalezas: Reconocimiento vs Recuerdo (0.75) y Relación con el Mundo Real (0.71).

#figure(
  cetz.canvas({
    import cetz.draw: *

    let truncate_name = name => {
      let clusters = name.clusters()
      if clusters.len() <= 20 { name } else { clusters.slice(0, 17).join("") + "..." }
    }

    let bar_colors = (
      rgb("FF0000"), rgb("FF7F00"), rgb("FFFF00"), rgb("00CC00"), rgb("0099FF"),
      rgb("4B0082"), rgb("9400D3"), rgb("FF1493"), rgb("00CED1"), rgb("FFD700"),
    )

    let data = ()
    for (i, h) in heuristicas.enumerate() {
      let promedio_h = resultados.map(r => r.puntuaciones.at(i)).sum() / resultados.len()
      data.push((truncate_name(h.nombre), promedio_h))
    }

    chart.barchart(
      size: (8, 4.5),
      label-key: 0,
      value-key: 1,
      x-tick-step: 0.1,
      y-label: "Heurística",
      x-label: "Puntuación Promedio",
      bar-style: (idx => (fill: bar_colors.at(idx))),
      data,
    )
  }),
  caption: [Puntuación promedio por heurística (escala 0-1)],
)

El gráfico de barras anterior ilustra la distribución completa de puntuaciones, donde la concentración de barras rojas y naranjas en las primeras posiciones evidencia la urgencia de intervención en aspectos de manejo de errores y documentación. Las 5 heurísticas con puntuaciones moderadas (0.57-0.69) representan oportunidades de mejora que, aunque no críticas, impactan la eficiencia y claridad del sistema. Solo 2 heurísticas superan el umbral de 0.70 para ser consideradas fortalezas.

#figure(
  cetz.canvas({
    import cetz.draw: *

    let criticas = 0
    let moderadas = 0
    let buenas = 0

    for (i, h) in heuristicas.enumerate() {
      let promedio_h = resultados.map(r => r.puntuaciones.at(i)).sum() / resultados.len()
      let promedio_redondeado = calc.round(promedio_h, digits: 2)
      if promedio_redondeado < 0.4 { criticas += 1 }
      else if promedio_redondeado < 0.7 { moderadas += 1 }
      else { buenas += 1 }
    }

    let data = (
      ("Críticas < 0.4", criticas),
      ("Moderadas 0.4-0.7", moderadas),
      ("Fortalezas > 0.7", buenas),
    )

    let slice_colors = (
      (fill: rgb("FF0000")),
      (fill: rgb("FF7F00")),
      (fill: rgb("00CC00")),
    )

    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3.5,
      stroke: none,
      slice-style: (idx => slice_colors.at(idx)),
      inner-radius: 1,
      outset: 3,
      inner-label: (content: (value, label) => [#text(white, weight: "bold", size: 12pt, str(value))], radius: 110%),
      outer-label: (content: (value, label) => [#label], radius: 125%),
    )
  }),
  caption: [Clasificación de heurísticas por nivel de severidad],
)

La gráfica circular muestra la distribución de heurísticas según su nivel de severidad calculado a partir del promedio de las cuatro evaluaciones independientes. Esta distribución sugiere que el prototipo cuenta con bases sólidas en algunas áreas, pero requiere atención inmediata en mecanismos de asistencia al usuario y manejo de situaciones excepcionales.

La variabilidad entre evaluadores (rango 4.97-6.32 puntos) se mantiene dentro de parámetros esperados para evaluaciones heurísticas independientes, validando la robustez metodológica. Esta convergencia parcial en las puntuaciones individuales fortalece la confiabilidad de los hallazgos críticos identificados por consenso.

= Consolidación de Hallazgos y Recomendaciones

El análisis grupal identificó patrones recurrentes y problemas críticos basados en las evaluaciones independientes. Se priorizan hallazgos con evidencia específica (campos extra) sobre puntuaciones aisladas, enfocándose en severidad, frecuencia e impacto en la experiencia del usuario.

== Resumen Ejecutivo de Hallazgos

#table(
  columns: (1.5fr, 1fr, 1fr, 4fr),
  align: (left, center, center, left),
  fill: (x, y) => if y == 0 { rgb("34495E") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  table.header(
    text(weight: "bold", fill: white, size: 10pt)[Heurística],
    text(weight: "bold", fill: white, size: 10pt)[Puntuación],
    text(weight: "bold", fill: white, size: 10pt)[Severidad],
    text(weight: "bold", fill: white, size: 10pt)[Problema Principal],
  ),
  
  [Heurísticas Críticas], text(fill: rgb("E74C3C"), weight: "bold")[< 0.4], text(fill: rgb("E74C3C"), weight: "bold")[CRÍTICA], [H9: Recuperación de Errores (0.23), H5: Prevención de Errores (0.31), H10: Ayuda y Documentación (0.36)],
  [Heurísticas Moderadas], text(fill: rgb("F39C12"), weight: "bold")[0.4-0.7], text(fill: rgb("F39C12"))[MODERADA], [H1: Visibilidad (0.57), H7: Flexibilidad (0.59), H3: Control (0.66), H4: Consistencia (0.69), H8: Diseño (0.68)],
  [Heurísticas Fortaleza], text(fill: rgb("27AE60"), weight: "bold")[>0.7], text(fill: rgb("27AE60"))[FORTALEZA], [H6: Reconocimiento vs Recuerdo (0.75), H2: Relación Mundo Real (0.71)],
)

== Problemas Críticos

#table(
  columns: (1.5fr, 1fr, 3fr, 3fr),
  align: (left, center, left, left),
  fill: (x, y) => if y == 0 { rgb("E74C3C").lighten(60%) } else if calc.odd(y) { white } else { rgb("FADBD8") },
  stroke: 1pt + rgb("E74C3C").lighten(40%),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", size: 10pt)[*Heurística*],
    text(weight: "bold", size: 10pt)[*Punt.*],
    text(weight: "bold", size: 10pt)[*Problemas Detectados*],
    text(weight: "bold", size: 10pt)[*Recomendaciones*],
  ),
  
  [H9: Recuperación de Errores],
  text(fill: rgb("E74C3C"), weight: "bold")[0.23],
  [• Sin página 404 personalizada\
   • Búsqueda sin resultados sin alternativas\
   • Mensajes de error genéricos\
   • Fallos de carga silenciosos],
  [• Diseñar página 404 con buscador y enlaces\
   • Mostrar programas populares en búsquedas vacías\
   • Manejo global de errores estructurado\
   • Reintentos automáticos y notificaciones],
  
  [H5: Prevención de Errores],
  text(fill: rgb("E74C3C"), weight: "bold")[0.29],
  [• Enlace a sección "Doctorados" vacía activo\
   • Buscador sin autocomplete\
   • Validación de formularios deficiente\
   • Filtros sin botón "Limpiar"],
  [• Deshabilitar enlace a Doctorados\
   • Búsqueda inteligente con corrección ortográfica\
   • Marcar campos obligatorios (\*) con mensajes claros\
   • Botón visible "Limpiar filtros"],
  
  [H10: Ayuda y Documentación],
  text(fill: rgb("E74C3C"), weight: "bold")[0.37],
  [• Sin guía de admisión visible\
   • FAQs inexistentes\
   • Contactos no diferenciados\
   • Documentación sin fecha],
  [• Sección Admisión en menú principal\
   • Página FAQs por categorías\
   • Segregar contactos técnico vs. académico\
   • Agregar fecha y versión a documentos],
)

== Problemas Moderados

#table(
  columns: (1.5fr, 1fr, 3fr, 3fr),
  align: (left, center, left, left),
  fill: (x, y) => if y == 0 { rgb("F39C12").lighten(70%) } else if calc.odd(y) { white } else { rgb("FEF5E7") },
  stroke: 1pt + rgb("F39C12").lighten(40%),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", size: 10pt)[*Heurística*],
    text(weight: "bold", size: 10pt)[*Punt.*],
    text(weight: "bold", size: 10pt)[*Problemas Detectados*],
    text(weight: "bold", size: 10pt)[*Recomendaciones*],
  ),
  
  [H1: Visibilidad del Estado],
  text(fill: rgb("F39C12"), weight: "bold")[0.57],
  [• Ausencia total de breadcrumbs\
   • Feedback visual inconsistente\
   • Ubicación deficiente en móvil],
  [• Breadcrumbs con esquema jerárquico\
   • Estandarizar estados hover/active\
   • Indicador de sección visible en móvil],
  
  [H7: Flexibilidad y Eficiencia],
  text(fill: rgb("F39C12"), weight: "bold")[0.59],
  [• Diseño responsive subóptimo\
   • Sin atajos de teclado\
   • Navegación móvil mejorable],
  [• Aplicar mobile-first design\
   • Implementar atajos (búsqueda, cerrar, inicio)\
   • Optimizar flujo en pantallas pequeñas],
  
  [H3: Control y Libertad],
  text(fill: rgb("F39C12"), weight: "bold")[0.66],
  [• Sin botón para limpiar filtros\
   • Rutas de escape limitadas\
   • Difícil copiar datos de contacto],
  [• Agregar botón "Limpiar filtros" visible\
   • Implementar rutas de escape claras\
   • Mejorar copiabilidad de contactos],
  
  [H4: Consistencia y Estándares],
  text(fill: rgb("F39C12"), weight: "bold")[0.69],
  [• Algunos componentes con comportamiento variable\
   • Necesita refuerzo en uniformidad],
  [• Unificar patrones de interacción\
   • Guía de estilo de componentes],
  
  [H8: Diseño Minimalista],
  text(fill: rgb("F39C12"), weight: "bold")[0.68],
  [• Nombre del programa duplicado en imagen y título\
   • Redundancia informativa],
  [• Eliminar texto redundante de imágenes\
   • Usar overlay solo para metadata],
)

== Fortalezas Identificadas

#table(
  columns: (1.5fr, 1fr, 4fr),
  align: (left, center, left),
  fill: (x, y) => if y == 0 { rgb("27AE60").lighten(70%) } else if calc.odd(y) { white } else { rgb("E8F8F5") },
  stroke: 1pt + rgb("27AE60").lighten(40%),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", size: 10pt)[*Heurística*],
    text(weight: "bold", size: 10pt)[*Punt.*],
    text(weight: "bold", size: 10pt)[*Aspectos a Preservar*],
  ),
  
  [H6: Reconocimiento vs Recuerdo],
  text(fill: rgb("27AE60"), weight: "bold")[0.75],
  [Filtros visibles, contactos accesibles, nombres de programas destacados],
  
  [H2: Relación Mundo Real],
  text(fill: rgb("27AE60"), weight: "bold")[0.71],
  [Lenguaje académico apropiado, chatbot conversacional efectivo],
)


== Priorización de Implementación

#table(
  columns: (1fr, 3fr, 1fr),
  align: (center, left, center),
  table.header(
    [*Prioridad*], [*Recomendación*], [*Severidad*],
  ),
  [P0 (Crítico)], [Validar formularios y mejorar mensajes de error], [Alta],
  [P0], [Crear página 404 personalizada], [Alta],
  [P0], [Agregar autocompletado al buscador], [Alta],
  [P1 (Alta)], [Implementar breadcrumbs globales], [Media],
  [P1], [Desarrollar guía de admisión y FAQs], [Media],
  [P1], [Unificar componentes de búsqueda], [Media],
  [P2 (Media)], [Estandarizar feedback visual], [Baja],
  [P2], [Optimizar diseño móvil], [Baja],
  [P2], [Diferenciar contactos por tipo], [Baja],
)

= Conclusiones

La evaluación heurística del prototipo del sitio web de Posgrado FCyT-UMSS fue realizada por cuatro evaluadores independientes aplicando las 10 heurísticas de Nielsen @nielsen1994heuristic. La puntuación promedio obtenida fue de #calc.round(promedio_general, digits: 2)/10, clasificando el producto en la categoría "#categoria_text".

== Síntesis de Resultados

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, center, left),
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  stroke: 1pt + rgb("D0D0D0"),
  inset: 8pt,
  
  table.header(
    text(weight: "bold", fill: white, size: 10pt)[Categoría],
    text(weight: "bold", fill: white, size: 10pt)[Cantidad],
    text(weight: "bold", fill: white, size: 10pt)[Heurísticas Afectadas],
  ),
  
  [Problemas Críticos\ (puntuación < 0.4)],
  text(size: 11pt, fill: rgb("E74C3C"))[Ver tabla],
  [Recuperación de Errores, Prevención, Ayuda y Documentación],
  
  [Problemas Moderados\ (puntuación 0.4 - 0.7)],
  text(size: 11pt, fill: rgb("F39C12"))[Ver tabla],
  [Visibilidad, Control, Flexibilidad, Diseño y otros],
  
  [Fortalezas\ (puntuación > 0.7)],
  text(size: 11pt, fill: rgb("27AE60"))[Ver tabla],
  [Reconocimiento vs Recuerdo, Relación Mundo Real],
)

== Hallazgos Principales

El análisis de las 10 heurísticas reveló una base funcional operativa con deficiencias concentradas en manejo de errores, prevención y documentación de ayuda. Las heurísticas con puntuación crítica (< 0.4) requieren intervención inmediata, las moderadas (0.4 - 0.7) necesitan mejoras planificadas, y las fortalezas (> 0.7) deben preservarse como bases sólidas del sistema.

=== Áreas Críticas Identificadas

#table(
  columns: (1.5fr, 1fr, 4fr),
  align: (left, center, left),
  fill: (x, y) => if y == 0 { rgb("E74C3C").lighten(60%) } else if calc.odd(y) { white } else { rgb("FADBD8") },
  stroke: 1pt + rgb("E74C3C").lighten(40%),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", size: 10pt)[Heurística],
    text(weight: "bold", size: 10pt)[Punt.],
    text(weight: "bold", size: 10pt)[Impacto en la Experiencia del Usuario],
  ),
  
  [H9: Recuperación de Errores],
  [0.23],
  [Usuarios sin orientación al encontrar errores, imposibilidad de recuperación efectiva],
  
  [H5: Prevención de Errores],
  [0.31],
  [Usuarios acceden a contenido inexistente, frustración por validaciones deficientes],
  
  [H10: Ayuda y Documentación],
  [0.36],
  [Dependencia excesiva del chatbot, ausencia de rutas informativas claras],
)

=== Fortalezas del Sistema

#table(
  columns: (1.5fr, 1fr, 4fr),
  align: (left, center, left),
  fill: (x, y) => if y == 0 { rgb("27AE60").lighten(60%) } else if calc.odd(y) { white } else { rgb("D5F4E6") },
  stroke: 1pt + rgb("27AE60").lighten(40%),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", size: 10pt)[Heurística],
    text(weight: "bold", size: 10pt)[Punt.],
    text(weight: "bold", size: 10pt)[Aspectos Destacables],
  ),
  
  [H6: Reconocimiento vs Recuerdo],
  [0.75],
  [Elementos visibles facilitan navegación sin depender de memoria del usuario],
  
  [H2: Relación Mundo Real],
  [0.71],
  [Terminología académica apropiada, chatbot con lenguaje conversacional natural],
)

== Plan de Mejora Priorizado

#table(
  columns: (1fr, 1fr, 3fr, 1.5fr),
  align: (center, center, left, center),
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  stroke: 1pt + rgb("D0D0D0"),
  inset: 6pt,
  
  table.header(
    text(weight: "bold", fill: white, size: 10pt)[Prioridad],
    text(weight: "bold", fill: white, size: 10pt)[Plazo],
    text(weight: "bold", fill: white, size: 10pt)[Acciones Recomendadas],
    text(weight: "bold", fill: white, size: 10pt)[Impacto Esperado],
  ),
  
  [P0\ Crítico],
  [Inmediato],
  [• Página 404 personalizada\
   • Validación de formularios\
   • Autocompletado en buscador],
  text(fill: rgb("E74C3C"))[+0.7 puntos],
  
  [P1\ Alta],
  [Corto plazo],
  [• Implementar breadcrumbs\
   • Crear sección de admisión\
   • Desarrollar FAQs\
   • Unificar buscadores],
  text(fill: rgb("E67E22"))[+0.8 puntos],
  
  [P2\ Media],
  [Mediano plazo],
  [• Optimizar diseño móvil\
   • Feedback visual consistente\
   • Segregar contactos],
  text(fill: rgb("F39C12"))[+0.5 puntos],
)

== Proyección y Confiabilidad

La metodología aplicada con cuatro evaluadores independientes @nielsen1990heuristic garantizó la identificación de problemas recurrentes mediante consenso, incrementando la confiabilidad de los hallazgos. La variabilidad moderada entre evaluadores (4.97 - 6.32 puntos) es consistente con estudios previos que demuestran que múltiples evaluadores detectan entre 75-90% de problemas de usabilidad @jeffries1991user.

Con la implementación completa del plan priorizado (P0 + P1 + P2), se proyecta una mejora de aproximadamente 2.0 puntos, elevando la calificación a la categoría "Buen producto". La implementación gradual por fases permitiría primero resolver los problemas críticos (P0: +0.7), luego las mejoras de alta prioridad (P1: +0.8), y finalmente el pulido del sistema (P2: +0.5), mejorando significativamente la experiencia del usuario y alineándose con estándares académicos reconocidos.

#pagebreak()

#bibliography("bib.bib", title: "Bibliografia", style: "apa")
