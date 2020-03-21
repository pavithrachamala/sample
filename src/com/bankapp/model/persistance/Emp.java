package com.bankapp.model.persistance;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="emp_table1")
public class Emp {
	@Id
	@GeneratedValue
	private int Id;
	@Column(unique=true)
	private String email;
	private String password;
	private String role;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public Emp(String email, String password, String role) {
		
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public Emp() {
		
	}
	@Override
	public String toString() {
		return "Emp [Id=" + Id + ", email=" + email + ", password=" + password + ", role=" + role + "]";
	}
	
	
	

}
