#import "@preview/based:0.2.0": base64
#let file = json("images.json")
#let fileD = json("imagesD.json")

#let evaluacion = (
  (
    // 1. Visibilidad del Estado del Sistema
    (puntuacion: 1), // ¿Se muestra visualmente el estado de carga?
    (puntuacion: 0.5), // ¿Se indica la página actual?
    (puntuacion: 0.5,

      extra: [
        *Nota:*
        Los filtros en diplomados no muestran conteo de resultados, en primer plano solo se aprecia uno, pero hay mas de uno.  
        
        *Imagen:*
        #image("images/SSiplomadoSinConteo.png")
        #image("images/segundapart.png")
      ],
    
  ), // ¿Se informa el resultado de acciones (búsquedas, filtros)?
    (puntuacion: 1), // ¿Las páginas vacías o en desarrollo muestran mensajes claros?
    (puntuacion: 0.5), // ¿Los elementos interactivos dan retroalimentación visual?
    (puntuacion: 0, 
      extra: [
        *Nota:*
        No existen breadcrumbs en ninguna página  
        *Imagen:*
        #image(base64.decode(file.dayeza.images.esta), width: 100%)
        
      ],
  ), // ¿Las migas de pan reflejan la ubicación?
  ),
  (
    // 2. Relación entre el Sistema y el Mundo Real
    (puntuacion: 1, extra: [
        *Nota:* Usa el término "Brochure"
        
        *Imagen:*
        #image(base64.decode(file.dayeza.images.terminologiaD), width: 100%)
        
      ],
    ), // ¿La terminología es familiar para el usuario?
    (
      puntuacion: 0.5,
      
    ), // ¿Enlaces e íconos apuntan a las herramientas correctas?
    (puntuacion: 1), // ¿Etiquetas y filtros son claras y sencillas?
    (puntuacion: 1), // ¿Contactos están en formato copiable y correcto?
    (puntuacion: 0, extra: [
        *Nota:* Usa el término "Brochure"
        
        *Imagen:*
        #image(base64.decode(file.dayeza.images.OJOd), width: 100%)
        #image(base64.decode(file.dayeza.images.ojoDD), width: 100%)
      ],), // ¿Los errores usan lenguaje cotidiano y sugieren solución?
    (puntuacion: 1), // ¿Mapas, documentos y redes están bien etiquetados?
    (puntuacion: 1), // ¿El lenguaje del chatbot es natural y conversacional?
  ),
  (
    // 3. Control y Libertad del Usuario
    (puntuacion: 1), // ¿Se vuelve al Inicio con un solo clic?
    (puntuacion: 1), // ¿Se puede cambiar entre tipos de programas sin regresar al Inicio?
    (puntuacion: 0.5, extra: [
        *Nota:* Existe botón "Todos" en filtros pero no un "Limpiar filtros" explícito
        
        *Imagen:*
        #image(base64.decode(file.dayeza.images.FiltrosD), width: 100%)
      ],), // ¿Existe un botón claro para borrar todos los filtros?
    (puntuacion: 1), // ¿Los avisos emergentes pueden cerrarse sin interferir la tarea?
    (puntuacion: 1), // ¿Es fácil copiar datos de contacto (dirección, teléfono) desde la página?
    (puntuacion: 0), // ¿Hay rutas de escape visibles si una acción falla o no aporta resultado?
  ),
  (
    // 4. Consistencia y Estándares
    (puntuacion: 1), // ¿Los enlaces y menús funcionan igual en todas las páginas?
    (puntuacion: 1), // ¿El diseño (colores, tipografías, botones) es coherente?
    (puntuacion: 1), // ¿Los controles (buscador, botones) mantienen el mismo comportamiento?
    (
      puntuacion: 0.5, extra: [
        *Nota:* Inconsistencia: "Maestrias" vs "Maestrías" (con/sin tilde en diferentes lugares)
        
        *Imagen:*
        #image(base64.decode(file.dayeza.images.TildeD), width: 100%)
      ],
    ), // ¿Las etiquetas y términos son consistentes y claros?
    (
      puntuacion: 1,
      /*extra: [
        *Nota:*
        El problema esta presente en toda la pagina

        *Imagen:* #image("images/image.png", height: 20%),
      ],*/
    ), // ¿El logo y las rutas principales llevan siempre al inicio?
  ),
  (
    // 5. Prevención de Errores
    (puntuacion: 1), // ¿Se ocultan o deshabilitan enlaces no funcionales?
    (puntuacion: 0, extra: [
        *Nota:* 	No hay autocompletado ni sugerencias en el buscador
        
        *Imagen:*
        #image(base64.decode(file.dayeza.images.BuscaD), width: 100%)
      ],), // ¿El buscador sugiere correcciones o alternativas?
    (puntuacion: 0.5, extra: [
        *Nota:* Usa atributo required en campos pero sin indicador visual (\*) ni mensajes personalizados
        
        *Imagen:*
        #image(base64.decode(fileD.mio.requiredD), width: 100%)
       
      ]), // ¿Los formularios señalan campos obligatorios y errores?
    (puntuacion: none), // ¿Los enlaces e imágenes rotas se detectan y comunican?
    (puntuacion: 0, extra: [
        *Nota:* La búsqueda avanzada aplicando filtros/criterios que no arrojan coincidencias muestra un bloque con el texto “No se encontraron resultados / Intenta con otros criterios de búsqueda". Esa pantalla no ofrece un botón para “Restablecer filtros”.
        
        *Imagen:*
    
        #image("images/FiltroAvanzado.png")
      ]), // ¿Hay opciones claras para recuperar una acción fallida?
    (puntuacion: 0, extra: [
        *Nota:* En el formulario de contacto todos los campos muestran el mensaje genérico “Completa este campo”. No aparece ningún texto propio del sitio que diga qué datos exactos faltan, qué formato se espera (por ejemplo, “Usa un correo institucional \@umss.edu.bo”) o qué hacer si el problema persiste. Además, al fallar la validación no se despliega ningún enlace de ayuda ni instrucciones para intentar otra vía de contacto. Por eso se considera 0 en “Los mensajes de error ayudan a resolver el problema”.
        
        *Imagen:*
        #image("images/MensajeError.png")
      ]), // ¿Los mensajes de error ayudan a resolver el problema?
  ),
  (
    // 6. Reconocimiento antes que Recuerdo
    (puntuacion: 1), // ¿Se ven los filtros aplicados?
    (puntuacion: 1), // ¿Contacto fácil de encontrar?
    (puntuacion: 1), // ¿Nombres de programas visibles?
    (puntuacion: 1), // ¿Iconos identifican categorías?
    (puntuacion: 0, extra: [
        *Nota:* No hay autosugerencias mientras se escribe.
        
        *Imagen:*
        #image("images/BuscaReal.png")
      ]), // ¿Buscador sugiere en tiempo real?
    (puntuacion: 0, extra: [
        *Nota:* No hay historial de búsquedas
        
        *Imagen:*
        #image("images/BuscaReal.png")
      ]), // ¿Se recuerdan búsquedas previas?
  ),
  (
    // 7. Flexibilidad y Eficiencia de Uso
    (puntuacion: 0.5, extra: [
        *Nota:* 	Hay accesos directos a programas desde el carrusel pero no hay atajos de teclado
        
      ]), // ¿Los usuarios frecuentes realizan tareas más rápido?
    (
      puntuacion: 1,
      /*extra: [
        *Nota:*
        En el formulario de suscripción Inicio>Generalidades>Manual de Funciones

        El botón aceptar redirige a otro formulario

        *Drive:*
        #link("https://drive.google.com/file/d/1vJ9xIKlYWhAFHkruAtr2bSxEXySau7KB/view?usp=drive_link")
      ],*/
      breakable: true,
    ), // ¿Se accede fácilmente a novedades y avisos?
    (puntuacion: 1), // ¿Buscador y filtros entregan resultados útiles?
    (puntuacion: 0.5, extra: [
        *Nota:* 	Hay menú hamburguesa pero algunos elementos no se adaptan bien
        
        *Imagen:*
        #image("images/movilD.png")
      ]), // ¿La navegación móvil es fluida y responsiva?
    (puntuacion: 1), // ¿Hay atajos o accesos directos para tareas comunes?
    (puntuacion: 1), // ¿Contactos y redes permiten comunicación rápida?
  ),
  (
    // 8. Estética y Diseño Minimalista
    // 
    (puntuacion: 1
    
  ), // ¿El diseño es claro y sin elementos innecesarios?
    (
      puntuacion: 1,
      /*extra: [
        *Nota:*
        Inicio>Generalidades>Manual de funciones>Formulario suscripción
        El boton para enviar el formulario no se ve hasta que bajes al final de la pagina, y no tenemos manera de colapsar las carreras

        *Imagen:*
        #image("images/image.png", width: 60%)
      ],*/
    ), // ¿La información se lee rápido y es fácil de escanear?
    (puntuacion: 1), // ¿Colores y tipografías son coherentes?
    (
      puntuacion: 0.5,
      //#image("images/font.png")
       extra: [
        *Nota:* El tamaño de letra es de 14 px queda por debajo del mínimo recomendado de 16 px para lectura cómoda en escritorio y móviles, así que aunque el espaciado y alineación sean consistentes, la tipografía pequeña reduce legibilidad y justifica dejar la heurística en 0.5.
        
        *Imagen:*
        #image("images/font.png")
      ]
    ), // ¿Los elementos tienen espaciado y alineación adecuados?
    (puntuacion: 1), // ¿Las imágenes aportan calidad y contexto?
    (puntuacion: 1), // ¿La interfaz transmite confianza y profesionalismo?
  ),
  (
    // 9. Ayudar a los Usuarios a Reconocer, Diagnosticar y Recuperarse de Errores
    (puntuacion: 0,
      //#image("images/font.png")
       extra: [
        *Nota:* El formulario de contacto sólo usa required. Cuando algo falla, el navegador muestra el mensaje genérico (“Completa este campo”) sin explicar qué dato falta ni cómo corregirlo, así que el usuario no recibe contexto propio del sitio.
        
      ]), // ¿Los errores son claros y comprensibles?
    (puntuacion: 0,
      //#image("images/font.png")
       extra: [
        *Nota:* El formulario Contacto no aparece ningún texto del tipo “Si el envío falla, escribe a…”, ni un enlace a otra vía de contacto. El usuario debe cerrar el mensaje del navegador y adivinar qué hacer.
        
      ]), // ¿Se indican pasos o soluciones para continuar?
    (puntuacion: 0), // ¿Hay páginas/mensajes para contenido no disponible (404)?
    (puntuacion: 0.5, extra: [
        *Nota:* Cuando realizamos búsquedas y no encuentra coincidencias, el buscador sólo imprime “No se encontraron resultados / Intenta con otros criterios de búsqueda” sin botones de “Limpiar filtros” ni enlaces sugeridos .
        
      ]), // ¿Se sugieren alternativas cuando la búsqueda no da resultados?
    (
      puntuacion: 0,
      extra: [
        *Nota:* Se maneja la animación de carga, pero si algo deja de cargar, la UI no avisa al usuario.
        
      ],
      breakable: false,
    ), // ¿Se informa de fallos de carga o pérdida de conexión sin molestar?
    (puntuacion: 0,
      extra: [
        *Nota:* La sección de doctorados muestra únicamente “Próximamente” y “Por favor, consulte más tarde”. No indica fecha, ni permite dejar datos, ni enlaza a otra área académica.

        *Imagen:*
        #image("images/ocD.png")
        
      ],), // ¿“Próximamente” indica cuándo o qué debe hacer el usuario?
    (puntuacion: 0.5,
      extra: [
        *Nota:* El único recurso inmediato es el chatbot y los botones flotantes de redes, pero no hay enlace de “volver” dentro de los mensajes de error ni un botón de soporte contextual en los formularios, por eso sólo se otorga medio punto.
        *Imagen:*
        #image("images/RutasD.png")
        
      ],), // ¿Existen rutas visibles para volver atrás o pedir ayuda?
  ),
  (
    // 10. Ayuda y Documentación
    (puntuacion: 0,
      extra: [
        *Nota:*La navegación global sólo expone Inicio, Diplomados, Maestrías, Doctorados, Información y Contactos; no existe ningún enlace titulado “Admisión”, “Cómo inscribirse” o similar en el menú principal, por lo que el visitante no encuentra un paso a paso.
       
        
      ]), // ¿Hay guía de admisión visible?
    (puntuacion: 0,
      extra: [
        *Nota:* El mismo menú de Información despliega Avisos, Documentación, DDigital y Acerca de, pero ninguna opción apunta a preguntas frecuentes o manuales de inscripción.
        *Imagen:*
        #image("images/FAQsD.png")
        
      ]), // ¿Existen FAQs o manuales de inscripción?
    (puntuacion: 0,
      extra: [
        *Nota:* La página de contactos publica un único bloque con dirección, teléfono, WhatsApp y correo general posgrado \@fcyt.umss.edu.bo sin distinguir a quién escribir para soporte tecnológico vs. consultas académicas.
        
      ]), // ¿Se distingue contacto técnico vs. académico?
    (puntuacion: 1), // ¿Se indican las modalidades de los programas?
    (puntuacion: 0.5,
      extra: [
        *Nota:* En la portada hay un bloque destacado con el texto “Reseña Historica” explicando la misión de la Dirección de Posgrado.
        *Imagen:*
        #image("images/InstiD.png")
        
      ]), // ¿La sección institucional aporta contexto claro?
    (puntuacion: 0.5,
      extra: [
        *Nota:* Aunque no hay sección formal de ayuda, el chatbot y los botones flotantes de redes permanecen visibles en todas las vistas , ofreciendo un canal rápido pero sin contenidos estructurados.
        
      ]), // ¿La ayuda es fácil de buscar y encontrar?
    (puntuacion: 0,
      extra: [
        *Nota:* En Documentacion se embeben PDF como el “Reglamento de Evaluación de Aprendizaje”, pero no se muestran fechas de publicación, número de versión ni notas de vigencia, lo que impide saber si están al día.
        *Imagen:*
        #image("images/docPDFD.png")
      ]), // ¿Los documentos están actualizados y claros?
    (puntuacion: 0,
      extra: [
        *Nota:* Ni en contactos ni en otros apartados se indican horarios o plazos de atención para las vías disponibles; el bloque de contacto solo enumera medios.
        *Imagen:*
        #image("images/RutasD.png")
        
      ]), // ¿Hay vías de soporte y tiempos de respuesta?
    (puntuacion: 1), // ¿El chatbot proporciona respuestas precisas y útiles?
  ),
)
