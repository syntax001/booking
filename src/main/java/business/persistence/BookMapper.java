package business.persistence;

import business.entities.Booking;
import business.entities.Equipment;
import business.entities.User;
import business.exceptions.UserException;
import business.services.BookFacade;

import java.awt.print.Book;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookMapper {

    Database database;

    public BookMapper(Database database) {
        this.database = database;
    }


    public List<Equipment> getAllItems(String startDate, String endDate) throws UserException {
        List<Equipment> itemList = new ArrayList<>();

        try (Connection connection = database.connect())
        {
            String sql = "SELECT * FROM equipment WHERE equipment.item_id NOT IN (SELECT booking.item_id FROM booking WHERE booking_date <= ? AND booking_end_date >= ? OR booking_date <= ? AND booking_end_date >= ? OR booking_date >= ? AND booking_end_date <= ?)";

            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setString(1, startDate);
                ps.setString(2, startDate);
                ps.setString(3, endDate);
                ps.setString(4, endDate);
                ps.setString(5, startDate);
                ps.setString(6, endDate);
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    String itemId = rs.getString("item_id");
                    String itemName = rs.getString("item_name");
                    String itemDescription = rs.getString("item_description");
                    int roomNumber = rs.getInt("room_number");
                    Equipment equipment = new Equipment(itemId, itemName, itemDescription, roomNumber);
                    equipment.setId(itemId);
                    itemList.add(equipment);
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

        return itemList;
    }

    public void createBooking(Booking booking) throws UserException
    {
        try (Connection connection = database.connect())
        {
            String sql = "INSERT INTO booking (booking_date, booking_end_date, comment, booking_status, email, item_id) VALUES (?, ?, ?, ?, ?, ?)";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ps.setString(1, booking.getBookingDate());
                ps.setString(2, booking.getBookingEnd());
                ps.setString(3, booking.getComment());
                ps.setString(4, booking.getBookingStatus());
                ps.setString(5, booking.getEmail());
                ps.setString(6, booking.getItemId());
                ps.executeUpdate();
                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                booking.setId(id);
            }
            catch (SQLException ex)
            {
                throw new UserException(ex.getMessage());
            }
        }
        catch (SQLException ex)
        {
            throw new UserException(ex.getMessage());
        }
    }

}
