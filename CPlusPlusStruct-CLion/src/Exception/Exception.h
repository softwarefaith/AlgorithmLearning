//
// Created by 蔡杰 on 2019-07-19.
//

#ifndef CPLUSPLUSSTRUCT_CLION_EXCEPTION_H
#define CPLUSPLUSSTRUCT_CLION_EXCEPTION_H


#include <stdio.h>
#include "../Object.h"

#define THROW_EXCEPTION(Exception,message) Exception(message, __FILE__, __LINE__)
class Exception : public Object {


    protected:
        char* m_message;
        char* m_lcoation;

        void init(const char* message,const char* file, int line);

    public:

        Exception(const char* message);
        Exception(const char* file, int line);
        Exception(const char* message,const char* file, int line);

        Exception(const Exception& e);
        Exception& operator= (const Exception& e);

        virtual const char* message() const;
        virtual const char* location() const;

        virtual ~Exception()= 0;
};

//计算异常
class ArithmeticException : public Exception {

};
//空指针异常
class NullPointerException : public Exception {

};

//越界异常
class IndexOutOfBoundsException : public Exception {

};
//内存不足异常
class NoEnoughMemoryException : public Exception {

};

//参数异常
class InvalidParameterException : public Exception {

};

//异常类
class InvalidOperationException : public Exception {
};




#endif //CPLUSPLUSSTRUCT_CLION_EXCEPTION_H
