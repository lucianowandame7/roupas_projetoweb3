package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDAO {
    private static Connection conn;
        
        public UserDAO() throws ClassNotFoundException, SQLException {
            conn = MyConn.getConnection();
        }
        
        //Método para listar pelo ID (um registro)
        public User listUserByName(String nome) throws SQLException {
            String query = "SELECT * FROM usuarios WHERE "
                    + "nome = ?";
            
            PreparedStatement prep = conn.prepareStatement(query);
            prep.setString(1, nome);
            
            ResultSet result = prep.executeQuery();
            
            User tr = new User();
            
            if(result.next()){
                tr.setId(result.getInt("id"));
                tr.setUserName(result.getString("nome"));
                tr.setUserPass(result.getString("senha"));
            }
            
            return tr;
        }
}
