//
// Created by 蔡杰 on 2019-07-19.
//

#ifndef CPLUSPLUSSTRUCT_CLION_OBJECT_H
#define CPLUSPLUSSTRUCT_CLION_OBJECT_H


class Object {

public:
    //用于统一动态内存申请的行为
    void* operator new (size_t size) throw();
    void operator delete (void* p);

    void* operator new[] (size_t size) throw();
    void operator delete[] (void* p);

    virtual ~Object()=0;
};


#endif //CPLUSPLUSSTRUCT_CLION_OBJECT_H
