module ex1_tab1(input wire A, B, C, output wire Y);
    
    not A1(notA, A);
    not A2(notB, B);
    not A3(notC, C);

    and A4(I, notA, notC);
    and A5(J, A, C);
    and A6(K, A, notB);

    or A7(Y, I, J, K);

endmodule

module ex1_tab2(input wire A, B, C, output wire Y);

    assign Y = ~B;

endmodule

module ex1_tab3(input wire A, B, C, D, output wire Y);

    assign Y = (~A&~B&~C&~D)|(A&B&~C&~D)|(~A&B&~C&D)|(A&~B&~C&D)|(~A&~B&C&D)|(A&B&C&D)|(~A&B&C&~D)|(A&~B&C&~D);

endmodule

module ex1_tab4(input wire A, B, C, D, output wire Y);

    assign Y = (B&D)|(A&C)|(A&B)|(~B&~D);

endmodule

module ex2_tab1(input wire A, B, C, D, output wire Y);

    assign Y = (A&~C)|(A&~B)|(A&~D)|(~B&~C&~D);

endmodule

module ex2_tab2(input wire A, B, C, output wire Y);

    not A7(W1, B);
    or A8(Y, W1, C);

endmodule

module ex2_tab3(input wire A, B, C, D, output wire Y);

    not U1(U1, C);
    and U2(U2, U1, D);
    and U3(U3, A, D);
    or U4(Y, B, U2, U3);
    

endmodule

module ex2_tab4(input wire A, B, C, output wire Y);

    not A13(W6, A);
    not A14(W7, C);
    and A15(W8, W6, W7);
    or A16(Y, W8, B);

endmodule

