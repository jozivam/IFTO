import java.sql.DriverManager;
import java.sql.SQLException;



public class Conexao {
    private static final String url = "jdbc:mysql://localhost:3306/banco";
    private static final String user = "root";
    private static final String password = "root";

    private static Connection conn;

    public static Connection getConexao(){

    }
}
