package web.commands;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.services.BookFacade;
import business.services.EquipmentFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowBookableEquipmentCommand extends CommandProtectedPage {

    EquipmentFacade equipmentFacade;
    BookFacade bookFacade = new BookFacade(database);
    UserFacade userFacade = new UserFacade(database);

    public ShowBookableEquipmentCommand(String pageToShow, String role) {
        super(pageToShow, role);
        equipmentFacade = new EquipmentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {

        HttpSession session = request.getSession();
        String itemId = request.getParameter("bookedItem");
        String bookingDate = request.getParameter("bookingDate");
        String bookingEnd = request.getParameter("bookingEnd");
        //session.setAttribute("bookedItem", itemId);
        request.setAttribute("itemList", bookFacade.getAllItems(bookingDate, bookingEnd));
        return pageToShow;
    }
}
