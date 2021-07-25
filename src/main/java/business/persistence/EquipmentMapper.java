package business.persistence;
import business.entities.Equipment;
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
                    String id = rs.getString("id");
                    String item_name = rs.getString("item_name");
                    String item_description = rs.getString("item_description");
                    Equipment equipment = new Equipment(id, item_name, item_description);
                    equipment.setId(id);
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
