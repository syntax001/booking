package web.commands;
import business.entities.User;
import business.exceptions.UserException;
import business.services.UserFacade;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddStudentCommand extends CommandUnprotectedPage
{
    private UserFacade userFacade;

    public AddStudentCommand(String pageToShow)
    {
        super(pageToShow);
        userFacade = new UserFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");

        if (password1.equals(password2))
        {
            userFacade.createUser(email, password1);
            return "studentaddsuccess";
        }
        else
        {
            request.setAttribute("error", "the two passwords did not match");
            return "addstudentpage";
        }
    }

}
