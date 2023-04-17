package in.ineuron.daofactoy;

import in.ineuron.persistance.IStudentDao;
import in.ineuron.persistance.StudentDaoImpl;

public class StudentDaoFactory {

	private StudentDaoFactory() {

	}

	private static IStudentDao studentDao=null;

	public static IStudentDao getStudentDao() {

		if(studentDao==null)
			studentDao=new StudentDaoImpl();

		return studentDao;
	}

}
