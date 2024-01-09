#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYr�  ��� }���oޮ����    P��*�{���14�jm�m(�����G�h��i�4�ɤ�G���jI���L�F@   �  h �M2���Bd1�  4 44h�M#C!�� �� ��eS�4�       �պhƪb�5�kL���~�����;�b
"=�#i)�S3�R�u��V%8O��<���02������2�����T�t�/�С�KhW4&��Y��>'����5ɋ���J�p�hj��	^͛��c\+uVg[��E�;%����D�i�-j�2**"yx��m��4nd[u��~&gr&��R��!v������Gs�$�ޒ$�)�#$��	ģ�:= uD�'�#���80�Ɋk]+)�iӧK����=n�o�������@�B&��� �_]]rg�ӿv!Pѯ�i�����c���U٭m�q�.Ԉ��mp��L�읙o$�]���;�h�+	&�8�EUE���ɦc�PacL�<��w2�!S��u$O���4�W�6�� ���u����'q��7Eh��txQܷ��{���E;�'��h9,�F��LO`WF�bg (�kuB$�Ł(�,�;�8����w��M�a.͉)�I��5i8�A���K�� <���^e��v屪˖��%,E�+���TX�E��)i$a��2�koK�t.�8�v��9�]��Қ�MQ��D&��W�E��9��@\F����f͖��Ȗ��a�����B����|��j$�� �G� ��S�,,�C`�j4�$I!0
����1�0ǐ��$�PR����%��h�a	�b�E�'�sl�H�C���yYa���̨���@�JVdF����(�$oN屟Zz�,a%��`˂R�׍�2P��a%1�Q��"К���Ep nU!Qp���I�	$�$U?�ܑN$�G~@