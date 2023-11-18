package com.java.upload;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@WebServlet("/FileDownloadServlet")
public class FileDownloadServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Get the filename from the request parameter
            String fileName = request.getParameter("fileName");

            if (fileName != null && !fileName.isEmpty()) {

                // Define the path to the file
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads" + File.separator;
                Path filePath = Paths.get(uploadPath, fileName);

                // Check if the file exists
                if (Files.exists(filePath)) {

                    // Set response headers
                    response.setContentType("application/octet-stream");
                    response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

                    // Copy the file content to the response output stream
                    Files.copy(filePath, response.getOutputStream());
                } else {
                    response.getWriter().println("File not found: " + fileName);
                }
            } else {
                response.getWriter().println("Please provide a filename for download.");
            }
        } catch (Exception e) {
            response.getWriter().println("File download failed. Error: " + e.getMessage());
        }
    }
}
