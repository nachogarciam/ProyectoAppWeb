/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accionesRentas;

import interfaces.IPersistencia;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import objetosNegocio.Cliente;
import objetosNegocio.Renta;
import objetosNegocio.Videojuego;
import objetosServicio.Fecha;
import persistencia.PersistenciaBD;

/**
 *
 * @author user
 */
@WebServlet(name = "Rentar", urlPatterns = {"/Rentar"})
public class Rentar extends HttpServlet {

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

        RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("index.jsp");
        Cliente cliente = null;

        // Obten la tarea seleccionada del atributo tareaSel de la
        // variable session que es la que contiene a todas las variables con
        // ámbito de sesion
        HttpSession session = request.getSession();
        // Crea el objeto para acceder a la base de datos
        IPersistencia fachada = new PersistenciaBD();

        Fecha fecha = new Fecha();

        session.setAttribute("fecha", fecha);
        if (session.getAttribute("accionSel").equals("consultarCliente")) {
            try {
                cliente = fachada.obten(new Cliente((String) session.getAttribute("numero")));
                session.setAttribute("cliente", cliente);
            } catch (NullPointerException e) {
                try (PrintWriter out = response.getWriter()) {
                    out.println("<script>alert('Error: Cliente no encontrado');</script>");
                    out.println("<script>location.href='index.jsp';</script>");

                }
            }
            rd = request.getRequestDispatcher("rentar.jsp");
            rd.forward(request, response);
        } else {
            cliente = new Cliente((String) request.getParameter("numCred"));
            Videojuego vj = new Videojuego((String) request.getParameter("numCat"));
            String tiempo = request.getParameter("tiempo");
            Renta r = new Renta(cliente, vj, fecha, Integer.parseInt(tiempo));
            fachada.rentarVideojuego(r);
            rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

        //    rd.forward(request, response);
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
