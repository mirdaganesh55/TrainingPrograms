package com.java.ejb;

import java.util.List;

import javax.naming.NamingException;

public class InsuranceEjbImpl {
	public List<Insurance> showInsuranceEjb() throws NamingException {
		InsuranceBeanRemote remote = InsuranceRemoteHelper.lookupRemoteStatelessEmploy();
		return remote.showInsurance();
		}
	
	public List<Insurance> getListOfInsurance(int firstRow, int rowCount) throws NamingException {
		InsuranceBeanRemote remote = InsuranceRemoteHelper.lookupRemoteStatelessEmploy();
		return remote.getListOfInsurance(firstRow, rowCount);
		
	}

	public int countRowsEjb() throws NamingException {
		InsuranceBeanRemote remote = InsuranceRemoteHelper.lookupRemoteStatelessEmploy();
		return remote.countRows();
				
	}
}
