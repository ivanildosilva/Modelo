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
@Table(name = "privilegio", catalog = "gecelbs", schema = "")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Privilegio.findAll", query = "SELECT p FROM Privilegio p"),
  @NamedQuery(name = "Privilegio.findById", query = "SELECT p FROM Privilegio p WHERE p.id = :id"),
  @NamedQuery(name = "Privilegio.findByDescricao", query = "SELECT p FROM Privilegio p WHERE p.descricao = :descricao")})
public class Privilegio implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @NotNull
  @Column(name = "id", nullable = false)
  private Integer id;
  @Size(max = 45)
  @Column(name = "descricao", length = 45)
  private String descricao;
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "privilegio")
  private Collection<Usuario> usuarioCollection;

  public Privilegio() {
  }

  public Privilegio(Integer id) {
    this.id = id;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getDescricao() {
    return descricao;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }

  @XmlTransient
  public Collection<Usuario> getUsuarioCollection() {
    return usuarioCollection;
  }

  public void setUsuarioCollection(Collection<Usuario> usuarioCollection) {
    this.usuarioCollection = usuarioCollection;
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
    if (!(object instanceof Privilegio)) {
      return false;
    }
    Privilegio other = (Privilegio) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "br.gov.sp.saovicente.entity.Privilegio[ id=" + id + " ]";
  }
  
}
