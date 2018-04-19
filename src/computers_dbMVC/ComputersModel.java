package computers_dbMVC;


import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;
public class ComputersModel {

    public static void main(String[] args) {


        Scanner kb = new Scanner(System.in);
        System.out.println("Enter the name of the class: ");
        String className = kb.nextLine();
        System.out.println("Enter the country of the class: ");
        String countryName = kb.nextLine();
        kb.close();

        // SQL injection: try entering this for the countryName (you can use whatever country you want, of course):
        // Australia', null, null, null); delete from classes where country = 'Australia'; --
        String pc = "pc";
        Connection connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:sqlite:F:\\Dropbox\\Dropbox\\Junior Year\\JDBCProject\\Computer_Project.db ");
            Statement statement = connection.createStatement();
            String query = "insert into Product values('A," +1002 + "," + "PC," + 2114 + ","+ 3;
            System.out.println (query);

            int rowsAffected = statement.executeUpdate("select * FROM Product");
            System.out.println("Number of rows affected: " + rowsAffected);
        }
        catch(SQLException e) {
            System.err.println(e.getMessage());
        }
        finally {
            try {
                if(connection != null)
                    connection.close();
            }
            catch(SQLException e) {
                System.err.println(e);
            }
        }

    }
}

