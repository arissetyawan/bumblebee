/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author x201
 */
public class User extends MyConnection{
    private final String tableName="user";
    public String email;
    public String password;
    public String retpassword;
    public String fullname;
    public String address;
    public String bankname;
    public String accountno;

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRetpassword(String retpassword) {
        this.retpassword = retpassword;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public void setAccountno(String accountno) {
        this.accountno = accountno;
    }

   
    public boolean doLogin(){
        this.id=1;
        return true;
    }
    
    public int getId(){
        return this.id;
    }
    
    public void setId(int id){
        this.id=id;
    }
    
    public String getName(){
        return "Nama User";
    }

    public String getTableName() {
        return tableName;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getRetpassword() {
        return retpassword;
    }

    public String getFullname() {
        return fullname;
    }

    public String getAddress() {
        return address;
    }

    public String getBankname() {
        return bankname;
    }

    public String getAccountno() {
        return accountno;
    }
    
    public boolean create(){
        boolean result;
        if(!validate()){
            return false;
        }
        String query ="INSERT INTO "+ tableName+"(email,password,fullname,address,bankname,accountno) values ('"+this.email+"','"+ this.password+"','"+ this.fullname+"','"+ this.address+"','"+ this.bankname+"','"+ this.accountno+"')";
        try{
            Statement stmt = this.conn().createStatement();
            return stmt.executeUpdate(query)>0;
        }catch(SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
    }

    private boolean validate() {
        boolean status = false;
        if(!"".equals(this.email)&& !"".equals(this.password)&&!"".equals(this.retpassword)&& !"".equals(this.fullname)&& !"".equals(this.fullname)&& !"".equals(this.address)&& !"".equals(this.bankname)&& !"".equals(this.accountno)){
            status = true;
        }
        return status;
    }
    
    public ArrayList<User> all(){
        String query = "SELECT * FROM " + tableName;
        ArrayList<User> users = new ArrayList<>();
        try {
            Statement stmt = this.conn().createStatement();
            ResultSet res = stmt.executeQuery(query);
            while (res.next()) {
                User user = new User();
                user.setEmail(res.getString("email"));
                user.setPassword(res.getString("password"));
                user.setFullname(res.getString("fullname"));
                user.setAddress(res.getString("address"));
                user.setBankname(res.getString("bankname"));
                user.setAccountno(res.getString("accountno"));
                
                user.setId(res.getInt("id"));
                users.add(user);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return users;
    }
    
    public User find(int id){
        User user = new User();
        String query = "SELECT * FROM " + tableName + " WHERE id = " + id + " ";
        try {
            Statement stmt = this.conn().createStatement();
            ResultSet res = stmt.executeQuery(query);
            if (res.next()) {
                user.setEmail(res.getString("name"));
                user.setPassword(res.getString("phone"));
                user.setRetpassword(res.getString("profession"));
                user.setFullname (res.getString("fullname"));
                user.setAddress(res.getString("address"));
                user.setBankname(res.getString("bankname"));
                user.setAccountno(res.getString("accountno"));
                user.setId(res.getInt("id"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return user;
    }
    
//    public boolean login(){
//        User user = new User();
//        String query ="SELECT * FROM " + tableName + " WHERE email = " + email + " and password= "+ password+ ";
//        try{
//            Statement stmt = this.conn().createStatement();
//            ResultSet res= stmt.executeQuery(query);
//        }catch(SQLException e){
//            System.out.println(e.getMessage());
//            return false;
//        }
//        return false;
//    }
//    
    
    
    
}
