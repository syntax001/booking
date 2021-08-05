package business.services;

import business.entities.Booking;
import business.entities.Equipment;
import business.exceptions.UserException;
import business.persistence.BookedEquipmentMapper;
import business.persistence.Database;
import business.persistence.EquipmentMapper;

import java.util.List;

public class BookedEquipmentFacade {

    BookedEquipmentMapper beMapper;

    public BookedEquipmentFacade(Database database) {
        this.beMapper = new BookedEquipmentMapper(database);
    }

    public List<Booking> getAllBookedEquipment() throws UserException {
        return beMapper.getAllBookedEquipment();
    }

    public void deleteBooking(String bookingId) throws UserException {
        beMapper.deleteBooking(bookingId);
    }
}

