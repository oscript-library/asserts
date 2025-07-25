﻿Функция ПолучитьСписокТестов(юТест) Экспорт
	ВсеТесты = Новый Массив;
	ВсеТесты.Добавить("ТестДолжен_Проверить_ОбработкуАссертовВФоновыхЗаданиях");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_Проверить_ОбработкуАссертовВФоновыхЗаданиях() Экспорт
	
	Для Счетчик = 1 по 50 Цикл
		ФоновыеЗадания.Выполнить(ЭтотОбъект, "ГенерацияОбъектовВЦикле");
	КонецЦикла;
	
	Попытка 
		ФоновыеЗадания.ОжидатьЗавершенияЗадач();
		КоличествоОшибок = 0;
	Исключение
		Информация = ИнформацияОбОшибке();
		КоличествоОшибок = Информация.Параметры.Количество();
	КонецПопытки;

	Ожидаем.Что(
			КоличествоОшибок, 
			СтрШаблон("При обработке ассертов в фоновом задании ошибки %1", КоличествоОшибок)
		).Равно(0);

КонецПроцедуры

Процедура ГенерацияОбъектовВЦикле() Экспорт
	Для сч = 1 По 50 Цикл
		ОбъектМассив = Новый Массив();
		Ожидаем.Что(
			ОбъектМассив, 
			СтрШаблон("Проблема в определении значения ""Неопределено"" %1", Сч)
		).Не_().Равно(Неопределено);
	КонецЦикла;
КонецПроцедуры