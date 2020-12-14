import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Runs the MainMenu class that allows the user to choose
 * from the different Forms to access the database
 *
 */
public class TestDriver {

	public static void main(String[] args) {
		MainMenu menu = new MainMenu();
		menu.setVisible(true);

	}

}