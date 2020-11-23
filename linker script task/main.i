# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "main.h" 1



extern void vidFunc(short int *u16FuncArgPtr);
# 2 "main.c" 2
extern unsigned long __data_load__;
extern unsigned long __data_start__;
extern unsigned long __data_end__;
extern unsigned long __bss_start__;
extern unsigned long __bss_end__ ;
extern unsigned long _stack ;
extern unsigned long __sprtins_load__ ;
extern unsigned long __sprtins_start__ ;
extern unsigned long __sprtins_end__ ;
void resethandler(void){
 unsigned long *pdata=(unsigned long*)&__data_load__;
 unsigned long *psdata=(unsigned long*)&__data_start__;
 unsigned long *pedata=(unsigned long*)&__data_end__;
 unsigned long *pbssstart=(unsigned long*)&__bss_start__;
 unsigned long *pbssend=(unsigned long*)&__bss_end__;
 unsigned long *pstack=(unsigned long*)&_stack;
 unsigned long *psprintd=(unsigned long*)&__sprtins_load__;
 unsigned long *psprints=(unsigned long*)&__sprtins_start__;
 unsigned long *psprinte=(unsigned long*)&__sprtins_end__ ;
 while(pbssstart<pbssend){
  *(pbssstart++)=0;
 }
 while(psdata<pedata){
  *(psdata++)=*(pdata++);
 }
 while(psprints<psprinte){
  *(psprints++)=*(psprintd++);
 }
}
char u8InitGLobalVar = 2;
static long int u32NonInitStaticGlobalVar;
const short int u16ConstGlobalVar = 3;
const int arr[10]__attribute__((section(".sprints")))={1,2,3,4,5,6,7,8,9,10};

void main(void)
{
 short int u16LocVar = 4;
 static char u8InitStaticLocVar = 5;
 if(u16ConstGlobalVar == 3)
 {
  u32NonInitStaticGlobalVar = 6;
  vidFunc(&u16LocVar);
 }
 else
 {
  u32NonInitStaticGlobalVar = 7;
 }
 while(1)
 {

 }
}
