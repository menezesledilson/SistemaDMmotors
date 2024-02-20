PGDMP          4                |            DMmotorsTest    13.13    13.13      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24783    DMmotorsTest    DATABASE     n   CREATE DATABASE "DMmotorsTest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DMmotorsTest";
                postgres    false            �            1259    24908    boletos    TABLE       CREATE TABLE public.boletos (
    id integer NOT NULL,
    descricao character varying(80),
    valor double precision,
    datavencimento character varying(10),
    datapagamento character varying(10),
    statuspagamento character varying(40),
    observacao character varying(200)
);
    DROP TABLE public.boletos;
       public         heap    postgres    false            �            1259    24906    boletos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.boletos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.boletos_id_seq;
       public          postgres    false    207            �           0    0    boletos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.boletos_id_seq OWNED BY public.boletos.id;
          public          postgres    false    206            �            1259    24786 
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
   livrocaixa    TABLE     "  CREATE TABLE public.livrocaixa (
    id integer NOT NULL,
    datahora timestamp without time zone DEFAULT date_trunc('minute'::text, CURRENT_TIMESTAMP),
    descricao character varying(80),
    entrada double precision,
    saida double precision,
    observacao character varying(200)
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
          public          postgres    false    204            9           2604    24911 
   boletos id    DEFAULT     h   ALTER TABLE ONLY public.boletos ALTER COLUMN id SET DEFAULT nextval('public.boletos_id_seq'::regclass);
 9   ALTER TABLE public.boletos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            4           2604    24789    credencial id    DEFAULT     n   ALTER TABLE ONLY public.credencial ALTER COLUMN id SET DEFAULT nextval('public.credencial_id_seq'::regclass);
 <   ALTER TABLE public.credencial ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            5           2604    24797    livrocaixa id    DEFAULT     n   ALTER TABLE ONLY public.livrocaixa ALTER COLUMN id SET DEFAULT nextval('public.livrocaixa_id_seq'::regclass);
 <   ALTER TABLE public.livrocaixa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            7           2604    24815    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �          0    24908    boletos 
   TABLE DATA           s   COPY public.boletos (id, descricao, valor, datavencimento, datapagamento, statuspagamento, observacao) FROM stdin;
    public          postgres    false    207   �#       �          0    24786 
   credencial 
   TABLE DATA           ?   COPY public.credencial (id, usuario, login, senha) FROM stdin;
    public          postgres    false    201   �$       �          0    24794 
   livrocaixa 
   TABLE DATA           Y   COPY public.livrocaixa (id, datahora, descricao, entrada, saida, observacao) FROM stdin;
    public          postgres    false    203   �$       �          0    24812    venda 
   TABLE DATA           �   COPY public.venda (id, datahora, cliente, celular, datavenda, nomecarro, anocarro, placacarro, chassicarro, pagamento, comissao, observacao) FROM stdin;
    public          postgres    false    205   B'       �           0    0    boletos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.boletos_id_seq', 4, true);
          public          postgres    false    206            �           0    0    credencial_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.credencial_id_seq', 1, true);
          public          postgres    false    200            �           0    0    livrocaixa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.livrocaixa_id_seq', 68, true);
          public          postgres    false    202            �           0    0    venda_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.venda_id_seq', 23, true);
          public          postgres    false    204            A           2606    24913    boletos boletos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.boletos
    ADD CONSTRAINT boletos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.boletos DROP CONSTRAINT boletos_pkey;
       public            postgres    false    207            ;           2606    24791    credencial credencial_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.credencial
    ADD CONSTRAINT credencial_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.credencial DROP CONSTRAINT credencial_pkey;
       public            postgres    false    201            =           2606    24800    livrocaixa livrocaixa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.livrocaixa
    ADD CONSTRAINT livrocaixa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.livrocaixa DROP CONSTRAINT livrocaixa_pkey;
       public            postgres    false    203            ?           2606    24818    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            postgres    false    205            �   �   x�U�A�0E��S��R0�Ҹ�u�f�)S�ra�5��E���/�{��Pa�<�J)H�҉V:��{�,�@�]@Y�ĺCXL1=�T�'b�e�?ہ��#�YhXۮ��F,���d=㮿�|�>eY��+��M���D�*v�4Z�ϲ��c�f�lɵhM��H4��o���+���<B� ��P�      �   #   x�3��IM��)���LL����44�4����� u;1      �   S  x���Kn�0E��*��|��>�id�"h��2Qc�jK�dgKYH6VJ�y�i@���}"�x)c���$�Ym�tO��v�Fl�x���؏�������F��C�k�;���:�d��`GUr@%�l���n��6������Y�Ӡ����}���?�O��ݻ�ŒS�(��9���y���n<�i0� %�R��V��@U�
�:�}��k����D-��`��[�3H�� ��g����J����7�{l���2�d��R���p��V���@I_��&] �T�D0�J!�����/�����JҎ����1�`�&C�4�20_a�V��1�`�fC6�D��*�>p�nC	���c8�u�y
B(�d�:���[?�b ��~�����_�@,v�>� 1��H`"m�}J	"^u��E��,Hd�0�Z$�0������j8�^�V4d�FAC����>h��Pe��������P!BDc�AÇ��0>���ha�~F��zaP��@�� 3WT�ƺ�Sz��˔5ff�R���yQ^~�n�e416�fh��o�[����C�A��M����      �   Z  x�͕�R�0���S�%,��_e���I��N7�X���E�
o�a��9�b���(�f2v���O�{�Ny�R�R�谰C)�.d�J��|iJ"�H�$�cB};ҾA���0�Z�8�?�,>98�$�H�����2�a�Ԏ��R�%�z8���0s-��{��R��9A� �bY&*-���N�fFB��d�)J�2#�����;r�Qh*ҳ��p�<$��,L�*�d�~���u�#�:~���%�����Oh�0LU.W�otj_�d<�dI	�����T��_*]�����*�Wn��Z�X�	*W���L	S3���@S�B���ܚ���Ag2Y��"��M�j��/@P�s��7�'nib`�Ɨ�,tYJg�g��*U�  4n��i0uO눠,���iiDa��n�q�_��ͪ����i�F��p∖F��>j��Y�X��0�"BE�r�B��vJξ|��D�Q��$,����:O�\��a��`X���=��+G���j����\�Z�n�_��tI�yyY:�sU��MTP��������X-oP���v܆��d��y�r�7Y#IŁCQ�6,��T�`p�9�*sxk����@	04Z�e��R.%�s�L�&m_�r	'�և�,��Il)��g��5�<������?淎��s���`ۮ� �n�z=�{=���8��_�`���6T�^�Q�nS�-xϪ��%?��Z�,hA�8	�bx�<p���'�g���O
����d>_�*����s=��;����p(����V�![���v!��pU�5���1G�]�{I���a^�P�u{Q�E����2�ª�$�o��8 3���     