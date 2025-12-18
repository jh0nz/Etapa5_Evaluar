#set page(width: 8.5in, height: 11in, margin: 1in)
#set text(size: 14pt, lang: "es")
#set heading(numbering: "1.")

#import "heuristicas.typ": heuristicas
#import "Gutierrez_Hinojosa_Jhon.typ": heuristicas_eval as eval_jhon
#import "Anturiano_Eulate_Eleonor.typ": heuristicas_eval as eval_eleonor
#import "Merudia_Calderón_Dayeza.typ": heuristicas_eval as eval_dayeza
#import "Villarpando_Rodriguez_Joaquin.typ": heuristicas_eval as eval_joaquin

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
  
  let total = puntuaciones.sum() / puntuaciones.len()
  resultados.push((nombre: est.nombre, puntuaciones: puntuaciones, total: total))
}

// Calcular promedio general
#let promedio_general = resultados.map(r => r.total).sum() / resultados.len()

#align(center)[
  #v(2cm)
  #text(size: 20pt, weight: "bold")[RESULTADOS FINALES EVALUACIÓN HEURÍSTICA]
  #v(1.5cm)
]

= Puntuaciones por Heurística

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr),
  align: (left, center, center, center, center),
  stroke: 0.5pt + rgb("404040"),
  fill: (x, y) => if y == 0 { rgb("1F4788") } else if calc.odd(y) { white } else { rgb("E8F0FF") },
  
  text(weight: "bold", fill: white)[Heurística], 
  ..for r in resultados { (text(weight: "bold", fill: white)[#r.nombre],) },
  
  ..for (i, h) in heuristicas.enumerate() {
    (h.nombre,) + for r in resultados { (text(weight: "bold")[#calc.round(r.puntuaciones.at(i), digits: 2)],) }
  }
)

#v(1cm)

= Resumen de Resultados

#table(
  columns: (2fr,) + for _ in resultados { (1fr,) } + (1fr,),
  align: (left,) + for _ in resultados { (center,) } + (center,),
  stroke: 0.5pt + rgb("404040"),
  fill: (x, y) => if y == 0 { rgb("1F4788") } else if x == resultados.len() + 1 { rgb("2D5A2D") } else { rgb("F5F5F5") },
  
  text(weight: "bold", fill: white, size: 13pt)[Puntuación Final],
  ..for r in resultados { (text(weight: "bold", size: 13pt, fill: white)[#r.nombre],) },
  text(weight: "bold", fill: white, size: 13pt)[Promedio],
  
  text(fill: rgb("404040"), size: 12pt)[ ],
  ..for r in resultados { (text(weight: "bold", size: 13pt, fill: rgb("1B5E20"))[#calc.round(r.total, digits: 2)],) },
  text(weight: "bold", size: 13pt, fill: white)[#calc.round(promedio_general, digits: 2)],
)
