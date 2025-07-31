FROM python:3.10-slim

# Cài dependency cơ bản
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip \
    gnupg \
    ca-certificates \
    fonts-liberation \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libgdk-pixbuf2.0-0 \
    libnspr4 \
    libnss3 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libxshmfence1 \
    libgtk-3-0 \
    xvfb \
 && apt-get clean

# Cài đặt Chrome từ bản chính thức
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
    rm google-chrome-stable_current_amd64.deb



# Lấy version Chrome đang cài
RUN CHROME_VERSION=$(google-chrome --version | grep -oP '\d+\.\d+\.\d+') && \
    echo "Chrome version: $CHROME_VERSION" && \
    MAJOR_VERSION=$(echo $CHROME_VERSION | cut -d'.' -f1) && \
    CHROMEDRIVER_VERSION=$(curl -sSL https://googlechromelabs.github.io/chrome-for-testing/LATEST_RELEASE_${MAJOR_VERSION}) && \
    echo "Chromedriver version: $CHROMEDRIVER_VERSION" && \
    wget -q -O /tmp/chromedriver.zip https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/${CHROMEDRIVER_VERSION}/linux64/chromedriver-linux64.zip && \
    unzip /tmp/chromedriver.zip -d /usr/local/bin/ && \
    mv /usr/local/bin/chromedriver-linux64/chromedriver /usr/local/bin/chromedriver && \
    chmod +x /usr/local/bin/chromedriver && \
    rm -rf /tmp/chromedriver.zip /usr/local/bin/chromedriver-linux64



# Cài Robot Framework và Selenium
RUN pip install --upgrade pip && \
    pip install robotframework selenium robotframework-seleniumlibrary robotframework-sshlibrary
    

# Thiết lập biến môi trường để chạy headless
ENV ROBOT_HEADLESS=true

# Mặc định CMD
CMD ["robot", "--version"]

