#let evaluacion = (
  (
    // 1. Visibilidad del Estado del Sistema
    (puntuacion: 1), // ¿Se muestra visualmente el estado de carga?
    (puntuacion: 1), // ¿Se indica la página actual?
    (puntuacion: 0.5), // ¿Se informa el resultado de acciones (búsquedas, filtros)?
    (puntuacion: 0.5), // ¿Las páginas vacías o en desarrollo muestran mensajes claros?
    (puntuacion: 1), // ¿Los elementos interactivos dan retroalimentación visual?
    (puntuacion: 0,
      extra: [
        *Nota:*
        La página no cuenta con migas de pan que indiquen la ubicación actual del usuario dentro del sitio. Se recomienda incorporar una barra de navegación secundaria, ubicada debajo del encabezado principal, que muestre de forma clara la jerarquía de navegación y permita identificar fácilmente la posición actual del usuario dentro del sistema.

        *Imagen:*#image("images/Migasdepan-noexistentes.png")
      ],
    ), // ¿Las migas de pan reflejan la ubicación?
  ),
  (
    // 2. Relación entre el Sistema y el Mundo Real
    (puntuacion: 1), // ¿La terminología es familiar para el usuario?
    (puntuacion: 1), // ¿Enlaces e íconos apuntan a las herramientas correctas?
    (puntuacion: 1), // ¿Etiquetas y filtros son claras y sencillas?
    (puntuacion: 0.5), // ¿Contactos están en formato copiable y correcto?
    (puntuacion: 0.5), // ¿Los errores usan lenguaje cotidiano y sugieren solución?
    (puntuacion: 1), // ¿Mapas, documentos y redes están bien etiquetados?
    (puntuacion: 1), // ¿El lenguaje del chatbot es natural y conversacional?
  ),
  (
    // 3. Control y Libertad del Usuario
    (puntuacion: 1), // ¿Se vuelve al Inicio con un solo clic?
    (puntuacion: 1), // ¿Se puede cambiar entre tipos de programas sin regresar al Inicio?
    (puntuacion: 0,
      extra: [
        *Nota:*
        No existe un botón claro para borrar todos los filtros. Se sugiere incorporar un botón visible y claramente identificado, como “Limpiar filtros” o “Restablecer”, que permita eliminar todos los criterios aplicados en una sola acción, facilitando la recuperación rápida del estado inicial y mejorando el control del usuario sobre la interfaz.

        *Imagen:*#image("images/buscador.png")
      ],
    ), // ¿Existe un botón claro para borrar todos los filtros?
    (puntuacion: 1), // ¿Los avisos emergentes pueden cerrarse sin interferir la tarea?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        La copia de los datos de contacto es parcialmente fácil, pero puede mejorarse. Aunque la información está visible y en formato texto, no existen ayudas explícitas que faciliten o indiquen claramente la acción de copiar.

        *Imagen:*#image("images/contactos.png", width: 30%)
      ],
    ), // ¿Es fácil copiar datos de contacto (dirección, teléfono) desde la página?
    (puntuacion: 0.5), // ¿Hay rutas de escape visibles si una acción falla o no aporta resultado?
  ),
  (
    // 4. Consistencia y Estándares
    (puntuacion: 1), // ¿Los enlaces y menús funcionan igual en todas las páginas?
    (puntuacion: 1), // ¿El diseño (colores, tipografías, botones) es coherente?
    (puntuacion: 0,
      extra: [
        *Nota:*
         Ambos controles llevan a la misma sección, pero uno requiere texto obligatorio y el otro no, lo que rompe la consistencia del comportamiento.

        *Imagen:*#image("images/Buscadordoble.png")
      ],
    ), // ¿Los controles (buscador, botones) mantienen el mismo comportamiento?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        Las etiquetas y los términos son parcialmente claros, pero presentan problemas de consistencia y especificidad. Aunque los nombres de las secciones son comprensibles en general, algunos términos varían en su redacción o resultan demasiado genéricos, lo que puede generar confusión sobre el contenido que se encontrará en cada opción. Se recomienda unificar la redacción de los términos y utilizar etiquetas más claras y específicas para mejorar la coherencia y la facilidad de navegación.

        *Imagen:*#image("images/Etiquetas y terminos.png")
      ],
    ), // ¿Las etiquetas y términos son consistentes y claros?
    (puntuacion: 1), // ¿El logo y las rutas principales llevan siempre al inicio?
  ),
  (
    // 5. Prevención de Errores
    (puntuacion: 0), // ¿Se ocultan o deshabilitan enlaces no funcionales?
    (puntuacion: 0,
      extra: [
        *Nota:*
        El buscador no sugiere correcciones ni alternativas cuando no se ingresan términos válidos o cuando la búsqueda no arroja resultados. Se recomienda incorporar sugerencias como correcciones ortográficas, términos relacionados o búsquedas frecuentes para ayudar al usuario a reformular su consulta y mejorar la experiencia de uso.
      ],
   ), // ¿El buscador sugiere correcciones o alternativas?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        Parcialmente. Algunos campos obligatorios pueden inferirse por el contexto, pero no se señalan de forma explícita ni se muestran mensajes de error claros cuando la información es incompleta o incorrecta. Se recomienda indicar los campos obligatorios de manera visible y proporcionar retroalimentación inmediata y comprensible ante errores.
      ],
   ), // ¿Los formularios señalan campos obligatorios y errores?
    (puntuacion: 1), // ¿Los enlaces e imágenes rotas se detectan y comunican?
    (puntuacion: 0), // ¿Hay opciones claras para recuperar una acción fallida?
    (puntuacion: 0.5), // ¿Los mensajes de error ayudan a resolver el problema?
  ),
  (
    // 6. Reconocimiento antes que Recuerdo
    (puntuacion: 1), // ¿Se ven los filtros aplicados?
    (puntuacion: 1), // ¿Contacto fácil de encontrar?
    (puntuacion: 1), // ¿Nombres de programas visibles?
    (puntuacion: 0.5), // ¿Iconos identifican categorías?
    (puntuacion: 1), // ¿Buscador sugiere en tiempo real?
    (puntuacion: 0), // ¿Se recuerdan búsquedas previas?
  ),
  (
    // 7. Flexibilidad y Eficiencia de Uso
    (puntuacion: 0.5), // ¿Los usuarios frecuentes realizan tareas más rápido?
    (puntuacion: 0.5), // ¿Se accede fácilmente a novedades y avisos?
    (puntuacion: 1), // ¿Buscador y filtros entregan resultados útiles?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
       Parcialmente. La navegación móvil se adapta, pero algunos elementos como el video y los botones se desalinean y afectan la interacción. Se recomienda ajustar el diseño responsivo con contenedores flexibles y reglas específicas para móvil, asegurando una correcta alineación y mejor experiencia de uso.

        *Imagen:*#image("images/movil1.png", width: 20%)
        *Imagen:*#image("images/movil2.png", width: 20%)
      ],
   ), // ¿La navegación móvil es fluida y responsiva?
    (puntuacion: 0.5), // ¿Hay atajos o accesos directos para tareas comunes?
    (puntuacion: 0.5), // ¿Contactos y redes permiten comunicación rápida?
  ),
  (
    // 8. Estética y Diseño Minimalista
    (puntuacion: 0.5), // ¿El diseño es claro y sin elementos innecesarios?
    (puntuacion: 1), // ¿La información se lee rápido y es fácil de escanear?
    (puntuacion: 0.5), // ¿Colores y tipografías son coherentes?
    (puntuacion: 0.5,), // ¿Los elementos tienen espaciado y alineación adecuados?
    (puntuacion: 0.5), // ¿Las imágenes aportan calidad y contexto?
    (puntuacion: 0.5), // ¿La interfaz transmite confianza y profesionalismo?
  ),
  (
    // 9. Ayudar a los Usuarios a Reconocer, Diagnosticar y Recuperarse de Errores
    (puntuacion: 0.5), // ¿Los errores son claros y comprensibles?
    (puntuacion: 0), // ¿Se indican pasos o soluciones para continuar?
    (puntuacion: 0), // ¿Hay páginas/mensajes para contenido no disponible (404)?
    (puntuacion: 0), // ¿Se sugieren alternativas cuando la búsqueda no da resultados?
    (puntuacion: 0), // ¿Se informa de fallos de carga o pérdida de conexión sin molestar?
    (puntuacion: 0.5), // ¿“Próximamente” indica cuándo o qué debe hacer el usuario?
    (puntuacion: 0.5), // ¿Existen rutas visibles para volver atrás o pedir ayuda?
  ),
  (
    // 10. Ayuda y Documentación
    (puntuacion: 0), // ¿Hay guía de admisión visible?
    (puntuacion: 0), // ¿Existen FAQs o manuales de inscripción?
    (puntuacion: 0), // ¿Se distingue contacto técnico vs. académico?
    (puntuacion: 1), // ¿Se indican las modalidades de los programas?
    (puntuacion: 0.5), // ¿La sección institucional aporta contexto claro?
    (puntuacion: 0), // ¿La ayuda es fácil de buscar y encontrar?
    (puntuacion: 1), // ¿Los documentos están actualizados y claros?
    (puntuacion: 0), // ¿Hay vías de soporte y tiempos de respuesta?
    (puntuacion: 0), // ¿El chatbot proporciona respuestas precisas y útiles?
  ),
)
