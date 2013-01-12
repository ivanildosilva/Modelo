/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.modelo.ui;

import com.vaadin.data.util.BeanItemContainer;
import com.vaadin.terminal.gwt.client.ApplicationConnection;
import com.vaadin.terminal.gwt.client.UIDL;
import com.vaadin.ui.*;
import com.vaadin.ui.Button.ClickEvent;
import com.vaadin.ui.themes.Runo;
import java.io.Serializable;

/**
 *
 * @author ivanildofilho
 */
public class Teste extends VerticalLayout {

  Table dados;
  Button button;

  public Teste() {

    inicio();
  }

  private void inicio() {

    addComponent(tabelaBICsConcluidos());
   

  }

  private Button Add() {

    button = new Button("Add");


    return button;
  }

  private Table tabelaBICsConcluidos() {

    dados = new Table();
    dados.setWidth("100%");
    dados.setHeight(220F);
    dados.addStyleName(Runo.TABLE_BORDERLESS);
    dados.addStyleName(Runo.TABLE_SMALL);
    dados.addStyleName(Runo.TABLE_SMALL);
    dados.setColumnReorderingAllowed(true);
    dados.setRowHeaderMode(Table.ROW_HEADER_MODE_HIDDEN);

    dados.addContainerProperty("Inscrição", String.class, null);
    dados.addContainerProperty("Tramitador", ComboBox.class, null);
    dados.addContainerProperty("Receptor", CheckBox.class, null);
    dados.addContainerProperty("Tramitação", Button.class, null);

//    dados.addContainerProperty("Inscrição", String.class, null);
//    dados.addContainerProperty("Encerramento", String.class, null);
//    dados.addContainerProperty("Receptor", String.class, null);
//    dados.addContainerProperty("Tramitador", String.class, null);

    dados.setColumnExpandRatio("Inscrição", 1.5F);
    dados.setColumnExpandRatio("Encerramento", 1.5F);
    dados.setColumnExpandRatio("Receptor", 3F);
    dados.setColumnExpandRatio("Tramitador", 3F);

//
//    // Insert this data
//String people[][] = {{"Galileo",  "Liked to go around the Sun"},
//                     {"Monnier",  "Liked star charts"},
//                     {"V��is��l��",  "Liked optics"},
//                     {"Oterma",   "Liked comets"},
//                     {"Valtaoja", "Likes cosmology and still "+
//                         "lives unlike the others above"},
//                     };
//        
//// Insert the data and the additional component column
//for (int i=0; i<people.length; i++) {
//    TextArea area = new TextArea(null, people[i][1]);
//    area.setRows(2);
//    
//    // Add an item with two components
//    Object obj[] = {people[i][0], area, new CheckBox()};
//    table.addItem(obj, new Integer(i));
//}
//table.setPageLength(table.size());

    return dados;
  }
}
