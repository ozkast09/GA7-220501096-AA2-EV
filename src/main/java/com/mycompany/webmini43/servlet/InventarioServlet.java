/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.webmini43.servlet;


import com.mycompany.webmini43.entity.Inventario;
    import java.io.IOException;
    import java.util.List;
    import jakarta.servlet.ServletException;
    import jakarta.servlet.annotation.WebServlet;
    import jakarta.servlet.http.HttpServlet;
    import jakarta.servlet.http.HttpServletRequest;
    import jakarta.servlet.http.HttpServletResponse;
    import org.hibernate.Session;
    import org.hibernate.SessionFactory;
    import org.hibernate.Transaction;
    import org.hibernate.cfg.Configuration;

    @WebServlet("/inventario")
    public class InventarioServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = null;

            try {
                transaction = session.beginTransaction();

                List<Inventario> inventario = session.createQuery("FROM Inventario", Inventario.class).list();

                request.setAttribute("inventario", inventario);
                request.getRequestDispatcher("inventario.jsp").forward(request, response);

                transaction.commit();
            } catch (ServletException | IOException e) {
                if (transaction != null) {
                    transaction.rollback();
                }
            } finally {
                session.close();
                sessionFactory.close();
            }
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = null;

            try {
                transaction = session.beginTransaction();

                Inventario producto = new Inventario();
                producto.setNombre(request.getParameter("nombre"));
                producto.setCategoria(request.getParameter("categoria"));
                producto.setCantidad(Integer.valueOf(request.getParameter("cantidad")));
                producto.setUbicacion(request.getParameter("ubicacion"));
                producto.setProveedor(request.getParameter("proveedor"));

                session.save(producto);

                transaction.commit();
                response.sendRedirect("inventario"); // Redirige al doGet para mostrar la lista actualizada
            } catch (IOException | NumberFormatException e) {
                if (transaction != null) {
                    transaction.rollback();
                }
            } finally {
                session.close();
                sessionFactory.close();
            }
        }
    }
