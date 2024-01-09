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
BZh91AY&SYû�  �_�\����/o߮����    @��� �������Q����4��h��=OI�=M�44���@@1# 4h���M d41 h�h`��	"#@C@�hF�)�2F�OQ�4�ȁ��x���2Ȉ�0s3҄JrM�+T�-!�VX�u|-
4��\������-�y��$� �[�It�/�gJ�.yUFkd����@��j�2d�KZQ�ƕ�ȠZ�����1����j�؆�as�$f��>��8+8��j�	mG6_�k�j��s����3����>�RI>��#�2�\�=Mlp���'X��6WC��n�@cdb�: �ٮM�=�M������:(�*�5�����b\���q�!f���4���Ą��II��C��x�1^n���;�͵��ˏv隄�M0
�{"��/D�"v��f�Q�W����4�SQ�1�Js��z$���2C8���Ǌ����T������nܸ���0��*d�0�P0~!�3>��9P�3M��)��G�����F�����JEK�|-d}7�����)|��Wc�a��R���c�f��Q2�ɩAQ�n'<4M��,�%{x]��Gh�"c/��Ѩ�0� �֡T۳�$r�&uW���:�@�y��0��Q�h�.���,����}o`�Q35'��X��,B��/ӂ��%�<Uܲ\�$5�c9��ͱ�-�ʖJ,�h^%��]�Uv	�F���WU;�6J����djK��m7!��f�n���-��4�U��;�3�l\��A��	$��$����ľb�H�
w|� 