// Ch09 mux4_1.v
// �|�줸 4 �� 1 �h�u��

// ���h�q���Ҳ�
module mux4_1 (D0,D1,D2,D3,S,Y);
input  [3:0] D0,D1,D2,D3;	// �|�줸��J
input  [1:0] S;			// �G�줸��J
output [3:0] Y;			// �|�줸��X
reg    [3:0] W1,W2,Y;		// �ŧi���Ȧs�����
 
always@ (D0 or D1 or D2 or D3 or S)
  begin
    W1 = mux(D1,D0,S[0]);
    W2 = mux(D3,D2,S[0]);
    Y  = mux(W2,W1,S[1]);
  end
//-----------------------------------------------
// �]�p��� (�|�줸 2 �� 1 �h�u��)
function [3:0] mux;
input [3:0] A,B;	// �|�줸��J
input S;		// �@�줸��J	
  mux = S ? A : B;
endfunction

endmodule
