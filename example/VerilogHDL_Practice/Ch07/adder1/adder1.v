// Ch07 adder1.v
// �@�줸���[�k�� (assign �ԭz�P if �ԭz)

module adder1 (S_0, S_1, Co_0, Co_1, A, B, Ci);
input  A, B, Ci;		// A, B, Ci �@�줸��J
output S_0, S_1, Co_0, Co_1; 	// S �[�k�M, Co �i��
reg    S_1, Co_1;		// �ŧi���Ȧs�����

// ���L��{���y�z 
assign S_0 = A ^ B ^ Ci;
assign Co_0 = (A & B) | (A & Ci) | (B & Ci);

// �d�u�Ȫ�y�z 
always@ (A or B or Ci)
  if      ({A,B,Ci} == 3'b000)    {Co_1,S_1} = 2'b00; 
  else if ({A,B,Ci} == 3'b001)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b010)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b011)    {Co_1,S_1} = 2'b10; 
  else if ({A,B,Ci} == 3'b100)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b101)    {Co_1,S_1} = 2'b10; 
  else if ({A,B,Ci} == 3'b110)    {Co_1,S_1} = 2'b10; 
  else                            {Co_1,S_1} = 2'b11; 

endmodule
