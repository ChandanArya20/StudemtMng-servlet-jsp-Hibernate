package in.ineuron.persistance;

import org.hibernate.Session;
import org.hibernate.Transaction;

import in.ineuron.dto.Student;
import in.ineuron.utils.HibernateUtils;

public class StudentDaoImpl implements IStudentDao {

	Session session=HibernateUtils.getSession();

	@SuppressWarnings("finally")
	@Override
	public String addStudent(Student student) {

		Transaction transaction=null;
		boolean flag=false;

		try {
			transaction = session.beginTransaction();

			if(transaction!=null) {

				session.save(student);
				flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "failure";
		}finally {
			if(flag) {
				transaction.commit();
				return "success";
			}else {
				transaction.rollback();
				return "failure";
			}
		}

	}

	@Override
	public Student searchStudent(Integer sid) {

		return session.get(Student.class, sid);
	}

	@SuppressWarnings("finally")
	@Override
	public String updateStudent(Student student) {

		Transaction transaction=null;
		boolean flag=false;
		Student stud=session.get(Student.class, student.getSid());

		if(stud!=null) {
			try {
				transaction = session.beginTransaction();
				if(transaction!=null) {
					session.merge(student);
					flag=true;
				}

			} catch (Exception e) {
				e.printStackTrace();
				return "failure";

			}finally {
				if(flag) {
					transaction.commit();
					return "success";
				}else {
					if(transaction!=null)
						transaction.rollback();
					return "failure";
				}
			}
		}else
			return "not found";

	}

	@SuppressWarnings("finally")
	@Override
	public String deleteStudent(Integer sid) {

		Transaction transaction=null;
		boolean flag=false;
		Student student=session.get(Student.class, sid);

		if(student!=null) {
			try {
				transaction = session.beginTransaction();
				if(transaction!=null) {
					session.delete(student);
					flag=true;
				}

			} catch (Exception e) {
				e.printStackTrace();
				return "failure";

			}finally {
				if(flag) {
					transaction.commit();
					return "success";
				}else {
					if(transaction!=null)
						transaction.rollback();
					return "failure";
				}
			}
		}else
			return "not found";
	}
}
