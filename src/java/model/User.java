package model;

import java.sql.SQLException;

public class User {
   private int id;
    private String userName;
    private String userPass;
    private String userEmail;
    
    
    public User(String user, String pass) {
        this.userName = user;
        this.userPass = pass;
    }
   
    public User(){}

    public User(int id, String userName, String userPass, String userEmail) {
        this.id = id;
        this.userName = userName;
        this.userPass = userPass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String name) {
        this.userName = name;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

   
    @Override
    public String toString() {
        return "<hr>Nome: " + this.userName +
                "<br>Email: "  + this.userEmail +
                "<br>Senha: " + this.userPass;
    }
    
   
    public boolean isLogged() throws ClassNotFoundException, SQLException {
        UserDAO udao = new UserDAO();
        User uBanco = udao.listUserByName(this.userName);
        
        if(uBanco.getUserName() != null){
            return (uBanco.getUserPass().equals(this.userPass));
        } else {
            return false;
        }
    }
    
} 