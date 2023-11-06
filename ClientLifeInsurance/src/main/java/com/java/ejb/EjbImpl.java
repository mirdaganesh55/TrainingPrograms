package com.java.ejb;

import java.util.List;

import javax.naming.NamingException;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;





public class EjbImpl {
	
	
	
public List<Insurance> showInsuranceEjb() throws NamingException{
	InsuranceBeanRemote remote = RemoteHelper.lookupRemoteStatelessPatient();
	return remote.showInsurance();
}
	


}