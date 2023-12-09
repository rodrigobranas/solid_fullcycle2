export default class GetEmployee {

	constructor (readonly employeeData: EmployeeDataGetEmployee) {
	}

	async execute (employeeId: number): Promise<Output> {
		const employee = await this.employeeData.getEmployee(employeeId);
		return {
			employeeName: employee.name,
			wage: parseFloat(employee.wage),
			type: employee.type
		};
	}
}

type Output = {
	employeeName: string,
	wage: number,
	type: string
}

export interface EmployeeDataGetEmployee {
	getEmployee (employeeId: number): Promise<any>;
}
