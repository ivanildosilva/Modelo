/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.sessionbean;

import br.gov.sp.saovicente.entity.Usuario;
import javax.ejb.Local;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author ivanildofilho
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {

  @PersistenceContext(unitName = "EJBGecelPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public UsuarioFacade() {
    super(Usuario.class);
  }

  public Usuario autenticar(String login, String senha) {
    String jpql = "SELECT u FROM Usuario u WHERE u.login = :login AND u.senha = :senha";

    Query query = em.createQuery(jpql);
    query.setParameter("login", login);
    query.setParameter("senha", senha);

    Usuario usuario;

    try {
      usuario = (Usuario) query.getSingleResult();
    } catch (Exception e) {
      usuario = null;
    }

    return usuario;
  }
}
