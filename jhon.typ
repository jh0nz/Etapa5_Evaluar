#import "@preview/based:0.2.0": base64
#let file = json("images.json")

#let evaluacion = (
  (
    // 1. Visibilidad del Estado del Sistema
    (puntuacion: 0.5,
    ), // ¿Se muestra visualmente el estado de carga?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        Falta un sistema de navegación local. Se resalta la sección actual en el header, en movil se tiene que abrir el menú hamburger en la izquierda para ver donde estoy, y no me informa que que subseccion de Información estoy.
        #image(base64.decode(file.jhon.images.header-activo), width: 50%)
      ]
    ), // ¿Se indica la página actual?
    (puntuacion: 0.5), // ¿Se informa el resultado de acciones (búsquedas, filtros)?
    (puntuacion: 1), // ¿Las páginas vacías o en desarrollo muestran mensajes claros?
    (
      puntuacion: 0.5,
      extra: [
        *Nota:*
        Los elementos interactivos en el header no proporcionan una indicación clara de su interactividad. Aunque se resalta la sección activa tras la navegación, no hay retroalimentación visual al pasar el cursor sobre los elementos (hover).
       #image(base64.decode(file.jhon.images.header-information), width: 90%)
      ]
    ), // ¿Los elementos interactivos dan retroalimentación visual?
    (puntuacion: 0), // ¿Las migas de pan reflejan la ubicación?
  ),
  (
    // 2. Relación entre el Sistema y el Mundo Real
    (puntuacion: 1), // ¿La terminología es familiar para el usuario?
    (
      puntuacion: 0.5,

    ), // ¿Enlaces e íconos apuntan a las herramientas correctas?
    (puntuacion: 0.5), // ¿Etiquetas y filtros son claras y sencillas?
    (puntuacion: 1), // ¿Contactos están en formato copiable y correcto?
    (puntuacion: 0), // ¿Los errores usan lenguaje cotidiano y sugieren solución?
    (puntuacion: 0.5), // ¿Mapas, documentos y redes están bien etiquetados?
    (puntuacion: 1), // ¿El lenguaje del chatbot es natural y conversacional?
  ),
  (
    // 3. Control y Libertad del Usuario
    (puntuacion: 1), // ¿Se vuelve al Inicio con un solo clic?
    (puntuacion: 1), // ¿Se puede cambiar entre tipos de programas sin regresar al Inicio?
    (puntuacion: 0), // ¿Existe un botón claro para borrar todos los filtros?
    (puntuacion: 1), // ¿Los avisos emergentes pueden cerrarse sin interferir la tarea?
    (puntuacion: 0.5), // ¿Es fácil copiar datos de contacto (dirección, teléfono) desde la página?
    (puntuacion: 0.5), // ¿Hay rutas de escape visibles si una acción falla o no aporta resultado?
  ),
  (
    // 4. Consistencia y Estándares
    (puntuacion: 0.5), // ¿Los enlaces y menús funcionan igual en todas las páginas?
    (puntuacion: 1), // ¿El diseño (colores, tipografías, botones) es coherente?
    (puntuacion: 0,
    extra: [
      *Nota:*
      La página de inicio presenta dos buscadores visibles con comportamientos diferentes. El buscador principal no permite búsquedas sin ingresar texto, mientras que el segundo redirige a la página de búsqueda con filtros al activarse.
      #image(base64.decode(file.jhon.images.dos-buscadores), width: 50%)

      *Nota:*
      Algunos botones no proporcionan retroalimentación visual al pasar el cursor (hover), como el de "Reseña Histórica", mientras que otros, como el de búsqueda, sí lo hacen. Esta inconsistencia genera confusión en la usabilidad.
      #grid(
        columns: (1fr, 1fr),
        image(base64.decode(file.jhon.images.search-interact), width: 100%),
        image(base64.decode(file.jhon.images.circle-no-interact), width: 100%)
      )
    ]
  ), // ¿Los controles (buscador, botones) mantienen el mismo comportamiento?
    (
      puntuacion: 0,
      extra: [
        *Nota:*
        Se emplea un ícono interactivo con el título "Reseña Histórica" que redirige al apartado "Acerca del Posgrado". Sin embargo, los nombres de las secciones no corresponden, lo que genera confusión. Además, ningún botón interactuable cuenta con una etiqueta textual que indique su interactividad.
        #image(base64.decode(file.jhon.images.icon-no-label), width: 60%)
      ],
    ), // ¿Las etiquetas y términos son consistentes y claros?
    (
      puntuacion: 1,

    ), // ¿El logo y las rutas principales llevan siempre al inicio?
  ),
  (
    // 5. Prevención de Errores
    (puntuacion: 0,
    extra:[
      *Nota:*
      La página de doctorados se encuentra vacía y no proporciona contenido funcional. En la vista móvil, no se indica que próximamente estarán disponibles los programas. No se recomienda mantener este enlace activo a futuro, ya que la página oficial del posgrado no incluye este apartado. Lo ideal sería ocultar o deshabilitar el enlace para prevenir accesos innecesarios y reducir la confusión del usuario.
      #image(base64.decode(file.jhon.images.doctorados), width: 40%)
    ]
    ), // ¿Se ocultan o deshabilitan enlaces no funcionales?
    (puntuacion: 0,
      extra: [
        *Nota:*
        El sistema solo informa que no se encontraron resultados, sin proporcionar sugerencias de correcciones o alternativas similares. Esto limita la capacidad del usuario para refinar su búsqueda y mejora la experiencia general.
        #image(base64.decode(file.jhon.images.sugerencia-busqueda), width: 40%)
      ]
  ), // ¿El buscador sugiere correcciones o alternativas?
    (puntuacion: 0.5), // ¿Los formularios señalan campos obligatorios y errores?
    (puntuacion: 0.5), // ¿Los enlaces e imágenes rotas se detectan y comunican?
    (puntuacion: 0.5), // ¿Hay opciones claras para recuperar una acción fallida?
    (puntuacion: 0.5), // ¿Los mensajes de error ayudan a resolver el problema?
  ),
  (
    // 6. Reconocimiento antes que Recuerdo
    (puntuacion: 1), // ¿Se ven los filtros aplicados?
    (puntuacion: 1), // ¿Contacto fácil de encontrar?
    (puntuacion: 0.5), // ¿Nombres de programas visibles?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        Los íconos se utilizan en la página principal para identificar secciones, pero no se replican en el header. Esta inconsistencia visual dificulta la navegación y la identificación rápida de categorías.
        #columns(2)[
          #image(base64.decode(file.jhon.images.home-icon), width: 60%)
          #image(base64.decode(file.jhon.images.header-no-icon), width: 80%)
        ]
      ]
    ), // ¿Iconos identifican categorías?
    (puntuacion: 0.5), // ¿Buscador sugiere en tiempo real?
    (puntuacion: 0), // ¿Se recuerdan búsquedas previas?
  ),
  (
    // 7. Flexibilidad y Eficiencia de Uso
    (puntuacion: 0), // ¿Los usuarios frecuentes realizan tareas más rápido?
    (puntuacion: 0.5), // ¿Se accede fácilmente a novedades y avisos?
    (puntuacion: 1), // ¿Buscador y filtros entregan resultados útiles?
    (puntuacion: 0.5), // ¿La navegación móvil es fluida y responsiva?
    (puntuacion: 0.5), // ¿Hay atajos o accesos directos para tareas comunes?
    (puntuacion: 1), // ¿Contactos y redes permiten comunicación rápida?
  ),
  (
    // 8. Estética y Diseño Minimalista
    (puntuacion: 0,
    extra:
    [
      *Nota:*
      Las tarjetas de programas presentan redundancia al mostrar el nombre tanto en la imagen como en el título. Las tarjetas podrían ser más compactas para una comprensión rápida.
      #image(base64.decode(file.jhon.images.minimalista), width: 50%)
    ]
  
  ), // ¿El diseño es claro y sin elementos innecesarios?
    (
      puntuacion: 0.5
    ), // ¿La información se lee rápido y es fácil de escanear?
    (puntuacion: 1), // ¿Colores y tipografías son coherentes?
    (
      puntuacion: 0.5

    ), // ¿Los elementos tienen espaciado y alineación adecuados?
    (puntuacion: 0.5), // ¿Las imágenes aportan calidad y contexto?
    (puntuacion: 0.5), // ¿La interfaz transmite confianza y profesionalismo?
  ),
  (
    // 9. Ayudar a los Usuarios a Reconocer, Diagnosticar y Recuperarse de Errores
    (puntuacion: 1), // ¿Los errores son claros y comprensibles?
    (puntuacion: 0.5), // ¿Se indican pasos o soluciones para continuar?
    (puntuacion: 0), // ¿Hay páginas/mensajes para contenido no disponible (404)?
    (puntuacion: 0), // ¿Se sugieren alternativas cuando la búsqueda no da resultados?
    (
puntuacion: 0

), // ¿Se informa de fallos de carga o pérdida de conexión sin molestar?
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
    (puntuacion: 0), // ¿Los documentos están actualizados y claros?
    (puntuacion: 0.5), // ¿Hay vías de soporte y tiempos de respuesta?
    (puntuacion: 1), // ¿El chatbot proporciona respuestas precisas y útiles?
  ),
)
