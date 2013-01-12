/*
 * SistemaModelo.java
 *
 * Created on 20 de Dezembro de 2012, 13:20
 */
package br.gov.sp.saovicente.modelo.ui;

import br.gov.sp.saovicente.sessionbean.*;
import com.vaadin.Application;
import com.vaadin.terminal.Terminal;
import com.vaadin.terminal.gwt.server.HttpServletRequestListener;
import com.vaadin.terminal.gwt.server.WebApplicationContext;
import com.vaadin.ui.Window;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PreDestroy;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ivanildofilho
 * @version
 */
@SessionScoped
public class SistemaModelo extends Application implements HttpServletRequestListener {

  @EJB
  private ParticipanteFacade participanteBean;
  @EJB
  private PrivilegioFacade privilegioBean;
  @EJB
  private UsuarioFacade usuarioBean;
  @EJB
  private EnderecoFacade enderecoBean;
  @EJB
  private ContatoFacade contatoBean;
  private static ThreadLocal<SistemaModelo> threadLocal = new ThreadLocal<SistemaModelo>();
  private static String url;

  @Override
  public void init() {
    setInstance(this); // So that we immediately have access to the current application 	

    //para temas personalizados, baixar o tema e adicioná-lo no diretório
    //WEB-INF/lib
    //setTheme("css_4_1");
    setTheme("css_8_9_1");
    //setTheme("css_6");
    //setTheme("runo");
    //setTheme("css_3_1");
    //setTheme("css_2");
    //setTheme("css_1_1");
    //setTheme("liferay");

    try {
      String servidor = InetAddress.getLocalHost().getHostName();
      System.out.println("Usuario " + getUser());

      System.out.println("IP " + InetAddress.getLocalHost());
      System.out.println("IP2 " + InetAddress.getLocalHost().getHostAddress());
      System.out.println("Servidor " + servidor);
      url = "http://".concat(servidor).concat(":8080/modelo");
      System.out.println("url " + url);
    } catch (UnknownHostException ex) {
      Logger.getLogger(SistemaModelo.class.getName()).log(Level.SEVERE, null, ex);
    }
    setLogoutURL(url);

    Window window = new AutenticacaoLayout();
    System.out.println("passou aki");
    setMainWindow(window);
  }

  @Override
  public void close() {
    removeWindow(getMainWindow());
    threadLocal.remove();
    super.close();
  }

  /*
   * @return the current application instance
   */
  public static SistemaModelo getInstance() {
    return threadLocal.get();
  }

  // Set the current application instance 	
  public static void setInstance(SistemaModelo application) {
    threadLocal.set(application);
  }

  @Override
  public void onRequestStart(HttpServletRequest request, HttpServletResponse response) {
    SistemaModelo.setInstance(this);
  }

  @Override
  public void onRequestEnd(HttpServletRequest request, HttpServletResponse response) {
    threadLocal.remove();
  }

  @PreDestroy
  public void unbound() {
    ((WebApplicationContext) getContext()).valueUnbound(null);
  }

  @Override
  public void terminalError(Terminal.ErrorEvent event) {
    super.terminalError(event);

    if (getMainWindow() != null) {
      getMainWindow().showNotification(
              "Uma exceção não controlada ocorreu!", event.getThrowable().toString(),
              Window.Notification.TYPE_ERROR_MESSAGE);
    }
  }

  public static SystemMessages getSystemMessages() {
    CustomizedSystemMessages messages =
            new CustomizedSystemMessages();

    messages.setOutOfSyncNotificationEnabled(true);
    messages.setOutOfSyncURL(url);
    messages.setOutOfSyncCaption("Fora de sincronismo");
    messages.setOutOfSyncMessage("Redirecionando para ".concat(url));

    messages.setSessionExpiredNotificationEnabled(true);
    messages.setSessionExpiredCaption("A sessão expirou!");
    messages.setSessionExpiredMessage("Realize login novamente.");
    messages.setSessionExpiredURL(url);

    return messages;
  }

  public ContatoFacade getContatoBean() {
    return contatoBean;
  }

  public EnderecoFacade getEnderecoBean() {
    return enderecoBean;
  }

  public ParticipanteFacade getParticipanteBean() {
    return participanteBean;
  }

  public PrivilegioFacade getPrivilegioBean() {
    return privilegioBean;
  }

  public UsuarioFacade getUsuarioBean() {
    return usuarioBean;
  }
}
