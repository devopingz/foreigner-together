package User;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;
import User.UserDao;

public class UserService {

	private SqlSessionFactory sqlSessionFactory;

	public UserService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addUser(User m) {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao dao = (UserDao) session.getMapper(UserDao.class);
		dao.insert(m);
		session.commit();
		session.close();
	}

	public User getUser(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao dao = (UserDao) session.getMapper(UserDao.class);
		User m = dao.select(id);
		session.close();
		return m;
	}

	public void editUser(User m) {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao mapper = (UserDao) session.getMapper(UserDao.class);
		mapper.update(m);
		session.commit();
		session.close();
	}

	public void delUser(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao mapper = (UserDao) session.getMapper(UserDao.class);
		mapper.delete(id);
		session.commit();
		session.close();
	}
}
