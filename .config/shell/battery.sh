battery() {
    ssh -o ConnectTimeout=5 "${1:-laptop}" 'echo "$(cat /sys/class/power_supply/BAT*/capacity)% $(cat /sys/class/power_supply/BAT*/status)"'
}
