package Entity;

public class Vehicle {
    private int id, idTour, capacity, price;
    private String name, description;

    public Vehicle() {
    }

    public Vehicle(int id, int idTour, int capacity, int price, String name, String description) {
        this.id = id;
        this.idTour = idTour;
        this.capacity = capacity;
        this.price = price;
        this.name = name;
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
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
        return "Vehicle{" +
                "id=" + id +
                ", idTour=" + idTour +
                ", capacity=" + capacity +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
