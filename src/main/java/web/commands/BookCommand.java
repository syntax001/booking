package web.commands;

import business.entities.User;
import business.exceptions.UserException;
import business.services.BookFacade;
import business.services.StudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookCommand extends CommandProtectedPage {

    BookFacade bookFacade;

    public BookCommand(String pageToShow, String role) {
        super(pageToShow, role);
        bookFacade = new BookFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        //HttpSession session = request.getSession();
        String bookingDate = request.getParameter("bookingDate");
        String bookingEnd = request.getParameter("bookingEnd");
        //session.setAttribute("bookingDate", bookingDate);
        //session.setAttribute("dayAmount", dayAmount);

        return "book";
    }
}
