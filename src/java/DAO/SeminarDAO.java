/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Seminar.Seminar;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

/**
 *
 * @author Tomek
 */
public class SeminarDAO implements ISeminarDAO {
    private JdbcTemplate jdbcTemplate;

    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    @Override
    public void addSeminar(Seminar seminar) {
        if(!isDateAlreadyExist(seminar.getSemDate())){
            String query = "INSERT INTO seminarDate (semName, semDescription, semDate, semAvailable) "
                    + "     VALUES (?,?,?,?)";
            jdbcTemplate.update(query, new Object[]{
                seminar.getSemName(),
                seminar.getSemDescription(),
                seminar.getSemDate(),
                seminar.isSemAvailable()
                });
        }
    }
    
    public Boolean isDateAlreadyExist(Date date){
        String query = "SELECT * FROM seminarDate WHERE semDate=?";
        Seminar seminar = null;
        try {
            seminar = (Seminar) jdbcTemplate.queryForObject(query, new SeminarMapper(), new Object[]{date});
        } catch (Exception ex) {
            System.out.println("Could not get Seminar from database for date ["
                    + date + "]");
        }
        return seminar != null;
    }
    
    @Override
    public ArrayList<Seminar> getAllSeminars() {
        String query = "SELECT * FROM seminarDate";
        return (ArrayList<Seminar>) jdbcTemplate.query(query, new SeminarMapper(), new Object[]{});
    }
    
    public Seminar getSeminar(String semId){
        String query = "SELECT * FROM seminarDate WHERE semId=?";
        Seminar seminar = null;
        try {
            seminar = (Seminar) jdbcTemplate.queryForObject(query, new SeminarMapper(), new Object[]{semId});
        } catch (Exception ex) {
            System.out.println("Could not get Seminar from database for semId ["
                    + semId + "]");
        }
        return seminar;
    }
    
     public void editSeminar(Seminar seminar){
          String query = "update seminarDate set semName = ?, semDescription=?, semAvailable=?"
               + " WHERE semId=?";
       
        jdbcTemplate.update(query, new Object[] {
            seminar.getSemName(),
            seminar.getSemDescription(),
            seminar.isSemAvailable(),
            seminar.getSemId()});

    }
     
     public void removeSeminarById(String semId){
        String DELETE = " DELETE FROM seminarDate WHERE semId=?";
        jdbcTemplate.update(DELETE, semId);
     }
                
    
    
    protected static final class SeminarMapper implements ParameterizedRowMapper {

        @Override
        public Seminar mapRow(ResultSet rs, int rowNum)
                throws SQLException {
            Seminar seminar = new Seminar();
            seminar.setSemId(rs.getInt("SEMID"));
            seminar.setSemName(rs.getString("SEMNAME"));
            seminar.setSemDescription(rs.getString("SEMDESCRIPTION"));
            seminar.setSemDate(rs.getDate("SEMDATE"));
            seminar.setSemAvailable(rs.getBoolean("SEMAVAILABLE"));
            
            return seminar;
        }
    }
    
}
