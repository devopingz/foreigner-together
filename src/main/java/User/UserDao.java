package User;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import User.User;

@Mapper
public interface UserDao {
	@Insert("insert into User2 values(#{userID}, #{userPassword}, #{userName}, #{userGender}, #{userphoneNum}, #{userEmail})")
	void insert(User m);
	
	@Select("select * from User2 where userID=#{userID}")
	User select(@Param("userID") String userID);
	
	@Update("update User2 set userPassword=#{userPassword}, userphoneNum=#{userphoneNum}, userEmail=#{userEmail} where userID=#{userID}")
	void update(User m);
	
	@Delete("delete from User2 where userID=#{userID}")
	void delete(@Param("userID") String userID);
}