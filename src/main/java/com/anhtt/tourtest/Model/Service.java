package Entity;

public class Service {
    private int id, idTour, price;
    private String name, description;

    public Service(int id, String name, int price, String description) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.description = description;
    }

    public Service() {
    }

    public Service(int id, int idTour, String name, int price, String desc) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.description = desc;
        this.idTour = idTour;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Service{" +
                "id=" + id +
                ", idTour=" + idTour +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
