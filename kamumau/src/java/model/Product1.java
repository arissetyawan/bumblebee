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
 *CREATE TABLE orders (
    id int NOT NULL AUTO_INCREMENT,
    no varchar(10) NOT NULL,
    user_id int NOT NULL.
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    PRIMARY KEY (id)
);
 * @author x201
 */
public class Product1 extends MyConnection{
    private final String tableName = "products";
            
    protected int product_id;
    protected String name;
    protected String category_id;
    protected float price;
    protected int stock;
    protected String updated_at;
    
    public Product1(){
        super();
    }

    public int getProduct_id() {
        return product_id;
    }

    public String getName() {
        return name;
    }

    public String getCategory_id() {
        return category_id;
    }

    public float getPrice() {
        return price;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public int getStock() {
        return stock;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    public boolean add(Product1 product){
        
        String query = "insert into products(name, category_id, price, stock) "
                    + "values('"+product.getName()+"', "
                    + "'"+product.getCategory_id()+"', "
                    + "'"+product.getPrice()+"', "
                    + "'"+product.getStock()+"')";
            
        try (Statement st = this.conn.createStatement()) {
            st.executeUpdate(query);
        } catch (SQLException ex) {
            System.out.println("gagal insert, "+ex);
        }
        return true;
    }
    
    public boolean remove(int id){
        String query = "delete from products where id='"+id+"'";
       try{    
            Statement st = this.conn().createStatement();
            st.executeUpdate(query);   
        } catch (SQLException e) {
            System.out.println("gagal hapus, "+e);
        }
        
        return true;
    }    
    
    public boolean update(Product1 p){
        String query = "update products set name='"+p.getName()+"',"
                + "category_id='"+p.getCategory_id()+"',"
                + "price='"+p.getPrice()+"',"
                + "stock='"+p.getStock()+"',"
                + "updated_at=CURRENT_TIMESTAMP"
                + " where product_id='"+p.getProduct_id()+"'";
       
        try (Statement st = this.conn().createStatement()) {
            st.executeUpdate(query);
        }catch (SQLException e) {
            System.out.println("gagal update, "+e);
        }
        
        return true;
    }
    
    public ArrayList<Product1> all() {
//        String query = "select p.id as product_id , p.name as name, c.name as category, "
//                + "p.price as price, p.stock as stock , p.updated_at as updated_at from products p inner join "
//                + "categories c on p.category_id = c.category_id order by c.name, p.id";

        String query = "SELECT * FROM " + tableName;
        ArrayList<Product1> products = new ArrayList<>();
        ResultSet rs;
        try{
            Statement st = this.conn().createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                Product1 product = new Product1();
                product.setProduct_id(rs.getInt("product_id"));
                product.setName(rs.getString("name"));
                product.setCategory_id(rs.getString("category"));
                product.setPrice(rs.getFloat("price"));
                product.setStock(rs.getInt("stock"));
                product.setUpdated_at(rs.getString("updated_at"));
                
                products.add(product);
            }
            rs.close();
        }catch(SQLException e){
        
        }
        
        
        return products;
    }
    
    
    
    public Product1 getProductID(int id) throws SQLException{
        String query = "select * from products where id='"+id+"'";
        
        Product1 product = new Product1();
        ResultSet rs;
        try (Statement st = this.conn().createStatement()) {
            rs = st.executeQuery(query);
            if(rs.next()){
                product.setProduct_id(rs.getInt("id"));
                product.setCategory_id(rs.getString("category_id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getFloat("price"));
                product.setStock(rs.getInt("stock"));
            }
        }
        rs.close();
               
        return product;
    }
}

