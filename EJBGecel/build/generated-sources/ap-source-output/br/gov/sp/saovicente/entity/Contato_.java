package br.gov.sp.saovicente.entity;

import br.gov.sp.saovicente.entity.Participante;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-01-06T19:32:12")
@StaticMetamodel(Contato.class)
public class Contato_ { 

    public static volatile SingularAttribute<Contato, Integer> id;
    public static volatile SingularAttribute<Contato, String> email;
    public static volatile SingularAttribute<Contato, String> telefone;
    public static volatile SingularAttribute<Contato, Participante> participante;
    public static volatile SingularAttribute<Contato, String> celular;

}