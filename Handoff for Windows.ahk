;Made by Tp
;ʹ��ǰ�������ͬһ��Ŀ¼�½�����url.txt���ĵ������ԡ�https://api.day.app/xxxxxxxxx/���ĸ�ʽ����������ճ����ȥ��
^!c::
FileRead, url, url.txt
copy := "?automaticallyCopy=1&copy=%clipboard%"
clipboard = %clipboard%
finalURL = %url%%clipboard%%copy%
req := ComObjCreate("WinHttp.WinHttpRequest.5.1")
req.Open("POST", finalURL)
req.Send()