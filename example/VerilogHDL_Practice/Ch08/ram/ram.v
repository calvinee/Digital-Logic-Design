// Ch08 ram.v
// �H���s���O���� 4*bytes

module ram (Cs,We,Addr,Di,Do);
parameter Words = 4;
parameter Bits  = 8;
input  Cs,We;				// �@�줸��J
input  [1:0] Addr;			// �G�줸��J
input  [Bits-1:0] Di;			// �K�줸��J
output [Bits-1:0] Do;			// �K�줸��X
reg    [Bits-1:0] Do;			// �K�줸��X
reg    [Bits-1:0] Ram [Words-1:0];	// �ŧi���Ȧs�����

// �U�tĲ�o�P��
always@ (negedge Cs) 
  if (We)		// �g�J
    begin
	   Ram[Addr] = Di;
	   Do = 8'bz;
	 end
  else			// Ū�X
    Do = Ram[Addr]; 
 
endmodule
