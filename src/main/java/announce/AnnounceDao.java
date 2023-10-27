package announce;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import announce.Announce;
import announce.AnnounceDao;

public interface AnnounceDao {
	@Insert("insert into Announce values(seq_Announce.nextval, #{title},#{content},#{writer}, #{lang}, #{wdate}, #{udate} )")
	void insert(Announce a);

	@Select("select * from Announce where num=#{num}")
	Announce select(@Param("num") int num);

	@Select("select * from Announce")
	ArrayList<Announce> selectAll();

	@Select("select count(*) from Announce")
	int selectAllCount();

	@Select("select * from Announce where writer=#{writer}")
	ArrayList<Announce> selectByWriter(@Param("writer") String writer);

	@Select("select * from Announce where title like '%#{title}'%")
	ArrayList<Announce> selectByTitle(@Param("title") String title);
}
