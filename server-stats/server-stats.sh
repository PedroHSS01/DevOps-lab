#!/bin/bash

echo "====================================="
echo " ESTATÍSTICAS DO SERVIDOR"
echo "===================================="
echo "Data e Hora: $(date '+%d/%m/%Y %H:%M:%S')"
echo""
echo "Informações da CPU"
top -bn1 | grep "Cpu"
echo""
echo "Informações de Memorória"
free -h
echo""
echo "Informações de Disco"
df -h /
echo""
echo "Processos por CPU"
ps aux --sort=-%cpu | head -6
echo""
echo "Sistema Operacional"
echo "Sistema: $(uname -o)"
echo""
echo "Número de CPUs: $(nproc)"
echo "Kernel: $(uname -r)"
echo""
echo "Tempo de atividade"
echo "Uptime: $(uptime -p)"
echo""
echo "Usuários conectados"
echo "Usuários: $(who | wc -l)"
echo""

