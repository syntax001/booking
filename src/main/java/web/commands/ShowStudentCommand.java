package web.commands;

import business.exceptions.UserException;
import business.services.StudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowStudentCommand extends CommandProtectedPage {

    StudentFacade studentFacade;

    public ShowStudentCommand(String pageToShow, String role) {
        super(pageToShow, role);
        studentFacade = new StudentFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.setAttribute("studentList", studentFacade.getAllStudents());
        return pageToShow;
    }
}
