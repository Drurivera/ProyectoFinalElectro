import matplotlib.pyplot as plt
import numpy as np

sigma_0 = 3
a = 2
b = 3
k = 1
E_r = 3
E_r2 = 5

theta = np.linspace(0,2*np.pi,360)
r = np.arange(0,a, 0.1)
r_2 = np.arange(a,a+0.1, 0.05)
r_3 = np.arange(b,b+0.1, 0.05)
r_4 = np.arange(a,(b)+0.1, 0.05)

tt, rr = np.meshgrid(theta, r)
tt_2, rr_2 = np.meshgrid(theta, r_2)
tt_3, rr_3 = np.meshgrid(theta, r_3)
tt_4, rr_4 = np.meshgrid(theta, r_4)

z_1 = 0*rr+0*tt
z_2 = k*np.exp(-(a*a)/sigma_0)+0*rr_2+0*tt_2
z_3 = k*np.exp(-(b*b)/sigma_0)+0*rr_3+0*tt_3
z_4 = ((-k*np.exp(-(rr_4*rr_4)/sigma_0))/(rr_4))+((2*k*np.exp(-(rr_4*rr_4)/sigma_0))/(sigma_0))

ax = plt.subplot(111, polar=True)
ax.set_yticklabels([])
ctf = ax.contourf(theta, r, z_1)
ctf_2 = ax.contourf(theta, r_2, z_2)
ctf_3 = ax.contourf(theta, r_3, z_3)
ctf_4 = ax.contourf(theta, r_4, z_4)

#plt.colorbar(ctf)
plt.colorbar(ctf_4)

h = plt.contourf(theta,r,z_1)
h_2 = plt.contourf(theta,r_2,z_2)
h_3 = plt.contourf(theta,r_3,z_3)
h_4 = plt.contourf(theta,r_4,z_4)

plt.savefig('hist12.png', dpi = 300, bbox_inches = 'tight', facecolor='w')

plt.show()