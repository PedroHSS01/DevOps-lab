#!/bin/bash

# Configuração do arquivo de log
LOG_DIR="$HOME/devops-lab/server-stats/logs"
LOG_FILE="$LOG_DIR/server-stats_$(date +%Y%m%d_%H%M%S).log"

# Redirecionar toda a saída para o arquivo de log
{
    echo "====================================="
    echo " ESTATÍSTICAS DO SERVIDOR"
    echo "====================================="
    echo "Data e Hora: $(date '+%d/%m/%Y %H:%M:%S')"
    echo ""
    echo "Informações da CPU"
    top -bn1 | grep "Cpu"
    echo ""
    echo "Informações de Memória"
    free -h
    echo ""
    echo "Informações de Disco"
    df -h /
    echo ""
    echo "Processos por CPU"
    ps aux --sort=-%cpu | head -6
    echo ""
    echo "Sistema Operacional"
    echo "Sistema: $(uname -o)"
    echo ""
    echo "Número de CPUs: $(nproc)"
    echo "Kernel: $(uname -r)"
    echo ""
    echo "Tempo de atividade"
    echo "Uptime: $(uptime -p)"
    echo ""
    echo "Usuários conectados"
    echo "Usuários: $(who | wc -l)"
    echo ""
    echo "Análise de mensagens de erro encontradas ao executar \`dmesg\` no WSL2 (Windows Subsystem for Linux)."
    dmesg | grep -i "error\|fail\|critical" | grep -v "Correctable Errors collector"
    echo ""
} > "$LOG_FILE" 2>&1

# Mensagem de confirmação no terminal
echo "✓ Estatísticas salvas em: $LOG_FILE"
