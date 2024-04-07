import os

verbose = os.environ["QUANT_VERBOSE"]


def is_sorted(l, ascendent: bool = True):

    wrong_index = -1
    if ascendent:
        for i in range(len(l)-1):
            if l[i]>l[i+1]:
                wrong_index = i
                break
    else:
        for i in range(len(l)-1):
            if l[i]<l[i+1]:
                wrong_index = i
                break
    
    if wrong_index != -1:
        if verbose:
            order_type = "ascendent" if ascendent else "descendent"
            order_symbol = ">" if ascendent else "<"
            print("Given is NOT sorted (" + order_type + ") ; at " + str(wrong_index) + " : " + \
                str(l[i]) + order_symbol + str(l[i+1]) + " (list : " + str(l) + ")")
        return False

    if verbose:
        print("Given list is sorted : " + str(l))
    
    return True

