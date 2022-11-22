#include <iostream>

int main(){
    std::cout << "input the width>>";
    int width;
    std::cin >> width;

    std::cout << "input the height>>";
    int height;
    std::cin >> height;

    int area = width*height;
    std::cout << "area is "<<area <<"\n";
}