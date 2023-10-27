package education;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;
import education.EducationDao;

public class EducationService {

	private SqlSessionFactory sqlSessionFactory;

	public EducationService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addEducation(Education a) {
		SqlSession session = sqlSessionFactory.openSession();
		EducationDao dao = (EducationDao) session.getMapper(EducationDao.class);
		dao.insert(a);
		session.commit();
		session.close();
	}

	public Education getEducation(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		EducationDao dao = (EducationDao) session.getMapper(EducationDao.class);
		Education a = dao.select(num);
		session.close();
		return a;
	}
	
	public int getCount() {
		SqlSession session = sqlSessionFactory.openSession();
		EducationDao dao = (EducationDao) session.getMapper(EducationDao.class);
		int cnt = dao.selectAllCount();
		session.close();
		return cnt;
	}
}
