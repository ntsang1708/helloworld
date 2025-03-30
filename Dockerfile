FROM jenkins/jenkins:lts

# Chuyển sang user root để cài đặt các gói cần thiết
USER root

# Cập nhật hệ thống và thêm repository Docker chính thức (dành cho CentOS, có thể áp dụng cho AlmaLinux)
RUN dnf -y update && \\
    dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo && \\
    dnf -y install docker-ce docker-ce-cli containerd.io && \\
    dnf clean all

# (Tùy chọn) Cài đặt sudo nếu cần
RUN dnf install -y sudo

# Thêm user jenkins vào nhóm docker để cho phép chạy lệnh docker mà không cần quyền root
RUN usermod -aG docker jenkins

# Quay lại người dùng jenkins
USER jenkins
