/*********************************************************************************************************
 * File:  PhysicianController.java Course Materials CST8277
 *
 * @author Teddy Yap
 * @author Shariar (Shawn) Emami
 * @author (original) Mike Norman
 */
package databank.jsf;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.annotation.SessionMap;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import databank.dao.ListDataDao;
import databank.dao.PhysicianDao;
import databank.model.PhysicianPojo;

/**
 * Description:  Responsible for collection of Physician Pojo's in XHTML (list) <h:dataTable> </br>
 * Delegates all C-R-U-D behavior to DAO
 */

//TODO Don't forget this is a managed bean with a session scope
@Named
@SessionScoped
public class PhysicianController implements Serializable {
	private static final long serialVersionUID = 1L;

	@Inject
	@SessionMap
	private Map<String, Object> sessionMap;

	@Inject
	private PhysicianDao physicianDao;

	@Inject
	private ListDataDao listDataDao;

	private List<PhysicianPojo> physicians;
	private PhysicianPojo currentPhysician;

	//Necessary methods to make controller work

	public void loadPhysicians() {
		setPhysicians(physicianDao.readAllPhysicians());
	}

	public List<PhysicianPojo> getPhysicians() {
		return physicians;
	}

	public void setPhysicians(List<PhysicianPojo> physicians) {
		this.physicians = physicians;
	}

	public List<String> getSpecialties() {
		return this.listDataDao.readAllSpecialties();
	}
	
	public String navigateToAddForm() {
		//Pay attention to the name here, it will be used as the object name in add-physician.xhtml
		//ex. <h:inputText value="#{newPhysician.firstName}" id="firstName" />
		sessionMap.put("newPhysician", new PhysicianPojo());
		return "add-physician.xhtml?faces-redirect=true";
	}

	public String submitPhysician(PhysicianPojo physician) {
		//TODO Update the physician object with current date here.  You can use LocalDateTime::now().
		//TODO Use DAO to insert the physician to the database
		//TODO Do not forget to navigate the user back to list-physicians.xhtml
		physician.setCreated(LocalDateTime.now());
		physicianDao.createPhysician(physician);
		return "list-physicians.xhtml?faces-redirect=true";
	}

	public String navigateToUpdateForm(int physicianId) {
		//TODO Use DAO to find the physician object from the database first
		//TODO Use session map to keep track of of the object being edited
		//TODO Do not forget to navigate the user to the edit/update form
		PhysicianPojo physician = physicianDao.readPhysicianById(physicianId);
		if(currentPhysician== null) {
			System.out.println("Physician id not found" + physicianId );
	
		}
	    sessionMap.put("editPhysician", physician);
	    return "edit-physician.xhtml?faces-redirect=true";
		
	}

	public String submitUpdatedPhysician(PhysicianPojo physician) {
		//TODO Use DAO to update the physician in the database
		//TODO Do not forget to navigate the user back to list-physicians.xhtml
		physicianDao.updatePhysician(physician);
	    return "list-physicians.xhtml?faces-redirect=true";
	}

	public String deletePhysician(int physicianId) {
		//TODO Use DAO to delete the physician from the database
		//TODO Do not forget to navigate the user back to list-physicians.xhtml
		physicianDao.deletePhysicianById(physicianId);
	    return "list-physicians.xhtml?faces-redirect=true";
	}

}