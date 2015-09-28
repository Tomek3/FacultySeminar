/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package WebsiteControllers;

import Seminar.Seminar;
import User.User;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import service.UniversalService;

/**
 *
 * @author Tomek
 */
public class AdminShowDatesController  extends AbstractController{
    private UniversalService universalService;

    public UniversalService getUniversalService() {
        return universalService;
    }

    public void setUniversalService(UniversalService universalService) {
        this.universalService = universalService;
    }
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView("adminShowDatesView");
        List<Seminar> listOfSeminars = universalService.getAllSeminars();
        for(Seminar seminar : listOfSeminars){
           System.out.println(seminar.getSemName());
        }
    
        mv.addObject("listOfSeminars",listOfSeminars);
        
        return mv; 
    }
}
