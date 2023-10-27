package education;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import education.Education;
import education.EducationDao;

public interface EducationDao {
	@Insert("insert into Education values(seq_Education.nextval, #{title},#{content},#{writer}, #{lang}, #{wdate}, #{udate} )")
	void insert(Education a);

	@Select("select * from Education where num=#{num}")
	Education select(@Param("num") int num);

	@Select("select * from Education")
	ArrayList<Education> selectAll();

	@Select("select count(*) from Education")
	int selectAllCount();

	@Select("select * from Education where writer=#{writer}")
	ArrayList<Education> selectByWriter(@Param("writer") String writer);

	@Select("select * from Education where title like '%#{title}'%")
	ArrayList<Education> selectByTitle(@Param("title") String title);
}
