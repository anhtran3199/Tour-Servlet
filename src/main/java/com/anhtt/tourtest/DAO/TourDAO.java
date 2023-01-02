package DAO;

import model.Tour;

import java.util.ArrayList;
import java.util.Date;

public class TourDAO extends DAO{
    public TourDAO() {
        super();
    }

    public ArrayList<Tour> getListTour(){
        ArrayList<Tour> listTour = new ArrayList<>();
        try{
            String sql = "SELECT * FROM Tour";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Date startDate = rs.getDate("startDate");
                Date endDate = rs.getDate("endDate");
                int price = rs.getInt("price");
                String desc = rs.getString("description");
                int quantity = rs.getInt("quantity");
                listTour.add(new Tour(id, name, startDate, endDate, quantity, price, desc));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return listTour;
    }
    public Tour getTour(int id){
        Tour tour = null;
        try{
            String sql = "SELECT * FROM Tour WHERE id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                String name = rs.getString("name");
                Date startDate = rs.getDate("startDate");
                Date endDate = rs.getDate("endDate");
                int price = rs.getInt("price");
                String desc = rs.getString("description");
                int quantity = rs.getInt("quantity");
                tour = new Tour(id, name, startDate, endDate, quantity, price, desc );
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return tour;
    }
}
