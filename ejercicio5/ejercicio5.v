module sop(input wire S, V, M, output wire Y);

    assign Y = (S&~V&~M)|(S&~V&M)|(S&V&M);

endmodule

module pos(input wire S, V, M, output wire Y);

    assign Y = (S|V|M)&(S|V|~M)&(S|~V|M)&(S|~V|~M)&(~S|~V|M);

endmodule

module karnaugh(input wire S, V, M, output wire Y);

    not A1(A1, V);
    and A2(A2, A1, S);
    and A3(A3, S, M);
    or A4(Y, A2, A3);

endmodule