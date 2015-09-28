/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Seminar;

import java.util.Date;

/**
 *
 * @author Tomek
 */
public class Seminar {

    public Integer getSemId() {
        return semId;
    }

    public void setSemId(Integer semId) {
        this.semId = semId;
    }

    public String getSemName() {
        return semName;
    }

    public void setSemName(String semName) {
        this.semName = semName;
    }

    public String getSemDescription() {
        return semDescription;
    }

    public void setSemDescription(String semDescription) {
        this.semDescription = semDescription;
    }

    public Date getSemDate() {
        return semDate;
    }

    public void setSemDate(Date semDate) {
        this.semDate = semDate;
    }

    public Boolean isSemAvailable() {
        return semAvailable;
    }

    public void setSemAvailable(Boolean semAvailable) {
        this.semAvailable = semAvailable;
    }

    Integer semId;
    String semName;
    String semDescription;
    Date semDate;
    Boolean semAvailable;
}
