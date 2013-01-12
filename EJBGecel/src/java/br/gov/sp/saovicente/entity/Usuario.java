/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ivanildofilho
 */
@Entity
@Table(name = "usuario", catalog = "gecelbs", schema = "")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u"),
  @NamedQuery(name = "Usuario.findById", query = "SELECT u FROM Usuario u WHERE u.id = :id"),
  @NamedQuery(name = "Usuario.findByLogin", query = "SELECT u FROM Usuario u WHERE u.login = :login"),
  @NamedQuery(name = "Usuario.findBySenha", query = "SELECT u FROM Usuario u WHERE u.senha = :senha"),
  @NamedQuery(name = "Usuario.findByAtivo", query = "SELECT u FROM Usuario u WHERE u.ativo = :ativo"),
  @NamedQuery(name = "Usuario.findByNome", query = "SELECT u FROM Usuario u WHERE u.nome = :nome"),
  @NamedQuery(name = "Usuario.findByFoto", query = "SELECT u FROM Usuario u WHERE u.foto = :foto")})
public class Usuario implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @NotNull
  @Column(name = "id", nullable = false)
  private Integer id;
  @Size(max = 45)
  @Column(name = "login", length = 45)
  private String login;
  @Size(max = 45)
  @Column(name = "senha", length = 45)
  private String senha;
  @Column(name = "ativo")
  private Short ativo;
  @Size(max = 45)
  @Column(name = "nome", length = 45)
  private String nome;
  @Size(max = 45)
  @Column(name = "foto", length = 45)
  private String foto;
  @JoinColumn(name = "privilegio", referencedColumnName = "id", nullable = false)
  @ManyToOne(optional = false)
  private Privilegio privilegio;
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "criador")
  private Collection<Participante> participanteCollection;

  public Usuario() {
  }

  public Usuario(Integer id) {
    this.id = id;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getLogin() {
    return login;
  }

  public void setLogin(String login) {
    this.login = login;
  }

  public String getSenha() {
    return senha;
  }

  public void setSenha(String senha) {
    this.senha = senha;
  }

  public Short getAtivo() {
    return ativo;
  }

  public void setAtivo(Short ativo) {
    this.ativo = ativo;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getFoto() {
    return foto;
  }

  public void setFoto(String foto) {
    this.foto = foto;
  }

  public Privilegio getPrivilegio() {
    return privilegio;
  }

  public void setPrivilegio(Privilegio privilegio) {
    this.privilegio = privilegio;
  }

  @XmlTransient
  public Collection<Participante> getParticipanteCollection() {
    return participanteCollection;
  }

  public void setParticipanteCollection(Collection<Participante> participanteCollection) {
    this.participanteCollection = participanteCollection;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (id != null ? id.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Usuario)) {
      return false;
    }
    Usuario other = (Usuario) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "br.gov.sp.saovicente.entity.Usuario[ id=" + id + " ]";
  }
  
}
