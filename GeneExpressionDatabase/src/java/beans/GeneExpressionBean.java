package beans;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.imageio.ImageIO;

/**
 * This class is for outputting gene expression given an HGNC symbol
 * @author zhangaa
 */
public class GeneExpressionBean {
    private String error;
    private String symbol;
    private String id;
    List<Object> allData = new ArrayList<Object>();
    Object obj = new Object();
    BufferedImage fig;
    BufferedImage newFig;
    
    List<String> probes = new ArrayList<String>();
    List<String> experiments = new ArrayList<String>();
    public String[] celltypes = {"HSC", "MPP", "MLP", "CMP", "ETP", "BNK", "GMP", "MEP", "ProB"};
    double[] measurements = new double[celltypes.length];
    int[] xCoords = {50, 255, 460, 460, 665, 665, 665, 665, 870};
    int[] yCoords = {335, 335, 145, 525, 50, 240, 430, 620, 240};
    
    public void setSymbol(String s) {
        symbol = s.toUpperCase();
    }
    
    public String getSymbol() {
        return symbol;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }
    
    /**
     * @return the id
     */
    public String getId() {
        return id;
    }
    
    public BufferedImage getFig() {
        return fig;
    }
    
    public BufferedImage getNewFig() {
        return newFig;
    }
    
    public void setObj(Object o) {
        obj = o;
    }
    
    public String getError() {
        return error;
    }
    
    /**
     * Gets data from the database
     * @return a List that doesn't actually get used. 
     */
    public List getDb_Data() {
        try {
            //finding appropriate data
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://"
                    + "localhost:3306/hema","root","root");
            Statement s = con.createStatement();   
            ResultSet r = s.executeQuery("select id from probes where gene_id = " 
                    + id + ";");
            rsToList(r, probes);
            for (int i = 0; i < celltypes.length; i++) {
                r = s.executeQuery("select id from sample where cell_type_id = '" 
                        + celltypes[i] + "';");
                rsToList(r, experiments);
                double sum = 0;
                int count = 0;
                for (String p : probes) {
                    r = s.executeQuery("select * from result where prob_id = '" 
                            + p + "';");
                    while (r.next()) {
                        if (experiments.contains(r.getString(1))) {
                            sum += r.getDouble(3);
                            count++;
                        }
                    }
                }
                double avg = 0;
                if (count!= 0) avg = sum/count;
                measurements[i] = avg;
                //oldDrawing();
                draw();
            }
            
            
                 
        } catch(Exception ex) {
            error = "<b>Contact Administrator:</b><br/>" + ex;
            System.out.println("Your query is not working: " + ex);
        }
        return allData;
    }
    
    private void rsToList(ResultSet r, List l) throws SQLException {
        l.clear();
        while(r.next()) {
            l.add(r.getString(1));
        }
    }
    
    public double getCell(int i) {
        return measurements[i];
    }
    
    /**
     * I made a program to generate figures but apparently they are supposed to 
     * look different :(
     */
    public void oldDrawing() {
        //generating the figure
        fig = new BufferedImage(1000, 1000, BufferedImage.TYPE_INT_RGB);
        Graphics2D pen = fig.createGraphics();
        pen.setColor(Color.white);
        pen.fillRect(0, 0, 1000, 1000);
        pen.setColor(new Color(3, 20, 30));
        pen.setFont(new Font("Century Gothic", 0, 20));

        //draw horizontal axis labels
        for (int i = 1; i < 10; i++) {
            pen.drawString(celltypes[i-1], 100*i - 20, 940);
            pen.drawLine(100*i, 900, 100*i, 875);
        }

        //draw axes
        pen.drawLine(50, 50, 50, 900); //vertical axis
        pen.drawLine(50, 900, 950, 900); //horizontal axis

        //scale measurements
        double max = measurements[0];
        for (double d : measurements) {
            if (d > max) max = d;
        }
        int top = (int)Math.ceil(max / 5) * 5;
        int[] measurementScaled = new int[measurements.length];
        for (int i = 0; i < measurements.length; i++) {
            measurementScaled[i] = (int)(measurements[i] * 800 / top + 0.5);
        }
        
        //draw
        pen.setColor(new Color(210, 36, 144));
        pen.setStroke(new BasicStroke(10, BasicStroke.CAP_ROUND, BasicStroke.JOIN_ROUND));
        for (int i = 0; i < celltypes.length; i++) {
            pen.drawLine(100 * (i+1), 900 - measurementScaled[i], 100 * (i+1), 900 - measurementScaled[i]);
        }
    }
    
    public void draw() {
        //generating the figure
        newFig = new BufferedImage(1000, 750, BufferedImage.TYPE_INT_RGB);
        Graphics2D pen = newFig.createGraphics();
        pen.setColor(Color.white);
        pen.fillRect(0, 0, 1000, 750);
        pen.setFont(new Font("Century Gothic", 0, 20));
        
        //draw circles with colors based on z-scores
        double[] zScores = zScoreCalc(measurements);
        for (int i = 0; i < celltypes.length; i++) {
            int r = (int)(119 + 39 * zScores[i]);
            int g = (int)(100 + 11 * zScores[i]);
            int b = (int)(159 + 32 * zScores[i]);
            pen.setColor(new Color(r, g, b));
            pen.fillOval(xCoords[i], yCoords[i], 80, 80);
            pen.setColor(Color.BLACK);
            pen.drawString(celltypes[i], xCoords[i] + 20, yCoords[i] + 100);
        }
        pen.setStroke(new BasicStroke(2, BasicStroke.CAP_ROUND, BasicStroke.JOIN_ROUND));
        pen.setColor(new Color(64, 52, 71));
        
        //draw arrows
        pen.drawLine(135, 375, 250, 375); //HSC to MPP
            pen.drawLine(235, 365, 250, 375);
            pen.drawLine(235, 385, 250, 375);
        pen.drawLine(325, 345, 460, 210); //MPP to MLP 
            pen.drawLine(438, 215, 460, 210);
            pen.drawLine(456, 231, 460, 210);
        pen.drawLine(325, 405, 460, 540); //MPP to CMP
            pen.drawLine(438, 535, 460, 540);
            pen.drawLine(456, 519, 460, 540);          
        pen.drawLine(535, 160, 665, 110); //MLP to ETP
            pen.drawLine(653, 128, 665, 110);
            pen.drawLine(643, 105, 665, 110);
        pen.drawLine(535, 210, 665, 260); //MLP to BNK
            pen.drawLine(653, 242, 665, 260);
            pen.drawLine(643, 265, 665, 260); 
        pen.drawLine(535, 540, 665, 490); //CMP to GMP
            pen.drawLine(653, 508, 665, 490);
            pen.drawLine(643, 485, 665, 490); 
        pen.drawLine(535, 590, 665, 640); //CMP to MEP
            pen.drawLine(653, 622, 665, 640);
            pen.drawLine(643, 645, 665, 640);
        pen.drawLine(750, 280, 865, 280); //BNK to ProB
            pen.drawLine(850, 270, 865, 280);
            pen.drawLine(850, 290, 865, 280);
    }
    
    private double[] zScoreCalc(double[] arr) {
        //calculate average
        double avg = 0;
        for (double d : arr) avg += d;
        avg /= arr.length;
        
        //calculate standard deviation
        double dev = 0;
        for (double d : arr) dev += Math.pow(d - avg, 2);
        dev = Math.sqrt(dev/arr.length);
        
        //calculate z scores
        double[] z = new double[arr.length];
        for (int i = 0; i < arr.length; i++) z[i] = (arr[i] - avg)/dev;
        return z;
    }

}
