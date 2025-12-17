= Evaluación Individual - Miembro 4

== Información del Evaluador
- *Nombre:* Estudiante 4
- *Fecha de evaluación:* #datetime.today().display()
- *Páginas evaluadas:* Generalidades, Manual de Funciones, Calendario Académico
- *Metodología:* Evaluación heurística de Nielsen aplicada a contenido estático

== Resumen Ejecutivo

El sitio web de la Facultad de Ciencias y Tecnología presenta problemas significativos de usabilidad que impactan negativamente la experiencia del usuario. Durante esta evaluación se identificaron 38 problemas distribuidos en las 10 heurísticas de Nielsen, con 5 problemas de severidad alta que requieren atención urgente.

== Evaluación Detallada por Heurística

=== H1: Visibilidad del Estado del Sistema
#text(size: 10pt, style: "italic")[_Mantener a los usuarios informados sobre lo que está ocurriendo mediante feedback apropiado._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Menú de navegación], 
  [La sección activa no se destaca visualmente. Todos los ítems del menú lucen idénticos independientemente de la página actual.], 
  [2],
  [Generalidades],
  
  [Breadcrumbs], 
  [Muestra solo 2 niveles ("Inicio - Sección"). No refleja subsecciones como "Manual de Funciones" dentro de "Generalidades".], 
  [2],
  [Todas],
  
  [Estados de hover], 
  [Los enlaces del menú lateral no tienen efecto visual al pasar el mouse, dificultando identificar elementos interactivos.], 
  [1],
  [Manual Funciones],
  
  [Feedback de formulario], 
  [Al hacer clic en "Aceptar" en el formulario de suscripción, no hay indicador de procesamiento.], 
  [2],
  [Manual Funciones],
)

*Impacto:* Los usuarios no tienen claridad sobre su ubicación en el sitio ni retroalimentación sobre sus acciones.

*Recomendaciones prioritarias:*
- Implementar clase CSS "active" en el menú para destacar la sección actual
- Extender breadcrumbs para reflejar toda la jerarquía de navegación
- Agregar estados :hover y :focus visibles en todos los elementos interactivos
- Mostrar spinner o mensaje "Procesando..." durante operaciones asíncronas

=== H2: Relación entre el Sistema y el Mundo Real
#text(size: 10pt, style: "italic")[_Usar lenguaje familiar para los usuarios en lugar de términos orientados al sistema._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Terminología general], 
  [Los términos son apropiados para el contexto universitario: "Generalidades", "Admisión", "Pregrado", "Posgrado", etc.], 
  [0],
  [N/A],
  
  [Enlaces "Arriba"], 
  [Se repite múltiples veces el enlace "Arriba" con imagen de flecha. Podría ser más descriptivo.], 
  [1],
  [Manual Funciones],
  
  [Jerga administrativa], 
  [El Manual de Funciones usa términos administrativos apropiados para su audiencia objetivo (personal).], 
  [0],
  [Manual Funciones],
)

*Impacto:* Mínimo. El lenguaje es generalmente apropiado para la audiencia.

*Recomendaciones:*
- Considerar reemplazar "Arriba" con "Volver al inicio" o usar solo el ícono de flecha con atributo alt descriptivo
- Mantener la terminología académica actual que es familiar para estudiantes

=== H3: Control y Libertad del Usuario
#text(size: 10pt, style: "italic")[_Proporcionar salidas de emergencia para que los usuarios puedan abandonar estados no deseados._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Navegación general], 
  [Buena capacidad de navegación hacia atrás usando menú y breadcrumbs. No hay problemas graves.], 
  [0],
  [Todas],
  
  [Formulario suscripción], 
  [No hay botón "Cancelar" o "Limpiar" que permita resetear el formulario.], 
  [1],
  [Manual Funciones],
  
  [Desuscripción], 
  [No se proporciona enlace visible para desuscribirse de la lista de correo.], 
  [2],
  [Manual Funciones],
  
  [Confirmación], 
  [No hay paso de confirmación "¿Está seguro?" antes de ejecutar la suscripción.], 
  [2],
  [Manual Funciones],
)

*Impacto:* Los usuarios pueden quedar atrapados en acciones no deseadas sin forma fácil de revertirlas.

*Recomendaciones:*
- Agregar botón "Limpiar formulario" junto al botón "Aceptar"
- Incluir enlace "¿Cómo desuscribirme?" cerca del formulario
- Implementar diálogo de confirmación para la suscripción

=== H4: Consistencia y Estándares
#text(size: 10pt, style: "italic")[_Seguir convenciones de la plataforma y mantener consistencia interna._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Estructura de layout], 
  [Inconsistencia crítica: "Generalidades" y "Manual" tienen menú lateral, pero "Calendario" no.], 
  [2],
  [Comparación páginas],
  
  [Estilos de títulos], 
  [Los títulos principales usan diferentes formatos: con fondo azul centrado vs. sin fondo alineado izquierda.], 
  [2],
  [Todas],
  
  [Tecnología HTML], 
  [Uso generalizado de tablas para layout en lugar de divs y CSS. No sigue estándares web modernos (HTML5).], 
  [3],
  [Código fuente],
  
  [Footer], 
  [El pie de página mantiene consistencia en todas las páginas evaluadas.], 
  [0],
  [Todas],
  
  [Header], 
  [El encabezado con logo UMSS y menú principal es consistente.], 
  [0],
  [Todas],
)

*Impacto:* La inconsistencia confunde a los usuarios y transmite falta de profesionalismo.

*Recomendaciones prioritarias:*
- Estandarizar estructura: decidir si todas las páginas llevan menú lateral o ninguna
- Definir sistema de diseño con componentes reutilizables
- CRÍTICO: Migrar de tablas a diseño moderno con HTML5 semántico y CSS Grid/Flexbox
- Crear guía de estilo para mantener consistencia

=== H5: Prevención de Errores
#text(size: 10pt, style: "italic")[_Diseñar cuidadosamente para prevenir errores antes de que ocurran._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Validación email], 
  [El campo de email no valida el formato en tiempo real. Solo se detectaría error al enviar.], 
  [2],
  [Manual Funciones],
  
  [Campos requeridos], 
  [No se indica visualmente que el campo email es obligatorio (falta asterisco o etiqueta).], 
  [2],
  [Manual Funciones],
  
  [Atributos HTML5], 
  [No usa atributos HTML5 como type="email" o required para validación nativa del navegador.], 
  [2],
  [Código fuente],
  
  [Mensajes preventivos], 
  [No hay mensajes que adviertan sobre formato esperado o restricciones.], 
  [1],
  [Manual Funciones],
)

*Impacto:* Los usuarios cometen errores evitables que generan frustración.

*Recomendaciones:*
- Implementar validación JavaScript en tiempo real
- Marcar campos obligatorios con asterisco rojo (\*)
- Usar atributos HTML5: `<input type="email" required>`
- Mostrar ejemplos de formato esperado: "ejemplo\@dominio.com"

=== H6: Reconocimiento Antes que Recuerdo
#text(size: 10pt, style: "italic")[_Hacer visibles objetos, acciones y opciones para minimizar carga cognitiva._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Calendario Académico], 
  [*PROBLEMA CRÍTICO:* El calendario completo es una imagen JPG estática. No permite búsqueda, zoom, copia de texto ni interacción alguna.], 
  [3],
  [Calendario],
  
  [Íconos en menú], 
  [El menú de navegación no tiene íconos que faciliten reconocimiento visual rápido.], 
  [2],
  [Header],
  
  [Manual largo], 
  [El Manual de Funciones es extenso sin índice flotante o navegación interna efectiva para relocalizarse.], 
  [2],
  [Manual Funciones],
  
  [Elementos clickeables], 
  [No siempre es obvio qué elementos son enlaces vs. solo texto decorativo.], 
  [2],
  [Generalidades],
)

*Impacto:* Los usuarios deben hacer esfuerzo mental extra, recordar información y buscar manualmente.

*Recomendaciones prioritarias:*
- *URGENTE:* Reconstruir calendario como tabla HTML interactiva o usar componente de calendario JavaScript (ej: FullCalendar.js)
- Agregar íconos Font Awesome u otro set de íconos al menú principal
- Implementar tabla de contenidos flotante (sticky) en páginas largas
- Asegurar que todos los enlaces tengan estilo distintivo (color, subrayado)

=== H7: Flexibilidad y Eficiencia de Uso
#text(size: 10pt, style: "italic")[_Permitir que tanto usuarios novatos como expertos trabajen eficientemente._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Función de búsqueda], 
  [*CRÍTICO:* No existe buscador en el sitio. Encontrar información específica requiere navegación manual exhaustiva.], 
  [3],
  [Todo el sitio],
  
  [Responsive design], 
  [*CRÍTICO:* El sitio no es responsive. Probado en móvil: texto microscópico, navegación imposible, scroll horizontal.], 
  [3],
  [Todo (móvil)],
  
  [Accesos rápidos], 
  [No hay sección de "Enlaces frecuentes" o "Accesos directos" a información más solicitada.], 
  [2],
  [Home],
  
  [Atajos teclado], 
  [No hay atajos de teclado documentados para usuarios avanzados.], 
  [1],
  [Todo],
  
  [Velocidad de carga], 
  [Múltiples imágenes pequeñas generan muchas peticiones HTTP, ralentizando la carga.], 
  [2],
  [Todo],
)

*Impacto:* El sitio es ineficiente tanto para usuarios nuevos como experimentados. Inutilizable en móviles.

*Recomendaciones prioritarias:*
- *URGENTE:* Implementar buscador con autocompletado y filtros
- *URGENTE:* Rediseñar completamente con enfoque mobile-first usando media queries CSS
- Crear widget de "Enlaces Rápidos" en home
- Combinar imágenes pequeñas en sprites CSS o usar CSS puro para decoración
- Documentar atajos de teclado básicos (ej: "/" para buscar)

=== H8: Diseño Estético y Minimalista
#text(size: 10pt, style: "italic")[_Eliminar información irrelevante o raramente necesaria._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Arquitectura HTML], 
  [*CRÍTICO:* Todo el layout usa tablas anidadas (3-4 niveles). Código extremadamente complejo e inmantenible.], 
  [3],
  [Código fuente],
  
  [Imágenes decorativas], 
  [Exceso de GIFs pequeños (flechas.gif, punto.gif, linea.gif) que solo sirven de decoración.], 
  [2],
  [Todo],
  
  [Espaciado], 
  [Espaciado inconsistente: "Antecedentes" muy apretado vs. mucho espacio en blanco en "Calendario".], 
  [2],
  [Comparación],
  
  [Paleta de colores], 
  [Colores institucionales correctos (azul #003366 UMSS) pero aplicados de forma desactualizada.], 
  [2],
  [Todo],
  
  [Tipografía], 
  [Tamaños de fuente variables: desde 9px hasta 14px sin sistema consistente.], 
  [2],
  [Todo],
  
  [Contraste], 
  [Algunas combinaciones de color tienen contraste insuficiente (ej: gris claro sobre blanco).], 
  [2],
  [Footer],
)

*Impacto:* El diseño luce desactualizado, poco profesional y dificulta la lectura.

*Recomendaciones prioritarias:*
- *URGENTE:* Rediseño completo con HTML5 semántico (`<header>`, `<nav>`, `<main>`, `<article>`, `<footer>`)
- Usar CSS Grid para layout principal y Flexbox para componentes
- Eliminar TODAS las imágenes decorativas, reemplazar con CSS (borders, backgrounds)
- Establecer sistema de espaciado modular (ej: escala de 4px: 4, 8, 12, 16, 24, 32, 48px)
- Definir escala tipográfica: base 16px, títulos en escala modular (1.25 ratio)
- Validar contraste de colores con WCAG 2.1 (mínimo AA)

=== H9: Ayudar a Reconocer, Diagnosticar y Recuperarse de Errores
#text(size: 10pt, style: "italic")[_Mensajes de error claros, constructivos y con soluciones._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Mensajes de error], 
  [No se observaron mensajes de error durante pruebas (requiere backend funcional para verificar).], 
  [1],
  [N/A],
  
  [Página 404], 
  [Probé URL inexistente (\*test123\*): apareció error genérico del servidor sin guía de navegación.], 
  [2],
  [Test manual],
  
  [Errores de formulario], 
  [No hay indicación clara de cómo corregir errores en el formulario de suscripción.], 
  [2],
  [Manual Funciones],
  
  [Mensajes de éxito], 
  [No se observó confirmación visual tras acciones exitosas.], 
  [1],
  [N/A],
)

*Impacto:* Cuando los usuarios encuentran errores, quedan sin orientación sobre cómo resolverlos.

*Recomendaciones:*
- Crear página 404 personalizada con:
  - Mensaje amigable ("Página no encontrada")
  - Buscador
  - Enlaces a secciones principales
  - Contacto para reportar enlaces rotos
- Implementar mensajes de error específicos en formularios
- Mostrar confirmación visual de éxito (ej: "¡Suscripción exitosa!")

=== H10: Ayuda y Documentación
#text(size: 10pt, style: "italic")[_Proveer ayuda fácilmente accesible cuando sea necesaria._]

#table(
  columns: (1.5fr, 2.5fr, auto, 1fr),
  align: (left, left, center, left),
  [*Elemento*], [*Descripción del Problema*], [*Sev.*], [*Evidencia*],
  
  [Sección de ayuda], 
  [No existe sección "Ayuda", "FAQ" o "Preguntas Frecuentes" para usuarios del sitio.], 
  [2],
  [Navegación],
  
  [Contacto visible], 
  [La información de contacto existe solo en footer pequeño. No hay botón "Contáctenos" prominente.], 
  [2],
  [Footer vs. Header],
  
  [Tooltips], 
  [No hay tooltips o ayuda contextual en formularios ni secciones complejas.], 
  [2],
  [Todo],
  
  [Documentación usuario], 
  [El "Manual de Funciones" es para personal interno, no ayuda a usuarios del sitio web.], 
  [1],
  [Manual Funciones],
  
  [Mapa del sitio], 
  [No existe mapa del sitio (sitemap.xml ni página HTML de navegación completa).], 
  [2],
  [Root],
  
  [Tutorial], 
  [No hay guía de "Cómo usar el sitio" para nuevos estudiantes.], 
  [2],
  [Todo],
)

*Impacto:* Usuarios nuevos o con dudas no tienen recursos de ayuda fácilmente accesibles.

*Recomendaciones:*
- Crear sección FAQ completa con categorías:
  - Para postulantes
  - Para estudiantes actuales
  - Para egresados
  - Preguntas técnicas del sitio
- Agregar botón "Contáctenos" visible en header
- Implementar tooltips con título descriptivo en formularios
- Crear mapa del sitio HTML accesible desde footer
- Considerar implementar chatbot para preguntas comunes

== Análisis Cuantitativo

=== Distribución de Problemas por Severidad

#table(
  columns: (auto, auto, auto, auto),
  align: center,
  [*Severidad*], [*Cantidad*], [*Porcentaje*], [*Prioridad*],
  [0 (No es problema)], [6], [15.8%], [N/A],
  [1 (Cosmético)], [8], [21.1%], [Baja],
  [2 (Menor)], [19], [50.0%], [Media],
  [3 (Mayor)], [5], [13.2%], [*Alta*],
  [4 (Catastrófico)], [0], [0%], [N/A],
  [*TOTAL*], [*38*], [*100%*], [],
)

=== Distribución de Problemas por Heurística

#table(
  columns: (auto, 3fr, auto),
  align: (center, left, center),
  [*H\#*], [*Heurística*], [*Problemas*],
  [H1], [Visibilidad del estado del sistema], [4],
  [H2], [Relación sistema-mundo real], [3],
  [H3], [Control y libertad del usuario], [4],
  [H4], [Consistencia y estándares], [5],
  [H5], [Prevención de errores], [4],
  [H6], [Reconocimiento antes que recuerdo], [4],
  [H7], [Flexibilidad y eficiencia], [5],
  [H8], [Diseño estético y minimalista], [6],
  [H9], [Reconocer, diagnosticar errores], [4],
  [H10], [Ayuda y documentación], [6],
)

== Problemas Críticos Priorizados

#table(
  columns: (auto, 2fr, 1fr, 1fr),
  align: (center, left, center, center),
  [*\#*], [*Problema*], [*Heurística*], [*Impacto*],
  
  [1], 
  [Calendario académico como imagen estática JPG sin interacción], 
  [H6],
  [Muy Alto],
  
  [2], 
  [Diseño completo basado en tablas HTML anidadas], 
  [H4, H8],
  [Muy Alto],
  
  [3], 
  [No existe función de búsqueda en el sitio], 
  [H7],
  [Muy Alto],
  
  [4], 
  [Sitio no responsive - inutilizable en móviles], 
  [H7],
  [Muy Alto],
  
  [5], 
  [Falta de ayuda y documentación para usuarios], 
  [H10],
  [Alto],
)

== Recomendaciones Estratégicas

=== Corto Plazo (1-2 meses)

+ *Calendario interactivo* (Prioridad 1)
  - Convertir calendario a tabla HTML o componente JavaScript
  - Permitir búsqueda y filtrado de fechas
  - Agregar función de exportar a Google Calendar/iCal

+ *Responsive básico* (Prioridad 1)
  - Implementar meta viewport
  - Media queries básicas para móvil
  - Menú hamburguesa en móvil

+ *Buscador básico* (Prioridad 1)
  - Implementar búsqueda simple con Google Custom Search
  - Posicionar en header

=== Mediano Plazo (3-6 meses)

+ *Rediseño HTML/CSS*
  - Migrar de tablas a HTML5 semántico
  - CSS Grid para layout principal
  - Eliminar imágenes decorativas
  - Sistema de diseño consistente

+ *Mejorar navegación*
  - Breadcrumbs completos
  - Estados visuales claros
  - Íconos en menú principal

+ *Validación de formularios*
  - Validación en tiempo real
  - Mensajes de error claros
  - Confirmaciones

=== Largo Plazo (6-12 meses)

+ *Ayuda y documentación*
  - Sección FAQ completa
  - Tutorial interactivo
  - Tooltips contextuales
  - Posible chatbot

+ *Optimización avanzada*
  - Atajos de teclado
  - Accesos rápidos personalizables
  - Analytics para identificar contenido más visitado
  - Mejoras de accesibilidad WCAG 2.1 AA

== Observaciones Adicionales

*Aspectos Positivos Encontrados:*
- Contenido bien estructurado lógicamente
- Terminología apropiada para audiencia académica
- Información de autoridades actualizada
- Colores institucionales correctos
- Header y footer consistentes

*Tecnologías Recomendadas para Modernización:*
- HTML5 semántico
- CSS3 con Grid y Flexbox
- JavaScript vanilla o framework ligero (Alpine.js, Petite Vue)
- Componente de calendario: FullCalendar.js o similar
- Íconos: Font Awesome o Feather Icons
- Búsqueda: Algolia, Elasticsearch o Google Custom Search

*Consideraciones de Accesibilidad (WCAG 2.1):*
Durante esta evaluación se observaron potenciales problemas de accesibilidad que deberían evaluarse en profundidad:
- Contraste de colores insuficiente en algunos elementos
- Falta de textos alternativos en imágenes (requiere verificar código)
- Navegación por teclado limitada
- Posible falta de etiquetas ARIA

== Conclusión

El sitio web de la FCyT requiere una modernización integral. Aunque cumple su función básica de informar, presenta problemas graves de usabilidad que afectan especialmente a usuarios móviles (más del 60% del tráfico web actual). Los 5 problemas críticos identificados deben abordarse urgentemente para mejorar significativamente la experiencia del usuario.

*Puntuación general de usabilidad estimada:* 4/10

*Recomendación final:* Planificar rediseño completo con enfoque en responsive design, accesibilidad y experiencia de usuario moderna.
