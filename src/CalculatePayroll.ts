import { SalaryCalculatorFactory } from "./SalaryCalculator";

export default class CalculatePayroll {

	constructor (readonly employeeData: EmployeeDataCalculatePayroll) {
	}

	async execute (input: Input): Promise<Output> {
		const employee = await this.employeeData.getEmployee(input.employeeId);
		const timeRecords = await this.employeeData.getEmployeeTimeRecordsByMonthAndYear(input.employeeId, input.month, input.year);
		let salary = 0;
		if (employee.type !== "volunteer") {
			salary = SalaryCalculatorFactory.create(employee.type).calculate(employee, timeRecords);
		}
		return {
			employeeName: employee.name,
			salary
		};
	}
}

type Input = {
	employeeId: number,
	month: number,
	year: number
}

type Output = {
	employeeName: string,
	salary: number
}

export interface EmployeeDataCalculatePayroll {
	getEmployee (employeeId: number): Promise<any>;
	getEmployeeTimeRecordsByMonthAndYear (employeeId: number, month: number, year: number): Promise<any>;
}