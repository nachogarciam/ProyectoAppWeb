/*
 * Lista.java
 *
 * Creada el 20 de octubre de 2006, 05:09 PM
 */

package objetosTransferencia;

import java.util.List;

/**
 * Esta clase encapsula una lista de objetos y el titulo de la tabla
 * en la que se desplegara.
 *
 * @author mdomitsu
 */
public class Lista<E> {
  private String tituloTabla;
  private List<E> lista;
  
  /**
   * Constructor vacio
   */
  public Lista() {
  }

  /**
   * Regresa el titulo de la tabla
   * @return  Titulo de la tabla
   */
  public String getTituloTabla() {
    return tituloTabla;
  }

  /**
   * Establece el titulo de la tabla
   * @param tituloTabla Titulo de la tabla
   */
  public void setTituloTabla(String tituloTabla) {
    this.tituloTabla = tituloTabla;
  }

  /**
   * Regresa la lista con los valores de la tabla
   * @return Lista con los valores de la tabla
   */
  public List<E> getLista() {
    return lista;
  }

  /**
   * Establece el atributo lista con la lista con los valores de la tabla
   * @param lista Lista con los valores de la tabla
   */
  public void setLista(List<E> lista) {
    this.lista = lista;
  }
}
