package Entity;

import java.util.Date;

public class User {
    private int id, role;
    private String username, password, email, address, tel;
    private Date dob;

    public User(int id, String username, String password, Date dob, String email, String tel,  String address, int role) {
        this.id = id;
        this.role = role;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.dob = dob;
    }

    public User(int role, String username, String password, String email, String address, String tel, Date dob) {
        this.role = role;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.dob = dob;
    }

    public User(int id, String username, String password, Date dob, String email, String address, int role) {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", role=" + role +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", tel='" + tel + '\'' +
                ", dob=" + dob +
                '}';
    }
}
