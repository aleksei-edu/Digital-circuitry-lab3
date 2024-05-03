/*******************************************************
*  AN7   AN6   AN5   AN4  | AN3   AN2   AN1   AN0
*   |     |     |     |   |  |     |     |     |
*   __    __    __    __  |  __    __    __    __
*  |__|  |__|  |__|  |__| | |__|  |__|  |__|  |__|
*  |__|. |__|. |__|. |__|.| |__|. |__|. |__|. |__|.
*      
*  | |   | |   | |   | |  |  | |   | |   | |   | |
* CA CB CC CD CE CF CG DP | CA CB CC CD CE CF CG DP
********************************************************/

/********************************************************
*              _____
*          ___|  A  |___
*         |   |-----|   |
*         | F |     | B |
*         |___|-----|___|
*          ___|  G  |___
*         |   |-----|   |
*         | E |     | C |
*         |___|_____|___|     ---
*             |  D  |        | P |
*              -----          ---
*********************************************************/
module anode_control (
  input [1:0] refreshcounter,
  output reg [3:0] anode = 0
);

always @(refreshcounter) begin
  case (refreshcounter)
    2'b00: 
      anode = 4'b1110; // digit 1 ON
    2'b01:
      anode = 4'b1101; // digit 2 ON
    2'b10:
      anode = 4'b1011; // digit 3 ON
    2'b11:
      anode = 4'b0111; // digit 4 ON 
  endcase
  
end
  
endmodule