/*
 NBU November 2020 Programming Contest
 
 C. Автомат
 Продукти, предлагани от автомат се продават за цяло число левове. Автоматът връща ресто под формата на монети от един лев, както и банкноти от по пет и десет лева. Напишете програма за автомата като сe спазват следните две условия: При всяка отделна покупка рестото да се съдържа по-малко от 5 монети, и по-малко от две банкноти от 5 лева.
 Вход
 Всеки отделен ред на стандартния вход описва един тестов пример, съдържащ две цели положителни числа. Първото е стойността на покупката, а второто – парите въведени в автомата. Края на входа е ред, съдържащ две нули.
 Изход
 За всеки тестов пример извеждайте по един отделен ред, състоящ се от: номера на поредния тест, рестото, броят на десет и пет левовите банкноти, както и този на монетите от един лев, върнати от автомата за конкретния пример. Изходът да бъде форматиран, както е показано по-долу.
 Вход
 72 100
 37 200
 5 50
 0 0	
 
 Изход
 Case 1: 28 = 2 * 10 + 1 * 5 + 3 * 1
 Case 2: 163 = 16 * 10 + 0 * 5 + 3 * 1
 Case 3: 45 = 4 * 10 + 1 * 5 + 0 * 1
 
 */

#include <iostream>
using namespace std;

int price, tended, t = 1;

int main()
{
	while(cin >> price >> tended && price)
	{
		int change = tended - price;
		int tens = change / 10;
		int afterTens = change % 10;
		int fives = afterTens / 5;
		int ones = afterTens % 5;

		cout<< "Case " << t++ << ": " << change << " = " << tens << " * 10 + " << fives << " * 5 + " << ones << " * 1" << endl;
	}
	return 0;
}