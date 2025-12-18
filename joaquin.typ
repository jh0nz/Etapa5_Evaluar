#let evaluacion = (
  (
    // 1. Visibilidad del Estado del Sistema
    (puntuacion: 0.5), // ¿Se muestra visualmente el estado de carga?
    (puntuacion: 0.5), // ¿Se indica la página actual?
    (puntuacion: 0.5), // ¿Se informa el resultado de acciones (búsquedas, filtros)?
    (puntuacion: 0.5), // ¿Las páginas vacías o en desarrollo muestran mensajes claros?
    (puntuacion: 0.5), // ¿Los elementos interactivos dan retroalimentación visual?
    (puntuacion: 0,      extra: [
        Las migas de pan no reflejan la ubicacion donde esta
      #image("images/Pie_error.png")
      ]), // ¿Las migas de pan reflejan la ubicación?
  ),
  (
    // 2. Relación entre el Sistema y el Mundo Real
    (puntuacion: 1), // ¿La terminología es familiar para el usuario?
    (puntuacion: 0.5), // ¿Enlaces e íconos apuntan a las herramientas correctas?
    (puntuacion: 0.5), // ¿Etiquetas y filtros son claras y sencillas?
    (puntuacion: 1), // ¿Contactos están en formato copiable y correcto?
    (puntuacion: 0.5), // ¿Los errores usan lenguaje cotidiano y sugieren solución?
    (puntuacion: 1), // ¿Mapas, documentos y redes están bien etiquetados?
    (puntuacion: 0.5), // ¿El lenguaje del chatbot es natural y conversacional?
  ),
  (
    // 3. Control y Libertad del Usuario
    (puntuacion: 1), // ¿Se vuelve al Inicio con un solo clic?
    (puntuacion: 1), // ¿Se puede cambiar entre tipos de programas sin regresar al Inicio?
            (
      puntuacion: 0,
      extra: [
        No existe un boton para borrar los fltros
      #image("images/BusquedaError.png")
      ],
    ),// ¿Existe un botón claro para borrar todos los filtros?
    (puntuacion: 0.5), // ¿Los avisos emergentes pueden cerrarse sin interferir la tarea?
    (puntuacion: 0.5), // ¿Es fácil copiar datos de contacto (dirección, teléfono) desde la página?
    (puntuacion: 0.5), // ¿Hay rutas de escape visibles si una acción falla o no aporta resultado?
  ),
  (
    // 4. Consistencia y Estándares
    (puntuacion: 1), // ¿Los enlaces y menús funcionan igual en todas las páginas?
    (puntuacion: 0.5), // ¿El diseño (colores, tipografías, botones) es coherente?
    (puntuacion: 0.5), // ¿Los controles (buscador, botones) mantienen el mismo comportamiento?
    (puntuacion: 0.5,
      extra: [
        *Nota:*
        En algunas partes no cumple con el diseno responsive
      ],), // ¿Las etiquetas y términos son consistentes y claros?
    (puntuacion: 1,), // ¿El logo y las rutas principales llevan siempre al inicio?
  ),
  (
    // 5. Prevención de Errores
    (puntuacion: 1,), // ¿Se ocultan o deshabilitan enlaces no funcionales?
    (puntuacion: 0,
    extra: [
        *Nota:*
        El buscador no sugiere ninguna corrección o alternativa
      ],
    ), // ¿El buscador sugiere correcciones o alternativas?
    (puntuacion: 0,
    extra: [
        *Nota:*
        Los formularion no senalan los campos obligatorios y los errores
      ],), // ¿Los formularios señalan campos obligatorios y errores?
    (puntuacion: 0), // ¿Los enlaces e imágenes rotas se detectan y comunican?
    (puntuacion: 0.5), // ¿Hay opciones claras para recuperar una acción fallida?
    (puntuacion: 0), // ¿Los mensajes de error ayudan a resolver el problema?
  ),
  (
    // 6. Reconocimiento antes que Recuerdo
    (puntuacion: 1), // ¿Se ven los filtros aplicados?
    (puntuacion: 0.5), // ¿Contacto fácil de encontrar?
    (puntuacion: 1), // ¿Nombres de programas visibles?
    (puntuacion: 1), // ¿Iconos identifican categorías?
    (puntuacion: 0), // ¿Buscador sugiere en tiempo real?
    (puntuacion: 0), // ¿Se recuerdan búsquedas previas?
  ),
  (
    // 7. Flexibilidad y Eficiencia de Uso
    (puntuacion: 0), // ¿Los usuarios frecuentes realizan tareas más rápido?
    (puntuacion: 0.5,), // ¿Se accede fácilmente a novedades y avisos?
    (puntuacion: 0.5), // ¿Buscador y filtros entregan resultados útiles?
    (puntuacion: 0.5,extra:[ *Nota:* algunas partes no esta bien optimizado #image("images/movilResponsive.png" )]), // ¿La navegación móvil es fluida y responsiva?
    (puntuacion: 0.5), // ¿Hay atajos o accesos directos para tareas comunes?
    (puntuacion: 0.5), // ¿Contactos y redes permiten comunicación rápida?
  ),
  (
    // 8. Estética y Diseño Minimalista
    (puntuacion: 1), // ¿El diseño es claro y sin elementos innecesarios?
    (
      puntuacion: 0.5,
    ), // ¿La información se lee rápido y es fácil de escanear?
    (puntuacion: 1), // ¿Colores y tipografías son coherentes?
    (
      puntuacion: 0.5,), // ¿Los elementos tienen espaciado y alineación adecuados?
    (puntuacion: 0.5), // ¿Las imágenes aportan calidad y contexto?
    (puntuacion: 0.5), // ¿La interfaz transmite confianza y profesionalismo?
  ),
  (
    // 9. Ayudar a los Usuarios a Reconocer, Diagnosticar y Recuperarse de Errores
    (puntuacion: 0.5), // ¿Los errores son claros y comprensibles?
    (puntuacion: 0.5), // ¿Se indican pasos o soluciones para continuar?
    (puntuacion: 0), // ¿Hay páginas/mensajes para contenido no disponible (404)?
    (puntuacion: 0,      
    extra: [
        *Nota:* no se sugiere alternativas cuando la busqueda no da resultados
      ],), // ¿Se sugieren alternativas cuando la búsqueda no da resultados?
    (
  puntuacion: 0,), // ¿Se informa de fallos de carga o pérdida de conexión sin molestar?
    (puntuacion: 0), // ¿“Próximamente” indica cuándo o qué debe hacer el usuario?
    (puntuacion: 0.5), // ¿Existen rutas visibles para volver atrás o pedir ayuda?
  ),
  (
    // 10. Ayuda y Documentación
    (puntuacion: 1), // ¿Hay guía de admisión visible?
    (puntuacion: 0.5), // ¿Existen FAQs o manuales de inscripción?
    (puntuacion: 0.5), // ¿Se distingue contacto técnico vs. académico?
    (puntuacion: 0.5), // ¿Se indican las modalidades de los programas?
    (puntuacion: 0), // ¿La sección institucional aporta contexto claro?
    (puntuacion: 0.5), // ¿La ayuda es fácil de buscar y encontrar?
    (puntuacion: 0.5), // ¿Los documentos están actualizados y claros?
    (puntuacion: 0.5), // ¿Hay vías de soporte y tiempos de respuesta?
    (puntuacion: 0.5), // ¿El chatbot proporciona respuestas precisas y útiles?
  ),
)
