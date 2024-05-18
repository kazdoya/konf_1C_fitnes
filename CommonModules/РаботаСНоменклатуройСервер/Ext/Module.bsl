﻿Функция ПолучитьСтатьюПоНоменклатуре(Номенклатура) Экспорт
	
Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	               |	Номенклатура.СтатьяЗатрат КАК СтатьяЗатрат
	               |ИЗ
	               |	Справочник.Номенклатура КАК Номенклатура
	               |ГДЕ
	               |	Номенклатура.Ссылка = &Номенклатура"; 
	
	Запрос.УстановитьПараметр("Номенклатура", Номенклатура);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	Если РезультатЗапроса.Пустой() Тогда
		Сообщить("В базе данных не найдена статья для данной номенклатуры!");
		возврат 0;
	КонецЕсли;
		
	Выборка = РезультатЗапроса.Выбрать();  
	
	Выборка.Следующий();
	
	Возврат Выборка.СтатьяЗатрат;
	 
КонецФункции  

Функция ПолучитьСрокДействияАбонементаПоНоменклатуре(Номенклатура) Экспорт
	
Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	               |	Номенклатура.СрокДействияАбонемента КАК СрокДействияАбонемента
	               |ИЗ
	               |	Справочник.Номенклатура КАК Номенклатура
	               |ГДЕ
	               |	Номенклатура.Ссылка = &Номенклатура"; 
	
	Запрос.УстановитьПараметр("Номенклатура", Номенклатура);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	Если РезультатЗапроса.Пустой() Тогда
		Сообщить("В базе данных не найдены данные по сроку действия абенемента!");
		возврат 0;
	КонецЕсли;
		
	Выборка = РезультатЗапроса.Выбрать();  
	
	Выборка.Следующий();
	
	Возврат Выборка.СрокДействияАбонемента;
	 
КонецФункции     

Функция ПолучитьДниЗаморозкиПоНоменклатуре(Номенклатура) Экспорт
	
Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	               |	Номенклатура.ДнейЗаморозки КАК ДнейЗаморозки
	               |ИЗ
	               |	Справочник.Номенклатура КАК Номенклатура
	               |ГДЕ
	               |	Номенклатура.Ссылка = &Номенклатура"; 
	
	Запрос.УстановитьПараметр("Номенклатура", Номенклатура);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	Если РезультатЗапроса.Пустой() Тогда
		Сообщить("В базе данных не найдены данные по дням заморозки!");
		возврат 0;
	КонецЕсли;
		
	Выборка = РезультатЗапроса.Выбрать();  
	
	Выборка.Следующий();
	
	Возврат Выборка.ДнейЗаморозки;
	 
КонецФункции