#!/bin/bash
function curl_download()
{
    #从1爬取到1000，成功则下载，失败输出进度
for variable in {1..1000}
do
    #curl 请求
    info=`curl -I -m 10 -o /dev/null -s -w %{http_code}   http://v.51pcbook.cn/single/mind/$variable.jpg`

    #获取返回码
    
    #对响应码进行判断
    if [ "$info" == "200" ];then
       curl -O http://v.51pcbook.cn/single/mind/$variable.jpg
    else
    	echo $variable   
    fi
done
}

curl_download

