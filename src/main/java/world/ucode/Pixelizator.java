package world.ucode;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Simple class that extends {@link HttpServlet}.
 *
 * @author trohalska
 */
public class Pixelizator extends HttpServlet {
//    private String responseTemplate = "<html>\n<body>\n<h2>Hello from Simple Servlet trololo</h2>\n</body>\n</html>";
//    private String message = "This is simple servlet message";

    public void init() throws ServletException {
//        File base = new File("src/com/example/view");
//        context = tomcat.addContext("", base.getAbsolutePath());
//        tomcat.addWebapp(null, "/", base.getAbsolutePath());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

//        this.process(request, response);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
//        out.println("Included HTML:");
        request.getRequestDispatcher("/index.jsp").include(request, response);
        out.close();

//        response.setContentType("text/html");
//        PrintWriter messageWriter = response.getWriter();
//        messageWriter.println("<h1>" + message + "<h1>");

    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        this.process(request, response);
//    }
//
//    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setStatus(200);
//        response.getWriter().write(responseTemplate);
//    }

    public void service() {

    }
    public void destroy() {

    }

}
