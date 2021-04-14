package Controller;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Model.User;
public class LoginController extends ActionSupport {
    private User user;

    public String execute(){
        Connection connection;
        try{
            connection = DBController.connect();
            String sql = "SELECT * FROM users WHERE username = ? and password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, this.user.getUsername());
            statement.setString(2, this.user.getPassword());

            ResultSet result = statement.executeQuery();

            if (!result.isBeforeFirst() ) {
                addFieldError("error-field", "Login Unsuccessful. Please try again.");
                return "FAIL";
            }
            else {
                return "SUCCESS";
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return "FAIL";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
