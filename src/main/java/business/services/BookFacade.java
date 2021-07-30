package business.services;
import business.entities.Booking;
import business.entities.Equipment;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.BookMapper;
import business.persistence.Database;

import javax.servlet.http.HttpSession;
import java.util.List;

public class BookFacade {

    BookMapper bookMapper;

    public BookFacade(Database database) {
        this.bookMapper = new BookMapper(database);
    }

    public List<Equipment> getAllItems() throws UserException {
        return bookMapper.getAllItems();
    }



    public Booking createBooking(String itemId, String email, String bookingDate, int dayAmount) throws UserException
    {
        Booking booking = new Booking(bookingDate, dayAmount, "online booking", "booked", email, itemId);
        bookMapper.createBooking(booking);
        return booking;
    }

}
