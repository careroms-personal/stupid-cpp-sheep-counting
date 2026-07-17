#include <iostream>
#include <chrono>
#include <thread>

using namespace std;

int main() {
  int count = 1;

  while (true)
  {
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << count << " sheep... 🐑" << std::endl;
    count++;
  }

  return 0;
}
