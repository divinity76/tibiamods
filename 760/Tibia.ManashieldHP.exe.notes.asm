Tibia.exe+18BBA - 7C 18                 - jnge Tibia.exe+18BD4
^ RELATED TO COLOR :D
CPU Disasm
Address   Hex dump          Command                                  Comments
00418BB0  /$  8B81 84000000 mov eax,dword ptr ds:[ecx+84]            ; Tibia.00418BB0(guessed Arg1)
^ RELATED TO COLOR
0047DFA7 : OUR COLOR HOOK.
00418BB5: JMP BACK addr
ecx+0=ID OF CHAR TO CHECK COLOR FOR :D

CPU Disasm
Address   Hex dump          Command                                  Comments
00449F42  |.  8B82 84000000 |mov eax,dword ptr ds:[edx+84]
^ RELATED TO HP BAR 
00449F47 <<jmp back address.
0047DF55 << HP hook
Tibia.exe+A1244: MY ID6
+
004A1244: MY ID.
Tibia.exe+A11D0 / 004A11D0: Status byte.
Bit 00010000: mana shield bit. (either 4 or 5)
Tibia.exe+A1224 / 004A1224: our mana




Tibia.exe+ABE9D: way to get self ID?
004ABE9D: way to get self ID? 
C:\temp\pointerscan\ptr.ptr pointers to get self id?

I LOVE MY ADORABLE KITTEN




COLOR HOOK: V
<0047DFA7>
	nop
	pushfd
	mov eax,dword ptr ds:[ecx]; get id of our target.
	cmp eax,dword ptr ds:[004A1244] ; are we our target?
	je short @ItIsUs;yes
	@ItIsNotUs:;no, we are not our target.
	popfd
	mov eax,dword ptr ds:[ecx+84];read hp
	jmp short @Done;return
	@ItIsUs:
	mov eax,dword ptr ds:[004A11D0];yes, it is us. is manashield active?
	bt eax,4
	jnc @ItIsNotUs;no, manashield is not active
	popfd;yes, manashield active.
	mov eax,dword ptr ds:[Tibia.004A1224];read mana.
	@Done:
	jmp long 00418BB5
	

	
	
HP HOOK: 0047DF55 / edx
V


<0047DF55>
	nop
	pushfd
	mov eax,dword ptr ds:[edx]; get id of our target.
	cmp eax,dword ptr ds:[004A1244] ; are we our target?
	je short @ItIsUs;yes
	@ItIsNotUs:;no, we are not our target.
	popfd
	mov eax,dword ptr ds:[edx+84];read hp
	jmp short @Done;return
	@ItIsUs:
	mov eax,dword ptr ds:[004A11D0];yes, it is us. is manashield active?
	bt eax,4
	jnc @ItIsNotUs;no, manashield is not active
	popfd;yes, manashield active.
	mov eax,dword ptr ds:[Tibia.004A1224];read mana.
	@Done:
	jmp long 00449F47
