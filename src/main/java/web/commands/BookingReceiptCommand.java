package web.commands;

import business.exceptions.UserException;
import business.services.BookFacade;
import business.services.EquipmentFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookingReceiptCommand extends CommandProtectedPage {

    EquipmentFacade equipmentFacade;
    BookFacade bookFacade = new BookFacade(database);
    UserFacade userFacade = new UserFacade(database);

    public BookingReceiptCommand(String pageToShow, String role) {
        super(pageToShow, role);
        equipmentFacade = new EquipmentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {

            //HttpSession session = request.getSession();
            //String itemId = (String) session.getAttribute("itemId");
            //String email = (String) session.getAttribute("email");
            //String bookingDate = (String) session.getAttribute("bookingDate");
            //int dayAmount = (int) session.getAttribute("dayAmount");
            String itemId = request.getParameter("bookedItem");
            String email = request.getParameter("email");
            String bookingDate = request.getParameter("bookingDate");
            String bookingEnd = request.getParameter("bookingEnd");
            userFacade.updateUserPoints(email);
            bookFacade.createBooking(itemId, email, bookingDate, bookingEnd);
        return pageToShow;
    }
}
