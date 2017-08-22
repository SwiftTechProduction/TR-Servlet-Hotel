/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Lukas
 */
public class Koneksi 
{

    private static Connection con = null;

    public Connection getKoneksi() 
    {
        try 
        {
            MysqlDataSource msd = new MysqlDataSource();
            msd.setServerName("localhost");
            msd.setPort(3306);
            msd.setUser("root");
            msd.setPassword("");
            msd.setDatabaseName("db_hotel");
            con = msd.getConnection();

        } 
        catch (Exception e) 
        {
            System.out.println("Ada yang salah");
            e.printStackTrace();
        }
        return con;
    }
}
