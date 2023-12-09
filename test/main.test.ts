import axios from "axios";

test("Deve calcular a folha de pagamento para um funcionário que ganha por hora", async function () {
	const input = {
		employeeId: 1,
		month: 12,
		year: 2023
	}
	const response = await axios.post("http://localhost:3000/calculate_payroll", input);
	const output = response.data;
	expect(output.employeeName).toBe("Pedro Silva");
	expect(output.salary).toBe(2000);
});

test("Deve calcular a folha de pagamento para um funcionário que ganha salário fixo", async function () {
	const input = {
		employeeId: 2,
		month: 12,
		year: 2023
	}
	const response = await axios.post("http://localhost:3000/calculate_payroll", input);
	const output = response.data;
	expect(output.employeeName).toBe("Ana Costa");
	expect(output.salary).toBe(4750);
});

test("Deve calcular a folha de pagamento para um funcionário que ganha salário voluntário", async function () {
	const input = {
		employeeId: 3,
		month: 12,
		year: 2023
	}
	const response = await axios.post("http://localhost:3000/calculate_payroll", input);
	const output = response.data;
	expect(output.employeeName).toBe("Sergio Oliveira");
	expect(output.salary).toBe(0);
});
