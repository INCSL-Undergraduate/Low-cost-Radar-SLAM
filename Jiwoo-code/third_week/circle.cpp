#include <iostream>
using namespace std;

class Circle{
    public:
        int r ;
        Circle();
        Circle(int r);
        ~Circle();
        double getArea();
};

Circle::Circle(){
    r = 1 ;
    cout << r << endl;
}

Circle::Circle(int r){
    cout << r << endl;
}

Circle::~Circle(){
    cout << " del " << endl;
}

double Circle::getArea(){
    return 3.14*r*r;
}

Circle c1(1000);
Circle c2(2000);

void f(){
    Circle c3(100);
    Circle c4(100);
}

int main(){
    Circle c5;
    f();
    Circle c6(10);
    return 0;
}


