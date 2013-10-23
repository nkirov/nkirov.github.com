#include <iostream>
#include <string.h>
using namespace std;

#define FALSE 0
#define TRUE !FALSE

// this function checks if two words are anagrams of each other
int isAnagram(char w1[], char w2[])
{
	// There are two approaches to this problem
	// 1. sort the letters of each word and check
	// if the sorted versions are equal
	// 2. Count the letters of each and check if the counts are equal
	// here we adopt the second approach
	int i;
	int letters1[26]; // This array will contain counts of the letters of the first word
	for(i = 0; i < 26; i++)
		letters1[i] = 0;  // initialise count to zero

	int len = strlen(w1);
	for(i = 0; i < len; i++)
		letters1[w1[i] -'a']++; // increment this letter

	// same for second word
	int letters2[26];
	for(i = 0; i < 26; i++)
		letters2[i] = 0;  // initialise count to zero

	len = strlen(w2);
	for(i = 0; i < len; i++)
		letters2[w2[i] -'a']++; // increment this letter

	// Now check all the letters are the same
	for(i = 0; i < 26; i++)
		if(letters1[i] != letters2[i])
			return FALSE;	// one exception => not an anagram

	// got here => all letter counts equal => is an anagram
	return TRUE;
}


int main()
{
	const int MAXWORDLEN = 30;
	
while(1)
{	
	char word[MAXWORDLEN];
	//cout << "Enter the word\n";

	cin >> word;
if(strcmp(word,".")) return 0;
	//cout << "How many strings\n";

	int n;
	cin >> n;

	for(int i = 0; i < n; i++)
	{
		char newWord[MAXWORDLEN];
		cin >> newWord;
		if(strcmp(word, newWord) == 0)
			cout << "IDENTICAL";
		else if(isAnagram(word, newWord))
			cout << "ANAGRAM";
		else
			cout << "NOT AN ANAGRAM";
	}
}
	return 0;
}
