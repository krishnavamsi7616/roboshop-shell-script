yum install golang -y

useradd roboshop

curl -L -s -o /tmp/dispatch.zip https://github.com/roboshop-devops-project/dispatch/archive/refs/heads/main.zip
unzip -o /tmp/dispatch.zip
mv dispatch-main dispatch
cd dispatch
go mod init dispatch
go get
go build

'''
```

1. Update the systemd file and configure the dispatch service in systemd

```bash
# mv /home/roboshop/dispatch/systemd.service /etc/systemd/system/dispatch.service
# systemctl daemon-reload
# systemctl enable dispatch
# systemctl start dispatch
```