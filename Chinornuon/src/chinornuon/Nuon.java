package chinornuon;

public class Nuon {
	private double SystemSize;
	private double FeedInTariff;
	private double CostOfElectricity;
	private double SelfConsumption;
	private double AverageDailySunHours;
	private double CostOfsystem;

	public Nuon(){
		this.SystemSize = 0.0;
		this.FeedInTariff = 0.0;
		this.CostOfElectricity = 0.0;
		this.SelfConsumption = 0.0;
		this.AverageDailySunHours = 0.0;
		this.CostOfsystem = 0.0;
	}
	public void setSystemSize(double input){
		this.SystemSize = input;
	}
	public void setFeedInTariff(double input){
		this.FeedInTariff = input;
	}
	public void setCostOfElectricity(double input){
		this.CostOfElectricity = input;
	}
	public void setSelfConsumption(double input){
		this.SelfConsumption = input;
	}
	public void setAverageDailySunHours(double input){
		this.AverageDailySunHours = input;
	}
	public void setCostOfsystem(double input){
		this.CostOfsystem = input;
	}
	//Calculate average daily system Production (kWh)
	public double getAverageDailySystemProduction(){

		double averageDailySystemProduction = this.SystemSize*this.AverageDailySunHours;
		return averageDailySystemProduction;


}
//Calculate daily self-consumption (kWh)
	public double getDailySelfeConsumption(){
		double dailySelfeConsumption = getAverageDailySystemProduction()*this.SelfConsumption;
		return dailySelfeConsumption;
	}
	//Calculate daily solar export (kWh)
	public double getDailySolarExport(){
		double dailySolarExport = getAverageDailySystemProduction() - getDailySelfeConsumption();
		return dailySolarExport;
	}
	//Calculate total daily savings ($)
	public double getTotalDailySavings(){
		double TotalDailySavings = getDailySolarExport()*this.FeedInTariff + getDailySelfeConsumption()*this.CostOfElectricity;
		return TotalDailySavings;
	}
	//Calculate annual savings ($)
	public double getAnnualSavings(){
		double annualSavings = getTotalDailySavings()*365;
		return annualSavings;
	}
	//Calculate number of years to pay off
	public double getNumberOfYearsPayOff(){
		double numberOfYearsPayOff = this.CostOfsystem/getAnnualSavings();
		return numberOfYearsPayOff;
	}
	//Calculate annual ROI (%)
	public double getAnnualROI(){
		double annualROI = (this.CostOfsystem/getNumberOfYearsPayOff())/this.CostOfsystem;
		return annualROI;
	}

}

