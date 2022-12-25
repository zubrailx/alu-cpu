# itmo_ac-lab3

https://gitlab.se.ifmo.ru/computer-systems/csa-rolling/-/blob/master/lab3-task.md

## Вариант

### Задание 
```
asm | acc | neum | hw | tick | struct | stream | port | prob2
```

### Описание частей

#### `asm` 

Синтаксис ассемблера. Необходима поддержка label-ов.

#### `acc` 

Архитектура. Система команд должна быть выстроена вокруг аккумулятора.

#### `neum` 

Фон Неймановская архитектура организации памяти.

#### `hw`

Hardwired Conrol Unit. Реализуется как часть модели.

#### `instr`

Процессор необходимо моделировать с точностью до каждой инструкции (наблюдается состояние после каждой инструкции).

#### `struct` 

Представление машинного кода в виде высокоуровневой структуры данных. Считается, что одна инструкция укладывается в одно машинное слово, за исключением CISC архитектур.

#### `stream`

Ввод-вывод осуществляется как поток токенов. Есть в примере. Логика работы:

- при старте модели у вас есть буфер, в котором представлены все данные ввода (`['h', 'e', 'l', 'l', 'o']`);
- при обращении к вводу (выполнение инструкции), модель процессора получает "токен" (символ) информации;
- если данные в буфере кончились -- останавливайте моделирование;
- вывод данных реализуется аналогично, по выполнению команд в буфер вывода добавляется ещё один символ;
- по окончанию моделирования показать все выведенные данные;
- логика работы с буфером реализуется в рамках модели на Python.


#### `port` 

Port-mapped ввод-вывод ISA.

#### `prob2`. Even Fibonacci numbers algorithm

- Входные данные должны подаваться через ввод.
- Результат должен быть подан на вывод.
- Формат ввода/вывода данных -- на ваше усмотрение.

[Project Euler. Problem 2](https://projecteuler.net/problem=2)

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

### Тулинг

* mypy
* flake8, wemake-python-styleguide
* black
* pytest, pytest-coverage