/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accionesRentas;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "ControlRentas", urlPatterns = {"/ControlRentas"})
public class ControlRentas extends HttpServlet {

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

        String accionSel = request.getParameter("accion");
        String numero = request.getParameter("numero");
        String siguiente = null;

        // Guarda la tarea seleccionada como el atributo tareaSel en la
        // variable session que es la que contiene a todas las variables con
        // ámbito de sesion
        HttpSession session = request.getSession();
        session.setAttribute("accionSel", accionSel);
        session.setAttribute("numero", numero);

        // establece la pagina JSP o servlet que inicia
        // el caso de uso seleccionado
        switch (accionSel) {

            case "rentar1":
                siguiente = "Rentar";
                session.setAttribute("accionSel", "consultarCliente");
                break;
            case "rentar2":
                siguiente = "Rentar";
                session.setAttribute("accionSel", "rentar");
                break;
            case "devolverRenta1":
                siguiente = "DevolverRenta";
                session.setAttribute("accionSel", "consultarCliente");
                break;
            case "devolverRenta2":
                siguiente = "DevolverRenta";
                session.setAttribute("accionSel", "devolver");
                break;
            case "consultarRenta":
                siguiente = "EliminarCliente";
                break;
            case "consultarRentaCliente":
                siguiente = "ObtenClientes";
                break;
            case "consultarRentaPeriodo":
                session.setAttribute("accionSel", "listarId");
                siguiente = "ObtenClientes";
                break;
            case "listarCancionesPeriodo":
                siguiente = "capturaPeriodo.jsp";
                break;
            default:
                break;
        }

        // Redirecciona a la página JSP o servlet
        request.getRequestDispatcher(siguiente).forward(request, response);
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
