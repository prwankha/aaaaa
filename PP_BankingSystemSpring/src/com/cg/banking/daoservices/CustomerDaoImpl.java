package com.cg.banking.daoservices;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.cg.banking.beans.Customer;
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@PersistenceContext
	EntityManager entityManager;
	public CustomerDaoImpl() {
		super();
	}
	public CustomerDaoImpl(EntityManager entityManager) {
		super();
		this.entityManager = entityManager;
	}


	public EntityManager getEntityManager() {
		return entityManager;
	}


	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}


	@Override
	public Customer save(Customer customer) {
        entityManager.persist(customer);
        return customer;
	}

}
