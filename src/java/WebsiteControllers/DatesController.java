/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package WebsiteControllers;

import Seminar.Seminar;
import Seminar.SeminarDate;
import User.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
public class DatesController extends SimpleFormController {
    
    private UniversalService universalService;

    public UniversalService getUniversalService() {
        return universalService;
    }

    public void setUniversalService(UniversalService universalService) {
        this.universalService = universalService;
    }

    
    public DatesController() {
        setCommandClass(SeminarDate.class);
        setCommandName("seminar_date");
        setSuccessView("adminAddDatesSuccessView");
        setFormView("adminAddDatesView");
    }

    
    @Override
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
        ModelAndView mv;
        mv = new ModelAndView(getSuccessView());
        SeminarDate seminarDate = (SeminarDate)command;
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date dateFrom = df.parse(seminarDate.getDateFrom());
        Date dateTo = df.parse(seminarDate.getDateTo());
        
        if (dateFrom.after(dateTo)) {
            throw new IllegalArgumentException("End date should be grater or equals to start date");
        }

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateFrom);


        while(!calendar.getTime().after(dateTo)) {
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
            if (dayOfWeek==6) {
                //Date r = calendar.getTime();
                Seminar seminar = new Seminar();
                seminar.setSemDate(calendar.getTime());
                universalService.addSeminar(seminar);
                
            }
            calendar.add(Calendar.DAY_OF_MONTH, 1);
        }
        
        /*
        if(universalService.loginAvailable(user.getPesel())){
            mv = new ModelAndView(getSuccessView());
            mv.addObject("registrationMessage", "Witaj" + user.getName());
            universalService.addUser(user);
        } else{
            String info = "Wprowadz wszystkie dane";
            mv = new ModelAndView("userRegistrationFailureView");
            
            if(!(universalService.loginAvailable(user.getPesel())))
                info = "Użytkownik istnieje w bazie";
            
            
            mv.addObject("errorInfo", info);
            
        }*/
        return mv;
    }
}
