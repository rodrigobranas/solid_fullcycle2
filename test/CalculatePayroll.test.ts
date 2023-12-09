import CalculatePayroll from "../src/CalculatePayroll";
import EmployeeData from "../src/EmployeeData";

test("Deve calcular a folha de pagamento para um funcionário que ganha por hora", async function () {
	const input = {
		employeeId: 1,
		month: 12,
		year: 2023
	}
	const employeeData: EmployeeData = {
		async getEmployee (employeeId: number): Promise<any> {
			return {
				name: "Pedro Silva",
				wage: 50,
				type: "hourly"
			}
		},
		async getEmployeeTimeRecordsByMonthAndYear (employeeId: number, month: number, year: number): Promise<any> {
			return [
				{
					checkin_date: new Date("2023-12-04T08:00:00-03:00"),
					checkout_date: new Date("2023-12-04T12:00:00-03:00")
				}
			]
		}
	};
	const calculatePayroll = new CalculatePayroll(employeeData);
	const output = await calculatePayroll.execute(input);
	expect(output.employeeName).toBe("Pedro Silva");
	expect(output.salary).toBe(200);
});
