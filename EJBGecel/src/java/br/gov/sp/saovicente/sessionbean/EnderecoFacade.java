/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.saovicente.sessionbean;

import br.gov.sp.saovicente.entity.Endereco;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author ivanildofilho
 */
@Stateless
public class EnderecoFacade extends AbstractFacade<Endereco>{
  @PersistenceContext(unitName = "EJBGecelPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public EnderecoFacade() {
    super(Endereco.class);
  }
  
}
