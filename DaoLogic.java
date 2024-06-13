package com.dao;

import java.util.ArrayList;
import java.util.List;


import com.entity.Student;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

public class DaoLogic {
	 private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dipen");
	 private EntityManager em = emf.createEntityManager();
	 private EntityTransaction et = em.getTransaction();
	
	public void create(Student s)
	{
		et.begin();
		em.persist(s);
		et.commit();
		
	}
    public List<Student> getallstudent(){
    	Query q = em.createQuery("SELECT s FROM Student s");
//    	q.getResultList();
    	List<Student> ls =q.getResultList();
    	
    	return ls;	
    }
    public Student getstudent(int id) {
    	return em.find(Student.class, id);
    	
    }
    public void delete(Student s) {
    	et.begin();
    	em.remove(s);
    	et.commit();
    }
    public void update( Student s) {
    	
    	et.begin();
    	em.merge(s);
    	et.commit();
    }

}
