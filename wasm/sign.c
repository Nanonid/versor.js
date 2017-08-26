typedef unsigned long int integer;
int grade(integer b);

int sign(integer a, integer b) {
  integer n = a >> 1;
  int sum = 0;
  while (n != 1) {
    sum += grade(n & b);
    n >>= 1;
  }
  return sum&1 ? -1 : 1;
}

int grade(integer b) {
  unsigned int n = 0;
  while (b != 0) {
    if (b&1) { n++; }
    b >>= 1;
  }
  return n;
}
