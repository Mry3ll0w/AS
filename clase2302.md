
# Clase 23/02/2022

## Notas clase Tema 1

  Daemeon ==> Proceso en segundo plano

  Autorizacion ==> Permiso para acceder a un recurso concreto.

  Autentificacion ==> Identificacion dentro de un sistema

  *NO EXISTEN DUPLICADOS DENTRO DE UN IDENTIFICADOR*

  GUID ==> Identificador de grupo.

  UID ==> Identificador de grupo.


### Control de acceso
  
  Permisos los tienen los ficheros no el usuario.

  Los permisos se muestran mediante el comando ls -l.
  
  Problema paswd ==> Te permite cambiar todas las contraseñas de CUALQUIER USUARIO, es decir se necesitan 
  permisos de root sin ser root, se usa el SUID.

  SGUID ~SUID, pero orientado a grupos.

  Bit Sticky ==> Para que usuarios de otros grupos no puedan borrar/modificar el fichero al que se le habilite.


### Cuenta de ROOT

  Es un ser todo poderoso, puede hacer TODO sin restricciones. 
  No dejan registro de operaciones realizadas, todo lo que hagas no tiene registro ya que el mismo puede dejar 
  el registro y borrarlo.

  Para cambiarnos de cuenta en la terminal se  usa su [user], se usa este comando para saber quien se ha logeado
  en las cuentas de root y demas.

  Para poder ejecutar la orden sudo el  mismo tiene que esta en la lista de sudoers(/etc/sudoers).

  Sudo SI DEJA REGISTROS de las operaciones realizadas.

  Permite modificar usuarios de forma eficiente, solo se necesita modificar el acceso a sudoers.


### Ejercicio 2 (transparencias)

  Mediante el runas podemos ejecutar ordenes de otro usuario distinto, que este bindeado mediante runaslist.
  ejemplo de permitir:
    User pepe quiere ejecutar todos los comandos
    pepe ALL=(ALL) ALL
          |    |    |
          |    |    **Lista de especifiaciones de comandos permitidos**
          |   **Lista de comandos permitidos**
          |
          **Host list**

  · Sabiendo esto queremos permitir que el usuario Antonio pudiera ejecutar solamente /bin/ls unicamente como
    andres.     
        Antonio ALL=(andres) NOPASSWD:(/bin/ls)
        El NOPASSWD ==> Evita que nos pida la contraseña para hacer los comandos de sudo.
          









