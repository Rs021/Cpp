screen -X -S &quot;csserver&quot; quit;
screen -X -S &quot;csserver&quot; stuff &quot;^C&quot;;
fuser -k 27015/udp;
cd /root/csserver/;
screen -A -m -d -S csserver ./hlds_run -game cstrike -secure +map de_dust2 +ip 10.158.0.3 +port 27015 +maxplayers 32 +sys_ticrate 1000 -pingboost 3 +exec server.cfg;
echo &quot;==========Servidor Foi iniciado com sucesso!!!==========&quot;
screen -r;