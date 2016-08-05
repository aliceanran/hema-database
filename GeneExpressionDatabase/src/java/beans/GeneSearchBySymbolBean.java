/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * This class is for searching genes by HGNC symbol
 * @author zhangaa
 */
public class GeneSearchBySymbolBean {
    
    private String error;
    private String[] symbol;
    List<Object> allData = new ArrayList<Object>();
    
    private String id, ensembl, chromosome, start, end, hgnc;
    Object obj = new Object();
    
    public void setSymbol(String[] v) {
        if (v[0].contains(",") && v.length == 1) {
            v = v[0].split(",");
        }
        for (int i = 0; i < v.length; i++) {
            v[i] = v[i].trim();
        }
        
        symbol = v;
    }
    
    public String getSymbol() {
        String str = " " + symbol[0];
        if (symbol.length > 1) {
            str = "s" + str;
            for (int i = 1; i < symbol.length-1; i++) {
                str+= ", " + symbol[i];
            }
            str += ", and " + symbol[symbol.length-1];
        }   
        return str;
    }
 
    public void setObj(Object obj) {
        this.obj = obj;
    }
    
    public String getError() {
        return error;
    }
    
    public List getDb_Data() {
        int i=0;
        try {
            String qry;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://"
                    + "localhost:3306/hema","root","root");
            Statement s = con.createStatement();                
            qry = "select * from gene where hgnc_symbol LIKE '%" + symbol[0] + 
                    "%'";
            for (int x = 1; x < symbol.length; x++) {
                qry += "\nOR hgnc_symbol LIKE '%" + symbol[x] + "%'";
            }
            qry += ";";
            ResultSet r = s.executeQuery(qry);
            while(r.next()) {
                DataFields d = new DataFields(r.getString(1), r.getString(2), 
                        r.getString(3), r.getString(4), r.getString(5), r.getString(6));                    
                allData.add(i,d);
                i++;
            }
                 
        } catch(Exception ex) {
            error="<b>Contact Administrator :</b><br/>" + ex;
            System.out.println("Your query is not working" + ex);
        }
        return allData;
    }
    
    public String getId() {
        this.id=((DataFields)obj).id;
        return this.id;
    }
    
    public String getChromosome() {
        this.chromosome=((DataFields)obj).chromosome;
        return this.chromosome;
    }

    public String getEnsembl() {
        this.ensembl=((DataFields)obj).ensembl;
        return this.ensembl;
    }
    
    public String getStart() {
        this.start = ((DataFields)obj).start;
        return this.start;
    }
    
    public String getEnd() {
        this.end = ((DataFields)obj).end;
        return this.end;
    }
    
    public String getHgnc() {
        this.hgnc = ((DataFields)obj).hgnc;
        return this.hgnc;
    }
 
    public class DataFields {
        public String id, ensembl, chromosome, start, end, hgnc;
 
        public DataFields(String  id, String ensembl, String chromosome, 
                String start, String end, String hgnc) {
            this.id = id;
            this.ensembl = ensembl;
            this.chromosome = chromosome;
            this.start = start;
            this.end = end;
            this.hgnc = hgnc;
        }
    }
    
}