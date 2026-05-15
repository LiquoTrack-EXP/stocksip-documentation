Feature: US002 Conocer términos y condiciones durante el registro
    Como visitante
    Quiero leer los términos y condiciones antes de registrarme
    Para conocer las reglas del uso de la plataforma

    Scenario Outline: Ver los términos y condiciones
        Given el <visitante> está en el formulario de registro
        When selecciona ver los términos y condiciones
        Then se muestra el contenido y las reglas del uso del software.

    Examples:
        | visitante |  [Click terminos y condiciones] | Revisa el contenido y las reglas del uso del software |
        | Juan      |  [Click terminos y condiciones] | Revisa el contenido y las reglas del uso del software |
        | Maria     |  [Click terminos y condiciones] | Revisa el contenido y las reglas del uso del software |

    Scenario Outline: Completar el registro aceptando los términos y condiciones
        Given el <visitante> haya leído los términos y condiciones
        When continúe con el registro
        Then se crea su cuenta e ingresa a la plataforma.

    Examples:
        | visitante |  [No click terminos y condiciones] | No permite el registro |
        | Pedro     |  [No click terminos y condiciones] | No permite el registro |
        | Lucia     |  [No click terminos y condiciones] | No permite el registro |


        