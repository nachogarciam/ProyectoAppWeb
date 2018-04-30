/*
 * Mensaje.java
 */

package objetosTransferencia;

/**
 * Esta clase encapsula los mensajes de error y clase CSS para
 * establecer las propiedades del mensaje.
 *
 * @author mdomitsu
 */
public class Mensaje {
    private String mensaje;
    private String claseMensaje;

    /**
     * constructor vacío
     */
    public Mensaje() {
    }

    /**
     * Constructor que inicializa los atributos del bean
     * @param mensaje Mensaje de aviso o error
     * @param claseMensaje Clase CSS del mensaje 
     */
    public Mensaje(String mensaje, String claseMensaje) {
        this.mensaje = mensaje;
        this.claseMensaje = claseMensaje;
    }

    /**
     * Regresa la clase CSS del mensaje
     * @return Clase CSS del mensaje
     */
    public String getClaseMensaje() {
        return claseMensaje;
    }

    /**
     * Establece la clase CSS del mensaje
     * @param claseMensaje Clase CSS del mensaje
     */
    public void setClaseMensaje(String claseMensaje) {
        this.claseMensaje = claseMensaje;
    }

    /**
     * Regresa el mensaje de aviso o error
     * @return Mensaje de aviso o error
     */
    public String getMensaje() {
        return mensaje;
    }

    /**
     * Establece el mensaje de aviso o error
     * @param mensaje Mensaje de aviso o error
     */
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
