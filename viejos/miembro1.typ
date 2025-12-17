= Evaluación Individual - Miembro 1

== Información del Evaluador
- *Nombre:* Estudiante 1
- *Fecha de evaluación:* #datetime.today().display()
- *Páginas evaluadas:* Generalidades, Manual de Funciones, Calendario Académico

== Hallazgos por Heurística

=== H1: Visibilidad del Estado del Sistema

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Página General], 
  [No hay indicador visual de la sección activa en el menú principal. El usuario no puede identificar fácilmente dónde se encuentra.], 
  [2],
  
  [Todas las páginas], 
  [Los breadcrumbs muestran solo "Inicio - Sección", sin mostrar subsecciones cuando existen.], 
  [2],
  
  [Enlaces], 
  [No hay efecto hover en la mayoría de los enlaces del menú lateral, dificultando saber si son clickeables.], 
  [1],
)

*Recomendación:* 
- Implementar estado "activo" visual en el menú de navegación
- Expandir breadcrumbs para mostrar toda la ruta de navegación
- Agregar efectos hover consistentes en todos los enlaces

=== H2: Relación entre el Sistema y el Mundo Real

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Manual de Funciones], 
  [Usa lenguaje técnico apropiado pero enlaces genéricos como "Arriba" que podrían ser más descriptivos.], 
  [1],
  
  [Navegación], 
  [Los términos del menú son claros y siguen convenciones académicas (Generalidades, Pregrado, Posgrado).], 
  [0],
)

*Recomendación:* 
- Cambiar "Arriba" por "Volver al inicio" o usar íconos descriptivos
- Mantener el lenguaje académico apropiado actual

=== H3: Control y Libertad del Usuario

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Navegación general], 
  [Los usuarios pueden navegar libremente entre secciones usando el menú principal y breadcrumbs.], 
  [0],
  
  [Formulario suscripción], 
  [No hay botón de "cancelar" o "limpiar" en el formulario de suscripción.], 
  [1],
)

*Recomendación:* 
- Agregar botón "Limpiar" en formularios
- Mantener la navegación libre actual

=== H4: Consistencia y Estándares

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Estructura de páginas], 
  [La página de Generalidades tiene menú lateral, pero Calendario no lo tiene. Inconsistencia en la estructura.], 
  [2],
  
  [Diseño visual], 
  [Los encabezados usan diferentes estilos (algunos con fondo de color, otros sin él).], 
  [2],
  
  [Tablas HTML], 
  [Uso de tablas para layout en lugar de CSS, práctica obsoleta y no estándar.], 
  [3],
)

*Recomendación:* 
- Estandarizar estructura de todas las páginas
- Usar CSS moderno para layout en lugar de tablas
- Unificar estilos de encabezados y secciones

=== H5: Prevención de Errores

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Formulario LISTA DE CORREO], 
  [No hay validación visible del formato de email antes de enviar.], 
  [2],
  
  [Formulario LISTA DE CORREO], 
  [No hay mensaje de confirmación antes de suscribirse.], 
  [2],
  
  [Enlaces externos], 
  [Los enlaces a sitios externos (Posgrado, Investigación) no advierten al usuario que saldrá del sitio.], 
  [1],
)

*Recomendación:* 
- Implementar validación en tiempo real del email
- Agregar confirmación antes de suscribir
- Indicar cuando un enlace abre en nueva ventana o sale del sitio

=== H6: Reconocimiento Antes que Recuerdo

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Calendario Académico], 
  [El calendario se muestra como una imagen estática JPG. Los usuarios deben recordar las fechas en lugar de poder interactuar.], 
  [3],
  
  [Menú de navegación], 
  [No hay íconos que faciliten el reconocimiento rápido de las secciones.], 
  [2],
  
  [Manual de Funciones], 
  [Información extensa requiere scroll y recordar dónde estaban las secciones anteriores.], 
  [2],
)

*Recomendación:* 
- Convertir calendario a componente interactivo con filtros y búsqueda
- Agregar íconos descriptivos en el menú
- Implementar tabla de contenidos flotante en páginas largas

=== H7: Flexibilidad y Eficiencia de Uso

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Todo el sitio], 
  [No existe función de búsqueda. Los usuarios deben navegar manualmente por todas las secciones.], 
  [3],
  
  [Diseño responsive], 
  [El sitio no es responsive. En dispositivos móviles la experiencia es muy pobre.], 
  [3],
  
  [Accesos rápidos], 
  [No hay atajos de teclado ni menú de acceso rápido a secciones frecuentes.], 
  [2],
)

*Recomendación:* 
- Implementar buscador con autocompletado
- Rediseñar con enfoque mobile-first
- Agregar atajos de teclado para usuarios avanzados

=== H8: Diseño Estético y Minimalista

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Todo el sitio], 
  [Diseño basado en tablas HTML anidadas, visualmente obsoleto y poco atractivo.], 
  [3],
  
  [Imágenes decorativas], 
  [Uso excesivo de GIFs y pequeñas imágenes decorativas (flechas, separadores) que no aportan valor.], 
  [2],
  
  [Espaciado], 
  [Espaciado inconsistente entre elementos. Algunas secciones muy apretadas, otras con mucho espacio en blanco.], 
  [2],
  
  [Colores], 
  [Paleta de colores institucional correcta (azul UMSS) pero implementación visual desactualizada.], 
  [2],
)

*Recomendación:* 
- Rediseño completo con HTML5/CSS3
- Eliminar imágenes decorativas, usar CSS para elementos visuales
- Establecer sistema de espaciado consistente
- Modernizar la aplicación de la paleta de colores

=== H9: Ayudar a Reconocer, Diagnosticar y Recuperarse de Errores

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Formularios], 
  [No se observaron mensajes de error al probar el formulario de suscripción.], 
  [1],
  
  [Enlaces rotos], 
  [No hay página de error 404 personalizada (no se pudo verificar durante esta evaluación).], 
  [1],
)

*Recomendación:* 
- Implementar mensajes de error claros en formularios
- Crear página 404 personalizada con sugerencias de navegación

=== H10: Ayuda y Documentación

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema*], [*Severidad*],
  
  [Todo el sitio], 
  [No existe sección de ayuda o preguntas frecuentes para usuarios.], 
  [2],
  
  [Contacto], 
  [La información de contacto está solo en el pie de página, no es fácilmente accesible.], 
  [2],
  
  [Manual de Funciones], 
  [Aunque existe un "Manual de Funciones", está orientado a personal interno, no a usuarios del sitio.], 
  [1],
)

*Recomendación:* 
- Crear sección de ayuda/FAQ para estudiantes y público general
- Hacer más visible la información de contacto
- Agregar tooltips explicativos en secciones complejas

== Resumen de Problemas Identificados

#table(
  columns: (auto, auto, auto),
  align: center,
  [*Severidad*], [*Cantidad*], [*Porcentaje*],
  [0 (Sin problema)], [2], [8%],
  [1 (Cosmético)], [6], [25%],
  [2 (Menor)], [13], [54%],
  [3 (Mayor)], [6], [25%],
  [4 (Catastrófico)], [0], [0%],
  [*Total*], [*24*], [*100%*],
)

== Observaciones Adicionales

Durante la evaluación se observaron los siguientes aspectos positivos:

*Aspectos Positivos:*
- La estructura de información es lógica y sigue convenciones académicas
- El contenido textual es claro y bien redactado
- Los colores institucionales son apropiados
- La información de las autoridades está actualizada

*Aspectos Críticos a Mejorar:*
- El diseño técnico está completamente obsoleto (tablas HTML)
- Falta de adaptación a dispositivos móviles
- No hay herramientas de búsqueda o navegación avanzada
- El calendario académico debería ser interactivo

== Conclusión

El sitio web de la FCyT cumple con su función básica de informar, pero presenta problemas significativos de usabilidad que afectan la experiencia del usuario. Los problemas más críticos están relacionados con el diseño técnico obsoleto, la falta de responsive design y la ausencia de herramientas de búsqueda. Se recomienda una modernización integral del sitio.
