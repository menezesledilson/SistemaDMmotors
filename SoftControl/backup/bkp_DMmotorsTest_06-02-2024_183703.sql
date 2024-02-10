PGDMP         %                |            DMmotorsTest    13.13    13.13     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24783    DMmotorsTest    DATABASE     n   CREATE DATABASE "DMmotorsTest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DMmotorsTest";
                postgres    false            �            1259    24786 
   credencial    TABLE     �   CREATE TABLE public.credencial (
    id integer NOT NULL,
    usuario character varying(80),
    login character varying(60),
    senha character varying(60)
);
    DROP TABLE public.credencial;
       public         heap    postgres    false            �            1259    24784    credencial_id_seq    SEQUENCE     �   CREATE SEQUENCE public.credencial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.credencial_id_seq;
       public          postgres    false    201            �           0    0    credencial_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.credencial_id_seq OWNED BY public.credencial.id;
          public          postgres    false    200            �            1259    24794 
   livrocaixa    TABLE     �   CREATE TABLE public.livrocaixa (
    id integer NOT NULL,
    datahora timestamp without time zone DEFAULT date_trunc('minute'::text, CURRENT_TIMESTAMP),
    descricao character varying(80),
    entrada double precision,
    saida double precision
);
    DROP TABLE public.livrocaixa;
       public         heap    postgres    false            �            1259    24792    livrocaixa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.livrocaixa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.livrocaixa_id_seq;
       public          postgres    false    203            �           0    0    livrocaixa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.livrocaixa_id_seq OWNED BY public.livrocaixa.id;
          public          postgres    false    202            �            1259    24812    venda    TABLE     �  CREATE TABLE public.venda (
    id integer NOT NULL,
    datahora timestamp without time zone DEFAULT date_trunc('minute'::text, CURRENT_TIMESTAMP),
    cliente character varying(80),
    celular character varying(15),
    datavenda character varying(10),
    nomecarro character varying(80),
    anocarro integer,
    placacarro character varying(8),
    chassicarro character varying(20),
    pagamento character varying(50),
    comissao numeric(10,2),
    observacao character varying(80)
);
    DROP TABLE public.venda;
       public         heap    postgres    false            �            1259    24810    venda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venda_id_seq;
       public          postgres    false    205            �           0    0    venda_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;
          public          postgres    false    204            .           2604    24789    credencial id    DEFAULT     n   ALTER TABLE ONLY public.credencial ALTER COLUMN id SET DEFAULT nextval('public.credencial_id_seq'::regclass);
 <   ALTER TABLE public.credencial ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            /           2604    24797    livrocaixa id    DEFAULT     n   ALTER TABLE ONLY public.livrocaixa ALTER COLUMN id SET DEFAULT nextval('public.livrocaixa_id_seq'::regclass);
 <   ALTER TABLE public.livrocaixa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            1           2604    24815    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �          0    24786 
   credencial 
   TABLE DATA           ?   COPY public.credencial (id, usuario, login, senha) FROM stdin;
    public          postgres    false    201   �       �          0    24794 
   livrocaixa 
   TABLE DATA           M   COPY public.livrocaixa (id, datahora, descricao, entrada, saida) FROM stdin;
    public          postgres    false    203   �       �          0    24812    venda 
   TABLE DATA           �   COPY public.venda (id, datahora, cliente, celular, datavenda, nomecarro, anocarro, placacarro, chassicarro, pagamento, comissao, observacao) FROM stdin;
    public          postgres    false    205   $       �           0    0    credencial_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.credencial_id_seq', 1, true);
          public          postgres    false    200            �           0    0    livrocaixa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.livrocaixa_id_seq', 67, true);
          public          postgres    false    202            �           0    0    venda_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.venda_id_seq', 23, true);
          public          postgres    false    204            4           2606    24791    credencial credencial_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.credencial
    ADD CONSTRAINT credencial_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.credencial DROP CONSTRAINT credencial_pkey;
       public            postgres    false    201            6           2606    24800    livrocaixa livrocaixa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.livrocaixa
    ADD CONSTRAINT livrocaixa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.livrocaixa DROP CONSTRAINT livrocaixa_pkey;
       public            postgres    false    203            8           2606    24818    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            postgres    false    205            �   #   x�3��IM��)���LL����44�4����� u;1      �   9  x���Mn�0���)x��!��h�@W٨1a��@�{��+)�~F��ha�i������i
���N�������ޫ�i�_��\��!gE�3���;t'?��h�8N���q�s��F���e��u��5�~�W���?}�YX��f���?/��?^�0���Rdw�L�O/Ӣ�4̗��1A]C]+����اY�i`iU�n��0���wa�	-�"Z���Z�6���UOZ�پ!ZM�c��w���~�s?�V�ZK>�¼E;� ��f:8�A��<�`s�|�S%�9�J�����O��?�o����#E N�0S��b g����Y�*s6�T1��������s��+y�Ĺ���A�Թ��� ���T��9W��jC/��6�1���J�,<�����۾���T0d:���א�K�M#x���~��m��zI��&0�zL���Z_{�w��j��Z��-�j�N� =[��#����u� y��q�Zwq��l���t �]�R�[R�L`.�u�^շl�)�����M�?:]<})�ޕe��ڌ^      �   ?  x�͔�R�0���O�%]���_e���Ieh�M,@Sۢv
�Âi_#/�+������-{,���{}��=�z�'T�Yا�,RI�d�2!�$���o��;`t�6��Ԋ�
�Ǟ����T$qq"�ʸ�>P����P��矪k��r��}4DU�
2/�X�8�X��JKC���AB{"Р%90eJ����`zr�xG���(
����5�9"���M�*��b�$s���FH��cPH2�920�9�}h�2,T!�ي���n�0�������^j����KL J�/T�4X�S"�"~�\�23Y���MAk�F-ƹ�7+IF��d��8A��j��o@P�+�ۛ,�w41aQ��T���$�ez��`5�J@�hll�Ƌ�E�Ź�H��V��߭7F��o��,��8�Q��E.&sOt4�&�Y�\gmb"�(����~�,�����3(\~���D�Q��",��s}]�z)S�1�R0JX��́���"'�+�� j���wg���e09���.�./o[gv�J���
c	�
�&�;��Q�m$�� "�𱆕�w�\��U)�&-���.�q���mX����5�l��85$���<���Ѧ��5��ӤЁ�4&�U��kU�C��9a^��Ҽg&�ٰ+�P"�#��!ǂ�#�;��s,�>�d��d��M:��0������_�$Բ ��uS�;�mXg�.���U`�a��)�Ҕ�]z������cp�Ƽ��GU���ڨ���8ql����͂��錜L��}<�(.��� �{,L(� �D$`>�Vw��s�����?�     