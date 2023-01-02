package DAO;


import Entity.Ticket;

import java.sql.SQLException;

public class TicketDAO extends DAO {
    public TicketDAO() {
    }
    public void addTicket(Ticket ticket){
        try {
            String sql = "INSERT INTO Ticket VALUES (?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, ticket.getIdTour());
            ps.setInt(2, ticket.getIdTicketSalesman());
            ps.setString(3, ticket.getCusName());
            ps.setInt(4, ticket.getTotalPrice());
            ps.setString(5, ticket.getDescription());
            ps.executeUpdate();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

}
