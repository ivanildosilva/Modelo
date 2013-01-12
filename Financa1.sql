PGDMP     
                    p            Moria1    9.0.8    9.0.8 �    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            &           1262    16392    Moria1    DATABASE     �   CREATE DATABASE "Moria1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese, Brazil' LC_CTYPE = 'Portuguese, Brazil';
    DROP DATABASE "Moria1";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            '           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            (           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            X           2612    11574    plpgsql    PROCEDURAL LANGUAGE     /   CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;
 "   DROP PROCEDURAL LANGUAGE plpgsql;
             postgres    false            �            1259    16394    login    TABLE     �   CREATE TABLE login (
    cd_usuario integer NOT NULL,
    nm_usuario character varying(20) NOT NULL,
    cd_senha character varying(50),
    nm_operador character varying
);
    DROP TABLE public.login;
       public         postgres    false    6            �            1259    16400    Login_cd_usuario_seq    SEQUENCE     x   CREATE SEQUENCE "Login_cd_usuario_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Login_cd_usuario_seq";
       public       postgres    false    142    6            )           0    0    Login_cd_usuario_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "Login_cd_usuario_seq" OWNED BY login.cd_usuario;
            public       postgres    false    143            *           0    0    Login_cd_usuario_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Login_cd_usuario_seq"', 22, true);
            public       postgres    false    143            �            1259    16402 	   aviamento    TABLE     f   CREATE TABLE aviamento (
    cd_aviamento integer NOT NULL,
    nm_aviamento character varying(50)
);
    DROP TABLE public.aviamento;
       public         postgres    false    6            �            1259    16405    aviamento_cd_aviamento_seq    SEQUENCE     |   CREATE SEQUENCE aviamento_cd_aviamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.aviamento_cd_aviamento_seq;
       public       postgres    false    144    6            +           0    0    aviamento_cd_aviamento_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE aviamento_cd_aviamento_seq OWNED BY aviamento.cd_aviamento;
            public       postgres    false    145            ,           0    0    aviamento_cd_aviamento_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('aviamento_cd_aviamento_seq', 1, false);
            public       postgres    false    145            �            1259    16407    cliente    TABLE     �  CREATE TABLE cliente (
    cd_cliente integer NOT NULL,
    cd_cpf_cliente character varying(20),
    cd_cnpj_cliente character varying(20),
    nm_cliente character varying(60),
    nm_fantasia_cliente character varying(60),
    cd_rg_cliente character varying(20),
    ic_sexo_cliente character varying(15),
    dt_dia_nascimento character varying,
    dt_mes_nascimento character varying,
    dt_ano_nascimento character varying
);
    DROP TABLE public.cliente;
       public         postgres    false    6            �            1259    16413    cliente_cd_cliente_seq    SEQUENCE     x   CREATE SEQUENCE cliente_cd_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_cd_cliente_seq;
       public       postgres    false    146    6            -           0    0    cliente_cd_cliente_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE cliente_cd_cliente_seq OWNED BY cliente.cd_cliente;
            public       postgres    false    147            .           0    0    cliente_cd_cliente_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('cliente_cd_cliente_seq', 2, true);
            public       postgres    false    147            �            1259    16415 
   contapagar    TABLE     �   CREATE TABLE contapagar (
    cd_contapagar integer NOT NULL,
    cd_fornecedor integer,
    dt_dtcontapagar date,
    cd_notafiscal integer,
    vl_contapagar real
);
    DROP TABLE public.contapagar;
       public         postgres    false    6            �            1259    16418    contapagar_cd_contapagar_seq    SEQUENCE     ~   CREATE SEQUENCE contapagar_cd_contapagar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contapagar_cd_contapagar_seq;
       public       postgres    false    6    148            /           0    0    contapagar_cd_contapagar_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE contapagar_cd_contapagar_seq OWNED BY contapagar.cd_contapagar;
            public       postgres    false    149            0           0    0    contapagar_cd_contapagar_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('contapagar_cd_contapagar_seq', 40, true);
            public       postgres    false    149            �            1259    16420    contareceber    TABLE     �   CREATE TABLE contareceber (
    cd_cliente integer,
    vl_valor real,
    vl_total real,
    dt_contareceber date,
    dt_venda date,
    cd_contareceber integer NOT NULL
);
     DROP TABLE public.contareceber;
       public         postgres    false    6            �            1259    16423    contareceber1    TABLE     =  CREATE TABLE contareceber1 (
    cd_contareceber integer NOT NULL,
    cd_cliente integer,
    vl_valor real,
    dt_venda date,
    dt_vencimento1 date,
    vl_parcela1 real,
    dt_vencimento2 date,
    vl_parcela2 real,
    dt_vencimento3 date,
    vl_parcela3 real,
    dt_vencimento4 date,
    vl_parcela4 real,
    dt_vencimento5 date,
    vl_parcela5 real,
    ds_status1 character varying,
    ds_status2 character varying,
    ds_status3 character varying,
    ds_status4 character varying,
    ds_status5 character varying,
    ds_observacao character varying
);
 !   DROP TABLE public.contareceber1;
       public         postgres    false    6            �            1259    16429 !   contareceber1_cd_contareceber_seq    SEQUENCE     �   CREATE SEQUENCE contareceber1_cd_contareceber_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.contareceber1_cd_contareceber_seq;
       public       postgres    false    6    151            1           0    0 !   contareceber1_cd_contareceber_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE contareceber1_cd_contareceber_seq OWNED BY contareceber1.cd_contareceber;
            public       postgres    false    152            2           0    0 !   contareceber1_cd_contareceber_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('contareceber1_cd_contareceber_seq', 9, true);
            public       postgres    false    152            �            1259    16431     contareceber_cd_contareceber_seq    SEQUENCE     �   CREATE SEQUENCE contareceber_cd_contareceber_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.contareceber_cd_contareceber_seq;
       public       postgres    false    150    6            3           0    0     contareceber_cd_contareceber_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE contareceber_cd_contareceber_seq OWNED BY contareceber.cd_contareceber;
            public       postgres    false    153            4           0    0     contareceber_cd_contareceber_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('contareceber_cd_contareceber_seq', 1, false);
            public       postgres    false    153            �            1259    16433    cor    TABLE     T   CREATE TABLE cor (
    cd_cor integer NOT NULL,
    nm_cor character varying(50)
);
    DROP TABLE public.cor;
       public         postgres    false    6            �            1259    16436    cor_cd_cor_seq    SEQUENCE     p   CREATE SEQUENCE cor_cd_cor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cor_cd_cor_seq;
       public       postgres    false    154    6            5           0    0    cor_cd_cor_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE cor_cd_cor_seq OWNED BY cor.cd_cor;
            public       postgres    false    155            6           0    0    cor_cd_cor_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('cor_cd_cor_seq', 1, false);
            public       postgres    false    155            �            1259    16438    email    TABLE     �   CREATE TABLE email (
    cd_email integer NOT NULL,
    cd_cliente integer,
    cd_fornecedor integer,
    cd_terceirizada integer,
    cd_vendedor integer,
    nm_email1 character varying(40)
);
    DROP TABLE public.email;
       public         postgres    false    6            �            1259    16441    email_cd_email_seq    SEQUENCE     t   CREATE SEQUENCE email_cd_email_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.email_cd_email_seq;
       public       postgres    false    156    6            7           0    0    email_cd_email_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE email_cd_email_seq OWNED BY email.cd_email;
            public       postgres    false    157            8           0    0    email_cd_email_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('email_cd_email_seq', 461, true);
            public       postgres    false    157            �            1259    16443    endereco    TABLE     �  CREATE TABLE endereco (
    cd_endereco integer NOT NULL,
    cd_cliente integer,
    cd_fornecedor integer,
    cd_terceirizada integer,
    cd_vendedor integer,
    nm_logradouro character varying(70),
    cd_numero character varying(8),
    nm_complemento character varying(40),
    nm_bairro character varying(40),
    nm_cidade character varying(40),
    sg_ufederativa character varying(2),
    nm_observacao character varying(100),
    cd_cep character varying(20)
);
    DROP TABLE public.endereco;
       public         postgres    false    6            �            1259    16446    endereco_cd_endereco_seq    SEQUENCE     z   CREATE SEQUENCE endereco_cd_endereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.endereco_cd_endereco_seq;
       public       postgres    false    6    158            9           0    0    endereco_cd_endereco_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE endereco_cd_endereco_seq OWNED BY endereco.cd_endereco;
            public       postgres    false    159            :           0    0    endereco_cd_endereco_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('endereco_cd_endereco_seq', 449, true);
            public       postgres    false    159            �            1259    16448    fechprod    TABLE     �  CREATE TABLE fechprod (
    cd_numlote integer NOT NULL,
    cd_terceirizada integer,
    cd_produto integer,
    cd_cor integer,
    qt_p integer,
    qt_m integer,
    qt_g integer,
    qt_gg integer,
    qt_eg integer,
    qt_exg integer,
    dt_envlote date,
    dt_vevollote date,
    nm_eqpto character varying,
    dt_envequpto date,
    dt_devequpto date,
    nm_observacao character varying(100),
    vl_unitario real,
    vl_total real,
    cd_numlote1 integer,
    qt_peca integer
);
    DROP TABLE public.fechprod;
       public         postgres    false    6            �            1259    16454    fechprod_cd_numlote_seq    SEQUENCE     y   CREATE SEQUENCE fechprod_cd_numlote_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.fechprod_cd_numlote_seq;
       public       postgres    false    6    160            ;           0    0    fechprod_cd_numlote_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE fechprod_cd_numlote_seq OWNED BY fechprod.cd_numlote;
            public       postgres    false    161            <           0    0    fechprod_cd_numlote_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('fechprod_cd_numlote_seq', 56, true);
            public       postgres    false    161            �            1259    16456 
   fornecedor    TABLE     �   CREATE TABLE fornecedor (
    cd_fornecedor integer NOT NULL,
    cd_cnpj_fornecedor character varying(20),
    nm_razaosocial_fornecedor character varying(60),
    nm_fantasia_fornecedor character varying(60)
);
    DROP TABLE public.fornecedor;
       public         postgres    false    6            �            1259    16459    fornecedor_cd_fornecedor_seq    SEQUENCE     ~   CREATE SEQUENCE fornecedor_cd_fornecedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.fornecedor_cd_fornecedor_seq;
       public       postgres    false    162    6            =           0    0    fornecedor_cd_fornecedor_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE fornecedor_cd_fornecedor_seq OWNED BY fornecedor.cd_fornecedor;
            public       postgres    false    163            >           0    0    fornecedor_cd_fornecedor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('fornecedor_cd_fornecedor_seq', 1, false);
            public       postgres    false    163            �            1259    16461    materiaprima    TABLE     �  CREATE TABLE materiaprima (
    cd_materiaprima integer NOT NULL,
    cd_fornecedor integer,
    cd_tecido integer,
    cd_aviamento integer,
    nm_tamanho character varying(8),
    qt_kilo real,
    qt_peca integer,
    qt_metro real,
    cd_cor integer,
    nm_serie character varying(5),
    vl_valor real,
    vl_total real,
    qt_parcela integer,
    nm_tipo character varying(20),
    cd_notafiscal integer,
    dt_entrada date
);
     DROP TABLE public.materiaprima;
       public         postgres    false    6            �            1259    16464     materiaprima_cd_materiaprima_seq    SEQUENCE     �   CREATE SEQUENCE materiaprima_cd_materiaprima_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.materiaprima_cd_materiaprima_seq;
       public       postgres    false    164    6            ?           0    0     materiaprima_cd_materiaprima_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE materiaprima_cd_materiaprima_seq OWNED BY materiaprima.cd_materiaprima;
            public       postgres    false    165            @           0    0     materiaprima_cd_materiaprima_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('materiaprima_cd_materiaprima_seq', 78, true);
            public       postgres    false    165            �            1259    16466    mostruario1    TABLE     �  CREATE TABLE mostruario1 (
    cd_mostruario integer,
    cd_vendedor integer,
    cd_produtoacabado integer,
    cd_cor integer,
    qt_p integer,
    qt_m integer,
    qt_g integer,
    qt_gg integer,
    qt_eg integer,
    qt_exg integer,
    dt_envio_mostruario date,
    dt_devolucao_mostruario date,
    vl_unitario real,
    ds_observacao character varying,
    cd_mostruario1 integer NOT NULL
);
    DROP TABLE public.mostruario1;
       public         postgres    false    6            �            1259    16472    mostruario1_cd_mostruario1_seq    SEQUENCE     �   CREATE SEQUENCE mostruario1_cd_mostruario1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mostruario1_cd_mostruario1_seq;
       public       postgres    false    166    6            A           0    0    mostruario1_cd_mostruario1_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE mostruario1_cd_mostruario1_seq OWNED BY mostruario1.cd_mostruario1;
            public       postgres    false    167            B           0    0    mostruario1_cd_mostruario1_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('mostruario1_cd_mostruario1_seq', 85, true);
            public       postgres    false    167            �            1259    16474 
   orcamento1    TABLE     ^  CREATE TABLE orcamento1 (
    cd_orcamento integer NOT NULL,
    cd_cliente integer,
    cd_vendedor integer,
    cd_produto integer,
    cd_cor integer,
    qt_quantidade integer,
    vl_unitario real,
    vl_total real,
    vl_ttgeral real,
    dt_pedido date,
    dt_entrega date,
    nm_tamanho character varying(3),
    cd_orcamento1 integer
);
    DROP TABLE public.orcamento1;
       public         postgres    false    6            �            1259    16477    orcamento1_cd_orcamento_seq    SEQUENCE     }   CREATE SEQUENCE orcamento1_cd_orcamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.orcamento1_cd_orcamento_seq;
       public       postgres    false    168    6            C           0    0    orcamento1_cd_orcamento_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE orcamento1_cd_orcamento_seq OWNED BY orcamento1.cd_orcamento;
            public       postgres    false    169            D           0    0    orcamento1_cd_orcamento_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('orcamento1_cd_orcamento_seq', 15, true);
            public       postgres    false    169            �            1259    16479    pedido    TABLE     T  CREATE TABLE pedido (
    cd_cliente integer,
    cd_vendedor integer,
    cd_produto integer,
    cd_cor integer,
    qt_quantidade integer,
    vl_unitario real,
    vl_total real,
    vl_ttgeral real,
    dt_pedido date,
    dt_entrega date,
    nm_tamanho character varying(3),
    cd_pedido integer NOT NULL,
    cd_pedido1 integer
);
    DROP TABLE public.pedido;
       public         postgres    false    6            �            1259    16482    pedido_cd_pedido_seq    SEQUENCE     v   CREATE SEQUENCE pedido_cd_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedido_cd_pedido_seq;
       public       postgres    false    6    170            E           0    0    pedido_cd_pedido_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pedido_cd_pedido_seq OWNED BY pedido.cd_pedido;
            public       postgres    false    171            F           0    0    pedido_cd_pedido_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('pedido_cd_pedido_seq', 82, true);
            public       postgres    false    171            �            1259    16484    preco    TABLE     �   CREATE TABLE preco (
    cd_preco integer NOT NULL,
    cd_produto integer,
    cd_cor integer,
    cd_tecido integer,
    nm_tamanho character varying(3),
    vl_preco real
);
    DROP TABLE public.preco;
       public         postgres    false    6            �            1259    16487    produto    TABLE     `   CREATE TABLE produto (
    cd_produto integer NOT NULL,
    nm_produto character varying(50)
);
    DROP TABLE public.produto;
       public         postgres    false    6            �            1259    16490    produto_cd_produto_seq    SEQUENCE     x   CREATE SEQUENCE produto_cd_produto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_cd_produto_seq;
       public       postgres    false    6    173            G           0    0    produto_cd_produto_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE produto_cd_produto_seq OWNED BY produto.cd_produto;
            public       postgres    false    174            H           0    0    produto_cd_produto_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('produto_cd_produto_seq', 6, true);
            public       postgres    false    174            �            1259    16492    produtoacabado    TABLE       CREATE TABLE produtoacabado (
    cd_produtoacabado integer NOT NULL,
    cd_numlote integer,
    cd_produto integer,
    cd_cor integer,
    qt_p integer,
    qt_m integer,
    qt_g integer,
    qt_gg integer,
    qt_eg integer,
    qt_exg integer,
    vl_unitario real
);
 "   DROP TABLE public.produtoacabado;
       public         postgres    false    6            �            1259    16495 $   produtoacabado_cd_produtoacabado_seq    SEQUENCE     �   CREATE SEQUENCE produtoacabado_cd_produtoacabado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.produtoacabado_cd_produtoacabado_seq;
       public       postgres    false    6    175            I           0    0 $   produtoacabado_cd_produtoacabado_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE produtoacabado_cd_produtoacabado_seq OWNED BY produtoacabado.cd_produtoacabado;
            public       postgres    false    176            J           0    0 $   produtoacabado_cd_produtoacabado_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('produtoacabado_cd_produtoacabado_seq', 741, true);
            public       postgres    false    176            �            1259    16497    saldomateriaprima    TABLE     �   CREATE TABLE saldomateriaprima (
    cd_tecido integer,
    cd_aviamento integer,
    cd_cor integer,
    nm_tamanho character varying,
    qt_kilo real,
    qt_metro real,
    qt_peca integer,
    dt_saida date,
    cd_materiaprima integer NOT NULL
);
 %   DROP TABLE public.saldomateriaprima;
       public         postgres    false    6            �            1259    16503 %   saldomateriaprima_cd_materiaprima_seq    SEQUENCE     �   CREATE SEQUENCE saldomateriaprima_cd_materiaprima_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.saldomateriaprima_cd_materiaprima_seq;
       public       postgres    false    6    177            K           0    0 %   saldomateriaprima_cd_materiaprima_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE saldomateriaprima_cd_materiaprima_seq OWNED BY saldomateriaprima.cd_materiaprima;
            public       postgres    false    178            L           0    0 %   saldomateriaprima_cd_materiaprima_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('saldomateriaprima_cd_materiaprima_seq', 53, true);
            public       postgres    false    178            �            1259    16505    tecido    TABLE     ]   CREATE TABLE tecido (
    cd_tecido integer NOT NULL,
    nm_tecido character varying(15)
);
    DROP TABLE public.tecido;
       public         postgres    false    6            �            1259    16508    tecido_cd_tecido_seq    SEQUENCE     v   CREATE SEQUENCE tecido_cd_tecido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tecido_cd_tecido_seq;
       public       postgres    false    6    179            M           0    0    tecido_cd_tecido_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE tecido_cd_tecido_seq OWNED BY tecido.cd_tecido;
            public       postgres    false    180            N           0    0    tecido_cd_tecido_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('tecido_cd_tecido_seq', 1, false);
            public       postgres    false    180            �            1259    16510    telefone    TABLE     1  CREATE TABLE telefone (
    cd_telefone integer NOT NULL,
    cd_cliente integer,
    cd_fornecedor integer,
    cd_terceirizada integer,
    cd_vendedor integer,
    cd_tel1 character varying(20),
    cd_tel2 character varying(20),
    cd_tel3 character varying(20),
    cd_tel4 character varying(20)
);
    DROP TABLE public.telefone;
       public         postgres    false    6            �            1259    16513    telefone_cd_telefone_seq    SEQUENCE     z   CREATE SEQUENCE telefone_cd_telefone_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.telefone_cd_telefone_seq;
       public       postgres    false    181    6            O           0    0    telefone_cd_telefone_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE telefone_cd_telefone_seq OWNED BY telefone.cd_telefone;
            public       postgres    false    182            P           0    0    telefone_cd_telefone_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('telefone_cd_telefone_seq', 461, true);
            public       postgres    false    182            �            1259    16515    terceirizada    TABLE     �   CREATE TABLE terceirizada (
    cd_terceirizada integer NOT NULL,
    cd_cpf_terceirizada character varying(20),
    nm_contato character varying(60)
);
     DROP TABLE public.terceirizada;
       public         postgres    false    6            �            1259    16518     terceirizada_cd_terceirizada_seq    SEQUENCE     �   CREATE SEQUENCE terceirizada_cd_terceirizada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.terceirizada_cd_terceirizada_seq;
       public       postgres    false    6    183            Q           0    0     terceirizada_cd_terceirizada_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE terceirizada_cd_terceirizada_seq OWNED BY terceirizada.cd_terceirizada;
            public       postgres    false    184            R           0    0     terceirizada_cd_terceirizada_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('terceirizada_cd_terceirizada_seq', 1, false);
            public       postgres    false    184            �            1259    16520    vendacarteira    TABLE       CREATE TABLE vendacarteira (
    cd_vendacarteira integer NOT NULL,
    cd_cliente integer,
    cd_produto integer,
    nm_tamanho character varying(3),
    cd_cor integer,
    qt_quantidade integer,
    vl_unitario real,
    vl_sbtl real,
    vl_ttlgeral real,
    dt_venda date
);
 !   DROP TABLE public.vendacarteira;
       public         postgres    false    6            �            1259    16523 "   vendacarteira_cd_vendacarteira_seq    SEQUENCE     �   CREATE SEQUENCE vendacarteira_cd_vendacarteira_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.vendacarteira_cd_vendacarteira_seq;
       public       postgres    false    6    185            S           0    0 "   vendacarteira_cd_vendacarteira_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE vendacarteira_cd_vendacarteira_seq OWNED BY vendacarteira.cd_vendacarteira;
            public       postgres    false    186            T           0    0 "   vendacarteira_cd_vendacarteira_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('vendacarteira_cd_vendacarteira_seq', 28, true);
            public       postgres    false    186            �            1259    16525    vendadireta    TABLE     M  CREATE TABLE vendadireta (
    cd_vendadireta integer NOT NULL,
    cd_cliente integer,
    cd_produto integer,
    nm_tamanho character varying(3),
    cd_cor integer,
    qt_quantidade integer,
    vl_unitario real,
    vl_sbtl real,
    vl_ttlgeral real,
    dt_venda date,
    nm_formapagamento character varying(50) NOT NULL
);
    DROP TABLE public.vendadireta;
       public         postgres    false    6            �            1259    16528    vendadireta_cd_vendadireta_seq    SEQUENCE     �   CREATE SEQUENCE vendadireta_cd_vendadireta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.vendadireta_cd_vendadireta_seq;
       public       postgres    false    187    6            U           0    0    vendadireta_cd_vendadireta_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE vendadireta_cd_vendadireta_seq OWNED BY vendadireta.cd_vendadireta;
            public       postgres    false    188            V           0    0    vendadireta_cd_vendadireta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('vendadireta_cd_vendadireta_seq', 408, true);
            public       postgres    false    188            �            1259    16530    vendatacado    TABLE     B   CREATE TABLE vendatacado (
    cd_vendatacado integer NOT NULL
);
    DROP TABLE public.vendatacado;
       public         postgres    false    6            �            1259    16533    vendatacado_cd_vendatacado_seq    SEQUENCE     �   CREATE SEQUENCE vendatacado_cd_vendatacado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.vendatacado_cd_vendatacado_seq;
       public       postgres    false    6    189            W           0    0    vendatacado_cd_vendatacado_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE vendatacado_cd_vendatacado_seq OWNED BY vendatacado.cd_vendatacado;
            public       postgres    false    190            X           0    0    vendatacado_cd_vendatacado_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('vendatacado_cd_vendatacado_seq', 1, false);
            public       postgres    false    190            �            1259    16535    vendedor    TABLE     �   CREATE TABLE vendedor (
    cd_vendedor integer NOT NULL,
    cd_cpf_vendedor character varying(20),
    nm_vendedor character varying(50)
);
    DROP TABLE public.vendedor;
       public         postgres    false    6            �            1259    16538    vendedor_cd_vendedor_seq    SEQUENCE     z   CREATE SEQUENCE vendedor_cd_vendedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vendedor_cd_vendedor_seq;
       public       postgres    false    6    191            Y           0    0    vendedor_cd_vendedor_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE vendedor_cd_vendedor_seq OWNED BY vendedor.cd_vendedor;
            public       postgres    false    192            Z           0    0    vendedor_cd_vendedor_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('vendedor_cd_vendedor_seq', 1, false);
            public       postgres    false    192            �           2604    16540    cd_aviamento    DEFAULT     r   ALTER TABLE ONLY aviamento ALTER COLUMN cd_aviamento SET DEFAULT nextval('aviamento_cd_aviamento_seq'::regclass);
 E   ALTER TABLE public.aviamento ALTER COLUMN cd_aviamento DROP DEFAULT;
       public       postgres    false    145    144            �           2604    16541 
   cd_cliente    DEFAULT     j   ALTER TABLE ONLY cliente ALTER COLUMN cd_cliente SET DEFAULT nextval('cliente_cd_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN cd_cliente DROP DEFAULT;
       public       postgres    false    147    146            �           2604    16542    cd_contapagar    DEFAULT     v   ALTER TABLE ONLY contapagar ALTER COLUMN cd_contapagar SET DEFAULT nextval('contapagar_cd_contapagar_seq'::regclass);
 G   ALTER TABLE public.contapagar ALTER COLUMN cd_contapagar DROP DEFAULT;
       public       postgres    false    149    148            �           2604    16543    cd_contareceber    DEFAULT     ~   ALTER TABLE ONLY contareceber ALTER COLUMN cd_contareceber SET DEFAULT nextval('contareceber_cd_contareceber_seq'::regclass);
 K   ALTER TABLE public.contareceber ALTER COLUMN cd_contareceber DROP DEFAULT;
       public       postgres    false    153    150            �           2604    16544    cd_contareceber    DEFAULT     �   ALTER TABLE ONLY contareceber1 ALTER COLUMN cd_contareceber SET DEFAULT nextval('contareceber1_cd_contareceber_seq'::regclass);
 L   ALTER TABLE public.contareceber1 ALTER COLUMN cd_contareceber DROP DEFAULT;
       public       postgres    false    152    151            �           2604    16545    cd_cor    DEFAULT     Z   ALTER TABLE ONLY cor ALTER COLUMN cd_cor SET DEFAULT nextval('cor_cd_cor_seq'::regclass);
 9   ALTER TABLE public.cor ALTER COLUMN cd_cor DROP DEFAULT;
       public       postgres    false    155    154            �           2604    16546    cd_email    DEFAULT     b   ALTER TABLE ONLY email ALTER COLUMN cd_email SET DEFAULT nextval('email_cd_email_seq'::regclass);
 =   ALTER TABLE public.email ALTER COLUMN cd_email DROP DEFAULT;
       public       postgres    false    157    156            �           2604    16547    cd_endereco    DEFAULT     n   ALTER TABLE ONLY endereco ALTER COLUMN cd_endereco SET DEFAULT nextval('endereco_cd_endereco_seq'::regclass);
 C   ALTER TABLE public.endereco ALTER COLUMN cd_endereco DROP DEFAULT;
       public       postgres    false    159    158            �           2604    16548 
   cd_numlote    DEFAULT     l   ALTER TABLE ONLY fechprod ALTER COLUMN cd_numlote SET DEFAULT nextval('fechprod_cd_numlote_seq'::regclass);
 B   ALTER TABLE public.fechprod ALTER COLUMN cd_numlote DROP DEFAULT;
       public       postgres    false    161    160            �           2604    16549    cd_fornecedor    DEFAULT     v   ALTER TABLE ONLY fornecedor ALTER COLUMN cd_fornecedor SET DEFAULT nextval('fornecedor_cd_fornecedor_seq'::regclass);
 G   ALTER TABLE public.fornecedor ALTER COLUMN cd_fornecedor DROP DEFAULT;
       public       postgres    false    163    162            �           2604    16550 
   cd_usuario    DEFAULT     h   ALTER TABLE ONLY login ALTER COLUMN cd_usuario SET DEFAULT nextval('"Login_cd_usuario_seq"'::regclass);
 ?   ALTER TABLE public.login ALTER COLUMN cd_usuario DROP DEFAULT;
       public       postgres    false    143    142            �           2604    16551    cd_materiaprima    DEFAULT     ~   ALTER TABLE ONLY materiaprima ALTER COLUMN cd_materiaprima SET DEFAULT nextval('materiaprima_cd_materiaprima_seq'::regclass);
 K   ALTER TABLE public.materiaprima ALTER COLUMN cd_materiaprima DROP DEFAULT;
       public       postgres    false    165    164            �           2604    16552    cd_mostruario1    DEFAULT     z   ALTER TABLE ONLY mostruario1 ALTER COLUMN cd_mostruario1 SET DEFAULT nextval('mostruario1_cd_mostruario1_seq'::regclass);
 I   ALTER TABLE public.mostruario1 ALTER COLUMN cd_mostruario1 DROP DEFAULT;
       public       postgres    false    167    166            �           2604    16553    cd_orcamento    DEFAULT     t   ALTER TABLE ONLY orcamento1 ALTER COLUMN cd_orcamento SET DEFAULT nextval('orcamento1_cd_orcamento_seq'::regclass);
 F   ALTER TABLE public.orcamento1 ALTER COLUMN cd_orcamento DROP DEFAULT;
       public       postgres    false    169    168            �           2604    16554 	   cd_pedido    DEFAULT     f   ALTER TABLE ONLY pedido ALTER COLUMN cd_pedido SET DEFAULT nextval('pedido_cd_pedido_seq'::regclass);
 ?   ALTER TABLE public.pedido ALTER COLUMN cd_pedido DROP DEFAULT;
       public       postgres    false    171    170            �           2604    16555 
   cd_produto    DEFAULT     j   ALTER TABLE ONLY produto ALTER COLUMN cd_produto SET DEFAULT nextval('produto_cd_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN cd_produto DROP DEFAULT;
       public       postgres    false    174    173            �           2604    16556    cd_produtoacabado    DEFAULT     �   ALTER TABLE ONLY produtoacabado ALTER COLUMN cd_produtoacabado SET DEFAULT nextval('produtoacabado_cd_produtoacabado_seq'::regclass);
 O   ALTER TABLE public.produtoacabado ALTER COLUMN cd_produtoacabado DROP DEFAULT;
       public       postgres    false    176    175            �           2604    16557    cd_materiaprima    DEFAULT     �   ALTER TABLE ONLY saldomateriaprima ALTER COLUMN cd_materiaprima SET DEFAULT nextval('saldomateriaprima_cd_materiaprima_seq'::regclass);
 P   ALTER TABLE public.saldomateriaprima ALTER COLUMN cd_materiaprima DROP DEFAULT;
       public       postgres    false    178    177            �           2604    16558 	   cd_tecido    DEFAULT     f   ALTER TABLE ONLY tecido ALTER COLUMN cd_tecido SET DEFAULT nextval('tecido_cd_tecido_seq'::regclass);
 ?   ALTER TABLE public.tecido ALTER COLUMN cd_tecido DROP DEFAULT;
       public       postgres    false    180    179            �           2604    16559    cd_telefone    DEFAULT     n   ALTER TABLE ONLY telefone ALTER COLUMN cd_telefone SET DEFAULT nextval('telefone_cd_telefone_seq'::regclass);
 C   ALTER TABLE public.telefone ALTER COLUMN cd_telefone DROP DEFAULT;
       public       postgres    false    182    181            �           2604    16560    cd_terceirizada    DEFAULT     ~   ALTER TABLE ONLY terceirizada ALTER COLUMN cd_terceirizada SET DEFAULT nextval('terceirizada_cd_terceirizada_seq'::regclass);
 K   ALTER TABLE public.terceirizada ALTER COLUMN cd_terceirizada DROP DEFAULT;
       public       postgres    false    184    183            �           2604    16561    cd_vendacarteira    DEFAULT     �   ALTER TABLE ONLY vendacarteira ALTER COLUMN cd_vendacarteira SET DEFAULT nextval('vendacarteira_cd_vendacarteira_seq'::regclass);
 M   ALTER TABLE public.vendacarteira ALTER COLUMN cd_vendacarteira DROP DEFAULT;
       public       postgres    false    186    185            �           2604    16562    cd_vendadireta    DEFAULT     z   ALTER TABLE ONLY vendadireta ALTER COLUMN cd_vendadireta SET DEFAULT nextval('vendadireta_cd_vendadireta_seq'::regclass);
 I   ALTER TABLE public.vendadireta ALTER COLUMN cd_vendadireta DROP DEFAULT;
       public       postgres    false    188    187            �           2604    16563    cd_vendatacado    DEFAULT     z   ALTER TABLE ONLY vendatacado ALTER COLUMN cd_vendatacado SET DEFAULT nextval('vendatacado_cd_vendatacado_seq'::regclass);
 I   ALTER TABLE public.vendatacado ALTER COLUMN cd_vendatacado DROP DEFAULT;
       public       postgres    false    190    189            �           2604    16564    cd_vendedor    DEFAULT     n   ALTER TABLE ONLY vendedor ALTER COLUMN cd_vendedor SET DEFAULT nextval('vendedor_cd_vendedor_seq'::regclass);
 C   ALTER TABLE public.vendedor ALTER COLUMN cd_vendedor DROP DEFAULT;
       public       postgres    false    192    191                      0    16402 	   aviamento 
   TABLE DATA               8   COPY aviamento (cd_aviamento, nm_aviamento) FROM stdin;
    public       postgres    false    144   �%                0    16407    cliente 
   TABLE DATA               �   COPY cliente (cd_cliente, cd_cpf_cliente, cd_cnpj_cliente, nm_cliente, nm_fantasia_cliente, cd_rg_cliente, ic_sexo_cliente, dt_dia_nascimento, dt_mes_nascimento, dt_ano_nascimento) FROM stdin;
    public       postgres    false    146   &                0    16415 
   contapagar 
   TABLE DATA               j   COPY contapagar (cd_contapagar, cd_fornecedor, dt_dtcontapagar, cd_notafiscal, vl_contapagar) FROM stdin;
    public       postgres    false    148   AA                0    16420    contareceber 
   TABLE DATA               k   COPY contareceber (cd_cliente, vl_valor, vl_total, dt_contareceber, dt_venda, cd_contareceber) FROM stdin;
    public       postgres    false    150   ^A                0    16423    contareceber1 
   TABLE DATA               -  COPY contareceber1 (cd_contareceber, cd_cliente, vl_valor, dt_venda, dt_vencimento1, vl_parcela1, dt_vencimento2, vl_parcela2, dt_vencimento3, vl_parcela3, dt_vencimento4, vl_parcela4, dt_vencimento5, vl_parcela5, ds_status1, ds_status2, ds_status3, ds_status4, ds_status5, ds_observacao) FROM stdin;
    public       postgres    false    151   {A                0    16433    cor 
   TABLE DATA               &   COPY cor (cd_cor, nm_cor) FROM stdin;
    public       postgres    false    154   LB                0    16438    email 
   TABLE DATA               f   COPY email (cd_email, cd_cliente, cd_fornecedor, cd_terceirizada, cd_vendedor, nm_email1) FROM stdin;
    public       postgres    false    156   �F                0    16443    endereco 
   TABLE DATA               �   COPY endereco (cd_endereco, cd_cliente, cd_fornecedor, cd_terceirizada, cd_vendedor, nm_logradouro, cd_numero, nm_complemento, nm_bairro, nm_cidade, sg_ufederativa, nm_observacao, cd_cep) FROM stdin;
    public       postgres    false    158   �Y                0    16448    fechprod 
   TABLE DATA               �   COPY fechprod (cd_numlote, cd_terceirizada, cd_produto, cd_cor, qt_p, qt_m, qt_g, qt_gg, qt_eg, qt_exg, dt_envlote, dt_vevollote, nm_eqpto, dt_envequpto, dt_devequpto, nm_observacao, vl_unitario, vl_total, cd_numlote1, qt_peca) FROM stdin;
    public       postgres    false    160   �s                0    16456 
   fornecedor 
   TABLE DATA               s   COPY fornecedor (cd_fornecedor, cd_cnpj_fornecedor, nm_razaosocial_fornecedor, nm_fantasia_fornecedor) FROM stdin;
    public       postgres    false    162   �t      
          0    16394    login 
   TABLE DATA               G   COPY login (cd_usuario, nm_usuario, cd_senha, nm_operador) FROM stdin;
    public       postgres    false    142   
u                0    16461    materiaprima 
   TABLE DATA               �   COPY materiaprima (cd_materiaprima, cd_fornecedor, cd_tecido, cd_aviamento, nm_tamanho, qt_kilo, qt_peca, qt_metro, cd_cor, nm_serie, vl_valor, vl_total, qt_parcela, nm_tipo, cd_notafiscal, dt_entrada) FROM stdin;
    public       postgres    false    164   �u                0    16466    mostruario1 
   TABLE DATA               �   COPY mostruario1 (cd_mostruario, cd_vendedor, cd_produtoacabado, cd_cor, qt_p, qt_m, qt_g, qt_gg, qt_eg, qt_exg, dt_envio_mostruario, dt_devolucao_mostruario, vl_unitario, ds_observacao, cd_mostruario1) FROM stdin;
    public       postgres    false    166   �u                0    16474 
   orcamento1 
   TABLE DATA               �   COPY orcamento1 (cd_orcamento, cd_cliente, cd_vendedor, cd_produto, cd_cor, qt_quantidade, vl_unitario, vl_total, vl_ttgeral, dt_pedido, dt_entrega, nm_tamanho, cd_orcamento1) FROM stdin;
    public       postgres    false    168   Hv                0    16479    pedido 
   TABLE DATA               �   COPY pedido (cd_cliente, cd_vendedor, cd_produto, cd_cor, qt_quantidade, vl_unitario, vl_total, vl_ttgeral, dt_pedido, dt_entrega, nm_tamanho, cd_pedido, cd_pedido1) FROM stdin;
    public       postgres    false    170   ev                0    16484    preco 
   TABLE DATA               W   COPY preco (cd_preco, cd_produto, cd_cor, cd_tecido, nm_tamanho, vl_preco) FROM stdin;
    public       postgres    false    172   �v                0    16487    produto 
   TABLE DATA               2   COPY produto (cd_produto, nm_produto) FROM stdin;
    public       postgres    false    173   �v                0    16492    produtoacabado 
   TABLE DATA               �   COPY produtoacabado (cd_produtoacabado, cd_numlote, cd_produto, cd_cor, qt_p, qt_m, qt_g, qt_gg, qt_eg, qt_exg, vl_unitario) FROM stdin;
    public       postgres    false    175   m|                0    16497    saldomateriaprima 
   TABLE DATA               �   COPY saldomateriaprima (cd_tecido, cd_aviamento, cd_cor, nm_tamanho, qt_kilo, qt_metro, qt_peca, dt_saida, cd_materiaprima) FROM stdin;
    public       postgres    false    177   �                0    16505    tecido 
   TABLE DATA               /   COPY tecido (cd_tecido, nm_tecido) FROM stdin;
    public       postgres    false    179   Y�                0    16510    telefone 
   TABLE DATA               �   COPY telefone (cd_telefone, cd_cliente, cd_fornecedor, cd_terceirizada, cd_vendedor, cd_tel1, cd_tel2, cd_tel3, cd_tel4) FROM stdin;
    public       postgres    false    181   �                0    16515    terceirizada 
   TABLE DATA               Q   COPY terceirizada (cd_terceirizada, cd_cpf_terceirizada, nm_contato) FROM stdin;
    public       postgres    false    183   5�                 0    16520    vendacarteira 
   TABLE DATA               �   COPY vendacarteira (cd_vendacarteira, cd_cliente, cd_produto, nm_tamanho, cd_cor, qt_quantidade, vl_unitario, vl_sbtl, vl_ttlgeral, dt_venda) FROM stdin;
    public       postgres    false    185   ��      !          0    16525    vendadireta 
   TABLE DATA               �   COPY vendadireta (cd_vendadireta, cd_cliente, cd_produto, nm_tamanho, cd_cor, qt_quantidade, vl_unitario, vl_sbtl, vl_ttlgeral, dt_venda, nm_formapagamento) FROM stdin;
    public       postgres    false    187   H�      "          0    16530    vendatacado 
   TABLE DATA               .   COPY vendatacado (cd_vendatacado) FROM stdin;
    public       postgres    false    189   ک      #          0    16535    vendedor 
   TABLE DATA               F   COPY vendedor (cd_vendedor, cd_cpf_vendedor, nm_vendedor) FROM stdin;
    public       postgres    false    191   ��      �           2606    16566 
   Login_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (cd_usuario);
 <   ALTER TABLE ONLY public.login DROP CONSTRAINT "Login_pkey";
       public         postgres    false    142    142            �           2606    16568    aviamento_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY aviamento
    ADD CONSTRAINT aviamento_pkey PRIMARY KEY (cd_aviamento);
 B   ALTER TABLE ONLY public.aviamento DROP CONSTRAINT aviamento_pkey;
       public         postgres    false    144    144            �           2606    16570 
   cd_cliente 
   CONSTRAINT     Q   ALTER TABLE ONLY cliente
    ADD CONSTRAINT cd_cliente PRIMARY KEY (cd_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cd_cliente;
       public         postgres    false    146    146            �           2606    16572    contapagar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY contapagar
    ADD CONSTRAINT contapagar_pkey PRIMARY KEY (cd_contapagar);
 D   ALTER TABLE ONLY public.contapagar DROP CONSTRAINT contapagar_pkey;
       public         postgres    false    148    148            �           2606    16574    contareceber1_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY contareceber1
    ADD CONSTRAINT contareceber1_pkey PRIMARY KEY (cd_contareceber);
 J   ALTER TABLE ONLY public.contareceber1 DROP CONSTRAINT contareceber1_pkey;
       public         postgres    false    151    151            �           2606    16576    contareceber_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY contareceber
    ADD CONSTRAINT contareceber_pkey PRIMARY KEY (cd_contareceber);
 H   ALTER TABLE ONLY public.contareceber DROP CONSTRAINT contareceber_pkey;
       public         postgres    false    150    150            �           2606    16578    cor_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY cor
    ADD CONSTRAINT cor_pkey PRIMARY KEY (cd_cor);
 6   ALTER TABLE ONLY public.cor DROP CONSTRAINT cor_pkey;
       public         postgres    false    154    154            �           2606    16580 
   email_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY email
    ADD CONSTRAINT email_pkey PRIMARY KEY (cd_email);
 :   ALTER TABLE ONLY public.email DROP CONSTRAINT email_pkey;
       public         postgres    false    156    156            �           2606    16582    endereco_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (cd_endereco);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public         postgres    false    158    158            �           2606    16584    fechprod_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY fechprod
    ADD CONSTRAINT fechprod_pkey PRIMARY KEY (cd_numlote);
 @   ALTER TABLE ONLY public.fechprod DROP CONSTRAINT fechprod_pkey;
       public         postgres    false    160    160            �           2606    16586    fornecedor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (cd_fornecedor);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public         postgres    false    162    162            �           2606    16588    materiaprima_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY materiaprima
    ADD CONSTRAINT materiaprima_pkey PRIMARY KEY (cd_materiaprima);
 H   ALTER TABLE ONLY public.materiaprima DROP CONSTRAINT materiaprima_pkey;
       public         postgres    false    164    164            �           2606    16590    mostruario1_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY mostruario1
    ADD CONSTRAINT mostruario1_pkey PRIMARY KEY (cd_mostruario1);
 F   ALTER TABLE ONLY public.mostruario1 DROP CONSTRAINT mostruario1_pkey;
       public         postgres    false    166    166            �           2606    16592    orcamento1_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY orcamento1
    ADD CONSTRAINT orcamento1_pkey PRIMARY KEY (cd_orcamento);
 D   ALTER TABLE ONLY public.orcamento1 DROP CONSTRAINT orcamento1_pkey;
       public         postgres    false    168    168            �           2606    16594    pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (cd_pedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public         postgres    false    170    170            �           2606    16596 
   preco_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY preco
    ADD CONSTRAINT preco_pkey PRIMARY KEY (cd_preco);
 :   ALTER TABLE ONLY public.preco DROP CONSTRAINT preco_pkey;
       public         postgres    false    172    172            �           2606    16598    produto_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (cd_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         postgres    false    173    173            �           2606    16600    produtoacabado_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY produtoacabado
    ADD CONSTRAINT produtoacabado_pkey PRIMARY KEY (cd_produtoacabado);
 L   ALTER TABLE ONLY public.produtoacabado DROP CONSTRAINT produtoacabado_pkey;
       public         postgres    false    175    175            �           2606    16602    saldomateriaprima_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY saldomateriaprima
    ADD CONSTRAINT saldomateriaprima_pkey PRIMARY KEY (cd_materiaprima);
 R   ALTER TABLE ONLY public.saldomateriaprima DROP CONSTRAINT saldomateriaprima_pkey;
       public         postgres    false    177    177            �           2606    16604    tecido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY tecido
    ADD CONSTRAINT tecido_pkey PRIMARY KEY (cd_tecido);
 <   ALTER TABLE ONLY public.tecido DROP CONSTRAINT tecido_pkey;
       public         postgres    false    179    179            �           2606    16606    telefone_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY telefone
    ADD CONSTRAINT telefone_pkey PRIMARY KEY (cd_telefone);
 @   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_pkey;
       public         postgres    false    181    181            �           2606    16608    terceirizada_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY terceirizada
    ADD CONSTRAINT terceirizada_pkey PRIMARY KEY (cd_terceirizada);
 H   ALTER TABLE ONLY public.terceirizada DROP CONSTRAINT terceirizada_pkey;
       public         postgres    false    183    183            �           2606    16610    vendacarteira_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY vendacarteira
    ADD CONSTRAINT vendacarteira_pkey PRIMARY KEY (cd_vendacarteira);
 J   ALTER TABLE ONLY public.vendacarteira DROP CONSTRAINT vendacarteira_pkey;
       public         postgres    false    185    185            �           2606    16612    vendadireta_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY vendadireta
    ADD CONSTRAINT vendadireta_pkey PRIMARY KEY (cd_vendadireta);
 F   ALTER TABLE ONLY public.vendadireta DROP CONSTRAINT vendadireta_pkey;
       public         postgres    false    187    187            �           2606    16614    vendatacado_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY vendatacado
    ADD CONSTRAINT vendatacado_pkey PRIMARY KEY (cd_vendatacado);
 F   ALTER TABLE ONLY public.vendatacado DROP CONSTRAINT vendatacado_pkey;
       public         postgres    false    189    189            �           2606    16616    vendedor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (cd_vendedor);
 @   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_pkey;
       public         postgres    false    191    191            �           2606    16617    contapagar_cd_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY contapagar
    ADD CONSTRAINT contapagar_cd_fornecedor_fkey FOREIGN KEY (cd_fornecedor) REFERENCES fornecedor(cd_fornecedor) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.contapagar DROP CONSTRAINT contapagar_cd_fornecedor_fkey;
       public       postgres    false    1979    148    162            �           2606    16622    contareceber1_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY contareceber1
    ADD CONSTRAINT contareceber1_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.contareceber1 DROP CONSTRAINT contareceber1_cd_cliente_fkey;
       public       postgres    false    146    1963    151            �           2606    16627    contareceber_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY contareceber
    ADD CONSTRAINT contareceber_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.contareceber DROP CONSTRAINT contareceber_cd_cliente_fkey;
       public       postgres    false    150    1963    146            �           2606    16632    email_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY email
    ADD CONSTRAINT email_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.email DROP CONSTRAINT email_cd_cliente_fkey;
       public       postgres    false    146    1963    156            �           2606    16637    email_cd_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY email
    ADD CONSTRAINT email_cd_fornecedor_fkey FOREIGN KEY (cd_fornecedor) REFERENCES fornecedor(cd_fornecedor) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.email DROP CONSTRAINT email_cd_fornecedor_fkey;
       public       postgres    false    156    162    1979            �           2606    16642    email_cd_terceirizada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY email
    ADD CONSTRAINT email_cd_terceirizada_fkey FOREIGN KEY (cd_terceirizada) REFERENCES terceirizada(cd_terceirizada) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.email DROP CONSTRAINT email_cd_terceirizada_fkey;
       public       postgres    false    156    183    2001            �           2606    16647    email_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY email
    ADD CONSTRAINT email_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.email DROP CONSTRAINT email_cd_vendedor_fkey;
       public       postgres    false    191    156    2009            �           2606    16652    endereco_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_cd_cliente_fkey;
       public       postgres    false    158    146    1963            �           2606    16657    endereco_cd_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_cd_fornecedor_fkey FOREIGN KEY (cd_fornecedor) REFERENCES fornecedor(cd_fornecedor) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_cd_fornecedor_fkey;
       public       postgres    false    158    162    1979            �           2606    16662    endereco_cd_terceirizada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_cd_terceirizada_fkey FOREIGN KEY (cd_terceirizada) REFERENCES terceirizada(cd_terceirizada) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_cd_terceirizada_fkey;
       public       postgres    false    158    183    2001            �           2606    16667    endereco_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_cd_vendedor_fkey;
       public       postgres    false    2009    191    158            �           2606    16672    fechprod_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY fechprod
    ADD CONSTRAINT fechprod_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.fechprod DROP CONSTRAINT fechprod_cd_cor_fkey;
       public       postgres    false    1971    154    160            �           2606    16677    fechprod_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY fechprod
    ADD CONSTRAINT fechprod_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.fechprod DROP CONSTRAINT fechprod_cd_produto_fkey;
       public       postgres    false    173    160    1991            �           2606    16682    fechprod_cd_terceirizada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY fechprod
    ADD CONSTRAINT fechprod_cd_terceirizada_fkey FOREIGN KEY (cd_terceirizada) REFERENCES terceirizada(cd_terceirizada) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.fechprod DROP CONSTRAINT fechprod_cd_terceirizada_fkey;
       public       postgres    false    160    183    2001            �           2606    16687    materiaprima_cd_aviamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY materiaprima
    ADD CONSTRAINT materiaprima_cd_aviamento_fkey FOREIGN KEY (cd_aviamento) REFERENCES aviamento(cd_aviamento) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.materiaprima DROP CONSTRAINT materiaprima_cd_aviamento_fkey;
       public       postgres    false    164    144    1961            �           2606    16692    materiaprima_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY materiaprima
    ADD CONSTRAINT materiaprima_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.materiaprima DROP CONSTRAINT materiaprima_cd_cor_fkey;
       public       postgres    false    154    164    1971            �           2606    16697    materiaprima_cd_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY materiaprima
    ADD CONSTRAINT materiaprima_cd_fornecedor_fkey FOREIGN KEY (cd_fornecedor) REFERENCES fornecedor(cd_fornecedor) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.materiaprima DROP CONSTRAINT materiaprima_cd_fornecedor_fkey;
       public       postgres    false    164    162    1979            �           2606    16702    materiaprima_cd_tecido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY materiaprima
    ADD CONSTRAINT materiaprima_cd_tecido_fkey FOREIGN KEY (cd_tecido) REFERENCES tecido(cd_tecido) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.materiaprima DROP CONSTRAINT materiaprima_cd_tecido_fkey;
       public       postgres    false    164    179    1997            �           2606    16707    mostruario1_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mostruario1
    ADD CONSTRAINT mostruario1_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.mostruario1 DROP CONSTRAINT mostruario1_cd_cor_fkey;
       public       postgres    false    154    1971    166            �           2606    16712    mostruario1_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mostruario1
    ADD CONSTRAINT mostruario1_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.mostruario1 DROP CONSTRAINT mostruario1_cd_vendedor_fkey;
       public       postgres    false    2009    191    166            �           2606    16717    orcamento1_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orcamento1
    ADD CONSTRAINT orcamento1_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.orcamento1 DROP CONSTRAINT orcamento1_cd_cliente_fkey;
       public       postgres    false    1963    146    168            �           2606    16722    orcamento1_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orcamento1
    ADD CONSTRAINT orcamento1_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.orcamento1 DROP CONSTRAINT orcamento1_cd_cor_fkey;
       public       postgres    false    1971    168    154            �           2606    16727    orcamento1_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orcamento1
    ADD CONSTRAINT orcamento1_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.orcamento1 DROP CONSTRAINT orcamento1_cd_produto_fkey;
       public       postgres    false    1991    168    173            �           2606    16732    orcamento1_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orcamento1
    ADD CONSTRAINT orcamento1_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.orcamento1 DROP CONSTRAINT orcamento1_cd_vendedor_fkey;
       public       postgres    false    168    191    2009            �           2606    16737    pedido_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_cd_cliente_fkey;
       public       postgres    false    170    146    1963            �           2606    16742    pedido_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_cd_cor_fkey;
       public       postgres    false    170    154    1971            �           2606    16747    pedido_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_cd_produto_fkey;
       public       postgres    false    170    173    1991            �           2606    16752    pedido_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_cd_vendedor_fkey;
       public       postgres    false    170    191    2009            �           2606    16757    preco_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY preco
    ADD CONSTRAINT preco_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.preco DROP CONSTRAINT preco_cd_cor_fkey;
       public       postgres    false    172    154    1971            �           2606    16762    preco_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY preco
    ADD CONSTRAINT preco_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.preco DROP CONSTRAINT preco_cd_produto_fkey;
       public       postgres    false    172    173    1991            �           2606    16767    preco_cd_tecido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY preco
    ADD CONSTRAINT preco_cd_tecido_fkey FOREIGN KEY (cd_tecido) REFERENCES tecido(cd_tecido) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.preco DROP CONSTRAINT preco_cd_tecido_fkey;
       public       postgres    false    172    179    1997            �           2606    16772    produtoacabado_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY produtoacabado
    ADD CONSTRAINT produtoacabado_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.produtoacabado DROP CONSTRAINT produtoacabado_cd_cor_fkey;
       public       postgres    false    175    1971    154            �           2606    16777    produtoacabado_cd_numlote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY produtoacabado
    ADD CONSTRAINT produtoacabado_cd_numlote_fkey FOREIGN KEY (cd_numlote) REFERENCES fechprod(cd_numlote) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.produtoacabado DROP CONSTRAINT produtoacabado_cd_numlote_fkey;
       public       postgres    false    1977    175    160            �           2606    16782    produtoacabado_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY produtoacabado
    ADD CONSTRAINT produtoacabado_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.produtoacabado DROP CONSTRAINT produtoacabado_cd_produto_fkey;
       public       postgres    false    1991    173    175            �           2606    16787 #   saldomateriaprima_cd_aviamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY saldomateriaprima
    ADD CONSTRAINT saldomateriaprima_cd_aviamento_fkey FOREIGN KEY (cd_aviamento) REFERENCES aviamento(cd_aviamento) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.saldomateriaprima DROP CONSTRAINT saldomateriaprima_cd_aviamento_fkey;
       public       postgres    false    144    177    1961            �           2606    16792    saldomateriaprima_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY saldomateriaprima
    ADD CONSTRAINT saldomateriaprima_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.saldomateriaprima DROP CONSTRAINT saldomateriaprima_cd_cor_fkey;
       public       postgres    false    1971    177    154            �           2606    16797     saldomateriaprima_cd_tecido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY saldomateriaprima
    ADD CONSTRAINT saldomateriaprima_cd_tecido_fkey FOREIGN KEY (cd_tecido) REFERENCES tecido(cd_tecido) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.saldomateriaprima DROP CONSTRAINT saldomateriaprima_cd_tecido_fkey;
       public       postgres    false    179    1997    177                        2606    16802    telefone_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY telefone
    ADD CONSTRAINT telefone_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_cd_cliente_fkey;
       public       postgres    false    181    1963    146                       2606    16807    telefone_cd_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY telefone
    ADD CONSTRAINT telefone_cd_fornecedor_fkey FOREIGN KEY (cd_fornecedor) REFERENCES fornecedor(cd_fornecedor) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_cd_fornecedor_fkey;
       public       postgres    false    162    181    1979                       2606    16812    telefone_cd_terceirizada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY telefone
    ADD CONSTRAINT telefone_cd_terceirizada_fkey FOREIGN KEY (cd_terceirizada) REFERENCES terceirizada(cd_terceirizada) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_cd_terceirizada_fkey;
       public       postgres    false    2001    183    181                       2606    16817    telefone_cd_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY telefone
    ADD CONSTRAINT telefone_cd_vendedor_fkey FOREIGN KEY (cd_vendedor) REFERENCES vendedor(cd_vendedor) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_cd_vendedor_fkey;
       public       postgres    false    181    191    2009                       2606    16822    vendacarteira_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendacarteira
    ADD CONSTRAINT vendacarteira_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.vendacarteira DROP CONSTRAINT vendacarteira_cd_cliente_fkey;
       public       postgres    false    1963    146    185                       2606    16827    vendacarteira_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendacarteira
    ADD CONSTRAINT vendacarteira_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.vendacarteira DROP CONSTRAINT vendacarteira_cd_produto_fkey;
       public       postgres    false    1991    185    173                       2606    16832    vendadireta_cd_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendadireta
    ADD CONSTRAINT vendadireta_cd_cliente_fkey FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.vendadireta DROP CONSTRAINT vendadireta_cd_cliente_fkey;
       public       postgres    false    187    146    1963                       2606    16837    vendadireta_cd_cor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendadireta
    ADD CONSTRAINT vendadireta_cd_cor_fkey FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.vendadireta DROP CONSTRAINT vendadireta_cd_cor_fkey;
       public       postgres    false    187    154    1971                       2606    16842    vendadireta_cd_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendadireta
    ADD CONSTRAINT vendadireta_cd_produto_fkey FOREIGN KEY (cd_produto) REFERENCES produto(cd_produto);
 Q   ALTER TABLE ONLY public.vendadireta DROP CONSTRAINT vendadireta_cd_produto_fkey;
       public       postgres    false    187    1991    173            	           2606    16847    vendatacado_cd_vendatacado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendatacado
    ADD CONSTRAINT vendatacado_cd_vendatacado_fkey FOREIGN KEY (cd_vendatacado) REFERENCES pedido(cd_pedido) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.vendatacado DROP CONSTRAINT vendatacado_cd_vendatacado_fkey;
       public       postgres    false    189    1987    170               >   x�3�t�9���e����e�����e�������e������`h�e������� fL�            x��]Ir�^K��Ү��C$�K��$�$��zv�e*j�޶/�gh_�31� �$_D�Qe���D���.Nb��x��.�bA�j��VP����F/���4	�$:�n����.�v��.���>�E�CxL��99�v��*Q\ep�u�E͂���<����eIw%k�P�9�\'M��.��v8Mथ�s���xJ���a�)|����]0�s?c������ɛ�լ��;v��U�<�M�[���C8:��da��hx���湀k�7�����n7,kt�B�
�{��L434]Z�|'�����UˆUw^�9����^��qKN\,�� &�Yˀ��(Ͳ(9�|��H�#��aBQ��P���.�n,�)?����)R�,��]���&1�-;� �D�I���fA��V�kx�
| 7؇$��|`�+���o��~������[�dY���Vl;."Y���g+J|v��9�pV���G�|��D���UnE��2�,�I?�4�G$��r�%z�sw���c��H���"�լ�E�{_��s�#�!��K���8Kb� �����G=���(I��[�h։d�+������r�ߗi1�B��I�*�2hA7����GR-�H��6�Y�q�!	�"��U�u ߀�Ey���|�/xp	�@�d-V.��X}�zrԘ��J���Hƿ2#�O_��_ta�O��$�CԼ(Ĥ���Qo�S�����ĸ���}|&�+EQ�A�Y����a�[�F�p��P����V�D����矬@�/a�}�V_q.�(����>�ս(`�sĖG��yԗ��IH�5/`�y-��r�.�b�0�\��	���A���y���!PVU+�]#S+tzB����tR6n�<:iO���C���Ŝ׼y�Q������$��Gwq2c�d���^���sY�\����/	����r��O���T�0	�	�	qM��Sʚ��^�x��!�It�bB�O.>���j��l���0��!�o��i�/�S�N��N�@�K:|p�#E��d�6f��*�ӗ-�ލG�c�L"���!�O>n��U�]�#i~(�l��5���xs�B$g���"W�Z�|�3��?S\���?�*�һ2 g�i/@���\�vM��N��$�)5��h-.M�i��6����9��h�c�^0;	�ܤcF�Q���Br�� ��q\�����O4�r��Qv(H�u��{=Ai]��x��Z��Q&=�j���'Y�e��h�49��N{��8��>�R��`b(?�uu����K�|���c��c�i��]Y���g\\Ť�{9f?%�\�{�s?���jQ�+S�/t��R�b���x&�z�`��v�1	#p?�ǉ���ѣ��a�)�-��2�������60.3:A4�5`E�ŕ-u��$��	���h\�t"W�}`��3nY�`��F*�wӛ8��!�s���3Σ�Ɯ���)mꓻ��0
<s?:��m��\d,�x����X��h W��wJ;h�N4Gm���Q�C����&%o�[_�*����uFpa����?pn(�7>LD�����%����+ϱH�`��"r-�� ���N�S6�DD�-��&�j�Z���c�"R�k�9Jd��gk��D��d:")	����G���=������M�(�����%#��g����U��VK�d������X��)��;�<�!��N�|��"-�R�)�L�2�C	�;��ʨ��*l�SR<2@|��W�D���!�7��g��}u��$U�3��N��Ho��i$5��GǰY�n�lJV��$�r"%7�5vn�{U��z�X�?@~�vPJn�+x	jKgf`����ʥG}7��!Rڸ�hN�_��9�p@J�|�,���m-`ޗ�gB��>!i)���"Đ�I��y&�S*�eO���b������Þ�m��?�f�̠ٛq�S\Z����N��*��@�]~�5��8fF;Y�|)�����1X�^]�l�cPf����]����zN�gr]rpڮ�p~�҂����Y��(��L�K#�/�����~-���yW`0�Z-�0K�0\�tE����D�I��?���D�}F+a��)����(�~��7y�⪡�
?^��Ul���P'-2���*t�hp�YX�� �~ˎ�D3�r��hyƆI0i�'�溧)�#\�T;OX�Y��ݷ�0�XKu"#��.����ɣ�q=��~�h:i�##Y��w���Z^����i��?�����h0��g9蹮F�v�ᯆ2!O@��4m�`��'|��V ݻ$�<�ӂ�E�W*�Ũ\�9+�*�@��^�In�R����Ŵ���o��c%y�}�Qz܏#o�����@�	��y�K�GLR�Q/��$>ro]As��y��M�\36bx �ק
��qԜ���r7}b8ϡ�7�a�ӄR/�
�}�+7g�!��/	��C��yS$�9�r-x��d��X� ���ixc�3�]���_�_���Lַ� ���5r�����V*oz�\�H2{Z�����	Ϲ����c"�=/Xw�~㨵0I��m��OCD���$I������!��Cv�2�q�=��i�H�SCW�S��%�R�;���/x�7��x�K���dѰύ��ǨS�&)���s}���Zڴ�.��+�[tW�����f$<A�j��Pz�k�f	M��S�q2��t�4=c���/�q(�r0 ];c���y�m�wɢ��|pM�q�-��V��Q���1?ߦ)gXRĹ��C{��uy����R!5��nƘo"h�8�t�Vy�*�b]u�se�Ӄ��yEB_T�u�L�=~?��pH��ZhU/��B��)Ɂ���ݍt�䪣w-��d�<�\��Xeڋ7�@��0[�H�8eY��s6�t贼�G5i����!��3�I������>��gV	J����1��P&7��ۼ�0E :h��]X�:�r ނ�;��x����B�����
.�i����Kør����mj��i�L� z�d)�<��H�y�G`v��z�	�k���B,P^"Է���-/�W��4�,5��E��!YB#%x�*Q����ԡ�KC0�7�N��|�s���3M�h�@E�9��X�s}!���'�YXtH��v�J�M\C#�zW�:j���B�u��fH���ߵ���kzyW��Y%E�5H
��U�F�x��S��4��=�(����D�.=)��������p�g���\0���c}#�P3^�Sf_��ٗV=-:�]���V��)P-h��Q}����[����_����ɐ��f�3`���!�ź�I�xwh~�ik�А�Z� )~�C	3�~s��1�Hؒx�KT���;�E%�$V0�cpe㶟ܱ�jZ�aopqz�~]����9�ԬKa�H0���e��}��1T���E��-t��`{����m���*��]S��%���+���,�ms$�y���+�,����z�+8w�%��H�+:��wrm��҉�c�+Ÿ�@��=�01�Q��E����p��褡M��2y40��+�(k��lD'��|��,�Iۋ+�{іD�l~����i��b�5)Ag��}�b��[4�&=>>+2f���P���jF�1=s�4&��RX�I{��4r{��ȵV�������9T�,� }h$��wY�&hk<1
��|���^��~����:���~�?�R��;MM����~��`�P��G�i��N��|����7s�-��&	�g��b�Yt�WT?�Z���Q0f��Td�RV�R��Ȝ�9��4�L��G��V��T�������.�X�Ѻ��{������E��Iy‒����a�
�A�w�+ �)9��g�U��Y�Iws�:���7h�$����P�+� ��,��9���*�iK�e
,�N�|�@���/���~Z$�ih�9�}!�$�Q�I����)�Ag����K�V�����[qt�G�y��2�lwx�H��ေ_L�����O�~E�����ѡ��s�d�   ���c�S�d��7(�h�R����D�s}� 	+�ࢤ"k�7
3Z���,�%�P��m������l��yc`�o�t-P�ϗ�RV���ms�&h�O���9H�ő���esl���#.�:�٪�蘆���d�6�4�@�M�n]���*����ߘ�^�11�IK}��F����6�3jz�HÇ���-����,Lf��A�-[<LB؊�m$W��\Ww��{�����%y�,xD2��:g��4�����q&��
_�.��ۿ���+Y������P�M���2�iXH+Es�����B:�
:�FB��Hx�C��W~{2� ��m�3�;�{O{<6י�3�?�Rz*=�c{�0����Ӷ�����X����K�9R'4��z��z������V�N�Z0�[������MCǎ<Ûk�^S�����i����ڂWIm�b���`Y�ZZ\��=��^c��K��z��
L�I����c��3>��p5��c�z��Z���eW,�Q����hѶ'F�K�PD���z�o�*:'j��m�Er�3����S\��D�f�h������S "nY,^_}M2���;�q}H�{���F�1"(�Xnr@w�
]-��U��@M:�Q���hH?J@,�w�h"�̏C�Յ�(W<;� z�bSx��64��M�mWa��I�:Ju;��|�uC��o�1ҳ��A�M>�
f|�4�E&h�Ce��7j1�^�=�b�~��M!�v�J-S�?��D�6��UR�tb�Շ�7��t�C���!��Ͽ�
Օ��L�&
.�,���~�/e�1��N�Yif~.�&Z����Rp���cw%�X���rpfAT?0��,��s�ub+����f�n܉6��Mփ��/X���>�t�A�л���TVbv>�8�ՠ�8t�o셅
�R�8̭e���);�g�/�-�޹��In�9�R�t���5a!j��D-��α]�N�Dt��.�9-��&^�v�oy�)>����թ+E�7]C���lbx�>E�!�'���p�0���	��Z/�e�����qvbdN#��a��b����	V�w:�Sg��x]>�/�8��8���;�����XJv���.L��xm5���-HJ�����Y��Ih��5Ӱ�ήr�ߓ� <�+��j$�;�����89�	hl��>��96�E2uH�/�N�wp0�����Z����\�-����Wޙ��f�8[��2�[�v��ЊǊx܏��^���RР6��_���#S��rc�Ԇ!��_q]�XW�������^�nLUo�^h�����fj�/�{(�?`y�N6�G>w��~���)\cC��\Vx&tx��b��q(	�1\cC���z�B/
��������D����P�t./�|.:��1����A��?:����ly���`y�,yoe�v�$�3�1P
��}�����+7����li��2SV�6n�.���.5��zD���������o��X�H��,}$�
�����4��i��9���L8�O��~m�%ܱhL��7�{�)�/]KX�v`��xL�G�[�c�`�����-���d��}���-��ٲt!(ƻF��`pj��tZ�Z�܁ ��N{��A���ҁ�.��n��s������,2��G���$�U���6��Y|{
?��UVnڽ3D?�G|o#Ӻ?��R�C����9�����o`CѦ�	�qj=�v�����5����#���w9j�cuj�t�a8��s�~uf��GS\D����/��Z"�tm|F����+m�k�!�H�u�i��� W�Cԋ=%�cq����CL��lX��Ѷ]G�>:�I�~C�����c���0���>�qӷ���y��ape�?ktiGM'h�s�1�8�l�QD�*:��"*Eb=��ށ��l����$�S	z��1�oh�V,pk���+��c�%V��;L0gÇi`��	I+P�V>�Ʉ�c��&�߂J~��پ��$�-,S�b���X�t���T5�-4M�1rִ�8�(�13�;e�.%��4PBt��u���Ix��h�����9b�
!�W���10�Y�I�'8��9|i�3#)F�CeC1	�"��V�g�i1��l8+����iH���#����4t���KW^)�k�7��j���ۓ�|t��ɰ��B4ɖ�}��+g�4�I����)�N:W�o�ū��PU
0�c`�t��7-T�@��V�?as~�o��1����]u�U3��/��R4tP��}��;�܆��[�^\��c��7�
�i�Ïi��D����6����L��,Ǻi�[�6������y��<��f���{ʎ��7�i�-06�#k4�ш�{'
�v^������6�*%!��G#�����Xy���}�|4V�ZM��3���5��������4hȔ����I�յ�ڹs�`�\�H��T������Z��Ū��7�}I���=�i���R�}bs���)�Ӿ���7����=j��OG���1��hn��ҍZ~ #5"�F���-���>��:֥�c��'ԟ�S�Z��1��c��Y�~���	��޼��(��m(��69�q��|xg������V8���Qs���h����s�����XYFv,����MV��B��Ԫ���=�Y�1�oߖ��8�Q�N�l܏�o�#W��4覯M��bS�k�~Ĝ��i��*�1z�Bdޚ���Ӡ�l�oon����:�1���@�, �N:�J6����k���6��+            x������ � �            x������ � �         �   x���=� �gs"� �{�F:���Am�&Q��
��!�ӳ! FP�(#�G�^���] +_`��>ͷi~LP�1����ꀼ���g�=Z�2;fz����e�b>��H�c��q����I�����
ԫ1#��Bj���#و&>�x|�
N�P�`l.�8�B#g�*���0���{c�         �  x�}V[��(��Uhq��^�X&�z$�䞤k6�5S�mycs�B=���������/٫^.�Kv^��^�I-��x�V5N���ް���zS�e�Y����8�ۢV.r��g��g�������
������.������d�F��1��/iRׇJ�5L�c=vl���j�SvV�����c1�(ംE�z\��ܛ���O�k�������������b�.���03/sv�W����)���ڏ��ۖ�w�2����2A�a~�#�@���J9g��^���e@v����Y�a��i�ӒB�wMe_T�C�d.a�c��a�,��\J�s���pY�\:.�+&� �
J^"��H`�+�p̓]�l�����*gW3���eSP��^ɔ�'���yU%<!�W5�xM��P56 ����(x�5r����kX䏅��d��aV�.K�uf�4d����uͮH?�_zD˺e!�IQ�]Z>�lUˋ�M�T��FZGt)�"����1d��E�.Kv�?��_
U1�[�o��G���ۿm�2�w�Z��k�͌7�f����
���h.�'���p�wt6ҕ$��l����,1��:�<&�i#�mqXϷa�fh��B��&p������.�+>�7�O���$���� ?���k��t�����K���ݕ��u{Lg��໮�s=ɒh�V!r��[j3"/X��a�hH��$��GIGyE�P�"�	�`�I�7A��"o�ʳxG�=V���{�j��εt_8>��W~�J7��H\��*�r*�p%�=�5v���^���05��<u�T���|�px1�s�Z������Ǿ�H[:Θ��z���d�ф X��G���7	L����}O*&r����F�0@]��l 1��a2�9�ͨh��T��:�i#45^��E�P�U*��?�n���(��Wߜm���=̀�_Y�"�p����H�2���<����"�!��K_'��b׻��h�ԇ%@\|�YK)�:�_���}5���;d$nh)���$���#8�\�⬐k��]�d��e�o1:�'	�0�b�M8��`@m�\̰9�R=;�5]��`��R3�AX��=�X'�H�S�ֳ�#����f�5#�7Bu�Fa����9�?�N            x��[mr�8��M�b� � J���{��`�$D�&	6Aj[>���l9������TG��ȏ��%`Sf������{��L����V���Ə������7{����	��>c&?װ|����V>�jl����\<?�U���Q?�?�9�������:������j���������ٌ��K�L�\����y��=D��:��P�\�Kwy+Uv��f/sh��\\��{��m���4�����\t�|D��{C�b�&���S�C�؊�0��^¼��K�L?���V��:؇���]k[7t��n�!|/��2��%|�|u�:��<�Ol����������L����V����e��(��m�)��N�S���e�c�c�Rߩ��4[��w�;	+����s��fEfX>_�`��ù�,W;T�LY�4LV�v�̰�"S�>�y�?f�̘`Vf���x��#]��e��>u8���g��^����lk�?��̔?��<l�+}�4�y������a��
������լ�
��.�7��򿓐 G9��s}#��wY��ws�b?����Yq�KhV7V�N�{��7��O ��pS!���ū?����~���lϜ�"�u�kgiy���!���B�r�!���!W��� ��g!�����ٱ�����i����IN��Vv�T��)����;��G����Ťv���ׇ>�fcF��H�sT����Օau���z��!HT���l{��[�Ga���9s�M��P����@�����{��N���퇌����=|ݼ�(K5$���WglB\�:�ebzʎ�=��Mz#�)&mO<�mN��4Ym}o��($�y��^�(�9{d)��&׀�>;24� �ݼ[�H��;�C��Ph���\]�*$��m�hH�E)h[���W	��Ԓ9��������)�5�ԋ`>��|����Nى絽G׶��uPYY?Vm�=Yy�!��n݄��q�_2g���.����/��S�Ќ{�������#=�l ��2;)��j�P!Y�����b 7�N��ģ�U�+��!8Ǽ�7X��)�s_g� ��d�/ɢ
��<	�FK�.?ؿ�bq��%��<"1��ڰv��7߸�S�
���X�5��@=ԃڱ$�3P�h�S��sK����<ao#z�Z�N�\'��4���cCn���9��&q��t�S�6[^�Ģw�c�����ݠ�;�~���\�����'��4�����#�,L�P����=�P���K9������,�*2�x�O�Q�!@�A�l�m߂��.���Z�
�������6�$7�e�0)�H]o��'<W����*���׶�*�54���@a�HqAa[����(tB�x��u5p*���W���j��Z�:�:n+�v)�۳���+[b���%8A�K?�.~.}��y	"a�w>ux^;��K)n��5K��"��FlL�$4(R<��VO�����v�)H�@�\������&2�`4��s��J<�d���� �Ή}x�k�
�0�0,���o�b%�)��~|ث�,��c���>��t��{���NXG#��)3,|W��`����y�їL�Fп";0����}��g!���7e�F(Xg��ٓh"���p����2ɷ�˫��PȚG��3�`}Q�:Ӝ��;�Aq;��l���=&-]P���!4&+y����ܺ��*�r*S����2���O!��;�܈�^���"� c	qu�TV�8-�0}
����L�Бkko����Tǆ���+�п��Z�U郱n��� �5�ף�U�*7,b���~\�Ӳ��j �nE�Q���u��~���x[���] �g����K�L#7�M���9�L�����65��y��Z"�!�<1�����Bq��}P�)�xO�\]:ZT��=as~@|(�D(���-^9 ?��y��|�ev�H-��ߚ��8�4*�����E	��aoH��7ۊ��4��Zs�I�5�KQpO���=H..�!���f;i�� ��'�ܬ�+в�m�{O�0�_����kA�_���d���s��y�k�H���b�9��ܟ���	3�����]�ڗ�Cp-�z����Ȋg�_�K%bGr��Ѻ��YҼ�fr����q��m{+T��2���^>�0�`�Eq�����
Ə>)7HCŵa��m���z;M~�1���0���D�A�B�����2�*
}������\Я��\���Բ75��8	k��.�]Ԏz��*b5��w��y���}cT�Sm���\u����#�$:��m\�6��W K�S�	,t݈��#�\s��GsՆx���2�K?C8/bT�_�'����C�7v(��LT��~���6U�/A��cO�f�f��Mz%IF8XiA�5:����nWAb�.a����Q`��y�,��1�"j��<.Җq�.�
J��TF~=�_򙠅��ˋ������k.��x�^>���/�Cr>�]�Ӷz��~�5��j0���v#h�:&q�5�B>z�%t�Gft	V'a����]B�����h��}>��V"���ͯa���w�@��A�� ?���|ܭ���R>V���I�+�����=&�x*���K�{u��K��7�4=��p�Y��]X;������Y>�ԇ�`��:~��4�|��āN�A{��,����_�@jJ��і�N^���(X=
�G;�k�GgȠ%2 ����FH74ڂߌj׼�cxl�|j�k���� ٧�iP��
�у�~xA�����c�͡ZaJ[�J�K/�ҁU�cM�� �Ⴑ"�����e�X:�Rp^�����3��d��>�FtÄ����8I܂�%ByFyպ��A�(�g�9�O�ނ �������4]�P�Fi�O�~�mŇ�4��\ej�|t$�����Os��p�^:x��o��:ru���-ۀ6i�x6&Ӈ9���!<��+�;:�>�_����A�h.�������kA?pC2]����<H2"MQ�<�%����m���7$������g�SD��BM��FZ����)'QɊW�v :�C��4MN����!-��"��N|�`��}p��t��D�H
`�>M�)>d���͠��j��"�D���+>�X�/A'i��ԘS��:4�@���u4R˫$�o�Y��$r$k�q}Hr��-����T�`��,`��{;��"�e�t�z���v�F����+���	�Hywav/�A�s6���+x���
,�(��G#/�y�B^�?�������� y�+�
,ZX�欩	�:�k�9���?hrz����}�;��ns=�[�V{#^�\�o���s7�
{��O9׼�ǩ��
h�K�d�<ͥ��m�t�⻸������!ޫe�Ӏъ�@Jyx�ͮ�����<�_m�z;�$�9�Ch>U<z���( �g
�Z�KN@�5'��}�<�q���T�)��'2ol
�q��4���>�|@�h�����7��J[Ĉ�>D+�%[�A}�S2n�/=��(]r��o4�}i(��O�6��)=P@Ӻw7�wq;��G(�B�4Mf����:��}u��6|��=,�;�Ȝ����NJ�${�������1�O��U	U��|&9����׼�5 ���=��7�D�n;�?�������+&3�K���1�����3������B͛�$e(nÇ���.��I�`)�����%"�'GDi��y���uϳV��J�pM��&�m�@�n��3|lD9��[�H�E%��D�H��*�Rn!�p��3J*D������M=��.�Z3Z�_�|C��Z3��Ŝpȏ�h.�
���
��o~�K��b���߄������4|N���ǩ ��!u|��7\�o��D�|a���k!yj������s�D�C
��Wi���s#�h�[�o�%��|�P����J�}��#3K��6>���Ý��n�ܸ�E���N���|@}��v��n �  �[Z4]R�hd�<`�L�@ �s�$1�.� �0�Ә��I��/��y<����N'C&�t ����CA�MB
���"�*ט���u�_\#B�:6|6��`��F��Q��T)��"rrVQ�����z�ٓ��h�|啕�Q��q�3} ����[0�YVL� �{{��p��+����
�"'P�����-\��jz�J��S�{�J�LI����:�A䣛��t^Cl�@.n�r�<�U���>��c�O?JC�1���iQd��!�k���!�O��Q��K&7�Q��,P��OO�!�8�\����5���B��)t����~�I�%h���Hp��u�Dl�$; m��:o�A/��$�e��|!M��t��5\#�10����0T�&���..�ע��e$�K�tCS�(��*6����C�sD�B����9
���;��� ���J�r��N
��;i�F�Io�<�@�.�鷉������{�cRn������n�S��)���(a�8q9O�1��N)�)P�F��bO��Rȋ�?W���(]?�R����Siީ#��bQ��(ssL��l�P���Q}��{]*�����E��<&j�!|p��mpD���h
���:B�i�h�q �$�!fe�.l��6| -7Z��+PՆ��Nu��5|J�Q>���$A�W������            x��]˖㶵�������& >���R�L�2)ʝ^���<�Q�(���{��DAD9�^m�n�����Dk�����f�?:�E����z�t�8��	v��Q�[g���ۋ�����>��	�tĿ�t:�o)��U�ŏ�8�����mo������m����vE�k��q�a�^�=��&���;����̅����Ú�6M�޴�B�[S�`ۚzS�(e�5�)�Y|_~����"�"C��LP�O�n�]�k���7}Ր��T��i��dK�.L�lQG��8�M�oɄ'������TU�s��.�w�j��b�ah��0bo�`mډ�@i�WE�/Ͷ.Z�����M��*)���-jli���e��˂1h~�%V���b�Z��N�u�.��q*���`�5حV�UW�
Z���HI���1e�c��z��·�C�.q�}e�f`"~�鋲�I��_���fӖ��e,!�Μ��o�m[t�}�,}�n𛌌��fS)�[ʟ0�Ҝ�Q{�0��5��*-�[:]Y�zR�m{pt�<S�_��k_�~s�C��̔��������:
o���1����D<�]_��cQ� �7m�	J��9��0�3��v����`�`ۗ;���z�	v)��-���w˵5���V�:�=	f��i���9��8���W*�΄����ڜ�}(�f�zL���i:��0����e`۵�@{�ԧ��H{��Z|�_S�@7*|`Olu��Y*���s�ͭ�~݈z/C��{�G߲L��{�̅��i���V��!�Я��?�N
DȀLϔ��:B�j�S�P���{H�13#������T0�$�3Ԩ>O���[�F/6H��VhG܌W%�#���K��g�z$��3�i�u+j�6��rb1��̜@i�dK�}w8�kSZ��+���<]&�$�T���������UU���T#
?c��P~"�1�������D5�z��	>FE��w#vfvt��t���6�_��Rs�s~���%K���E���"
��G�/7���/E]���r�ET5��e�7�6��%ĩ7��;��e �j�����7xe¿LD�:L�%VU_~��Mu"K�&���hČ42�E�`r��ȃ��r 3����P�nR������J�h���2%��4]��D�Z=����"��ȱ�M����k�S( �D.�z�,m-"Ǆ�1V�:!�/�%Tn���E}�P��l"ؒ��V"b��iZ��'���t�?@�QPWAU������@d.-�r��Ή�r���cV����=�O~��D=�\ߢ�ܰ�K���|��/Ӱ�
��w"�D��3� P�Ŏ���cG��7��L�E�����Ff���n�$�M���
9������e��kbG��)"�[≘f�X~(�1$��.1� ��I��|T&��a��hI� 5!x(�DXfWV�gЄ���q�#�ށ`H4�)�>L�P`G(=Lu_�B	ܠ�r�뜋K Η\
��1�5�;.7A��#I�:����½�H��?��V�_L��� �6�ҳ�}cS���/D��Y�XE�dqa>{�B˘T��x�
a����=�7g<���R%���0�L�_ȴ�*��֭����zR��A;�����%Ȕc'yؙ�/*��G���Q(A�X�!�xK�.l�d�O��R�C���@�dr�
T@>�8��IX~��16�L�[�0������e]"�Mɠ�W�=�l����j���$�$��+rΪ��@�5t����/TEb�U�w%�=�LO@/coFmB��:�o�T�䅜�J�+u��R�M���m��'9��xb��X A� �y�>TO;�D��@�������/T���+۲��?qp����,��UQ�ט�D,u��.i@N�Ƚg^LUS��\��e&�p8����$�i�݈)�:���c�,}�#�i��=\*of��W��G7Da�� {[�c���zokq�)��vD�|�ckcŽ2��;�5B�_�x���%u���8Q,R'����u:f���ci�^tʙ\ ���@��:�Oۗ�r�"�#� z��0%�"Gt83C_5n��y`X�ӈv�L�'����f5�}����-pT斣E���8���z��� jVu%���9����b�,��ϺD?`v�?���赤�3'�@L(V�o�go�Ś�3�D��G��ХX�o���i��8�N��$��V�{��B��3+ �?�p-O�(�}�#h��I�� �͝� ����x���:���e��0���ʦ>��N������h�*v�;��D	H�mvLn��E��;~�:*�	��s��ڸX��Hp�����[>��0����P"0S>A?��֤��=����Z3��b1!%3c��֜��	.�)6B6���g�Е������! 7Ol��ֳ첻�A�gC�^��5Ҏ�u�����%4^\�n���%x<mY��!���żt��jEW����8Ӵ�ڹRS���A�Q"Ĳ
�ߠ�� t|k���vk�f��l[}�3h���`�7 ��ߍ��_{߫�}�л�U �]�\CyWdL�+r��+��o�6E���3���� �StM�0p�ɒ��I�'+��|+��F��ִ�=�p���R�Zl��,���9�k�<@6+���9N��������^h@)E��3w�nl���hC ֓���/��p&������?A�2�R��0�I����h��?R�-��#�&��S�Dt�Ǳ?9���k��+*��|����d�K�#�n�X��g�� ���c�0�rn��>}Rp$2�6>���Ӏƹ��Os����JP��΍�/KlIƳ�đUck�"cď�߶]�:�v��� >���F��8H4s�k��^����ge���	���徯�T�(�%���\5��T�x�sA���0�6���m��*Kpri��f�~B�Դ�壆)r1�N�=Y0U�o�/�ۡ�lQ���T��)+��Z@O ��_�K3D^0��vD�t��݊���!�d��3))$06��G^:$��f�y<}c��/���Px�׀4�#���q��=�0�-����Ȧ8�������^Ɨ�/�-$#���J��{���٠���a|]�Y�਀d�����j>o�,?����lb!��e���;���I�w��}$�B�^����}��u� ��Q��+V��>T�,d⍾l�#`�T8��SD��w��UALεDW�cN[-h�����	�r.�+`:�x��M&^��[O����+,��̵�j3xx;S�7��y�8����@��$�T�Te�*b�L}����zu�L��CD�Ի������x2�x�7�ywsrǻS�(�V -b*�5<`S#3mn��ػ^>�DŇ�����2�� �� �nX��������r��2<��}������א�id�<�̽�J8<W��6�W����G����_:���rĺ�>�W���`�Lq|[��
�F�����{��v����R,��,�*�z�ߡB/��T�e?�
�f �W�"�Jqfo�D�%(o�D��U��Y��,Y�ޜ�H�i��*(v��/"����6�=^	�."`?�̡/���0�\�b�GR3G��`S~��1Y�W3��;գ'��"HU�����`��0q~F�#��(�ͭ�&WTX]�r��&`Rs؜g�x���)���c��w,�ڡl�Sֲ�w�f��>�!�}֭�?�\1f��Mm��B�+&���k�7H�V�c�59�,�i�W�;��q��%dKf�ք;9oNx�����ᒗ�A�mn#�ue�f[��CkV}�1���`��%x7���� xo��S��-ǟ�K�
 L���1�D����^T��G�7��
g���i^��a4N���ʎ��[�:Ζ�����~�;��n���'��m�>�k_6�ݻ�Nc (`�ۿ��#�|t���T6���X�W�]l�q�+�Ǌ]y#�dQi�s��ҝ�ri�r!5���;rq9�'�a�5�t�KZ$�RL��Op�2��ֹ�ys�m������E�,s'��� �	  �� �#E��fh-�(R���a�PrD>���ۻ:N�F3�i��'�I�צ8,�7�Tζ��gx>��F��r/:���AnZ��c_�PX!��!�i;�=�iۙ�)�� p�v����#�_���!����|J�=����d�9W����4�*S���\ej��x�25Y��͊�~�R�"tv�T��C�^� ^��B�dN�8'o��;�#۰��
9�8�\!g�O�>M�_o}LD�ԧ���ȹ���2�\\�`��3���t���}��b}*�c�����CSq��Ƈ�jK�
��j�X߸/�E��0�i�mm��?���xw�C�P;����;/���~��ʲ��*�θں�:��A�����B芶5�^� V���\��ݗ�E���ʝ�� �Z6�E�CE�a\�Z�����rgW�w�{`N[}4�D�i�~6s(�~�`*�S�Y7����9%S�S��'^���kD�8����ݱt���2:w;���������FTT����y�t����ZÛ�S"W��*w�sg��i�'U�/d��6�~6�_���у;	PM�/`!��F<�0��Y�=�ٙ����t�!"���ݺ��q��hzŪ�ͅ��P��_4����Z��\3�h���y�*XI�خ��?w�m;[:�e3v4i]j891�%���(�_F>N��7�x�#Q�XAш�ʝ!=�a��8?������F��q9����F�W�馁7�6�x�<mI9s=��El�, ���!]����9������
�
��Q���N5�VaUn��P�V�k2Oy�8VV5a:w�M�԰�}I���ϲ��h�o�^��,m�`�ݤ�pU��0a��jӱ�f�(wv�T�oGx �Z����T����׆(5�����޾ݰ/l{�\YI~�EB��d�Mw@��$����/H2��n�|b>~�B%s8vdo���X{/�;�{3�|�I�U�Y�+z�Q=mB��ڸ`o�����M��]w��]Zl_%� �Jf��}�K.�����[�r�6��&�Y�U�T�ŷ��.V�����_*}`�����C׌.H�j�H(�:������[�S��1��bl��y��%b�微é�oL�=�%�$nRf��ǂ8w�/�ufs�Ը����yY)�)�>)3'|�B��I��)[͎�W�gd+R,�Q6���m�/�.[��(�x)ЛT#Cӡ7�N���7�L���7�L��7�D���{������{WYh'�}+�� n���F���z��=��&}�`m��#R@��� =����e8���/y��f!'+�ho�Q+ذ{3�|O���&Gⅎe��4p��}��R��[qj5�C����b~>����hn�)��{��<?π��nA�?�%6�)�'c������i�}s�g�ޥ��'�}/������1�}@<������������<�Pk���J d`�.���U�Z������
lE^��wQlш/n���5p����[V	�dq%*����[�;^� ���e��,����,L���(�Q�/g=y��Gp_�#D;�X���%��)�ep���)�%gC�eZ��B��g��%�%o��T����<30<k���Ťݩ���(�
���R5����ᵐ�Ofb�G"��>v���	�e-݈��9�����K�mx�F��e���pb?ҵ��+=<������IGw�j[-�̚u���u�"_1��/�O���$�D��^�P|N�� '`�fկ�GL �?�z��:H@q�]FO��7��	_=�KLՖ��c �#E���A��ƻ�[KH�/�%_����>>���\� �0����猃RnP�Ͽ�}�,�ީx֥�\�q�~�m8�ͣ^��U�\�񡨖��@f���Ų��d5]PА�)0Eo_3����P�*l?�Mz��ЂQy��\��러�cAw7���֜�׿����G��OO���ږ��<|�s�smK�P�+������ʪkj�0Ⱦ�o2P�D���D�5��A*��6!�/+�<4ㅈ��3�)��Jż}p��l���r�ߦܚJH���
鮹;R'��/q��z_�M�x��D�4�rz�U+�_o�~�sS��P�����
��K���<��bU�OY��	�2�Noj�>�M�����8ܨ��V��RU1�}�G(m_X+O�4�Eݫ3����E�3��,�ۑ�PS��] �{�ϓ��Ksh��R^<h�}��+$����|��gz����Ӷ;Cc�n�� Lʔx��	g��na�����v�ԓL�JPO���;ڷ�%�r����62c�"��;1�O�<���F�|�;�pb%��G��cb,[��q���0�p@�;q9��۷�^xR3��n�{��w>wZS�핟8;g���}��揞���[h�3?��!g�8C�ݞxa�����9�wm91q�|c� ���v�Z��m�ᢟZ����z{{����7         �   x�����0�g�]@����TEBP��y��CR@j�]���|wQ"-P������҅a���i�����c���8��p�LJ�>��*��.���#�A�]����%�E��Er�s\b�W2;��.�¤�����n�����&dm��Bڬ�Ѹ���F$�����g��B��Ɓ�x�TEn���i�$�Ԧg��1�	��J         p   x�3�4@����\���&�dΎ��
��a��
>!.����\F@�FH��Q�Y!828���\]�˄��������h���gp����B�kD��g�B��#�W� ֻ&�      
   �   x�E̽
�0@��އs�8u4C0m�)��%j(��`[�}6_L���8V��U03$�v��H�~�Rc�iS9�i68�y���\���]�s$�9��W����l|�e8\S����8�1?��K�����j4�7��oX+�         G   x��1�@�x��W��j`db����9Y��h�2���E��lT�06�H<�~72�@�]�S^���         ;   x�3���#
prA�1�1�)��X��#3MM�LL�����+F��� W�$            x������ � �         i   x��˱� ����m&D��	����4HH/�����/�`��R�y�sD�AY$E����;��Va�P�k\CMlI}�aN螹��o��V&��+P��D�M�2�            x������ � �         b  x�}WK��6]��lK��4�"	IM�S��+WR�+'����ό���� ���uK�<1��/|p���_��ϵ���5,K��o\|�]��ᘙ����s���Y|��MXn����0�U`v3~���L�O.�e��0)���;��iR\ǤJn�f�u���X;��%Ff��l����M���S�ǁ�"��ͪ
-��n����P櫲{���0�&M�"=+�P=y�*�мz�w��/�BFY���؝��{<��]]A�A[�F˯��2����/w���3�6цj]��_��\7�����l)��T�^���y�=S)2��7�w�p�C��R�!��b|��B|��k�k^���:�� bo��X�RH:20��pu����� r��A�*�
X�����[�E����{?N n_᩻�Ώ�i	C����L6��� 	��gZ%��k��1��7�3���AW�g�HX[��H���xY!@�L�hdLZ���t�A��+�݌��dv=s�U��u=�;Z�i{�|6�\��$E���x�j7y�crk���K!QRO�� 7���t��"�Q� #d��D/������R��ˑʵ�L� U*]����Xf�L��][7O�_3!a��}{G�Z_�+OL�g�6��З;�@��ƷG���'Uޠ�i���!k��)K��C�4�	Fi��|���%��=�W ��=~�MP�,ޙ@;G�x�ѩ���:L���D���v�Ka	t���u���s� � p�;;��.~||� d/D�� >�GΓ`{!�;��e���Lb6��9�&r	��
�,*)�1��\Cn޻R=~��D�|Rƫ"^s '�Dxl�p*��x0�T�/�k`9p��U�����ˁ)��q�`�����w����{�d9f�-�`�P��RDRìt�~�H�H��\���&ˁ-U�6��xs����%��8��gg�e���ud�B'Jo�t���YAcs�n �\8��t�i�}��B�Hҍ�c-4T�4�%������v��YAQ��=�i2��+�=Ff?f-q�9�F�8aUB=�/:i|G�m	�x�Xh,
�Y��8�����1�l`�/h���B�F�m���=Tr,�u��tv&��L��ۥ�A&�S��Y�t%�F�A��mG�z�LA�E^ƍM\�E֢�.�ie͎�BJ�Κx�|�q⭉%�������]l��nl��?{T2�/�4G�܍�j�$vohI{�X���Z6�����!�z[�H5Ӂ:ih���V�y�+t�␆���o� �ȈsL�[b/��$YŽ�|����8e��7�Gŉ���X	���T��. 8���Q�O*�Sp�+��?�2��tT�2         i  x�uZi��
�-���+ i/o��4!�}��s)!��PM��8�,E��~"��������'�?��|h9tr����TBo�`�-�O�E>�ⷮ�I��~�5t�6n�%��U�`w��?\!Fҧ%�\�Y�7�����]�$�8lR�ۺ�aQ���U�GHO&������Oq���ן2I�@M������p��WSO9����(�N�HrWU����E���!�C�����c��D�ꍗտ}��r�,�O���u��ps4R��,�2q(�#��s΃_��ve7˨Ҋ 1A��Gh�K�,%!wJ��;K0��1�h�ʯp�gp۩��)�vAD�R.A���Ur�J�|��r�I%�g���I��+9�����5�yh�ŝ�9+��wF�rئ���
�"� 6R�8�>���/�2}C7���H.l$9]�Nk�;��K+
��+]��ző�M���R� iH�\,�!"\�o�� R���ł&3��6�광�e�Fi����P���"䦆@ x���S
���f�a���Ύ�)s�ud؉���J8�C�ec'�!�b�@E�0�	�������&���ۄ��DC���f��1����<�xHz�~$E�;F3<#ѕ,"�� g��2������S2��������X�rd$"Gw�П�aSh�j���(�S���U��ߜ�ב9���'ي1OP��ͧ9�>-	�x�J'�����¿ 8��_n���]��VM�6����{J��_�I�Ғ�e���I��nW	�b\KsWk��$n�%p�����L sԺ�n1��"�������*R�I�KC�zL믙�|�&�}���=�R�hp��Rռ+g*Md���;9�j��.����v�\��V)����So��fw�7�		A�<�􃽳V{�|jv[��,��.��h�<4T8��1Mi���u{�}�����@Bh�ĉx����{Y��J��l?[����e����/=�o0�G�:�p~t*�	��Y��v��+���/)��H��ͻ�_P�� ��Ec.������'�2�$��'R1B�4�(ۛ_�W��,n��\���Y��#t̀ݭ���.�}�9�E�*�pAA��Bb����/��%w��>��( Ք�n!���w������˰16�f@D׉���l����9%�3��%�ъ0�I�Z+���I�C��+�!`��=���$�"i =��Lh
%H F>� T�|WI0��t��,c<֚勌�_������)�K#��6U��f��Z߂�	 B˦Z%Q�j
O�P�Hk�|�Vw�ͳ%v6�5~$�oMG_����,o\�!�Cۣt�ؼ%x1���dk�޻�&��<�n�J���������]H��݉�XD�DUI��=��z�c�:_�ȡ>S~.c���9ۡ�Hꏝ�����������?�j������	z�|�2(�(ToRF��~f��{�A��M�Ya�k��=�bN�<��w�}�zc�  ��ĀJu^q���_;�6Fo��i.1b�%�ip>A�q&�G���*��W/�1�m������ͳG&gn��!�,-/�s4�]�x�WG������.�8T��L�n��89��>6��Hf���KV�+t�=��K�&�LDH1ߵ�=�]��j	����t1	�~j���e.F���m�WI���z[?� PɟRR�����!�@����f��y��m�?�=�Ly��W/��u���Ͷ '��[�a0���c�^A"%�$<N-ɧ��<Q=���>�%xx�1���di$��+�n�K�(+��Y�"�
̺OD���7z�-��)�e��'[u�-�!Gy�����L�t�\K]%�14g��Q2K�Ɂ�h��Fy��1��%ݞپ*j�v�䉄y��_b5�F�^Z�C3B���I,	-���ɗ!�)��������s
M~��9gB�z���:u�ja�E�+=s��u��*����7za9��H���z��0?V膦w�P�HBG��
//��8(9x�)��kfT0�h:�yw:�-Ѝ*h�ĔѾ��À��o1{��?���M�A�o��Sμ�B;��7>GP I��Uf�G�����
Y�|o�y�2֞��q���?��I3
-5���z�:�q#N�D���=S�Dg�����0��⤵8X�Ayv���*��i�<���c��U1�ql���޴�sm���5�!$la����ϕyni�NR�A��n��u�Z�6&Ϸ&�㊎�!֦�
坚@���4��6�Y���aY�`��f�(��n��1!4�cv򉠔<z��Y�g��2�vb�nfi^_��Β������v��4��2�=}��x�L~��D�q5[�Ѥy��|��>�F�Ris\m��E�FO�����^��y������wya�l�� ��<��FklP2��ū����F=Y�z2�&~�W���s;{��J�����r�w&ǖV����R'�nJ��KO$�f��2���!�"���-m�'�]�8�)P��(/i�U�ҳ�'����a>Zl�"�d���_��;��(4�_ZP���i�Gؼ0��׼�i���I�\j~���V�&�����`��R���w�Ǵ�m�@���4�����/�4�-��1済��DK�w$s^ǾG�IL��"�.��<�D���v�57�=�g��K�g�(�RI#y(��*���V���y%�gaV�� �~#W��O��>��D*��*-�QK��V!��>�[^�oh��ĴJ��ZB��ם�!�z'}�Q����g�'r�:�_L�8�8-������پ��������.⋣���v���������bw�7�2ܩ��:���^V%�E4�8b�D���j������J�p���U>%�q�J8�Ѐ�4i���LQ�A{��V1���Q �>=5��)(?�{����n�/���j �a�����-�w��t�\�[3��Y���Z��'�C'Ӽ���_���;�m�4e�fEЖ�Ln�b]���ϒՠ:���n��V�S;���GNR/��-=ӏ����OI�3D�E_ğ�����!���6��W�[8C:Q���O	�&�<K݊;=����]R�]����>@;�7�k�tr֚k���w>��*�����̶�u<�B��#����ϟ� 0k
�         c   x�]M��0��]��NB.��t��P��}�����2���t��X�%��&���u�ܮ{�7��'R�Q����j4')�C��l��ie������         �   x�M�M�@�u{
. ����fL3Mf� �D^ˋ���M��(Ar����㐰��'��a:-6 78`���U�����Q��'D#K&���E*~��U���M���K�61>,�T�(�H�~��Ej��R��ܸ�ĭv����3�            x��\]��(|�S��<l�.�'���cS\F�6ծob"[]ٶA��ܿ���H�y�����|�S(���)��\<?�Ώ��������_j��S��:5�k�ibk�|�ךD�Z�gO�a�����������:
K�$���'ɗ�UZ�󶎡�"Y��TB��y=��Z�!�q�q���B�r��^t3�.�_�2ҤG:nR�b}���c�RaH�(�*���9!���!ư��jk�T��]��AèdIu}e�J-S��VJ��U:���)��B9I�B_1��%U�����7�g�5��	}Ń��*-ג����HJ�tB_1��3��_� �-��`���]B5[;4�t���	}K���$�D[�[q�ؔ��I~}���ƌ�.�y��O��;�d}��f�K�Q#B0fc\�5���eG�C�Į��bY�z��lYWo!�ٱYM(d�Bpű]\S�-���,�Uj[�A�Ӟ�{��Q�z�˸��b��a�L[nv�6G�V�Bp���A�P[([ju�N�1�[ns��Peʴ�>bѧ�U��,��^��z���N[�˒KF3J�Xz[.v`�zg�Bp1�����O��+.�����mz�|��#LF6�P����(��EY�����}�����q˱�X/�k^���.�9".��Zkf
sb�tBp�˷9���-W��Ջ*�7}��V'7+�J�[ns¿�o�j��=�i~St��d�D�h �8�*��E:!��d�#x�1��t��J'��,se+�-W\Y�9P����[\�v~k=|)]/:�J'w9-]�#U+l�M�S���LQ/�\Y��`���o��x�b�&��9�-�vz�%W��m�H�ϛj�T8�._ �]YT����;�&Y�cq^�'7�r[�p������{��0���j����^�B������b�s��Ne��<-#�<��#$��3�+O�oy�&���B�s����X�B��/@���'4,�\��M��*��[\Z�!�}�=B�k;T)��^��M�tB�����`*0�W����0���UBZ��.'˳B�n�_H�YƝ7.�^��ꦹa��W
i�a]��J�ҌK[!���*=��{'��&>m��~m�ْ̏O6��ª�7U�+m�܍�[nˎ��d֌A�:�C^�b��o�GDGd�	;�p3)u��1�Nl�R�	i-Z�bG�)���A�#�UͮعE���b��[r~���K�B\���l���D�B�@��u`H������qƾF\��m���
m!���u���)l!�X�f��s(u�F�uͪ��P_k���j]������W���rN�#��f3k��-��Fזq�����z�	�5�T��6x�B-��	�e�d�n(��������٨o�z���ͮ�9��X�\��U�!n!�X�a]L	�2m�?"�`7����B�'8��tB�q#��)��� ��[a�d\��R�B��>��_�� [�L^0�� JaA�h�[bc��3���曫:����6�8Ì��c��Ys���^���~`�|��F�d�|���5�d�3��,����u�ۮ(�[����j�WJ½b���g���pa����g��݁�=f�H'�tX3�.�W�B�uFnV��8Ɗ�6��tB��:�@��ڶW��Z��x$��3+Ն����NwX���5I�� S�j�+�JZ����N�p�m�B�����NG�-�d���oƖ-�DxX�!%V?|A�$���w�m�'j����X>W�v�,��	AƏk���t�J]}G&-wg�Ae�B��c�?xϒ�"�3��M鄸mh+�@1@#K�B�b*`�R=���1k�Nb�f;�U:!l�7W%X�gmGϼ��g(H��P#j�q��^^W�>�Y>Ç�c�e�ݟe�-Y��ך��Z�� ���f{����C5|2���i��,�"Bz�b���^�v�J|;��ķʩ�C�>+g�j��[���_�NM�J���5�r�nР����G�2��&;�#�a��vެꩿ<< ���I�@����ʚ������[�\p���0�)#�H��zO�T��^GR��ȅ��	q��z9U=���!�(���ָ2��
��̟���j�N%Ѷ�[t����0�#?p�N���6���_o��v�a	�$�t8�?@�6����KRx����S�tB�f�����,���Ġphc�ӌ6�U:!nZ�����Aw����ǟ�[��{/�>p="ͫtB�1o򲅈�*G���]�~=B��@��F������	K�K3�$s� �x��d�gA�o&�L�(��������f��\�5h9$��+�S�p̜i�C�E҆ɯsYm+m�/���M�qw��Bܒg��N�*�M9J�<�OdX��v�ң�G�g[�xƬZ�u�ERY�zҙk?43��#40�TLSM�/��/5�G�F�f���*�d�Y�;,��<�� A�h�D��IZ¢ �0�;�R٬e)��An�L�2�%)���zm�#���:���H׬e8?[�vB��d���ɵ�ڦV�j��:���Ѿ���2VE�KYYrK[29������-�eٞt[6Ư\hzy#��?�������U0<�Üg���N菮�����f���3�o����=ŷ./n��Fd��=Sx!ط��WG�:�Z]ml��Z^�z�+d��p�B[���H�������!��	A���9u=
 �l!��l{%ˑ�@�a�Lw4�6��3���D�v�[��� kM��sQ�G�d�B7-ip�{.�dX^�]��!T�B�}fĶ:���R�����tBXh��6v�=�I!2֪}���W����Io!Ș�{	������h�/Q���1��X�/��v��Z��ˀ�y����:�t������ߡg�7�l�\S� c���ҩq�B�1Ϧ�`N%�-�n_�̧{� c�L�t-�-Q��k��ے����;�um~�AՃ#3qϭ@?�	qe=Yb�$��465Y�!�@l7�e[�H��[2�䳴yHh���í�yah��_�3�Fk���uA�yMc���H�Ơ��	�Nq,v�<�~?=��.R�|���Ց̣�
�sz�S:!�!=,e�;�5��F���U:!n?�Y��B�z5�n]�C���p�Ʃ�}���a9�$���7~+���*l,��PL	��(O]����6�T]42���F_���h�ͶP�È[�Sk��.��#���Ͷj*���+t�.�<t�#�G^��̘�eh��hz?�z=�J��F"Z�s]�ⶱ�m6���ӛ��G�UI��9pR�f��I�]I��	�۰k�L��"�5D�S:!�[�sZ>�4=A�u�oN/��Aƪ2V5p���Y
�D�U: �xf�>��3z]�zM�6��T4���^U�֪���~$o)��[G
*Ck��dx`��3�B����}�a�hɌ�b�bu�6dL���*�oT�N�7*7Gj�`��1)����&lF����4B�yt@����`b�Ii�,E��A�3�Kf��
�-��h��,�zM�R�mU)��5Od(I�{�5��O7��)��k���3pS��A#�Q�*�dhX��}~!��0[� �o��9��m�tB��7�;�6�~������\Zi�'��,+����8��T��*��ñtTMWY�]庅 Cê=߯��ҷ�VsΫtB�� ��0�ډq(������N24l�+j�h��������G:!�аj{[��6�����	A���>�1�V�dhXmv��h�:^�P�B��	�.VZ�����ٹ�ЏW� C�nm��ޠM�t����)e�y�/�3g	���%�O>�	=vG�d�j�dA���[�tL�[�ZrY�z-cS�G>b콑�Ы�A�v6`4��89x�N24���PF�X�dhX��%������56x��L�K�c��y� �K�+b��*���8�N�#��z��#�d�޶??���9�F���N�-J"�8ǣ�<�qr�=�fs�	jDcs   ��cZ��/��k�}�U:!�8,�|��8�sC=��S��op�3�[�5D�`���b_J�d}���K�^ӕ�}��H'��q��d ���L��8^sJ'Y�^��l� z��W� C��[��[g�˦����[�����6l6Ƿ�>f��kt�=��MߵR�^�l��*��B�1����R�.�����tB�1϶�f~��'2�^e��Z'k�x7�ǶB]���y^_����a�neoA����mX�W�p�(l!�а�N�l��#S҄(���#Y_�c�dz4e�\y�>�����ѐ���^���V'K》�*��������MuT�v�D"6�D�tB\Y�dvUϘE���>�{�ؾ�!�P�B��Wŭ��Nb��<C���q�i���S���d{�Q*Ͳ��:��&L@��S�B�6�y)]�iI���$�"����&\��l���6O�?@�Q'5�eA�7W��dX3R���6�E:^���Ówl���ߵ�zm: 1�N=6�F[�SY�?��z���ZL�$�wdhص�%���p��~C�*��O��i�N�d{H��-�Z��۫��p��D+��	A�*�� ����2����͋��:�g��(KjY���m���3=�]z_ <`ᙌ���N�O�L�
]ʶ<޴^�l����'5�^�1��#=�A�*��nE-�h��^_��k�@5�~>���2U�9洅 C��c9g�7d��9)�����A0�2[Oi��ಘ>��^k��(��<�?[�V� C�n���NC��K�e(�pױ}_����w<@��_�U9���^Oc�ܪRߒ�_�<G��<N>>A��_�v'�ue��=u(�� C��rE��
��oOd�W���<���A�~���[�t���O��iA��U�4l�G24�X/��@����+lI�g���V\��Q9�-�c��6Z9(���)�dhX1���$yA����v��aվ�NX�[�5/�k����xpd랠O0�|-W��o|�E�\�����z���b�]         {   x�U�K
�0D��)t��Ŀ�E+�Bl�M6����z��݄��<�L�B����7d�ʴYt�:߳o1�fߏQ�"�qҘ��r
Ԋ` :5��u�	Uyja��B�<�t	w;j�L0�{F�2�"�          x  x���]�� ���]Za����T����cǦM(MTm�T�|����I�n�ү]���T����r�|�ĥ���F�B���N��ݒa�c6�_l�8&�Hb�S�j��"Tg8F@eP��j$B��[�Ąt�������/�9��X�Pn����X��S�b~���r�[�Υ ��CA�b�
Z1����K���'|�̙�z�s�D�7Fz�ݨRkƘ�Um3"�N17�9y�b�1$�O�V�����g��A�u���v��y����]���,]�s�&�8D�%f!�c�v���d���&:�otv����	]�.v-����t��h��fl����������pw��o�߇��1�{!�\�1      !   �	  x��ZIr�6]S��ԅyX*rW[U�X�W�MV>�/�?`"�hR�������^/^.J/���"ӣ����<?�}����Oקo��oһE��R�ˢݢi<�9�(@T,�_��u����%��e���CF_-��t,�,�����$�M���DOib�4�S��)M��&aJ�8�I3�D9�ITS��)M̔&|��X�ř�����_ޞ�<�k^��@�0!c.}L�X��)��d�����X�H��T]�n�X���?u@[7��ba�[�衚ȧc���������l�
��G���������2���([�Ϻ��*e]o��aZ�yW{�Rb`�9dD�(U@��Og�u�)�L}]�V�m�~�r#z���T
,w��0*f��Ң��d�
=��J�XT�{.1��[�$�����*����|u1a@��*tc(�1b@!��[�L�n��$���\.0�|{
��(g#�l�3S@Ll)>=~����o/߿�Y�x��
��^�x
(��r�gf�������������7��#��� ���J��SD����/P!����`]q�"��|0�<ω\6ʸ�ޅ�F����d��=�)�!�%<�T
`.�g��[㛵�㵆F�<�+$��2�DhY���(�A�h��P���`]�(S���������=�.|�������N1mLsJ�<:�@� �!�\sS����k�t��@�(zL��2{4)~5$�Ir����IO$Y�h>ppMX	5�L�b��Hbq�F�4�n!\��$�����C�
�ו�Y�c*	��0[�o��@���$����S�&q
���*9Z�]	�cWtY��	����\���^��ᒄ?��U)�0�;���t]Ƙ�i���#�2���~��p�!�= [�Pǎ��`e��<Q�,�RU��:Vb���ˌّ�@���_)�* �ْNt.*�F00C��8����A��2��H�p��u�<�(H��4�QeX�M�B���p�ZЦ �BG T��3�"�ŷ��YŚ���_��q�ƫ�F&���!iC�؃R��?*
�����u�\�������"5�;���TTj�p��@^�,��TaS�A���
Nmʨ�pD�;Z+��#ș@�\x�H���d?3'���s�@����$7��i��R�_CRh��Y���168(nY�;R����7��e�&k��)�y�A��$�7i�O��RMsq�K�'_�S���I+Ns����s����G7���Q��dPwՊuUW�X`����F̲i�)ϖ>Ff*u�c�DŽ���V�8�]Χ��sb�@�F���VgXL��,�}\8$ac�!���(�9�Msn��£���88^��x,I)�9����yR�(K(�(��pfP9�����L�� N��ƫHc�k:z��e�(�M�&8i �ۭ�*��<���p���e0T"翱�G���wLڅb���~_
c!HY,>�67�TN��}Ф3�Ԡ4�e�"���J�0,�q��T�n�SSܰԘd�ă�s���Q9Ɲ'�n6��H��;�Kq0(��Y�6]�˵�)�.ƞ4�K��ti�����x�f4�O�}��nT��+��>e�Jr'�@�G7�6G�M��dK�%ZP:͚gYppkQخ����,d��*0b�F�4�@�N�����K��mm/��tӵ��`�t�Hc[���Y���m���@<H�g]��l��[ͱ��v���� Ч�"�z{$���Zv2튯̱9Alx��+�0�"��n/��}�C�\�=Y[4�O$����W�onf��]�K$���Sā>��RR�
��#Y��;�;�I�
��h�Uw��	jo��[�]p�O��iP�O2��s�5k�d��8aw�7��9I��1@ɀi:� ߰�x���e�̆C���e��K�bol��9>M|���$Fq����~w��,�9[jkQ�i~���S@�4��qY)C�=F���\�F|fI�"�0,�&i��X&S3��S�4~��m�W+�f�B���f.�nUs�~��M#�#9�T��E�<X)�$x·��.��&i�l#�~W��n#�Zc��n����hd�B[���[����U��SR7�=�Hd|f�b�X�BYh�"G�\��u�+ndĜr�ĂZ;<��+�L�� GG�d�Z�m��nV�2�Rb.�$=�t=��n$��/j��c6?�Y����yI��B��š5p�����%�<��;Q!n��x�S�K�&%�RC��Hm���M��lAT��w��=,lԫ*3�oaF�Ms�j��I�,�(��P4�b_ыz�9GcӒt�� ������������GYЯx&ӝ�l�6U�wb�(�szxx��|�      "      x������ � �      #   X   x�3�����2�426�!NG?G�PgOG_�  �������e�idf`hjbi`ab������������V�������� W�z     