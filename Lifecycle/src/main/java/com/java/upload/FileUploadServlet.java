package com.java.upload;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 50) // 50 MB
public class FileUploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Get the file part from the request
            Part filePart = request.getPart("file");

            // Get the InputStream of the file
            try (InputStream fileContent = filePart.getInputStream()) {

                // Define the destination path to save the file
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads" + File.separator;

                // Create the uploads directory if it doesn't exist
                Files.createDirectories(Paths.get(uploadPath));

                // Extract the filename from the content-disposition header of the part
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

                // Save the file to the server
                Path filePath = Paths.get(uploadPath, fileName);
                Files.copy(fileContent, filePath);

                response.getWriter().println("File " + fileName + " has been uploaded successfully.");
            }
        } catch (Exception e) {
            response.getWriter().println("File upload failed. Error: " + e.getMessage());
        }
    }
}
