package org.itp.exambuzz.service;

import org.itp.exambuzz.dao.RegistrationServiceDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "registryService")
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private RegistrationServiceDAO serviceRegistryDAO;

/*	@Override
	public void saveService(QuestionBO serviceRegistryBO) {
		// serviceRegistryDAO.saveService(serviceRegistryBO);
	}

	@Override
	public ArrayList<QuestionBO> viewServiceList() throws Exception {
		ArrayList<QuestionBO> serviceList = serviceRegistryDAO
				.viewServiceList();
		return serviceList;
	}

	@Override
	public QuestionBO getServiceById(int serviceId) {
		QuestionBO selectedService = serviceRegistryDAO
				.getServiceById(serviceId);
		System.out.println("#### selectedService : "
				+ selectedService.getServiceName());
		return selectedService;
	}*/

}
