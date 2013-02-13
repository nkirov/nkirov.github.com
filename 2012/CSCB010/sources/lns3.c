#include <stdio.h>
#define MAX 100

const int x[MAX] = {100, 10, 15, 5, 25, 22, 12, 22}; /* ������ */
                   /* �������� ������� �� x[] �� �� ��������! */
const unsigned n = 7; /* ���� �������� � �������� */
int LNS[MAX]; /* LNS[i] - ��������� �������, ����� ���� �� ���� �� ������� i */

/* ������ ��������� �� ���-������� ������������ ��������� */
unsigned LNS_Length(void)
{ unsigned i, r, k, l, med;

  for (LNS[1] = x[1], k = 1, i = 2; i <= n; i++) {
    if (x[i] < LNS[1])        /* ������ 1 */
      LNS[1] = x[i];
    else if (x[i] >= LNS[k])  /* ������ 2 */
      LNS[++k] = x[i];
    else {                    /* ������ 3 */
      l = 1;
      r = k;                  /* ������� ������� */
      while (l < r - 1) {
        med = (l + r) / 2;
        if (LNS[med] <= x[i])
		  l = med;
        else
		  r = med;
      }
      LNS[r] = x[i];
    }
  }
  return k;
}

int main(void) {
  printf("������� �� ���-������� ������������ ���������: %u\n", LNS_Length());
  return 0;
}
