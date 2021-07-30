package business.entities;

public class Booking {

    public Booking() {
    }

    private int id;
    private String bookingDate;
    private String bookingEnd;
    private String comment;
    private String bookingStatus;
    private String email;
    private String itemId;

    public Booking(int id, String bookingDate, String bookingEnd, String comment, String bookingStatus, String email, String itemId) {
        this.id = id;
        this.bookingDate = bookingDate;
        this.bookingEnd = bookingEnd;
        this.comment = comment;
        this.bookingStatus = bookingStatus;
        this.email = email;
        this.itemId = itemId;
    }
    public Booking(String bookingDate, String bookingEnd, String comment, String bookingStatus, String email, String itemId) {
        this.bookingDate = bookingDate;
        this.bookingEnd = bookingEnd;
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

    public String getBookingEnd() {
        return bookingEnd;
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

    public void setBookingEnd(String bookingEnd) {
        this.bookingEnd = bookingEnd;
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
