package recruit;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import recruit.MyRecruit;

public interface MyRecruitDao {
	@Insert("insert into recruit values(seq_recruit.nextval,#{title},#{userid},#{content},#{name},#{phonenum}, #{degree}, #{exp}, #{gender}, #{img} )")
	void insert(MyRecruit b);

	@Select("select * from recruit where userID=#{userID}")
	ArrayList<MyRecruit> select(@Param("userID") String userID);

	@Select("select * from recruit where num=#{num}")
	MyRecruit selectOne(@Param("num") int num);

	@Update("update recruit set content=#{content}, degree=#{degree}, exp=#{exp} where num=#{num}")
	void update(MyRecruit b);

	@Delete("delete recruit where num=#{num}")
	void delete(int num);
}
