this folder contains the steps i took to set time zone on my machine
## Linux Timezones Commands <a id="timezones"></a>

<hr/>

### timedatectl

Display current Timezone

```bash
## this displays current timezone
timedatectl
```

<hr/>

### timedatectl list-zones

Displays a list of timezones 

```bash
## this displays a list of available timezones
timedatectl list-zones
```

<hr/>

### sudo timedatectl set-timezone <your_time_zone>

Set Timezone

```bash
## this will set timezone to your preferred timezone on the list, for example let us set for Africa/Lagos.  You have to run the command as root user or sudo user
sudo timedatectl set-timezone Africa/Lagos
```

<hr/>

