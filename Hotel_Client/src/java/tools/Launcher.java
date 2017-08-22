/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controller.KamarController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Kamar;

/**
 *
 * @author Lukas
 */
@WebServlet(name = "Launcher", urlPatterns = {"/Launcher"})
public class Launcher extends HttpServlet {

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
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        System.out.println(new Koneksi().getKoneksi() + "\n");
        String kode_kamar = request.getParameter("kode_kamar");
        String nama_kamar = request.getParameter("nama_kamar");
        String lantai_kamar = request.getParameter("lantai_kamar");
        String tipe_kamar = request.getParameter("tipe_kamar");
        String harga = request.getParameter("harga");
        
        String id = request.getParameter("id");
        String tombol = request.getParameter("tombol");
        //String loginame = (String) request.getSession().getAttribute("name");

        KamarController kc = new KamarController();
        Kamar kamar = new Kamar();
        //LoginController lc = new LoginController();
        //Login log = new Login();
        
        try 
        {

            kamar.setId(id);
            kamar.setKode_kamar(kode_kamar);
            kamar.setNama_kamar(nama_kamar);
            kamar.setLantai_kamar(lantai_kamar);
            kamar.setTipe_kamar(tipe_kamar);
            kamar.setHarga(harga);
           

            if (tombol.equalsIgnoreCase("insert")) 
            {
                if (kc.insert(kamar)) 
                {
                    out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Insert Kamar Berhasil</marquee>");
                    RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                    rd.include(request, response);

                } 
                else 
                {
                    out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Insert Kamar gagal</marquee>");
                    RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                    rd.include(request, response);

                }
            } 
            else if (tombol.equalsIgnoreCase("delete")) 
            {

                
                    if (kc.delete(id)) 
                    {
                        out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Delete Kamar Berhasil</marquee>");
                        RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                        rd.include(request, response);

                    } 
                    else 
                    {
                        out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Delete Kamar gagal</marquee>");
                        RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                        rd.include(request, response);
                    }

            } 
            else if (tombol.equalsIgnoreCase("update")) 
            {
                
                    if (kc.update(kamar)) 
                    {
                        out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Update Kamar Berhasil</marquee>");
                        RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                        rd.include(request, response);
                    } 
                    else 
                    {
                        out.println("<marquee  bgcolor= #1dd704 direction=right behavior=alternate scrollamount=15>Update Kamar gagal</marquee>");
                        RequestDispatcher rd = request.getRequestDispatcher("AllKamar.jsp");
                        rd.include(request, response);
                    }
            } 
        }
        finally 
        {
            out.close();
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
