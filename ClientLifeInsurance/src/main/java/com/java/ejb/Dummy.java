package com.java.ejb;

import javax.naming.NamingException;

public class Dummy {
	public static void main(String[] args) {
		try {
			
			System.out.println(new EjbImpl().showInsuranceEjb());
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
