package model;

import java.util.Date;

public class Tour {
    private int id;
    private int price, quantity;
    private String name, description;
    private Date startDate, endDate;

    public Tour() {
    }


    public Tour(String name, Date startDate, Date endDate, int quantity, int price, String desc) {
        this.price = price;
        this.quantity = quantity;
        this.name = name;
        this.description = desc;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public Tour(int id, String name, Date startDate, Date endDate, int quantity, int price, String desc) {
        this.id = id;
        this.price = price;
        this.quantity = quantity;
        this.name = name;
        this.description = desc;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}
