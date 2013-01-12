/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ivanildofilho
 */
@Entity
@Table(name = "contato", catalog = "gecelbs", schema = "")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Contato.findAll", query = "SELECT c FROM Contato c"),
  @NamedQuery(name = "Contato.findById", query = "SELECT c FROM Contato c WHERE c.id = :id"),
  @NamedQuery(name = "Contato.findByTelefone", query = "SELECT c FROM Contato c WHERE c.telefone = :telefone"),
  @NamedQuery(name = "Contato.findByCelular", query = "SELECT c FROM Contato c WHERE c.celular = :celular"),
  @NamedQuery(name = "Contato.findByEmail", query = "SELECT c FROM Contato c WHERE c.email = :email")})
public class Contato implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @NotNull
  @Column(name = "id", nullable = false)
  private Integer id;
  @Size(max = 10)
  @Column(name = "telefone", length = 10)
  private String telefone;
  @Size(max = 10)
  @Column(name = "celular", length = 10)
  private String celular;
  // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="E-mail inválido")//if the field contains email address consider using this annotation to enforce field validation
  @Size(max = 45)
  @Column(name = "email", length = 45)
  private String email;
  @JoinColumn(name = "participante", referencedColumnName = "matricula", nullable = false)
  @ManyToOne(optional = false)
  private Participante participante;

  public Contato() {
  }

  public Contato(Integer id) {
    this.id = id;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getTelefone() {
    return telefone;
  }

  public void setTelefone(String telefone) {
    this.telefone = telefone;
  }

  public String getCelular() {
    return celular;
  }

  public void setCelular(String celular) {
    this.celular = celular;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public Participante getParticipante() {
    return participante;
  }

  public void setParticipante(Participante participante) {
    this.participante = participante;
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
    if (!(object instanceof Contato)) {
      return false;
    }
    Contato other = (Contato) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "br.gov.sp.saovicente.entity.Contato[ id=" + id + " ]";
  }
  
}
