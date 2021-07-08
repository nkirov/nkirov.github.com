#include <stdio.h>
#define MAX       100 /* ���������� ���� �������� */
#define MAXVALUE  200 /* ���������� �������� �� ������� ������� */
#define NOT_SET (unsigned)(-1)

unsigned last[MAX * MAXVALUE]; /* ��� ������� � ��� ������� ��������? */

const unsigned m[MAX] = {3,2,3,2,2,77,89,23,90,11}; /* �������� �� ����� �� ���������� */
const unsigned n = 10;           /* ��� ���� �� ���������� �� �������� */

void solve(void)
{ unsigned long p; /* ���� �������� �� ���������� �� �������� */
  unsigned long curSum = 0;
  unsigned i, j;

  /* ���������� �� ������ p */
  for (p = i = 0; i < n; p += m[i++])
    ;

  /* ������� �������������� */
  for (last[0] = 0, i = 1; i <= p; i++)
	last[i] = NOT_SET;

  /* �������� �� ������������� ���� �� ��������� �� ���������� */
  for (i = 0; i < n; i++) {
    for (j = p; j+1 > 0; j--)
      if (NOT_SET != last[j] && NOT_SET == last[j + m[i]])
		last[j + m[i]] = i;
    curSum += m[i];
  }

  /* �������� �� ���-�������� �� p/2 �������� � ��������� �� ��������� */
  for (i = p / 2; i > 1; i--) {
    if (NOT_SET != last[i]) {
      printf("\n%s%u%s%lu", "���� �� ����: ", i, "; ���� �� ���: ", p - i);
      printf("\n���� �����:");
      while (i > 0) {
        printf(" %u", m[last[i]]);
        i -= m[last[i]];
      }
      printf("\n��� ����� ���������� ��������.");
      return;
    }
  }
}

int main(void)
{ solve();
  return 0;
}