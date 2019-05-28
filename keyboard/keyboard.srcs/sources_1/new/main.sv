`timescale 1ns / 1ps

module main (input key_y[3:0], key_x[2:0],
             output digit1[6:0]);
             assign digit1[0] = (key_y[0] & key_x[1]) | // 2
                                (key_y[0] & key_x[2]) | // 3
                                (key_y[1] & key_x[1]) | // 5
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[0]) | // 7
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]) | // 9
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[1] = (key_y[0] & key_x[0]) | // 1
                                (key_y[0] & key_x[1]) | // 2
                                (key_y[0] & key_x[2]) | // 3
                                (key_y[1] & key_x[0]) | // 4
                                (key_y[2] & key_x[0]) | // 7
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]) | // 9
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[2] = (key_y[0] & key_x[0]) | // 1
                                (key_y[0] & key_x[2]) | // 3
                                (key_y[1] & key_x[0]) | // 4
                                (key_y[1] & key_x[1]) | // 5
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[0]) | // 7
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]) | // 9
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[3] = (key_y[0] & key_x[1]) | // 2
                                (key_y[0] & key_x[2]) | // 3
                                (key_y[1] & key_x[1]) | // 5
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]) | // 9
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[4] = (key_y[0] & key_x[1]) | // 2
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[5] = (key_y[1] & key_x[0]) | // 4
                                (key_y[1] & key_x[1]) | // 5
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]) | // 9
                                (key_y[3] & key_x[1]);  // 0

             assign digit1[6] = (key_y[0] & key_x[1]) | // 2
                                (key_y[0] & key_x[2]) | // 3
                                (key_y[1] & key_x[0]) | // 4
                                (key_y[1] & key_x[1]) | // 5
                                (key_y[1] & key_x[2]) | // 6
                                (key_y[2] & key_x[1]) | // 8
                                (key_y[2] & key_x[2]);  // 9
endmodule
