package DAO;

import Entity.Service;

import java.util.ArrayList;

public class ServiceDAO extends DAO{
    public ServiceDAO() {
    }

    public ArrayList<Service> getServices(int idTour){
        ArrayList<Service> listService = new ArrayList<>();
        try{
            String sql = "SELECT * FROM Service WHERE idTour = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, idTour);
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String desc = rs.getString("description");
                listService.add(new Service(id, idTour, name, price, desc));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return listService;
    }
}
