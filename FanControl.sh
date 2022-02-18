# activate as manual control mode
sudo ipmitool -I lanplus -U root -P *020jackchen* -H 192.168.31.2 raw 0x30 0x30 0x01 0x00
sudo ipmitool -I lanplus -U root -P *020jackchen* -H 192.168.31.2 raw 0x30 0x30 0x02 0xff 0x0f

# ipmi用户名：登录iDRAC的用户名，默认为 root
# ipmi密码：登录iDRAC的密码，默认为 calvin
# 服务器地址： iDRAC的服务器IP，不是系统或虚拟机的IP
# 首先停止服务器的自动风扇控制，最后一位0x00表示停止自动风扇控制，0x01为开启自动风扇控制。
# 0xff 等于所有风扇
# 0x18 你期望风扇运行的转速百分比，原厂的暴力扇应该为12000rpm,这是 24 的16进制
# 0x0a 10%  0x0f 15% 0x14 20% 0x12 18%

sudo ipmitool sensor list | grep degrees
