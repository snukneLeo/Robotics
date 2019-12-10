import math

def fk(t1,t2,t4,d3):
    Px = 0.3*math.cos(t1+t2) + 0.3*math.cos(t1)
    Py = 0.3 * math.sin(t1 + t2) + 0.3 * math.sin(t1)
    Pz = -d3
    alfaZeta = t1+t2-t4
    return (Px,Py,Pz,alfaZeta)


def ik(x,y,z,alfaZeta):
    #compute theta2
    c2 = (math.pow(x,2) + math.pow(y,2))/0.18 -1
    s2 = math.sqrt(1-math.pow(c2,2))
    t2 = math.atan2(s2,c2)

    c1 = (s2*y + (c2+1)*x)/(0.6*(c2+1))
    s1 = math.sqrt(1 - math.pow(c1, 2))
    t1 = math.atan2(s1,c1)

    d3 = -z

    t4 = t1+t2-alfaZeta

    return (t1,t2,t4,d3)



def workspace(x,y,z):
    limit = (0.3*math.cos(143.239)) - (0.3*math.sin((114.592-90)/2))

    if math.sqrt(math.pow(x,2) + math.pow(y,2)) > 0.6: #fuori dal raggio
        return False
    if x < 0.6 * math.cos(143.239):
        return False
    if x < limit:
        return False
    return True
def mode():
   # return input("Modalità cinemtica diretta digitare 1 altrimenti 2 per cinematica inversa: ")
   return None
#print(workspace(-0.3,0.1,9))

print(fk(0,0,0,0))
print(ik(0,0.6,0,0))

