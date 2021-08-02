package business.persistence;

import business.entities.Booking;
import business.entities.Equipment;
import business.exceptions.UserException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookedEquipmentMapper {

    Database database;

    public BookedEquipmentMapper(Database database) {
        this.database = database;
    }

    public List<Booking> getAllBookedEquipment() throws UserException {
        List<Booking> bookingList = new ArrayList<>();

        try (Connection connection = database.connect())
        {
            String sql = "SELECT * FROM booking";

            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int bookingId = rs.getInt("booking_id");
                    String bookingDate = rs.getString("booking_date");
                    String bookingEndDate = rs.getString("booking_end_date");
                    String comment = rs.getString("comment");
                    String bookingStatus = rs.getString("booking_status");
                    String email = rs.getString("email");
                    String itemId = rs.getString("item_id");
                    Booking booking = new Booking(bookingId, bookingDate, bookingEndDate, comment, bookingStatus, email, itemId);
                    booking.setId(bookingId);
                    bookingList.add(booking);
                }
            }
            catch (SQLException ex)
            {
                throw new UserException(ex.getMessage());
            }
        }
        catch (SQLException ex)
        {
            throw new UserException("Connection to database could not be established");
        }

        return bookingList;
    }

}
