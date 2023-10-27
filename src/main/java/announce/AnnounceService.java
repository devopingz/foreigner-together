package announce;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;
import announce.AnnounceDao;

public class AnnounceService {

	private SqlSessionFactory sqlSessionFactory;

	public AnnounceService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addAnnounce(Announce a) {
		SqlSession session = sqlSessionFactory.openSession();
		AnnounceDao dao = (AnnounceDao) session.getMapper(AnnounceDao.class);
		dao.insert(a);
		session.commit();
		session.close();
	}

	public Announce getAnnounce(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		AnnounceDao dao = (AnnounceDao) session.getMapper(AnnounceDao.class);
		Announce a = dao.select(num);
		session.close();
		return a;
	}
	
	public int getCount() {
		SqlSession session = sqlSessionFactory.openSession();
		AnnounceDao dao = (AnnounceDao) session.getMapper(AnnounceDao.class);
		int cnt = dao.selectAllCount();
		session.close();
		return cnt;
	}
}
