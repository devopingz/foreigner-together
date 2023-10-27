package bbs;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;

public class BbsService {
	private SqlSessionFactory sqlSessionFactory;

	public BbsService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addBbs(Bbs b) {
		// 커넥션 수립
		SqlSession session = sqlSessionFactory.openSession();// session open
		// dao interface 구현체를 받아옴
		// dao는 기존의 dao객체와 같다
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);// session을 통해 맵퍼 객체 획득
		// dao 메서드를 호출하여 db작업 수행
		dao.insert(b);
		// 트랜잭션 커밋(쓰기작업에 필요)
		session.commit();
		// 커넥션 닫음
		session.close();
	}
	
	public Bbs getBbs(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		Bbs b = dao.select(num);
		System.out.println("검색결과:"+b);
		session.close();
		return b;
	}
	
	public ArrayList<Bbs> getAll(){
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		ArrayList<Bbs> list = dao.selectAll();
		session.close();
		return list;
	}
	
	public ArrayList<Bbs> getByWriter(String writer){
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		ArrayList<Bbs> list = dao.selectByWriter(writer);
		session.close();
		return list;
	}
	
	public ArrayList<Bbs> getByTitle(String title){
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		ArrayList<Bbs> list = dao.selectByTitle("%"+title+"%");
		session.close();
		return list;
	}
	
	public void editBbs(Bbs b) {
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		dao.update(b);
		session.commit();
		session.close();
	}
	
	public void delBbs(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		BbsDao dao = (BbsDao) session.getMapper(BbsDao.class);
		dao.delete(num);
		session.commit();
		session.close();
	}
}
