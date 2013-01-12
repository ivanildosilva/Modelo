package br.gov.sp.saovicente.entity;

import br.gov.sp.saovicente.entity.Contato;
import br.gov.sp.saovicente.entity.Endereco;
import br.gov.sp.saovicente.entity.Usuario;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-01-06T19:32:13")
@StaticMetamodel(Participante.class)
public class Participante_ { 

    public static volatile SingularAttribute<Participante, String> projeto;
    public static volatile CollectionAttribute<Participante, Endereco> enderecoCollection;
    public static volatile SingularAttribute<Participante, String> sexo;
    public static volatile SingularAttribute<Participante, String> rg;
    public static volatile SingularAttribute<Participante, String> matricula;
    public static volatile CollectionAttribute<Participante, Contato> contatoCollection;
    public static volatile SingularAttribute<Participante, String> obs;
    public static volatile SingularAttribute<Participante, String> sobrenome;
    public static volatile SingularAttribute<Participante, String> curso;
    public static volatile SingularAttribute<Participante, Short> ativo;
    public static volatile SingularAttribute<Participante, Date> cadastro;
    public static volatile SingularAttribute<Participante, Usuario> criador;
    public static volatile SingularAttribute<Participante, String> cpf;
    public static volatile SingularAttribute<Participante, Date> nascimento;
    public static volatile SingularAttribute<Participante, String> nome;
    public static volatile SingularAttribute<Participante, String> foto;

}