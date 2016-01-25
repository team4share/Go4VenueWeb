package com.go4venue.web.persistence.beans;

public class User {

    private Integer key;
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private String confirmPassword;
    private String contactNumber;
    private String userType;
    
    
    public Integer getKey() {
	return key;
    }

    @Override
	public String toString() {
		return "User [key=" + key + ", email=" + email + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", password=" + password + ", confirmPassword=" + confirmPassword + ", contactNumber=" + contactNumber
				+ ", userType=" + userType + "]";
	}

	public void setKey(Integer key) {
	this.key = key;
    }

    public String getPassword() {
	return password;
    }

    public void setPassword(String password) {
	this.password = password;
    }

    /**
     * @return the email
     */
    public String getEmail() {
	return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
	this.email = email;
    }

    /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
	return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
	this.confirmPassword = confirmPassword;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
	return userType;
    }

    /**
     * @param userType the userType to set
     */
    public void setUserType(String userType) {
	this.userType = userType;
    }

    /**
     * @return the contactNumber
     */
    public String getContactNumber() {
	return contactNumber;
    }

    /**
     * @param contactNumber the contactNumber to set
     */
    public void setContactNumber(String contactNumber) {
	this.contactNumber = contactNumber;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
	return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
	this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
	return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
	this.lastName = lastName;
    }
}
