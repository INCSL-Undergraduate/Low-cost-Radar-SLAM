#include <iostream>
using namespace std;

class Circle{
    private : 
        int r ;
    
    public :
        Circle(){
            r = 1 ;
        }

        Circle(int x){
            r = x ;
        }

        int getArea(){
            return r*r*3.14; 
        }
};

int main(){
    Circle c1;
    Circle c2(10);
    cout << c1.getArea() <<endl;
    cout << c2.getArea() <<endl;
    return 0;
}

