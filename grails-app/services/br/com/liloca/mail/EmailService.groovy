package br.com.liloca.mail

import grails.transaction.Transactional
import java.util.Properties
import javax.mail.*
import javax.mail.internet.*

@Transactional
class EmailService {

    grails.plugin.mail.MailService mailG = new grails.plugin.mail.MailService()

    boolean enviarEmail(MailFormCommand mailFormCommand) {

        print "iniciando envio"

        try {
            String smtphost = "smtp-web.kinghost.net";
            InternetAddress remetente = new InternetAddress("noreply@liloca.com.br"); //Este email deve ser válido e existir como conta de email para o domínio
            InternetAddress destinatario = new InternetAddress("joricteixeira@gmail.com");
            String assunto = "Liloca | Tem alguém interessado" + new Date().time.toString();

            String conteudo = mailFormCommand.getMensagemFormatada();

            Properties p = new Properties();
            p.put("mail.smtp.host", smtphost);

            Session email = Session.getInstance(p, null);
            MimeMessage msg = new MimeMessage(email);

            msg.setFrom(remetente);
            msg.setRecipient(Message.RecipientType.TO, destinatario);
            msg.setSubject(assunto);
            msg.setContent(conteudo, "text/html");
            msg.saveChanges();

            Transport transport = email.getTransport("smtp");
            transport.connect(smtphost, "");
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();

            return true
        }catch (Exception e){
            print e.cause

            return false
        }
    }
}
