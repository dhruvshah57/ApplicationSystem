package cs520;

public class Applicant {
   private String Name;
   private String Date;
   private double Gpa;
   private String Status;
   public Applicant(String Name, String Date, double Gpa, String Status){
	   
	   this.Name = Name;
	   this.Date = Date;
	   this.Gpa = Gpa;
	   this.Status = Status;
	   
   }
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getDate() {
	return Date;
}
public void setDate(String date) {
	Date = date;
}
public double getGpa() {
	return Gpa;
}
public void setGpa(double gpa) {
	Gpa = gpa;
}
public String getStatus() {
	return Status;
}
public void setStatus(String status) {
	Status = status;
}
   
}
