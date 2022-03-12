.data  /*начало модуля данных*/ 

print:  /*метка, указывает на начало*/
    .string "Hello world\n"
    .set len_print, . - print - 1 /*подсчет длинны .string*/


.text

.global main
.type main, @function


main:
    movl $4, %eax
    movl $1, %ebx
    movl $print, %ecx
    movl $len_print, %edx

    int $0x80  /*обращение к процессору (4-1-вывод, что выводим и сколько)*/

    movl $1, %eax
    movl $0, %ebx
    int $0x80  /*завершение программы (1,0;1,1;1,-1), второе число-какой код ошибки будет возвращаться*/







