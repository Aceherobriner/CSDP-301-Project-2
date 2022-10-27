;Name: Israel Showell
;Date Created: 10/27/
;Project Name: Assembly Array Adder.
;Project Desc: This program combines the elements of arrays into a select general register.

.386
.model flat

;PTR goes above .data
PBYTE TYPEDEF	PTR BYTE	
PWORD TYPEDEF	PTR WORD	
DPWORD TYPEDEF	PTR DWORD	

.data

array1 BYTE 10H, 20H, 30H, 40H, 50H ;This is an array
array2 WORD 100, 200, 300, 400, 500
array3 DWORD 1000, 2000, 3000, 4000, 5000

pt_1 PBYTE array1	  
;pt_1 label for array1
pt_2 PWORD array2
;pt_2 label for array2
pt_3 DPWORD array3
;pt_3 label for array3


.code
main		proc
			mov esi, pt_1		
			mov al, [esi]		
			add al, [esi + 1]	
			add al, [esi + 2]	
			add al, [esi + 3]
			add al, [esi + 4]

			mov esi, pt_2
			mov bx, [esi]		
			add bx, [esi + 2]	
			add bx, [esi + 4]	
			add bx, [esi + 6]	
			add bx, [esi + 8]	

			mov esi, pt_3	
			mov ecx, [esi]		
			add ecx, [esi + 4]  
			add ecx, [esi + 8]  
			add ecx, [esi + 12]  
			add ecx, [esi + 16] 

			ret

main		endp	
end	