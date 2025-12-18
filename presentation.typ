#import "@preview/touying:0.5.3": *
#import themes.simple: *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#import "heuristicas.typ": heuristicas
#import "Gutierrez_Hinojosa_Jhon.typ": heuristicas_eval as eval_jhon
#import "Anturiano_Eulate_Eleonor.typ": heuristicas_eval as eval_eleonor
#import "Merudia_Calderón_Dayeza.typ": heuristicas_eval as eval_dayeza
#import "Villarpando_Rodriguez_Joaquin_Alejandro.typ": heuristicas_eval as eval_joaquin

#show: simple-theme.with(aspect-ratio: "16-9")
#set text(size: 24pt, lang: "es")

// Funciones auxiliares para coloración
#let get_color(puntuacion) = {
  if puntuacion == none { rgb("E0E0E0") }
  else if puntuacion == 0 { rgb("FFCCCC") }
  else if puntuacion == 0.5 { rgb("FFFF99") }
  else if puntuacion == 1 { rgb("CCFFCC") }
  else { rgb("E0E0E0") }
}

#let get_color_text(puntuacion) = {
  if puntuacion == none { rgb("808080") }
  else if puntuacion == 0 { rgb("CC0000") }
  else if puntuacion == 0.5 { rgb("FF8C00") }
  else if puntuacion == 1 { rgb("00CC00") }
  else { rgb("808080") }
}

#let get_resp(puntuacion) = {
  if puntuacion == none { "N/A" }
  else if puntuacion == 0 { "No" }
  else if puntuacion == 0.5 { "Mejorable" }
  else if puntuacion == 1 { "Sí" }
  else { "N/A" }
}

// Función para calcular puntuación
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

// Array de estudiantes
#let estudiantes = (
  (nombre: "Eleonor Anturiano", eval: eval_eleonor),
  (nombre: "Joaquin Villarpando", eval: eval_joaquin),
  (nombre: "Dayeza Merudia", eval: eval_dayeza),
  (nombre: "Jhon Gutiérrez", eval: eval_jhon),
)

// Calcular resultados consolidados
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

#let promedio_general = resultados.map(r => r.total).sum() / resultados.len()

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

= Evaluación Heurística
#align(center + horizon)[
  #text(size: 28pt, weight: "bold")[Evaluación Heurística]
  
  #text(size: 24pt)[Sitio Web Posgrado FCyT-UMSS]
  
  #v(2em)
  
  #text(size: 18pt)[Equipo API]
  
  #text(size: 16pt)[Universidad Mayor de San Simón]
  
  #text(size: 14pt)[Diciembre 2025]
]

= Introducción

== Evaluación Heurística

- *Método:* Inspección de usabilidad por evaluadores expertos
- *Base:* 10 heurísticas de Nielsen
- *Objetivo:* Identificar problemas de usabilidad sistemáticamente

== Sitio Evaluado

- *URL:* postgrado-umss.vercel.app
- *Tipo:* Prototipo web de Posgrado FCyT-UMSS
- *Usuario objetivo:* Estudiantes de pregrado/egresados buscando especialización
- *Evaluadores:* 4 miembros independientes

= Metodología

== Proceso de Evaluación

#table(
  columns: (1fr, 2fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Fase*], [*Descripción*],
  [1], [Evaluación individual independiente],
  [2], [Registro detallado de hallazgos],
  [3], [Análisis grupal y consolidación],
  [4], [Priorización por severidad],
)

== Escala de Puntuación

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Valor*], [*Significado*],
  [1.0], [Cumple completamente],
  [0.5], [Cumple parcialmente - Mejorable],
  [0.0], [No cumple],
  [N/A], [No aplica],
)

= Equipo de Evaluación

== Integrantes

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*No.*], [*Evaluador*],
  [1], [Anturiano Eulate Eleonor Camile],
  [2], [Villarpando Rodríguez Joaquín Alejandro],
  [3], [Merudia Calderón Dayeza ],
  [4], [Gutiérrez Hinojosa Jhon Deymar ],
)

= Evaluación: Eleonor Anturiano

== Resultados por Heurística

#let est = estudiantes.at(0)
#let punts = ()
#let total = 0.0
#for h in est.eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let (categoria_text, categoria_color) = if total < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Heurística*], [*Nota*],
  ..for (i, h) in est.eval.enumerate() {
    (text(size: 13pt)[#h.nombre], text(weight: "bold", size: 14pt)[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(fill: categoria_color.lighten(85%), colspan: 1)[#text(weight: "bold", fill: categoria_color, size: 14pt)[#categoria_text]],
  table.cell(fill: categoria_color.lighten(85%))[#text(weight: "bold", fill: categoria_color, size: 16pt)[#calc.round(total, digits: 2)]],
)

== Observaciones Principales - Eleonor

*Puntos críticos identificados:*

- Página sin iconografía de guía para usuarios
- Falta de breadcrumbs en navegación
- Contactos no completamente copiables/accesibles
- Errores con lenguaje genérico del navegador
- Ausencia de validación preventiva de errores

*Total: #calc.round(total, digits: 2)/10 - #categoria_text*

== Notas y Evidencias - Eleonor

#let notas_eleonor = ()
#for h in eval_eleonor {
  for p in h.preguntas {
    if "extra" in p {
      notas_eleonor.push((h.nombre, p))
    }
  }
}

#for (h_nombre, p) in notas_eleonor {
  let color = get_color(p.puntuacion)
  let color_text = get_color_text(p.puntuacion)
  let resp = get_resp(p.puntuacion)
  let breakable = p.at("breakable", default: true)

  block(
    fill: color.lighten(95%),
    width: 100%,
    inset: 14pt,
    radius: 6pt,
    stroke: 2.5pt + color_text.lighten(70%),
    breakable: breakable,
  )[
    #text(size: 20pt, style: "italic", fill: rgb("#505050"))[#h_nombre \/]
    #text(size: 24pt, weight: "bold", fill: color_text.lighten(20%))[#p.texto \/]
    #highlight(fill: color_text.lighten(70%))[ #text(size: 22pt, weight: "bold", fill: color_text.darken(30%))[#resp]]

    #text(size: 20pt, fill: rgb("333333"))[#p.at("extra")]
  ]
}

= Evaluación: Joaquín Villarpando

== Resultados por Heurística

#let est = estudiantes.at(1)
#let punts = ()
#let total = 0.0
#for h in est.eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let (categoria_text, categoria_color) = if total < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Heurística*], [*Nota*],
  ..for (i, h) in est.eval.enumerate() {
    (text(size: 13pt)[#h.nombre], text(weight: "bold", size: 14pt)[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(fill: categoria_color.lighten(85%), colspan: 1)[#text(weight: "bold", fill: categoria_color, size: 14pt)[#categoria_text]],
  table.cell(fill: categoria_color.lighten(85%))[#text(weight: "bold", fill: categoria_color, size: 16pt)[#calc.round(total, digits: 2)]],
)

== Observaciones Principales - Joaquín

*Puntos críticos identificados:*

- Migas de pan no reflejan ubicación actual
- No existe botón para borrar filtros aplicados
- Retroalimentación visual inconsistente
- Falta de indicación clara de página actual
- Ausencia de página de error 404

*Total: #calc.round(total, digits: 2)/10 - #categoria_text*

== Notas y Evidencias - Joaquín

#let notas_joaquin = ()
#for h in eval_joaquin {
  for p in h.preguntas {
    if "extra" in p {
      notas_joaquin.push((h.nombre, p))
    }
  }
}

#for (h_nombre, p) in notas_joaquin {
  let color = get_color(p.puntuacion)
  let color_text = get_color_text(p.puntuacion)
  let resp = get_resp(p.puntuacion)
  let breakable = p.at("breakable", default: true)

  block(
    fill: color.lighten(95%),
    width: 100%,
    inset: 14pt,
    radius: 6pt,
    stroke: 2.5pt + color_text.lighten(70%),
    breakable: breakable,
  )[
    #text(size: 20pt, style: "italic", fill: rgb("#505050"))[#h_nombre \/]
    #text(size: 24pt, weight: "bold", fill: color_text.lighten(20%))[#p.texto \/]
    #highlight(fill: color_text.lighten(70%))[ #text(size: 22pt, weight: "bold", fill: color_text.darken(30%))[#resp]]

    #text(size: 20pt, fill: rgb("333333"))[#p.at("extra")]
  ]
}

= Evaluación: Dayeza Merudia

== Resultados por Heurística

#let est = estudiantes.at(2)
#let punts = ()
#let total = 0.0
#for h in est.eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let (categoria_text, categoria_color) = if total < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Heurística*], [*Nota*],
  ..for (i, h) in est.eval.enumerate() {
    (text(size: 13pt)[#h.nombre], text(weight: "bold", size: 14pt)[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(fill: categoria_color.lighten(85%), colspan: 1)[#text(weight: "bold", fill: categoria_color, size: 14pt)[#categoria_text]],
  table.cell(fill: categoria_color.lighten(85%))[#text(weight: "bold", fill: categoria_color, size: 16pt)[#calc.round(total, digits: 2)]],
)

== Observaciones Principales - Joaquín

*Puntos críticos identificados:*

- Migas de pan no reflejan ubicación actual
- No existe botón para borrar filtros aplicados
- Retroalimentación visual inconsistente
- Falta de indicación clara de página actual
- Ausencia de página de error 404

*Total: #calc.round(total, digits: 2)/10 - #categoria_text*

== Notas y Evidencias - Joaquín

#let notas_joaquin = ()
#for h in eval_joaquin {
  for p in h.preguntas {
    if "extra" in p {
      notas_joaquin.push((h.nombre, p))
    }
  }
}

#for (h_nombre, p) in notas_joaquin {
  let color = get_color(p.puntuacion)
  let color_text = get_color_text(p.puntuacion)
  let resp = get_resp(p.puntuacion)
  let breakable = p.at("breakable", default: true)

  block(
    fill: color.lighten(95%),
    width: 100%,
    inset: 14pt,
    radius: 6pt,
    stroke: 2.5pt + color_text.lighten(70%),
    breakable: breakable,
  )[
    #text(size: 20pt, style: "italic", fill: rgb("#505050"))[#h_nombre \/]
    #text(size: 24pt, weight: "bold", fill: color_text.lighten(20%))[#p.texto \/]
    #highlight(fill: color_text.lighten(70%))[ #text(size: 22pt, weight: "bold", fill: color_text.darken(30%))[#resp]]

    #text(size: 20pt, fill: rgb("333333"))[#p.at("extra")]
  ]
}

= Evaluación: Dayeza Merudia

== Resultados por Heurística

#let est = estudiantes.at(2)
#let punts = ()
#let total = 0.0
#for h in est.eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let (categoria_text, categoria_color) = if total < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Heurística*], [*Nota*],
  ..for (i, h) in est.eval.enumerate() {
    (text(size: 13pt)[#h.nombre], text(weight: "bold", size: 14pt)[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(fill: categoria_color.lighten(85%), colspan: 1)[#text(weight: "bold", fill: categoria_color, size: 14pt)[#categoria_text]],
  table.cell(fill: categoria_color.lighten(85%))[#text(weight: "bold", fill: categoria_color, size: 16pt)[#calc.round(total, digits: 2)]],
)

== Observaciones Principales - Dayeza

*Puntos críticos identificados:*

- Filtros en diplomados sin conteo de resultados
- No existen breadcrumbs en ninguna página
- Elementos interactivos con feedback visual limitado
- Ausencia de página 404 personalizada
- Sin sugerencias cuando falla búsqueda

*Total: #calc.round(total, digits: 2)/10 - #categoria_text*

== Notas y Evidencias - Dayeza

#let notas_dayeza = ()
#for h in eval_dayeza {
  for p in h.preguntas {
    if "extra" in p {
      notas_dayeza.push((h.nombre, p))
    }
  }
}

#for (h_nombre, p) in notas_dayeza {
  let color = get_color(p.puntuacion)
  let color_text = get_color_text(p.puntuacion)
  let resp = get_resp(p.puntuacion)
  let breakable = p.at("breakable", default: true)

  block(
    fill: color.lighten(95%),
    width: 100%,
    inset: 14pt,
    radius: 6pt,
    stroke: 2.5pt + color_text.lighten(70%),
    breakable: breakable,
  )[
    #text(size: 20pt, style: "italic", fill: rgb("#505050"))[#h_nombre \/]
    #text(size: 24pt, weight: "bold", fill: color_text.lighten(20%))[#p.texto \/]
    #highlight(fill: color_text.lighten(70%))[ #text(size: 22pt, weight: "bold", fill: color_text.darken(30%))[#resp]]

    #text(size: 20pt, fill: rgb("333333"))[#p.at("extra")]
  ]
}

= Evaluación: Jhon Gutiérrez

== Resultados por Heurística

#let est = estudiantes.at(3)
#let punts = ()
#let total = 0.0
#for h in est.eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let (categoria_text, categoria_color) = if total < 2.9 {
  ("Producto muy pobre", rgb("FF0000"))
} else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 {
  ("Producto mejorable", rgb("FF8C00"))
} else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else {
  ("¡Excelente!", rgb("00CC00"))
}

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Heurística*], [*Nota*],
  ..for (i, h) in est.eval.enumerate() {
    (text(size: 13pt)[#h.nombre], text(weight: "bold", size: 14pt)[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(fill: categoria_color.lighten(85%), colspan: 1)[#text(weight: "bold", fill: categoria_color, size: 14pt)[#categoria_text]],
  table.cell(fill: categoria_color.lighten(85%))[#text(weight: "bold", fill: categoria_color, size: 16pt)[#calc.round(total, digits: 2)]],
)

== Observaciones Principales - Jhon

*Puntos críticos identificados:*

- Falta sistema de navegación local (breadcrumbs)
- Elementos interactivos sin retroalimentación hover
- En móvil se requiere abrir menú hamburguesa para ver ubicación
- Ausencia de migas de pan para orientación
- Inconsistencias en etiquetado de secciones

*Total: #calc.round(total, digits: 2)/10 - #categoria_text*

== Notas y Evidencias - Jhon

#let notas_jhon = ()
#for h in eval_jhon {
  for p in h.preguntas {
    if "extra" in p {
      notas_jhon.push((h.nombre, p))
    }
  }
}

#for (h_nombre, p) in notas_jhon {
  let color = get_color(p.puntuacion)
  let color_text = get_color_text(p.puntuacion)
  let resp = get_resp(p.puntuacion)
  let breakable = p.at("breakable", default: true)

  block(
    fill: color.lighten(95%),
    width: 100%,
    inset: 14pt,
    radius: 6pt,
    stroke: 2.5pt + color_text.lighten(70%),
    breakable: breakable,
  )[
    #text(size: 20pt, style: "italic", fill: rgb("#505050"))[#h_nombre \/]
    #text(size: 24pt, weight: "bold", fill: color_text.lighten(20%))[#p.texto \/]
    #highlight(fill: color_text.lighten(70%))[ #text(size: 22pt, weight: "bold", fill: color_text.darken(30%))[#resp]]

    #text(size: 20pt, fill: rgb("333333"))[#p.at("extra")]
  ]
}

= Resultados Consolidados

== Puntuación General del Equipo

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr),
  align: (left, center, center, center, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },

  [*Heurística*],
  [*Eleonor*],
  [*Joaquín*],
  [*Dayeza*],
  [*Jhon*],

  ..for (i, h) in heuristicas.enumerate() {
    let fila = (text(size: 12pt)[#h.nombre],)
    for r in resultados {
      fila.push(text(weight: "bold", size: 13pt)[#calc.round(r.puntuaciones.at(i), digits: 2)])
    }
    fila
  },

  table.cell(colspan: 1)[*TOTAL*],
  ..for r in resultados { (text(weight: "bold", size: 14pt)[#calc.round(r.total, digits: 2)],) },
)

== Clasificación Final

#align(center)[
  #text(size: 24pt, weight: "bold", fill: categoria_color)[
    Puntuación Promedio: #calc.round(promedio_general, digits: 2)/10
  ]
  
  #v(1em)
  
  #text(size: 28pt, weight: "bold", fill: categoria_color)[
    #categoria_text
  ]
]

= Análisis de Resultados

== Distribución de Puntuaciones

*Puntuación promedio: #calc.round(promedio_general, digits: 2)/10 - #categoria_text*

Se observa una marcada polarización: 3 heurísticas críticas (< 0.4) y 3 fortalezas (> 0.7). Las deficiencias se concentran en manejo de errores y documentación.

#figure(
  cetz.canvas({
    import cetz.draw: *

    let truncate_name = name => {
      let clusters = name.clusters()
      if clusters.len() <= 20 { name } else { clusters.slice(0, 17).join("") + "..." }
    }

    // Colores arco\u00edris para cada barra
    let bar_colors = (
      rgb("FF0000"),  // Rojo
      rgb("FF7F00"),  // Naranja
      rgb("FFFF00"),  // Amarillo
      rgb("00CC00"),  // Verde
      rgb("0099FF"),  // Azul claro
      rgb("4B0082"),  // \u00cdndigo
      rgb("9400D3"),  // Violeta
      rgb("FF1493"),  // Rosa intenso
      rgb("00CED1"),  // Turquesa
      rgb("FFD700"),  // Oro
    )

    let data = ()
    for (i, h) in heuristicas.enumerate() {
      let promedio_h = resultados.map(r => r.puntuaciones.at(i)).sum() / resultados.len()
      data.push((truncate_name(h.nombre), promedio_h))
    }

    chart.barchart(
      size: (14, 9),
      label-key: 0,
      value-key: 1,
      x-tick-step: 0.1,
      y-label: "Heurísticas",
      x-label: "Puntuación Promedio",
      bar-style: (idx => (fill: bar_colors.at(idx))),
      data,
    )
  })
)

== Clasificación de Problemas

#figure(
  cetz.canvas({
    import cetz.draw: *

    let criticas = 0
    let moderadas = 0
    let buenas = 0

    for (i, h) in heuristicas.enumerate() {
      let promedio_h = resultados.map(r => r.puntuaciones.at(i)).sum() / resultados.len()
      if promedio_h < 0.4 {
        criticas += 1
      } else if promedio_h < 0.7 {
        moderadas += 1
      } else {
        buenas += 1
      }
    }

    let data = (
      ("Críticas < 0.4", criticas),
      ("Moderadas 0.4-0.7", moderadas),
      ("Fortalezas > 0.7", buenas),
    )

    // Colores distintos para cada slice del pie
    let slice_colors = (
      (fill: rgb("FF0000")),  // Rojo para Críticas
      (fill: rgb("FF7F00")),  // Naranja para Moderadas
      (fill: rgb("00CC00")),  // Verde para Fortalezas
    )

    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: none,
      slice-style: (idx => slice_colors.at(idx)),
      inner-radius: 1,
      outset: 3,
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: (value, label) => [#label], radius: 150%),
    )
  })
)

= Hallazgos Críticos

== H9: Recuperación de Errores (0.23)

*Puntuación más baja - Requiere atención urgente*

#table(
  columns: (1fr, 2fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E74C3C") } else if calc.odd(y) { white } else { rgb("FFEBEE") },
  
  [*Problema*], [*Impacto en Usuario*],
  [Sin página 404 personalizada], [Desorientación total],
  [Búsquedas vacías sin alternativas], [Abandono del sitio],
  [Mensajes de error genéricos], [No pueden recuperarse],
  [Fallos de carga silenciosos], [Frustración y desconfianza],
)

== H5: Prevención de Errores (0.29)

#table(
  columns: (1fr, 2fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E74C3C") } else if calc.odd(y) { white } else { rgb("FFEBEE") },
  
  [*Problema*], [*Impacto en Usuario*],
  [Enlace "Doctorados" vacío activo], [Acceso a contenido inexistente],
  [Buscador sin autocomplete], [Búsquedas ineficientes],
  [Validación de formularios deficiente], [Errores frecuentes],
  [Sin botón "Limpiar filtros"], [Frustración en navegación],
)

== H10: Ayuda y Documentación (0.37)

#table(
  columns: (1fr, 2fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E74C3C") } else if calc.odd(y) { white } else { rgb("FFEBEE") },
  
  [*Problema*], [*Impacto en Usuario*],
  [Sin guía de admisión visible], [Desinformación del proceso],
  [FAQs inexistentes], [Dependencia excesiva del chatbot],
  [Contactos sin diferenciar], [Confusión técnico vs académico],
  [Documentación sin fecha], [Contenido potencialmente obsoleto],
)

== H1: Visibilidad del Estado (0.57)

*Severidad Alta*

#table(
  columns: (1fr, 2fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E67E22") } else if calc.odd(y) { white } else { rgb("FFF3E0") },
  
  [*Problema*], [*Impacto en Usuario*],
  [Ausencia total de breadcrumbs], [Desorientación en navegación],
  [Feedback visual inconsistente], [Ambigüedad en interacciones],
  [Indicación de ubicación deficiente en móvil], [Requiere abrir menú para saber dónde está],
)

= Plan de Acción

== Prioridad P0 - Crítico (Inmediato)

*Impacto esperado: +2.0 puntos*

#table(
  columns: (auto, 3fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E74C3C") } else if calc.odd(y) { white } else { rgb("FFEBEE") },
  
  [*No.*], [*Acción Inmediata*],
  [1], [Página 404 personalizada con buscador y enlaces principales],
  [2], [Validación de formularios con mensajes claros y específicos],
  [3], [Autocompletado en buscador con corrección ortográfica],
  [4], [Manejo global de errores con mensajes estructurados],
  [5], [Deshabilitar enlace a Doctorados, crear página informativa],
)

== Prioridad P1 - Alta (Corto Plazo)

*Impacto esperado: +1.2 puntos*

#table(
  columns: (auto, 3fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("E67E22") } else if calc.odd(y) { white } else { rgb("FFF3E0") },
  
  [*No.*], [*Acción*],
  [1], [Breadcrumbs con esquema `Inicio > Sección > Subsección`],
  [2], [Sección Admisión en menú principal con guía paso a paso],
  [3], [Página FAQs organizada por categorías con buscador],
  [4], [Unificar componente de búsqueda con validación consistente],
  [5], [Segregar contactos: técnico vs. académico],
)

== Prioridad P2 - Media (Mediano Plazo)

*Impacto esperado: +0.8 puntos*

#table(
  columns: (auto, 3fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("F39C12") } else if calc.odd(y) { white } else { rgb("FFF9E6") },
  
  [*No.*], [*Acción*],
  [1], [Estandarizar estados hover/active con transiciones suaves],
  [2], [Aplicar mobile-first design, optimizar responsive],
  [3], [Agregar tooltips y aria-labels a elementos interactivos],
  [4], [Eliminar texto redundante de imágenes],
)

= Fortalezas del Prototipo

== Aspectos Positivos

#table(
  columns: (2fr, 1fr, 3fr),
  align: (left, center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("27AE60") } else if calc.odd(y) { white } else { rgb("E8F5E9") },
  
  [*Heurística*], [*Nota*], [*Fortaleza*],
  [Reconocimiento antes que Recuerdo], [0.75], [Filtros visibles, info accesible],
  [Consistencia y Estándares], [0.74], [Diseño coherente],
  [Relación con Mundo Real], [0.73], [Terminología familiar],
  [Flexibilidad y Eficiencia], [0.66], [Navegación fluida],
)
#pagebreak()
*Elementos a preservar:*
- Chatbot funcional con lenguaje natural
- Identidad visual consistente
- Información de programas clara

= Conclusiones

== Resumen Ejecutivo

#table(
  columns: (2fr, 1fr, 2fr),
  align: (left, center, left),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  [*Métrica*], [*Estado Actual*], [*Meta*],
  [Puntuación Promedio], [#calc.round(promedio_general, digits: 2)/10], [7.5+/10],
  [Clasificación], [#categoria_text], [Buen Producto],
  [Heurísticas Críticas], [3 hallazgos], [Resolver P0],
  [Fortalezas Detectadas], [3 áreas], [Mantener],
  [Consenso Evaluadores], [Bueno], [Alto],
  [Mejora Estimada], [En curso], [+2.0 puntos],
)

== Conclusión Final

*Estado actual: #calc.round(promedio_general, digits: 2)/10 - #categoria_text*

*Problemas principales:*
- Manejo de errores
- Falta documentación
- Navegación confusa

*Puntos fuertes:*
- Diseño consistente
- Información clara
- Interfaz familiar

*Próximas mejoras:* Implementar plan P0 → P1 → P2

= 

#align(center + horizon)[
  #text(size: 32pt, weight: "bold")[Gracias por su atención]
  
  #v(2em)
  
  #text(size: 20pt)[Equipo API]
  
  #text(size: 16pt)[
    Jhon · Eleonor · Dayeza · Joaquín
  ]
  
]
