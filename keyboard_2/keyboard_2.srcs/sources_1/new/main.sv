`timescale 1ns / 1ps
/*
module main(input key_y[3:0], key_x[2:0],
            output reg [6:0]digit1);
            
            wire one =      (key_y[0] & key_x[0]);
            wire two =      (key_y[0] & key_x[1]);
            wire three =    (key_y[0] & key_x[2]);
            wire four =     (key_y[1] & key_x[0]);
            wire five =     (key_y[1] & key_x[1]);
            wire six =      (key_y[1] & key_x[2]);
            wire seven =    (key_y[2] & key_x[0]);
            wire eight =    (key_y[2] & key_x[1]);
            wire nine =     (key_y[2] & key_x[2]);
            wire zero =     (key_y[3] & key_x[1]);

            always @(posedge one or
                     posedge two or
                     posedge three or
                     posedge four or
                     posedge five or
                     posedge six or
                     posedge seven or
                     posedge eight or
                     posedge nine or
                     posedge zero) begin
                     
                     if (one) digit1 <= 7'b0110000;
                     else if (two) digit1 <= 7'b1011011;
                     else if (three) digit1 <= 7'b1001111;
                     else if (four) digit1 <= 7'b1100110;
                     else if (five) digit1 <= 7'b1101101;
                     else if (six) digit1 <= 7'b1111101;
                     else if (seven) digit1 <= 7'b0000111;
                     else if (eight) digit1 <= 7'b1111111;
                     else if (nine) digit1 <= 7'b1101111;
                     else digit1 <= 7'b0111111;
            end
endmodule
*/

module main(input key_y[3:0], key_x[2:0],
            output reg digit1[6:0]);
            
            wire one =      (key_y[0] & key_x[0]);
            wire two =      (key_y[0] & key_x[1]);
            wire three =    (key_y[0] & key_x[2]);
            wire four =     (key_y[1] & key_x[0]);
            wire five =     (key_y[1] & key_x[1]);
            wire six =      (key_y[1] & key_x[2]);
            wire seven =    (key_y[2] & key_x[0]);
            wire eight =    (key_y[2] & key_x[1]);
            wire nine =     (key_y[2] & key_x[2]);
            wire zero =     (key_y[3] & key_x[1]);
            (* dont_touch = "true" *)reg [3:0] q = 4'd0;

            always @(posedge one or
                     posedge two or
                     posedge three or
                     posedge four or
                     posedge five or
                     posedge six or
                     posedge seven or
                     posedge eight or
                     posedge nine or
                     posedge zero) begin
                     
                     if (one) q <= 4'd1;
                     else if (two) q <= 4'd2;
                     else if (three) q <= 4'd3;
                     else if (four) q <= 4'd4;
                     else if (five) q <= 4'd5;
                     else if (six) q <= 4'd6;
                     else if (seven) q <= 4'd7;
                     else if (eight) q <= 4'd8;
                     else if (nine) q <= 4'd9;
                     else q <= 4'd0;
            end

            assign digit1[0] = (q == 2) |
                               (q == 3) |
                               (q == 5) |
                               (q == 6) |
                               (q == 7) |
                               (q == 8) |
                               (q == 9) |
                               (q == 0);

            assign digit1[1] = (q == 1) |
                               (q == 2) |
                               (q == 3) |
                               (q == 4) |
                               (q == 7) |
                               (q == 8) |
                               (q == 9) |
                               (q == 0);

            assign digit1[2] = (q == 1) |
                               (q == 3) |
                               (q == 4) |
                               (q == 5) |
                               (q == 6) |
                               (q == 7) |
                               (q == 8) |
                               (q == 9) |
                               (q == 0);

            assign digit1[3] = (q == 2) |
                               (q == 3) |
                               (q == 5) |
                               (q == 6) |
                               (q == 8) |
                               (q == 9) |
                               (q == 0);
                               
            assign digit1[4] = (q == 2) |
                               (q == 6) |
                               (q == 8) |
                               (q == 0);
             
            assign digit1[5] = (q == 4) |
                               (q == 5) |
                               (q == 6) |
                               (q == 8) |
                               (q == 9) |
                               (q == 0);
             
            assign digit1[6] = (q == 2) |
                               (q == 3) |
                               (q == 4) |
                               (q == 5) |
                               (q == 6) |
                               (q == 8) |
                               (q == 9);
endmodule
