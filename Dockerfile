# 使用Windows 10作为基础镜像
FROM mcr.microsoft.com/windows:10.0.19043.1237

# 设置工作目录
WORKDIR /app

# 安装 chocolatey 包管理器
RUN powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; \
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; \
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

# 安装 Visual Studio 2022
RUN choco install visualstudio2022professional -y

# 安装 CMake
RUN choco install cmake -y

# 安装 Git
RUN choco install git -y

# 安装 MongoDB
RUN choco install mongodb -y

# 安装 MongoDB C++ Driver
RUN choco install mongodb-cxx-driver -y

# 安装 MongoDB C Driver
RUN choco install mongodb-c-driver -y

# 安装 Boost
RUN choco install boost-msvc-14.2 -y

# 设置环境变量
ENV PATH="C:\Program Files\MongoDB\Server\5.0\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\VC\Tools\MSVC\14.30.30705\bin\Hostx64\x64;C:\Program Files\CMake\bin;C:\Program Files\Git\cmd;C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\MSBuild\Current\Bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\VC\Tools\MSVC\14.30.30705\bin\Hostx64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional\VC\Auxiliary\Build;C:\boost\boost_1_77_0\lib64-msvc-14.2;C:\boost\boost_1_77_0\stage\lib;C:\boost\boost_1_77_0\include\boost-1_77"

# 执行命令
CMD [ "powershell" ]