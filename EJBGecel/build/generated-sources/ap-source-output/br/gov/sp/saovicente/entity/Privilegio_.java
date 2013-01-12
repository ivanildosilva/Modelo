package br.gov.sp.saovicente.entity;

import br.gov.sp.saovicente.entity.Usuario;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-01-06T19:32:12")
@StaticMetamodel(Privilegio.class)
public class Privilegio_ { 

    public static volatile SingularAttribute<Privilegio, Integer> id;
    public static volatile CollectionAttribute<Privilegio, Usuario> usuarioCollection;
    public static volatile SingularAttribute<Privilegio, String> descricao;

}