// Ch03 wire_and_or.v
// �s���u (wire, wired-and, wired-or)

module wire_and_or(A, B, C, D, E);
input  A,B;
output C,D,E;
wire   An;  // �ŧi���~�H�� An �� wire ���
wand   D;   // �ŧi��X�� D �� wand ���
wor    E;   // �ŧi��X�� E �� wor ���

// wire
assign An = ~A;
assign C  = An & B;    // C = /A�DB

// wired-and
assign D = A;
assign D = B;

// wired-or
assign E = A;
assign E = B;

endmodule
