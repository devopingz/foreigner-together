package User;

public class User {
	private String userID;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userphoneNum;
	private String userEmail;

	public User() {

	}

	public User(String userID, String userPassword, String userName, String userGender, String userphoneNum,
			String userEmail) {

		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userGender = userGender;
		this.userphoneNum = userphoneNum;
		this.userEmail = userEmail;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getuserPhoneNum() {
		return userphoneNum;
	}

	public void setuserPhoneNum(String userphoneNum) {
		this.userphoneNum = userphoneNum;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}