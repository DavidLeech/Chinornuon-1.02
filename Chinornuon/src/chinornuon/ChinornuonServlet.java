package chinornuon;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ChinornuonServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Nuon cal = new Nuon();
			cal.setAverageDailySunHours(Double.parseDouble(request.getParameter("AverageDailySunHours")));
			cal.setCostOfElectricity(Double.parseDouble(request.getParameter("CostOfElectricity")));
			cal.setCostOfsystem(Double.parseDouble(request.getParameter("CostOfsystem")));
			cal.setFeedInTariff(Double.parseDouble(request.getParameter("FeedInTariff")));
			cal.setSelfConsumption(Double.parseDouble(request.getParameter("SelfConsumption")));
			cal.setSystemSize(Double.parseDouble(request.getParameter("SystemSize")));
		Double result = 0.0 ;
		result = cal.getAnnualROI();
		request.setAttribute("result", result);
        request.getRequestDispatcher("/chinornuon.jsp")
               .forward(request, response); 
       
        
	}
}
