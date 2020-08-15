#include <iostream>
#include <iterator>
#include <string>
#include <vector>

template<typename Item>
auto to_vector(const std::initializer_list<Item>& items) -> std::vector<Item> {
  return items;
}

// template<typename Item>
// auto to_vector() -> std::vector<Item> {
//   return to_vector<Item>({});
// }

template<typename... Items>
auto to_vector(Items... items) -> decltype(to_vector({items...})) {
  return to_vector({items...});
}

auto main() -> int {
  // auto colors = {"red", "yellow", "blue"};
  // auto colors = std::vector({"red", "yellow", "blue"});
  // auto colors = std::vector<std::string> {"red", "yellow", "blue"};
  // auto colors2 = to_vector(colors);
  // auto colors2 = to_vector({"red", "yellow", "blue"});
  auto colors = to_vector<std::string>({"red", "yellow", "blue"});
  // auto colors2 = to_vector("red", "yellow", "blue");
  // auto colors2 = std::vector<const char*>{};
  auto colors2 = std::vector<std::string>{};
  // colors2.insert(
  //   colors2.end(),
  //   std::make_move_iterator(colors.begin()),
  //   std::make_move_iterator(colors.end())
  // );
  colors2.insert(colors2.end(), colors.begin(), colors.end());
  // auto colors2 = to_vector<char*>();
  // auto colors2 = to_vector(1, 2, 3);
  auto index = 0;
  for (auto& color: colors2) {
    std::cout << "Color " << index << ": " << color << std::endl;
    index += 1;
  }
}
