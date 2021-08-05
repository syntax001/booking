package web.commands;

import business.exceptions.UserException;
import business.services.BookFacade;
import business.services.BookedEquipmentFacade;
import business.services.EquipmentFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingDeletedReceiptCommand extends CommandProtectedPage {

    EquipmentFacade equipmentFacade;
    BookFacade bookFacade = new BookFacade(database);
    UserFacade userFacade = new UserFacade(database);
    BookedEquipmentFacade beFacade = new BookedEquipmentFacade(database);

    public BookingDeletedReceiptCommand(String pageToShow, String role) {
        super(pageToShow, role);
        equipmentFacade = new EquipmentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {

        String bookingId = request.getParameter("bookingId");
        beFacade.deleteBooking(bookingId);
        return pageToShow;
    }
}
