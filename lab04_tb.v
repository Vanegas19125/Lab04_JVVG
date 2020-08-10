module testbench();

  reg p1, p2, p3, p4, p5, p6,p11,p22,p33,p44,p111,p222,p333,p444,p1111,p2222,p3333,p4444;
  reg p7, p8, p9, px, py, pz, pw, j, v , g;
  wire sal1, sal2, sal3, sal4, sal5, sal6, sal7, sal8;

  ex1_tab1 G1(p1, p2, p3, sal1);
  ex1_tab2 G2(p4, p5, p6, sal2);
  ex1_tab3 G3(p11,p22,p33,p44, sal3);
  ex1_tab4 G4(p111,p222,p333,p444, sal4);
  ex2_tab1 G5(p1111,p2222,p3333,p4444, sal5);
  ex2_tab2 G6(p7,p8,p9,sal6);
  ex2_tab3 G7(px, py, pz, pw,sal7);
  ex2_tab4 G8(j,v,g,sal8);
  

// tabla 1 del ejercico 1 con Gate Level
  initial begin
    $display("\n");
    $display("Ejercicio 1 ; Tabla 1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", p1, p2, p3, sal1);
    p1 = 0; p2 = 0; p3 = 0;
    #1 p3 = 1;
    #1 p2 = 1; p3 = 0;
    #1 p3 = 1;
    #1 p1 = 1; p2 = 0; p3 = 0;
    #1 p3 = 1;
    #1 p2 = 1; p3 = 0;
    #1 p3 = 1;
    #1 $display("|---------|");

    end
// tabla 2 del ejercico 1 con operadores
  initial begin
    #9
    $display("\n");
    $display("Ejercicio 1 ; Tabla 2");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", p4, p5, p6, sal2);
    p4 = 0; p5 = 0; p6 = 0;
    #1 p6 = 1;
    #1 p5 = 1; p6 = 0;
    #1 p6 = 1;
    #1 p4 = 1; p5 = 0; p6 = 0;
    #1 p6 = 1;
    #1 p5 = 1; p6 = 0;
    #1 p6 = 1;
    #1 $display("|---------|");
    end
// tabla 3 del ejercico 1 con operadores
    initial begin
    #18
    $display("\n");
    $display("Ejercicio 1 ; Tabla 3");
    $display("|-----------|");
    $display("|A B C D | Y|");
    $display("|--------|--|");
    $monitor("|%b %b %b %b | %b|", p11, p22, p33,p44, sal3);
    p11 = 0; p22 = 0; p33 = 0; p44 = 0;
    #1 p44 = 1;
    #1 p33 = 1; p44 = 0;
    #1 p44 = 1;
    #1 p22 = 1; p33 = 0; p44 = 0;
    #1 p44 = 1;
    #1 p33 = 1; p44 = 0;
    #1 p44 = 1;
    #1 p11 = 1; p22 = 0; p33 = 0; p44 = 0;
    #1 p44 = 1;
    #1 p33 = 1; p44 = 0;
    #1 p44 = 1;
    #1 p22 = 1; p33 = 0; p44 = 0;
    #1 p44 = 1;
    #1 p33 = 1; p44 = 0;
    #1 p44 = 1;
    #1 $display("|-----------|");
    end
//tabla 4 del ejercicio 1 con operadores
    initial begin
    #35
    $display("\n");
    $display("Ejercicio 1 ; Tabla 4");
    $display("|-----------|");
    $display("|A B C D | Y|");
    $display("|--------|--|");
    $monitor("|%b %b %b %b | %b|", p111, p222, p333,p444, sal4);
    p111 = 0; p222 = 0; p333 = 0; p444 = 0;
    #1 p444 = 1;
    #1 p333 = 1; p444 = 0;
    #1 p444 = 1;
    #1 p222 = 1; p333 = 0; p444 = 0;
    #1 p444 = 1;
    #1 p333 = 1; p444 = 0;
    #1 p444 = 1;
    #1 p111 = 1; p222 = 0; p333 = 0; p444 = 0;
    #1 p444 = 1;
    #1 p333 = 1; p444 = 0;
    #1 p444 = 1;
    #1 p222 = 1; p333 = 0; p444 = 0;
    #1 p444 = 1;
    #1 p333 = 1; p444 = 0;
    #1 p444 = 1;
    #1 $display("|-----------|");
    end
//tabla 1 del ejercicio 2 con operadores
    initial begin
    #52
    $display("\n");
    $display("Ejercicio 2 ; Tabla 1");
    $display("|-----------|");
    $display("|A B C D | Y|");
    $display("|--------|--|");
    $monitor("|%b %b %b %b | %b|", p1111, p2222, p3333,p4444, sal5);
    p1111 = 0; p2222 = 0; p3333 = 0; p4444 = 0;
    #1 p4444 = 1;
    #1 p3333 = 1; p4444 = 0;
    #1 p4444 = 1;
    #1 p2222 = 1; p3333 = 0; p4444 = 0;
    #1 p4444 = 1;
    #1 p3333 = 1; p4444 = 0;
    #1 p4444 = 1;
    #1 p1111 = 1; p2222 = 0; p3333 = 0; p4444 = 0;
    #1 p4444 = 1;
    #1 p3333 = 1; p4444 = 0;
    #1 p4444 = 1;
    #1 p2222 = 1; p3333 = 0; p4444 = 0;
    #1 p4444 = 1;
    #1 p3333 = 1; p4444 = 0;
    #1 p4444 = 1;
    #1 $display("|-----------|");
    end
//tabla 2 del ejercicio 2 con Gate Level
    initial begin
    #69
    $display("\n");
    $display("Ejercicio 2 ; Tabla 2");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", p7, p8, p9, sal6);
    p7 = 0; p8 = 0; p9 = 0;
    #1 p9 = 1;
    #1 p8 = 1; p9 = 0;
    #1 p9 = 1;
    #1 p7 = 1; p8 = 0; p9 = 0;
    #1 p9 = 1;
    #1 p8 = 1; p9 = 0;
    #1 p9 = 1;
    #1 $display("|---------|");
    end
//tabla 3 del ejercicio 2 con Gate Level
    initial begin
    #78
    $display("\n");
    $display("Ejercicio 2 ; Tabla 3");
    $display("|-----------|");
    $display("|A B C D | Y|");
    $display("|--------|--|");
    $monitor("|%b %b %b %b | %b|", px, py, pz, pw, sal7);
    px = 0; py = 0; pz = 0; pw = 0;
    #1 pw = 1;
    #1 pz = 1; pw = 0;
    #1 pw = 1;
    #1 py = 1; pz = 0; pw = 0;
    #1 pw = 1;
    #1 pz = 1; pw = 0;
    #1 pw = 1;
    #1 px = 1; py = 0; pz = 0; pw = 0;
    #1 pw = 1;
    #1 pz = 1; pw = 0;
    #1 pw = 1;
    #1 py = 1; pz = 0; pw = 0;
    #1 pw = 1;
    #1 pz = 1; pw = 0;
    #1 pw = 1;
    #1 $display("|-----------|");
    end
//tabla 4 del ejercicio 2 con Gate level
    initial begin
    #95
    $display("\n");
    $display("Ejercicio 2 ; Tabla 4");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", j, v, g, sal8);
    j = 0; v = 0; g = 0;
    #1 g = 1;
    #1 v = 1; g = 0;
    #1 g = 1;
    #1 j = 1; v = 0; g = 0;
    #1 g = 1;
    #1 v = 1; g = 0;
    #1 g = 1;
    #1 $display("|---------|");
    #1 $display("\n");
    #1 $display("se ve mal la tabla, porque el gtk Wave esta comentado, pero los datos estan bien :D");
    end

    initial
      #110 $finish;
    
    
  //initial begin
    //#0104
    //$dumpfile("lab04_tb.vcd");
    //$dumpvars(0, testbench);     
    //end
endmodule
