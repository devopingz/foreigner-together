package bbs;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bbs.Bbs;

public interface BbsDao {
	@Insert("insert into Bbs values(seq_Bbs.nextval,#{bbsTitle},#{userID},sysdate,#{bbsContent},#{path1},#{path2})")
	void insert(Bbs b);
	
	@Select("select * from Bbs where bbsID=#{bbsID}")
	Bbs select(@Param("bbsID") int bbsID);
	
	@Select("select * from Bbs")
	ArrayList<Bbs> selectAll();
	
	@Select("select * from Bbs where writer=#{userID}")
	ArrayList<Bbs> selectByWriter(@Param("userID") String userID);
	
	@Select("select * from Bbs where bbsTitle like #{bbsTitle}")
	ArrayList<Bbs> selectByTitle(@Param("bbsTitle") String bbsTitle);
	
	@Update("update Bbs set bbsTitle=#{bbsTitle}, bbsContent=#{bbsContent} where bbsID=#{bbsID}")
	void update(Bbs b);
	
	@Delete("delete Bbs where bbsID=#{bbsID}")
	void delete(int bbsID);
}
