package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Roupa;
import model.RoupaDAO;

@WebServlet(name = "RoupaController", urlPatterns = {"/RoupaController"})
public class RoupaController extends HttpServlet {
    private int cod;
    private String tipo;
    private String cor;
    private String marca;
    private String material;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //Verificar se o código está sendo enviado
        if(request.getParameter("cod") != null) {
            this.cod = Integer.parseInt(request.getParameter("cod"));
        }
        
        //Recebendo dados do formulário de cadastro
        this.tipo = request.getParameter("tipo");
        this.cor = request.getParameter("cor");
        this.marca = request.getParameter("marca");
        this.material = request.getParameter("material");
        
        try {
            if(request.getParameter("cod") == null) {
                Roupa tr = new Roupa(
                        this.tipo, 
                        this.cor, 
                        this.marca,
                        this.material
                );

                RoupaDAO transpDAO = new RoupaDAO();
                transpDAO.insertRoupa(tr);
                response.sendRedirect("lista.jsp");
            } else {
                Roupa tr = new Roupa(
                        this.cod,
                        this.tipo, 
                        this.cor, 
                        this.marca,
                        this.material
                );

                RoupaDAO RoupDAO = new RoupaDAO();
                RoupDAO.updateRoupa(tr);
                response.sendRedirect("lista.jsp");
            }
            
        } catch(SQLException | ClassNotFoundException erro) {
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Roupa</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Ocorreu algum erro :(</h1>");
            out.println("</body>");
            out.println("</html>");
            }
        }
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