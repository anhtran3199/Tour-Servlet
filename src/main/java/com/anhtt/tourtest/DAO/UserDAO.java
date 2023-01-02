package DAO;

import Entity.User;

import java.util.Date;

public class UserDAO  extends DAO{
    public UserDAO() {
    }
    public User getUser(int id){
        User u = null;
        try{
            String sql = "SELECT username, role FROM User WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
//                int id1 = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                Date dob = rs.getDate("dob");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                u = new User(id, username, password, dob, email, address, role);
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return u;
    }
}
