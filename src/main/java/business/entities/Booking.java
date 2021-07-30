package business.entities;

public class Booking {

    public Booking() {
    }

    private int id;
    private String bookingDate;
    private int dayAmount;
    private String comment;
    private String bookingStatus;
    private String email;
    private String itemId;

    public Booking(int id, String bookingDate, int dayAmount, String comment, String bookingStatus, String email, String itemId) {
        this.id = id;
        this.bookingDate = bookingDate;
        this.dayAmount = dayAmount;
        this.comment = comment;
        this.bookingStatus = bookingStatus;
        this.email = email;
        this.itemId = itemId;
    }
    public Booking(String bookingDate, int dayAmount, String comment, String bookingStatus, String email, String itemId) {
        this.bookingDate = bookingDate;
        this.dayAmount = dayAmount;
        this.comment = comment;
        this.bookingStatus = bookingStatus;
        this.email = email;
        this.itemId = itemId;
    }


    //---------------------------GETTERS---------------------------//
    public int getId() {
        return id;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public int getDayAmount() {
        return dayAmount;
    }

    public String getComment() {
        return comment;
    }

    public String getBookingStatus() {
        return bookingStatus;
    }

    public String getEmail() {
        return email;
    }

    public String getItemId() {
        return itemId;
    }

    //---------------------------GETTERS---------------------------//

    //---------------------------SETTERS---------------------------//
    public void setId(int id) {
        this.id = id;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public void setDayAmount(int dayAmount) {
        this.dayAmount = dayAmount;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setBookingStatus(String bookingStatus) {
        this.bookingStatus = bookingStatus;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    //---------------------------SETTERS---------------------------//
}
