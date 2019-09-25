//
// Created by 蔡杰 on 2019-07-19.
//

#include "Object.h"

nclude <stdlib.h>
#include <iostream>
using namespace std;

void* Object::operator new (size_t size) throw(){
    cout<<"Object::operator new\n";
    return malloc(size);
}
void Object::operator delete (void* p){
    cout<<"Object::operator delete\n";
    free(p);
}
//
void* Object::operator new[] (size_t size) throw(){
    return malloc(size);
}
void Object::operator delete[] (void* p){
    free(p);
}
//虽然头文件定义了纯虚函数，子类必须实现
Object::~Object(){

}