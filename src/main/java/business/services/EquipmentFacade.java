package business.services;
import business.entities.Equipment;
import business.exceptions.UserException;
import business.persistence.EquipmentMapper;
import business.persistence.Database;

import java.util.List;

public class EquipmentFacade {

    EquipmentMapper equipmentMapper;

    public EquipmentFacade(Database database) {
        this.equipmentMapper = new EquipmentMapper(database);
    }

    public List<Equipment> getAllEquipment() throws UserException {
        return equipmentMapper.getAllEquipment();
    }
}

