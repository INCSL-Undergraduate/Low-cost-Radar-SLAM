#include <iostream>
#include <cstring>
using namespace std;

int main(){
    char password[11];
    cout << "password :" << endl;
    while(1){
        cout << " password : " << endl;
        cin >> password;
        if(strcmp(password,"C++") == 0){
            cout <<"o"<<endl; 
            break;
        }
        else
            cout << "wrong" << endl;
    }
    return 0 ;
}

