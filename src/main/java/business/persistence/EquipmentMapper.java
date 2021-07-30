package business.persistence;
import business.entities.Equipment;
import business.entities.Room;
import business.exceptions.UserException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EquipmentMapper {

    Database database;

    public EquipmentMapper(Database database) {
        this.database = database;
    }

    public List<Equipment> getAllEquipment() throws UserException {
        List<Equipment> equipmentList = new ArrayList<>();

        try (Connection connection = database.connect())
        {
            String sql = "SELECT * FROM equipment";

            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    String itemId = rs.getString("item_id");
                    String itemName = rs.getString("item_name");
                    String itemDescription = rs.getString("item_description");
                    int roomNumber = rs.getInt("room_number");
                    Equipment equipment = new Equipment(itemId, itemName, itemDescription, roomNumber);
                    equipment.setId(itemId);
                    equipmentList.add(equipment);
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

        return equipmentList;
    }

}
