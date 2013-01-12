/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.modelo.ui;

import com.vaadin.Application;
import com.vaadin.data.Property.ValueChangeEvent;
import com.vaadin.event.FieldEvents;
import com.vaadin.event.FieldEvents.TextChangeEvent;
import com.vaadin.terminal.ClassResource;
import com.vaadin.terminal.UserError;
import com.vaadin.ui.*;
import com.vaadin.ui.Button.ClickEvent;
import com.vaadin.ui.themes.Runo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 *
 * @author ivanildofilho
 */
public class VendasLayout extends VerticalLayout {

    private Table dados;
    private TextField codigoProduto;
    private TextField descricaoProduto;
    private TextField quantidade;
    private Label soma, moeda;
    private Button add, remove;
    private int contador = 1;
    private Embedded image;
    List<ClassResource> resource;

    public VendasLayout() {
        inicio();

    }

    private void inicio() {

        final GridLayout grade = new GridLayout(3, 2);
        grade.setWidth("100%");
        grade.setColumnExpandRatio(0, 0.2F);
        grade.setColumnExpandRatio(1, 0.2F);
        grade.setColumnExpandRatio(2, 0.6F);
        grade.setSpacing(true);

        image = new Embedded();

        resource = new ArrayList<ClassResource>();

        resource.add(new ClassResource("camisa1.jpg", SistemaModelo.getInstance()));
        resource.add(new ClassResource("calca1.jpg", SistemaModelo.getInstance()));
        resource.add(new ClassResource("camiseta1.jpg", SistemaModelo.getInstance()));

        add = new Button("Inserir");

        moeda = new Label("R$  ");
        moeda.setWidth("100%");
        moeda.addStyleName("moeda");

        remove = new Button("Excluir");
        remove.addStyleName(Runo.BUTTON_SMALL);
        remove.setEnabled(false);
        remove.addListener(new Button.ClickListener() {
            @Override
            public void buttonClick(ClickEvent event) {
                soma.setValue(subtrair());
                dados.setColumnFooter("V.Total", String.valueOf(subtrair()));
                dados.removeItem(Integer.parseInt(dados.getValue().toString()));
            }
        });

        soma = new Label("0.00");
        soma.setWidth("100%");
        soma.addStyleName("soma");

        codigoProduto = new TextField("Código");
        codigoProduto.setWidth("100%");
        codigoProduto.addStyleName("codigoProduto");
        codigoProduto.setImmediate(true);
        codigoProduto.addListener(new FieldEvents.TextChangeListener() {
            @Override
            public void textChange(TextChangeEvent event) {

                int codigo = 0;
                if (quantidade.getValue().equals("")) {
                    quantidade.setValue(1);
                }

                try {
                    System.out.println(event.getText() + " digitou algum código.....");

                    codigo = Integer.parseInt(event.getText());
                    if (codigo == 1) {
                        image.setSource(resource.get(0));

                        double vunit = 15.99;
                        descricaoProduto.setValue("CAMISA");
                        dados.addItem(new Object[]{
                                    codigo,
                                    descricaoProduto.getValue(),
                                    "Amarela", "P", Integer.parseInt(quantidade.getValue().toString()),
                                    vunit,
                                    subTotal(Integer.parseInt(quantidade.getValue().toString()), vunit)}, null);
                        quantidade.focus();
                        quantidade.setValue(1);
                    } else if (codigo == 2) {
                        image.setSource(resource.get(1));
                        double vunit = 25.99;
                        descricaoProduto.setValue("CALÇA");
                        dados.addItem(new Object[]{
                                    codigo,
                                    descricaoProduto.getValue(),
                                    "Azul", "M", Integer.parseInt(quantidade.getValue().toString()),
                                    vunit,
                                    subTotal(Integer.parseInt(quantidade.getValue().toString()), vunit)}, null);
                        quantidade.focus();
                        quantidade.setValue(1);
                    } else if (codigo == 3) {
                        image.setSource(resource.get(2));
                        double vunit = 30.99;
                        descricaoProduto.setValue("CAMISETA");
                        dados.addItem(new Object[]{
                                    codigo,
                                    descricaoProduto.getValue(),
                                    "Preto", "G", Integer.parseInt(quantidade.getValue().toString()),
                                    vunit,
                                    subTotal(Integer.parseInt(quantidade.getValue().toString()), vunit)}, null);
                        quantidade.focus();
                        quantidade.setValue(1);
                    }
                    soma.setValue(somar());
                } catch (NumberFormatException e) {
                    System.out.println("@@@@ " + e);
                    codigoProduto.setValue("");
                    quantidade.setValue(1);
                    quantidade.focus();
                }

            }
        });

        descricaoProduto = new TextField("Descrição");
        descricaoProduto.setWidth("100%");
        descricaoProduto.addStyleName("descricaoProduto");

        quantidade = new TextField("Qtde.");
        quantidade.setWidth("30%");
        quantidade.addStyleName("quantidade");
        quantidade.setValue(1);
        quantidade.focus();

        Panel painelImagen1 = new Panel();
        painelImagen1.addComponent(image);
        painelImagen1.setWidth("70%");
        painelImagen1.setHeight(200F);
        painelImagen1.setHeight(210F);

        Panel painelImagen = new Panel();
        painelImagen.addComponent(grade);
        painelImagen.setWidth("100%");
        painelImagen.setHeight(200F);

        HorizontalLayout qtd = new HorizontalLayout();
        qtd.setWidth("100%");
        qtd.addComponent(quantidade);
        qtd.setSpacing(true);
        grade.addComponent(qtd, 1, 0, 1, 0);
        grade.setComponentAlignment(qtd, Alignment.TOP_RIGHT);

        HorizontalLayout cod = new HorizontalLayout();
        cod.setWidth("100%");
        cod.addComponent(codigoProduto);
        cod.setSpacing(true);
        grade.addComponent(cod, 0, 0, 0, 0);
        grade.setComponentAlignment(cod, Alignment.TOP_LEFT);


        VerticalLayout entradaProduto = new VerticalLayout();
        entradaProduto.setWidth("100%");
        entradaProduto.addComponent(descricaoProduto);
        entradaProduto.setSpacing(true);
        grade.addComponent(entradaProduto, 0, 1, 1, 1);
        grade.setComponentAlignment(entradaProduto, Alignment.TOP_LEFT);

        HorizontalLayout botao = new HorizontalLayout();
        botao.setSpacing(true);
        botao.addComponent(remove);
        botao.setComponentAlignment(remove, Alignment.TOP_LEFT);
        botao.setMargin(false, false, true, false);

        VerticalLayout tabela = new VerticalLayout();
        tabela.addComponent(tabelaVendaProduto());
        tabela.setSpacing(true);

        HorizontalLayout saldo = new HorizontalLayout();

        saldo.addComponent(moeda);
        saldo.addComponent(soma);
        saldo.setSpacing(true);

        Panel painel1 = new Panel();
        painel1.setCaption("Produtos");
        painel1.setHeight(320F);
        painel1.addStyleName("painel1");
        painel1.setWidth("100%");
        painel1.addComponent(botao);
        painel1.addComponent(tabela);


        HorizontalLayout paineis = new HorizontalLayout();
        paineis.setWidth("100%");
        paineis.addComponent(painelImagen);
        paineis.setExpandRatio(painelImagen, 0.7F);
        paineis.addComponent(painelImagen1);
        paineis.setExpandRatio(painelImagen1, 0.3F);
        paineis.setSpacing(true);

        addComponent(paineis);
        addComponent(painel1);
        addComponent(saldo);
        setSpacing(true);
    }

    private Table tabelaVendaProduto() {

        dados = new Table();
        //dados.addStyleName("dados");
        dados.setWidth("100%");
        dados.setHeight(190F);
        dados.setColumnAlignment("cód.", Table.ALIGN_LEFT);
        dados.setColumnAlignment("Produto", Table.ALIGN_LEFT);
        dados.setColumnAlignment("Cor", Table.ALIGN_LEFT);
        dados.setColumnAlignment("Tam.", Table.ALIGN_LEFT);
        dados.setColumnAlignment("Qtd.", Table.ALIGN_LEFT);
        dados.setColumnAlignment("V.Unitário", Table.ALIGN_LEFT);
        dados.setColumnAlignment("V.Total", Table.ALIGN_LEFT);

        dados.addStyleName(Runo.TABLE_BORDERLESS);
        dados.addStyleName(Runo.TABLE_SMALL);
        dados.setColumnReorderingAllowed(true);
        dados.setRowHeaderMode(Table.ROW_HEADER_MODE_HIDDEN);
        dados.setSelectable(true);
        dados.setImmediate(true);

        dados.addContainerProperty("Cód.", String.class, null);
        dados.addContainerProperty("Produto", String.class, null);
        dados.addContainerProperty("Cor", String.class, null);
        dados.addContainerProperty("Tam.", String.class, null);
        dados.addContainerProperty("Qtd.", Integer.class, null);
        dados.addContainerProperty("V.Unitário", Double.class, null);
        dados.addContainerProperty("V.Total", Double.class, null);

        dados.setColumnExpandRatio("Cód.", 1F);
        dados.setColumnExpandRatio("Produto", 1.75F);
        dados.setColumnExpandRatio("Cor", 1.75F);
        dados.setColumnExpandRatio("Tam.", 0.75F);
        dados.setColumnExpandRatio("Qtd.", 0.75F);
        dados.setColumnExpandRatio("V.Unitário", 0.5F);
        dados.setColumnExpandRatio("V.Total", 0.5F);

        dados.addListener(new Table.ValueChangeListener() {
            @Override
            public void valueChange(ValueChangeEvent event) {

                if (event.getProperty().getValue() == null) {
                    remove.setEnabled(false);
                } else {
                    remove.setEnabled(true);
                }

            }
        });

        return dados;
    }

    public double somar() {

        double sum = 0;
        for (Iterator<?> i = dados.getItemIds().iterator(); i.hasNext();) {
            sum += (Double) dados.getItem(i.next()).getItemProperty("V.Total").getValue();
            System.out.println("Soma = " + sum);
        }
        System.out.println("valor da celular " + dados.getItem(dados.getItemIds()));
        System.out.println("método somar = " + sum);
        return sum;

    }

    public double subtrair() {

        double subt = 0;
        subt = somar();
        subt -= Double.parseDouble(String.valueOf(dados.getItem(dados.getValue()).getItemProperty("V.Total").getValue()));
        return subt;

    }

    public double subTotal(int quantidade, double vunit) {
        double subt = 0.00;

        subt = quantidade * vunit;

        return subt;


    }
}
