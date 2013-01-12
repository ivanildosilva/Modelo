/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.sessionbean;

import br.gov.sp.saovicente.entity.Privilegio;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author ivanildofilho
 */
@Stateless
public class PrivilegioFacade extends AbstractFacade<Privilegio>{
  @PersistenceContext(unitName = "EJBGecelPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public PrivilegioFacade() {
    super(Privilegio.class);
  }
  
}
