package web.commands;

import business.exceptions.UserException;
import business.services.EquipmentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowEquipmentCommand extends CommandProtectedPage {

    EquipmentFacade equipmentFacade;

    public ShowEquipmentCommand(String pageToShow, String role) {
        super(pageToShow, role);
        equipmentFacade = new EquipmentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.setAttribute("equipmentList", equipmentFacade.getAllEquipment());
        return pageToShow;
    }
}
