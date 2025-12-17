[Objetivos clave], [Necesidades], [Contexto]),
  [Estudiante / Postulante],
  [Autoridades; Calendario Acad.; Misión/Visión],
  [Acceso rápido; navegación simple; enlaces funcionales],
  [Móvil y escritorio],

  [Docente / Administrativo],
  [Manual de Funciones; Autoridades; Calendario],
  [Estructura por cargos; anclas claras; listas escaneables],
  [Principalmente escritorio],

  [Visitante externo / familia],
  [Antecedentes; Misión/Visión; Metas],
  [Introducción clara; información confiable; contacto visible],
  [Móvil o escritorio],
)

== Escenarios de tareas
#table(
  columns: 3,
  align: left,
  table.header([Perfil], [Tarea], [Ruta]),
  [Estudiante / Postulante], [Consultar 'Autoridades'], [Generalidades → Autoridades],
  [Estudiante / Postulante], [Abrir Calendario Académico], [Generalidades → Calendario],

  [Docente / Administrativo], [Revisar Manual de Funciones por cargo], [Generalidades → Manual de Funciones],
  [Docente / Administrativo], [Ver responsable y objetivos de Administración], [Generalidades → Administración],

  [Visitante externo / familia], [Leer Antecedentes], [Generalidades → Antecedentes],
  [Visitante externo / familia], [Revisar Misión/Visión y Metas], [Generalidades → Misión/Visión; Metas],
)

= Lista de verificación

#import "heuristicas.typ": heuristicas

#let colores_heuristicas = (
  rgb("FF6B6B"), // 1. Rojo suave
  rgb("FFA500"), // 2. Naranja
  rgb("FFD93D"), // 3. Amarillo
  rgb("6BCB77"), // 4. Verde
  rgb("4D96FF"), // 5. Azul
  rgb("9D84B7"), // 6. Púrpura
  rgb("FF6FB5"), // 7. Rosa
  rgb("FF9F45"), // 8. Naranja claro
  rgb("7BC9FF"), // 9. Azul cielo
  rgb("A78BFA"), // 10. Violeta
)

#let filas_tabla = ()
#for (idx, h) in heuristicas.enumerate() {
  let num_preguntas = h.preguntas.len()
  let color_heuristica = colores_heuristicas.at(idx)
  let color_claro = color_heuristica.lighten(85%)
  for (i, p) in h.preguntas.enumerate() {
    if i == 0 {
      filas_tabla.push((
        table.cell(rowspan: num_preguntas, fill: color_heuristica)[#text(fill: white, weight: "bold")[#(idx + 1)]],
        table.cell(rowspan: num_preguntas, fill: color_heuristica.lighten(70%))[#text(weight: "bold")[#h.nombre.slice(3)]],
        table.cell(fill: color_claro)[#(i + 1). #p.texto],
        table.cell(fill: color_claro)[#p.peso],
      ))
    } else {
      filas_tabla.push((
        table.cell(fill: color_claro)[#(i + 1). #p.texto],
        table.cell(fill: color_claro)[#p.peso],
      ))
    }
  }
}

#table(
  columns: (1fr, 1fr, 3fr, 3fr),
  align: (center, left, left, center),

  fill: (x, y) => if y == 0 { rgb("2C3E50") } else { white },
  table.header(
    table.cell(fill: rgb("2C3E50"))[#text(fill: white, weight: "bold")[Nº]], 
    table.cell(fill: rgb("2C3E50"))[#text(fill: white, weight: "bold")[Heurística]], 
    table.cell(fill: rgb("2C3E50"))[#text(fill: white, weight: "bold")[Preguntas orientadoras]], 
    table.cell(fill: rgb("2C3E50"))[#text(fill: white, weight: "bold")[Peso]]
  ),
  ..filas_tabla.flatten(),
)

== Instrucciones para la evaluación:

+ *Puntuación*: Evalúa cada pregunta aplicable asignando:
  - *1* = Sí (cumple completamente)
  - *0.5* = Mejorable (cumple parcialmente)
  - *0* = No (no cumple)
  - *N/A* = No aplica (marca como `none` en el código)

+ *Notas* (opcional): Cuando una pregunta tenga problemas o aspectos destacables, agrega una nota explicativa breve que justifique la puntuación otorgada.

+ *Evidencias* (opcional): Si es necesario respaldar tu evaluación con una captura de pantalla, incluye la ruta de la imagen (ej: `"images/captura.png"`).

+ *Cálculo*: El sistema promediará automáticamente solo las preguntas aplicables por heurística (excluyendo N/A).

+ *Puntuación total*: Suma las 10 heurísticas → obtienes el puntaje final (0 a 10).

+ *Clasificación*: El sistema categorizará automáticamente el sitio según el puntaje total.

+ *Recomendaciones*: Las notas que agregues aparecerán en una sección especial al final del documento junto con las evidencias.


= Problemas de Usabilidad Prioritarios

Después de la evaluación individual realizada por los cuatro miembros del equipo, se consolidaron los hallazgos más críticos mediante una lluvia de ideas. A continuación se presentan los 8 problemas prioritarios identificados de manera consensuada:

#table(
  columns: (auto, auto, auto, auto),
  align: (center, left, left, left),
  stroke: 0.6pt + rgb("D0D0D0"),
  inset: 6pt,
  fill: (x, y) => if y == 0 { rgb("2C3E50") } else if calc.odd(y) { white } else { rgb("F8F9FA") },
  
  table.header(
    [*Heurística*],
    [*Aspecto Evaluado*],
    [*Problema Identificado*],
    [*Evidencia*]
  ),
  
  [*1.* Visibilidad del estado],
  [Estado de carga y feedback],
  [El sitio no incluye barras de carga, animaciones ni señales visuales que indiquen progreso. No hay mensajes de retroalimentación ni indicadores consistentes. Las páginas cambian de manera inmediata, generando incertidumbre sobre si la acción fue procesada.],
  [#link("https://drive.google.com/file/d/1QpNQy4eHS7NKKQb9TJT0T72-S2JDxdqV/view?usp=sharing")[Drive]],
  
  [*2.* Correspondencia con mundo real],
  [Íconos y metáforas visuales],
  [La página entera no usa ni un ícono para guiar a los usuarios. Solo hay texto plano, lo que reduce significativamente la comprensión rápida de funciones y la eficiencia de navegación. Los elementos visuales son extremadamente limitados.],
  [#link("https://drive.google.com/file/d/1l6yQD5aQYcyqfJgBoS4-32UijPfbphYw/view?usp=sharing")[Drive]],
  
  [*9.* Reconocer y recuperarse de errores],
  [Visibilidad de errores],
  [Los errores del formulario no se muestran en sus respectivos campos, dificultando la identificación y corrección inmediata. El usuario debe buscar el problema sin indicación clara de dónde ocurrió, aumentando frustración y tiempo de corrección.],
  [#link("https://drive.google.com/file/d/1Ou94-lBTbNj4rtTVcSUxgW56qRfZaIm2/view?usp=drive_link")[Drive]],
  
  [*4.* Consistencia y estándares],
  [Experiencia móvil/escritorio],
  [La página está bien adaptada a escritorio pero presenta desalineaciones severas y diseño no responsivo en móvil. No se pueden acceder a las funciones correctamente. El problema está presente en toda la página.],
  [#link("https://drive.google.com/file/d/1dz9iovXiFAkG3uYCuM2jnP2zySWyQchj/view?usp=drive_link")[Drive]],
  
  [*8.* Estética y diseño],
  [Jerarquía visual y legibilidad],
  [Los títulos son visibles pero el texto carece de resaltados o jerarquía tipográfica que guíe la atención. Los textos son largos y la tipografía pequeña, dificultando la lectura rápida. La distribución del espacio carece de aprovechamiento visual eficiente.],
  [#link("https://drive.google.com/file/d/1i9nyrLtr4VNu2ZUM5ItwsXCu6tkDLDUL/view?usp=drive_link")[Drive]],
  
  [*5.* Prevención de errores],
  [Claridad en navegación],
  [Algunos submenús como "Generalidades" llevan al mismo destino, generando confusión en la navegación y aumentando el riesgo de clics erróneos. Falta claridad en las rutas de navegación.],
  [#link("https://drive.google.com/file/d/1C4UfekhF2BsipZ7qbtiUoiNzTM6BMRnr/view?usp=drive_link")[Drive]],
  
  // Problema 7: Diseño anticuado (MEJORABLE)
  [*8.* Estética y diseño],
  [Modernidad del diseño],
  [La combinación de colores y diseño general es funcional pero anticuada. Es usable y legible pero poco atractiva visualmente para estándares actuales. Los menús cumplen función básica pero sin aprovechamiento visual eficiente.],
  [#link("https://drive.google.com/file/d/1coFogno1Zw29SLmn-Lvo0MtclyIAZW6f/view?usp=drive_link")[Drive]],
  
  [*10.* Ayuda y documentación],
  [Soporte y asistencia],
  [No existe una sección de ayuda o documentación accesible. No hay materiales de apoyo, tutoriales ni asistencia contextual. Únicamente se dispone del enlace "contáctenos" en el menú principal, que no ofrece información directa ni asistencia inmediata al usuario.],
  [#link("https://drive.google.com/file/d/1_jfwo45RtcQ6Rn0Vmc-XKS8bdPUlujLm/view?usp=drive_link")[Drive]],
)

== Recomendaciones Prioritarias

+ *Implementar diseño responsive* adaptable a móviles y tablets
+ *Agregar indicadores de carga* y feedback visual en todas las acciones
+ *Mejorar sistema de validación de formularios* mostrando errores junto a cada campo
+ *Crear sección de ayuda* con FAQs y tutoriales básicos
+ *Incorporar sistema de iconografía* consistente
+ *Revisar y simplificar navegación* eliminando duplicados
+ *Aumentar tamaño de fuente* y mejorar jerarquía visual
+ *Modernizar paleta de colores* manteniendo identidad institucional
+ *Añadir una función de modo oscuro* para la personalización

= Conclusiones

La evaluación heurística del sitio web de la sección "Generalidades" reveló deficiencias significativas en múltiples áreas de usabilidad. Los problemas más críticos identificados incluyen la falta de diseño responsive, ausencia de feedback visual del sistema, carencia total de iconografía y un sistema de ayuda inexistente.

Estos hallazgos coinciden con investigaciones previas que demuestran que la mayoría de los sitios web institucionales presentan problemas similares de usabilidad @lazar2006improving. La implementación de las recomendaciones propuestas permitirá mejorar significativamente la experiencia del usuario, especialmente para usuarios móviles que representan una porción creciente del tráfico web.

Es fundamental que las mejoras se implementen de manera priorizada, comenzando por los problemas críticos que afectan directamente la funcionalidad básica del sitio (responsive design, feedback visual, manejo de errores), seguidos por las mejoras importantes que optimizan la experiencia general del usuario.

La evaluación heurística demostró ser un método efectivo para identificar problemas de usabilidad de manera sistemática y costo-eficiente, validando su utilidad como herramienta de evaluación en contextos académicos e institucionales @jeffries1991user.

#pagebreak()

#bibliography("bib.bib", title: "Referencias Bibliográficas", style: "apa")