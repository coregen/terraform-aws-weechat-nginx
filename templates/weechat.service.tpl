[Unit]
Description=A headless WeeChat client and relay service 
After=network.target

[Service]
Type=forking
ExecStart=/usr/bin/weechat-headless --daemon
User=weechat
EnvironmentFile=${weechat_env_file_path}

[Install]
WantedBy=default.target
