/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Lukas
 */
public class Kamar 
{
    private String id;
    private String kode_kamar;
    private String nama_kamar;
    private String lantai_kamar;
    private String tipe_kamar;
    private String harga;

    public String getId() 
    {
        return id;
    }

    public void setId(String id) 
    {
        this.id = id;
    }
    
    public String getKode_kamar() 
    {
        return kode_kamar;
    }

    public void setKode_kamar(String kode_kamar) 
    {
        this.kode_kamar = kode_kamar;
    }

    public String getNama_kamar() 
    {
        return nama_kamar;
    }

    public void setNama_kamar(String nama_kamar) 
    {
        this.nama_kamar = nama_kamar;
    }

    public String getLantai_kamar() 
    {
        return lantai_kamar;
    }

    public void setLantai_kamar(String lantai_kamar) 
    {
        this.lantai_kamar = lantai_kamar;
    }

    public String getTipe_kamar()
    {
        return tipe_kamar;
    }

    public void setTipe_kamar(String tipe_kamar)
    {
        this.tipe_kamar = tipe_kamar;
    }

    public String getHarga() 
    {
        return harga;
    }

    public void setHarga(String harga) 
    {
        this.harga = harga;
    }
    
}
