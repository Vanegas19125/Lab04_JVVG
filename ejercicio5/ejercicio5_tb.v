module testbench();

reg s, v, m, s1, v1, m1, s2, v2, m2;
wire alarma1, alarma2, alarma3;

sop G1(s, v, m, alarma1);
pos G2(s1, v1, m1, alarma2);
karnaugh G3(s2, v2, m2, alarma3);

//Tabla SOP
initial begin
    $display("\n");
    $display("Ejercicio 5, Tabla SOP");
    $display("|---------|");
    $display("|S V M | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", s, v, m, alarma1);
    s = 0; v = 0; m = 0;
    #1 m = 1;
    #1 v = 1; m = 0;
    #1 m = 1;
    #1 s = 1; v = 0; m = 0;
    #1 m = 1;
    #1 v = 1; m = 0;
    #1 m = 1;
    #1 $display("|---------|");
end

initial begin
    #9
    $display("\n");
    $display("Ejercicio 5, Tabla POS");
    $display("|---------|");
    $display("|S V M | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", s1, v1, m1, alarma2);
    s1 = 0; v1 = 0; m1 = 0;
    #1 m1 = 1;
    #1 v1 = 1; m1 = 0;
    #1 m1 = 1;
    #1 s1 = 1; v1 = 0; m1 = 0;
    #1 m1 = 1;
    #1 v1 = 1; m1 = 0;
    #1 m1 = 1;
    #1 $display("|---------|");
end

initial begin
    #18
    $display("\n");
    $display("Ejercicio 5, Tabla con mapa de Karnaugh");
    $display("|---------|");
    $display("|S V M | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", s2, v2, m2, alarma3);
    s2 = 0; v2 = 0; m2 = 0;
    #1 m2 = 1;
    #1 v2 = 1; m2 = 0;
    #1 m2 = 1;
    #1 s2 = 1; v2 = 0; m2 = 0;
    #1 m2 = 1;
    #1 v2 = 1; m2 = 0;
    #1 m2 = 1;
    #1 $display("|---------|");
end

initial
      #50 $finish;

endmodule
