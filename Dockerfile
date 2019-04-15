FROM mono
MAINTAINER w2w
# 将github项目拷贝至/app/目录
RUN mkdir /app
COPY . /app   
# 使用msbuild编译项目
RUN msbuild /app/OperationTridentBackEnd.sln /t:Build /p:Configuration=Release
# 运行项目
CMD ["mono", "/app/OperationTridentBackEnd/bin/Release/OperationTridentBackEnd.exe"]
EXPOSE 8000
