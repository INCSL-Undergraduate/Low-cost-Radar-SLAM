#include <iostream>
#include <string>
using namespace std;

int main(){
    string song("Falling in love with you");
    string elvis("Elvis Presley");
    string singer;

    cout << "who sing the song "<<song<<endl;
    cout << "(Hint : first word is "<<elvis[0]<<")?"<<endl;
    getline(cin,singer);
    if(singer == elvis)
        cout<<"right";
    else
        cout<<"wrong answer, right answer is "<<elvis<<endl;
}