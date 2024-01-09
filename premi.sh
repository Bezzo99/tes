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
BZh91AY&SY^V�� Q��t0�	�����������  � ! @  �(�ۤ��nϖ�o]�i�[m����П]�������i��z�7��Z�!ݹ��wv�ۢ�#O��mB�g ��J����`��M�S׽�-��nw�U�)Xj%ӝSf�J@dhe3 �4�< ���I����6�2�mCM��b �=4���iA���   @  i�&����?Dj��=M4f���   h�z�h=@`j"�F�i�oSM4�ꞧ��S�z��G��?I � �  �i��515O4�?E3h���y��)���z� d"A @	�S��E6�y57�$=M�G� �z� UR�62(���2b��"�%��ɗ߉�b>>�oN�[?�qs5El(�KFWy��6i���'���J* دޯ����vhiG�g�WVy�Vo�����t\QL��O��n8�Z�����G�t8��ۖ/W|V>\/@#kW�LS�)E�\��d�7��`�;$��b����9�6;��3.-z(��	�����ɿ|��G��yt�d�z���K�'d����Yl�c�mNJ��V���r��p��濗�$0�
8���*�qQ�/1qض��3�x$0q���>Gd�
�Rc"��:�M�S��yX�&�3E�h;G��[���J�H�Ӝ�#O�7�PSo�T�-{J��
�bt�����5��Lg�����~᭣���:%�G��5��`�IN���3��	`ZǨ����!���d����	�K�I�����l�O(*�J�7
gӋ�R~:����x�\k���[����'����/���*��z%��A
��se^,�ir$4d"�Xݷ�\8#ş-S��j�Ŷ~}[�H���خ�wx���\��vy;��pɧrڎ�i�{��b[�KE�뇹�R]*K��J���0�$؝3�O���>�Ψ	��<�$���x�	s�p�D@���4�<�jI�e�?��(3����<ȗD���Y&�,�$e�ID���esJ��tܛ����(�T�y!�;��[PR:��rd�Nf��l�o3GH�Z��*�����X6�Z��+�7�#�\xpi�h���1w�(�}��~��ӈ�-|��m���>�:�y���G<��`blC;&[�oY���i��yc�7�g��d�p������7�j�<��\���؀�R�Qrk~�W�F��T6��a�^F�C'qK:�Ә�������իTHOFa�)06����S��^*a7��
KI#�6�53E��<�_�m�;�*�;��;�ͧ$���>�����YxLAqZW=��'N�Y�d����
��lfff���y*����s�?������ ��q�b��S�����V�;�]0���H�	��Y���L"�Xo3�SD�V�D#U4(�iX1ŷM�~h�Z�R +)���5\B���L�xN�d�0���$(QERM�f��,��zoG�Xn�_��2���ѫ�%#�3������]���i��;P���j��;�|H���#�:���׽�|C��3�����ݻ{J'��Am���KH�D�HT�La��k+4ص���w�fV���n����&m?��S��3�vi�F][�Y3ō�׼�]s�+Q��~��O!�#�IL����.�W���EG���X�w�C�TDt6Sw���g��C�oMmNRǼB�iWK�So]M:!��z��U��ST��|��фYgrh}�:��Q��L��xc@��`�ٚ��%��+<bm�e�`� ��Gԟ=Al��8���
lA	'YF#�T':�t�d�ʺrË�NJ=�Ll���;�H2/���>��eb������KV���K�.�VS�疦����MnR��vc�W��)C3���������d����M�/��g)�*Y7��������	�C������҅FYu�msQ��Ӌ16:%e�乏E��h����7�K�I���v����O�����8�e�p��+�f�r���������u���\���'�1��$(�Y��ם�.���G�!܀hE ��>A<B9 �TH��w.���^7&���%;�L���4l����Uv��ō}���p�i����&M2~��̢4qn�\荅��44^�S2�*��W&G��|Hw�A>,Q�-nk��q����9(�D#/�!��U��$�-�CU�C�]��A���|�ܝ2��9˩���(==��g���{}�׉QFN���Q��ѥ2F7�s����!���LA�#H!�S%H��.ZB�� $>���?�%!OԠ²TB�
�aL�BP��4=���h�m�R��C�&VE�	�?q-���M%Q;*��5�V���QZ}^�S�LlbMgH�ȈQ�l $�X�}��5�/x���(/N�Ȝ}N��;����h ���ێ��Dֱl��6}�(����I��2��/�V-�Ż]s��+���~j�*�+��� #Z�*
à�C~��]/
�&�����$ƒ��!����)"rѿ�,�(�q
>A�ݖ)�E�P��O��� r.�A����<Kf��2��� y����y�`��`-�3�Yw�Z���i$.p$Np+8���;s�(������Z5�R�9�;�p��Mv������R���:�ߴ�8���v�1~�@+�7�{�E0=B�
�L8���$|�H� #��\��q$��並�_`z�b����u��I_Il��s����������&���aF�b��RQ��m�\<�5Y�8$�[�	1+�"HcU��=2�S)�I�\n�Ri�b�O:UV�:��+��S� ��0Y�g�(C��b@�ϐ��3ǽ+[�x��Oi~n���F��|m�Z�~w��v��	UeB%������:�8Nfv���I�^g)ˀ��2�߈K�彟��l8)zmoW�WM���˘��
�[�gd��׹X���2��f������F� ~5HT%��A.��F(���E,X(&�nd��7���!Z������zG\Y�M��ӫ�jU��m��ʣ�.��R��]��$�B��)<[�����&��9W�s|y�eiaM�Oz��^� Z��&�T�W�ޙštЮ&�H�RP�d�2c���MC���ϙ�W�i#$�/�|b�Ԛs�����W+�Iq�L�t$�o�M^�ɿeH��]�pB�N�,'@�L�@��N)����c��hS?�����ۥ��up_t�W���&���sW�}b� T��a�޼�ie��,u��`�<��yƦ-���f�-xrz�'�i(b�r��v�V�	K�Oתҩ#�#Bϟm���=(�3ZD�r1K�L����T�2����\�R|��c�UTݠ�E"����R��ZC�J�u��p��Ȏg�W&�;�PfҢK���[|ףY��T5��紉OǼ��Tc .�&�\==Ό��l��d��No/������9ꯋ��Yi���+��#�nmyp6�n���'����$�i���ؐ���#�ӆX�yk6B<��B!�A^���-!Ζ2L�_b���HT��&X0`��	��\}��e�-���>��s}�á��#�%6Y�ԝ�ۨ_{K����(Ǩ�c�ӽ҅��"��
�#(r�����:w�=�&w[1|��E- �ŜR,x
c�@�w�.�oK��5��?��G�l(��kZ�P,ݰ���^r�t�O=h�3���!���D�S�@ې}��(lϾ��M��?f\H��U�해K���-H+C�ר�F1Q<'t� �Ȧ��5����!*!�Ek�ȟ:��c�� ���pD���J^I9�<�娶x	�/M���ϵ!9�2�T8Ѯp�Q����p�)ב�*�L��� Gl�
p�����%d�`��]T�Ia��^{0���̐�G%izE�&�=��bI�('\N��y�Z\3<�?V���$���y(�wR�>j��a�=��Dz��{�XZ����<5��Ө�S�7��9�ǰ�${H��7�)$w���݇ ���#�K�|�1?"bǭ�!�/�D�,�����2��RH]Gq��P��Y�_x�x�'�m,	�|S�4�0S���קVf�鮭{�/r�����۳'�d�!��X��>�����T� �&Lɪ��e��v��܄���	��#�� 4jf��<yJfb �r��L^��%��ԣ�Ba�V��U�\i�ܑ������*����M���D.;|-^+ ~B�=��H���$T�.��=D����w��/����h����T�������HyOG����@�|������l�������8�gֿ,�b��y,�K�&?ffYg�41p�)�,6�0L�H�q�
կ��3�sC;�H>��R\�����I!F������rY�>��W��������K�zR���8M3��A���ᢽ�]����.�s��{	BRB�B�����������n�q.�_s������H�`q��ݤuF�X&�	�pU��"0>���Rh�D����oL/��,=6hBŤ�x���>ˀ}�����T�)X�#�2w+C�P�R�..;���F���x��/I�1ait�����O������(�����7���O��q5ܳ`���%^�ws���!T��ȪMc����ZU)Uk��@m
�/s�'�!��Y�m2@qJRz'�����T
�C3���0�1���*X��(&#~D-�h�0�5&����l��7�l��p���D�bV���Q�U1��״7`�^�r���0d9ą�e�J��&^��:-J%�\�H/�2��3���_(T�p��-*��%�� ���P� DCd�z�c��8���5#
�Ϳ�~�DDIݮy!�F�NZ�B��TB��$�J��dɡ��Y=⋽��W,D ,���U*�`]���T	B�i�6��^^�]��7��oTvA-�핅a#�D�93��>�@ݣ�e���@��"�(���:v����C����!�Gi�_��ū�ޱ/@uk�h:Bd5zv�CR�)�U�w��Gh�P�����y���=:�M����9�2��]�19�6�O�}e�Y%zI�*�p6��1�>>�������K���G��k(�|�h(
(��a��t�G�x���BPH�,$�WIm���nuI¯Fp�u%�[JE$Л�[�!���%lVHy��1'���0�^�ԣ}���?��H���U@��`�d��04���D߰��1GHv4��d�$QB#$VFy��l>qn�a����.���9$����$�4|qD1A s=p����[x��||�()�RЎ��+ �5Zow:�K!�j��
�6�;O�!�g�R��uT�8����m��-a��tW�(�R��\<���<z!�Gd�ga�a���d��E�if$o��z� ]�L� �gAޠ<�3�%�H�)��穭)9�)@҉�XRg�W�ģ���?N���?�Q�O/fh�}M��h�͋.C�B*1bD+���;�G�)��5ɘL��������U�!��U��Qn�D�B���e�H�7O���bܶY	Rc���@}��v�`�i p>�g����@������d�ݐ���%�j�Ǣ@�5���	�%�ևT�Uza3��|�N��TQ��I&�s�}X��4^@q15�f�1���nYty"2\n D4��mjy�F]PC�KB,�Ƙ��(�m�B�,4��Y�e��6#`�-C�:/+)�A���b&	l1C]�͈gt�^��hv�����(hYf���&�5N��솾ބ���ԉji���U�H��P7V�d�JEIC!z��/P	���8��.ED������,kQU�zaj�"�*�vD�{�����<6�{9�s1�w�(���iŠ񳌌ˊ� \^�L
z��3�@� ��g���4����`dC�)��d*��Jo�&��qGqj��	y����ʇ�<��2M�E�B�r�;�E�Ym$�Ᏻ�x���Z�#T�A"Ph)3�:�_|I\�����UUUU}��Ƅ4U���d�dd�.�!p�a�|f����D�!$/<W�ٴ	��s��aCi���kg0ڠ��m&"	�]
�¾@��љ���W�i۫>��'����K�5H���ʥ���^^����ci<8�^lթ	�!3�F�aN�ipS@�{8�4k��l5�+w���&pY���������*�gdI�,���Z�ObU�LwCP����Y�I�Lr����9]V+]�*2�DQ�l	��Z���;���vUm��y�rb��3�$`���BR�s̉OT}�3��������,">$6bgۚ�n|��c�9�d>�HD���C����Y��8��YZ V"�7.,]�֮Y-Q �RA'�1qd���'��ng�:{D��U�Ƥ8?��A����+V%Ԙ��fǰ	�Z����}���8���[Ot��5��oS�62_���30G�cy��?�l8�kУ�K?DW� 4OD ���rRD�}90���wc�͵��y�O�	i��M�,�m���@Z��>n��-%�Q��X��7�i<�}z��x$__�bV%.!���E��X����sE|�����&��u��͚I-p��.��ѝʨg]Z�%kw=ثqv:�1� ��0��U��1�����+����RO�I4�y�GY%#x]�2���)�5"�N �����.5����lu���S�` 9'D�r��F�`Q8&�$�O�����J ��Q�Il9������� ѫh��@`��U�P�_�	$�H���H�!�ܗ�CT
$B����tlİ���I��Ŵ\�,�⚛T���� ����y�s7n$��jU#4��Y��R'q2��v�Ư'k��B��$#�oU��q�yh�ɺ��F��y�-G�}]yB�梢m�(\�MT)�nH�4b�݈�(�;%T�L�$�BX�O���L�b
�g�4�Y��9 )�>Ѥ�f����P��X�!�#I �P �Noʘ���A+���R:f�K�h�נ��]E�q�5�T�	���	�0��g�&���4�4h�GCb>�����Jh<mr���nqgX�7���.�i����鄏�K� &F(��"�,nDT"�&����I"��T&��֊����	ZN,���m&���AW�y�$2粱lb�b)�O��/�L�#X�3&��d�&�dq��b��A-K8JGI��h%}Z�
V���k,�!�W��D����b�Q�����J��8k� ��%��
�(�������<�m�O���s:5T�ri������\��rv�R�uUUX҃��S�X�aUP��<e���!��H�Ju��K̘�,֨t��! C�(aݰ�R�C�
�nu&�A���4�u�T흁g�����d5T�Ar0�NFx��"�O�<�\؄�җ� F��lH��H���`
�a�&`nVL��'1E�9�<�D���S*�}8���~h�j�M݉dp�%�SZ��J�$�͘�`� *��[K*�@h�
�n�zLJ��SgdY�Ǟ}��<�\?.{0Z;��̆M�Aͻ籓B�ʑ���y[R��{�Ҥ=�B�%�aB�mZ5����Ɇ�ƃ 	ϥv�QJCyGi���{�ZtPAэ�#�P�!b����f4z+�-�(�}X���&��H�Z���-Am<�|��s�Q�1ḵ�o����Vv����ޜ���!q����Ԅ��J����U]J#&*3�6�(���y���H�&PdLYs�8*)�HE���zi�v��5Z�Bo7]FshkDǖ�G}(Q'�^=�܆��3 ������b1!	�G�\���*Z�UL�6d0�#���#"F�pk�T|Jf;Ir���0]*m��y���	,v$����Ҝ�z9�1D�k����î��}f���9CLPG�ې��T���S($�LȢ�i��+��j&�1�,�Ḩr���ڍ&���4�
��͌E�.�3+n+�4y5\��P���iZ���It�3jȰ��|���(+p�H�U�K	���� ����Ĳ��95�J
���L1��L`���JcS��"����X
�!��l��p�{�H��圪���!��ē�F� �#��^ٶ�X�,
ZJ9-�;Ɓi��U$F����մL:��������x)��E�-�����9GI�[ը�i��(X2¢�`�1���⍡��OP�}���}�״Z#��v��V���7 ���q�DM��B4w�)��1�:*��B�;�T�R�^�$H3[51�53�QHW/�����P�ڄL� o5�`�芓h�ތ�����9oT��:�:p-�7�li��8��g��soO@\�ދx��0�:�Y����k֛�*ua&>g���,r}�����f+�
@&7��IZ�*a{�UT_W���I0@;T٫�T�
D� ƶ�Jh�9� -7 V�Ǣ���2�ӭ0�5	�'tє��gz�^��� ��H{@�GG�S�`px�^��QAOMIHt���P3:�&��F%���-Ҕn���XtS�}-���x�J��o�M�`3����p��l�$�P��ݑ����v��Pßh�9�*��QauY�w�M
t+��Lum����u�tLы�60n ��znQ`�����
^(�-.��"Hj�	3��`*w��w�>�����}�4�s´c���� �(��HҀ�����=�>������PLf�R���=6{�.m�]I���d� R#H����T�+*�D	�߁����7a9��rE8P�^V��