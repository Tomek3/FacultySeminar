/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package WebsiteControllers;

import Seminar.Seminar;
import User.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import service.UniversalService;

/**
 *
 * @author Tomek
 */
public class AdminEditDateController extends SimpleFormController {
    
    private UniversalService universalService;

    public UniversalService getUniversalService() {
        return universalService;
    }

    public void setUniversalService(UniversalService universalService) {
        this.universalService = universalService;
    }
    
    
    public AdminEditDateController(){
        setCommandClass(Seminar.class);
        setCommandName("seminar");
        setSuccessView("adminEditDateViewSuccessView");
        setFormView("adminEditDateView");
    }

    @Override
    protected ModelAndView showForm(HttpServletRequest request, HttpServletResponse response, BindException errors) throws Exception {
        ModelAndView mv=new ModelAndView(getFormView(), "seminar", errors.getTarget()); 

        String semId = request.getParameter("semId");
        Seminar seminar = universalService.getSeminar(semId);
        
        mv.addObject("current_seminar", seminar);
        return mv;
    }
    
    @Override
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
        ModelAndView mv = new ModelAndView(getSuccessView());
        String semId = request.getParameter("semId");
        Seminar seminar = (Seminar)command;
        try{
            String availablegrants = request.getParameter("admingrantsavailablegrants");
            System.out.println("Granty: " + availablegrants);
            if(availablegrants!=null)
                seminar.setSemAvailable(Boolean.TRUE);

        }
        catch(NullPointerException ex){
            seminar.setSemAvailable(Boolean.FALSE);
        }
        
        seminar.setSemId(Integer.parseInt(semId));
        universalService.editSeminar(seminar);
        
        return mv;
    }
}
