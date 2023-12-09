import { EmployeeDataCalculatePayroll } from "./CalculatePayroll";
import { EmployeeDataGetEmployee } from "./GetEmployee";

export default interface EmployeeData extends EmployeeDataCalculatePayroll, EmployeeDataGetEmployee {
	getEmployee (employeeId: number): Promise<any>;
	getEmployeeTimeRecordsByMonthAndYear (employeeId: number, month: number, year: number): Promise<any>;
}
