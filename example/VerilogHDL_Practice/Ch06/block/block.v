// Ch06 block.v
// ���j�ʻP�D���j�ʱԭz���ϥ� (�欰�ԭz)

module block (D, Clk, X, Y);
input  D,  Clk;		// D, Clk �@�줸��J
output [3:0] X, Y;	// X, Y �|�줸��X 
reg    [3:0] X, Y;	// �ŧi X, Y ���Ȧs����� 

always@ (posedge Clk)	// �ɯߤW�tĲ�o
  begin
// ���j�ʱԭz
    X[0]  = D;
    X[1]  = X[0];
    X[2]  = X[1];
    X[3]  = X[2];

// �D���j�ʱԭz
    Y[0] <= D;
    Y[1] <= Y[0];
    Y[2] <= Y[1];
    Y[3] <= Y[2];
  end

endmodule

