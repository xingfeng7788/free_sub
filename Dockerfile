# 使用官方 Python 基础镜像
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 复制依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制所有代码
COPY . .

# 暴露端口（根据实际应用修改端口，如5000或8000）
EXPOSE 5000

# 运行命令，假设使用python启动app.py
CMD ["python", "app.py"]