import sys

def main():
    if len(sys.argv) != 4:
        print("Wrong parameter amount (should be 3)")
        return 0

    a = sys.argv[1] #signado
    b = sys.argv[2] #bits parte entera
    c = sys.argv[3] #bits parte fraccionaria

    if not a.isdigit() or not b.isdigit() or not c.isdigit():
        print("ERROR: Non numerical parameter inserted")
        return 0

    a = int(a)
    b = int(b)
    c = int(c)
    if a != 0 and a != 1:
        print("ERROR: Invalid sign parameter")
        return 0
    if b < 0 or c < 0:
        print("ERROR: Negative amount of bits are invalid")
        return 0
    if b == 0 and c == 0:
        print("ERROR: There are no bits to respresent number")
        return 0
    if b > 60:
	print("ERROR: B is too big")
        return 0
    if c > 60:
        print("ERROR: B is too big")
        return 0


    l = 0
    r = 0

    if a == 0: # no signado
        l = 0
        r = pow(2,b)-pow(2,-c)
    else: # signado
        l = -pow(2,b-1)
        r = pow(2,b-1)-pow(2,-c)


    print("Res: %(res)s | Ran: %(ran)s" % {'res':pow(2, -c),'ran':r-l})

if __name__ == "__main__":
    main()


