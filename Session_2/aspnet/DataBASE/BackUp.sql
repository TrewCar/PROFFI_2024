PGDMP          
            |            med    16.2    16.2 K    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16414    med    DATABASE     w   CREATE DATABASE med WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE med;
                postgres    false            �            1259    16425    client    TABLE     �  CREATE TABLE public.client (
    id integer NOT NULL,
    lastname character varying(50),
    name character varying(50),
    midname character varying(50),
    photo_path text,
    gender boolean,
    birth_date date,
    age integer,
    phone character varying(50),
    adress text,
    passport character varying(11),
    snils character varying(50),
    email character varying(50)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    16424    client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false    216                       0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public          postgres    false    215            �            1259    16554    doctor    TABLE     |   CREATE TABLE public.doctor (
    id integer NOT NULL,
    name text,
    login text,
    password text,
    role integer
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    16553    doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.doctor_id_seq;
       public          postgres    false    228                       0    0    doctor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;
          public          postgres    false    227            �            1259    16490    list_med_event    TABLE     �   CREATE TABLE public.list_med_event (
    id integer NOT NULL,
    price double precision,
    id_type integer,
    name text
);
 "   DROP TABLE public.list_med_event;
       public         heap    postgres    false            �            1259    16489    list_med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.list_med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.list_med_event_id_seq;
       public          postgres    false    222                       0    0    list_med_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.list_med_event_id_seq OWNED BY public.list_med_event.id;
          public          postgres    false    221            �            1259    16545 
   list_roles    TABLE     K   CREATE TABLE public.list_roles (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.list_roles;
       public         heap    postgres    false            �            1259    16544    list_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.list_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.list_roles_id_seq;
       public          postgres    false    226                       0    0    list_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.list_roles_id_seq OWNED BY public.list_roles.id;
          public          postgres    false    225            �            1259    16449    med_card    TABLE       CREATE TABLE public.med_card (
    id integer NOT NULL,
    id_client integer,
    num_polis bigint,
    type_polis character varying(50),
    date_get date,
    date_last_msg date,
    date_next_visit date,
    diagnoz text,
    doc_history text,
    id_gostopoliz integer
);
    DROP TABLE public.med_card;
       public         heap    postgres    false            �            1259    16448    med_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.med_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.med_card_id_seq;
       public          postgres    false    218                       0    0    med_card_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.med_card_id_seq OWNED BY public.med_card.id;
          public          postgres    false    217            �            1259    16524 	   med_event    TABLE     �   CREATE TABLE public.med_event (
    id integer NOT NULL,
    id_client integer,
    date date DEFAULT CURRENT_DATE,
    doctor character varying(100),
    id_event integer,
    result_event text,
    result_review text
);
    DROP TABLE public.med_event;
       public         heap    postgres    false            �            1259    16523    med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.med_event_id_seq;
       public          postgres    false    224                       0    0    med_event_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.med_event_id_seq OWNED BY public.med_event.id;
          public          postgres    false    223            �            1259    16568    room    TABLE     E   CREATE TABLE public.room (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    16567    room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public          postgres    false    230                       0    0    room_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;
          public          postgres    false    229            �            1259    16577    time_table_med    TABLE     �   CREATE TABLE public.time_table_med (
    id integer NOT NULL,
    id_doctor integer,
    date date,
    room_rent integer,
    id_type_event integer,
    why_rent_room text
);
 "   DROP TABLE public.time_table_med;
       public         heap    postgres    false            �            1259    16576    time_table_med_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_table_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.time_table_med_id_seq;
       public          postgres    false    232                       0    0    time_table_med_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.time_table_med_id_seq OWNED BY public.time_table_med.id;
          public          postgres    false    231            �            1259    16481    type_med_event    TABLE     O   CREATE TABLE public.type_med_event (
    id integer NOT NULL,
    name text
);
 "   DROP TABLE public.type_med_event;
       public         heap    postgres    false            �            1259    16480    type_med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.type_med_event_id_seq;
       public          postgres    false    220                       0    0    type_med_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.type_med_event_id_seq OWNED BY public.type_med_event.id;
          public          postgres    false    219            B           2604    16428 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            I           2604    16557 	   doctor id    DEFAULT     f   ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);
 8   ALTER TABLE public.doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            E           2604    16493    list_med_event id    DEFAULT     v   ALTER TABLE ONLY public.list_med_event ALTER COLUMN id SET DEFAULT nextval('public.list_med_event_id_seq'::regclass);
 @   ALTER TABLE public.list_med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            H           2604    16548    list_roles id    DEFAULT     n   ALTER TABLE ONLY public.list_roles ALTER COLUMN id SET DEFAULT nextval('public.list_roles_id_seq'::regclass);
 <   ALTER TABLE public.list_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            C           2604    16452    med_card id    DEFAULT     j   ALTER TABLE ONLY public.med_card ALTER COLUMN id SET DEFAULT nextval('public.med_card_id_seq'::regclass);
 :   ALTER TABLE public.med_card ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            F           2604    16527    med_event id    DEFAULT     l   ALTER TABLE ONLY public.med_event ALTER COLUMN id SET DEFAULT nextval('public.med_event_id_seq'::regclass);
 ;   ALTER TABLE public.med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            J           2604    16571    room id    DEFAULT     b   ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            K           2604    16580    time_table_med id    DEFAULT     v   ALTER TABLE ONLY public.time_table_med ALTER COLUMN id SET DEFAULT nextval('public.time_table_med_id_seq'::regclass);
 @   ALTER TABLE public.time_table_med ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            D           2604    16484    type_med_event id    DEFAULT     v   ALTER TABLE ONLY public.type_med_event ALTER COLUMN id SET DEFAULT nextval('public.type_med_event_id_seq'::regclass);
 @   ALTER TABLE public.type_med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �          0    16425    client 
   TABLE DATA           �   COPY public.client (id, lastname, name, midname, photo_path, gender, birth_date, age, phone, adress, passport, snils, email) FROM stdin;
    public          postgres    false    216   �T                 0    16554    doctor 
   TABLE DATA           A   COPY public.doctor (id, name, login, password, role) FROM stdin;
    public          postgres    false    228   v       �          0    16490    list_med_event 
   TABLE DATA           B   COPY public.list_med_event (id, price, id_type, name) FROM stdin;
    public          postgres    false    222   �v                  0    16545 
   list_roles 
   TABLE DATA           .   COPY public.list_roles (id, name) FROM stdin;
    public          postgres    false    226   �w       �          0    16449    med_card 
   TABLE DATA           �   COPY public.med_card (id, id_client, num_polis, type_polis, date_get, date_last_msg, date_next_visit, diagnoz, doc_history, id_gostopoliz) FROM stdin;
    public          postgres    false    218   �w       �          0    16524 	   med_event 
   TABLE DATA           g   COPY public.med_event (id, id_client, date, doctor, id_event, result_event, result_review) FROM stdin;
    public          postgres    false    224   �                 0    16568    room 
   TABLE DATA           (   COPY public.room (id, name) FROM stdin;
    public          postgres    false    230   ��                 0    16577    time_table_med 
   TABLE DATA           f   COPY public.time_table_med (id, id_doctor, date, room_rent, id_type_event, why_rent_room) FROM stdin;
    public          postgres    false    232   ׍       �          0    16481    type_med_event 
   TABLE DATA           2   COPY public.type_med_event (id, name) FROM stdin;
    public          postgres    false    220   Ȏ                  0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_id_seq', 1, false);
          public          postgres    false    215                       0    0    doctor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.doctor_id_seq', 6, true);
          public          postgres    false    227                       0    0    list_med_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.list_med_event_id_seq', 5, true);
          public          postgres    false    221                       0    0    list_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.list_roles_id_seq', 3, true);
          public          postgres    false    225                       0    0    med_card_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.med_card_id_seq', 1, false);
          public          postgres    false    217                       0    0    med_event_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.med_event_id_seq', 1, false);
          public          postgres    false    223                       0    0    room_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.room_id_seq', 11, true);
          public          postgres    false    229                       0    0    time_table_med_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.time_table_med_id_seq', 10, true);
          public          postgres    false    231                       0    0    type_med_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.type_med_event_id_seq', 5, true);
          public          postgres    false    219            M           2606    16432    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    216            Y           2606    16561    doctor doctor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    228            S           2606    16497 "   list_med_event list_med_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.list_med_event
    ADD CONSTRAINT list_med_event_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.list_med_event DROP CONSTRAINT list_med_event_pkey;
       public            postgres    false    222            W           2606    16552    list_roles list_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.list_roles
    ADD CONSTRAINT list_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.list_roles DROP CONSTRAINT list_roles_pkey;
       public            postgres    false    226            O           2606    16456    med_card med_card_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.med_card
    ADD CONSTRAINT med_card_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.med_card DROP CONSTRAINT med_card_pkey;
       public            postgres    false    218            U           2606    16532    med_event med_event_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_pkey;
       public            postgres    false    224            [           2606    16575    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    230            ]           2606    16584 "   time_table_med time_table_med_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_pkey;
       public            postgres    false    232            Q           2606    16488 "   type_med_event type_med_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.type_med_event
    ADD CONSTRAINT type_med_event_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.type_med_event DROP CONSTRAINT type_med_event_pkey;
       public            postgres    false    220            b           2606    16562    doctor doctor_role_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_role_fkey FOREIGN KEY (role) REFERENCES public.list_roles(id);
 A   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_role_fkey;
       public          postgres    false    228    226    4695            _           2606    16498 *   list_med_event list_med_event_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.list_med_event
    ADD CONSTRAINT list_med_event_id_type_fkey FOREIGN KEY (id_type) REFERENCES public.type_med_event(id);
 T   ALTER TABLE ONLY public.list_med_event DROP CONSTRAINT list_med_event_id_type_fkey;
       public          postgres    false    220    4689    222            ^           2606    16457     med_card med_card_id_client_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_card
    ADD CONSTRAINT med_card_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 J   ALTER TABLE ONLY public.med_card DROP CONSTRAINT med_card_id_client_fkey;
       public          postgres    false    216    218    4685            `           2606    16533 "   med_event med_event_id_client_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 L   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_id_client_fkey;
       public          postgres    false    4685    224    216            a           2606    16538 !   med_event med_event_id_event_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_id_event_fkey FOREIGN KEY (id_event) REFERENCES public.list_med_event(id);
 K   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_id_event_fkey;
       public          postgres    false    222    224    4691            c           2606    16585 ,   time_table_med time_table_med_id_doctor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_id_doctor_fkey FOREIGN KEY (id_doctor) REFERENCES public.doctor(id);
 V   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_id_doctor_fkey;
       public          postgres    false    232    4697    228            d           2606    16595 0   time_table_med time_table_med_id_type_event_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_id_type_event_fkey FOREIGN KEY (id_type_event) REFERENCES public.list_med_event(id);
 Z   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_id_type_event_fkey;
       public          postgres    false    4691    232    222            e           2606    16590 ,   time_table_med time_table_med_room_rent_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_room_rent_fkey FOREIGN KEY (room_rent) REFERENCES public.room(id);
 V   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_room_rent_fkey;
       public          postgres    false    232    230    4699            �      x��|�v�ƕ�3���=�ၺW��Cz�=@$!^�A$�'I��>�}�k�n_b�I���n]Ș�Q���Gg�BP�Ė�Ď$R��º�9�ZU,[�m�h������œţl���}�������l���j��}p������7�ٿ��?�s��mf��"/X�t�e���_���ό�ӹ�������}|$>���釳�wx�o�����L�?,�ܻy�x4��x��C���g�x�x�!S.�F�+~Ɍ*4/�t�e��Q���g�Nk�G{e���a��_/�/��zJ�kg
����:���K׃]6�K���)�٥��3�u�Y��)�~]��>-_<�A��ǿ���_y���߰�Q��RC��d&�|f�bJf\r��P�f��Fy��7��V��������{�~�˛O��o��h��c0_�w�o�f��Lk�B��eBuf�����2W&7f�̟n>�'^-�ҧ���=�.�ϰ��IWj�ɂl��e\�
�d�m�k�a^��������~uL�D}�O}4X����/�w��/�Wx�>�M��Eg���Ϥ����S���1�����_����{�D<���g�g��k� ����H"VI1���Ș�r�^�f�����Z�_�!b%�ǰ��G�ut�o���e�@�$�5�Ҝ�L�` {��-�3e��/��~�W�ч�=ƃ%������r]�E�_��G���<+m���r�i|Pjr�S�Çt��/��^Q������7�T^��&����8�A�t�&��!^!�C/_�����:D���7��L9��3F L��;�f�>l7*�>Z�!/�X)�.BB��?�/xS��=OR?�4�i��I=X$��ϵ���b�iRC��O��_�
�h�&��Lqi��L��u���g{�f��7��Y��G���O/�����`�ԗ�!_��:�;|���!��}���1�.죂)m��&��/��>������/��mHW��Ik�2��N3'�2;�P?��V��J�'���ĝa/��?��Ie$1I�qj���>��M�3�s�>e��ǾT!$𕟼A�.��x��ղ�t  㸞if9S���U�ܪ��F%�Qq�L�9��>a��m�	��G �s<-`�TH2's[�z2�~����a �O��c<��泑�\�%p��şk�3'%3�q����k�|�^o�j�C�1��ߑ�BH�B�w�,
=�MQ8F�x�d��,�=�Q`^������3i����f�FX]�8fk�y^�T[�iɋh��Os.��u?���E������'��w&%�>Y��PA8�%D�ش��'��@�|�O&�=���ų�g:�ɤ�I��g��\Jd\v�����n�U�o !T�k_�@�~�*�I �$�����7���f��L*�0��@T*�s�V�X�(��ܧB�Gޟ($����(�bZ���Bcv�:.���yuP]'��c.:���}�x����'Y�"1X�T�����e� ��g��E�;P�1I�
��	Hc!*���f��B��?�γ��>��] @R��~�_�G?��r�g�Z/=�
�$R�k&�6���Z@�~��I
���e�qo�63�gR����e�I!,��-���n������l:�����_�ߏQ��w���� �}$'��燋P�" 8��c�;1e�7�����7���m���Zθt`�x�������ۍr�������!�L�c�w^�n��Z���2'N�<���i���i�k�D.ln&��w>�.;�f�l�ȇ#��/~����K���bs+#Uq�pc��X�8�E�8a88�IuR���j����֜y�-���þ��x�d���@�	�C�c^q
��^un�J����ru5K�=	���Z {x���@��v�]�����Tv��.�#$/R5�~��PD�IE^��lh�~��3A�G��`�6����'BTО��A4��wHP�j	���G�"`�`���ă�
�</O+i��:��|�YC�g�Q1<ٖV����`��\���IV�п�׈��ч⫾,W�y����Ԁ@O�ܢ�Z�"�im �A�������k��j�ar�N�|X?������ԝ�#�<t�Ҫ�H(gO�&��T|%@~�A����OM����:!f��W9 ��KAٸY������Ac��g�/�ȋ���c�!��S��0��m<���x@*��ĭݤ.����'> ��5�K��׾�t?`d���|�A2�	�6�l!����ˣ��n�ڳJd?X�/f�=�b���}p�eʳUZv�lpQ@r�����Mf㏡�~B�����D�`e�e���E);h��L��͝F���O��r����_�HnPs�*4���)�ݱD�Eh�N	�C%��쯈�+_�'�i����BC��p�PV���zuX���L���U�]Ux��_G�^�~���Ʃ��r"�P&�j�����E��ɐ�r�����]FNp�)�Da��I��(
���/������v���!�~�����_�+��x�}'6;�efL��,��	�,(�$.~��?�'>�v^Nu]"\�<4yi�!e��}���Q�ў�w���2�z
��?ԍ��4 ��X��g�D[S�T$����"��XԚ�-񺷔���|���0D@�e ���(���}@�Ay�lW���nclϹ��3_��7R���|��˻���'��R`0^�.#j
�[��I���S/7�`!�=���ݳI�P5_:�w���87�=@�w��̫�v�>�� / x��0A|~��!Pԓo��W����K�N��X=-UO���i���
G��꤀�gR�̲Bp�4�&;��ʃ6_kvJ�{Q!
�rx�g��/��J1"1�}�Vy���3����􍍉¶o=SK��v�谲�s�&�ٝ��hs�Fdl��Z02�#�D�m�2�G�(>�G,��Ƅ�Xn�!�����b��������}�[t�"%y)VP�-'�,P�+rMQ�ܩ��y���M���(�u�	C��A����Er\-�؁���"<�j7�$�!��:��Cw7��xc]�8d���BQp�А��-J�z�Uo�;�h���"�Uҁ��=[��L��-�0:D.���K����^���}!0���[�����FR��fĩ�fB�^�Uge�]�)�K=.�·_��@��ѫz�o�`�1���<�r!w!��d�}�`_-=������6r�)Ѭ�x��0�qe�S�^�����AuV�HJ����;%2�p�����K_�� /�l֛�u�G,τ�-�P��I�&~�u�䲣_���YTd�L	ah����E��l�>nw��^�WZ6�vR�k�$�����ۀ���h7s�5�t�&%����,W.>L���|��~��M��g��$.��%�n��fc�)��'pϡ�n^:�&n{��w�A	ߜ�ꚜ���\���x��i^&t�Io����~�L���N�%���|QG9��if?+��jr �0B�L��qǞԧ�N^�6;-H�(%mW|���_�F̘@3�`�j��B�1�9��M6
I�<�5���/����-��(C��[[@�A�e��Q��6g�Ycd
x��`�G���|Ee�Ie��PEi�s���3�_�[�'��w�1�Ϗd!���ئ��l����ky��Z�r�g���t�:f��E�� #��%9�2CC���
EԠ�H�3��<4�#��q��Mz�+��@����]���zuR�G����IG^���h��k�>�	�:U.W�����Ȃ��}����+�o݈�W`�lf��d mF!�P�4�s衳ZꡔR��!*U��	��;p�MEp�pkK��x�t�[+j��	9�	_��["�byE�ď,�9;��˴)���H����N�	�^o5F�[�1ғA�:��vV�R�9���H� Y�b��0��ڼ@[����}Nfd?s��Ō*����-pB���w��fw^��`�v�������̾M�4��b�`L�r@�ȸ�D��H00�i�����o�:�]�,    ɕ�qgQ?�,^��0��n��1P���]��
}:,X����\��{1Vy\'"��{,�1� �6��r5i�R���k��?��t7Y�0�!��",�Օ��C�f��i���{�F�\� :�~�Fk 7_��O/��a�����*��E�$+P`�`8�[1~��y/��
�~=9���@�{�#���f�)NxR�����<�� ؉
����q�OUV�h��h�$)DE��$n)>W1��w��_E�xZvK	��
��!�ĠSX�	9|�2}�:k�iqg�aI1�3���S&��w5�����sߨ��qiߪw�%���Y���Vs��a�"�.�>��^�!�@�\�!�TA�!k�9�L�SnU:v ��F��y����˯/���$2"tˊ�[&���K� {c���B�74�l�ā.��7#�C�4Zs���v����<ik�>�n���GZ�|�'!>�.��~oz�𹺅��7��V��d���OÔ�⃸<7�Ҙv�'��nᰌ[�0�0;l�kZ�N[��(U�����Ȥ��:�<�F�D�s��#��T�������,)�(s�����M�ފ��bIY���m�A��E�f��Q{Ro��i�F�^�!OJ�^:߅��Ff&�H�0��"�{�s�V�ЮY��7a�� }Kc��=;���$���:ځ7k�F����w�(����'�-���z�/��;&�:��ЛC�׀s[����]դ�[�O;6p2�r��a�����a-+4����ܭO��v��&�2 e�ݴ$򜦂�U/cOt��Wi����F�]�}u���s����_������A�(%]A�o�XΕ�;��^��Ώ��&�{�ĭ�.0�݃/���73���Sh�k�{���-JO�:H=9�\��q(����{�'��@G>`�H��j'��r^�6��z��^
=M9C{���QG�`���q[�6@����3�ȕ\ѥ��Ϧ.�	��ei��Ó�H���6�*"��8�};2s��@d�k�I�d4�t��Q��Z��k�".o�&]5����-2y.5��Z��y����!<ڙe �1i �Ӓ�A���i#f��v����g^&]����W�O,t��R�(��@`����K2*[5��PǨ�&M�k���t
����!��"�E����IWm)4)h��;�> ��vS4�員�zn�K7����J_9�?��ʀ��Vڽ.��椼3o7��V�}�g��ϵ����4�y����d�e�Ǭ�1]��C:��=�4�	xS��ƅRj̷0[H.���AIw���ڨOO���#ď"�Iz��;�q�2�:�j�=ø�L�
�9���/���n�K�$򦀱J �Ca��WF*���z�^�\d�090|*�_�UɈz�V�H�zE�X\J#�ġ�$�p~�7���v�7�!�USuFF�KK{�������Gg�v��&?l6��jX�������������+[���4GZI9uc����iE�9�O�|��p�&��x�L�a��S����4�F�a�M%��<o7+с�x_�3�	��+�Ĵ#�BO\�3��A9a+��o݆����6N�q��LqEKg�0�P_���*7��f�WCH$y��v�o�{��n�h�)���7�w�sNIT�0�}ԧ��o���v��Aލ|���]���Σij���n�
k�~�E�Խ8h �;yy������GYI/���[�{�7ڣC�ء�O��bh�r黅�9�|8g�܍�G�;�4t�Ѐ[M�ˌN�l��l	�f�<���2i�zW>[�k RFM&�6�I%PNS�f� {��Zh+Vy��9��iX(J�̸�Em����:hsг�f�o3�n�Dc#��.��ᖕ�)�����(R������ ���o�\��l V� ���-Q�����Ȏ���wړƟ�	�z���K��Ix��Sf���co�~-��NDLw+�i�Cw����B-����B�ř�@�W���]:�i
:D|������V�LP�(?�}[�4�09$�����0g|�aKo�Ѵ�$��J�C���I�u��S�7�Z�]Z5�؆���	?��	B�nmG�7,f�2���L�{�]�$Bq������
����' *@�4P2�d��F�YΏJ��0��Ӛ~r߭H@�Ih$W�Ҵ��
�Vb������"GJ��|\ދ��[�q�������M���l��)`�UYTZ��;�E �V}Z���Y���)�N�?�xur�6��M7�t\P�����~�p%x���%�g�6������a�������B�D;&���7��^�Y���f)D��0�hZ�ɜ���G*�����(���+5.�ܙr��~�#����~����#�H��J;��I���@4:Z�?�6���|�<nذ�gT\.y!ĳ�V~)a��I5޷`� ��4�,��Ӈ���ި�o�G�����J2���Т!b�WoSJ�Vk�`�Q���^��������Ѥt��¤^&��R.Wv��%n��j�r4�h]��U�������44�?��quF!{h��'������ΰ��-q�X�5��e�m'%����c<�?ꚱ��G{�F+2�ڙc����/��kch5o����ub��!J��a(�O ���_y9��W8R��Q�������s`��c��6�uܲL����D�t!ULE�lf ��q��7g�Q�Sg��\���+q���zP��"̡�hC�ftK��� ;BЂ�u�<�I���G(��{�a�1)���3:�%-�j�^��Rܫ��;����d���Xz��*n�4�Mt%Ǝ��c�Mg��O�F���m	Y>.,BV�ƀ��q��oVw����!'m@]�p�l}��������Q�gڨ�-�\t�S�&~����e��}g�Nc1H�6*�ъ;�p.��v�٫v�z�JϚA4{#^M��W`�c5�͠-���[��F����o��Y*��E;TP����p��,s\���аxي�o���$/�&hr('8�ϳ�t�����)/�B�5c�$_�}���^>��T�ʂ�&!w% �y�j2'��+)��(h7�kN$��tOt9��Ү=����5m5'�W�H4�5��o�-#B<�C�g9�9�&k2G5�W�h�<o��;�N'�VE��:�%�7����yG)��?����Цń=�'$��&�����5����P`�� (�g���9l��]�͎��˫?�m=q������Uq��N�0E;��K���5�o�\t,�˳�e�j�]���iUFV��s��Rr>;��ˣj=o�N%����{a[�;mB���O�T��o�I�2a�܊A�hS�m��_o@���B+e-�ut�S�!��[�5��H��1�S ���+�al<M�&�q��]ڣȾ��c���R�-��I&�e�)c��t���=h�w��z��6�-�~1(�G���m�������7�i�l.�,�[��Aҍ@{B�GFG�,H�;nPX��',���n���N�Q��%0`hH߼�0�di�'����К��8�Z���*��7N�n��$��Fƽ:��LF׊X%$��4G�^{Tm͡��p��m���]/n�q��_D}�5C�Q���(B�35�Ϥ ��kM�\u�H<�a�nY�@#��(嘤��l�;�~�6��W@i�AM�/��18{R9���JH���6ar3�\���{=A�)4U.�uP��O
8�ZJ  ��0&
��j��v��`K1N'B�!PV��������б�a8�c��tm�d���u��;\�64�$�(��FJ��d�a��2;l���I}�ޭ�p���ߏ�ex�R�h�TZ�c?�*lt(�IFkLb2(���t�Y���.�`����8��n�۽r��$/�Znb`*b&����k��O��t2�*B7&�U$rJ`ު�R���O���H�	�39
>s��hVR�Z!�t�V	6��f��<i�9�A��Gg!��X<x��T.͒��v�LN���<��ԟ>x��F��ӕ7M�F�HXZ��x���Nʵ��N�Q�a`��2�KN=��_]ܗ�Ӱ����A�SC	�Q����   /$����1&��Y��=P�q�9�/�*(����Ʉh��1t��`��ɽ���[4�v����IL�i�9}A� ޡ]���Fqb�
'��f���P��]�y�[9���y����N���2+�����sT%c�QwVHAgr��a���K�%���~�'?���+��Gh4KwJN�I�8�c����wkջt�F�TQt�uv���3��i8=���ƍL�{Bɦ�u����{�H&t�����1�%�UL�J��T�\���V���$T�����{��z5h         �   x�3�0��/�\l������.�S�0I��=ΐ��r��"N �4�2�0�{�x��z@U�Q���y�\Ɯf]l���u/,��¾�.lP��^��d=���|�Z#.���.�+ R��=?'�,1�8� '59f�)�	6^l ��NG'gW�B3쎀�:��=... 5�xy      �   �   x�]�Q�0D�������]<���R�F"�0{#��/?�vv��n�XW�b3�X�A�n�V���ڲ�ba �0!'���*���r��>H�'Ɯ�A���r��˖���9��I�F�r��Tr���2�ͳ����D-z��>�|�I���}��ra���`��MX��          D   x�3�0�{.츰�ˈ�[/l���b�Ŧ�6 �f�e�yaʅ}v]l���bW� ^"�      �   �  x��ZK�$�]�N�(�Ɉ#x�0�[0���0��$ˀX��0Cc/�G�Ok4�+d��/2�3����!N#���F�x/�RP.Y�M�RӷӋ�G��������fz(���y�
)��)/�)�c�_��;|b��ty�S��o~��?���>��/���{������xG�Bj\)M�Q��M٧��d�x�>��#��������lNo_�أ�^9�,%R��*��tl/�I�F�fZ����������b�/L�p�xz>����ΫaH�Iɵhᤙ�&xY������.���is�1>��Lxy��v%� 5jR��R�2��F����񄰇��������^LO����+��l�[|ɩ�e�����*Q4֒RbexN�KQ�/���>��O̖y<=�^�ث��ZH128)��9"�-�_��n�����6q�����~z=���������\K��B�nG󵫦�}aM�����wW�6vz}�2�xzy����Ud}X�*sBhx#"m�ٯka�����b�3��ç'Fu5�?ǒT*k�Y_�j���#<�����xN�ǧH�`
XEk�
kȨ!��v�����>�O���s��9|>}�ⶤ����G0�	����`) �[�G����\�(�3�����%���aUK2��P�+�:�F3����A2`-�aG��w�_���kA'�Z�g�������������Jdxɀ��Y$-�}W�wu���v��Dr�b�ȅ
U8������j�[kWJsW��F�������J�\�|�܀�U�[T��Z<s���([hg�(�^��A�K�ڲ��[�![ l �� �,m�4���b[-�9�#0�^�ea�SC��leo�n��U�������G����F+�F�q�V6ʅ��`���Gc 8|�4����������79P�u��UA��Dj�<�/l����os�PQǺ�%IV�\�������%�����%k�?_\Xc���{12��h^�x�R�d���gx� *BhXm>����G�IW�ҹ�!��M�r��q�� I��䄖�F�ɡ�Z [�Hʊ}�GPGs^dO�� [��Q�:��Dur��N�p�X�s��̓��|�72:�@���EM�:#o#�(��xX�K�:��KМs̉I2Pa������W���ךٜ��i
93��`%נ?j�=�qw�L���.�6�㠇.17
MYZ�
�d�,�:ڷ��$0=;�!���040��A���A�,.V��/���x_v0�~a��f�0��"�cԱ��"��~;7�H�T$p
���	
#���T��b"�ƕ�u�Gc�oJGǣ0�P|C����r7��<+��I����Pٱ������R2�#����-n��u��9Pv��5`���@�a�rT�<���m�x>_p�1� �٩(�:�e&�e�ו@�@�.��z�.:����)$����(�*�`SapC���� �A�4�j
I�Z #��sFum͝�dG&��<ds̱���m.�rP��jSv���a~�N�}��	���h�m�� ����+���Zacv�������6��C�`�EIM�`�A���mv���!�Q�;����yA'��R� Q��|4RlǦ6Rw�z9zq	X-V���)>�(�����{�7;�q�P�>���n�ŨƋ1��c���6p��ˀh=��$�8�"��y�X4�����E�&TQdt�QmW������=��r�46;P��Sf�h83�s2�X���H�zV<�n�������������X`��\I�w�����d�8�A�bi��-S��c2�\C�Pv�Ж�1ְ��3�w��&y���m���X�oO���Y��`;�JO�����\bc
V�
��!G��lB~KÓg4��ⰎeJq@�/X
�n3ϕ
?�8��������)Xq�*RX"RI�!���`��K/�N����8�A,`��s4Hڀ�#�=ϫ����L�{N��cW�`RIfjV2�{�]kݞ�ĝ�����]�8)g���:֠�:��=E��/�a�F(lԨ�� &*0���L6�?~Pa�{�)Xu��)`��P�`�qա(����Fɣ���לS6Y��>=�g�շ˯b7�_��j���զ��@�l�{k=���m#VuĪv�k�
5����ܯ>�H����=�OW���h��;�l�v+<>�Z����0����T��ZV�L�[�e���P�֥�#�&�kw
YVI��lH���2�.����t�[w:��g�,��hCtCэ3g?$�yx;�Vǰ*�24���x�q���db�W���Ee���6,(e4�aO�YTEOir���֫#[����_�h�@y�:<��'��	;?��Z>��!���"���4F�����aZ'��f�Ex��7ǪF�\1l�Vi�����I7#�G��V���ZX0+0��L�^��:�GS7;�ݦ��q�"�Z��$�k"<��w��܍�a�CU����G�1�S��M�ҏ%V&-�����_m�*Ze�K9�¶�+�έ��Q��9�8��E͆b �HlI� �ʽ�`����q���h�^M��JU�Y�����C���[��X�����i�EЈvA�4ǭ�J��ȷ:�{���� ce��^�+C��&DK}w��{�đLR�bp�3��l�W�w���{�8����j`�����Ɯ���u�d����HR�$,H�d�3�i��1�?8�=��CH�8
,�&:y��F��Y�Hr)H?��Vsk^8�I	bn��/����H�`_��[�+Hy�5&�p�k���6��� �ce�\�YԯJ�;I���4�	4D_����^g0� �iC�Kwq�'�0�1D'U+����X�5r������8�"�.۽H�Ѹ��?�~�5�:K��`�D�I��������DMސ$X	��"	b+�[�u!��}��E���L	�
��jw�"�~�p�.m	u�R����z�ܸ�L�l�8��I�,]�j��H�S(FFÈ%iVأD[���;�����W�4d��`#��(��e����>�;]�R��AM=B�CC��8�6	��)����:�(�b2�m2�#�ѭ�%{zE�w�Ќ�UաGwBB���A73��x쥫�;����򵻥�A�6�؈9	7d �լ��	��Mzȡ��W��*����x����~�a���Y��V���6`l1������v��J4      �   �  x��[�n�}.}?`)L���u��C� y���{��h
$�2�c`Z�dS�0��Tu�t�H4B����8=��U�N]�-@��d���Y(�/���I1+&�ۼ����^q���~���^����,�]�q��b��8,���9]�,����Y1��I��Y_�P���?/���p��a�O���)�[�x������z��W�-��_/�׽����yq����A�f�l/���R�L�3\��}�'厏�P(-M�_�\���9i���I��*|Mz��4rG" �Gcp�sǑ$	���D���a�k���`O��:�|�(�G�Q$\�x��������W3|�<����0����#��lGr��7��YP�1�����/�V������5� Ӡ�r�z�~�kza�jπI�|�Ye�h�S��_~�G�ɾw�#҂-�ƍ�jW�)���_��\R�D�Fa�9j����#�҃g4�I^ ��:;�>"E��",aX�t1�*���2G%�6��l�����	�"�k SH["�]�Q��v�K$m���~�r�[^<".���Q�k%r����A��+JqJ�,�YF��vPi@���1XD�ԙү�G��JԬ�H4	Z*M�'��{D:̕��b�c>��T&2���Ĥ���ؒDL��/%�e��4A9�r�LJ��Zf�y�cO*T2O��K�$).)
\���{$���C���z�&
L�NYІ`��G�Y���Qf��N�W��5�����ndܧT2I����@l�ț��p��J�q$�D�"˖�y��}���^�u�Do6-t�)�1(19
:
��Dz�� ���9����M�u�pw��3ȳF�0��7�;?,1��E����s�2��4�\.E%~��D��9��>���r=5��9��9�V�t�4HÒk}��0�+�Ué�IF)�!�~gՐkf(4��K�Q�ݣ�@nR�K�� ��'�c��_�����G��(��[ƊoĪ*�v�N�K�
�A��uX5��U'�c�z�=#"'D�x��L+��IU*K)9��I�ﰓ<s}�*J��EL�>Ǖ+F����{���J���$z\�f�2tu�Q���[���q��v��@�3J�p�B����J����ݺ�ҠtJ3(Y,^Y�sb�?���m���b@�ڛ��7�(��QL��M�`AY����vԐ��U*��^�@q.j4�;��Ӄ���y���>4�$�lC�ݢ�{�S�����[��>�+�2��t� F�����%"�K�GN�� -�"$R�|�G�DY����47)�,�uRb�bb�T�9��)�����4B��+�kZqi2(2ԯQ�R���{�A��Dyob%K��q�I�tDЦq�ШI�ao��~\ZМ�.ߑ��|�e�P���.Ŧ�˼犊��h�z�}�C�z����T;!�<Ci�?.RM���j
���Arb t�жƪ`�A Ž���x$So���R#�Ժ���J�)3t����`rF���[�p����(0\��<�$n�u�3\>X^�����f	���v�ɉf�~b�0]�)̒��
��>���`l#����9�d�c���Tm�<��K1�-o��Z�5�O�S�:A1'�۾�Bm6���7����;>w)C�7�R+�
�R5X�{>��L�gT��F���V�����������Jm�v`�k0���y�`>�����1fn�l-���Te��Cv��4`M2Uy &N%��(v�j�J�rn�ˮ<�X�-���T:��Wx͙uQ��n�,7M)Ħ��^q�U�t�w�F�_��o
�N��򜄮������R�52�'�����e�Ӫ.�.]�y�"�z��6��)p��9.=�'/�'�j௎IN7��%����0�@��0�Y�=��V��������;�3�%.�I�Ɋ���������J�8ɯ�j�|��M�����W��L]�|�6���g�����v��>R� /!�2��FO�p�M�p�%x�'*�?|?�5l�>���T���,�\W��Q��ZZ�C��[�Z��S�g���^��[�<�f"�����B�t�O,q��vK�&z�C`:s�]�Z�?{l K�+tb�a���e�I����:�\�"U�.-n~&�2T������?�HA          9   x�ȹ�@��xY�q��_/�+�h	W�������<ռ5h������
y         �   x���M�0�ׯ��0���]<�?�M\��
�HDz�y7r�&w`^B�h�ufZ'^|��$�?��^ghP㌓չ.t��V��h��`q�9�:�5�r��Ae�
v8���-B��5&@���5+NnM&�PI��(	xV��G���k،�,��>E7T�Gֲ���֊�A���qd���oȽ�MbkNB;�Zٽ�2���Zս�jp�.�_b%.�_Jӑ1�	JD�w      �   �   x�]���0���� ��6���Z""J�
�7�K������N��Z�U����E�Q��:�'��,+)���e��Z;� ���$���H S�*B���߻ǈ��c��X�З˃?8�`{Q�utve�8��t�os� 볧����י�     