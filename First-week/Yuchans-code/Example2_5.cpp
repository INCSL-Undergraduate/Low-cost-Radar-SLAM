#include <iostream>
#include <cstring>
using namespace std;

int main(){
    char password[11];
    cout << "password for shutdown the program."<<endl;
    while(true){
        cout<<"password>>";
        cin>>password;
        if(strcmp(password,"C++")==0){
            cout << "shutdown your program."<<endl;
            break;
        }else{
            cout<<"wrong password"<<endl;
        }
    }
    
}

