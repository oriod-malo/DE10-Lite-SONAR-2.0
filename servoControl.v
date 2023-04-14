`timescale 1ns / 1ps

module ServoControl(
    input clock,
	 input enable,
	 input [1:0] speed, // NOT IMPLEMENTED YET; NOT WORKING PROPERLY WITH MY SERVO MOTOR
    output servo,
	 output [9:0] angle
    );

reg [19:0]	counter;

// reg [10:0]	constant = 250;  // NOT IMPLEMENTED YET; CONSTANT IS USED FOR SPEED

reg		servo_reg = 0;
reg	 	[9:0] dir;

reg [15:0] control	=	0;
reg 		  toggle			=	1;

reg 		  toggleDir		=	0;

always @(posedge clock)
begin

if(enable==1)
begin		
	counter <= counter + 1;
	if(counter == 'd999999)
			counter <= 0;

	if(counter < ('d50000 + control))
			servo_reg <= 1;
	else
			servo_reg <= 0;
		
	if(control == 'd50000)
			toggle <= 0;
	if(control == 0)
			toggle <= 1;

	if(counter == 0)
		begin
			if(toggle == 0)
					control = control - 500;

			if(toggle == 1)
					control = control + 500;

		if (toggleDir==0)
			dir <= dir + 1;
		else
			dir <= dir - 1;
		
		if (dir==100)
			toggleDir = 1;
		if (dir==0)
			toggleDir = 0;
	end

end

end

assign servo	= servo_reg;
assign angle	= dir;

endmodule