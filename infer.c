#include <stdio.h>

int main() {
  const char* colors[] = {"red", "yellow", "blue"};
  for (
    int index = 0;
    index < sizeof(colors) / sizeof(*colors);
    index += 1
  ) {
    printf("Color %d: %s\n", index, colors[index]);
  }
}
