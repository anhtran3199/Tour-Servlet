package Entity;

public class Ticket {
    private int id, idTour, idTicketSalesman, totalPrice;
    private String cusName, description;

    public Ticket() {
    }

    public Ticket(int idTour, int idTicketSalesman, int totalPrice, String cusName, String description) {
        this.idTour = idTour;
        this.idTicketSalesman = idTicketSalesman;
        this.totalPrice = totalPrice;
        this.cusName = cusName;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdTour() {
        return idTour;
    }

    public void setIdTour(int idTour) {
        this.idTour = idTour;
    }

    public int getIdTicketSalesman() {
        return idTicketSalesman;
    }

    public void setIdTicketSalesman(int idTicketSalesman) {
        this.idTicketSalesman = idTicketSalesman;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "id=" + id +
                ", idTour=" + idTour +
                ", idTicketSalesman=" + idTicketSalesman +
                ", totalPrice=" + totalPrice +
                ", cusName='" + cusName + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
