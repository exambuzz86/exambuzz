package org.itp.exambuzz.dao;

import org.itp.exambuzz.bo.QuestionBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;

@Service(value = "serviceRegistryDAO")
public class RegistrationServiceDAOImpl implements RegistrationServiceDAO {

	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;

	public DataSource getDataSource() {
		return dataSource;
	}

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}


	public void saveService(QuestionBO serviceRegistryBO) {
		/*
		 * try { String sql =
		 * "INSERT INTO SERVICE_DETAILS (SERVICE_ID,SERVICE_NAME,END_POINT,VERSION_NO,MODIFIED_TIME) VALUES('"
		 * + serviceRegistryBO.getServiceId() + "','" +
		 * serviceRegistryBO.getServiceName() + "','" +
		 * serviceRegistryBO.getEndPoint() + "','" +
		 * serviceRegistryBO.getVersionNum() + "','" +
		 * serviceRegistryBO.getModifiedTime() + "')";
		 * jdbcTemplate.execute(sql); } catch (Exception e) {
		 * e.printStackTrace(); }
		 */
	}

/*	public ArrayList<QuestionBO> viewServiceList() throws SQLException {
		ArrayList<QuestionBO> serviceList = new ArrayList<>();
		//String sql = "SELECT * FROM SERVICE_DETAILS";
		String sql = "SELECT * FROM category";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		System.out.println("Executed successfully!!");

		*//*while (rs.next()) {
			QuestionBO serviceRegistryBO = new QuestionBO();
			serviceRegistryBO.setServiceId(rs.getInt("SERVICE_ID"));
			serviceRegistryBO.setServiceName(rs.getString("SERVICE_NAME"));
			serviceRegistryBO.setVersionNum(rs.getString("VERSION_NO"));
			serviceRegistryBO.setEndPoint(rs.getString("END_POINT"));
			*//**//*oracle.sql.TIMESTAMP ORACLETIMESTAMP = (TIMESTAMP) rs
					.getObject("MODIFIED_TIME");*//**//*
			serviceRegistryBO.setModifiedTime(ORACLETIMESTAMP.timestampValue());
			serviceList.add(serviceRegistryBO);
		}*//*
		return serviceList;
	}*/

	/*@Override
	public QuestionBO getServiceById(int serviceId) {
		String sql = "SELECT * FROM SERVICE_DETAILS WHERE SERVICE_ID='"
				+ serviceId + "'";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		QuestionBO serviceRegistryBO = new QuestionBO();
		while (rs.next()) {
			serviceRegistryBO.setServiceName(rs.getString("SERVICE_NAME"));
			serviceRegistryBO.setVersionNum(rs.getString("VERSION_NO"));
			serviceRegistryBO.setEndPoint(rs.getString("END_POINT"));
		}
		return serviceRegistryBO;
	}*/
}
