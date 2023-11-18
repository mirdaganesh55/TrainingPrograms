package com.java.hib;

import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class CustomerDAOImpl {
		
	Session session;
	SessionFactory sf;
	
	SELECT *
	FROM Customer
	WHERE status = 'ACTIVE'
	  AND custId IN (SELECT custId FROM Customer WHERE gender = 'MALE');


	
	public List<Customer> showCustomerDetails() {
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Criteria criteria = session.createCriteria(Customer.class);
		List<Customer> customerList = criteria.list();
		return customerList;
	}
	public List<String> showCustomerWalleNames() {
		 Map<String, Object> sessionMap =
					FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		int custId = (Integer)sessionMap.get("customerId");
		Criteria criteria = session.createCriteria(Wallet.class);
		criteria.add(Restrictions.eq("custId", custId));
		Projection projection = Projections.property("walletSource");
		criteria.setProjection(projection);
		List<String> walletList = criteria.list();
		System.out.println(walletList);
		return walletList;
	}
	
	
}
