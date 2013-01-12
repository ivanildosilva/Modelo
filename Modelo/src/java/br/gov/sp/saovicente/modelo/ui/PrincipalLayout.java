package br.gov.sp.saovicente.modelo.ui;

import br.gov.sp.saovicente.entity.Contato;
import br.gov.sp.saovicente.entity.Endereco;
import br.gov.sp.saovicente.entity.Participante;
import br.gov.sp.saovicente.entity.Usuario;
import br.gov.sp.saovicente.sessionbean.ParticipanteFacade;
import com.vaadin.ui.Button.ClickEvent;
import com.vaadin.ui.TabSheet.SelectedTabChangeEvent;
import com.vaadin.ui.*;
import com.vaadin.ui.themes.Runo;
import java.util.List;

public class PrincipalLayout extends VerticalLayout {

  public PrincipalLayout() {

    Button btnAlteraSenha = new Button("Alterar Senha");
    btnAlteraSenha.addStyleName(Runo.BUTTON_SMALL);
    btnAlteraSenha.addListener(new Button.ClickListener() {

      @Override
      public void buttonClick(ClickEvent event) {
        //getWindow().showNotification("alterar");
//                AlteraSenhaWindow subwindow = new AlteraSenhaWindow();
//                subwindow.setCaption("Alteração de Senha");
//                subwindow.setWidth("22%");
//                subwindow.setModal(true);
//
//                if (subwindow.getParent() != null) {
//                    getWindow().showNotification("Janela já está aberta.");
//                } else {
//                    getWindow().addWindow(subwindow);
//                }
      }
    });


//    List<Participante> participante = SistemaModelo.getInstance().getParticipanteBean().findAll();
//
//    for (Participante part : participante) {
//
//      for (Endereco endereco : part.getEnderecoCollection()) {
//
//        for (Contato contato : part.getContatoCollection()) {
//
//          System.out.println("participante " + part.getNome() + " - Contatos " + contato.getTelefone() + " - Endereço " + endereco.getLogradouro());
//
//        }
//        System.out.println("participante " + part.getNome() + " - Endereço " + endereco.getLogradouro());
//
//
//      }


//    }


    Usuario usuario = (Usuario) SistemaModelo.getInstance().getUser();
    System.out.println("Participante ");
    Label lblusu = new Label(usuario.getNome());
    Button btnsair = new Button("Sair");
    btnsair.addStyleName(Runo.BUTTON_SMALL);
    btnsair.addListener(new Button.ClickListener() {

      @Override
      public void buttonClick(ClickEvent event) {
        getApplication().setUser(null);
        getApplication().close();
      }
    });

    HorizontalLayout h = new HorizontalLayout();
    h.addComponent(lblusu);
    h.addComponent(btnAlteraSenha);
    h.addComponent(btnsair);
    h.setSpacing(true);
    h.setMargin(false, true, false, false);

    addComponent(h);
    setComponentAlignment(h, Alignment.MIDDLE_RIGHT);

    final TabSheet tabs = new TabSheet();
    //tabs.setSizeFull();
    tabs.setWidth("100%");
    //tabs.setSizeUndefined();
    tabs.setStyleName(Runo.TABSHEET_SMALL);

    VendasLayout vendasLayout;
    //        GerenciaBICLayout gerenciaBICLayout;
//        ConfirmaAlteracaoLayout atualizar;
//        final TramitaBICLayout tramitacao;
//        final GerenciaUsuarioLayout gerenciaUsuario;
//        LoteamentoBICLayout loteamento;
//        RelatorioLayout relatorioLayout;

    Integer perfil = usuario.getPrivilegio().getId();
    System.out.println("id ususário " + perfil);
    switch (perfil) {
      case 1:
        vendasLayout = new VendasLayout();
//                gerenciaBICLayout = new GerenciaBICLayout();
        vendasLayout.setMargin(true);
        vendasLayout.setWidth("100%");
        tabs.addTab(vendasLayout, "Vendas", null);
        System.out.println("Entrou no perfil administrador....");
//
//                atualizar = new ConfirmaAlteracaoLayout();
//                atualizar.setMargin(true);
//                atualizar.layoutDadosComplementares.setEnabled(false);
//                atualizar.layoutDadosDeEntrega.setEnabled(false);
//                atualizar.layoutDadosLocal.setEnabled(false);
//                tabs.addTab(atualizar, "Atualizar", null);
//
//                tramitacao = new TramitaBICLayout();
//                tramitacao.setMargin(true);
//                tabs.addTab(tramitacao, "Tramitar", null);
//
//                gerenciaUsuario = new GerenciaUsuarioLayout();
//                gerenciaUsuario.setMargin(true);
//                tabs.addTab(gerenciaUsuario, "Usuários", null);
//                tabs.addListener(new TabSheet.SelectedTabChangeListener() {
//
//                    @Override
//                    public void selectedTabChange(SelectedTabChangeEvent event) {
//                        if (tabs.getTab(tabs.getSelectedTab()).getCaption().toString().equals("Tramitar")) {
//                            tramitacao.limparCampos();
//                        } else if (tabs.getTab(tabs.getSelectedTab()).getCaption().toString().equals("Usuários")) {
//                            gerenciaUsuario.limpaCampos();
//                        }
//                    }
//                });
//
//                loteamento = new LoteamentoBICLayout();
//                loteamento.setMargin(true);
//                tabs.addTab(loteamento, "Loteamentos", null);
//
//                relatorioLayout = new RelatorioLayout();
//                relatorioLayout.setMargin(true);
//                tabs.addTab(relatorioLayout, "Relatorios", null);
        break;
      case 2:

        vendasLayout = new VendasLayout();
        vendasLayout.setMargin(true);
        vendasLayout.setWidth("100%");
        tabs.addTab(vendasLayout, "Vendas", null);
        System.out.println("Entrou no perfil Gerente....");

        //                gerenciaBICLayout = new GerenciaBICLayout();
//                gerenciaBICLayout.setMargin(true);
//                tabs.addTab(gerenciaBICLayout, "Gerenciar BIC", null);
//                
//                relatorioLayout = new RelatorioLayout();
//                relatorioLayout.setMargin(true);
//                tabs.addTab(relatorioLayout, "Relatorios", null);  
        break;
      case 3:
        vendasLayout = new VendasLayout();
        vendasLayout.setMargin(true);
        vendasLayout.setWidth("100%");
        tabs.addTab(vendasLayout, "Vendas", null);
        //                atualizar = new ConfirmaAlteracaoLayout();
//                atualizar.setMargin(true);
//                atualizar.layoutDadosComplementares.setEnabled(false);
//                atualizar.layoutDadosDeEntrega.setEnabled(false);
//                atualizar.layoutDadosLocal.setEnabled(false);
//                tabs.addTab(atualizar, "Atualizar", null);
//
//                gerenciaBICLayout = new GerenciaBICLayout();
//                gerenciaBICLayout.setMargin(true);
//                gerenciaBICLayout.layoutDadosComplementares.setEnabled(false);
//                gerenciaBICLayout.layoutDadosEntrega.setEnabled(false);
//                gerenciaBICLayout.layoutDadosLocal.setEnabled(false);
//                tabs.addTab(gerenciaBICLayout, "Gerenciar BIC", null);
//                
//                relatorioLayout = new RelatorioLayout();
//                relatorioLayout.setMargin(true);
//                tabs.addTab(relatorioLayout, "Relatorios", null);
        break;
    }
    tabs.setSizeFull();
    addComponent(tabs);

    //setMargin(false, true, false, false);
    setMargin(false);
    setWidth("100%");
  }
}
