<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<html>
<head>
<title>ROI Calculator</title>

</head>
<script src = "validation.js" language="JavaScript" type="text/javascript"></script>
<body>


<form action= "chinornuon.jsp" method="get" onSubmit="return formValidator();">
<% 	
	double result;
	if(request.getAttribute("result")==null) result=0;
	else result = (Double)request.getAttribute("result");
%>
<div class="contentArea" align="center">
	<h2>ROI Calculator</h2>

	<table border = "1">
	
	<tr>
		<td>System Size (kW)</td>		
		<td><input type=text name=SystemSize size=20></td>
	</tr>
	
	<tr>
		<td>Feed-in Tariff</td>			
		<td><input type=text name=FeedInTariff size=20></td>
	</tr>
	
	<tr>
		<td>Cost of Electricity</td>	
		<td><input type=text name=CostOfElectricity size=20></td>
	</tr>
	
	<tr>
		<td>Self-consumption</td>		
		<td><input type=text name=SelfConsumption size=20></td>
	</tr>
	
	<tr>
		<td>Average Daily Sun Hours</td>
		<td><input type=text name=AverageDailySunHours size=20></td>
	</tr>
	
	<tr>
		<td>Cost of system</td>		
		<td><input type=text name=CostOfsystem size=20></td>
	</tr>
	
	<tr>
		<td>Result</td>		
		<td><input type=text name=result size=20></td>
	</tr>
	
	</table>
	
	<div class="buttonArea">
		<input type="submit" value="Calculate"/>
	</div>
	</div>
		<br></br>
	</form>


<form action= "/chinornuon" method="get" >
<% 	
	double result1;
	if(request.getAttribute("result1")==null) result1=0;
	else result1 = (Double)request.getAttribute("result1");
%>

<div class="contentArea" align="center">
  	<h2>Simple Solar Calculator</h2>
    
		<table border="1">

		<caption>Please enter your installation details (new JSP)</caption>
		<tr>
        	<td>System Size (KW)</td>
        	<td><input type="text" name="systemSize"></td>        
        </tr>
      
        <tr>
        	<td>Percentage on North Roof</td>
        	<td><input type="text" name="percentageOnNorthRoof"></td>        
        </tr>
      
        <tr>
        	<td>Percentage on West Roof</td>
        	<td><input type="text" name="percentageOnWestRoof"></td>        
        </tr>
      
      	<tr>
        	<td>Efficiency Loss (North Roof)</td>
        	<td><input type="text" name="efficiencyLossNorthRoof"></td>        
      	</tr>
      
      	<tr>
       		<td>Efficiency Loss (West Roof)</td>
        	<td><input type="text" name="efficiencyLossWestRoof"></td>        
      	</tr>
      
      	<tr>
        	<td>Panel Efficiency</td>
        	<td><input type="text" name="panelEfficiency"></td>        
      	</tr>
      
      	<tr>
        	<td>Inverter Efficiency</td>
        	<td><input type="text" name="inverterEfficiency"></td>        
      	</tr>
      
      	<tr>
        	<td>Average Daily Hours of Sunlight</td>
        	<td><input type="text" name="averageDailyHoursOfSunlight"></td>        
      	</tr> 
      	
    	</table>
    	
    	
    	<div class="buttonArea">
    		<input type="reset" value="Clear Table"><input type="submit" value="Get Results">
    	</div>	
    	</div>

	</form>
</body>
</html>