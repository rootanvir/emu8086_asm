org 100h
mov dx,''
cmp dx,'A'
jb a
cmp dx,'Z'
ja a     

add dx,32
 
a:       
cmp dx,'a'
je b
cmp dx,'e'
je b
cmp dx,'i'
je b
cmp dx,'o'
je b
cmp dx,'u'
je b

lea dx,msg2
mov ah,09h
int 21h
ret

b: 

lea dx,msg1
mov ah,09h
int 21h
ret
 
msg1 db "Vowel$"
msg2 db "Constant$"