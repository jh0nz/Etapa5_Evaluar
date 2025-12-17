= Evaluación Individual - Miembro 3

== Información del Evaluador
- *Nombre:* Estudiante 3
- *Fecha de evaluación:* #datetime.today().display()
- *Páginas evaluadas:* Generalidades, Manual de Funciones, Calendario Académico

== Análisis Detallado por Heurística

=== H1: Visibilidad del Estado del Sistema

*Descripción:* El sistema debe mantener a los usuarios informados sobre qué está pasando, mediante retroalimentación apropiada en tiempo razonable.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Menú principal superior], 
  [No existe indicador visual que muestre en qué sección del sitio se encuentra el usuario. Todos los ítems del menú se ven iguales.], 
  [2],
  
  [Breadcrumb], 
  [El breadcrumb es muy simple: solo muestra "Inicio - Sección". No refleja la estructura completa si hay subsecciones.], 
  [2],
  
  [Estados de enlaces], 
  [Los enlaces no muestran claramente los estados :hover, :visited, :active de manera diferenciada.], 
  [1],
  
  [Progreso de carga], 
  [No hay indicadores de progreso al cargar páginas o enviar formularios.], 
  [1],
)

*Impacto en el usuario:* El usuario puede sentirse desorientado, sin saber exactamente dónde está en la estructura del sitio.

*Sugerencias de mejora:*
- Resaltar el ítem activo en el menú con color diferente o subrayado
- Implementar breadcrumbs completos que muestren toda la jerarquía
- Definir estilos claros para todos los estados de enlaces
- Agregar spinners o barras de progreso en operaciones que tomen más de 1 segundo

=== H2: Relación entre el Sistema y el Mundo Real

*Descripción:* El sistema debe hablar el lenguaje de los usuarios con palabras, frases y conceptos familiares, siguiendo convenciones del mundo real.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Terminología general], 
  [La terminología es apropiada para el contexto académico: "Generalidades", "Admisión", "Pregrado", "Posgrado".], 
  [0],
  
  [Enlaces "Arriba"], 
  [Múltiples enlaces con texto "Arriba". Aunque funcional, podría ser más descriptivo como "Volver al inicio" o usar solo un ícono de flecha.], 
  [1],
  
  [Organización de contenido], 
  [La estructura de información sigue un orden lógico similar a otros sitios universitarios.], 
  [0],
)

*Impacto en el usuario:* En general, el lenguaje es comprensible para la audiencia objetivo (estudiantes, personal académico, visitantes).

*Sugerencias de mejora:*
- Reemplazar "Arriba" con texto más descriptivo o un ícono universal (↑)
- Considerar agregar descripciones breves bajo cada ítem del menú principal

=== H3: Control y Libertad del Usuario

*Descripción:* Los usuarios a menudo eligen funciones del sistema por error y necesitarán una "salida de emergencia" claramente marcada.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Navegación general], 
  [El usuario puede navegar libremente usando el menú principal, breadcrumbs y enlaces internos.], 
  [0],
  
  [Formulario de suscripción], 
  [No hay botón "Cancelar" o "Limpiar campos" en el formulario de lista de correo.], 
  [1],
  
  [Confirmación de acciones], 
  [No se observó confirmación antes de realizar acciones (ej: suscribirse).], 
  [2],
  
  [Deshacer acciones], 
  [No hay forma visible de deshacer una suscripción desde la misma página.], 
  [2],
)

*Impacto en el usuario:* Los usuarios pueden cometer errores sin manera fácil de deshacerlos.

*Sugerencias de mejora:*
- Agregar botón "Limpiar" en formularios
- Implementar confirmación para acciones importantes
- Proveer enlace a "Administrar suscripción" o "Desuscribirse"
- Permitir navegación con botón "Atrás" del navegador sin problemas

=== H4: Consistencia y Estándares

*Descripción:* Los usuarios no deberían tener que preguntarse si diferentes palabras, situaciones o acciones significan lo mismo.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Estructura de páginas], 
  [Inconsistencia: "Generalidades" y "Manual de Funciones" tienen menú lateral, pero "Calendario" no lo tiene.], 
  [2],
  
  [Estilos de títulos], 
  [Los encabezados principales usan diferentes estilos: algunos con fondo azul centrado, otros sin fondo alineados a la izquierda.], 
  [2],
  
  [Tecnología subyacente], 
  [Uso de tablas HTML para layout, una práctica obsoleta que no sigue estándares web modernos.], 
  [3],
  
  [Navegación], 
  [El menú principal es consistente en todas las páginas evaluadas.], 
  [0],
)

*Impacto en el usuario:* La inconsistencia puede confundir a los usuarios y hacer que el sitio parezca menos profesional.

*Sugerencias de mejora:*
- Estandarizar la estructura: todas las páginas deberían tener la misma disposición
- Definir un sistema de diseño con estilos consistentes para todos los elementos
- Migrar de tablas HTML a diseño moderno con CSS Grid/Flexbox
- Crear una guía de estilo para mantener consistencia en futuras actualizaciones

=== H5: Prevención de Errores

*Descripción:* Mejor aún que buenos mensajes de error es un diseño cuidadoso que previene que un problema ocurra.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Campo email (formulario)], 
  [No hay validación en tiempo real del formato de email. El usuario solo se enterará del error al enviar.], 
  [2],
  
  [Campos obligatorios], 
  [No se marcan visualmente los campos requeridos (sin asterisco ni etiqueta "requerido").], 
  [2],
  
  [Límites de caracteres], 
  [No se indica si hay límite de caracteres en el campo de email.], 
  [1],
  
  [Confirmación], 
  [No hay paso de confirmación antes de suscribirse a la lista de correo.], 
  [2],
)

*Impacto en el usuario:* Los usuarios pueden cometer errores fácilmente evitables.

*Sugerencias de mejora:*
- Validar formato de email mientras el usuario escribe
- Marcar claramente campos obligatorios con asterisco (\*)
- Mostrar límites de caracteres si existen
- Implementar confirmación para acciones permanentes
- Usar atributos HTML5 de validación (type="email", required, etc.)

=== H6: Reconocimiento Antes que Recuerdo

*Descripción:* Minimizar la carga de memoria del usuario haciendo que objetos, acciones y opciones sean visibles.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Calendario Académico], 
  [PROBLEMA CRÍTICO: El calendario es una imagen JPG estática. Los usuarios deben recordar o anotar las fechas, no pueden buscar, copiar o interactuar.], 
  [3],
  
  [Navegación], 
  [No hay íconos en el menú que ayuden al reconocimiento visual rápido de las secciones.], 
  [2],
  
  [Manual de Funciones], 
  [Es un documento largo sin índice flotante. El usuario debe recordar dónde vio información específica.], 
  [2],
  
  [Opciones disponibles], 
  [No siempre es claro qué elementos son clickeables vs. solo texto.], 
  [2],
)

*Impacto en el usuario:* Los usuarios deben hacer esfuerzo mental extra para recordar información y navegar el sitio.

*Sugerencias de mejora:*
- URGENTE: Convertir calendario a formato interactivo (HTML/CSS o componente JavaScript)
- Agregar íconos significativos al menú de navegación
- Implementar tabla de contenidos flotante en páginas largas
- Hacer obvio qué elementos son interactivos (cursor pointer, subrayado en hover, etc.)
- Considerar agregar funcionalidad de búsqueda en el calendario

=== H7: Flexibilidad y Eficiencia de Uso

*Descripción:* Los aceleradores — invisibles para usuarios novatos — pueden acelerar la interacción para usuarios expertos.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Búsqueda], 
  [PROBLEMA CRÍTICO: No existe función de búsqueda en el sitio. Los usuarios deben navegar manualmente por todas las secciones.], 
  [3],
  
  [Responsive Design], 
  [PROBLEMA CRÍTICO: El sitio no es responsive. En dispositivos móviles (más del 60% del tráfico web actual) es casi inutilizable.], 
  [3],
  
  [Atajos de teclado], 
  [No hay atajos de teclado documentados para navegación rápida.], 
  [1],
  
  [Accesos directos], 
  [No hay sección de "enlaces frecuentes" o "accesos rápidos" a información más solicitada.], 
  [2],
  
  [Historial/Favoritos], 
  [No hay manera de marcar secciones como favoritas o ver historial de navegación en el sitio.], 
  [1],
)

*Impacto en el usuario:* Tanto usuarios novatos como expertos pierden tiempo buscando información.

*Sugerencias de mejora:*
- URGENTE: Implementar buscador global con autocompletado
- URGENTE: Rediseñar con enfoque mobile-first para dispositivos móviles
- Agregar sección "Enlaces Rápidos" o "Más Visitados"
- Documentar atajos de teclado básicos
- Considerar función de "Favoritos" para usuarios registrados

=== H8: Diseño Estético y Minimalista

*Descripción:* Los diálogos no deben contener información irrelevante o raramente necesaria.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Código HTML], 
  [PROBLEMA CRÍTICO: Todo el sitio usa tablas anidadas para layout. El código es extremadamente complejo e inmantenible.], 
  [3],
  
  [Elementos decorativos], 
  [Exceso de imágenes GIF pequeñas (flechas, puntos, separadores) que no aportan valor y ralentizan la carga.], 
  [2],
  
  [Espacio en blanco], 
  [Espaciado inconsistente: algunas áreas muy apretadas, otras con demasiado espacio vacío.], 
  [2],
  
  [Paleta de colores], 
  [Los colores institucionales (azul UMSS) son apropiados, pero su aplicación visual es desactualizada.], 
  [2],
  
  [Tipografía], 
  [Tamaños de fuente inconsistentes. Texto muy pequeño en algunas secciones.], 
  [2],
)

*Impacto en el usuario:* El diseño obsoleto puede hacer que los usuarios perciban el sitio como poco confiable o descuidado.

*Sugerencias de mejora:*
- URGENTE: Rediseño completo usando HTML5 semántico y CSS3
- Eliminar todas las imágenes decorativas, usar CSS para elementos visuales
- Establecer sistema de espaciado consistente (ej: múltiplos de 8px)
- Modernizar la aplicación de colores institucionales
- Definir escala tipográfica consistente (ej: 14px base, 16px, 20px, 24px, 32px para títulos)

=== H9: Ayudar a Reconocer, Diagnosticar y Recuperarse de Errores

*Descripción:* Los mensajes de error deben expresarse en lenguaje simple, indicar el problema y sugerir una solución.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Validación de formulario], 
  [No se pudo verificar cómo maneja errores el formulario (requiere envío real), pero no se ve validación cliente.], 
  [1],
  
  [Página 404], 
  [Al probar con URL inexistente, aparece error genérico del servidor en lugar de página personalizada.], 
  [2],
  
  [Enlaces rotos], 
  [No se encontraron enlaces rotos en las páginas evaluadas.], 
  [0],
  
  [Mensajes de éxito], 
  [No se observó mensaje de confirmación de éxito tras acciones.], 
  [1],
)

*Impacto en el usuario:* Cuando ocurren errores, los usuarios quedan desorientados sin guía clara.

*Sugerencias de mejora:*
- Implementar validación del lado del cliente con mensajes específicos
- Crear página 404 personalizada con sugerencias y enlaces útiles
- Mostrar mensajes de éxito claros tras completar acciones
- Los mensajes de error deben ser constructivos, no culpar al usuario

=== H10: Ayuda y Documentación

*Descripción:* Aunque es mejor si el sistema puede usarse sin documentación, puede ser necesario proveer ayuda y documentación.

#table(
  columns: (1fr, 2fr, auto),
  align: (left, left, center),
  [*Ubicación*], [*Problema Detectado*], [*Severidad*],
  
  [Sección de ayuda], 
  [No existe sección de "Ayuda", "FAQ" o "Preguntas Frecuentes" para usuarios del sitio web.], 
  [2],
  
  [Información de contacto], 
  [El contacto está solo en el footer, poco visible. No hay botón "Contáctenos" destacado.], 
  [2],
  
  [Tooltips/ayuda contextual], 
  [No hay tooltips explicativos en ningún lugar del sitio.], 
  [2],
  
  [Manual de Funciones], 
  [Existe pero es para personal interno, no para usuarios generales del sitio.], 
  [1],
  
  [Tutorial de uso], 
  [No hay guía de cómo usar el sitio web para nuevos estudiantes.], 
  [2],
)

*Impacto en el usuario:* Usuarios nuevos pueden tener dificultades para encontrar información o entender cómo usar ciertas funciones.

*Sugerencias de mejora:*
- Crear sección FAQ completa para estudiantes, postulantes y visitantes
- Hacer botón "Contáctenos" más prominente en la navegación principal
- Implementar tooltips en formularios y elementos complejos
- Crear guía rápida para nuevos estudiantes
- Considerar chatbot o asistente virtual para consultas comunes

== Matriz de Problemas por Severidad y Heurística

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  align: center,
  [*Heurística*], [*Sev 0*], [*Sev 1*], [*Sev 2*], [*Sev 3*], [*Total*],
  [H1], [0], [2], [2], [0], [4],
  [H2], [2], [1], [0], [0], [3],
  [H3], [1], [1], [2], [0], [4],
  [H4], [1], [0], [2], [1], [4],
  [H5], [0], [1], [3], [0], [4],
  [H6], [0], [0], [3], [1], [4],
  [H7], [0], [2], [1], [2], [5],
  [H8], [0], [0], [4], [1], [5],
  [H9], [1], [2], [1], [0], [4],
  [H10], [0], [1], [4], [0], [5],
  [*Total*], [*5*], [*10*], [*22*], [*5*], [*42*],
)

== Top 5 Problemas Críticos

+ *Calendario como imagen estática* (H6, Severidad 3)
  - Impide interacción, búsqueda y accesibilidad
  
+ *Diseño con tablas HTML obsoletas* (H4/H8, Severidad 3)
  - Código complejo, difícil mantenimiento, no responsive

+ *Falta de función de búsqueda* (H7, Severidad 3)
  - Dificulta enormemente encontrar información específica

+ *No responsive para móviles* (H7, Severidad 3)
  - Inutilizable en más del 60% de dispositivos actuales

+ *Falta de ayuda y documentación* (H10, Severidad 2)
  - Usuarios nuevos quedan desorientados

== Conclusión Personal

El sitio web de la FCyT cumple su propósito básico de proveer información, pero está técnicamente desactualizado en aproximadamente 10-15 años. Los problemas más graves están en:

- Tecnología obsoleta (tablas HTML)
- Falta de adaptación móvil
- Calendario no interactivo
- Ausencia de búsqueda

*Recomendación principal:* Realizar un rediseño integral del sitio usando tecnologías modernas, priorizando responsive design y experiencia de usuario.
