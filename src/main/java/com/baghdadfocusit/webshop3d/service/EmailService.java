package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.entities.Order;
import com.baghdadfocusit.webshop3d.entities.Product;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class EmailService {

    private final JavaMailSender javaMailSender;

    public EmailService(final JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    @Async
    void sendEmailToAdminWithOrder(final Order order) throws MessagingException {
        MimeMessage msg = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);
        if (order.getEmail() == null) {
            helper.setTo("ahmed83@me.com");
        } else {
            helper.setTo(InternetAddress.parse("ahmed83@me.com," + order.getEmail()));
        }
        helper.setSubject("3D Order id: " + order.getCustomerTrackId());
        List<Product> productList = order.getProducts()
                .stream()
                .map(prod -> Product.builder().name(prod.getName()).price(prod.getPrice()).build())
                .collect(Collectors.toList());
        StringBuilder products = new StringBuilder();
        productList.forEach(product -> products.append("[ ")
                .append(product.getName())
                .append(": ")
                .append(product.getPrice())
                .append(" ] "));
        String emailContent = """
                <html>
                    <body>
                        <h3>طلبية البضاعة </h3>
                        <p>Customer name: %s</p>
                        <p>District: %s</p>
                        <p>Additional District: %s</p>
                        <p>Mobile Number:%s</p>
                        <p>Email: %s</p>
                        <p>Company Name: %s</p>
                        <p>City: %s</p>
                        <p>Products: %s</p>
                        <p>Total price: %s</p>
                    </body>
                </html>
                """.formatted(order.getName(), order.getDistrict(), order.getDistrict2(), order.getMobileNumber(),
                              order.getEmail(), order.getCompanyName(), order.getCity(), products,
                              order.getTotalAmount());
        helper.setText(emailContent, true);
        javaMailSender.send(msg);
    }
}
