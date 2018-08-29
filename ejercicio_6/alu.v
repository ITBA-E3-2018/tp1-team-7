/*opcodes:
000: addition
001: difference
010: and
011: or
100: not
101: xor
110: a2 complement
111: shift left
*/

//compuertas logicas no afectan el carry ni el overflow
// caso diferencia el flag de carry se corresponde al flag de borrow



module alu (operand1, operand2, opcode, result, carryflag,  overflowflag, zeroflag, negativeflag);
    input [3:0] operand1, operand2; 
    input [2:0] opcode;
    output reg [3:0] result;
    output reg carryflag, zeroflag, overflowflag, negativeflag;

    //local params for output selection
    wire [3:0] sum, diff, logicand, logicor, logicnot, logicxor, a2complement, shiftleft;
    wire sum_carry, diff_carry, logic_carry, a2complement_carry, shiftleft_carry;
    wire sum_ov, diff_ov, logic_ov, a2complement_ov, shiftleft_ov;
    wire sum_z, diff_z, logicand_z, logicor_z, logicnot_z, logicxor_z, a2complement_z, shiftleft_z;
    wire  sum_n, diff_n, logicand_n, logicor_n, logicnot_n, logicxor_n, a2complement_n, shiftleft_n;


    add_operator add (
        .operand1(operand1),
        .operand2(operand2),
        .result(sum),
        .carryflag(sum_carry),
        .overflow(sum_ov),
        .zeroflag(sum_z),
        .negflag(sum_n)
    );//addition

    not_l n (
        .operand1(operand1),
        .result(logicnot),
        .carryflag(logic_carry),
        .overflow(logic_ov),
        .zeroflag(logicnot_z),
        .negflag(logicnot_n)
    );//not

     a2 ca (
        .operand1(operand1),
        .result(a2complement),
        .carryflag(a2complement_carry),
        .overflow(a2complement_ov),
        .zeroflag(a2complement_z),
        .negflag(a2complement_n)
    );//a2 complement

    and_l a (
        .operand1(operand1),
        .operand2(operand2),
        .result(logicand),
        .carryflag(logic_carry),
        .overflow(logic_ov),
        .zeroflag(logicand_z),
        .negflag(logicand_n)
    );//and

        or_l o (
        .operand1(operand1),
        .operand2(operand2),
        .result(logicor),
        .carryflag(logic_carry),
        .overflow(logic_ov),
        .zeroflag(logicor_z),
        .negflag(logicor_n)
    );//or

    xor_l x (
        .operand1(operand1),
        .operand2(operand2),
        .result(logicxor),
        .carryflag(logic_carry),
        .overflow(logic_ov),
        .zeroflag(logicxor_z),
        .negflag(logicxor_n)
    );//xor

    shift_left sl (
        .operand1(operand1),
        .result(shiftleft),
        .carryflag(shiftleft_carry),
        .overflow(shiftleft_ov),
        .zeroflag(shiftleft_z),
        .negflag(shiftleft_n)
    );//shift left


   subs_operator s (
        .operand1(operand1),
        .operand2(operand2),
        .result(diff),
        .carryflag(diff_carry),
        .overflow(diff_ov),
        .zeroflag(diff_z),
        .negflag(diff_n)
    ); //subtraction


    

    always @(opcode) begin
        case(opcode)
            3'b000: {result, carryflag,  overflowflag, zeroflag, negativeflag}={sum, sum_carry, sum_ov, sum_z, sum_n}; //add
            3'b001: {result, carryflag,  overflowflag, zeroflag, negativeflag}={diff, diff_carry, diff_ov, diff_z, diff_n}; //difference
            3'b010: {result, carryflag,  overflowflag, zeroflag, negativeflag}={logicand, logic_carry, logic_ov, logicand_z, logicand_n};//and
            3'b011: {result, carryflag,  overflowflag, zeroflag, negativeflag}={logicor, logic_carry, logic_ov, logicor_z, logicor_n};//or
            3'b100: {result, carryflag,  overflowflag, zeroflag, negativeflag}={logicnot, logic_carry, logic_ov, logicnot_z, logicnot_n};//not
            3'b101: {result, carryflag,  overflowflag, zeroflag, negativeflag}={logicxor, logic_carry, logic_ov, logicxor_z, logicxor_n};//xor
            3'b110: {result, carryflag,  overflowflag, zeroflag, negativeflag}={a2complement, a2complement_carry, a2complement_ov, a2complement_z, a2complement_n};//a2 complement
            3'b111: {result, carryflag,  overflowflag, zeroflag, negativeflag}={shiftleft, shiftleft_carry, shiftleft_ov, shiftleft_z, shiftleft_n};//shift left
            default: {result, carryflag,  overflowflag, zeroflag, negativeflag}={sum, sum_carry, sum_ov, sum_z, sum_n};// case default is add
        endcase

    end
    
endmodule

