package com.everis.data.models;

import java.util.List;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="roles")
public class Role {
	

	@Id
    @GeneratedValue
    private Long id;
    private String name;
   /* @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "users_roles", 
        joinColumns = @JoinColumn(name = "role_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> usuarios;*/
    
	public Role(String name) {
		super();
		this.name = name;
	}

	public Role() {
		super();
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	/*public List<User> getUsers() {
		return usuarios;
	}*/

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	/*public void setUsers(List<User> usuarios) {
		this.usuarios = usuarios;
	}*/
    

}
