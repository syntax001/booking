package web.commands;

import business.exceptions.UserException;
import business.persistence.Database;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Command
{
    //Return a token string from the execute method to make a client side redirect,
    // instead of a server side (forward) redirect
    public final static String REDIRECT_INDICATOR = "#*redirect*#_###_";
    public final static String WAS_NOT_FOUND_COMMAND ="404_NOT_FOUND";

    private static HashMap<String, Command> commands;
    public static Database database;

    private static void initCommands(Database database)
    {
        commands = new HashMap<>();
        commands.put("index", new CommandUnprotectedPage("index"));
        commands.put("loginpage", new CommandUnprotectedPage("loginpage"));
        commands.put("logincommand", new LoginCommand(""));
        commands.put("logoutcommand", new LogoutCommand(""));
        commands.put("registerpage", new CommandUnprotectedPage("registerpage"));
        commands.put("registercommand", new RegisterCommand(""));
        commands.put("studentpage", new CommandProtectedPage("studentpage", "student"));
        commands.put("administratorpage", new CommandProtectedPage("administratorpage", "administrator"));
        commands.put("showstudents", new ShowStudentCommand("showstudentpage", "administrator"));
        commands.put("showequipment", new ShowEquipmentCommand("showequipmentpage", "administrator"));
        commands.put("addstudent", new ShowEquipmentCommand("addstudentpage", "administrator"));
        commands.put("addstudentcommand", new AddStudentCommand(""));
        commands.put("book", new BookCommand("book", "student"));
        commands.put("showbookableequipment", new ShowBookableEquipmentCommand("showbookableequipment", "student"));
        commands.put("bookingreceipt", new BookingReceiptCommand("bookingreceipt", "student"));
        commands.put("showbookedequipment", new ShowBookedEquipmentCommand("showbookedequipment", "administrator"));
        commands.put("bookingdeletedreceipt", new BookingDeletedReceiptCommand("bookingdeletedreceipt", "administrator"));
        commands.put("remainingpoints", new ShowRemainingPointsCommand("remainingpoints", "student"));
        commands.put("remainingpointsresult", new RemainingPointsResultCommand("remainingpointsresult", "student"));
    }

    public static Command fromPath(
            HttpServletRequest request,
            Database db)
    {
        String action = request.getPathInfo().replaceAll("^/+", "");
        System.out.println("--> " + action);

        if (commands == null)
        {
            database = db;
            initCommands(database);
        }

        return commands.getOrDefault(action, new CommandUnknown());   // unknowncommand is default
    }

    public abstract String execute(
            HttpServletRequest request,
            HttpServletResponse response)
            throws UserException;

}
