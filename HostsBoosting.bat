@echo	off
set	release=2012-11-11	11:11:11


echo	Hosts自动修改脚本
echo			更新时间：%release%
ver	|	find	"5."	>nul
if	errorlevel	1	echo.&	echo	请确认您已经以管理员身份运行

if	exist	%windir%\system32\drivers\etc\hosts	(
							takeown	/a	/f	%windir%\system32\drivers\etc\hosts
							ICACLS	%windir%\system32\drivers\etc\hosts	/Grant	Administrators:F
							)

cls
echo.	
echo.	Hosts是包含网址与IP的网络连接增强文件，合理使用可以加速网络连接，突破封锁，去除广告等。使用前请关闭所谓的安全卫士、管家，以免干扰程序的正常工作.
echo.	本脚本将更新Google	Github	Twitter	Facebook	Wiki	Apple	Dropbox等ip,以及部分过滤广告IP.
echo.	程序开源，请确保程序是从官方网址获取，用户自由选择是否继续执行，作者不承担任何责任。
echo.	即将更新系统Hosts，按任意键表示你同意条款并继续
pause


if	exist	%windir%\System32\drivers\etc\hosts.backup1	del	%windir%\System32\drivers\etc\hosts.backup1	/q
if	exist	%windir%\System32\drivers\etc\hosts.backup	ren	%windir%\System32\drivers\etc\hosts.backup	hosts.backup1
if	exist	%windir%\System32\drivers\etc\hosts	ren	%windir%\System32\drivers\etc\hosts	hosts.backup
ren	%windir%\System32\drivers\etc\hostsdsw248	hosts


cls
echo.	
echo.		更新中，请耐心等待……


echo	Basic
echo	#Basic	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	localhost.localdomain	localhost	>>%windir%\System32\drivers\etc\hosts
echo	::1	localhost	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	ubuntu	>>%windir%\System32\drivers\etc\hosts
echo	255.255.255.255	broadcasthost	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	advertising.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	ubuntu	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


REM	echo	MySite	And	Host
REM	echo	#MySite	And	Host	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	dsw248.tk')	do	set	dsw248=%%i
REM	echo	%dsw248%	dsw248.tk	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	michaelting.tk')	do	set	dsw248=%%i
REM	echo	%dsw248%	michaelting.tk	>>%windir%\System32\drivers\etc\hosts
REM	echo.	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	dsw248.blogspot.com')	do	set	dsw248=%%i
REM	echo	%dsw248%	dsw248.blogspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo.	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	mail.google.com')	do	set	GAE=%%i
REM	echo	#MyHosts	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	dsw248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	pkm248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	webcms248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	weblog248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	webproxy248.appspot.com	#Online	Proxy>>%windir%\System32\drivers\etc\hosts
REM	echo.	>>%windir%\System32\drivers\etc\hosts


:Github
echo	Github
echo	#Github	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.239 github.com		>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.252 nodeload.github.com	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.243 raw.github.com		>>%windir%\System32\drivers\etc\hosts
echo	204.232.175.78 documentcloud.github.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


:Facebook
echo	Facebook
echo	#Facebook	>>%windir%\System32\drivers\etc\hosts
echo	118.214.114.110	s-static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	118.214.190.105	profile.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.28	static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.34	b.static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.146.18	apps.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.146.50	graph.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.147.62	ssl.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.149.36	api.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.178.57	secure-media-sf2p.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.178.57	secure-profile.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.179.70	secure.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.16	zh-CN.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.20	login.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.31	m.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.31	touch.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.189.16	facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.171.228.14	www.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.190.18	apps.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	118.214.190.128	profile.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	124.155.222.50	vthumb.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-a.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-b.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-c.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-d.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-e.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-f.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-g.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-h.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.34	creative.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.176.21	s-hprofile-sf2p.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.187.17	fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.139	external.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.163	b.static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.163	static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.180.51	upload.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


:Twitter
echo	Twitter
echo	#Twitter			>>%windir%\System32\drivers\etc\hosts
echo	184.29.36.124	platform.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	219.76.10.138	platform0.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si0.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si1.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si2.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si3.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si4.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si5.twimg.com		>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	oauth.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	twitter.com		>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	www.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	mobile.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	api.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.201	search.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.139	userstream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	ssl.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	status.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets0.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets1.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets2.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets3.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	static.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.206	help.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.206	support.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	upload.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.210	t.co	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


:Wordpress
echo	Wordpress
echo	#Wordpress	>>%windir%\System32\drivers\etc\hosts
echo	72.233.119.209	i.polldaddy.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.119.209	i0.poll.fm	>>%windir%\System32\drivers\etc\hosts
echo	74.200.247.60	wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s0.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s1.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s2.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.wordpress.org	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s1.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s2.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s3.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.stats.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	lb.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	zh.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	zh-sg.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	dashboard.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	forums.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	en.forums.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	en.blog.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	stats.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	wpcom.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.69.6	botd2.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.69.6	botd.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	lucifr.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	*.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


:Dropbox
echo	Dropbox
echo	#Dropbox	>>%windir%\System32\drivers\etc\hosts
echo	199.47.217.179	dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo	199.47.216.170	www.dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo	107.20.207.62	dl.dropbox.com	dl-web.dropbox.com		>>%windir%\System32\drivers\etc\hosts
echo	174.36.51.42	forums.dropbox.com		wiki.dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts

:Apple
echo	Apple
echo	#Apple	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	adcdownload.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	deimos3.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	appldnld.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	swcdn.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	developer.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	184.25.218.46	www.icloud.com	>>%windir%\System32\drivers\etc\hosts
echo	184.30.117.47	www.me.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


:multiupload
echo	multiupload
set	MULTIUPLOAD=85.17.76.195
echo	#multiupload	>>%windir%\System32\drivers\etc\hosts
echo	85.17.221.117	www.multiupload.com	>>%windir%\System32\drivers\etc\hosts
echo	85.17.221.117	multiupload.com	>>%windir%\System32\drivers\etc\hosts

echo	%MULTIUPLOAD%	multiupload.com	www.multiupload.com	www2.multiupload.com	www3.multiupload.com	www4.multiupload.com	www5.multiupload.com	www6.multiupload.com	www7.multiupload.com	www8.multiupload.com	www9.multiupload.com	www10.multiupload.com	www11.multiupload.com	www12.multiupload.com	www13.multiupload.com	www14.multiupload.com	www15.multiupload.com	www16.multiupload.com	www17.multiupload.com	www18.multiupload.com	www19.multiupload.com	www20.multiupload.com	www21.multiupload.com	www22.multiupload.com	www23.multiupload.com	www24.multiupload.com	www25.multiupload.com	www26.multiupload.com	www28.multiupload.com	www29.multiupload.com	www30.multiupload.com	www31.multiupload.com	www32.multiupload.com	www33.multiupload.com	www34.multiupload.com	www35.multiupload.com	www36.multiupload.com	www37.multiupload.com	www38.multiupload.com	www39.multiupload.com	www40.multiupload.com	www41.multiupload.com	www42.multiupload.com	www43.multiupload.com	www44.multiupload.com	www45.multiupload.com	www46.multiupload.com	www47.multiupload.com	www48.multiupload.com	www49.multiupload.com	www50.multiupload.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts


echo	Wiki
echo	#Wiki	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	www.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	en.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	zh.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	www.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	en.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	zh.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	www.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	en.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	zh.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	wikiquote.org	www.wikiquote.org	en.wikiquote.org	zh.wikiquote.org	zh.wikisource.org	en.wikisource.org	wiktionary.org	www.wiktionary.org	en.wiktionary.org	zh.wiktionary.org	wikimedia.org	www.wikimedia.org	bugs.wikimedia.org	bugzilla.wikimedia.org	commons.wikimedia.org	dumps.wikimedia.org	download.wikimedia.org	irc.wikimedia.org	ftp.wikimedia.org	ganglia.wikimedia.org	mail.wikimedia.org	meta.wikimedia.org	news.wikimedia.org	noc.wikimedia.org	kate.wikimedia.org	kohl.wikimedia.org	stats.wikimedia.org	ticket.wikimedia.org	tools.wikimedia.org	upload.wikimedia.org	wikimediafoundation.org	www.wikimediafoundation.org	mediawiki.org	www.mediawiki.org	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts




set	AdsFree=0.0.0.0
echo	AD	Free
echo	#AD	Free	>>%windir%\System32\drivers\etc\hosts

echo.	%AdsFree%	>>%windir%\System32\drivers\etc\hosts





echo	Google
:Google
REM	第一部分关键的IP列表，共享
echo	#Google	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.31	google.com	google.com.hk	www.google.com	www.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.33	accounts.google.com	accounts.youtube.com	csi.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.35	encrypted.google.com	encrypted.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.73	encrypted-tbn0.google.com	encrypted-tbn1.google.com	encrypted-tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.74	encrypted-tbn3.google.com	encrypted-tbn4.google.com	encrypted-tbn5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.75	encrypted-tbn6.google.com	encrypted-tbn7.google.com	encrypted-tbn8.google.com	encrypted-tbn9.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.32	mail.google.com	mail.google.com.hk	gmail.com	www.gmail.com	gmail.com.hk	www.gmail.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.65	mail-attachment.googleusercontent.com	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.34	plus.google.com	plus.google.com.hk	plus.url.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.87	drive.google.com	goo.gl	upload.docs.google.com	cache.pack.google.com	news.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.88	0.drive.google.com	1.drive.google.com	2.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.90	3.drive.google.com	4.drive.google.com	5.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.64	talkgadget.google.com	profiles.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.86	code.google.com	appengine.google.com	groups.google.com	maps.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.68	maps-api-ssl.google.com	writely.google.com	spreadsheets.google.com	maps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.61	picasaweb.google.com	docs.google.com	apis.google.com	0.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.76	ssl.google-analytics.com	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.66	chrome.google.com	clients1.google.com	clients2.google.com	clients3.google.com	clients4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.72	webcache.googleusercontent.com	0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.146	drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.71.94	drive.google.com	>>%windir%\System32\drivers\etc\hosts


echo	203.208.46.221	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.221	filetransferenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.213	mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.70.125	talk.google.com	>>%windir%\System32\drivers\etc\hosts


REM	第二部分IP列表
echo.	1使用内置IP(默认)
echo.	2自动更新IP
echo.	3从网络下载hosts(未完成)
set	/p	choice=		请选择已成功获取的IP类别:
if	"%choice%"=="1"	goto	DefaultIP
if	"%choice%"=="2"	goto	AutoIP
if	"%choice%"=="3"	goto	DownloadIP

:DefaultIP
REM	方法1，内置文件
echo	74.125.31.78	plusone.google.com	gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.82	mts0.google.com	mts1.google.com	mts2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.83	mts3.google.com	mts4.google.com	mts5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.38	lh3.googleusercontent.com	googleads.g.doubleclick.net	ad.doubleclick.net	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.40	lh5.googleusercontent.com	dl-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.79	clients1.googleusercontent.com	clients2.googleusercontent.com	clients3.googleusercontent.com	clients4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.48	s1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.49	s2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.50	s3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.51	s4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.52	s5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.53	s6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.77	images-pos-opensocial.googleusercontent.com	images-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.42	images1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.43	images2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.44	images3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.45	images4-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.46	images5-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.47	images6-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.84	khms0.google.com	khms1.google.com	khms2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.85	khms3.google.com	khms4.google.com	khms5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.54	lh1.ggpht.com	lh1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.56	lh2.ggpht.com	lh2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.57	lh3.ggpht.com	lh3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.58	lh4.ggpht.com	lh4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.59	lh5.ggpht.com	lh5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.60	lh6.ggpht.com	lh6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.41	lh6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.36	lh1.googleusercontent.com	doc-04-as-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.37	lh2.googleusercontent.com	doc-0k-as-docs.googleusercontent.com	doc-08-as-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.62	safebrowsing-cache.google.com	safebrowsing.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.63	gg.google.com	ssl.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.69	dl.google.com	talkx.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.81	www.schemer.com	sites.google.com	services.google.com	tools.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.31.39	lh4.googleusercontent.com	www.googleadservices.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts

goto Youtube

:AutoIP
REM	方法2,自动获取
setlocal	enabledelayedexpansion
set	min=180
set	max=240
set	/a	mod=!max!-!min!+1
set	/a	r=!random!%%!mod!+!min!
set	GOOGLE0=203.208.46.%r%
echo.	1.成功获取203随机IP
set	GOOGLE0=203.208.46.%r%
for	/f	"tokens=2	delims=[]"	%%i	in	('ping	mail.google.com')	do	set	GOOGLE1=%%i
for	/f	"delims=."	%%i	in	("%GOOGLE1%")	do	if	%%i==74	(echo		2.成功获取74全球IP)
for	/f	"tokens=2	delims=[]"	%%i	in	('ping	www.g.cn')	do	set	GOOGLE2=%%i
for	/f	"delims=."	%%i	in	("%GOOGLE2%")	do	(
								if	%%i==74	(echo		3.成功获取74香港IP)
								if	%%i==203	(echo		3.成功获取203北京IP)
								)
for	/f	"tokens=2	delims=[]"	%%i	in	('ping	www.g.cn')	do	set	GOOGLE3=%%i
for	/f	"delims=."	%%i	in	("%GOOGLE3%")	do	if	%%i==203	(echo		4.成功获取203北京IP)
set	/p	IPs=		请选择已成功获取的IP类别(默认为1):
set	GoogleIP=%GOOGLE0%
if	"%IPs%"=="1"	set	GoogleIP=%GOOGLE0%
if	"%IPs%"=="2"	set	GoogleIP=%GOOGLE1%
if	"%IPs%"=="3"	set	GoogleIP=%GOOGLE2%

echo	%GoogleIP%	mts0.google.com	mts1.google.com	mts2.google.com	mts3.google.com	mts4.google.com	mts5.google.com	lh3.googleusercontent.com	googleads.g.doubleclick.net	ad.doubleclick.net	lh5.googleusercontent.com	dl-ssl.google.com	clients1.googleusercontent.com	clients2.googleusercontent.com	clients3.googleusercontent.com	clients4.googleusercontent.com	s1.googleusercontent.com	s2.googleusercontent.com	s3.googleusercontent.com	s4.googleusercontent.com	s5.googleusercontent.com	s6.googleusercontent.com	images-pos-opensocial.googleusercontent.com	images-oz-opensocial.googleusercontent.com	images1-focus-opensocial.googleusercontent.com	images2-focus-opensocial.googleusercontent.com	images3-focus-opensocial.googleusercontent.com	images4-focus-opensocial.googleusercontent.com	images5-focus-opensocial.googleusercontent.com	images6-focus-opensocial.googleusercontent.com	khms0.google.com	khms1.google.com	khms2.google.com	khms3.google.com	khms4.google.com	khms5.google.com	lh1.ggpht.com	lh1.google.com	lh2.ggpht.com	lh2.google.com	lh3.ggpht.com	lh3.google.com	lh4.ggpht.com	lh4.google.com	lh5.ggpht.com	lh5.google.com	lh6.ggpht.com	lh6.google.com	lh6.googleusercontent.com	lh1.googleusercontent.com	doc-04-as-docs.googleusercontent.com	lh2.googleusercontent.com	doc-0k-as-docs.googleusercontent.com	doc-08-as-docs.googleusercontent.com	safebrowsing-cache.google.com	safebrowsing.clients.google.com	gg.google.com	ssl.gstatic.com	dl.google.com	talkx.l.google.com	www.schemer.com	sites.google.com	services.google.com	tools.google.com		lh4.googleusercontent.com	www.googleadservices.com		>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts

goto Youtube


echo	%GoogleIP%	0.docs.google.com	0.drive.google.com	1.docs.google.com	1.drive.google.com	10.docs.google.com	10.drive.google.com	11.docs.google.com	11.drive.google.com	12.docs.google.com	12.drive.google.com	13.docs.google.com	13.drive.google.com	14.docs.google.com	14.drive.google.com	15.docs.google.com	15.drive.google.com	16.docs.google.com	16.drive.google.com	2.docs.google.com	2.drive.google.com	3.docs.google.com	3.drive.google.com	4.docs.google.com	4.drive.google.com	5.docs.google.com	5.drive.google.com	6.docs.google.com	6.drive.google.com	7.docs.google.com	7.drive.google.com	8.docs.google.com	8.drive.google.com	9.docs.google.com	9.drive.google.com	docs.google.com	docs0.google.com	docs1.google.com	docs2.google.com	docs3.google.com	docs4.google.com	docs5.google.com	docs6.google.com	docs7.google.com	docs8.google.com	docs9.google.com	drive.google.com	>>%windir%\System32\drivers\etc\hosts

echo	%GoogleIP%	accounts.google.com	accounts.l.google.com	answers.google.com	apis.google.com	appengine.google.com	apps.google.com	appspot.l.google.com	blogsearch.google.com	>>%windir%\System32\drivers\etc\hosts

echo	%GoogleIP%	bks0.books.google.com	bks1.books.google.com	bks10.books.google.com	bks2.books.google.com	bks3.books.google.com	bks4.books.google.com	bks5.books.google.com	bks6.books.google.com	bks7.books.google.com	bks8.books.google.com	bks9.books.google.com	books.google.com	>>%windir%\System32\drivers\etc\hosts

echo	%GoogleIP%	browserchannel-docs.l.google.com	browserchannel-spreadsheets.l.google.com	browsersync.google.com	browsersync.l.google.com	buzz.google.com	cache.l.google.com	cache.pack.google.com	calendar.google.com	>>%windir%\System32\drivers\etc\hosts


echo	%GoogleIP%	cbk0.google.com	cbk1.google.com	cbk2.google.com	cbk3.google.com	cbks0.google.com	cbks1.google.com	cbks2.google.com	cbks3.google.com	chart.apis.google.com	checkout.google.com	checkout.l.google.com	chrome.google.com	clients.l.google.com	clients1.google.com	clients2.google.com	clients3.google.com	clients4.google.com	clients5.google.com	clients6.google.com	clients7.google.com	code.google.com	code.l.google.com	csi.l.google.com	desktop.google.com	desktop.l.google.com	desktop2.google.com	developers.google.com	ditu.google.com	dl.google.com	dl.l.google.com	dl-ssl.google.com	earth.google.com	encrypted.google.com	encrypted-tbn.l.google.com	encrypted-tbn0.google.com	encrypted-tbn1.google.com	encrypted-tbn2.google.com	encrypted-tbn3.google.com	feedburner.google.com	feedproxy.google.com	finance.google.com	fusion.google.com	geoauth.google.com	gg.google.com	ghs.google.com	ghs.l.google.com	ghs46.google.com	ghs46.l.google.com	google.com	googleapis.l.google.com	googleapis-ajax.google.com	googleapis-ajax.l.google.com	googlecode.l.google.com	google-public-dns-a.google.com	google-public-dns-b.google.com	goto.google.com	groups.google.com	groups.l.google.com	groups-beta.google.com	gxc.google.com	id.google.com	id.l.google.com	images.google.com	images.l.google.com	investor.google.com	jmt0.google.com	kh.google.com	kh.l.google.com	khm.google.com	khm.l.google.com	khm0.google.com	khm1.google.com	khm2.google.com	khm3.google.com	khmdb.google.com	khms.google.com	khms.l.google.com	khms0.google.com	khms1.google.com	khms2.google.com	khms3.google.com	labs.google.com		>>%windir%\System32\drivers\etc\hosts

echo	%GoogleIP%	large-uploads.l.google.com	lh2.google.com	lh2.l.google.com	lh3.google.com	lh4.google.com	lh5.google.com	lh6.google.com	linkhelp.clients.google.com	local.google.com	m.google.com	map.google.com	maps.google.com	maps.l.google.com	maps-api-ssl.google.com	mars.google.com	mobile.l.google.com	mobile-gtalk.l.google.com	mobilemaps.clients.google.com	mt.google.com	mt.l.google.com	mt0.google.com	mt1.google.com	mt2.google.com	mt3.google.com	mts.google.com	mts.l.google.com	mts0.google.com	mts1.google.com	mts2.google.com	mts3.google.com	music.google.com	music-streaming.l.google.com	mw1.google.com	mw2.google.com	news.google.com	news.l.google.com	pack.google.com	photos.google.com	photos-ugc.l.google.com	picasa.google.com	picasaweb.google.com	picasaweb.l.google.com	places.google.com	play.google.com	productforums.google.com	profiles.google.com	reader.google.com	safebrowsing.cache.l.google.com	safebrowsing.clients.google.com	safebrowsing.google.com	safebrowsing-cache.google.com	sandbox.google.com	sb.google.com	sb.l.google.com	sb-ssl.google.com	sb-ssl.l.google.com	scholar.google.com	scholar.l.google.com	script.google.com	services.google.com	sites.google.com	sketchup.google.com	sketchup.l.google.com	spreadsheet.google.com	spreadsheets.google.com	spreadsheets.l.google.com	spreadsheets0.google.com	spreadsheets1.google.com	spreadsheets2.google.com	spreadsheets3.google.com	spreadsheets4.google.com	spreadsheets5.google.com	spreadsheets6.google.com	spreadsheets7.google.com	spreadsheets8.google.com	spreadsheets9.google.com	>>%windir%\System32\drivers\etc\hosts

echo	%GoogleIP%	spreadsheets-china.l.google.com	suggestqueries.google.com	suggestqueries.l.google.com	support.google.com	talkgadget.google.com	tbn0.google.com	tbn1.google.com	tbn2.google.com	tbn3.google.com	toolbar.google.com	toolbarqueries.clients.google.com	toolbarqueries.google.com	toolbarqueries.l.google.com	tools.google.com	tools.l.google.com	translate.google.com	trends.google.com	upload.docs.google.com	upload.drive.google.com	uploads.code.google.com	uploadsj.clients.google.com	v3.cache1.c.docs.google.com	video.google.com	video-stats.l.google.com	voice.google.com	wallet.google.com	wifi.google.com	wifi.l.google.com	wire.l.google.com	writely.google.com	writely.l.google.com	writely-china.l.google.com	writely-com.l.google.com	www.google.com	www.l.google.com	www2.l.google.com	www3.l.google.com	www4.l.google.com	ytstatic.l.google.com	>>%windir%\System32\drivers\etc\hosts

goto Youtube



REM	方法3,下载hosts文件
:DownloadIP
echo		>>%windir%\System32\drivers\etc\hosts

goto Youtube


:Youtube
REM	youtube	失败
echo	Youtube
for	/f	"tokens=2	delims=[]"	%%i	in	('ping	www.g.cn')	do	set	YOUTUBE=%%i
for	/f	"delims=."	%%i	in	("%YOUTUBE%")	do	if	%%i==203	(echo.	成功获取203北京IP
											goto	YoutubeIP)
echo.	当前网络仅获取随机IP
setlocal	enabledelayedexpansion
set	min=160
set	max=170
set	/a	mod=!max!-!min!+1
set	/a	r=!random!%%!mod!+!min!
set	YOUTUBE=173.194.38.%r%

:YoutubeIP
echo	#Youtube	>>%windir%\System32\drivers\etc\hosts
echo	74.125.71.116	upload.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	accounts.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	apiblog.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	clients1.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	gdata.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	help.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	i.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	i1.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	i2.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	i3.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	i4.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	insight.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	m.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	s.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.45.206	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.229.168	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.229.168	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.237.7	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.237.7	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.224.72	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.224.72	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.128.100	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.128.100	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.237.130	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.237.130	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	s.youtube.com	s2.youtube.com	s.ytimg.com	o-o.preferred.sjc07s15.v1.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache1.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache2.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache3.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache4.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache5.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache6.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache7.c.youtube.com	o-o.preferred.sjc07s15.v1.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v2.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v3.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v4.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v5.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v6.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v7.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v8.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v9.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v10.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v11.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v12.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v13.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v14.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v15.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v16.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v17.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v18.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v19.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v20.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v21.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v22.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v23.lscache8.c.youtube.com	o-o.preferred.sjc07s15.v24.lscache8.c.youtube.com	r1.pek01s01.c.youtube.com	r2.pek01s01.c.youtube.com	r3.pek01s01.c.youtube.com	r4.pek01s01.c.youtube.com	r5.pek01s01.c.youtube.com	r6.pek01s01.c.youtube.com	r7.pek01s01.c.youtube.com	r8.pek01s01.c.youtube.com	r9.pek01s01.c.youtube.com	r10.pek01s01.c.youtube.com	r11.pek01s01.c.youtube.com	r12.pek01s01.c.youtube.com	r13.pek01s01.c.youtube.com	r14.pek01s01.c.youtube.com	r15.pek01s01.c.youtube.com	r16.pek01s01.c.youtube.com	r17.pek01s01.c.youtube.com	r18.pek01s01.c.youtube.com	r19.pek01s01.c.youtube.com	r20.pek01s01.c.youtube.com	r21.pek01s01.c.youtube.com	r22.pek01s01.c.youtube.com	r23.pek01s01.c.youtube.com	r24.pek01s01.c.youtube.com	tc.v1.cache1.c.youtube.com	tc.v2.cache1.c.youtube.com	tc.v3.cache1.c.youtube.com	tc.v4.cache1.c.youtube.com	tc.v5.cache1.c.youtube.com	tc.v6.cache1.c.youtube.com	tc.v7.cache1.c.youtube.com	tc.v8.cache1.c.youtube.com	tc.v9.cache1.c.youtube.com	tc.v10.cache1.c.youtube.com	tc.v11.cache1.c.youtube.com	tc.v12.cache1.c.youtube.com	tc.v13.cache1.c.youtube.com	tc.v14.cache1.c.youtube.com	tc.v15.cache1.c.youtube.com	tc.v16.cache1.c.youtube.com	tc.v17.cache1.c.youtube.com	tc.v18.cache1.c.youtube.com	tc.v19.cache1.c.youtube.com	tc.v20.cache1.c.youtube.com	tc.v21.cache1.c.youtube.com	tc.v22.cache1.c.youtube.com	tc.v23.cache1.c.youtube.com	tc.v24.cache1.c.youtube.com	tc.v1.cache2.c.youtube.com	tc.v2.cache2.c.youtube.com	tc.v3.cache2.c.youtube.com	tc.v4.cache2.c.youtube.com	tc.v5.cache2.c.youtube.com	tc.v6.cache2.c.youtube.com	tc.v7.cache2.c.youtube.com	tc.v8.cache2.c.youtube.com	tc.v9.cache2.c.youtube.com	tc.v10.cache2.c.youtube.com	tc.v11.cache2.c.youtube.com	tc.v12.cache2.c.youtube.com	tc.v13.cache2.c.youtube.com	tc.v14.cache2.c.youtube.com	tc.v15.cache2.c.youtube.com	tc.v16.cache2.c.youtube.com	tc.v17.cache2.c.youtube.com	tc.v18.cache2.c.youtube.com	tc.v19.cache2.c.youtube.com	tc.v20.cache2.c.youtube.com	tc.v21.cache2.c.youtube.com	tc.v22.cache2.c.youtube.com	tc.v23.cache2.c.youtube.com	tc.v24.cache2.c.youtube.com	tc.v1.cache3.c.youtube.com	tc.v2.cache3.c.youtube.com	tc.v3.cache3.c.youtube.com	tc.v4.cache3.c.youtube.com	tc.v5.cache3.c.youtube.com	tc.v6.cache3.c.youtube.com	tc.v7.cache3.c.youtube.com	tc.v8.cache3.c.youtube.com	tc.v9.cache3.c.youtube.com	tc.v10.cache3.c.youtube.com	tc.v11.cache3.c.youtube.com	tc.v12.cache3.c.youtube.com	tc.v13.cache3.c.youtube.com	tc.v14.cache3.c.youtube.com	tc.v15.cache3.c.youtube.com	tc.v16.cache3.c.youtube.com	tc.v17.cache3.c.youtube.com	tc.v18.cache3.c.youtube.com	tc.v19.cache3.c.youtube.com	tc.v20.cache3.c.youtube.com	tc.v21.cache3.c.youtube.com	tc.v22.cache3.c.youtube.com	tc.v23.cache3.c.youtube.com	tc.v24.cache3.c.youtube.com	tc.v1.cache4.c.youtube.com	tc.v2.cache4.c.youtube.com	tc.v3.cache4.c.youtube.com	tc.v4.cache4.c.youtube.com	tc.v5.cache4.c.youtube.com	tc.v6.cache4.c.youtube.com	tc.v7.cache4.c.youtube.com	tc.v8.cache4.c.youtube.com	tc.v9.cache4.c.youtube.com	tc.v10.cache4.c.youtube.com	tc.v11.cache4.c.youtube.com	tc.v12.cache4.c.youtube.com	tc.v13.cache4.c.youtube.com	tc.v14.cache4.c.youtube.com	tc.v15.cache4.c.youtube.com	tc.v16.cache4.c.youtube.com	tc.v17.cache4.c.youtube.com	tc.v18.cache4.c.youtube.com	tc.v19.cache4.c.youtube.com	tc.v20.cache4.c.youtube.com	tc.v21.cache4.c.youtube.com	tc.v22.cache4.c.youtube.com	tc.v23.cache4.c.youtube.com	tc.v24.cache4.c.youtube.com	tc.v1.cache5.c.youtube.com	tc.v2.cache5.c.youtube.com	tc.v3.cache5.c.youtube.com	tc.v4.cache5.c.youtube.com	tc.v5.cache5.c.youtube.com	tc.v6.cache5.c.youtube.com	tc.v7.cache5.c.youtube.com	tc.v8.cache5.c.youtube.com	tc.v9.cache5.c.youtube.com	tc.v10.cache5.c.youtube.com	tc.v11.cache5.c.youtube.com	tc.v12.cache5.c.youtube.com	tc.v13.cache5.c.youtube.com	tc.v14.cache5.c.youtube.com	tc.v15.cache5.c.youtube.com	tc.v16.cache5.c.youtube.com	tc.v17.cache5.c.youtube.com	tc.v18.cache5.c.youtube.com	tc.v19.cache5.c.youtube.com	tc.v20.cache5.c.youtube.com	tc.v21.cache5.c.youtube.com	tc.v22.cache5.c.youtube.com	tc.v23.cache5.c.youtube.com	tc.v24.cache5.c.youtube.com	tc.v1.cache6.c.youtube.com	tc.v2.cache6.c.youtube.com	tc.v3.cache6.c.youtube.com	tc.v4.cache6.c.youtube.com	tc.v5.cache6.c.youtube.com	tc.v6.cache6.c.youtube.com	tc.v7.cache6.c.youtube.com	tc.v8.cache6.c.youtube.com	tc.v9.cache6.c.youtube.com	tc.v10.cache6.c.youtube.com	tc.v11.cache6.c.youtube.com	tc.v12.cache6.c.youtube.com	tc.v13.cache6.c.youtube.com	tc.v14.cache6.c.youtube.com	tc.v15.cache6.c.youtube.com	tc.v16.cache6.c.youtube.com	tc.v17.cache6.c.youtube.com	tc.v18.cache6.c.youtube.com	tc.v19.cache6.c.youtube.com	tc.v20.cache6.c.youtube.com	tc.v21.cache6.c.youtube.com	tc.v22.cache6.c.youtube.com	tc.v23.cache6.c.youtube.com	tc.v24.cache6.c.youtube.com	tc.v1.cache7.c.youtube.com	tc.v2.cache7.c.youtube.com	tc.v3.cache7.c.youtube.com	tc.v4.cache7.c.youtube.com	tc.v5.cache7.c.youtube.com	tc.v6.cache7.c.youtube.com	tc.v7.cache7.c.youtube.com	tc.v8.cache7.c.youtube.com	tc.v9.cache7.c.youtube.com	tc.v10.cache7.c.youtube.com	tc.v11.cache7.c.youtube.com	tc.v12.cache7.c.youtube.com	tc.v13.cache7.c.youtube.com	tc.v14.cache7.c.youtube.com	tc.v15.cache7.c.youtube.com	tc.v16.cache7.c.youtube.com	tc.v17.cache7.c.youtube.com	tc.v18.cache7.c.youtube.com	tc.v19.cache7.c.youtube.com	tc.v20.cache7.c.youtube.com	tc.v21.cache7.c.youtube.com	tc.v22.cache7.c.youtube.com	tc.v23.cache7.c.youtube.com	tc.v24.cache7.c.youtube.com	tc.v1.cache8.c.youtube.com	tc.v2.cache8.c.youtube.com	tc.v3.cache8.c.youtube.com	tc.v4.cache8.c.youtube.com	tc.v5.cache8.c.youtube.com	tc.v6.cache8.c.youtube.com	tc.v7.cache8.c.youtube.com	tc.v8.cache8.c.youtube.com	tc.v9.cache8.c.youtube.com	tc.v10.cache8.c.youtube.com	tc.v11.cache8.c.youtube.com	tc.v12.cache8.c.youtube.com	tc.v13.cache8.c.youtube.com	tc.v14.cache8.c.youtube.com	tc.v15.cache8.c.youtube.com	tc.v16.cache8.c.youtube.com	tc.v17.cache8.c.youtube.com	tc.v18.cache8.c.youtube.com	tc.v19.cache8.c.youtube.com	tc.v20.cache8.c.youtube.com	tc.v21.cache8.c.youtube.com	tc.v22.cache8.c.youtube.com	tc.v23.cache8.c.youtube.com	tc.v24.cache8.c.youtube.com	v1.lscache1.c.youtube.com	v2.lscache1.c.youtube.com	v3.lscache1.c.youtube.com	v4.lscache1.c.youtube.com	v5.lscache1.c.youtube.com	v6.lscache1.c.youtube.com	v7.lscache1.c.youtube.com	v8.lscache1.c.youtube.com	v9.lscache1.c.youtube.com	v10.lscache1.c.youtube.com	v11.lscache1.c.youtube.com	v12.lscache1.c.youtube.com	v13.lscache1.c.youtube.com	v14.lscache1.c.youtube.com	v15.lscache1.c.youtube.com	v16.lscache1.c.youtube.com	v17.lscache1.c.youtube.com	v18.lscache1.c.youtube.com	v19.lscache1.c.youtube.com	v20.lscache1.c.youtube.com	v21.lscache1.c.youtube.com	v22.lscache1.c.youtube.com	v23.lscache1.c.youtube.com	v24.lscache1.c.youtube.com	v1.lscache2.c.youtube.com	v2.lscache2.c.youtube.com	v3.lscache2.c.youtube.com	v4.lscache2.c.youtube.com	v5.lscache2.c.youtube.com	v6.lscache2.c.youtube.com	v7.lscache2.c.youtube.com	v8.lscache2.c.youtube.com	v9.lscache2.c.youtube.com	v10.lscache2.c.youtube.com	v11.lscache2.c.youtube.com	v12.lscache2.c.youtube.com	v13.lscache2.c.youtube.com	v14.lscache2.c.youtube.com	v15.lscache2.c.youtube.com	v16.lscache2.c.youtube.com	v17.lscache2.c.youtube.com	v18.lscache2.c.youtube.com	v19.lscache2.c.youtube.com	v20.lscache2.c.youtube.com	v21.lscache2.c.youtube.com	v22.lscache2.c.youtube.com	v23.lscache2.c.youtube.com	v24.lscache2.c.youtube.com	v1.lscache3.c.youtube.com	v2.lscache3.c.youtube.com	v3.lscache3.c.youtube.com	v4.lscache3.c.youtube.com	v5.lscache3.c.youtube.com	v6.lscache3.c.youtube.com	v7.lscache3.c.youtube.com	v8.lscache3.c.youtube.com	v9.lscache3.c.youtube.com	v10.lscache3.c.youtube.com	v11.lscache3.c.youtube.com	v12.lscache3.c.youtube.com	v13.lscache3.c.youtube.com	v14.lscache3.c.youtube.com	v15.lscache3.c.youtube.com	v16.lscache3.c.youtube.com	v17.lscache3.c.youtube.com	v18.lscache3.c.youtube.com	v19.lscache3.c.youtube.com	v20.lscache3.c.youtube.com	v21.lscache3.c.youtube.com	v22.lscache3.c.youtube.com	v23.lscache3.c.youtube.com	v24.lscache3.c.youtube.com	v1.lscache4.c.youtube.com	v2.lscache4.c.youtube.com	v3.lscache4.c.youtube.com	v4.lscache4.c.youtube.com	v5.lscache4.c.youtube.com	v6.lscache4.c.youtube.com	v7.lscache4.c.youtube.com	v8.lscache4.c.youtube.com	v9.lscache4.c.youtube.com	v10.lscache4.c.youtube.com	v11.lscache4.c.youtube.com	v12.lscache4.c.youtube.com	v13.lscache4.c.youtube.com	v14.lscache4.c.youtube.com	v15.lscache4.c.youtube.com	v16.lscache4.c.youtube.com	v17.lscache4.c.youtube.com	v18.lscache4.c.youtube.com	v19.lscache4.c.youtube.com	v20.lscache4.c.youtube.com	v21.lscache4.c.youtube.com	v22.lscache4.c.youtube.com	v23.lscache4.c.youtube.com	v24.lscache4.c.youtube.com	v1.lscache5.c.youtube.com	v2.lscache5.c.youtube.com	v3.lscache5.c.youtube.com	v4.lscache5.c.youtube.com	v5.lscache5.c.youtube.com	v6.lscache5.c.youtube.com	v7.lscache5.c.youtube.com	v8.lscache5.c.youtube.com	v9.lscache5.c.youtube.com	v10.lscache5.c.youtube.com	v11.lscache5.c.youtube.com	v12.lscache5.c.youtube.com	v13.lscache5.c.youtube.com	v14.lscache5.c.youtube.com	v15.lscache5.c.youtube.com	v16.lscache5.c.youtube.com	v17.lscache5.c.youtube.com	v18.lscache5.c.youtube.com	v19.lscache5.c.youtube.com	v20.lscache5.c.youtube.com	v21.lscache5.c.youtube.com	v22.lscache5.c.youtube.com	v23.lscache5.c.youtube.com	v24.lscache5.c.youtube.com	v1.lscache6.c.youtube.com	v2.lscache6.c.youtube.com	v3.lscache6.c.youtube.com	v4.lscache6.c.youtube.com	v5.lscache6.c.youtube.com	v6.lscache6.c.youtube.com	v7.lscache6.c.youtube.com	v8.lscache6.c.youtube.com	v9.lscache6.c.youtube.com	v10.lscache6.c.youtube.com	v11.lscache6.c.youtube.com	v12.lscache6.c.youtube.com	v13.lscache6.c.youtube.com	v14.lscache6.c.youtube.com	v15.lscache6.c.youtube.com	v16.lscache6.c.youtube.com	v17.lscache6.c.youtube.com	v18.lscache6.c.youtube.com	v19.lscache6.c.youtube.com	v20.lscache6.c.youtube.com	v21.lscache6.c.youtube.com	v22.lscache6.c.youtube.com	v23.lscache6.c.youtube.com	v24.lscache6.c.youtube.com	v1.lscache7.c.youtube.com	v2.lscache7.c.youtube.com	v3.lscache7.c.youtube.com	v4.lscache7.c.youtube.com	v5.lscache7.c.youtube.com	v6.lscache7.c.youtube.com	v7.lscache7.c.youtube.com	v8.lscache7.c.youtube.com	v9.lscache7.c.youtube.com	v10.lscache7.c.youtube.com	v11.lscache7.c.youtube.com	v12.lscache7.c.youtube.com	v13.lscache7.c.youtube.com	v14.lscache7.c.youtube.com	v15.lscache7.c.youtube.com	v16.lscache7.c.youtube.com	v17.lscache7.c.youtube.com	v18.lscache7.c.youtube.com	v19.lscache7.c.youtube.com	v20.lscache7.c.youtube.com	v21.lscache7.c.youtube.com	v22.lscache7.c.youtube.com	v23.lscache7.c.youtube.com	v24.lscache7.c.youtube.com	v1.lscache8.c.youtube.com	v2.lscache8.c.youtube.com	v3.lscache8.c.youtube.com	v4.lscache8.c.youtube.com	v5.lscache8.c.youtube.com	v6.lscache8.c.youtube.com	v7.lscache8.c.youtube.com	v8.lscache8.c.youtube.com	v9.lscache8.c.youtube.com	v10.lscache8.c.youtube.com	v11.lscache8.c.youtube.com	v12.lscache8.c.youtube.com	v13.lscache8.c.youtube.com	v14.lscache8.c.youtube.com	v15.lscache8.c.youtube.com	v16.lscache8.c.youtube.com	v17.lscache8.c.youtube.com	v18.lscache8.c.youtube.com	v19.lscache8.c.youtube.com	v20.lscache8.c.youtube.com	v21.lscache8.c.youtube.com	v22.lscache8.c.youtube.com	v23.lscache8.c.youtube.com	v24.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts






ipconfig	/flushdns
echo.配置完成
pause	

cls
echo.
echo.
echo.	说明：
echo.
echo.	您现在可以更好的访问以上名单中的网站，并且省去大多数广告的烦扰
echo.
echo.	如果您在公用电脑上，可以访问webproxy.epkm.tk代理获取全球公共信息，或者在使用本程序后直接访问https://webproxy248.appspot.com进行安全代理
echo.
echo.	如果您认为该程序对您有帮助，请支持作者
echo.
pause

:AuthorMenu
cls
echo.
echo.
echo.	0.获取最新版本
echo.	
echo.	1.访问作者网址
echo.	
echo.	2.添加作者为好友
echo.	
echo.	3.关注作者twitter
echo.	
echo.	4.关注作者微薄
echo.	
echo.	直接关闭退出。
echo.
echo.	Please	Enter(0~4):

set	/p	choice=
if	"%choice%"=="0"	goto	Update
if	"%choice%"=="1"	goto	dsw248
if	"%choice%"=="2"	goto	GooglePlus
if	"%choice%"=="3"	goto	Twitter
if	"%choice%"=="4"	goto	Weibo
goto	GooglePlus

:Update
start	https://code.google.com/p/boosting-hosts/	>>%windir%\System32\drivers\etc\hosts
goto	Menu

:dsw248
start	http://dsw248.tk
goto	Menu

:GooglePlus
start	https://plus.google.com/u/0/110964478298972084839/about	>>%windir%\System32\drivers\etc\hosts
goto	Menu

:Twitter
start	https://twitter.com/dsw248
goto	Menu

:Weibo
start	https://weibo.com/dsw248
goto	Menu