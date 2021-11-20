﻿Перем ПроверяемоеЗначение;
Перем ИмяМетода;
Перем ПараметрыМетода;
Перем ДопСообщениеОшибки;
Перем ФлагОтрицания;
Перем ФлагОтрицанияДляСообщения;
Перем СтатусыРезультатаТестирования;

Функция Что(Знач ПроверяемоеЗначениеПараметр, Знач Сообщение = "") Экспорт
	ПроверяемоеЗначение = ПроверяемоеЗначениеПараметр;
	ДопСообщениеОшибки = Сообщение;
	ФлагОтрицания = Ложь;

	Возврат ЭтотОбъект;
КонецФункции

Функция Не_() Экспорт
	ФлагОтрицания = Истина;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЭтоНе() Экспорт
	Возврат Не_();
КонецФункции

Функция Метод(Знач ИмяМетодаПараметр, Знач ПараметрыМетодаПараметр = Неопределено) Экспорт
	ИмяМетода = ИмяМетодаПараметр;
	Если ПараметрыМетодаПараметр = Неопределено Тогда
		ПараметрыМетода = Новый Массив;
	Иначе
		ПараметрыМетода = ПараметрыМетодаПараметр;
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЭтоИстина() Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение = Истина) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПредставлениеЗначения(), "является ИСТИНОЙ.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЕстьИстина() Экспорт
	Возврат ЭтоИстина();
КонецФункции

Функция ЭтоЛожь() Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение = Ложь) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПредставлениеЗначения(), "является ЛОЖЬЮ.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЕстьЛожь() Экспорт
	Возврат ЭтоЛожь();
КонецФункции

Функция Равно(Знач ОжидаемоеЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение = ОжидаемоеЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "РАВНО (" + ОжидаемоеЗначение + ").");
		Если ТипЗнч(ПроверяемоеЗначение) <> ТипЗнч(ОжидаемоеЗначение) Тогда
			СообщениеОшибки = СообщениеОшибки + СтрШаблон("%3 Тип проверяемого значения (%1) НЕ РАВЕН  типу ожидаемого значения (%2).",
				ТипЗнч(ПроверяемоеЗначение), ТипЗнч(ОжидаемоеЗначение), Символы.ПС);
		КонецЕсли;
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Больше(Знач МеньшееЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение > МеньшееЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "БОЛЬШЕ (" + МеньшееЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция БольшеИлиРавно(Знач МеньшееИлиРавноеЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение >= МеньшееИлиРавноеЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "БОЛЬШЕ ИЛИ РАВНО (" + МеньшееИлиРавноеЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Минимум(Знач МинимальноеЗначение) Экспорт
	Возврат БольшеИлиРавно(МинимальноеЗначение);
КонецФункции

Функция МеньшеИлиРавно(Знач БольшееИлиРавноеЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение <= БольшееИлиРавноеЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "МЕНЬШЕ ИЛИ РАВНО (" + БольшееИлиРавноеЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Максимум(Знач МаксимальноеЗначение) Экспорт
	Возврат МеньшеИлиРавно(МаксимальноеЗначение);
КонецФункции

Функция Меньше(Знач БольшееЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение < БольшееЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "МЕНЬШЕ (" + БольшееЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Заполнено() Экспорт
	Если Не ЛогическоеВыражениеВерно(ЗначениеЗаполнено(ПроверяемоеЗначение)) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "является ЗАПОЛНЕННЫМ.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Существует() Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение <> Неопределено И ПроверяемоеЗначение <> Null) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "СУЩЕСТВУЕТ.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЭтоНеопределено() Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение = Неопределено) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "является НЕОПРЕДЕЛЕНО.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЕстьНеопределено() Экспорт
	Возврат ЭтоНеопределено();
КонецФункции

Функция ЭтоNull() Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение = Null) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "является NULL.");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ЕстьNull() Экспорт
	Возврат ЭтоNull();
КонецФункции

Функция ИмеетТип(Знач ТипИлиИмяТипа) Экспорт
	ОжидаемыйТип = ?(ТипЗнч(ТипИлиИмяТипа) = Тип("Строка"), Тип(ТипИлиИмяТипа), ТипИлиИмяТипа);
	ТипПроверяемогоЗначения = ТипЗнч(ПроверяемоеЗначение);
	Если Не ЛогическоеВыражениеВерно(ТипПроверяемогоЗначения = ОжидаемыйТип) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке("тип - " + ТипПроверяемогоЗначения, "имеет тип (" + ОжидаемыйТип + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Между(Знач НачальноеЗначение, Знач КонечноеЗначение) Экспорт
	Если Не ЛогическоеВыражениеВерно(ПроверяемоеЗначение >= НачальноеЗначение И ПроверяемоеЗначение <= КонечноеЗначение) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "МЕЖДУ (" + НачальноеЗначение + ") и (" + КонечноеЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция Содержит(Знач ИскомоеЗначение) Экспорт
	Перем ИскомоеЗначениеНайдено;

	ТипПроверяемоегоЗначения = ТипЗнч(ПроверяемоеЗначение);
	Если ТипПроверяемоегоЗначения = Тип("Строка") Тогда
		Если СтрЧислоСтрок(ИскомоеЗначение) = 1 Тогда
			ИскомоеЗначениеНайдено = Найти(ПроверяемоеЗначение, ИскомоеЗначение) > 0;
		Иначе
			ПроверитьЧтоМногострочнаяСтрокаСодержитПодстрокуБезУчетаНачальныхКонечныхПробеловВПодстроках(ПроверяемоеЗначение, ИскомоеЗначение, ФорматДСО(ДопСообщениеОшибки));
			ИскомоеЗначениеНайдено = Истина;
		КонецЕсли;

	ИначеЕсли ТипПроверяемоегоЗначения = Тип("Массив") Тогда
		ИскомоеЗначениеНайдено = ПроверяемоеЗначение.Найти(ИскомоеЗначение) <> Неопределено;
	ИначеЕсли ТипПроверяемоегоЗначения = Тип("Структура")
			Или ТипПроверяемоегоЗначения = Тип("Соответствие") Тогда
		Для каждого КлючЗначение Из ПроверяемоеЗначение Цикл
			ИскомоеЗначениеНайдено = КлючЗначение.Значение = ИскомоеЗначение;
			Если ИскомоеЗначениеНайдено Тогда
				Прервать;
			КонецЕсли;
		КонецЦикла;
	ИначеЕсли ТипПроверяемоегоЗначения = Тип("СписокЗначений") Тогда
		ИскомоеЗначениеНайдено = ПроверяемоеЗначение.НайтиПоЗначению(ИскомоеЗначение) <> Неопределено;
	КонецЕсли;

	Если ИскомоеЗначениеНайдено = Неопределено Тогда
		СообщениеОшибки = "Утверждение ""Содержит"" не умеет работать с типом <" + ТипПроверяемоегоЗначения + ">." + ФорматДСО(ДопСообщениеОшибки);
		ВызватьИсключение СообщениеОшибки;
	КонецЕсли;

	Если Не ЛогическоеВыражениеВерно(ИскомоеЗначениеНайдено) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке(ПроверяемоеЗначение, "СОДЕРЖИТ (" + ИскомоеЗначение + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ИмеетДлину(Знач ОжидаемаяДлина) Экспорт
	Перем ФактическаяДлина;

	ТипПроверяемоегоЗначения = ТипЗнч(ПроверяемоеЗначение);
	Если ТипПроверяемоегоЗначения = Тип("Строка") Тогда
		ФактическаяДлина = СтрДлина(ПроверяемоеЗначение);
	Иначе
		Попытка
			ФактическаяДлина = ПроверяемоеЗначение.Количество();
		Исключение
			ФактическаяДлина = Неопределено;
		КонецПопытки;
	КонецЕсли;

	Если ФактическаяДлина = Неопределено Тогда
		СообщениеОшибки = "Утверждение ""ИмеетДлину"" не умеет работать с типом <" + ТипПроверяемоегоЗначения + ">." + ФорматДСО(ДопСообщениеОшибки);
		ВызватьИсключение СообщениеОшибки;
	КонецЕсли;

	Если Не ЛогическоеВыражениеВерно(ФактическаяДлина = ОжидаемаяДлина) Тогда
		СообщениеОшибки = СформироватьСообщениеОбОшибке("<" +ПроверяемоеЗначение + "> с длиной " + ФактическаяДлина, "ИМЕЕТ ДЛИНУ (" + ОжидаемаяДлина + ").");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

Функция ВыбрасываетИсключение(Знач ФрагментИсключения = "") Экспорт
	Контекст = ПроверяемоеЗначение;
	ИсключениеВозникло = Ложь;

	Попытка
		Рефлектор = Новый Рефлектор;
		Рефлектор.ВызватьМетод(Контекст, ИмяМетода, ПараметрыМетода);
	Исключение
		ИсключениеВозникло = Истина;
		ТекстИсключения = ОписаниеОшибки();
	КонецПопытки;

	Если Не ЛогическоеВыражениеВерно(ИсключениеВозникло И Найти(ТекстИсключения, ФрагментИсключения) > 0) Тогда
		СообщениеОшибки = "Ожидали, что " + ИмяМетода
			+ ?(ФлагОтрицания, " НЕ ", " ")
			+ "ВЫБРОСИТ ИСКЛЮЧЕНИЕ"
			+ ?(ЗначениеЗаполнено(ФрагментИсключения), " СОДЕРЖАЩЕЕ ТЕКСТ <" + ФрагментИсключения + ">, а был текст <" + ТекстИсключения + ">.", "");
		ВызватьОшибкуПроверки(СообщениеОшибки);
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

// Проверяет существование метода с указанным именем
//
// Выбрасывает исключение, если метод отсутствует
//
// Параметры:
//  ИмяМетода  - Строка - Имя метода, наличие которого требуется проверить
//
Функция ИмеетМетод(Знач ИмяМетода) Экспорт
	Перем Рефлектор;

	Рефлектор = Новый Рефлектор;
	Если НЕ ЛогическоеВыражениеВерно(Рефлектор.МетодСуществует(ПроверяемоеЗначение, ИмяМетода)) Тогда
		ВызватьОшибкуПроверки("Ожидали что объект имеет метод с именем '" + ИмяМетода + "'" + ФорматДСО(ДопСообщениеОшибки));
	КонецЕсли;

	Возврат ЭтотОбъект;
КонецФункции

// { Helpers
Функция ФорматДСО(Знач ДопСообщениеОшибки)
	Если ДопСообщениеОшибки = "" Тогда
		Возврат "";
	КонецЕсли;

	Возврат Символы.ПС + ДопСообщениеОшибки;
КонецФункции

Процедура ВызватьОшибкуПроверки(Знач СообщениеОшибки)
	Префикс = "[" + СтатусыРезультатаТестирования.ОшибкаПроверки + "]";
	ТекстИсключения = Префикс + " " + СообщениеОшибки;
	Попытка
		ВызватьИсключение ТекстИсключения;
	Исключение
		ИнформацияОбОшибке = ИнформацияОбОшибке();
		СтекВызовов = ИнформацияОбОшибке.ПолучитьСтекВызовов();
		МассивТекстИсключения = Новый Массив;
		МассивТекстИсключения.Добавить(ТекстИсключения);
		МассивТекстИсключения.Добавить("Стек трейс:");

		Отступ = "";
		СимволОтступа = "  ";
		ПервыйКадр = Истина;
		Для Каждого КадрСтекаВызовов Из СтекВызовов Цикл
			// пропустим первый кадр стека, т.к. он ведет на служебный вызов исключения
			Если ПервыйКадр Тогда
				ПервыйКадр = Ложь;
				Продолжить;
			КонецЕсли;

			Отступ = Отступ + СимволОтступа;

			СтрокаСтекТрейса = СтрШаблон(
				"%1%2 / Метод %3 / Строка %4",
				Отступ,
				КадрСтекаВызовов.ИмяМодуля,
				КадрСтекаВызовов.Метод,
				Формат(КадрСтекаВызовов.НомерСтроки, "ЧГ=")
			);
			МассивТекстИсключения.Добавить(СтрокаСтекТрейса);
		КонецЦикла;
		ТекстИсключения = СтрСоединить(МассивТекстИсключения, Символы.ПС);

		ВызватьИсключение ТекстИсключения;
	КонецПопытки
КонецПроцедуры

Функция ЛогическоеВыражениеВерно(Знач ЛогическоеВыражение)
	Результат = ФлагОтрицания <> ЛогическоеВыражение;
	ФлагОтрицанияДляСообщения = ФлагОтрицания;
	ФлагОтрицания = Ложь;

	Возврат Результат;
КонецФункции

Функция СформироватьСообщениеОбОшибке(Знач ПроверяемоеЗначение, Знач Ожидание)
	Если ФлагОтрицанияДляСообщения = Ложь
		 И ТипЗнч(Ожидание) = Тип("Строка")
		 И ТипЗнч(ПроверяемоеЗначение) = Тип("Строка") Тогда

		Возврат "Ожидали равенство строк. " + assertsОбщиеФункции.ИсключениеНеравенстваСтрок(Ожидание, ПроверяемоеЗначение);
	КонецЕсли;

	Возврат "Ожидали, что проверяемое значение (" + ПроверяемоеЗначение + ")" + ?(ФлагОтрицанияДляСообщения, " НЕ ", " ") + Ожидание + ФорматДСО(ДопСообщениеОшибки);
КонецФункции

// Процедура ЕстьПодстрока(Знач Строка, Знач ПроверяемаяСтрока)
// 	Если СтрЧислоСтрок(ПроверяемаяСтрока) = 1 Тогда
// 		ЭтотОбъект.Что(Строка, "Проверяем одиночную строку").Содержит(ПроверяемаяСтрока);
// 	Иначе
// 		ПроверитьЧтоМногострочнаяСтрокаСодержитПодстрокуБезУчетаНачальныхКонечныхПробеловВПодстроках(Строка, ПроверяемаяСтрока);
// 	КонецЕсли;
// КонецПроцедуры

Процедура ПроверитьЧтоМногострочнаяСтрокаСодержитПодстрокуБезУчетаНачальныхКонечныхПробеловВПодстроках(Знач Строка, Знач Подстрока, ДопСообщениеОшибки = "")
		СообщениеОшибки = "";
		Нашли = МногострочнаяСтрокаСодержитПодстрокуБезУчетаНачальныхКонечныхПробеловВПодстроках(Строка, Подстрока, СообщениеОшибки);
		Если ЛогическоеВыражениеВерно(Не Нашли) Тогда
			ВызватьОшибкуПроверки( СтрШаблон("Ожидали, что в строке <
			|%1
			|>
			|найдем подстроку<
			|%2
			|>
			|А это не так.
			|Уточнение: %3.
			|%4", Строка, Подстрока, СообщениеОшибки, ДопСообщениеОшибки));
		КонецЕсли;
КонецПроцедуры

Функция МногострочнаяСтрокаСодержитПодстрокуБезУчетаНачальныхКонечныхПробеловВПодстроках(Знач Строка, Знач Подстрока, СообщениеОшибки = "")
	СтартоваяПозиция = 1;
	Пока Истина Цикл // ищем первый совпадающий блок во всей строке
		ПерваяСтрока = СокрЛП(СтрПолучитьСтроку(Подстрока, 1));
// Сообщить("СтартоваяПозиция + <" + СтартоваяПозиция + ">");
// Сообщить("ПерваяСтрока + <" + ПерваяСтрока + ">");
		НашлиПервуюСтроку = Ложь;
		Для Счетчик = СтартоваяПозиция По СтрЧислоСтрок(Строка) Цикл
			ОчереднаяСтрока = СокрЛП(СтрПолучитьСтроку(Строка, Счетчик));
			// Сообщить("ОчереднаяСтрока + <" + ОчереднаяСтрока + ">");

			НашлиПервуюСтроку = Найти(ОчереднаяСтрока, ПерваяСтрока) <> 0;
			Если НашлиПервуюСтроку Тогда
				Прервать;
			КонецЕсли;
		КонецЦикла;
		Если Не НашлиПервуюСтроку Тогда
			СообщениеОшибки = СтрШаблон("Не нашли первую же подстроку <%1>", ПерваяСтрока);
			Возврат Ложь;
		КонецЕсли;

		Нашли = Истина;
		СчетчикЧтоИщем = 1;//2;
		Для Счетчик = Счетчик+1 По СтрЧислоСтрок(Строка) Цикл
			СчетчикЧтоИщем  = СчетчикЧтоИщем  + 1;
			Если СчетчикЧтоИщем > СтрЧислоСтрок(Подстрока) Тогда
				Возврат Истина;
			КонецЕсли;
			ОчереднаяСтрока = СокрЛП(СтрПолучитьСтроку(Строка, Счетчик));
			// Сообщить("	ОчереднаяСтрока + <" + ОчереднаяСтрока + ">");
			ЧтоИщем = СокрЛП(СтрПолучитьСтроку(Подстрока, СчетчикЧтоИщем));
			// Сообщить("	ЧтоИщем + <" + ЧтоИщем + ">");
			Если ПустаяСтрока(ОчереднаяСтрока) Тогда
				Если Не ПустаяСтрока(ЧтоИщем) Тогда
					СчетчикЧтоИщем  = СчетчикЧтоИщем  + 1;
				КонецЕсли;
				Продолжить;
			КонецЕсли;
			Поз = Найти(ОчереднаяСтрока, ЧтоИщем);
			Если Поз = 0 Тогда
				СообщениеОшибки = СтрШаблон("Не нашли подстроку № %1 <%2>", СчетчикЧтоИщем, ЧтоИщем);
				Возврат Ложь;
			КонецЕсли;
		КонецЦикла;
		Если Нашли Или СчетчикЧтоИщем > СтрЧислоСтрок(Подстрока) Тогда
			Возврат Истина;
		КонецЕсли;
		СтартоваяПозиция = Счетчик;
	КонецЦикла;
	Возврат Ложь;
КонецФункции

Функция ПредставлениеЗначения()
	Если ТипЗнч(ПроверяемоеЗначение) = Тип("Булево") Тогда
		Представление = Формат(ПроверяемоеЗначение, "БЛ=Ложь; БИ=Истина");
	Иначе
		Представление = "" + ПроверяемоеЗначение;
	КонецЕсли;
	Возврат Представление;
КонецФункции

// } Helpers

СтатусыРезультатаТестирования = Новый Структура;
СтатусыРезультатаТестирования.Вставить("ОшибкаПроверки", "Failed");
СтатусыРезультатаТестирования.Вставить("НеизвестнаяОшибка", "Broken");
СтатусыРезультатаТестирования.Вставить("ТестПропущен", "Pending");
