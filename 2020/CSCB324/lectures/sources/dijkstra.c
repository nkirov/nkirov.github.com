#include <stdio.h>

/* ���������� ���� ������� � ����� */
#define MAXN 150

/* ���� ������� � ����� */
const unsigned n = 10;
const unsigned s = 1;
/* ������� �� ������� �� ����� */
const unsigned A[MAXN][MAXN] = {
  { 0, 23,  0, 0,  0,  0,  0,  8, 0,  0 },
  { 0,  0,  0, 3,  0,  0, 34,  0, 0,  0 },
  { 0,  0,  0, 0,  0,  0,  0, 25, 0,  0 },
  { 0,  0,  6, 0,  0,  0,  0,  0, 0,  0 },
  { 0,  0,  0, 0,  0, 10,  0,  0, 0,  0 },
  { 0,  0,  0, 0, 12,  0,  0,  0, 0,  0 },
  { 0,  0,  0, 0,  0,  0,  0,  0, 0,  0 },
  { 0,  0, 25, 0,  0,  0,  0,  0, 0, 30 },
  { 0,  0,  0, 0,  0,  0,  0,  0, 0,  0 },
  { 0,  0,  0, 0,  0,  0,  0,  0, 0,  0 }
};

const int MAX_VALUE = 10000;

unsigned T[MAXN], d[MAXN];
int pred[MAXN];

/* ��������� �� �������� - ��������� ��� �� s �� ������ ������� �� ����� */
void dijkstra(unsigned s)
{ unsigned i;
  for (i = 0; i < n; i++) /* �������������: d[i]=A[s][i], �� ����� i�V, i!=s */
    if (A[s][i] == 0) {
      d[i] = MAX_VALUE; pred[i] = -1;
    }
    else {
      d[i] = A[s][i]; pred[i] = s;
    }
  for (i = 0; i < n; i++) T[i] = 1; /* ��������� T, ��������� ������ ������� */
  T[s] = 0;
  pred[s] = -1;                     /* �� �����, � ���������� �� s */

  while (1) {           /* ������ T ��� ���� ���� ������� i, �� ����� d[i]<MAXINT */
    /* �������� ����� j �� T, �� ����� d[j] � ��������� */
    int j = -1;
    int di = MAX_VALUE;

    for (i = 0; i < n; i++)
      if (T[i] && d[i] < di) {
        di = d[i];
        j = i;
      }
    if (j == -1) break; /* ��� ������ d[i], �� i �� T, �� ����� �� MAXINT - ����� */
    T[j] = 0;           /* ���������� j �� T */

    /* �� ����� i �� T ����������� D[i]=min (d[i], d[j]+A[j][i]) */
    for (i = 0; i < n; i++)
      if (T[i] && A[j][i] != 0)
        if (d[i] > d[j] + A[j][i]) {
          d[i] = d[j] + A[j][i];
          pred[i] = j;
        }
  }
}

void printPath(unsigned s, unsigned j)
{ if (pred[j] != s) printPath(s, pred[j]);
  printf("%u ", j+1);
}

/* ��������� ���������� ��������� ������ */
void printResult(unsigned s)
{ unsigned i;
  for (i = 0; i < n; i++) {
    if (i != s) {
      if (d[i] == MAX_VALUE)
        printf("���� ��� ����� ��������� %u � %u\n", s+1, i+1);
      else {
        printf("��������� ��� �� ���� %u �� %u:  %u ", s+1, i+1, s+1);
        printPath(s, i);
        printf(", ������� �� ����: %u\n", d[i]);
      }
    }
  }
}

void main(void) {
  dijkstra(s-1);
  printResult(s-1);
}
