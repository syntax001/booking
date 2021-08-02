package web.commands;

import business.exceptions.UserException;
import business.services.BookedEquipmentFacade;
import business.services.EquipmentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowBookedEquipmentCommand extends CommandProtectedPage {

    BookedEquipmentFacade beFacade;

    public ShowBookedEquipmentCommand(String pageToShow, String role) {
        super(pageToShow, role);
        beFacade = new BookedEquipmentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.setAttribute("bookingList", beFacade.getAllBookedEquipment());
        return pageToShow;
    }
}
