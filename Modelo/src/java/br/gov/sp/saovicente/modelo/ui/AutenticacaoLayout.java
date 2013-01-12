package br.gov.sp.saovicente.modelo.ui;

//import br.gov.sp.saovicente.bic.entity.Usuario;
import br.gov.sp.saovicente.entity.Usuario;
import com.vaadin.terminal.gwt.server.WebApplicationContext;
import com.vaadin.ui.*;
import com.vaadin.ui.themes.Runo;

public class AutenticacaoLayout extends Window {

  private static final long serialVersionUID = 1L;
  private Button btnLogin = new Button("Logar");
  private TextField login = new TextField("Usuário");
  private TextField password = new TextField("Senha");
  //SistemaBIC bic;
  WebApplicationContext context;

  public AutenticacaoLayout() {
    super("Acesso");
    setName("Tela Principal");
    setCaption("Login");
    //bic = aplicacao;
    context = ((WebApplicationContext) SistemaModelo.getInstance().getContext());
    context.getHttpSession().setMaxInactiveInterval(-1);
    doLayout();

  }

  private void doLayout() {
    Panel panel = new Panel("Login");
    panel.setSizeUndefined();
    panel.addComponent(login);
    login.focus();


    panel.addComponent(password);
    ((VerticalLayout) panel.getContent()).setSpacing(true);

    btnLogin.addStyleName(Runo.BUTTON_SMALL);
    btnLogin.setWidth("100%");
    panel.addComponent(btnLogin);

    addComponent(panel);

    VerticalLayout v = (VerticalLayout) panel.getContent();
    v.setSpacing(true);
    v.setWidth("100%");
    v.setComponentAlignment(btnLogin, Alignment.MIDDLE_CENTER);
    //btnLogin.setClickShortcut(ShortcutAction.KeyCode.ENTER, null);


    ((VerticalLayout) getContent()).setComponentAlignment(panel,
            Alignment.MIDDLE_CENTER);

    btnLogin.addListener(new Button.ClickListener() {

      private static final long serialVersionUID = 1L;

      @Override
      public void buttonClick(Button.ClickEvent event) {
        Usuario usuario = SistemaModelo.getInstance().getUsuarioBean().autenticar(login.getValue().toString(),
                password.getValue().toString());

        if (usuario != null) {
          if (usuario.getAtivo() == 1) {
            setCaption("Modelo");
            getApplication().setUser(usuario);
            System.out.println("Usuario@@@@ " + usuario.getNome());
            System.out.println("entre no sistema");
            PrincipalLayout v = new PrincipalLayout();
            
            context.getHttpSession().setMaxInactiveInterval(1800);
            getWindow().setContent(v);
          } else {
            showNotification("Usuário Desativado!");
          }
        } else {
          showNotification("Credenciais Inválidas!");
        }
      }
    });

  }
}