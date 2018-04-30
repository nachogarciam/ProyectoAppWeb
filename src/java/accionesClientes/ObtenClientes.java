/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accionesClientes;

import accionesJuegos.*;
import interfaces.IPersistencia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import objetosNegocio.ArticuloED;
import objetosNegocio.Cliente;
import objetosNegocio.Videojuego;
import objetosTransferencia.Lista;
import persistencia.PersistenciaBD;

/**
 *
 * @author user
 */
@WebServlet(name = "ObtenClientes", urlPatterns = {"/ObtenClientes"})
public class ObtenClientes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd;
        String siguiente = null;

        // En este bean de tipo Lista, se almacena la lista de
        // canciones leídas de la tabla canciones de la base de datos musica
        Lista listaClientes = new Lista();
        List<Cliente> lista;
// Obten la tarea seleccionada del atributo tareaSel de la
        // variable session que es la que contiene a todas las variables con
        // ámbito de sesion
        HttpSession session = request.getSession();

        // Obten la tarea seleccionada en index.jsp
        String accionSel = (String) session.getAttribute("accionSel");

        // Crea el objeto para acceder a la base de datos
        IPersistencia fachada = new PersistenciaBD();

        if (accionSel.equals("listarId")) {
            lista = new ArrayList();
            lista.add(fachada.obten(new Cliente((String) session.getAttribute("numero"))));
            // Almacena el título de la tabla de canciones en el bean
            listaClientes.setTituloTabla("Cliente: " + lista.get(0).getNumCredencial());
        } else {
            // Obtiene el vector con la lista de juegos
            lista = fachada.consultarClientes();
            listaClientes.setTituloTabla("Lista de clientes");

        }

        // Almacena la lista de juegos en el bean listaCanciones
        listaClientes.setLista(lista);

        request.setAttribute("listaClientes", listaClientes);

        if (accionSel.equals("actualizarCancion")) {
            //  siguiente = "seleccionaCancionActualizar.jsp";
        } else if (accionSel.equals("eliminarCanciones")) {
            // siguiente = "seleccionaCancionesEliminar.jsp";
        } else {
            siguiente = "despliegaClientes.jsp";
        }

        rd = request.getRequestDispatcher(siguiente);
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
