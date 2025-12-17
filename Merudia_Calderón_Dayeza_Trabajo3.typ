#set page(width: 8.5in, height: 11in, margin: 1in, header: none)
#set text(size: 14pt, lang: "es")
#set heading(numbering: "1.")

#import "heuristicas.typ": heuristicas

#let evaluacion = (
  ( // 1. Visibilidad del estado del sistema
    (puntuacion: 0, nota: "El sitio no incluye barras de carga, animaciones ni señales visuales que indiquen progreso. Las páginas cambian de manera inmediata, lo que puede generar incertidumbre sobre si la acción del usuario fue procesada.",evidencia:"https://drive.google.com/file/d/1QpNQy4eHS7NKKQb9TJT0T72-S2JDxdqV/view?usp=sharing" ), // ¿Se muestra visualmente el estado de carga, progreso o proceso en curso?
    (puntuacion: 1), // ¿El sistema da respuesta inmediata a las acciones del usuario?
    (puntuacion: 0, nota:"No hay mensajes de retroalimentación."), // ¿Los mensajes de estado (éxito, error, espera) son claros y oportunos?
    (puntuacion: none), // ¿El sitio informa al usuario si una acción tomará tiempo?
    (puntuacion: 0., nota:"No hay elementos consistentes como iconos o notificaciones que representen estados del sistema; los cambios ocurren sin transición ni aviso."), // ¿Los indicadores de estado son consistentes y accesibles?
  ),
  ( // 2. Correspondencia entre el sistema y el mundo real
    (puntuacion: 1), // ¿El lenguaje del sitio coincide con el del público objetivo (no técnico)?
    (puntuacion: 0.5, nota: "No hay íconos, solo texto plano.", evidencia:"images/iconsD.png"), // ¿Los íconos y metáforas visuales representan correctamente su función?
    (puntuacion: 0.5), // ¿El orden de la información es lógico (de general a específico)?
    (puntuacion: 1), // ¿Los nombres de las secciones o botones son naturales y fáciles de entender?
  ),
  ( // 3. Control y libertad del usuario
    (puntuacion: none), // ¿El usuario puede cancelar o deshacer acciones?
    (puntuacion: none), // ¿Existen confirmaciones antes de acciones críticas?
    (puntuacion: 1), // ¿El usuario puede salir de una sección sin perder datos?
    (puntuacion: 1), // ¿El flujo de navegación permite volver fácilmente a pantallas previas?
    (puntuacion: 1), // ¿Existen atajos o botones de 'volver al inicio'?

  ),
  ( // 4. Consistencia y estándares
    (puntuacion: 1), // ¿Los botones, colores y estilos mantienen el mismo comportamiento?
    (puntuacion: 1), // ¿Las palabras y acciones son coherentes en todo el sitio?
    (puntuacion: 0.5, nota:"Parcial: no usa iconografía ni jerarquía moderna."), // ¿Se siguen las convenciones comunes de diseño?
    (puntuacion: 1), // ¿El sitio usa patrones estándar de navegación?
    (puntuacion: 0, nota:"No adaptativo, se desordena en móvil y no se pueden acceder a las funciones.", evidencia:"https://drive.google.com/file/d/1PFBgxa_4ZEUAjQz7cuh_drH1LB1be2yp/view?usp=sharing"), // ¿La experiencia es consistente entre móvil y escritorio? 
  ),
  ( // 5. Prevención de errores
    (puntuacion: none), // ¿El sistema valida correctamente los datos de entrada?
    (puntuacion: none), // ¿Advierte antes de ejecutar acciones irreversibles?
    (puntuacion: 0.5, nota:"Algunos submenús, como “Generalidades”, llevan al mismo destino, lo que puede generar confusión leve en la navegación.", evidencia:"images/DestinoD.png"), // ¿Reduce el riesgo de errores de clic o confusión?
    (puntuacion: none), // ¿Solicita confirmación para operaciones importantes?
    (puntuacion: none), // ¿Proporciona mensajes predictivos o sugerencias?
  ),
  ( // 6. Reconocer mejor que recordar
    (puntuacion: 1), // ¿Las opciones principales están siempre visibles?
    (puntuacion: 1), // ¿El usuario no necesita memorizar información entre páginas?
    (puntuacion: 1), // ¿Las instrucciones aparecen cuando se necesitan?
    (puntuacion: 1), // ¿Los íconos y nombres de los botones son autoexplicativos?
    (puntuacion: none), // ¿El sitio mantiene un historial de acciones recientes?
  ),
  ( // 7. Flexibilidad y eficiencia de uso
    (puntuacion: 0, nota:"No existe la posibilidad de ajustar la interfaz o contenido a las preferencias del usuario."), // ¿El sitio permite personalizar configuraciones?
    (puntuacion: 1), // ¿Las tareas comunes se realizan en pocos pasos?
    (puntuacion: 1), // ¿El diseño es eficiente para principiantes y expertos?
    (puntuacion: 1), // ¿El flujo de navegación minimiza repeticiones?
    (puntuacion: 0, nota:"No existen accesos rápidos ni funciones de búsqueda para agilizar la navegación."), // ?¿Ofrece accesos directos o teclas rápidas?
  ),
  ( // 8. Estética y diseño minimalista
    (puntuacion: 1), // ¿El diseño evita elementos o textos innecesarios?
    (puntuacion: 0, nota:"Los textos son largos y la tipografía pequeña, lo que dificulta la lectura rápida.", evidencia:"images/tipograD.png"), // ¿La jerarquía visual guía la atención a lo importante?
    (puntuacion: 1), // ¿Cada elemento tiene un propósito funcional?
    (puntuacion: 0.5, nota:"Aceptable pero anticuada.", evidencia:"images/combinacionD.png"), // ¿La combinación de colores y tipografía mejora legibilidad?
    (puntuacion: 0.5, nota:"Es usable y legible pero poco atractivo visualmente"), // ¿Mantiene equilibrio entre estética y funcionalidad?
  ),
  ( // 9. Ayudar a reconocer, diagnosticar y recuperarse de errores
    (puntuacion: none), // ¿Los mensajes de error son claros y comprensibles?
    (puntuacion: none), // ¿Se indica la causa del error y cómo solucionarlo?
    (puntuacion: none), // ¿Los mensajes son amables y sin lenguaje técnico?
    (puntuacion: none), // ¿Permite corregir errores sin reiniciar todo?
    (puntuacion: none), // ¿Los errores son visibles y accesibles?
  ),
  ( // 10. Ayuda y documentación
    (puntuacion: 0, nota:"No existe una sección de ayuda o documentación accesible desde el menú."), // ¿Existe una sección de ayuda o soporte visible?
    (puntuacion: none), // ¿La ayuda está enfocada en tareas concretas?
    (puntuacion: 0, nota:"No se dispone de ninguna herramienta o apartado de ayuda; el usuario debe explorar por su cuenta."), // ¿Es breve, clara y fácil de buscar?
    (puntuacion: 1), // ¿Hay opciones de contacto o asistencia inmediata?
    (puntuacion: 0, nota:"No hay materiales de apoyo, tutoriales ni asistencia dentro del contenido."), // ¿Ofrece tutoriales interactivos o asistencia contextual?
  ),
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

#let combinar_heuristicas_evaluacion(heuristicas, evaluacion) = {
  let resultado = ()
  for (idx_h, h) in heuristicas.enumerate() {
    let preguntas_evaluadas = ()
    for (idx_p, p) in h.preguntas.enumerate() {
      let eval = evaluacion.at(idx_h).at(idx_p)
      let pregunta_completa = p + eval
      preguntas_evaluadas.push(pregunta_completa)
    }
    resultado.push((nombre: h.nombre, preguntas: preguntas_evaluadas))
  }
  resultado
}

#let heuristicas_eval = combinar_heuristicas_evaluacion(heuristicas, evaluacion)

#set page(margin: 1in)
#set text(size: 11pt)
#set par(justify: true)

#align(center)[
  #v(3cm)
  #text(size: 18pt, weight: "bold")[EVALUACIÓN HEURÍSTICA]
  #v(1cm)
  #table(
    columns: (auto, auto),
    stroke: none,
    align: (left, left),
    inset: 8pt,
    [*Estudiante:*], [#upper[Merudia Calderón Dayeza]],
    [*Código:*], [202202138],
    [*Grupo:*], [API],
    [*Fecha:*], [30/10/2025],
    [*Apartado:*], [Generalidades]
  )
  #v(2cm)
]

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

= Evaluación Heurística Detallada

#let todas_filas = ()
#for (idx_h, h) in heuristicas_eval.enumerate() {
  let punt_h = calcular_puntuacion(h.preguntas)
  let num_p = h.preguntas.len()
  
  for (idx_p, p) in h.preguntas.enumerate() {
    let color = if p.puntuacion == none { rgb("E0E0E0") } else if p.puntuacion == 1 { rgb("C6EFCE") } else if p.puntuacion == 0.5 { rgb("FFEB9C") } else { rgb("FFC7CE") }
    let resp = if p.puntuacion == none { "N/A" } else if p.puntuacion == 1 { "Sí" } else if p.puntuacion == 0.5 { "Mejorable" } else { "No" }
    
    if idx_p == 0 {
      todas_filas.push((
        table.cell(rowspan: num_p, fill: rgb("E8F4F8"))[*#h.nombre*],
        p.texto, str(p.peso), table.cell(fill: color)[*#resp*],
        table.cell(rowspan: num_p, fill: rgb("FFFFCC"), align: center)[#text(size: 13pt, weight: "bold")[#calc.round(punt_h, digits: 2)]],
      ))
    } else {
      todas_filas.push((p.texto, str(p.peso), table.cell(fill: color)[*#resp*]))
    }
  }
}

#table(
  columns: (auto, auto, auto, auto, auto),
  align: horizon,
  fill: (x, y) => if y == 0 { rgb("33A1E0") } else { white },
  stroke: 0.5pt + black,
  [*Heurística*], [*Pregunta*], [*Peso*], [*Respuesta*], [*Total*],
  ..todas_filas.flatten(),
)

= Resumen de la Evaluación

#let punts = ()
#let total = 0.0
#for h in heuristicas_eval {
  let p = calcular_puntuacion(h.preguntas)
  punts.push(p)
  total += p
}

#let categoria = if total < 2.9 { ("Producto muy pobre", rgb("FF0000")) } else if total <= 4.9 {
  ("Producto pobre", rgb("FF6600"))
} else if total <= 6.9 { ("Producto mejorable", rgb("FFCC00")) } else if total <= 8.9 {
  ("Buen producto", rgb("66CC00"))
} else { ("¡Excelente!", rgb("00CC00")) }

#table(
  columns: (3fr, 1fr),
  align: (left, center),
  fill: (x, y) => if y == 0 { rgb("33A1E0") } else if y > 0 and y <= 10 {
    if calc.odd(y) { white } else { rgb("E8F4F8") }
  } else if y == 11 { rgb("FFEB9C") } else { categoria.at(1).lighten(80%) },
  stroke: 0.5pt+black,
  [*Heurística*], [*Puntuación*],
  ..for (i, h) in heuristicas_eval.enumerate() {
    (h.nombre, text(weight: "bold")[#calc.round(punts.at(i), digits: 2)])
  },
  table.cell(colspan: 2, fill: categoria.at(1).lighten(80%))[
    #align(center)[
      #text(size: 14pt, weight: "bold")[PUNTUACIÓN FINAL]
      #h(1em)
      #text(size: 18pt, weight: "bold", fill: rgb("0066CC"))[#calc.round(total, digits: 2) / 10.00]
    ]
  ],
  table.cell(colspan: 2, fill: categoria.at(1).lighten(80%))[
    #align(center)[#text(size: 14pt, weight: "bold", fill: categoria.at(1))[Categoría: #categoria.at(0)]]
  ],
)

= Notas y Evidencias

#let notas_evidencias = ()
#for h in heuristicas_eval {
  for p in h.preguntas {
    if "nota" in p or "evidencia" in p {
      notas_evidencias.push((h.nombre, p.texto, p.puntuacion, p.at("nota", default: none), p.at("evidencia", default: none)))
    }
  }
}

#for (h_nombre, p_texto, puntuacion, nota, evidencia) in notas_evidencias {
  let color = if puntuacion == none { rgb("E0E0E0") } else if puntuacion == 1 { rgb("C6EFCE") } else if puntuacion == 0.5 { rgb("FFEB9C") } else { rgb("FFC7CE") }
  let resp = if puntuacion == none { "N/A" } else if puntuacion == 1 { "Sí" } else if puntuacion == 0.5 { "Mejorable" } else { "No" }
  
  block(fill: rgb("F8F9FA"), width: 100%, inset: 8pt, radius: 2pt, stroke: 0.5pt + rgb("CCCCCC"))[
    #grid(
      columns: (1fr, auto),
      [
        #text(size: 9pt, weight: "bold", fill: rgb("0066CC"))[#h_nombre]

        #text(size: 8.5pt, style: "italic")[#p_texto]

        #if nota != none [
          #text(size: 8.5pt, weight: "bold")[Nota:] #text(size: 8.5pt)[#nota]
        ]
      ],
      [
        #box(fill: color, inset: 5pt, radius: 2pt)[
          #text(size: 8.5pt, weight: "bold")[#resp]
        ]
      ]
    )
    
    #if evidencia != none [
      #line(length: 100%, stroke: 0.5pt + rgb("DDDDDD"))
      #if str.ends-with(evidencia, ".png")  [
        #align(center)[
          #image(evidencia, width: 70%)
        ]
      ] else [
         #text(size: 9pt, fill: blue)[#link(evidencia)[Ver evidencia]]
      ]
    ]
  ]
}
