= Evaluación Individual - Miembro 2

== Información del Evaluador
- *Nombre:* Estudiante 2
- *Fecha de evaluación:* #datetime.today().display()
- *Páginas evaluadas:* Generalidades

== Hallazgos por Heurística

=== H1: Visibilidad del Estado del Sistema

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Navegación principal], 
  [Cuando se hace clic en un ítem del menú, no queda resaltado para indicar la página actual.], 
  [2],
  
  [Carga de página], 
  [No hay indicador de carga al navegar entre páginas (aunque la carga es rápida).], 
  [1],
  
  [Formulario suscripción], 
  [Al enviar el formulario de suscripción, no hay feedback inmediato de que la acción se está procesando.], 
  [2],
)

*Recomendación:* 
- Destacar visualmente la sección activa en el menú
- Implementar indicador de carga para conexiones lentas
- Mostrar mensaje de "procesando" al enviar formularios

=== H2: Relación entre el Sistema y el Mundo Real

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Terminología], 
  [Los términos utilizados son apropiados para el contexto universitario: "Generalidades", "Admisión", "Pregrado".], 
  [0],
  
  [Manual de Funciones], 
  [El contenido usa jerga administrativa que es apropiada para su audiencia (personal de la facultad).], 
  [0],
  
  [Iconografía], 
  [Las pequeñas imágenes decorativas no tienen significado claro (flechas, puntos).], 
  [1],
)

*Recomendación:* 
- Reemplazar imágenes decorativas abstractas con íconos significativos
- Mantener la terminología académica actual

=== H3: Control y Libertad del Usuario

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Navegación], 
  [El usuario puede volver fácilmente usando el menú principal y el breadcrumb.], 
  [0],
  
  [Formulario], 
  [No hay opción para desuscribirse visible desde el formulario de suscripción.], 
  [2],
  
  [Enlaces externos], 
  [Algunos enlaces abren en la misma ventana, haciendo que el usuario pierda el contexto de la FCyT.], 
  [2],
)

*Recomendación:* 
- Incluir link de "desuscribirse" cerca del formulario
- Abrir enlaces externos en nueva pestaña con indicador visual

=== H4: Consistencia y Estándares

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Layout de páginas], 
  [La página de Generalidades tiene menú lateral izquierdo, pero Calendario Académico no tiene menú lateral.], 
  [2],
  
  [Formato de títulos], 
  [Los títulos de sección usan diferentes formatos: algunos centrados con fondo azul, otros alineados a la izquierda.], 
  [2],
  
  [Footer], 
  [El footer es consistente en todas las páginas evaluadas.], 
  [0],
  
  [Menú superior], 
  [El menú superior principal es consistente en todas las páginas.], 
  [0],
)

*Recomendación:* 
- Estandarizar presencia de menú lateral en todas las páginas
- Definir y aplicar una jerarquía visual consistente para títulos

=== H5: Prevención de Errores

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Formulario email], 
  [El campo de email no valida el formato mientras el usuario escribe.], 
  [2],
  
  [Botón Aceptar], 
  [No hay confirmación "¿Está seguro de suscribirse?" antes de procesar.], 
  [1],
  
  [Campos requeridos], 
  [No se indica visualmente qué campos son obligatorios (asterisco, etc.).], 
  [2],
)

*Recomendación:* 
- Validar formato de email en tiempo real
- Marcar claramente campos obligatorios
- Considerar confirmación para acciones importantes

=== H6: Reconocimiento Antes que Recuerdo

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Calendario Académico], 
  [El calendario es una imagen JPG estática. No se puede hacer zoom, copiar texto o buscar fechas.], 
  [3],
  
  [Manual de Funciones], 
  [Documento muy largo sin índice flotante o navegación interna efectiva.], 
  [2],
  
  [Breadcrumbs], 
  [Los breadcrumbs ayudan pero son mínimos (solo 2 niveles).], 
  [2],
)

*Recomendación:* 
- Crear calendario interactivo con búsqueda y filtros
- Añadir índice flotante en páginas largas
- Expandir breadcrumbs para mostrar toda la jerarquía

=== H7: Flexibilidad y Eficiencia de Uso

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Todo el sitio], 
  [No existe caja de búsqueda. Para encontrar información específica hay que navegar manualmente.], 
  [3],
  
  [Responsive design], 
  [Al probar en móvil, el sitio es prácticamente inutilizable. Texto muy pequeño, navegación difícil.], 
  [3],
  
  [Accesos directos], 
  [No hay menú de "secciones más visitadas" o "acceso rápido".], 
  [2],
  
  [Atajos de teclado], 
  [No hay soporte para navegación por teclado (Tab, Enter, etc. funcionan básicamente pero sin mejoras).], 
  [1],
)

*Recomendación:* 
- Implementar búsqueda global con sugerencias
- Rediseñar completamente para responsive
- Agregar sección de "Enlaces rápidos"
- Mejorar navegación por teclado

=== H8: Diseño Estético y Minimalista

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Estructura HTML], 
  [Uso de múltiples tablas anidadas para el layout. Código HTML muy complejo y obsoleto.], 
  [3],
  
  [Elementos visuales], 
  [Muchas imágenes pequeñas (GIF) que solo sirven de separadores o decoración.], 
  [2],
  
  [Densidad de información], 
  [El Manual de Funciones presenta texto muy denso sin suficiente espacio en blanco.], 
  [2],
  
  [Tipografía], 
  [Tamaños de fuente inconsistentes. Algunas secciones usan fuentes muy pequeñas.], 
  [2],
)

*Recomendación:* 
- Migrar a diseño moderno con CSS Grid/Flexbox
- Eliminar imágenes decorativas innecesarias
- Aumentar espacio en blanco para mejor legibilidad
- Establecer escala tipográfica consistente

=== H9: Ayudar a Reconocer, Diagnosticar y Recuperarse de Errores

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Formulario], 
  [Al intentar enviar email inválido, no vi mensaje de error claro (requiere testing más profundo).], 
  [1],
  
  [Enlaces rotos], 
  [No se encontraron enlaces rotos durante la evaluación.], 
  [0],
  
  [Página de error], 
  [No hay página 404 personalizada (probé con URL inexistente y apareció error genérico del servidor).], 
  [2],
)

*Recomendación:* 
- Implementar validación con mensajes de error específicos
- Crear página 404 personalizada con opciones de navegación
- Agregar sugerencias de búsqueda en errores

=== H10: Ayuda y Documentación

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Sección de ayuda], 
  [No existe una sección de "Ayuda" o "Preguntas Frecuentes" para usuarios del sitio.], 
  [2],
  
  [Información de contacto], 
  [El contacto está en el footer pero no es muy visible. No hay botón "Contáctenos" destacado.], 
  [2],
  
  [Tooltips], 
  [No hay tooltips o ayuda contextual en ninguna parte del sitio.], 
  [1],
  
  [Manual de Funciones], 
  [Existe documentación pero es para personal interno, no para usuarios generales.], 
  [1],
)

*Recomendación:* 
- Crear sección FAQ para estudiantes y público
- Hacer botón "Contáctenos" más visible
- Agregar tooltips en formularios y secciones complejas
- Crear guía de uso del sitio para nuevos estudiantes

== Resumen de Problemas por Página

=== Página de Generalidades

*Problemas mayores:*
- Diseño no responsive
- Falta de búsqueda
- Tablas HTML obsoletas

*Problemas menores:*
- Navegación podría ser más clara
- Espaciado inconsistente

=== Manual de Funciones

*Problemas mayores:*
- Documento muy largo sin navegación interna efectiva
- No responsive

*Problemas menores:*
- Texto muy denso
- Falta de ayuda contextual

=== Calendario Académico

*Problemas mayores:*
- Calendario como imagen estática (problema crítico)
- Sin capacidad de búsqueda de fechas
- No responsive

*Problemas menores:*
- Página muy vacía, solo contiene la imagen

== Estadísticas de Severidad

#table(
  columns: (auto, auto, auto),
  align: center,
  [*Severidad*], [*Cantidad*], [*Porcentaje*],
  [0 (Sin problema)], [4], [14%],
  [1 (Cosmético)], [5], [17%],
  [2 (Menor)], [15], [52%],
  [3 (Mayor)], [5], [17%],
  [4 (Catastrófico)], [0], [0%],
  [*Total*], [*29*], [*100%*],
)

== Conclusión

El sitio web de la FCyT presenta problemas de usabilidad que van desde cosméticos hasta mayores. Los problemas más críticos están relacionados con:

1. *Tecnología obsoleta:* Uso de tablas para layout
2. *Falta de responsive design:* Inutilizable en móviles
3. *Calendario estático:* No permite interacción
4. *Sin función de búsqueda:* Dificulta encontrar información

A pesar de estos problemas, el sitio cumple su función básica de informar. Sin embargo, una modernización es altamente recomendable para mejorar la experiencia del usuario y adaptarse a las necesidades actuales.
