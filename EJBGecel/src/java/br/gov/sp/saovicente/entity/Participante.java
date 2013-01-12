/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
@Table(name = "participante", catalog = "gecelbs", schema = "")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Participante.findAll", query = "SELECT p FROM Participante p"),
  @NamedQuery(name = "Participante.findByMatricula", query = "SELECT p FROM Participante p WHERE p.matricula = :matricula"),
  @NamedQuery(name = "Participante.findByNome", query = "SELECT p FROM Participante p WHERE p.nome = :nome"),
  @NamedQuery(name = "Participante.findBySobrenome", query = "SELECT p FROM Participante p WHERE p.sobrenome = :sobrenome"),
  @NamedQuery(name = "Participante.findBySexo", query = "SELECT p FROM Participante p WHERE p.sexo = :sexo"),
  @NamedQuery(name = "Participante.findByNascimento", query = "SELECT p FROM Participante p WHERE p.nascimento = :nascimento"),
  @NamedQuery(name = "Participante.findByCurso", query = "SELECT p FROM Participante p WHERE p.curso = :curso"),
  @NamedQuery(name = "Participante.findByProjeto", query = "SELECT p FROM Participante p WHERE p.projeto = :projeto"),
  @NamedQuery(name = "Participante.findByRg", query = "SELECT p FROM Participante p WHERE p.rg = :rg"),
  @NamedQuery(name = "Participante.findByCpf", query = "SELECT p FROM Participante p WHERE p.cpf = :cpf"),
  @NamedQuery(name = "Participante.findByObs", query = "SELECT p FROM Participante p WHERE p.obs = :obs"),
  @NamedQuery(name = "Participante.findByFoto", query = "SELECT p FROM Participante p WHERE p.foto = :foto"),
  @NamedQuery(name = "Participante.findByCadastro", query = "SELECT p FROM Participante p WHERE p.cadastro = :cadastro"),
  @NamedQuery(name = "Participante.findByAtivo", query = "SELECT p FROM Participante p WHERE p.ativo = :ativo")})
public class Participante implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 10)
  @Column(name = "matricula", nullable = false, length = 10)
  private String matricula;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 45)
  @Column(name = "nome", nullable = false, length = 45)
  private String nome;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 45)
  @Column(name = "sobrenome", nullable = false, length = 45)
  private String sobrenome;
  @Size(max = 9)
  @Column(name = "sexo", length = 9)
  private String sexo;
  @Basic(optional = false)
  @NotNull
  @Column(name = "nascimento", nullable = false)
  @Temporal(TemporalType.TIMESTAMP)
  private Date nascimento;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 45)
  @Column(name = "curso", nullable = false, length = 45)
  private String curso;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 45)
  @Column(name = "projeto", nullable = false, length = 45)
  private String projeto;
  @Size(max = 13)
  @Column(name = "rg", length = 13)
  private String rg;
  @Size(max = 11)
  @Column(name = "cpf", length = 11)
  private String cpf;
  @Size(max = 100)
  @Column(name = "obs", length = 100)
  private String obs;
  @Size(max = 45)
  @Column(name = "foto", length = 45)
  private String foto;
  @Column(name = "cadastro")
  @Temporal(TemporalType.TIMESTAMP)
  private Date cadastro;
  @Column(name = "ativo")
  private Short ativo;
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "participante")
  private Collection<Contato> contatoCollection;
  @JoinColumn(name = "criador", referencedColumnName = "id", nullable = false)
  @ManyToOne(optional = false)
  private Usuario criador;
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "participante")
  private Collection<Endereco> enderecoCollection;

  public Participante() {
  }

  public Participante(String matricula) {
    this.matricula = matricula;
  }

  public Participante(String matricula, String nome, String sobrenome, Date nascimento, String curso, String projeto) {
    this.matricula = matricula;
    this.nome = nome;
    this.sobrenome = sobrenome;
    this.nascimento = nascimento;
    this.curso = curso;
    this.projeto = projeto;
  }

  public String getMatricula() {
    return matricula;
  }

  public void setMatricula(String matricula) {
    this.matricula = matricula;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getSobrenome() {
    return sobrenome;
  }

  public void setSobrenome(String sobrenome) {
    this.sobrenome = sobrenome;
  }

  public String getSexo() {
    return sexo;
  }

  public void setSexo(String sexo) {
    this.sexo = sexo;
  }

  public Date getNascimento() {
    return nascimento;
  }

  public void setNascimento(Date nascimento) {
    this.nascimento = nascimento;
  }

  public String getCurso() {
    return curso;
  }

  public void setCurso(String curso) {
    this.curso = curso;
  }

  public String getProjeto() {
    return projeto;
  }

  public void setProjeto(String projeto) {
    this.projeto = projeto;
  }

  public String getRg() {
    return rg;
  }

  public void setRg(String rg) {
    this.rg = rg;
  }

  public String getCpf() {
    return cpf;
  }

  public void setCpf(String cpf) {
    this.cpf = cpf;
  }

  public String getObs() {
    return obs;
  }

  public void setObs(String obs) {
    this.obs = obs;
  }

  public String getFoto() {
    return foto;
  }

  public void setFoto(String foto) {
    this.foto = foto;
  }

  public Date getCadastro() {
    return cadastro;
  }

  public void setCadastro(Date cadastro) {
    this.cadastro = cadastro;
  }

  public Short getAtivo() {
    return ativo;
  }

  public void setAtivo(Short ativo) {
    this.ativo = ativo;
  }

  @XmlTransient
  public Collection<Contato> getContatoCollection() {
    return contatoCollection;
  }

  public void setContatoCollection(Collection<Contato> contatoCollection) {
    this.contatoCollection = contatoCollection;
  }

  public Usuario getCriador() {
    return criador;
  }

  public void setCriador(Usuario criador) {
    this.criador = criador;
  }

  @XmlTransient
  public Collection<Endereco> getEnderecoCollection() {
    return enderecoCollection;
  }

  public void setEnderecoCollection(Collection<Endereco> enderecoCollection) {
    this.enderecoCollection = enderecoCollection;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (matricula != null ? matricula.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Participante)) {
      return false;
    }
    Participante other = (Participante) object;
    if ((this.matricula == null && other.matricula != null) || (this.matricula != null && !this.matricula.equals(other.matricula))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "br.gov.sp.saovicente.entity.Participante[ matricula=" + matricula + " ]";
  }
  
}
