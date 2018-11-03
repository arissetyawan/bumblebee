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
 * @edited by DamarPermadany
 */
public class Feedback extends MyConnection {
    private final String tableName = "feedback";
    
    public Feedback(){
        super();
    }
    
    public String content;
    public int rating;
    public int orderId;
    public int sellerId;
    public int buyerId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public int getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(int buyerId) {
        this.buyerId = buyerId;
    }
    
    public boolean create(){
        String query = "INSERT INTO " + tableName 
                + "(content, rating, order_id, seller_id, buyer_id) values ('" 
                + this.content + "', '" 
                + this.rating + "', '" 
                + this.orderId + "', '" 
                + this.sellerId + "', '"
                + this.buyerId + "')";
        try {
            Statement stmt = this.conn().createStatement();
            return stmt.executeUpdate(query) > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public ArrayList<Feedback> all(int sellerId){
        String query = "SELECT * FROM " + tableName + " WHERE seller_id = " +sellerId;
        ArrayList<Feedback> feedbacks = new ArrayList<>();
        try {
            Statement stmt = this.conn().createStatement();
            ResultSet res = stmt.executeQuery(query);
            while(res.next()){
                Feedback feedback = new Feedback();
                feedback.setContent(res.getString("content"));
                feedback.setRating(res.getInt("rating"));
                feedback.setOrderId(res.getInt("order_id"));
                feedback.setSellerId(res.getInt("seller_id"));
                feedback.setBuyerId(res.getInt("buyer_Id"));
                feedbacks.add(feedback);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return feedbacks;
    }
}
