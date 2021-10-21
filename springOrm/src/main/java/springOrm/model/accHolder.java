package springOrm.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class accHolder {
	
	@Id
	private int id;
	private String name;
	private String gender;
	private int age;
	private String status;
	private String branch;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	@Override
	public String toString() {
		return "accHolder [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", status=" + status
				+ ", branch=" + branch + "]";
	}
	
}
