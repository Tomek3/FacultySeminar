/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Seminar.Seminar;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Tomek
 */
public interface ISeminarDAO {
    void addSeminar(Seminar seminar);
    Boolean isDateAlreadyExist(Date date);
    ArrayList<Seminar> getAllSeminars();
    Seminar getSeminar(String semId);
    void editSeminar(Seminar seminar);
    void removeSeminarById(String semId);
}
