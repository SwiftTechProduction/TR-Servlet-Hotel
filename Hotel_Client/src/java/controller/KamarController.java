/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.List;
import model.Kamar;
import tools.Koneksi;

/**
 *
 * @author Lukas
 */
public class KamarController 
{
    private Connection kon = null;

    public KamarController() 
    {
        kon = new Koneksi().getKoneksi();
    }
    
    public boolean insert(Kamar kamar) 
    {
        boolean hasil = false;
        try 
        {
            String query = "INSERT INTO tb_kamar VALUES(?,?,?,?,?,?) ";
            PreparedStatement ps = kon.prepareStatement(query);
            //stmt.setString(1, m.getNIM());
            ps.setString(1, kamar.getId());
            ps.setString(2, kamar.getKode_kamar());
            ps.setString(3, kamar.getNama_kamar());
            ps.setString(4, kamar.getLantai_kamar());
            ps.setString(5, kamar.getTipe_kamar());
            ps.setString(6, kamar.getHarga());
            ps.executeUpdate();
            hasil = true;

        } 
        catch (Exception e) 
        {
            System.out.println("Ada yang salah saat insert");
            e.printStackTrace();
        }
        return hasil;
    }
    
    public boolean update(Kamar kamar) 
    {
        boolean hasil = false;
        try 
        {
            String query = "UPDATE tb_kamar SET kode_kamar = ?, nama_kamar = ?, lantai_kamar = ?, tipe_kamar = ?, harga = ? WHERE id = ? ";
            PreparedStatement ps = kon.prepareStatement(query);
            ps.setString(1, kamar.getKode_kamar());
            ps.setString(2, kamar.getNama_kamar());
            ps.setString(3, kamar.getLantai_kamar());
            ps.setString(4, kamar.getTipe_kamar());
            ps.setString(5, kamar.getHarga());
            ps.setString(6, kamar.getId());
            
            ps.executeUpdate();
            hasil = true;

        }
        catch (Exception e) 
        {
            System.out.println("Ada yang salah saat UPDATE");
            e.printStackTrace();
        }
        return hasil;
    }
    
    public boolean delete(String id) 
    {
        boolean hasil = false;
        try 
        {
            String query = "DELETE FROM tb_kamar WHERE id = ? ";
            PreparedStatement ps = kon.prepareStatement(query);
            ps.setString(1, id);

            ps.executeUpdate();
            hasil = true;

        } 
        catch (Exception e) 
        {
            System.out.println("Ada yang salah saat delete");
            e.printStackTrace();
        }
        return hasil;
    }
    
    public List<Kamar> getAllKamars() 
    {
        List<Kamar> daftar = new ArrayList<Kamar>();
        
        try 
        {
            String query = "SELECT * FROM tb_kamar";
            PreparedStatement ps = kon.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) 
            {                    
                Kamar kamar = new Kamar();
                kamar.setId(rs.getString("id"));
                kamar.setKode_kamar(rs.getString("kode_kamar"));
                kamar.setNama_kamar(rs.getString("nama_kamar"));
                kamar.setLantai_kamar(rs.getString("lantai_kamar"));
                kamar.setTipe_kamar(rs.getString("tipe_kamar"));
                kamar.setHarga(rs.getString("harga"));
                
                daftar.add(kamar);
            }
        } 
        catch (Exception e) 
        {

        }
        return daftar;
    }
    
    public Kamar getKamarById(String id) 
    {
        Kamar kamar = new Kamar();
        try 
        {
            String query = "SELECT * FROM tb_kamar WHERE id = " + id;
            PreparedStatement ps = kon.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
                
                while (rs.next()) 
                {   
                    kamar.setId(rs.getString("id"));
                    kamar.setKode_kamar(rs.getString("kode_kamar"));
                    kamar.setNama_kamar(rs.getString("nama_kamar"));
                    kamar.setLantai_kamar(rs.getString("lantai_kamar"));
                    kamar.setTipe_kamar(rs.getString("tipe_kamar"));
                    kamar.setHarga(rs.getString("harga"));               
                }
        } 
        catch (Exception e) 
        {
            System.out.println("Salah ambil kamar by id");
            e.printStackTrace();
        }

        return kamar;
    }
    
    public List<Kamar> get_update(String id) 
    {
        List<Kamar> daftar = new ArrayList<Kamar>();
        try 
        {
            String query = "SELECT id, kode_kamar, nama_kamar, lantai_kamar, tipe_kamar, harga FROM tb_kamar WHERE id=?";
            PreparedStatement ps = kon.prepareStatement(query);
            
            
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) 
            {
                Kamar kamar = new Kamar();
                kamar.setId(rs.getString("id"));
                kamar.setKode_kamar(rs.getString("kode_kamar"));
                kamar.setNama_kamar(rs.getString("nama_kamar"));
                kamar.setLantai_kamar(rs.getString("lantai_kamar"));
                kamar.setTipe_kamar(rs.getString("tipe_kamar"));
                kamar.setHarga(rs.getString("harga"));
                
                daftar.add(kamar);

            }
        } 
        catch (Exception e) 
        {
            System.out.println("Salah ambil mahasiswa by nim");
            e.printStackTrace();
        }
        return daftar;
    }
}
