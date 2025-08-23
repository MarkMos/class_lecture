import numpy as np

try:
    from classy import Class
    cosmo = Class()
    cosmo.set({'output':'mPk,tCl'})
    Cl = cosmo.raw_cl()
    print(f"Classy succesfully run, CMB Cls computed up to l={Cl['ell'][-1]}")
except Exception as error:
    print("Something has gone wrong!")
    print("Error message:", error)
