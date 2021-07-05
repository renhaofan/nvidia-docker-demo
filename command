# https://blog.anguiao.com/archives/use-proxy-when-building-docker-image.html	
##########################################################################
###################### failed to use proxy ###############################
##########################################################################
docker-compose build --build-arg HTTP_PROXY=http://127.0.0.1:8889 \
 	--build-arg HTTPS_PROXY=http://127.0.0.1:8889
 	
 docker-compose build --build-arg HTTP_PROXY=http://42.157.196.201:10778 \
 	--build-arg HTTPS_PROXY=http://42.157.196.201:10778
 	
docker-compose build --build-arg HTTP_PROXY=http://proxy.example.com:10778 \
	--build-arg HTTPS_PROXY=http://http://proxy.example.com:10778
	
 	
docker-compose build --build-arg HTTP_PROXY=http://proxy.example.com:8889 \
	--build-arg HTTPS_PROXY=http://http://proxy.example.com:8889
##########################################################################

############for this repo, try no-proxy first ############################
##########################################################################
###################### configure proxy successfully ######################
##########################################################################
docker-compose build --build-arg HTTP_PROXY=http://42.157.196.201:8889  \
 	--build-arg HTTPS_PROXY=http://42.157.196.201:8889 
##########################################################################

