#include <algorithm>
#include <iostream>
#include <iterator>
#include <string>
#include <vector>

template<typename Item>
auto to_vector(const std::initializer_list<Item>& items)
    -> std::vector<Item> {
  return items;
}

auto main() -> int {
  auto colors = {"red", "yellow", "blue"};
  // auto colors = std::vector {"red", "yellow", "blue"};
  // auto colors = to_vector({"red", "yellow", "blue"});
  auto colors2 = std::vector<std::string> {};
  colors2.insert(colors2.end(), colors.begin(), colors.end());
  // std::output_iterator<std::string> auto colors2_end =
  //     std::back_inserter(colors2);
  // std::copy(colors.begin(), colors.end(), colors2_end);
  auto index = 0;
  for (auto& color: colors2) {
    std::cout << "Color " << index << ": " << color << std::endl;
    index += 1;
  }
}
