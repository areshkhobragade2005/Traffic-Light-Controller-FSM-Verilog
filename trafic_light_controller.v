module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0] light
);

parameter RED    = 2'b00;
parameter GREEN  = 2'b01;
parameter YELLOW = 2'b10;

reg [1:0] state;
reg [3:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= RED;
        count <= 0;
    end

    else
    begin
        case(state)

        RED:
        begin
            if(count==4)
            begin
                state <= GREEN;
                count <= 0;
            end
            else
                count <= count+1;
        end

        GREEN:
        begin
            if(count==4)
            begin
                state <= YELLOW;
                count <= 0;
            end
            else
                count <= count+1;
        end

        YELLOW:
        begin
            if(count==2)
            begin
                state <= RED;
                count <= 0;
            end
            else
                count <= count+1;
        end

        default:
        begin
            state <= RED;
            count <= 0;
        end

        endcase
    end
end

always @(*)
begin
    case(state)

    RED:
        light = 3'b100;

    GREEN:
        light = 3'b001;

    YELLOW:
        light = 3'b010;

    default:
        light = 3'b100;

    endcase
end

endmodule
