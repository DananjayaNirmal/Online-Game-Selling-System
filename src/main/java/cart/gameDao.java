package cart;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.gamezone.model.CustomerModel;
import com.gamezone.util.DBConnection;


public class gameDao {

	
	private static final DBConnection DBconnection = null;


	//insert game details into the DB
    public void insertCart(gameModel game) {
        try {
            String query = "insert into cart(name,description,price) values('"+game.getGameName()+"','"+game.getGameDescription()+"','"+game.getPrice()+"')";
            System.out.println("Executing query: " + query);
            Statement statement = DBConnection.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            System.out.println("DB Error!");
            e.printStackTrace();
        }
    }


    
    
    
   // taking the list of available games from the DB 
    public ArrayList<gameModel> getAllGames() {
        ArrayList<gameModel> listgame = new ArrayList<>();

        try {
        	
        	
            String query = "SELECT id, name, description, price FROM cart";
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);

            System.out.println("🧠 Executing query: " + query); 
            
            while (rs.next()) {
                gameModel game = new gameModel();
                game.setGameId(rs.getInt("id"));                      
                game.setGameName(rs.getString("name"));              
                game.setGameDescription(rs.getString("description")); 
                game.setPrice(rs.getString("price"));                

                listgame.add(game);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return listgame;
    }

    
    
    //add apeciific game into catr using game iD 
    public gameModel addItemtoCart(gameModel game) {

        try {
            String query = "SELECT * FROM cart WHERE id = '" +game.getGameId()+"'";
            Statement statement = DBConnection.getConnection().createStatement();
            
            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
            	
            	
            	game.setGameId(rs.getInt("id"));                      
                game.setGameName(rs.getString("name"));              
                game.setGameDescription(rs.getString("description")); 
                game.setPrice(rs.getString("price"));  
            	
				
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return game;
    }
 
    
    public gameModel getGameById(int gameId) {
        gameModel game = null;
        try {
            String query = "SELECT * FROM gamecart WHERE id = ?";
            PreparedStatement ps = DBconnection.getConnection().prepareStatement(query);
            ps.setInt(1, gameId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                game = new gameModel();
                game.setGameId(rs.getInt("id"));
                game.setGameName(rs.getString("name"));
                game.setGameDescription(rs.getString("description"));
                game.setPrice(rs.getString("price"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return game;
    }

    
    public gameModel inserttoavailableGames(gameModel game) {
        try {
            String query = "INSERT INTO gamecart (id, name, description, price) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = DBconnection.getConnection().prepareStatement(query);
            ps.setInt(1, game.getGameId());
            ps.setString(2, game.getGameName());
            ps.setString(3, game.getGameDescription());
            ps.setString(4, game.getPrice());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return game;
    }

    
/* 
 // display game details inside the cart
    public ArrayList<gameModel> getCartItems() {
        ArrayList<gameModel> cartList = new ArrayList<>();

        try {
            String query = "SELECT * FROM cart";
            Statement statement = DBconnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                gameModel game = new gameModel();
                game.setGameId(rs.getInt("id"));
                game.setGameName(rs.getString("name"));
                game.setGameDescription(rs.getString("description"));
                game.setPrice(rs.getString("price"));
                cartList.add(game);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return cartList;
    }

*/
    
 //insart  to available game DB
    
    
    public List<gameModel> getGamesInCartByUser(int userId) {
        List<gameModel> games = new ArrayList<>();
       
        DBConnection DBUtil = null;
		try (Connection con = DBUtil.getConnection()) {
            String sql = "SELECT * FROM gamecart WHERE userId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	gameModel game = new gameModel();
                game.setGameId(rs.getInt("gameId"));
                game.setGameName(rs.getString("gameName"));
                game.setGameDescription(rs.getString("gameDescription"));
                game.setPrice(rs.getString("price"));
                games.add(game);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return games;
    }

    

}











/*
//validate password
public gameDao getGame(gameDao game) {
	
	try {
		
		String query = "select * from customerdetails where email = '"+cus.getEmail()+"' and currentPassword = '"+cus.getCurrentPassword()+"'";
	
		Statement statement = DBconnection.getConnection().createStatement();
		ResultSet rs = statement.executeQuery(query);
		if(rs.next())
		{
			return game;
		}
		
	} catch (Exception e) {
		e.fillInStackTrace();
	}
	
	return null;   //for true value
}

*/


