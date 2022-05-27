# include <stdio.h>
int main() {
	int a;
	writef("hello world");
	readf("%d", &a);
	writef("%d", a-1);
	return 0;
}
