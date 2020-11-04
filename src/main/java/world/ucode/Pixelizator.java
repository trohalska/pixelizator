package world.ucode;

import javax.imageio.ImageIO;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Simple class that extends {@link HttpServlet}.
 *
 * @author trohalska
 */
@MultipartConfig
@WebServlet("/pix")
public class Pixelizator extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        resp.setStatus(200);
        resp.setContentType("image");
        this.process(req, resp);
    }

    private void process(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        // get all from FormData
        int pixel = Integer.parseInt(req.getParameter("pixRange"));
        String type = req.getParameter("type");
        Part filePart = req.getPart("file");

        // get & process file
        BufferedImage image = ImageIO.read(filePart.getInputStream());

        Filters.filterRed(image, pixel);

        ImageIO.write(image, type, resp.getOutputStream());
    }
}
