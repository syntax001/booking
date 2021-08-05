package web.commands;

import business.exceptions.UserException;
import business.services.BookedEquipmentFacade;
import business.services.StudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowRemainingPointsCommand extends CommandProtectedPage {

    StudentFacade studentFacade;

    public ShowRemainingPointsCommand(String pageToShow, String role) {
        super(pageToShow, role);
        studentFacade = new StudentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        //String email = request.getParameter("email");
        //request.setAttribute("remainingPoints", studentFacade.getRemainingUserPoints(email));
        return pageToShow;
    }
}
