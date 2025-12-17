#let heuristicas = (
  (
    nombre: "1. Visibilidad del estado del sistema",
    preguntas: (
      (texto: "¿Se muestra visualmente el estado de carga, progreso o proceso en curso?", peso: 0.25),
      (texto: "¿El sistema da respuesta inmediata a las acciones del usuario?", peso: 0.3),
      (texto: "¿Los mensajes de estado (éxito, error, espera) son claros y oportunos?", peso: 0.25),
      (texto: "¿El sitio informa al usuario si una acción tomará tiempo?", peso: 0.15),
      (texto: "¿Los indicadores de estado son consistentes y accesibles?", peso: 0.05),
    ),
  ),
  (
    nombre: "2. Correspondencia entre el sistema y el mundo real",
    preguntas: (
      (texto: "¿El lenguaje del sitio coincide con el del público objetivo (no técnico)?", peso: 0.35),
      (texto: "¿Los íconos y metáforas visuales representan correctamente su función?", peso: 0.3),
      (texto: "¿El orden de la información es lógico (de general a específico)?", peso: 0.2),
      (texto: "¿Los nombres de las secciones o botones son naturales y fáciles de entender?", peso: 0.15),
    ),
  ),
  (
    nombre: "3. Control y libertad del usuario",
    preguntas: (
      (texto: "¿El usuario puede cancelar o deshacer acciones?", peso: 0.35),
      (texto: "¿Existen confirmaciones antes de acciones críticas?", peso: 0.25),
      (texto: "¿El usuario puede salir de una sección sin perder datos?", peso: 0.2),
      (texto: "¿El flujo de navegación permite volver fácilmente a pantallas previas?", peso: 0.15),
      (texto: "¿Existen atajos o botones de 'volver al inicio'?", peso: 0.05),
    ),
  ),
  (
    nombre: "4. Consistencia y estándares",
    preguntas: (
      (texto: "¿Los botones, colores y estilos mantienen el mismo comportamiento?", peso: 0.25),
      (texto: "¿Las palabras y acciones son coherentes en todo el sitio?", peso: 0.25),
      (texto: "¿Se siguen las convenciones comunes de diseño?", peso: 0.2),
      (texto: "¿El sitio usa patrones estándar de navegación?", peso: 0.15),
      (texto: "¿La experiencia es consistente entre móvil y escritorio?", peso: 0.15),
    ),
  ),
  (
    nombre: "5. Prevención de errores",
    preguntas: (
      (texto: "¿El sistema valida correctamente los datos de entrada?", peso: 0.25),
      (texto: "¿Advierte antes de ejecutar acciones irreversibles?", peso: 0.3),
      (texto: "¿Reduce el riesgo de errores de clic o confusión?", peso: 0.2),
      (texto: "¿Solicita confirmación para operaciones importantes?", peso: 0.15),
      (texto: "¿Proporciona mensajes predictivos o sugerencias?", peso: 0.1),
    ),
  ),
  (
    nombre: "6. Reconocer mejor que recordar",
    preguntas: (
      (texto: "¿Las opciones principales están siempre visibles?", peso: 0.35),
      (texto: "¿El usuario no necesita memorizar información entre páginas?", peso: 0.3),
      (texto: "¿Las instrucciones aparecen cuando se necesitan?", peso: 0.2),
      (texto: "¿Los íconos y nombres de los botones son autoexplicativos?", peso: 0.1),
      (texto: "¿El sitio mantiene un historial de acciones recientes?", peso: 0.05),
    ),
  ),
  (
    nombre: "7. Flexibilidad y eficiencia de uso",
    preguntas: (
      (texto: "¿El sitio permite personalizar configuraciones?", peso: 0.15),
      (texto: "¿Las tareas comunes se realizan en pocos pasos?", peso: 0.35),
      (texto: "¿El diseño es eficiente para principiantes y expertos?", peso: 0.25),
      (texto: "¿El flujo de navegación minimiza repeticiones?", peso: 0.15),
      (texto: "¿Ofrece accesos directos o teclas rápidas?", peso: 0.1),
    ),
  ),
  (
    nombre: "8. Estética y diseño minimalista",
    preguntas: (
      (texto: "¿El diseño evita elementos o textos innecesarios?", peso: 0.3),
      (texto: "¿La jerarquía visual guía la atención a lo importante?", peso: 0.3),
      (texto: "¿Cada elemento tiene un propósito funcional?", peso: 0.2),
      (texto: "¿La combinación de colores y tipografía mejora legibilidad?", peso: 0.15),
      (texto: "¿Mantiene equilibrio entre estética y funcionalidad?", peso: 0.05),
    ),
  ),
  (
    nombre: "9. Ayudar a reconocer, diagnosticar y recuperarse de errores",
    preguntas: (
      (texto: "¿Los mensajes de error son claros y comprensibles?", peso: 0.3),
      (texto: "¿Se indica la causa del error y cómo solucionarlo?", peso: 0.3),
      (texto: "¿Los mensajes son amables y sin lenguaje técnico?", peso: 0.2),
      (texto: "¿Permite corregir errores sin reiniciar todo?", peso: 0.15),
      (texto: "¿Los errores son visibles y accesibles?", peso: 0.05),
    ),
  ),
  (
    nombre: "10. Ayuda y documentación",
    preguntas: (
      (texto: "¿Existe una sección de ayuda o soporte visible?", peso: 0.2),
      (texto: "¿La ayuda está enfocada en tareas concretas?", peso: 0.3),
      (texto: "¿Es breve, clara y fácil de buscar?", peso: 0.25),
      (texto: "¿Hay opciones de contacto o asistencia inmediata?", peso: 0.15),
      (texto: "¿Ofrece tutoriales interactivos o asistencia contextual?", peso: 0.1),
    ),
  ),
)
