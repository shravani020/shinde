package com.java.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import projectpackage1.DBconnection;

public class CartDBUtil {

    public static boolean insertCartItem(int medId, int quantity) {
        boolean success = false;

        try {
            Connection con = DBconnection.getConnection();

            // Fetch medicine details
            String fetchQuery = "SELECT name, manufacturer, price FROM medicines WHERE id = ?";
            PreparedStatement fetchStmt = con.prepareStatement(fetchQuery);
            fetchStmt.setInt(1, medId);
            ResultSet rs = fetchStmt.executeQuery();

            if (rs.next()) {
                String medName = rs.getString("name");
                String manufacturer = rs.getString("manufacturer");
                double price = rs.getDouble("price") * quantity; // total price

                // Insert into cart
                String insertQuery = "INSERT INTO cart (medId, medName, manufacturer, price, quantity) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement insertStmt = con.prepareStatement(insertQuery);
                insertStmt.setInt(1, medId);
                insertStmt.setString(2, medName);
                insertStmt.setString(3, manufacturer);
                insertStmt.setDouble(4, price);
                insertStmt.setInt(5, quantity);

                int row = insertStmt.executeUpdate();
                success = row > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
