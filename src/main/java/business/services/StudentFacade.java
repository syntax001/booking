package business.services;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.StudentMapper;
import business.persistence.Database;

import java.util.List;

public class StudentFacade {

    StudentMapper studentMapper;

    public StudentFacade(Database database) {
        this.studentMapper = new StudentMapper(database);
    }

    public List<User> getAllStudents() throws UserException {
        return studentMapper.getAllStudents();
    }

    public int getRemainingUserPoints(String email) throws UserException {
        return studentMapper.getRemainingUserPoints(email);
    }

}
