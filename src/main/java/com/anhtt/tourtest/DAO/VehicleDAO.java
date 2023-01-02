package DAO;

import Entity.Vehicle;

import java.util.ArrayList;

public class VehicleDAO extends DAO{
    public VehicleDAO() {
    }

    public ArrayList<Vehicle> getListVehicles(int idTour){
        ArrayList<Vehicle> listVehicles = new ArrayList<>();
        try{
            String sql = "SELECT * FROM Vehicle WHERE idTour = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, idTour);
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int capacity = rs.getInt("capacity");
                String desc = rs.getString("description");
                int price = rs.getInt("price");
                listVehicles.add(new Vehicle(id, idTour, capacity, price, name, desc));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return listVehicles;
    }
}
