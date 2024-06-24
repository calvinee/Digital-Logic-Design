// Ch08 rom.v
// ��Ū�O���� 4*bytes

module rom (Cs,Addr,Do);
parameter Words = 4;
parameter Bits  = 8;
input  Cs;			// �@�줸��J
input  [1:0] Addr;		// �G�줸��J
output [Bits-1:0] Do;		// �K�줸��X
reg    [Bits-1:0] Do;		// �K�줸��X

// �U�tĲ�o�P��
always@ (negedge Cs) 
  begin
    case (Addr)
      0      	: Do = 8'h41;
      1		: Do = 8'h42;
      2 	: Do = 8'h43;
      default 	: Do = 8'h44; 
    endcase
  end
 
endmodule