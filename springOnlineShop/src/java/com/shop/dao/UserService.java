/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.dao;

import com.shop.model.User;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserService {
    static final Logger logger = Logger.getLogger(UserService.class.getName());

    @PersistenceUnit
    private EntityManagerFactory emf;
    
    private EntityManager em;
    
    
    @Transactional
    public void saveUser(User user) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        em.close();
    }

    public User findByEmail(String username) {
        User user = new User();
        try {
            em = emf.createEntityManager();
            Query query = em.createQuery("Select u from User u where u.email = :email");
            query.setParameter("email", username);
            user = (User) query.getSingleResult();
        } catch (NoResultException nre) {
            logger.severe("Username tidak ada");
        }
        return user;
    }

    
}
