cd ~/quokka
# Before execution the enviroment variable QUOKKA_SERVER must be set to: 
#       <localhost> when running all together 
#       <IP|FQDN> remote instalation of core functions
sudo python3 workers/quokka_worker.py -H ${1:-15} -W capture -Q ${QUOKKA_SERVER} -S 111-111-111 -C rabbitmq &
sudo python3 workers/quokka_worker.py -H ${1:-15} -W portscan -Q ${QUOKKA_SERVER} -S 111-111-111 -C rabbitmq &
sudo python3 workers/quokka_worker.py -H ${1:-15} -W traceroute -Q ${QUOKKA_SERVER} -S 111-111-111 -C rabbitmq &
