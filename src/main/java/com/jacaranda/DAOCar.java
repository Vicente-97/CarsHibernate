package com.jacaranda;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DAOCar {

    public DAOCar() {
        
    }
//    
//    //Obtiene un coche en concreto
//    public Car getCar(String idCar) throws SQLException, ClassNotFoundException {
//        Connection connection = Conn.getConnection();
//        Statement st = connection.createStatement();
//        
//        ResultSet resultSet = st.executeQuery("select * from CAR_DATA where id= '"+idCar+"';");
//        Car car = null;
//        while (resultSet.next()) {
//            //Crea el objeto car con la información de la consulta por id. 
//            //Obteniendo los datos por columnas
//            //car = new Car(resultSet.getInt(1), resultSet.getString(2), resultSet.get(3), resultSet.getString(4) , resultSet.getDouble(5), LocalDate.parse(resultSet.getString(6)), resultSet.getString(7) );
//        }
//            
//        return car;
//    }
//    
//    //añade un coche
//    public void addCar(int model_year, String model_auto, String car_make, boolean availability, double price, LocalDate entry_date, String id) throws SQLException, IOException, ClassNotFoundException {
//        Connection connection = Conn.getConnection();
//        Statement st =connection.createStatement();
//        ResultSet resulSet =st.executeQuery("select * from CAR_DATA where id= '"+id+"';");
//        
//        PreparedStatement ps = connection.prepareStatement("INSERT INTO CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) "
//                + " VALUES (?, ?, ?, ?, ?, ?, ?)");
//        
//       
//        if(!resulSet.next()) {
////          esta vacia??? Crealo
//            ps.setInt(1, model_year);
//            ps.setString(2, model_auto);
//            ps.setString(3, car_make);
//            ps.setBoolean(4, availability);
//            ps.setDouble(5, price);
//            ps.setString(6, entry_date.toString());
//            ps.setString(7, id);
//            ps.executeUpdate();
//            
//        }
//   
//                
//    }
//    //Actualiza un vehículo
//    public boolean updateCar(Car car) throws SQLException, ClassNotFoundException {
//
//        Connection connection = Conn.getConnection();
//        Statement st =connection.createStatement();
//        boolean result = false;
//
//        if(getCar(car.getId()) != null) {
//
//        st.executeUpdate("UPDATE CAR_DATA SET model_year = '"+ car.getModelYear() + "', model_auto = '" + car.getModelAuto() + "', car_make = '" + car.getCarMaker()
//        + "', availability = '" + car.isAvailability() + "', price = '"+ car.getPrice() + "', entry_date='" + car.getDateEntry() + "' where id = '"+ car.getId() + "';");
//        result = true;
//        };
//        return result;
//        }
//    
//    //Comprueba si el usuario es valido en nuestra base de datos.
//    public boolean userIsvalid(String name, String pass) throws SQLException, ClassNotFoundException {
//        Connection connection = Conn.getConnection();
//        boolean bandera=false;
//
//        Statement st = connection.createStatement();
//        ResultSet resultSet = st.executeQuery("select * from USERS where name='"+name+"'and pass='"+pass+"';");
//        if(resultSet.next()) {
//           
//           bandera=true;
//            
//        }
//        return bandera;
//        }
//    
//    
//    public void deleteCar(String id) throws SQLException, ClassNotFoundException {
//        Connection connection = Conn.getConnection();
//        Statement statement=connection.createStatement(); 
//        
//        
//        statement.executeUpdate("DELETE FROM CAR_DATA WHERE id='"+id+"';");
//    }
//    
//    // Obtiene un usuario en concreto partiendo del parametro name.
//    public User getUser (String name) throws Exception {
//    User resultado=null;
//    Connection connection = Conn.getConnection();
//    Statement st = connection.createStatement();
//    ResultSet resultSet = st.executeQuery("select * from USERS where name='"+name+"';");
//
//    if(resultSet.next()) {
//    resultado= new User(resultSet.getString("name"), resultSet.getString("pass"));
//    }else {
//    throw new Exception("Error no se encontro el usuario");
//    }
//
//    return resultado;
//
//    }
//    // Optiene una lista con los usuarios
//    public List<User> getUssers () throws Exception {
//    List<User> resultado= new ArrayList<User>();
//    Connection connection = Conn.getConnection();
//    Statement st = connection.createStatement();
//    ResultSet resultSet = st.executeQuery("select * from USERS");
//
//    while(resultSet.next()) {
//    User usuario= new User(resultSet.getString("name"), resultSet.getString("pass"));
//    resultado.add(usuario);
//    }
//
//    return  resultado;
//    }
    
    /*
    // Optiene una lista con los coches
    public List<Car> getCars () throws Exception {
    List<Car> resultado= new ArrayList<Car>();
    Connection connection = Conn.getConnection();
    Statement st = connection.createStatement();
    ResultSet resultSet = st.executeQuery("select * from CAR_DATA");

    while(resultSet.next()) {
   Car car = new Car(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4) , resultSet.getDouble(5), LocalDate.parse(resultSet.getString(6)), resultSet.getString(7) );
   //	Hay que arreglarlo con el Hibernate, ya que recuperamos en el resulset un String y deberiamos recuperar una Marca o Brand
    resultado.add(car);
    
    }
    return  resultado;
    }*/
    
    
    
}


