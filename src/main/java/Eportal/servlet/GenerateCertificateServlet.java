package Eportal.servlet;

import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.borders.SolidBorder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/generateCertificate")
public class GenerateCertificateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String studentName = (String) session.getAttribute("Sname");
        String courseName = (String) session.getAttribute("CourseName");

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=certificate.pdf");

        try (OutputStream os = response.getOutputStream()) {
            PdfWriter writer = new PdfWriter(os);
            PdfDocument pdf = new PdfDocument(writer);
            Document document = new Document(pdf);

            PdfFont font = PdfFontFactory.createFont(StandardFonts.HELVETICA_OBLIQUE);

            float margin = 30;
            float width = PageSize.A4.getWidth() - 2 * margin;
            float height = PageSize.A4.getHeight() - 2 * margin;

            Div certificateContent = new Div()
                    .setBorder(new SolidBorder(1))
                    .setPadding(20)
                    .setMarginTop(20)
                    .setWidth(width)
                    .setHeight(height)
                    .setTextAlignment(TextAlignment.CENTER);

            Image logo = new Image(ImageDataFactory.create(getServletContext().getRealPath("/images/elearninglogo.png")));
            logo.setAutoScale(true);
            logo.setWidth(150); // Set logo width
            logo.setHeight(50); // Set logo height
            logo.setTextAlignment(TextAlignment.CENTER);
            certificateContent.add(logo);


            certificateContent.add(new Paragraph("This is to certify that")
                    .setFont(font)
                    .setFontSize(18)
                    .setMarginBottom(20));

            certificateContent.add(new Paragraph(studentName)
                    .setFont(font)
                    .setFontSize(24)
                    .setBold()
                    .setUnderline()
                    .setMarginBottom(20));

            certificateContent.add(new Paragraph("has successfully completed the " + courseName + " course.")
                    .setFont(font)
                    .setFontSize(18)
                    .setMarginBottom(20));

            document.add(certificateContent);

//            document.add(new Paragraph("E-Learning Institute")
//                    .setFont(font)
//                    .setFontSize(24)
//                    .setTextAlignment(TextAlignment.CENTER)
//                    .setBold()
//                    .setMarginBottom(20));
//
//            document.add(new Paragraph("This is to certify that")
//                    .setFont(font)
//                    .setFontSize(16)
//                    .setTextAlignment(TextAlignment.CENTER)
//                    .setMarginBottom(10));
//
//            document.add(new Paragraph(studentName)
//                    .setFont(font)
//                    .setFontSize(20)
//                    .setTextAlignment(TextAlignment.CENTER)
//                    .setBold()
//                    .setMarginBottom(10));
//
//            document.add(new Paragraph("has successfully completed")
//                    .setFont(font)
//                    .setFontSize(16)
//                    .setTextAlignment(TextAlignment.CENTER)
//                    .setMarginBottom(10));
//
//            document.add(new Paragraph(courseName + " course.")
//                    .setFont(font)
//                    .setFontSize(16)
//                    .setTextAlignment(TextAlignment.CENTER)
//                    .setMarginBottom(20));

            document.close();
            os.flush();
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error generating PDF", e);
        }
    }
}
