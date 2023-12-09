// Template Method
// T
export default abstract class SalaryCalculator {
	calculate (employee: any, timeRecords: any): number {
		let hours = 0;
		for (const record of timeRecords) {
			hours += (record.checkout_date.getTime() - record.checkin_date.getTime())/(1000*60*60);
		}
		return this.calculateSalary(employee, hours);
	}

	abstract calculateSalary (employee: any, hours: number): number;
}

// S
export class HourlyCalculator extends SalaryCalculator {
	calculateSalary(employee: any, hours: number): number {
		return hours * parseFloat(employee.wage);
	}
}

// S
export class SalariedCalculator extends SalaryCalculator {
	calculateSalary(employee: any, hours: number): number {
		const hourlyRate = parseFloat(employee.salary)/160;
		const diff = (hours - 160) * hourlyRate;
		return parseFloat(employee.salary) + diff;
	}
}

export class SalaryCalculatorFactory {
	static create (type: string) {
		if (type === "hourly") return new HourlyCalculator();
		if (type === "salaried") return new SalariedCalculator();
		throw new Error();
	}
}
