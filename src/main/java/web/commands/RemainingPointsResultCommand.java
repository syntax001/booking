package web.commands;

import business.exceptions.UserException;
import business.services.StudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemainingPointsResultCommand extends CommandProtectedPage {

    StudentFacade studentFacade;

    public RemainingPointsResultCommand(String pageToShow, String role) {
        super(pageToShow, role);
        studentFacade = new StudentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        String email = request.getParameter("email");
        int remainingPoints = studentFacade.getRemainingUserPoints(email);
        request.setAttribute("remainingPoints", remainingPoints);
        return pageToShow;
    }
}
