import matplotlib.pyplot as plt
import numpy as np



Q = 1
a = 2
b = 3
k = 1
E_r = 3
E_r2 = 5


theta = np.linspace(0,2*np.pi,360)
r = np.arange(0,2, 0.1)
r_2 = np.arange(a,a+0.1, 0.05)
r_3 = np.arange(b,b+0.1, 0.05)
r_4 = np.arange(2*b,(2*b)+0.1, 0.05)
r_5 = np.arange(a,b,0.1)
r_6 = np.arange(b,2*b,0.1)



tt, rr = np.meshgrid(theta, r)
tt_2, rr_2 = np.meshgrid(theta, r_2)
tt_3, rr_3 = np.meshgrid(theta, r_3)
tt_4, rr_4 = np.meshgrid(theta, r_4)
tt_5, rr_5 = np.meshgrid(theta, r_5)
tt_6, rr_6 = np.meshgrid(theta, r_6)


z_1 = 0*rr+0*tt
z_2 = (Q/(4*3.1416*a*a))*(1-(1/(E_r)))+0*rr_2+0*tt_2
z_3 = (Q/(4*3.1416*b*b))*(1-(1/(E_r)))+0*rr_3+0*tt_3
z_4 = (-4*k*b*b)+0*rr_4+0*tt_4
z_5 = 4*k*rr_5+0*tt_5
z_6 = -Q/(rr_6*E_r2)+0*tt_6

ax = plt.subplot(111, polar=True)
ax.set_yticklabels([])
ctf = ax.contourf(theta, r, z_1)
ctf_2 = ax.contourf(theta, r_2, z_2)
ctf_3 = ax.contourf(theta, r_3, z_3)
ctf_4 = ax.contourf(theta, r_4, z_4)
ctf_5 = ax.contourf(theta, r_5, z_5)
ctf_6 = ax.contourf(theta, r_6, z_6)

#plt.colorbar(ctf)
plt.colorbar(ctf_6)


h = plt.contourf(theta,r,z_1)
h_2 = plt.contourf(theta,r_2,z_2)
h_3 = plt.contourf(theta,r_3,z_3)
h_4 = plt.contourf(theta,r_4,z_4)
h_5 = plt.contourf(theta,r_5,z_5)
h_5 = plt.contourf(theta,r_6,z_6)
plt.savefig('hist12.png', dpi = 300, bbox_inches = 'tight', facecolor='w')

plt.show()