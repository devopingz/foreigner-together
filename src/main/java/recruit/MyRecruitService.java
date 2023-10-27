package recruit;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;

public class MyRecruitService {
	private SqlSessionFactory sqlSessionFactory;

	public MyRecruitService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addMyRecruit(MyRecruit b) {

		SqlSession session = sqlSessionFactory.openSession();
		MyRecruitDao dao = (MyRecruitDao) session.getMapper(MyRecruitDao.class);
		dao.insert(b);
		session.commit();
		session.close();
	}

	public MyRecruit getMyRecruit(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		MyRecruitDao dao = (MyRecruitDao) session.getMapper(MyRecruitDao.class);
		MyRecruit b = dao.selectOne(num);
		session.close();
		return b;
	}

	public ArrayList<MyRecruit> getByWriter(String writer) {
		SqlSession session = sqlSessionFactory.openSession();
		MyRecruitDao dao = (MyRecruitDao) session.getMapper(MyRecruitDao.class);
		ArrayList<MyRecruit> list = dao.select(writer);
		session.close();
		return list;
	}

	public void editMyRecruit(MyRecruit b) {
		SqlSession session = sqlSessionFactory.openSession();
		MyRecruitDao dao = (MyRecruitDao) session.getMapper(MyRecruitDao.class);
		dao.update(b);
		session.commit();
		session.close();
	}

	public void delMyRecruit(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		MyRecruitDao dao = (MyRecruitDao) session.getMapper(MyRecruitDao.class);
		dao.delete(num);
		session.commit();
		session.close();
	}
}
