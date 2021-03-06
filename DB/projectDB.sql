PGDMP     ,    0                w         	   projectDB    11.1    11.1 4    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            C           1262    34124 	   projectDB    DATABASE     �   CREATE DATABASE "projectDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "projectDB";
             postgres    false            �            1259    34138 	   Addresses    TABLE     1  CREATE TABLE public."Addresses" (
    id integer NOT NULL,
    name character varying(255),
    email text,
    phone character varying(255),
    address text,
    district text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UserId" integer
);
    DROP TABLE public."Addresses";
       public         postgres    false            �            1259    34136    Addresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Addresses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_id_seq";
       public       postgres    false    199            D           0    0    Addresses_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Addresses_id_seq" OWNED BY public."Addresses".id;
            public       postgres    false    198            �            1259    34202    OrderDetails    TABLE     y  CREATE TABLE public."OrderDetails" (
    id integer NOT NULL,
    quantity integer,
    "dateStart" timestamp with time zone,
    "dateEnd" timestamp with time zone,
    "timeStart" time without time zone,
    price numeric,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "OrderId" integer,
    "ServiceId" integer
);
 "   DROP TABLE public."OrderDetails";
       public         postgres    false            �            1259    34200    OrderDetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrderDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."OrderDetails_id_seq";
       public       postgres    false    207            E           0    0    OrderDetails_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."OrderDetails_id_seq" OWNED BY public."OrderDetails".id;
            public       postgres    false    206            �            1259    34154    Orders    TABLE     U  CREATE TABLE public."Orders" (
    id integer NOT NULL,
    "totalQuantity" integer,
    "totalPrice" numeric,
    "paymentMethod" character varying(255),
    status character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AddressId" integer,
    "UserId" integer
);
    DROP TABLE public."Orders";
       public         postgres    false            �            1259    34152    Orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public       postgres    false    201            F           0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
            public       postgres    false    200            �            1259    34175    ServiceTypes    TABLE     ?  CREATE TABLE public."ServiceTypes" (
    id integer NOT NULL,
    imagepath text,
    title character varying(255),
    des1 character varying(255),
    des2 character varying(255),
    des3 character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ServiceTypes";
       public         postgres    false            �            1259    34173    ServiceTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ServiceTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ServiceTypes_id_seq";
       public       postgres    false    203            G           0    0    ServiceTypes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceTypes_id_seq" OWNED BY public."ServiceTypes".id;
            public       postgres    false    202            �            1259    34186    Services    TABLE       CREATE TABLE public."Services" (
    id integer NOT NULL,
    imagepath text,
    title character varying(255),
    price numeric,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ServiceTypeId" integer
);
    DROP TABLE public."Services";
       public         postgres    false            �            1259    34184    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public       postgres    false    205            H           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
            public       postgres    false    204            �            1259    34127    Users    TABLE     g  CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255),
    imagepath text,
    email text,
    password character varying(255),
    name character varying(255),
    phone character varying(255),
    "isAdmin" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         postgres    false            �            1259    34125    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public       postgres    false    197            I           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
            public       postgres    false    196            �
           2604    34141    Addresses id    DEFAULT     p   ALTER TABLE ONLY public."Addresses" ALTER COLUMN id SET DEFAULT nextval('public."Addresses_id_seq"'::regclass);
 =   ALTER TABLE public."Addresses" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    34205    OrderDetails id    DEFAULT     v   ALTER TABLE ONLY public."OrderDetails" ALTER COLUMN id SET DEFAULT nextval('public."OrderDetails_id_seq"'::regclass);
 @   ALTER TABLE public."OrderDetails" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    34157 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    34178    ServiceTypes id    DEFAULT     v   ALTER TABLE ONLY public."ServiceTypes" ALTER COLUMN id SET DEFAULT nextval('public."ServiceTypes_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceTypes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    34189    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    34130    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            5          0    34138 	   Addresses 
   TABLE DATA               t   COPY public."Addresses" (id, name, email, phone, address, district, "createdAt", "updatedAt", "UserId") FROM stdin;
    public       postgres    false    199   v?       =          0    34202    OrderDetails 
   TABLE DATA               �   COPY public."OrderDetails" (id, quantity, "dateStart", "dateEnd", "timeStart", price, "createdAt", "updatedAt", "OrderId", "ServiceId") FROM stdin;
    public       postgres    false    207   'A       7          0    34154    Orders 
   TABLE DATA               �   COPY public."Orders" (id, "totalQuantity", "totalPrice", "paymentMethod", status, "createdAt", "updatedAt", "AddressId", "UserId") FROM stdin;
    public       postgres    false    201   �B       9          0    34175    ServiceTypes 
   TABLE DATA               j   COPY public."ServiceTypes" (id, imagepath, title, des1, des2, des3, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    203   �C       ;          0    34186    Services 
   TABLE DATA               l   COPY public."Services" (id, imagepath, title, price, "createdAt", "updatedAt", "ServiceTypeId") FROM stdin;
    public       postgres    false    205   qE       3          0    34127    Users 
   TABLE DATA               }   COPY public."Users" (id, username, imagepath, email, password, name, phone, "isAdmin", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    197   iH       J           0    0    Addresses_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Addresses_id_seq"', 13, true);
            public       postgres    false    198            K           0    0    OrderDetails_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."OrderDetails_id_seq"', 16, true);
            public       postgres    false    206            L           0    0    Orders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Orders_id_seq"', 13, true);
            public       postgres    false    200            M           0    0    ServiceTypes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ServiceTypes_id_seq"', 4, true);
            public       postgres    false    202            N           0    0    Services_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Services_id_seq"', 24, true);
            public       postgres    false    204            O           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 7, true);
            public       postgres    false    196            �
           2606    34146    Addresses Addresses_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_pkey";
       public         postgres    false    199            �
           2606    34210    OrderDetails OrderDetails_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."OrderDetails"
    ADD CONSTRAINT "OrderDetails_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."OrderDetails" DROP CONSTRAINT "OrderDetails_pkey";
       public         postgres    false    207            �
           2606    34162    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public         postgres    false    201            �
           2606    34183    ServiceTypes ServiceTypes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ServiceTypes"
    ADD CONSTRAINT "ServiceTypes_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ServiceTypes" DROP CONSTRAINT "ServiceTypes_pkey";
       public         postgres    false    203            �
           2606    34194    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public         postgres    false    205            �
           2606    34135    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public         postgres    false    197            �
           2606    34147    Addresses Addresses_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_UserId_fkey";
       public       postgres    false    2728    197    199            �
           2606    34211 &   OrderDetails OrderDetails_OrderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderDetails"
    ADD CONSTRAINT "OrderDetails_OrderId_fkey" FOREIGN KEY ("OrderId") REFERENCES public."Orders"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."OrderDetails" DROP CONSTRAINT "OrderDetails_OrderId_fkey";
       public       postgres    false    201    2732    207            �
           2606    34216 (   OrderDetails OrderDetails_ServiceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderDetails"
    ADD CONSTRAINT "OrderDetails_ServiceId_fkey" FOREIGN KEY ("ServiceId") REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."OrderDetails" DROP CONSTRAINT "OrderDetails_ServiceId_fkey";
       public       postgres    false    205    207    2736            �
           2606    34163    Orders Orders_AddressId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_AddressId_fkey" FOREIGN KEY ("AddressId") REFERENCES public."Addresses"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_AddressId_fkey";
       public       postgres    false    199    201    2730            �
           2606    34168    Orders Orders_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_UserId_fkey";
       public       postgres    false    2728    197    201            �
           2606    34195 $   Services Services_ServiceTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_ServiceTypeId_fkey" FOREIGN KEY ("ServiceTypeId") REFERENCES public."ServiceTypes"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_ServiceTypeId_fkey";
       public       postgres    false    205    2734    203            5   �  x����N�0�g�)��Z��מ�t@UBDL,DIM��� �lL�3X��7�m�4j���%��O��;�0�򔍒r�d�z�'�({�Ř@�t`�d����]�s|���0���G`{B�@2�N���?f�D�\Ӕ<i~�?œi�GF��v����m�xga���&�"L�Y"(�$����=�$���u;s�� ��K���P��ou���+C�[�$�$��\.>�d������,��[zs��&�&(4�k����.+&�!:XQ�)5$���x�A�NZ�A�6�%��fi�լݛ��I�A�6�	�=u����	��t��� N��O� 8"��m	(@�D���J�'7�J�'�-y*�a4c��v�/��7�U~-�4\�@oJ�Ҳ��C�W�����E�)@8�����      =   e  x���]n� ���}���]�������8`�J-?X���3� C����˧���>����|V�]�����I\���``�[Fv��X��\�i�$������e�[����!�p������XE�
�Kl�JϖS��O=�ݕ�`�Rh���-?�o�M���	-���=|���|=�|��:*Q��4V��4q[N�Ӻ�9�0U��bK���t�T.�8�>IZ�Nl��zy�L.��I�m�A�Zz����k�T�u��;� 3��p���V�X���
�[*:Y�;E'����kxY�s�!�WN��d�Y��xG��?�C��ZnX�{�un�����l�      7     x����N1E��+�Gk�v��[���B4�����a��̰��9�G7v(P��Ox|~
/��o���ׇ�R;�t&9�X��	s҇X�!�r��ƄUێs@�7�#�l�(��s�$��3pֿ2uG� ɍ�-��F�*�)�V9 	�e:E2f#_C��E9�=��iz��4#F��v��[��Ο���Ls)[���`Om%��P(v�N�R��!K]Iר�h��[���QӞu����C-=�Ѥ`�����/�ޒ��W�ߐ��W�+�F�      9   �  x���MK#1�ϙ_�ޥc2���M+��
��aZf��iَB���.,
��,Xv��₂0=L�䟘ԃ�Z�K<	<ϛ�z4����p5�y�v�1F�w��y0HQ+��?�n(��&l�}�)N"��u5�c.ŏʬۇT�!EO�tS��Ƞ��KH���f6��ð�I�H����P~���n�,L��b�e�X̤�����a-Iq�����Y�v�u�dum�uY��CG+L��E�hOH2)�c(�����& �G�Kq���� �9C��5���_#�^*�ٔ��L~z�� ���Z���[�L�j����Yf��Bg_$��qY=�p�V9$��³�9af��[�-��A�o���K={���eu߆u)~B+\��OԚ1?���y=��Wݕ/n0�����^@ƾi��y�      ;   �  x����nA�k�SlO�ٙ�%B�AIsq�m;q"�	R ��)�� ���WP��&�c;�sf��8Y���}3;�,tv�'�����h�|T��v�9>��>z5�;φ��D���'5�>};�^~:�!u�킑��I�E��@`��"@b�fCu<�E�,�Na2�5�4C�k2r�Z]@P.������Vk�ې����V�2�nI \��c\���lؚ��QEgrS�d��c�qC�<��&��;	Dȓ1&\����X���Ǳ��4�eM	mJ bj�3qz;��S��ǲ�[D�2Q;а��3x�i
t
�g�M	�<֠�ۥ�3d
���BP�C����!F�AmZ9�ڔ��V������f��SEܾhJ�ͯ*K?����>���~��Ÿ/5���b&���x ���pN��چBk��|K��^6!�y����HN�������谑[+-I@~�9c��G��-.g�eB0g�7\�Z�����Iۀ7>^�ՏR�uuU��M���h~Zڒ�| ��!��zPκG7~���)���;��NG�tG��'٫�W�������̴$#0Ք�S�&�΋�zrB��ғ�����Z^c~h�/*�Z�P�B6�t�h���á�)	Y�i���=\X���;�%��l�A�|��1!d=�=]
���?S�WW����93�-�Ld� �#9���ɲ	GCν�wz�c[	�о P�}Sl
 ���x���E�{      3   �  x�}�;��F �X��6s�h�3Rd�Xt�S���� ��E#=��9q�������������pWu�U��TO��Hs�B���2������;�CܐRN��*�q��0��`���-�o������km/��Τ?�����|S�2x���toپ�4���ݴ�|("L(�Bj��!2� �C�c�@������
R�*X++&��+�0B��)۱>[g�n�Yg/M_6����=1-ڴ�-�j�m�G��n�W�8k��W7n�����~�,N�e�Y�/9�B! r�PxU�8�$�č�s�Mk�2
H�b�m�!��s���e�(�L����Îo��[�ȧ��6���z{�{��߫��VjR8���%p���!��W��!��>[y���,�c��~=�a:�۬�x���O��<�^j��Y?-�v�Ŭ;
�c;�5�뗷��*<����J#Q�0%g$�L*��&��A�1����:M�5�!!ae��zgƬ�tQA�N돛Vo9yT����2:�M��[ �#��Z{��Ա�H�貀�@d������!RPַ7p��,X_`h0^.�qn�����V��W]U�������G�i�H�����]6,��X�Y�n~��H9X�s�0ʯ6)��SD2LV6B�CqHv����\�����F�B���nu&qP��H��4ehMF!{�x�L�ٮJ�Վwy3E��~$f'�#h�}@���T~�J����/     