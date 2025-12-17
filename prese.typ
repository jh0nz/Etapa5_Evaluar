#import "@preview/touying:0.5.3": *
#import themes.simple: *


#show: simple-theme.with(aspect-ratio: "16-9")
#set text(size: 16pt, lang: "es")
= Evaluación Heurística
#align(center + horizon)[
  #text(size: 24pt, weight: "bold")[Sitio Web FCyT - Sección Generalidades]
  
  #v(2em)
  
  #text(size: 16pt)[Equipo API]
  
  #text(size: 14pt)[Universidad Mayor de San Simón]
  
  #text(size: 12pt)[Octubre 2025]
]

= Equipo de Evaluación

== Integrantes

#table(
  columns: (2fr, 1fr, 1fr),
  align: (left, center, center),
  stroke: 0.8pt + rgb("#D0D0D0"),
  fill: (x, y) => if y == 0 { rgb("#2C3E50") } else if calc.odd(y) { white } else { rgb("#F8F9FA") },
  [*Evaluador*], [*Código*], [*Puntuación*],
  [Gutiérrez Hinojosa Jhon Deymar], [202107786], [*4.22/10*],
  [Merudia Calderón Dayeza], [202202138], [*5.92/10*],
  [Anturiano Eulate Eleonor Camile], [202206250], [*4.58/10*],
  [Villarpando Rodríguez Joaquín], [202112146], [*4.33/10*],
)

#v(1em)

#align(center)[
  #box(
    fill: rgb("#FFCC00").lighten(60%),
    stroke: 2pt + rgb("#FFCC00"),
    inset: 1em,
    radius: 8pt,
  )[
    #text(size: 14pt, weight: "bold")[Puntuación Promedio: ]
    #text(size: 24pt, weight: "bold", fill: rgb("#FFCC00"))[4.76/10]
    #text(size: 12pt)[ - Producto Mejorable]
  ]
]
== Perfiles de usuario
#table(
  columns: 4,
  align: left,
  table.header([Perfil], [Objetivos clave], [Necesidades], [Contexto]),
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

= Evaluaciones

=== Evaluación de Jhon

=== Problemas Principales Identificados

*Puntuación: 4.22/10*

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.6pt + rgb("#D0D0D0"),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#E74C3C") } else if calc.odd(y) { white } else { rgb("#FFC7CE") },
  [*H*], [*Problema Identificado*],
  
  [H2], [La página entera no usa ni un ícono para guiar a los usuarios],
  
  [H4], [No cumple con responsive design - problema presente en toda la página],
  
  [H7], [El botón aceptar en el formulario de suscripción redirige a otro formulario],
  
  [H8], [Botón de envío del formulario no visible hasta bajar - no se pueden colapsar carreras],
  
  [H8], [Tipografías no cumplen mínimo de 16px (aunque contraste WCAG AAA es correcto)],
  
  [H9], [Errores del formulario no se muestran en sus respectivos campos],
)

= Evaluación de Dayeza

== Problemas Principales Identificados

*Puntuación: 5.92/10*

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.6pt + rgb("#D0D0D0"),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#E74C3C") } else if calc.odd(y) { white } else { rgb("#FFC7CE") },
  [*H*], [*Problema Identificado*],
  
  [H1], [Sin barras de carga, animaciones ni señales visuales de progreso],
  
  [H1], [No hay mensajes de retroalimentación (éxito, error, espera)],
  
  [H2], [No hay íconos, solo texto plano],
  
  [H4], [No adaptativo - se desordena en móvil y no se pueden acceder a funciones],
  
  [H5], [Algunos submenús como "Generalidades" llevan al mismo destino],
  
  [H8], [Textos largos y tipografía pequeña dificultan lectura rápida],
  
  [H10], [No existe sección de ayuda o documentación accesible desde el menú],
)

= Evaluación de Eleonor

== Problemas Principales Identificados

*Puntuación: 4.58/10*

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.6pt + rgb("#D0D0D0"),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#E74C3C") } else if calc.odd(y) { white } else { rgb("#FFC7CE") },
  [*H*], [*Problema Identificado*],
  
  [H2], [Etiquetas abreviadas (ej: "Manual de Fun.") afectan claridad],
  
  [H3], [No existe opción clara para regresar - depende del botón "Atrás" del navegador],
  
  [H3], [El botón "Inicio" del menú lateral es poco visible y no se diferencia de otros enlaces],
  
  [H4], [Baja adaptabilidad a móviles - problemas de visualización y navegación],
  
  [H4], [Todos los subapartados del menú "Generalidades" mostrados sin resaltar sección activa],
  
  [H5], [Enlace "Webmaster" sin confirmación ni mensaje sobre su función o destino],
  
  [H7], [No hay atajos de navegación - usuarios deben desplazarse manualmente entre secciones],
  
  [H8], [Sobrecarga de texto en páginas como "Manual de Funciones" - dificulta comprensión rápida],
  
  [H10], [No existe sección de ayuda ni soporte accesible - solo "Webmaster" sin redirección funcional],
)

= Evaluación de Joaquín

== Problemas Principales Identificados

*Puntuación: 4.33/10*

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.6pt + rgb("#D0D0D0"),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#E74C3C") } else if calc.odd(y) { white } else { rgb("#FFC7CE") },
  [*H*], [*Problema Identificado*],
  
  [H1], [No se muestran indicadores de carga, progreso o estado del sistema],
  
  [H4], [Diseño no responsive - contenido se corta en móviles],
  
  [H7], [No existe personalización ni atajos de teclado],
  
  [H8], [Jerarquía visual pobre - títulos poco destacados],
  
  [H8], [Diseño visualmente anticuado comparado con estándares actuales],
  
  [H10], [Ausencia total de sección de ayuda, FAQs o tutoriales],
)

== 8 Problemas Prioritarios del Equipo

#table(
  columns: (auto, 2fr),
  align: (center, left),
  stroke: 0.6pt + rgb("#D0D0D0"),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#E74C3C") } else if calc.odd(y) { white } else { rgb("#FADBD8") },
  [*H*], [*Problema Consolidado*],
  
  [H1], [Sin indicadores de carga ni feedback visual - genera incertidumbre],
  
  [H2], [Falta total de iconografía - solo texto plano],
  
  [H9], [Errores del formulario no se muestran en sus respectivos campos],
  
  [H4], [No responsive - desalineaciones severas en móvil],
  
  [H8], [Jerarquía visual deficiente - textos largos y tipografía pequeña],
  
  [H5], [Navegación confusa - duplicados llevan al mismo destino],
  
  [H8], [Diseño anticuado - aceptable pero poco atractivo],
  
  [H10], [Sin sistema de ayuda - no hay FAQs ni tutoriales],
)

= Recomendaciones Priorizadas

== Acciones Inmediatas

#box(fill: rgb("#E74C3C").lighten(80%), inset: 12pt, radius: 6pt, width: 100%)[
  === Críticas (1-2 meses)
  
  1. *Implementar diseño responsive* adaptable a móviles y tablets
  
  2. *Agregar indicadores de carga* y feedback visual en todas las acciones
  
  3. *Mejorar validación de formularios* mostrando errores junto a cada campo
  
  4. *Crear sección de ayuda* con FAQs y tutoriales básicos
]

#v(1em)

#box(fill: rgb("#F39C12").lighten(80%), inset: 12pt, radius: 6pt, width: 100%)[
  === Importantes (3-4 meses)
  
  5. *Incorporar sistema de iconografía* consistente
  
  6. *Revisar y simplificar navegación* eliminando duplicados
  
  7. *Aumentar tamaño de fuente* y mejorar jerarquía visual
]

#v(1em)

#box(fill: rgb("#3498DB").lighten(80%), inset: 12pt, radius: 6pt, width: 100%)[
  === Mejorables (5-6 meses)
  
  8. *Modernizar paleta de colores* manteniendo identidad institucional
  
  9. *Añadir modo oscuro* para personalización
]


== Resumen de Hallazgos

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    *Puntuaciones Obtenidas*
    
    - Jhon: 4.22/10
    - Dayeza: 5.92/10
    - Eleonor: 4.58/10
    - Joaquín: 4.33/10
    
    #v(1em)
    
    #box(
      fill: rgb("#FFCC00").lighten(60%),
      inset: 1em,
      radius: 6pt,
    )[
      #align(center)[
        *Promedio: 4.76/10*
        
        Producto Mejorable
      ]
    ]
  ],
  [
    *Problemas Identificados*
    
    - 8 problemas prioritarios
    - 4 críticos
    - 2 importantes
    - 2 mejorables
    
    #v(1em)
    
    *Principales Afectaciones*
    
    - Usuarios móviles (40%+)
    - Navegación y orientación
    - Completar formularios
  ]
)

#slide[
  #align(center + horizon)[
    #text(size: 48pt, weight: "bold", fill: rgb("#2C3E50"))[

    ]
    
    #v(2em)
    
    #text(size: 18pt)[
      Equipo API
    ]
    
    #v(0.5em)
    
    #text(size: 14pt, fill: gray)[
      Gutiérrez, Merudia, Anturiano, Villarpando
    ]
    
    #v(0.5em)
    
    #text(size: 12pt, fill: gray)[
      Interacción Humano Computador - FCyT UMSS
      
      Octubre 2025
    ]
  ]
]
