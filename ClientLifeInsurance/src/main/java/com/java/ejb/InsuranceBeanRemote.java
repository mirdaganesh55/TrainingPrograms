package com.java.ejb;
import java.util.List;

import javax.ejb.Remote;



@Remote
public interface InsuranceBeanRemote {
	
	List<Insurance> showInsurance();
	List<Insurance> getListOfInsurance(int firstRow, int rowCount);
	int countRows();
}
