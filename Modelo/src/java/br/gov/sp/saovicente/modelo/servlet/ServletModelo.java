package br.gov.sp.saovicente.modelo.servlet;

import br.gov.sp.saovicente.modelo.ui.SistemaModelo;
import com.vaadin.Application;
import com.vaadin.terminal.gwt.server.AbstractApplicationServlet;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;

@WebServlet(urlPatterns = "/*")
public class ServletModelo extends AbstractApplicationServlet {

  @Inject
  SistemaModelo application;

  @Override
  protected Class<? extends Application> getApplicationClass() throws ClassNotFoundException {
    return SistemaModelo.class;
  }

  @Override
  protected Application getNewApplication(HttpServletRequest request) throws ServletException {
    return application;
  }

  public SistemaModelo getApplication() {
    return application;
  }
  
  
}