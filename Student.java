package com.entity;

import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String uname;
	private String email;
	private String password;
	private String gender;
	private long mobail;
	private Date dob;
	private String address;
	private String job;
	@OneToMany(cascade = CascadeType.ALL)
	private List<Hobbies> hobbies;
	

	public void setId(int id) {
		this.id = id;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setMobail(Long mobail) {
		this.mobail = mobail;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public void setHobbies(List<Hobbies> hobbies) {
		this.hobbies = hobbies;
	}
	
	public int getId() {
		return id;
	}
	public String getUname() {
		return uname;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getGender() {
		return gender;
	}
	public long getMobail() {
		return mobail;
	}
	public Date getDob() {
		return dob;
	}
	public String getAddress() {
		return address;
	}
	public String getJob() {
		return job;
	}
	public List<Hobbies> getHobbies() {
		return hobbies;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", uname=" + uname + ", email=" + email + ", password=" + password + ", gender="
				+ gender + ", mobail=" + mobail + ", dob=" + dob + ", address=" + address + ", job=" + job
				+ ", hobbies=" + hobbies + "]";
	}
	
	
	

}
