<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
        }
        .calculator {
            border: 2px solid black;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .display {
            width: 100%;
            height: 50px;
            background-color: #f5deb3;
            border: none;
            text-align: right;
            padding: 10px;
            font-size: 24px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }
        .btn {
            background-color: red;
            color: black;
            border: none;
            padding: 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn.operator {
            background-color: red;
        }
        .btn.clear {
            grid-column: span 4;
            background-color: red;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <input type="text" class="display" id="display" readonly>
        <div class="buttons">
            <button class="btn" onclick="appendNumber('1')">1</button>
            <button class="btn" onclick="appendNumber('2')">2</button>
            <button class="btn" onclick="appendNumber('3')">3</button>
            <button class="btn operator" onclick="appendOperator('+')">+</button>
            <button class="btn" onclick="appendNumber('4')">4</button>
            <button class="btn" onclick="appendNumber('5')">5</button>
            <button class="btn" onclick="appendNumber('6')">6</button>
            <button class="btn operator" onclick="appendOperator('-')">-</button>
            <button class="btn" onclick="appendNumber('7')">7</button>
            <button class="btn" onclick="appendNumber('8')">8</button>
            <button class="btn" onclick="appendNumber('9')">9</button>
            <button class="btn operator" onclick="appendOperator('*')">*</button>
            <button class="btn" onclick="appendNumber('0')">0</button>
            <button class="btn" onclick="appendDot()">.</button>
            <button class="btn operator" onclick="calculate()">=</button>
            <button class="btn operator" onclick="appendOperator('/')">/</button>
            <button class="btn clear" onclick="clearDisplay()">C</button>
        </div>
    </div>
    <script>
        let display = document.getElementById('display');

        function appendNumber(number) {
            display.value += number;
        }

        function appendOperator(operator) {
            display.value += ' ' + operator + ' ';
        }

        function appendDot() {
            display.value += '.';
        }

        function calculate() {
            display.value = eval(display.value);
        }

        function clearDisplay() {
            display.value = '';
        }
    </script>
</body>
</html>