--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: benchmarking_clima; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_clima (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    ano character varying(100) NOT NULL,
    janeiro double precision,
    fevereiro double precision,
    marco double precision,
    abril double precision,
    maio double precision,
    junho double precision,
    julho double precision,
    agosto double precision,
    setembro double precision,
    outubro double precision,
    novembro double precision,
    dezembro double precision,
    janeiro2 double precision,
    fevereiro2 double precision,
    marco2 double precision,
    abril2 double precision,
    maio2 double precision,
    junho2 double precision,
    julho2 double precision,
    agosto2 double precision,
    setembro2 double precision,
    outubro2 double precision,
    novembro2 double precision,
    dezembro2 double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_clima OWNER TO postgres;

--
-- Name: benchmarking_clima_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_clima_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_clima_id_seq OWNER TO postgres;

--
-- Name: benchmarking_clima_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_clima_id_seq OWNED BY benchmarking_clima.id;


--
-- Name: benchmarking_confinamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_confinamento (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    categoria character varying(200) NOT NULL,
    quantidade integer NOT NULL,
    data_entrada timestamp(0) without time zone NOT NULL,
    data_saida timestamp(0) without time zone NOT NULL,
    peso_entrada double precision NOT NULL,
    peso_saida double precision NOT NULL,
    custo_diaria double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_confinamento OWNER TO postgres;

--
-- Name: benchmarking_confinamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_confinamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_confinamento_id_seq OWNER TO postgres;

--
-- Name: benchmarking_confinamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_confinamento_id_seq OWNED BY benchmarking_confinamento.id;


--
-- Name: benchmarking_controle_despesa_volumoso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_controle_despesa_volumoso (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    descricao_volumoso smallint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint DEFAULT '0'::smallint NOT NULL,
    insumo_servico_utilizado character varying(200) NOT NULL,
    total_gasto double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_controle_despesa_volumoso OWNER TO postgres;

--
-- Name: benchmarking_controle_despesa_volumoso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_controle_despesa_volumoso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_controle_despesa_volumoso_id_seq OWNER TO postgres;

--
-- Name: benchmarking_controle_despesa_volumoso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_controle_despesa_volumoso_id_seq OWNED BY benchmarking_controle_despesa_volumoso.id;


--
-- Name: benchmarking_controle_producao_volumoso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_controle_producao_volumoso (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    descricao_volumoso smallint NOT NULL,
    total_produzido double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_controle_producao_volumoso OWNER TO postgres;

--
-- Name: benchmarking_controle_producao_volumoso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_controle_producao_volumoso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_controle_producao_volumoso_id_seq OWNER TO postgres;

--
-- Name: benchmarking_controle_producao_volumoso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_controle_producao_volumoso_id_seq OWNED BY benchmarking_controle_producao_volumoso.id;


--
-- Name: benchmarking_descricao_volumoso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_descricao_volumoso (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    descricao character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_descricao_volumoso OWNER TO postgres;

--
-- Name: benchmarking_descricao_volumoso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_descricao_volumoso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_descricao_volumoso_id_seq OWNER TO postgres;

--
-- Name: benchmarking_descricao_volumoso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_descricao_volumoso_id_seq OWNED BY benchmarking_descricao_volumoso.id;


--
-- Name: benchmarking_desmame; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_desmame (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    quantidade integer NOT NULL,
    categoria smallint NOT NULL,
    carimbo_nascimento timestamp(0) without time zone NOT NULL,
    peso double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_desmame OWNER TO postgres;

--
-- Name: benchmarking_desmame_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_desmame_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_desmame_id_seq OWNER TO postgres;

--
-- Name: benchmarking_desmame_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_desmame_id_seq OWNED BY benchmarking_desmame.id;


--
-- Name: benchmarking_equipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_equipe (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    frente_trabalho smallint NOT NULL,
    funcao smallint NOT NULL,
    quantidade integer,
    salario_med_mensal_holerite double precision,
    salario_med_mensal_beneficio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_equipe OWNER TO postgres;

--
-- Name: benchmarking_equipe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_equipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_equipe_id_seq OWNER TO postgres;

--
-- Name: benchmarking_equipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_equipe_id_seq OWNED BY benchmarking_equipe.id;


--
-- Name: benchmarking_estoque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_estoque (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data_inicio_fim smallint NOT NULL,
    insumo character varying(200) NOT NULL,
    quantidade integer NOT NULL,
    valor_total double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_estoque OWNER TO postgres;

--
-- Name: benchmarking_estoque_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_estoque_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_estoque_id_seq OWNER TO postgres;

--
-- Name: benchmarking_estoque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_estoque_id_seq OWNED BY benchmarking_estoque.id;


--
-- Name: benchmarking_estoque_pecuario_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_estoque_pecuario_area (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    categoria smallint NOT NULL,
    quantidade_inicial integer,
    peso_inicial double precision,
    quantidade_jan integer,
    peso_jan double precision,
    quantidade_fev integer,
    peso_fev double precision,
    quantidade_mar integer,
    peso_mar double precision,
    quantidade_abr integer,
    peso_abr double precision,
    quantidade_mai integer,
    peso_mai double precision,
    quantidade_jun integer,
    peso_jun double precision,
    quantidade_jul integer,
    peso_jul double precision,
    quantidade_ago integer,
    peso_ago double precision,
    quantidade_set integer,
    peso_set double precision,
    quantidade_out integer,
    peso_out double precision,
    quantidade_nov integer,
    peso_nov double precision,
    quantidade_dez integer,
    peso_dez double precision,
    quantidade_jan2 integer,
    peso_jan2 double precision,
    quantidade_fev2 integer,
    peso_fev2 double precision,
    quantidade_mar2 integer,
    peso_mar2 double precision,
    quantidade_abr2 integer,
    peso_abr2 double precision,
    quantidade_mai2 integer,
    peso_mai2 double precision,
    quantidade_jun2 integer,
    peso_jun2 double precision,
    quantidade_jul2 integer,
    peso_jul2 double precision,
    quantidade_ago2 integer,
    peso_ago2 double precision,
    quantidade_set2 integer,
    peso_set2 double precision,
    quantidade_out2 integer,
    peso_out2 double precision,
    quantidade_nov2 integer,
    peso_nov2 double precision,
    quantidade_dez2 integer,
    peso_dez2 double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_estoque_pecuario_area OWNER TO postgres;

--
-- Name: benchmarking_estoque_pecuario_area_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_estoque_pecuario_area_area (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    area smallint NOT NULL,
    area_jan double precision,
    area_fev double precision,
    area_mar double precision,
    area_abr double precision,
    area_mai double precision,
    area_jun double precision,
    area_jul double precision,
    area_ago double precision,
    area_set double precision,
    area_out double precision,
    area_nov double precision,
    area_dez double precision,
    area_jan2 double precision,
    area_fev2 double precision,
    area_mar2 double precision,
    area_abr2 double precision,
    area_mai2 double precision,
    area_jun2 double precision,
    area_jul2 double precision,
    area_ago2 double precision,
    area_set2 double precision,
    area_out2 double precision,
    area_nov2 double precision,
    area_dez2 double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_estoque_pecuario_area_area OWNER TO postgres;

--
-- Name: benchmarking_estoque_pecuario_area_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_estoque_pecuario_area_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_estoque_pecuario_area_area_id_seq OWNER TO postgres;

--
-- Name: benchmarking_estoque_pecuario_area_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_estoque_pecuario_area_area_id_seq OWNED BY benchmarking_estoque_pecuario_area_area.id;


--
-- Name: benchmarking_estoque_pecuario_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_estoque_pecuario_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_estoque_pecuario_area_id_seq OWNER TO postgres;

--
-- Name: benchmarking_estoque_pecuario_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_estoque_pecuario_area_id_seq OWNED BY benchmarking_estoque_pecuario_area.id;


--
-- Name: benchmarking_fazenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_fazenda (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    nome_fazenda character varying(100) NOT NULL,
    formato_processamento smallint NOT NULL,
    qtde_fazenda smallint NOT NULL,
    municipio bigint,
    estado integer NOT NULL,
    regiao integer,
    pais integer NOT NULL,
    agricultura_propria smallint NOT NULL,
    sistema_pecuaria smallint NOT NULL,
    tipo smallint NOT NULL,
    pasto_confinamento smallint NOT NULL,
    area_total double precision NOT NULL,
    valor_terra double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_fazenda OWNER TO postgres;

--
-- Name: benchmarking_fazenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_fazenda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_fazenda_id_seq OWNER TO postgres;

--
-- Name: benchmarking_fazenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_fazenda_id_seq OWNED BY benchmarking_fazenda.id;


--
-- Name: benchmarking_financeiro_despesa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_financeiro_despesa (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    descricao_produto_servico character varying(500) NOT NULL,
    centro_custo smallint NOT NULL,
    valor double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_financeiro_despesa OWNER TO postgres;

--
-- Name: benchmarking_financeiro_despesa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_financeiro_despesa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_financeiro_despesa_id_seq OWNER TO postgres;

--
-- Name: benchmarking_financeiro_despesa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_financeiro_despesa_id_seq OWNED BY benchmarking_financeiro_despesa.id;


--
-- Name: benchmarking_financeiro_receita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_financeiro_receita (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    descricao_produto_servico character varying(500) NOT NULL,
    centro_custo smallint NOT NULL,
    valor double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_financeiro_receita OWNER TO postgres;

--
-- Name: benchmarking_financeiro_receita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_financeiro_receita_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_financeiro_receita_id_seq OWNER TO postgres;

--
-- Name: benchmarking_financeiro_receita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_financeiro_receita_id_seq OWNED BY benchmarking_financeiro_receita.id;


--
-- Name: benchmarking_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_log (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    id_pessoa bigint NOT NULL,
    id_reg bigint NOT NULL,
    op smallint NOT NULL,
    table_code smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_log OWNER TO postgres;

--
-- Name: benchmarking_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_log_id_seq OWNER TO postgres;

--
-- Name: benchmarking_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_log_id_seq OWNED BY benchmarking_log.id;


--
-- Name: benchmarking_maquina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_maquina (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    marca character varying(200) NOT NULL,
    modelo character varying(200) NOT NULL,
    valor_novo double precision NOT NULL,
    quantidade integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_maquina OWNER TO postgres;

--
-- Name: benchmarking_maquina_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_maquina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_maquina_id_seq OWNER TO postgres;

--
-- Name: benchmarking_maquina_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_maquina_id_seq OWNED BY benchmarking_maquina.id;


--
-- Name: benchmarking_morte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_morte (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    quantidade integer NOT NULL,
    idade smallint NOT NULL,
    categoria smallint NOT NULL,
    motivo smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_morte OWNER TO postgres;

--
-- Name: benchmarking_morte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_morte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_morte_id_seq OWNER TO postgres;

--
-- Name: benchmarking_morte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_morte_id_seq OWNED BY benchmarking_morte.id;


--
-- Name: benchmarking_mov_entrada_rebanho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_mov_entrada_rebanho (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    compra_transf smallint NOT NULL,
    quantidade integer NOT NULL,
    categoria smallint NOT NULL,
    origem character varying(200) NOT NULL,
    peso_vivo double precision NOT NULL,
    valor_cabeca double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_mov_entrada_rebanho OWNER TO postgres;

--
-- Name: benchmarking_mov_entrada_rebanho_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_mov_entrada_rebanho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_mov_entrada_rebanho_id_seq OWNER TO postgres;

--
-- Name: benchmarking_mov_entrada_rebanho_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_mov_entrada_rebanho_id_seq OWNED BY benchmarking_mov_entrada_rebanho.id;


--
-- Name: benchmarking_mov_saida_rebanho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_mov_saida_rebanho (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    venda_transf smallint NOT NULL,
    quantidade integer NOT NULL,
    categoria smallint NOT NULL,
    destino character varying(200) NOT NULL,
    peso_vivo double precision NOT NULL,
    peso_morto double precision,
    valor_arroba double precision,
    valor_cabeca double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_mov_saida_rebanho OWNER TO postgres;

--
-- Name: benchmarking_mov_saida_rebanho_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_mov_saida_rebanho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_mov_saida_rebanho_id_seq OWNER TO postgres;

--
-- Name: benchmarking_mov_saida_rebanho_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_mov_saida_rebanho_id_seq OWNED BY benchmarking_mov_saida_rebanho.id;


--
-- Name: benchmarking_nascimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_nascimento (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    data timestamp(0) without time zone NOT NULL,
    periodo smallint NOT NULL,
    quantidade integer NOT NULL,
    categoria character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_nascimento OWNER TO postgres;

--
-- Name: benchmarking_nascimento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_nascimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_nascimento_id_seq OWNER TO postgres;

--
-- Name: benchmarking_nascimento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_nascimento_id_seq OWNED BY benchmarking_nascimento.id;


--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_patrimonio_estoque_area_valor_terra (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    area_total double precision NOT NULL,
    valor_terra double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_patrimonio_estoque_area_valor_terra OWNER TO postgres;

--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_patrimonio_estoque_area_valor_terra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_patrimonio_estoque_area_valor_terra_id_seq OWNER TO postgres;

--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_patrimonio_estoque_area_valor_terra_id_seq OWNED BY benchmarking_patrimonio_estoque_area_valor_terra.id;


--
-- Name: benchmarking_reproducao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE benchmarking_reproducao (
    id bigint NOT NULL,
    safra_id bigint NOT NULL,
    fazenda_id bigint NOT NULL,
    cli_codigo bigint NOT NULL,
    code smallint NOT NULL,
    categoria smallint NOT NULL,
    quantidade_ano1 integer,
    quantidade_ano2 integer,
    referencia smallint NOT NULL,
    peso_ano1 double precision,
    peso_ano2 double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE benchmarking_reproducao OWNER TO postgres;

--
-- Name: benchmarking_reproducao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE benchmarking_reproducao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benchmarking_reproducao_id_seq OWNER TO postgres;

--
-- Name: benchmarking_reproducao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE benchmarking_reproducao_id_seq OWNED BY benchmarking_reproducao.id;


--
-- Name: cidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cidades (
    cod_estados integer,
    cod_cidades integer NOT NULL,
    nome character varying(72),
    cep character varying(8)
);


ALTER TABLE cidades OWNER TO postgres;

--
-- Name: estados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estados (
    cod_regiao integer,
    cod_estados integer NOT NULL,
    sigla character varying(2),
    nome character varying(72)
);


ALTER TABLE estados OWNER TO postgres;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pais (
    cod_pais integer NOT NULL,
    nome character varying(72)
);


ALTER TABLE pais OWNER TO postgres;

--
-- Name: regiao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE regiao (
    cod_pais integer,
    cod_regiao integer NOT NULL,
    nome character varying(72)
);


ALTER TABLE regiao OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: benchmarking_clima id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_clima ALTER COLUMN id SET DEFAULT nextval('benchmarking_clima_id_seq'::regclass);


--
-- Name: benchmarking_confinamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_confinamento ALTER COLUMN id SET DEFAULT nextval('benchmarking_confinamento_id_seq'::regclass);


--
-- Name: benchmarking_controle_despesa_volumoso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_despesa_volumoso ALTER COLUMN id SET DEFAULT nextval('benchmarking_controle_despesa_volumoso_id_seq'::regclass);


--
-- Name: benchmarking_controle_producao_volumoso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_producao_volumoso ALTER COLUMN id SET DEFAULT nextval('benchmarking_controle_producao_volumoso_id_seq'::regclass);


--
-- Name: benchmarking_descricao_volumoso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_descricao_volumoso ALTER COLUMN id SET DEFAULT nextval('benchmarking_descricao_volumoso_id_seq'::regclass);


--
-- Name: benchmarking_desmame id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_desmame ALTER COLUMN id SET DEFAULT nextval('benchmarking_desmame_id_seq'::regclass);


--
-- Name: benchmarking_equipe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_equipe ALTER COLUMN id SET DEFAULT nextval('benchmarking_equipe_id_seq'::regclass);


--
-- Name: benchmarking_estoque id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque ALTER COLUMN id SET DEFAULT nextval('benchmarking_estoque_id_seq'::regclass);


--
-- Name: benchmarking_estoque_pecuario_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area ALTER COLUMN id SET DEFAULT nextval('benchmarking_estoque_pecuario_area_id_seq'::regclass);


--
-- Name: benchmarking_estoque_pecuario_area_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area_area ALTER COLUMN id SET DEFAULT nextval('benchmarking_estoque_pecuario_area_area_id_seq'::regclass);


--
-- Name: benchmarking_fazenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_fazenda ALTER COLUMN id SET DEFAULT nextval('benchmarking_fazenda_id_seq'::regclass);


--
-- Name: benchmarking_financeiro_despesa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_despesa ALTER COLUMN id SET DEFAULT nextval('benchmarking_financeiro_despesa_id_seq'::regclass);


--
-- Name: benchmarking_financeiro_receita id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_receita ALTER COLUMN id SET DEFAULT nextval('benchmarking_financeiro_receita_id_seq'::regclass);


--
-- Name: benchmarking_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_log ALTER COLUMN id SET DEFAULT nextval('benchmarking_log_id_seq'::regclass);


--
-- Name: benchmarking_maquina id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_maquina ALTER COLUMN id SET DEFAULT nextval('benchmarking_maquina_id_seq'::regclass);


--
-- Name: benchmarking_morte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_morte ALTER COLUMN id SET DEFAULT nextval('benchmarking_morte_id_seq'::regclass);


--
-- Name: benchmarking_mov_entrada_rebanho id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_entrada_rebanho ALTER COLUMN id SET DEFAULT nextval('benchmarking_mov_entrada_rebanho_id_seq'::regclass);


--
-- Name: benchmarking_mov_saida_rebanho id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_saida_rebanho ALTER COLUMN id SET DEFAULT nextval('benchmarking_mov_saida_rebanho_id_seq'::regclass);


--
-- Name: benchmarking_nascimento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_nascimento ALTER COLUMN id SET DEFAULT nextval('benchmarking_nascimento_id_seq'::regclass);


--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_patrimonio_estoque_area_valor_terra ALTER COLUMN id SET DEFAULT nextval('benchmarking_patrimonio_estoque_area_valor_terra_id_seq'::regclass);


--
-- Name: benchmarking_reproducao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_reproducao ALTER COLUMN id SET DEFAULT nextval('benchmarking_reproducao_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: benchmarking_clima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_clima (id, safra_id, fazenda_id, cli_codigo, ano, janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro, janeiro2, fevereiro2, marco2, abril2, maio2, junho2, julho2, agosto2, setembro2, outubro2, novembro2, dezembro2, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	2015/2016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:59:58	2018-02-08 23:59:58	\N
2	2	3	219	2015/2016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-10 17:13:53	2018-02-10 17:13:53	\N
\.


--
-- Name: benchmarking_clima_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_clima_id_seq', 2, true);


--
-- Data for Name: benchmarking_confinamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_confinamento (id, safra_id, fazenda_id, cli_codigo, categoria, quantidade, data_entrada, data_saida, peso_entrada, peso_saida, custo_diaria, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	3	3	2018-02-05 02:00:00	2018-02-22 03:00:00	12	65	7	2018-02-10 15:33:52	2018-02-10 15:33:52	\N
\.


--
-- Name: benchmarking_confinamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_confinamento_id_seq', 1, true);


--
-- Data for Name: benchmarking_controle_despesa_volumoso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_controle_despesa_volumoso (id, safra_id, fazenda_id, cli_codigo, descricao_volumoso, data, periodo, insumo_servico_utilizado, total_gasto, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_controle_despesa_volumoso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_controle_despesa_volumoso_id_seq', 1, false);


--
-- Data for Name: benchmarking_controle_producao_volumoso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_controle_producao_volumoso (id, safra_id, fazenda_id, cli_codigo, descricao_volumoso, total_produzido, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_controle_producao_volumoso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_controle_producao_volumoso_id_seq', 1, false);


--
-- Data for Name: benchmarking_descricao_volumoso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_descricao_volumoso (id, safra_id, fazenda_id, cli_codigo, descricao, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_descricao_volumoso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_descricao_volumoso_id_seq', 1, false);


--
-- Data for Name: benchmarking_desmame; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_desmame (id, safra_id, fazenda_id, cli_codigo, data, periodo, quantidade, categoria, carimbo_nascimento, peso, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_desmame_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_desmame_id_seq', 1, false);


--
-- Data for Name: benchmarking_equipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_equipe (id, safra_id, fazenda_id, cli_codigo, frente_trabalho, funcao, quantidade, salario_med_mensal_holerite, salario_med_mensal_beneficio, created_at, updated_at, deleted_at) FROM stdin;
2	2	3	219	1	2	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
3	2	3	219	1	3	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
4	2	3	219	1	4	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
5	2	3	219	1	5	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
6	2	3	219	2	6	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
7	2	3	219	2	9	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
8	2	3	219	2	10	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
9	2	3	219	2	11	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
10	2	3	219	2	12	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
11	2	3	219	2	13	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
12	2	3	219	2	14	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
13	2	3	219	3	7	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
14	2	3	219	3	8	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
15	2	3	219	4	15	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
16	2	3	219	4	16	\N	\N	\N	2018-02-08 17:25:07	2018-02-08 17:25:07	\N
17	2	3	219	4	17	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
18	2	3	219	4	18	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
19	2	3	219	4	19	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
20	2	3	219	4	20	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
21	2	3	219	5	21	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
22	2	3	219	5	22	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
23	2	3	219	5	23	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
24	2	3	219	5	24	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
25	2	3	219	5	25	\N	\N	\N	2018-02-08 17:25:08	2018-02-08 17:25:08	\N
1	2	3	219	1	1	2	1000	1200	2018-02-08 17:25:07	2018-02-08 17:25:29	\N
27	2	2	219	1	2	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
28	2	2	219	1	3	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
29	2	2	219	1	4	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
30	2	2	219	1	5	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
32	2	2	219	2	9	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
33	2	2	219	2	10	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
34	2	2	219	2	11	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
35	2	2	219	2	12	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
36	2	2	219	2	13	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
37	2	2	219	2	14	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
38	2	2	219	3	7	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
39	2	2	219	3	8	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
40	2	2	219	4	15	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
41	2	2	219	4	16	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
42	2	2	219	4	17	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
43	2	2	219	4	18	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
44	2	2	219	4	19	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
45	2	2	219	4	20	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
46	2	2	219	5	21	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
47	2	2	219	5	22	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
48	2	2	219	5	23	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
49	2	2	219	5	24	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
50	2	2	219	5	25	\N	\N	\N	2018-02-08 17:26:04	2018-02-08 17:26:04	\N
26	2	2	219	1	1	1	1000	1200	2018-02-08 17:26:03	2018-02-10 15:54:38	\N
31	2	2	219	2	6	1	2000	2400	2018-02-08 17:26:04	2018-02-10 15:55:09	\N
\.


--
-- Name: benchmarking_equipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_equipe_id_seq', 50, true);


--
-- Data for Name: benchmarking_estoque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_estoque (id, safra_id, fazenda_id, cli_codigo, data_inicio_fim, insumo, quantidade, valor_total, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_estoque_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_estoque_id_seq', 1, false);


--
-- Data for Name: benchmarking_estoque_pecuario_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_estoque_pecuario_area (id, safra_id, fazenda_id, cli_codigo, categoria, quantidade_inicial, peso_inicial, quantidade_jan, peso_jan, quantidade_fev, peso_fev, quantidade_mar, peso_mar, quantidade_abr, peso_abr, quantidade_mai, peso_mai, quantidade_jun, peso_jun, quantidade_jul, peso_jul, quantidade_ago, peso_ago, quantidade_set, peso_set, quantidade_out, peso_out, quantidade_nov, peso_nov, quantidade_dez, peso_dez, quantidade_jan2, peso_jan2, quantidade_fev2, peso_fev2, quantidade_mar2, peso_mar2, quantidade_abr2, peso_abr2, quantidade_mai2, peso_mai2, quantidade_jun2, peso_jun2, quantidade_jul2, peso_jul2, quantidade_ago2, peso_ago2, quantidade_set2, peso_set2, quantidade_out2, peso_out2, quantidade_nov2, peso_nov2, quantidade_dez2, peso_dez2, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
2	2	2	219	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
3	2	2	219	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
5	2	2	219	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
6	2	2	219	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
7	2	2	219	7	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
8	2	2	219	8	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
9	2	2	219	9	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
10	2	2	219	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
11	2	2	219	11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
12	2	2	219	12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
13	2	2	219	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-08 23:07:11	\N
4	2	2	219	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20	200	19	180	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-08 23:07:11	2018-02-10 16:01:12	\N
14	2	3	219	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:56	2018-02-14 02:17:56	\N
15	2	3	219	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
16	2	3	219	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
17	2	3	219	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
18	2	3	219	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
19	2	3	219	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
20	2	3	219	7	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
21	2	3	219	8	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
22	2	3	219	9	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
23	2	3	219	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
24	2	3	219	11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
25	2	3	219	12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
26	2	3	219	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-14 02:17:57	2018-02-14 02:17:57	\N
\.


--
-- Data for Name: benchmarking_estoque_pecuario_area_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_estoque_pecuario_area_area (id, safra_id, fazenda_id, cli_codigo, area, area_jan, area_fev, area_mar, area_abr, area_mai, area_jun, area_jul, area_ago, area_set, area_out, area_nov, area_dez, area_jan2, area_fev2, area_mar2, area_abr2, area_mai2, area_jun2, area_jul2, area_ago2, area_set2, area_out2, area_nov2, area_dez2, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-10 16:04:14	2018-02-10 16:04:14	\N
2	2	2	219	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-10 16:04:14	2018-02-10 16:04:14	\N
3	2	2	219	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2018-02-10 16:04:14	2018-02-10 16:04:14	\N
\.


--
-- Name: benchmarking_estoque_pecuario_area_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_estoque_pecuario_area_area_id_seq', 3, true);


--
-- Name: benchmarking_estoque_pecuario_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_estoque_pecuario_area_id_seq', 26, true);


--
-- Data for Name: benchmarking_fazenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_fazenda (id, safra_id, cli_codigo, nome_fazenda, formato_processamento, qtde_fazenda, municipio, estado, regiao, pais, agricultura_propria, sistema_pecuaria, tipo, pasto_confinamento, area_total, valor_terra, created_at, updated_at, deleted_at) FROM stdin;
1	5	219	quiproco	1	1	4523	415	1	1	3	5	2	1	2	3	2018-02-08 17:06:00	2018-02-08 17:06:00	\N
2	2	219	Rancho Fundo	212	25	192	304	1	21	2	6	2	1	20000	1000	2018-02-08 17:18:22	2018-02-08 17:18:22	\N
3	2	219	Fio de Cabelo	1	1	23	2	2	1	2	5	1	2	25	50	2018-02-08 17:20:03	2018-02-08 17:20:03	\N
\.


--
-- Name: benchmarking_fazenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_fazenda_id_seq', 3, true);


--
-- Data for Name: benchmarking_financeiro_despesa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_financeiro_despesa (id, safra_id, fazenda_id, cli_codigo, data, periodo, descricao_produto_servico, centro_custo, valor, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_financeiro_despesa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_financeiro_despesa_id_seq', 1, false);


--
-- Data for Name: benchmarking_financeiro_receita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_financeiro_receita (id, safra_id, fazenda_id, cli_codigo, data, periodo, descricao_produto_servico, centro_custo, valor, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	2015-07-13 03:00:00	0	Treinamento	19	1200	2018-02-08 23:07:02	2018-02-08 23:07:02	\N
\.


--
-- Name: benchmarking_financeiro_receita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_financeiro_receita_id_seq', 1, true);


--
-- Data for Name: benchmarking_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_log (id, safra_id, fazenda_id, cli_codigo, id_pessoa, id_reg, op, table_code, created_at, updated_at) FROM stdin;
\.


--
-- Name: benchmarking_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_log_id_seq', 1, false);


--
-- Data for Name: benchmarking_maquina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_maquina (id, safra_id, fazenda_id, cli_codigo, marca, modelo, valor_novo, quantidade, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_maquina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_maquina_id_seq', 1, false);


--
-- Data for Name: benchmarking_morte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_morte (id, safra_id, fazenda_id, cli_codigo, data, periodo, quantidade, idade, categoria, motivo, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_morte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_morte_id_seq', 1, false);


--
-- Data for Name: benchmarking_mov_entrada_rebanho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_mov_entrada_rebanho (id, safra_id, fazenda_id, cli_codigo, data, periodo, compra_transf, quantidade, categoria, origem, peso_vivo, valor_cabeca, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	2015-07-08 03:00:00	0	1	12	10	Serra Nostra	340	250	2018-02-10 16:55:44	2018-02-10 16:55:44	\N
\.


--
-- Name: benchmarking_mov_entrada_rebanho_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_mov_entrada_rebanho_id_seq', 1, true);


--
-- Data for Name: benchmarking_mov_saida_rebanho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_mov_saida_rebanho (id, safra_id, fazenda_id, cli_codigo, data, periodo, venda_transf, quantidade, categoria, destino, peso_vivo, peso_morto, valor_arroba, valor_cabeca, created_at, updated_at, deleted_at) FROM stdin;
1	2	2	219	2016-01-16 02:00:00	0	2	3	4	Serra pelada	450	225	146	2190	2018-02-10 16:17:19	2018-02-10 16:18:38	\N
\.


--
-- Name: benchmarking_mov_saida_rebanho_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_mov_saida_rebanho_id_seq', 1, true);


--
-- Data for Name: benchmarking_nascimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_nascimento (id, safra_id, fazenda_id, cli_codigo, data, periodo, quantidade, categoria, created_at, updated_at, deleted_at) FROM stdin;
1	2	3	219	2015-07-01 03:00:00	1	2	2	2018-02-08 17:40:21	2018-02-08 17:40:21	\N
2	2	3	219	2015-10-01 03:00:00	1	5	1	2018-02-08 19:04:48	2018-02-08 19:04:48	\N
3	2	2	219	2015-07-01 03:00:00	0	2	1	2018-02-10 15:30:25	2018-02-10 15:30:25	\N
4	2	2	219	2015-07-02 03:00:00	0	3	2	2018-02-10 15:30:47	2018-02-10 15:30:47	\N
\.


--
-- Name: benchmarking_nascimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_nascimento_id_seq', 4, true);


--
-- Data for Name: benchmarking_patrimonio_estoque_area_valor_terra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_patrimonio_estoque_area_valor_terra (id, safra_id, fazenda_id, cli_codigo, area_total, valor_terra, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_patrimonio_estoque_area_valor_terra_id_seq', 1, false);


--
-- Data for Name: benchmarking_reproducao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY benchmarking_reproducao (id, safra_id, fazenda_id, cli_codigo, code, categoria, quantidade_ano1, quantidade_ano2, referencia, peso_ano1, peso_ano2, created_at, updated_at, deleted_at) FROM stdin;
2	2	2	219	1	2	\N	\N	1	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
4	2	2	219	1	4	\N	\N	1	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
5	2	2	219	1	5	\N	\N	1	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
8	2	2	219	1	8	\N	\N	3	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
9	2	2	219	1	9	\N	\N	3	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
10	2	2	219	1	10	\N	\N	3	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
11	2	2	219	1	11	\N	\N	3	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
13	2	2	219	1	13	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
14	2	2	219	1	14	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
15	2	2	219	1	15	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
16	2	2	219	1	16	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
17	2	2	219	1	17	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
18	2	2	219	1	18	\N	\N	5	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
19	2	2	219	1	19	\N	\N	8	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
20	2	2	219	1	20	\N	\N	8	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
21	2	2	219	1	21	\N	\N	8	\N	\N	2018-02-10 16:55:52	2018-02-10 16:55:52	\N
1	2	2	219	1	1	12	17	1	\N	\N	2018-02-10 16:55:52	2018-02-10 16:59:31	\N
7	2	2	219	1	7	8	\N	3	\N	\N	2018-02-10 16:55:52	2018-02-10 16:59:54	\N
12	2	2	219	1	12	8	0	4	\N	\N	2018-02-10 16:55:52	2018-02-10 16:59:54	\N
3	2	2	219	1	3	5	3	1	\N	\N	2018-02-10 16:55:52	2018-02-10 17:05:08	\N
6	2	2	219	1	6	17	20	2	\N	\N	2018-02-10 16:55:52	2018-02-10 17:05:08	\N
23	2	3	219	1	2	\N	\N	1	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:35	\N
24	2	3	219	1	3	\N	\N	1	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:35	\N
25	2	3	219	1	4	\N	\N	1	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:35	\N
26	2	3	219	1	5	\N	\N	1	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:35	\N
28	2	3	219	1	7	\N	\N	3	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
29	2	3	219	1	8	\N	\N	3	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
30	2	3	219	1	9	\N	\N	3	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
31	2	3	219	1	10	\N	\N	3	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
32	2	3	219	1	11	\N	\N	3	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
33	2	3	219	1	12	\N	\N	4	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
34	2	3	219	1	13	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
35	2	3	219	1	14	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
36	2	3	219	1	15	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
37	2	3	219	1	16	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
38	2	3	219	1	17	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
39	2	3	219	1	18	\N	\N	5	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
40	2	3	219	1	19	\N	\N	8	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
41	2	3	219	1	20	\N	\N	8	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
42	2	3	219	1	21	\N	\N	8	\N	\N	2018-02-10 17:09:36	2018-02-10 17:09:36	\N
22	2	3	219	1	1	31	\N	1	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:46	\N
27	2	3	219	1	6	31	0	2	\N	\N	2018-02-10 17:09:35	2018-02-10 17:09:46	\N
43	2	3	219	2	22	\N	\N	6	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
44	2	3	219	2	23	\N	\N	6	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
45	2	3	219	2	24	\N	\N	6	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
46	2	3	219	2	25	\N	\N	6	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
47	2	3	219	2	22	\N	\N	7	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
48	2	3	219	2	23	\N	\N	7	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
49	2	3	219	2	24	\N	\N	7	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
50	2	3	219	2	25	\N	\N	7	\N	\N	2018-02-10 17:12:19	2018-02-10 17:12:19	\N
\.


--
-- Name: benchmarking_reproducao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('benchmarking_reproducao_id_seq', 50, true);


--
-- Data for Name: cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cidades (cod_estados, cod_cidades, nome, cep) FROM stdin;
1	1	Acrelândia	69945000
1	2	Assis Brasil	69935000
1	3	Brasiléia	69932000
1	4	Bujari	69923000
1	5	Capixaba	69922000
1	6	Cruzeiro do Sul	69980000
1	7	Epitaciolândia	69934000
1	8	Feijó	69960000
1	9	Jordão	69975000
1	10	Mâncio Lima	69990000
1	11	Manoel Urbano	69950000
1	12	Marechal Thaumaturgo	69983000
1	13	Plácido de Castro	69928000
1	14	Porto Acre	69921000
1	15	Porto Walter	69982000
1	16	Rio Branco	00000000
1	17	Rodrigues Alves	69985000
1	18	Santa Rosa	69955000
1	19	Sena Madureira	69940000
1	20	Senador Guiomard	69925000
1	21	Tarauacá	69970000
1	22	Xapuri	69930000
1	11059	Campinas	69929000
2	23	Água Branca	57490000
2	24	Alazão	57317000
2	25	Alecrim	57405000
2	26	Anadia	57660000
2	27	Anel	57710000
2	28	Anum Novo	57610100
2	29	Anum Velho	57610200
2	30	Arapiraca	00000000
2	31	Atalaia	57690000
2	32	Baixa da Onça	57317100
2	33	Baixa do Capim	57317200
2	34	Bálsamo	57317300
2	35	Bananeiras	57317400
2	36	Barra de Santo Antônio	57925000
2	37	Barra de São Miguel	57180000
2	38	Barra do Bonifácio	57610300
2	39	Barra Grande	57958000
2	40	Batalha	57420000
2	41	Batingas	57317500
2	42	Belém	57630000
2	43	Belo Monte	57435000
2	44	Boa Sorte	57610400
2	45	Boa Vista	57317600
2	46	Boa Vista	57610500
2	47	Boca da Mata	57680000
2	48	Bom Jardim	57317700
2	49	Bonifácio	57610600
2	50	Branquinha	57830000
2	51	Cacimbinhas	57570000
2	52	Cajarana	57317800
2	53	Cajueiro	57770000
2	54	Caldeirões de Cima	57614000
2	55	Camadanta	57318000
2	56	Campestre	57968000
2	57	Campo Alegre	57250000
2	58	Campo Grande	57350000
2	59	Canaã	57317900
2	60	Canafístula	57613000
2	61	Canapi	57530000
2	62	Canastra	57895000
2	63	Cangandu	57318100
2	64	Capela	57780000
2	65	Carneiros	57535000
2	66	Carrasco	57318200
2	67	Chã Preta	57760000
2	68	Coité do Nóia	57325000
2	69	Colônia Leopoldina	57975000
2	70	Coqueiro Seco	57140000
2	71	Coruripe	57230000
2	72	Coruripe da Cal	57610900
2	73	Craíbas	57320000
2	74	Delmiro Gouveia	57480000
2	75	Dois Riachos	57560000
2	76	Entremontes	57465000
2	77	Estrela de Alagoas	57625000
2	78	Feira Grande	57340000
2	79	Feliz Deserto	57220000
2	81	Flexeiras	57995000
2	83	Gaspar	57318300
2	84	Girau do Ponciano	57360000
2	85	Ibateguara	57890000
2	86	Igaci	57620000
2	87	Igreja Nova	57280000
2	88	Inhapi	57545000
2	89	Jacaré dos Homens	57430000
2	90	Jacuípe	57960000
2	91	Japaratinga	57950000
2	92	Jaramataia	57425000
2	93	Jenipapo	57318400
2	94	Joaquim Gomes	57980000
2	95	Jundiá	57965000
2	96	Junqueiro	57270000
2	97	Lagoa da Areia	57611200
2	98	Lagoa da Canoa	57330000
2	99	Lagoa da Pedra	57318500
2	100	Lagoa Dantas	57611500
2	101	Lagoa do Caldeirão	57611300
2	102	Lagoa do Canto	57611400
2	103	Lagoa do Exú	57611600
2	104	Lagoa do Rancho	57318600
2	105	Lagoa do Rancho	57611700
2	106	Lajes do Caldeirão	57611800
2	107	Laranjal	57318700
2	108	Limoeiro de Anadia	57260000
2	109	Maceió	00000000
2	110	Major Isidoro	57580000
2	111	Mar Vermelho	57730000
2	112	Maragogi	57955000
2	113	Maravilha	57520000
2	114	Marechal Deodoro	57160000
2	115	Maribondo	57670000
2	116	Massaranduba	57318800
2	117	Mata Grande	57540000
2	118	Matriz de Camaragibe	57910000
2	119	Messias	57990000
2	120	Minador do Negrão	57615000
2	121	Monteirópolis	57440000
2	122	Moreira	57611900
2	123	Munguba	57850000
2	124	Murici	57820000
2	125	Novo Lino	57970000
2	126	Olho D Água Grande	57390000
2	127	Olho D Água Das Flores	57442000
2	128	Olho D Água de Cima	57318900
2	129	Olho D Água do Casado	57470000
2	130	Olho D Água Dos Dandanhas	57319000
2	131	Olivença	57550000
2	132	Ouro Branco	57525000
2	133	Palestina	57410000
2	134	Palmeira de Fora	57613500
2	135	Palmeira Dos Índios	00000000
2	136	Pão de Açúcar	57400000
2	137	Pariconha	57475000
2	138	Paripueira	57935000
2	139	Passo de Camaragibe	57930000
2	140	Pau D Arco	57319100
2	141	Pau Ferro	57319200
2	142	Paulo Jacinto	57740000
2	143	Penedo	57200000
2	144	Piaçabuçu	57210000
2	145	Pilar	57150000
2	146	Pindoba	57720000
2	147	Piranhas	57460000
2	148	Poção	57319300
2	149	Poço da Pedra	57319400
2	150	Poço Das Trincheiras	57510000
2	151	Porto Calvo	57900000
2	152	Porto de Pedras	57945000
2	153	Porto Real do Colégio	57290000
2	154	Poxim	57235000
2	155	Quebrangulo	57750000
2	156	Riacho do Sertão	57585000
2	157	Riacho Fundo de Cima	57611000
2	158	Rio Largo	57100000
2	159	Rocha Cavalcante	57810000
2	160	Roteiro	57246000
2	161	Santa Efigênia	57790000
2	162	Santa Luzia do Norte	57130000
2	163	Santana do Ipanema	57500000
2	164	Santana do Mundaú	57840000
2	165	Santo Antônio	57611100
2	166	São Brás	57380000
2	167	São José da Laje	57860000
2	168	São José da Tapera	57445000
2	169	São Luís do Quitunde	57920000
2	170	São Miguel Dos Campos	57240000
2	171	São Miguel Dos Milagres	57940000
2	172	São Sebastião	57275000
2	173	Sapucaia	57319500
2	174	Sapucaia	57693000
2	175	Satuba	57120000
2	176	Senador Rui Palmeira	57515000
2	177	Serra da Mandioca	57612000
2	178	Serra do São José	57612500
2	179	Taboleiro do Pinto	57110000
2	180	Taboquinha	57319600
2	181	Tanque D Arca	57635000
2	182	Taquarana	57640000
2	183	Tatuamunha	57948000
2	184	Teotônio Vilela	57265000
2	185	Traipu	57370000
2	186	União Dos Palmares	57800000
2	187	Usina Camaçari	57233000
2	188	Viçosa	57700000
2	189	Vila Aparecida	57319700
2	190	Vila São Francisco	57319800
2	10089	Jequiá da Praia	57244000
3	278	Abacate da Pedreira	68912350
3	279	Serra do Navio	68948000
3	280	Amapá	68950000
3	281	Amapari	68945000
3	282	Ambé	68912000
3	283	Aporema	68994000
3	284	Ariri	68912050
3	285	Bailique	68913000
3	286	Boca do Jari	68923000
3	287	Calçoene	68960000
3	288	Cantanzal	68912800
3	289	Carmo	68912100
3	290	Clevelândia do Norte	68985000
3	291	Corre Água	68912600
3	292	Cunani	68965000
3	293	Curiaú	68912300
3	294	Cutias	68973000
3	295	Fazendinha	68912250
3	296	Ferreira Gomes	68915000
3	297	Fortaleza	68939000
3	298	Gaivota	68912150
3	299	Gurupora	68912650
3	300	Igarapé do Lago	68935000
3	301	Ilha de Santana	68937000
3	302	Inajá	68912750
3	303	Itaubal	68976000
3	304	Laranjal do Jari	68920000
3	305	Livramento do Pacuí	68912450
3	306	Lourenço	68970000
3	307	Macapá	00000000
3	308	Mazagão	68940000
3	309	Mazagão Velho	68943000
3	310	Oiapoque	68980000
3	311	Paredão	68917000
3	312	Porto Grande	68997000
3	313	Pracuúba	68918000
3	314	Santa Luzia do Pacuí	68912530
3	315	Santa Maria	68912200
3	316	Santana	68925000
3	317	São Joaquim do Pacuí	68912500
3	318	São Sebastião do Livramento	68912550
3	319	São Tomé	68912700
3	320	Serra do Navio	68914000
3	321	Sucuriju	68958000
3	322	Tartarugalzinho	68990000
3	323	Vila Velha	68988000
3	324	Vitória do Jari	68924000
4	191	Alvarães	69475000
4	192	Amatari	69105000
4	193	Amaturá	69620000
4	194	Anamã	69445000
4	195	Anori	69440000
4	196	Apuí	69265000
4	197	Ariaú	69165000
4	198	Atalaia do Norte	69650000
4	199	Augusto Montenegro	69182000
4	200	Autazes	69240000
4	201	Axinim	69210000
4	202	Badajós	69452000
4	203	Balbina	69736000
4	204	Barcelos	69700000
4	205	Barreirinha	69160000
4	206	Benjamin Constant	69630000
4	207	Beruri	69430000
4	208	Boa Vista do Ramos	69195000
4	209	Boca do Acre	69850000
4	210	Borba	69200000
4	211	Caapiranga	69410000
4	212	Cametá	69162000
4	213	Canumã	69212000
4	214	Canutama	69820000
4	215	Carauari	69500000
4	216	Careiro	69250000
4	217	Careiro da Várzea	69255000
4	218	Carvoeiro	69725000
4	219	Coari	69460000
4	220	Codajás	69450000
4	221	Cucuí	69765000
4	222	Eirunepé	69880000
4	223	Envira	69870000
4	224	Floriano Peixoto	69855000
4	225	Fonte Boa	69670000
4	226	Freguesia do Andirá	69170000
4	227	Guajará	69895000
4	228	Humaitá	69800000
4	229	Iauaretê	69790000
4	230	Içanã	69760000
4	231	Ipixuna	69890000
4	232	Iranduba	69405000
4	233	Itacoatiara	69100000
4	234	Itamarati	69510000
4	235	Itapiranga	69120000
4	236	Japurá	69495000
4	237	Juruá	69520000
4	238	Jutaí	69660000
4	239	Lábrea	69830000
4	240	Lago Preto	69196000
4	241	Manacapuru	69400000
4	242	Manaquiri	69435000
4	243	Manaus	00000000
4	244	Manicoré	69280000
4	245	Maraã	69490000
4	246	Massauari	69197000
4	247	Maués	69190000
4	248	Mocambo	69158000
4	249	Moura	69720000
4	250	Murutinga	69245000
4	251	Nhamundá	69140000
4	252	Nova Olinda do Norte	69230000
4	253	Novo Airão	69730000
4	254	Novo Aripuanã	69260000
4	255	Osório da Fonseca	69192000
4	256	Parintins	00000000
4	257	Pauini	69860000
4	258	Pedras	69175000
4	259	Presidente Figueiredo	69735000
4	260	Repartimento	69193000
4	261	Rio Preto da Eva	69115000
4	262	Santa Isabel do Rio Negro	69740000
4	263	Santa Rita	69610000
4	264	Santo Antônio do Içá	69680000
4	265	São Felipe	69752000
4	266	São Gabriel da Cachoeira	69750000
4	267	São Paulo de Olivença	69600000
4	268	São Sebastião do Uatumã	69135000
4	269	Silves	69110000
4	270	Tabatinga	69640000
4	271	Tapauá	69480000
4	272	Tefé	69470000
4	273	Tonantins	69685000
4	274	Uarini	69485000
4	275	Urucará	69130000
4	276	Urucurituba	69180000
4	277	Vila Pitinga	69737000
4	10471	Cacau Pirêra	69408000
5	325	Abadia	48320000
5	326	Abaíra	46690000
5	327	Abaré	48680000
5	328	Abelhas	45112000
5	329	Abóbora	48912000
5	330	Abrantes	42840000
5	331	Acajutiba	48360000
5	332	Açu da Torre	48288000
5	333	Açudina	47645000
5	334	Acupe	44218000
5	335	Adustina	48435000
5	336	Afligidos	44338000
5	337	Afrânio Peixoto	46965000
5	338	Água Doce	45295000
5	339	Água Fria	48170000
5	340	Águas do Paulista	47505000
5	341	Aiquara	45220000
5	342	Alagoinhas	00000000
5	343	Alcobaça	45990000
5	344	Alegre	46203000
5	345	Algodão	45582000
5	346	Algodões	48832000
5	347	Almadina	45640000
5	348	Alto Bonito	44805000
5	349	Amado Bahia	48282000
5	350	Amaniú	47380000
5	351	Amargosa	45300000
5	352	Amélia Rodrigues	44230000
5	353	América Dourada	44910000
5	354	Américo Alves	47370000
5	355	Anagé	45180000
5	356	Andaraí	46830000
5	357	Andorinha	48990000
5	358	Angical	47960000
5	359	Angico	44633000
5	360	Anguera	44670000
5	361	Antas	48420000
5	362	Antônio Cardoso	44180000
5	363	Antônio Gonçalves	44780000
5	364	Aporá	48350000
5	365	Apuarema	45355000
5	366	Araçás	48108000
5	367	Aracatu	46130000
5	368	Araci	48760000
5	369	Aramari	48130000
5	370	Arapiranga	46177000
5	371	Arataca	45695000
5	372	Aratuípe	44490000
5	373	Areias	42847000
5	374	Arembepe	42835000
5	375	Argoim	44525000
5	376	Argolo	45925000
5	377	Aribice	48504000
5	378	Aritaguá	45663000
5	379	Aurelino Leal	45675000
5	380	Baianópolis	47830000
5	381	Baixa do Palmeira	44535000
5	382	Baixa Grande	44620000
5	383	Baixão	45212000
5	384	Baixinha	45313000
5	385	Baluarte	47270000
5	386	Banco Central	45673000
5	387	Banco da Vitória	45661000
5	388	Bandeira do Almada	45635000
5	389	Bandeira do Colônia	45705000
5	390	Bandiaçu	48745000
5	391	Banzaê	48405000
5	392	Baraúnas	46920000
5	393	Barcelos do Sul	45448000
5	394	Barra	47100000
5	395	Barra da Estiva	46650000
5	396	Barra do Choça	45120000
5	397	Barra do Jacuípe	42833000
5	398	Barra do Mendes	44990000
5	399	Barra do Pojuca	42825000
5	400	Barra do Rocha	45560000
5	401	Barra do Tarrachil	48668000
5	402	Barracas	44757000
5	403	Barreiras	00000000
5	404	Barro Alto	44895000
5	405	Governador Lomanto Júnior	45625000
5	406	Barro Vermelho	48935000
5	407	Barrocas	48705000
5	408	Bastião	46745000
5	409	Bate Pé	45107000
5	410	Batinga	45975000
5	411	Bela Flor	48113000
5	412	Belém da Cachoeira	44315000
5	413	Belmonte	45800000
5	414	Belo Campo	45160000
5	415	Belo Campo	44911000
5	416	Bem-bom	47330000
5	417	Bendegó	48524000
5	418	Bento Simões	44258000
5	419	Biritinga	48780000
5	420	Boa Espera	44265000
5	421	Boa Nova	45250000
5	422	Boa União	48103000
5	423	Boa Vista do Lagamar	47525000
5	424	Boa Vista do Tupim	46850000
5	425	Boaçu	45209000
5	426	Boca do Córrego	45805000
5	427	Bom Jesus da Lapa	47600000
5	428	Bom Jesus da Serra	45263000
5	429	Bom Sossego	47540000
5	430	Bonfim da Feira	44120000
5	431	Boninal	46740000
5	432	Bonito	46820000
5	433	Boquira	46530000
5	434	Botuporã	46570000
5	435	Botuquara	46475000
5	436	Brejinho Das Ametistas	46405000
5	437	Brejo da Serra	47260000
5	438	Brejo Luíza de Brito	46733000
5	439	Brejo Novo	46855000
5	440	Brejões	45325000
5	441	Brejolândia	47750000
5	442	Brotas de Macaúbas	47560000
5	443	Brumado	46100000
5	444	Bucuituba	46535000
5	445	Buerarema	45615000
5	446	Buracica	44285000
5	447	Buranhém	45845000
5	448	Buril	48483000
5	449	Buris de Abrantes	42845000
5	450	Buritirama	47120000
5	451	Caatiba	45130000
5	452	Cabaceiras do Paraguaçu	44345000
5	453	Cabrália	46768000
5	454	Cacha Pregos	44478000
5	455	Cachoeira	44300000
5	456	Cachoeira do Mato	45999000
5	457	Caculé	46300000
5	458	Caém	44730000
5	459	Caetanos	45265000
5	460	Caeté-açu	46940000
5	461	Caetité	46400000
5	462	Cafarnaum	44880000
5	463	Caiçara	45118000
5	464	Caimbé	48506000
5	465	Cairu	45420000
5	466	Caiubi	45858000
5	467	Cajuí	47390000
5	468	Caldas do Jorro	48793000
5	469	Caldeirão	48955000
5	470	Caldeirão Grande	44750000
5	471	Caldeiras	46420000
5	472	Camacan	45880000
5	473	Camaçari	00000000
5	474	Camamu	45445000
5	475	Camassandi	44482000
5	476	Camirim	44860000
5	477	Campinhos	44215000
5	478	Campo Alegre de Lourdes	47220000
5	479	Campo Formoso	44790000
5	480	Campo Formoso	44935000
5	481	Camurugi	45434000
5	482	Canabravinha	46195000
5	483	Canápolis	47730000
5	484	Canarana	44890000
5	485	Canatiba	46510000
5	486	Canavieiras	45860000
5	487	Canché	48560000
5	488	Candeal	48710000
5	489	Candeias	00000000
5	490	Candiba	46380000
5	491	Cândido Sales	45157000
5	492	Canoão	44965000
5	493	Cansanção	48840000
5	494	Canto do Sol	42830000
5	495	Canudos	48520000
5	496	Canudos	44889000
5	497	Capão	45495000
5	498	Capela do Alto Alegre	44645000
5	499	Capim Grosso	44695000
5	500	Caraguataí	46680000
5	501	Caraíbas	45177000
5	502	Caraibuna	46630000
5	503	Caraípe	44555000
5	504	Caraiva	45819000
5	505	Caravelas	45900000
5	506	Cardeal da Silva	48390000
5	507	Carinhanha	46445000
5	508	Caripare	47980000
5	509	Carnaíba do Sertão	48922000
5	510	Carrapichel	48985000
5	511	Casa Nova	47300000
5	512	Castelo Novo	45667000
5	513	Castro Alves	44500000
5	514	Catinga do Moura	44704000
5	515	Catingal	45245000
5	516	Catolândia	47815000
5	517	Catolés	46695000
5	518	Catolezinho	45145000
5	519	Catu	48110000
5	520	Catu de Abrantes	42841000
5	521	Caturama	46575000
5	522	Cavunge	44685000
5	523	Central	44940000
5	524	Ceraima	46433000
5	525	Chorrochó	48660000
5	526	Cícero Dantas	48410000
5	527	Cinco Rios	43860000
5	528	Cipó	48450000
5	529	Coaraci	45638000
5	530	Cocos	47680000
5	531	Colônia	45832000
5	532	Comércio	44545000
5	533	Conceição da Feira	44320000
5	534	Conceição do Almeida	44540000
5	535	Conceição do Coité	48730000
5	536	Conceição do Jacuípe	44245000
5	537	Conde	48300000
5	538	Condeúba	46200000
5	539	Contendas do Sincorá	46620000
5	540	Copixaba	47430000
5	541	Coqueiros	44430000
5	542	Coquinhos	45185000
5	543	Coração de Maria	44250000
5	544	Cordeiros	46280000
5	545	Coribe	47690000
5	546	Coronel João Sá	48590000
5	547	Correntina	47650000
5	548	Corta Mão	45301000
5	549	Cotegipe	47900000
5	550	Coutos	45664000
5	551	Cravolândia	45330000
5	552	Crisópolis	48480000
5	553	Cristalândia	46108000
5	554	Cristópolis	47950000
5	555	Crussaí	44505000
5	556	Cruz Das Almas	44380000
5	557	Cumuruxatiba	45983000
5	558	Cunhangi	44488000
5	559	Curaçá	48930000
5	560	Curral Falso	48403000
5	561	Dário Meira	45590000
5	562	Delfino	44795000
5	563	Descoberto	47695000
5	564	Dias Coelho	44855000
5	565	Dias D Ávila	42850000
5	566	Diógenes Sampaio	45302000
5	567	Dom Basílio	46165000
5	568	Dom Macedo Costa	44560000
5	569	Dona Maria	48473000
5	570	Duas Barras do Morro	44865000
5	571	Elísio Medrado	45305000
5	572	Encruzilhada	45150000
5	573	Engenheiro França	45312000
5	574	Engenheiro Pontes	45498000
5	575	Entre Rios	48180000
5	576	Érico Cardoso	46180000
5	577	Esplanada	48370000
5	578	Euclides da Cunha	48500000
5	579	Eunápolis	00000000
5	580	Fátima	48415000
5	581	Feira da Mata	46446000
5	582	Feira de Santana	00000000
5	583	Ferradas	00000000
5	584	Filadélfia	44775000
5	585	Filanésia	45358000
5	586	Firmino Alves	45720000
5	587	Floresta Azul	45740000
5	588	Formosa do Rio Preto	47990000
5	589	França	44837000
5	590	Gabiarra	45831000
5	591	Galeão	45422000
5	592	Gamboa	45424000
5	593	Gameleira da Lapa	47620000
5	594	Gameleira do Assuruá	47470000
5	595	Gandu	45450000
5	596	Gavião	44650000
5	597	Gentio do Ouro	47450000
5	598	Geolândia	44349000
5	599	Glória	48610000
5	600	Gongogi	45540000
5	601	Governador João Durval Carneiro	44130000
5	602	Governador Mangabeira	44350000
5	603	Guagirus	42837000
5	604	Guaí	44423000
5	605	Guajeru	46205000
5	606	Guanambi	46430000
5	607	Guapira	44425000
5	608	Guarajuba	42827000
5	609	Guaratinga	45840000
5	610	Guerém	45413000
5	611	Guiné	46753000
5	612	Guirapa	46370000
5	613	Gurupá Mirim	45795000
5	614	Heliópolis	48445000
5	615	Helvecia	45923000
5	616	Hidrolândia	44955000
5	617	Humildes	44135000
5	618	Iaçu	46860000
5	619	Ibatui	48185000
5	620	Ibiaçu	45523000
5	621	Ibiajara	46560000
5	622	Ibiapora	44825000
5	623	Ibiassucê	46390000
5	624	Ibicaraí	45745000
5	625	Ibicoara	46760000
5	626	Ibicuí	45290000
5	627	Ibipeba	44970000
5	628	Ibipetum	47595000
5	629	Ibipitanga	46540000
5	630	Ibiquera	46840000
5	631	Ibiraba	47110000
5	632	Ibirajá	45972000
5	633	Ibiranhém	45938000
5	634	Ibirapitanga	45500000
5	635	Ibirapuã	45940000
5	636	Ibirataia	45580000
5	637	Ibitiara	46700000
5	638	Ibitiguira	45378000
5	639	Ibitira	46225000
5	640	Ibititá	44960000
5	641	Ibitunane	47480000
5	642	Ibitupa	45298000
5	643	Ibó	48685000
5	644	Ibotirama	47520000
5	645	Ichu	48725000
5	646	Icó	44852000
5	647	Igaporã	46490000
5	648	Igará	48975000
5	649	Igarité	47105000
5	650	Igatu	46834000
5	651	Igrapiúna	45443000
5	652	Iguá	45105000
5	653	Iguaí	45280000
5	654	Iguaibi	45285000
5	655	Iguatemi	46150000
5	656	Iguira	47410000
5	657	Iguitu	44975000
5	658	Ilha de Maré	42500000
5	659	Ilhéus	00000000
5	660	Indaí	44810000
5	661	Inema	45669000
5	662	Inhambupe	48490000
5	663	Inhata	44235000
5	664	Inhaúmas	47648000
5	665	Inhobim	45110000
5	666	Inúbia	46766000
5	667	Ipecaetá	44680000
5	668	Ipiaú	45570000
5	669	Ipirá	44600000
5	670	Ipiúna	45347000
5	671	Ipucaba	47550000
5	672	Ipupiara	47590000
5	673	Irajuba	45370000
5	674	Iramaia	46770000
5	675	Iraporanga	46985000
5	676	Iraquara	46980000
5	677	Irará	44255000
5	678	Irecê	44900000
5	679	Irundiara	46315000
5	680	Ita-azul	45838000
5	681	Itabela	45848000
5	682	Itaberaba	46880000
5	683	Itabuna	00000000
5	684	Itacaré	45530000
5	685	Itacava	44253000
5	686	Itachama	45303000
5	687	Itacimirim	42823000
5	688	Itaeté	46790000
5	689	Itagi	45230000
5	690	Itagibá	45585000
5	691	Itagimirim	45850000
5	692	Itaguaçu da Bahia	47440000
5	693	Itaia	45723000
5	694	Itaibó	45213000
5	695	Itaipu	45116000
5	696	Itaítu	44702000
5	697	Itajaí	45275000
5	698	Itaju do Colônia	45730000
5	699	Itajubaquara	47460000
5	700	Itajuípe	45630000
5	701	Itajuru	45211000
5	702	Itamaraju	45836000
5	703	Itamari	45455000
5	704	Itambé	45140000
5	705	Itamira	48355000
5	706	Itamotinga	48920000
5	707	Itanagé	46143000
5	708	Itanagra	48290000
5	709	Itanhém	45970000
5	710	Itanhi	48315000
5	711	Itaparica	44460000
5	712	Itapé	45750000
5	713	Itapebi	45855000
5	714	Itapeipu	44708000
5	715	Itapetinga	45700000
5	716	Itapicuru	48475000
5	717	Itapirema	45117000
5	718	Itapitanga	45645000
5	719	Itapora	44343000
5	720	Itapura	44727000
5	721	Itaquara	45340000
5	722	Itaquaraí	46103000
5	723	Itarantim	45780000
5	724	Itati	45714000
5	725	Itatim	46875000
5	726	Itatingui	45698000
5	727	Itiruçu	45350000
5	728	Itiúba	48850000
5	729	Itororó	45710000
5	730	Ituaçu	46640000
5	731	Ituberá	45435000
5	732	Itupeva	45968000
5	733	Iuiu	46438000
5	734	Jaborandi	47655000
5	735	Jacaraci	46310000
5	736	Jacobina	44700000
5	737	Jacu	44273000
5	738	Jacuípe	43870000
5	739	Jacuruna	44484000
5	740	Jaguaquara	45345000
5	741	Jaguara	44125000
5	742	Jaguarari	48960000
5	743	Jaguaripe	44480000
5	744	Jaíba	44115000
5	745	Jandaíra	48310000
5	746	Japomirim	45588000
5	747	Japu	45665000
5	748	Jauá	42843000
5	749	Jequié	00000000
5	750	Jequiriçá	45470000
5	751	Jeremoabo	48540000
5	752	Jiribatuba	44475000
5	753	Jitaúna	45225000
5	754	João Amaro	46865000
5	755	João Correia	46755000
5	756	João Dourado	44920000
5	757	José Gonçalves	45115000
5	758	Juacema	48965000
5	759	Juazeiro	00000000
5	760	Jucuruçu	45834000
5	761	Juerana	45910000
5	762	Junco	48910000
5	763	Jupaguá	47920000
5	764	Juraci	46785000
5	765	Juremal	48915000
5	766	Jussara	44925000
5	767	Jussari	45610000
5	768	Jussiape	46670000
5	769	Km Sete	44133000
5	770	Lafaiete Coutinho	45215000
5	771	Lagoa Clara	46520000
5	772	Lagoa de Melquíades	45114000
5	773	Lagoa do Boi	44898000
5	774	Lagoa Grande	45158000
5	775	Lagoa Grande	44972000
5	776	Lagoa José Luís	45113000
5	777	Lagoa Preta	45175000
5	778	Lagoa Real	46425000
5	779	Laje	45490000
5	780	Laje do Banco	45676000
5	781	Lajedão	45950000
5	782	Lajedinho	46825000
5	783	Lajedo Alto	46868000
5	784	Lajedo do Tabocal	45365000
5	785	Lamarão	48720000
5	786	Lamarão do Passe	43855000
5	787	Lapão	44905000
5	788	Largo	44835000
5	789	Lauro de Freitas	42700000
5	790	Lençóis	46960000
5	791	Licínio de Almeida	46330000
5	792	Limoeiro do Bom Viver	44137000
5	793	Livramento de Nossa Senhora	46140000
5	794	Lucaia	45195000
5	795	Luís Viana	47340000
5	796	Lustosa	44283000
5	797	Macajuba	46805000
5	798	Macarani	45760000
5	799	Macaúbas	46500000
5	800	Macururé	48650000
5	801	Madre de Deus	42600000
5	802	Maetinga	46255000
5	803	Maiquinique	45770000
5	804	Mairi	44630000
5	805	Malhada	46440000
5	806	Malhada de Pedras	46110000
5	807	Mandiroba	46455000
5	808	Mangue Seco	48325000
5	809	Maniaçu	46410000
5	810	Manoel Vitorino	45240000
5	811	Mansidão	47160000
5	812	Mantiba	44117000
5	813	Mar Grande	44473000
5	814	Maracás	45360000
5	815	Maragogipe	44420000
5	816	Maragogipinho	44495000
5	817	Maraú	45520000
5	818	Marcionílio Souza	46780000
5	819	Marcolino Moura	46175000
5	820	Maria Quitéria	44110000
5	821	Maricoabo	45412000
5	822	Mariquita	47770000
5	823	Mascote	45870000
5	824	Massacara	48510000
5	825	Massaroca	48918000
5	826	Mata da Aliança	44240000
5	827	Mata de São João	48280000
5	828	Mataripe	43970000
5	829	Matina	46480000
5	830	Matinha	44118000
5	831	Medeiros Neto	45960000
5	832	Miguel Calmon	44720000
5	833	Milagres	45315000
5	834	Luís Eduardo Magalhães	47850000
5	835	Minas do Espírito Santo	44995000
5	836	Minas do Mimoso	47375000
5	837	Mirandela	48409000
5	838	Miranga	48126000
5	839	Mirangaba	44745000
5	840	Mirante	45255000
5	841	Mocambo	46720000
5	842	Mogiquiçaba	45803000
5	843	Monte Cruzeiro	45306000
5	844	Monte Gordo	42820000
5	845	Monte Recôncavo	43980000
5	846	Monte Santo	48800000
5	847	Morpará	47580000
5	848	Morrinhos	44127000
5	849	Morro Das Flores	46802000
5	850	Morro de São Paulo	45428000
5	851	Morro do Chapéu	44850000
5	852	Mortugaba	46290000
5	853	Mucugê	46750000
5	854	Mucuri	45930000
5	855	Mulungu do Morro	44885000
5	856	Mundo Novo	44800000
5	857	Muniz Ferreira	44575000
5	858	Muquém de São Francisco	47115000
5	859	Muritiba	44340000
5	860	Mutas	46436000
5	861	Mutuípe	45480000
5	862	Nagé	44432000
5	863	Narandiba	48107000
5	864	Nazaré	44400000
5	865	Nilo Peçanha	45440000
5	866	Nordestina	48870000
5	867	Nova Alegria	45838500
5	868	Nova Brasília	45156000
5	869	Nova Canaã	45270000
5	870	Nova Fátima	44642000
5	871	Nova Ibiá	45452000
5	872	Nova Itaipê	45380000
5	873	Nova Itarana	45390000
5	874	Nova Lídice	45965000
5	875	Nova Redenção	46835000
5	876	Nova Soure	48460000
5	877	Nova Viçosa	45920000
5	878	Novo Acre	46775000
5	879	Novo Horizonte	46730000
5	880	Novo Triunfo	48455000
5	881	Núcleo Residencial Pilar	48967000
5	882	Nuguaçu	44747000
5	883	Olhos D Água do Seco	46715000
5	884	Olhos D Água do Serafim	46735000
5	885	Olindina	48470000
5	886	Oliveira Dos Brejinhos	47530000
5	887	Olivença	45668000
5	888	Onha	44578000
5	889	Oriente Novo	45210000
5	890	Ouricana	45863000
5	891	Ouriçangas	48150000
5	892	Ouricuri do Ouro	47565000
5	893	Ourolândia	44718000
5	894	Outeiro Redondo	44365000
5	895	Paiol	46320000
5	896	Pajeú do Vento	46402000
5	897	Palame	48380000
5	898	Palmas de Monte Alto	46460000
5	899	Palmeiras	46930000
5	900	Parafuso	42849000
5	901	Paramirim	46190000
5	902	Parateca	46443000
5	903	Paratinga	47500000
5	904	Paripiranga	48430000
5	905	Pataíba	48175000
5	906	Patamuté	48945000
5	907	Pau A Pique	47320000
5	908	Pau Brasil	45890000
5	909	Paulo Afonso	00000000
5	910	Pé de Serra	44655000
5	911	Pedrão	48140000
5	912	Pedras Altas do Mirim	44697000
5	913	Pedro Alexandre	48580000
5	914	Peixe	47230000
5	915	Petim	44510000
5	916	Piabanha	45525000
5	917	Piatã	46765000
5	918	Piçarrão	47360000
5	919	Pilão Arcado	47240000
5	920	Pimenteira	45672000
5	921	Pindaí	46360000
5	922	Pindobaçu	44770000
5	923	Pinhões	48924000
5	924	Pintadas	44610000
5	925	Piragi	45837500
5	926	Piraí do Norte	45436000
5	927	Pirajá	45837000
5	928	Pirajuia	44486000
5	929	Piri	47355000
5	930	Piripá	46270000
5	931	Piritiba	44830000
5	932	Pituba	47454000
5	933	Planaltino	45375000
5	934	Planalto	45190000
5	935	Poço Central	45678000
5	936	Poço de Fora	48940000
5	937	Poções	45260000
5	938	Poços	47210000
5	939	Pojuca	48120000
5	940	Polo Petroquímico de Camaçari	00000000
5	941	Ponta da Areia	45905000
5	942	Ponto Novo	44755000
5	943	Porto Novo	47710000
5	944	Porto Seguro	45810000
5	945	Posto da Mata	45928000
5	946	Potiraguá	45790000
5	947	Poxim do Sul	45862000
5	948	Prado	45980000
5	949	Presidente Dutra	44930000
5	950	Presidente Jânio Quadros	46250000
5	951	Presidente Tancredo Neves	45416000
5	952	Prevenido	44912000
5	953	Quaraçu	45159000
5	954	Queimadas	48860000
5	955	Quijingue	48830000
5	956	Quixabá	47585000
5	957	Quixabeira	44713000
5	958	Rafael Jambeiro	44520000
5	959	Recife	44927000
5	960	Remanso	47200000
5	961	Remédios	46738000
5	962	Retirolândia	48750000
5	963	Riachão Das Neves	47970000
5	964	Riachão do Jacuípe	44640000
5	965	Riachão do Utinga	46815000
5	966	Riacho da Guia	48105000
5	967	Riacho de Santana	46470000
5	968	Riacho Seco	48933000
5	969	Ribeira do Amparo	48440000
5	970	Ribeira do Pombal	48400000
5	971	Ribeirão do Largo	45155000
5	972	Ribeirão do Salto	45785000
5	973	Rio da Dona	44548000
5	974	Rio de Contas	46170000
5	975	Rio do Antônio	46220000
5	976	Rio do Braço	45666000
5	977	Rio do Meio	45712000
5	978	Rio do Pires	46550000
5	979	Rio Fundo	44275000
5	980	Rio Real	48330000
5	981	Rodelas	48630000
5	982	Ruy Barbosa	46800000
5	983	Saldanha	47250000
5	984	Salgadália	48740000
5	985	Salinas da Margarida	44450000
5	986	Salobrinho	45662000
5	987	Salobro	44892000
5	988	Salvador	00000000
5	989	Sambaíba	48476000
5	990	Santa Bárbara	44150000
5	991	Santa Brígida	48570000
5	992	Santa Cruz Cabrália	45807000
5	993	Santa Cruz da Vitória	45725000
5	994	Santa Inês	45320000
5	995	Santa Luzia	45865000
5	996	Santa Maria da Vitória	47640000
5	997	Santa Rita de Cássia	47150000
5	998	Santa Terezinha	44590000
5	999	Santaluz	48880000
5	1000	Santana	47700000
5	1001	Santana do Sobrado	47310000
5	1002	Santanópolis	44260000
5	1003	Santiago do Iguapé	44310000
5	1004	Santo Amaro	44200000
5	1005	Santo Antônio de Barcelona	45915000
5	1006	Santo Antônio de Jesus	00000000
5	1007	Santo Estevão	44190000
5	1008	Santo Inácio	47490000
5	1009	São Desidério	47820000
5	1010	São Domingos	48895000
5	1011	São Felipe	44550000
5	1012	São Félix	44360000
5	1013	São Félix do Coribe	47665000
5	1014	São Francisco do Conde	43900000
5	1015	São Gabriel	44915000
5	1016	São Gonçalo Dos Campos	44330000
5	1017	São João da Fortaleza	48413000
5	1018	São João da Vitória	45111000
5	1019	São José da Vitória	45620000
5	1020	São José do Colônia	45142000
5	1021	São José do Jacuípe	44698000
5	1022	São José do Prado	45958000
5	1023	São José do Rio Grande	47975000
5	1024	São Miguel Das Matas	44580000
5	1025	São Paulinho	45839000
5	1026	São Roque do Paraguaçu	44428000
5	1027	São Sebastião do Passe	43850000
5	1028	São Timóteo	46145000
5	1029	Sapeaçu	44530000
5	1030	Sátiro Dias	48485000
5	1031	Saubara	44220000
5	1032	Saudável	47570000
5	1033	Saúde	44740000
5	1034	Seabra	46900000
5	1035	Sebastião Laranjeiras	46450000
5	1036	Senhor do Bonfim	48970000
5	1037	Sento Sé	47350000
5	1038	Sergi	44335000
5	1039	Serra da Canabrava	48953000
5	1040	Serra do Ramalho	47630000
5	1041	Serra Dourada	47740000
5	1042	Serra Grande	48414000
5	1043	Serra Grande	45414000
5	1044	Serra Preta	44660000
5	1045	Serrinha	48700000
5	1046	Serrolândia	44710000
5	1047	Simões Filho	43700000
5	1048	Sítio da Baraúna	48993000
5	1049	Sítio do Mato	47610000
5	1050	Sítio do Meio	44508000
5	1051	Sítio do Quinto	48565000
5	1052	Sítio Grande	47825000
5	1053	Sítio Novo	48115000
5	1054	Soares	44913000
5	1055	Sobradinho	48925000
5	1056	Souto Soares	46990000
5	1057	Subaúma	48190000
5	1058	Sussuarana	46605000
5	1059	Tabocas do Brejo Velho	47760000
5	1060	Taboleiro do Castro	44568000
5	1061	Taboquinhas	45534000
5	1062	Taguá	47930000
5	1063	Tamburil	44862000
5	1064	Tanhaçu	46600000
5	1065	Tanque Novo	46580000
5	1066	Tanquinho	44160000
5	1067	Tanquinho do Poço	48994000
5	1068	Taperoá	45430000
5	1069	Tapiraípe	46804000
5	1070	Tapirama	45543000
5	1071	Tapiramutá	44840000
5	1072	Tapiranga	44723000
5	1073	Tapúia	45449000
5	1074	Taquarendi	44748000
5	1075	Taquarinha	45935000
5	1076	Tartaruga	45318000
5	1077	Tauapé	46335000
5	1078	Teixeira de Freitas	00000000
5	1079	Teodoro Sampaio	44280000
5	1080	Teofilândia	48770000
5	1081	Teolândia	45465000
5	1082	Terra Nova	44270000
5	1083	Tijuaçú	48980000
5	1084	Tiquaruçu	44140000
5	1085	Tremedal	45170000
5	1086	Triunfo do Sincorá	46660000
5	1087	Tucano	48790000
5	1088	Uauá	48950000
5	1089	Ubaíra	45310000
5	1090	Ubaitaba	45545000
5	1091	Ubatã	45550000
5	1092	Ubiracaba	46105000
5	1093	Ubiraitá	46833000
5	1094	Uibaí	44950000
5	1095	Umburanas	44798000
5	1096	Umbuzeiro	48474000
5	1097	Una	45690000
5	1098	Urandi	46350000
5	1099	Uruçuca	45680000
5	1100	Utinga	46810000
5	1101	Vale Verde	45817000
5	1102	Valença	45400000
5	1103	Valente	48890000
5	1104	Várzea da Roça	44635000
5	1105	Várzea do Caldas	46910000
5	1106	Várzea do Cerco	44888000
5	1107	Várzea do Poço	44715000
5	1108	Várzea Nova	44690000
5	1109	Várzeas	47840000
5	1110	Varzedo	44565000
5	1111	Velha Boipeba	45426000
5	1112	Ventura	44875000
5	1113	Vera Cruz	44470000
5	1114	Vereda	45955000
5	1115	Vila do Café	45153000
5	1116	Vitória da Conquista	00000000
5	1117	Volta Grande	44845000
5	1118	Wagner	46970000
5	1119	Wanderley	47940000
5	1120	Wenceslau Guimarães	45460000
5	1121	Xique-xique	47400000
5	10209	Arraial D Ajuda	45816000
5	10210	Trancoso	45818000
5	10211	Itabatã	45936000
5	10611	Ilha de Bom Jesus Dos Passos	42510000
5	10612	Ilha Dos Frades	42505000
5	10859	Pilões	46388000
5	10860	Pedra Alta	48767000
6	1122	Abaiara	63240000
6	1123	Abílio Martins	62252000
6	1124	Acarape	62785000
6	1125	Acaraú	62580000
6	1126	Acopiara	63560000
6	1127	Adrianópolis	62435000
6	1128	Água Verde	61895000
6	1129	Aguaí	62602000
6	1130	Aiuá	62143000
6	1131	Aiuaba	63575000
6	1132	Alagoinha	63174000
6	1133	Alagoinha	62686000
6	1134	Alcântaras	62120000
6	1135	Algodões	63655000
6	1136	Almofala	62592000
6	1137	Altaneira	63195000
6	1138	Alto Santo	62970000
6	1139	Amanaiara	62263000
6	1140	Amanari	61979000
6	1141	Amaniutuba	63306000
6	1142	Amarelas	62405000
6	1143	Amaro	63144000
6	1144	América	62240000
6	1145	Amontada	62540000
6	1146	Anauá	63217000
6	1147	Aningás	62882000
6	1148	Anjinhos	63193000
6	1149	Antonina do Norte	63570000
6	1150	Antônio Bezerra	00000000
6	1151	Antônio Diogo	62791000
6	1152	Antônio Marques	61994000
6	1153	Aprazível	62114000
6	1154	Apuiarés	62630000
6	1155	Aquinópolis	63479000
6	1156	Aquiraz	61700000
6	1157	Araçás	62682000
6	1158	Aracati	62800000
6	1159	Aracatiaçu	62111000
6	1160	Aracatiara	62548000
6	1161	Aracoiaba	62750000
6	1162	Arajara	63183000
6	1163	Aranaú	62585000
6	1164	Arapá	62328000
6	1165	Arapari	62508000
6	1166	Araporanga	63194000
6	1167	Araquém	62165000
6	1168	Ararendá	62210000
6	1169	Araripe	63170000
6	1170	Arariús	62186000
6	1171	Aratama	63143000
6	1172	Araticum	62352000
6	1173	Aratuba	62762000
6	1174	Areial	62290000
6	1175	Ariscos Dos Marianos	62759000
6	1176	Arneiroz	63670000
6	1177	Aroeiras	62163000
6	1178	Arrojado	63305000
6	1179	Aruaru	62951000
6	1180	Assaré	63140000
6	1181	Assunção	62505000
6	1182	Assunção	63625000
6	1183	Aurora	63360000
6	1184	Baixa Grande	62605000
6	1185	Baixio	63320000
6	1186	Baixio da Donana	63582000
6	1187	Banabuiú	63960000
6	1188	Bandeira	62723000
6	1189	Barão de Aquiraz	63153000
6	1190	Barbalha	63180000
6	1191	Barra	63578000
6	1192	Barra	62816000
6	1193	Barra	63506000
6	1194	Barra do Sotero	62393000
6	1195	Barra Nova	63667000
6	1196	Barreira	62795000
6	1197	Barreira Dos Vianas	62802000
6	1198	Barreiras	63508000
6	1199	Barreiros	63785000
6	1200	Barreiros	63163000
6	1201	Barreiros	62374000
6	1202	Barrento	62515000
6	1203	Barro	63380000
6	1204	Barro Alto	63509000
6	1205	Barroquinha	62410000
6	1206	Baturité	62760000
6	1207	Baú	63512000
6	1208	Beberibe	62840000
6	1209	Bela Cruz	62570000
6	1210	Bela Vista	62510000
6	1211	Betânia	62392000
6	1212	Betânia	62273000
6	1213	Betânia	63623000
6	1214	Bitupitá	62414000
6	1215	Bixopa	62935000
6	1216	Boa Água	62953000
6	1217	Boa Esperança	63770000
6	1218	Boa Viagem	63870000
6	1219	Boa Vista	63615000
6	1220	Boa Vista	62687000
6	1221	Boa Vista do Caxitoré	62623000
6	1222	Bonfim	63601000
6	1223	Bonfim	62102000
6	1224	Bonhu	62905000
6	1225	Bonito	62705000
6	1226	Borges	62835000
6	1227	Brejinho	63176000
6	1228	Brejo Grande	63192000
6	1229	Brejo Santo	63260000
6	1230	Brotas	62533000
6	1231	Buritizal	62227000
6	1232	Buritizinho	63213000
6	1233	Cabreiro	62806000
6	1234	Cachoeira	62728000
6	1235	Cachoeira Grande	62228000
6	1236	Caiçara	62597000
6	1237	Caiçarinha	63957000
6	1238	Caio Prado	62742000
6	1239	Caioca	62109000
6	1240	Caipu	63538000
6	1241	Calabaça	63545000
6	1242	Caldeirão	63157000
6	1243	Califórnia	63920000
6	1244	Camará	61753000
6	1245	Camboas	62688000
6	1246	Camilos	62132000
6	1247	Camocim	62400000
6	1248	Campanário	62468000
6	1249	Campestre	62817000
6	1250	Campos Sales	63150000
6	1251	Canaan	62692000
6	1252	Canafistula	62638000
6	1253	Canafistula	63583000
6	1254	Cangati	63612000
6	1255	Cangati	63624000
6	1256	Canindé	62700000
6	1257	Canindezinho	62203000
6	1258	Canindezinho	62995000
6	1259	Canindezinho	63555000
6	1260	Capistrano	62748000
6	1261	Caponga	62852000
6	1262	Caponga da Bernarda	61754000
6	1263	Caracará	62112000
6	1264	Caridade	62730000
6	1265	Cariré	62184000
6	1266	Caririaçu	63220000
6	1267	Cariús	63530000
6	1268	Cariutaba	63189000
6	1269	Carmelópolis	63151000
6	1270	Carnaubal	62375000
6	1271	Carnaúbas	63616000
6	1272	Carnaubinha	63637000
6	1273	Carquejo	62175000
6	1274	Carrapateiras	63662000
6	1275	Caruataí	62325000
6	1276	Carvalho	63768000
6	1277	Carvoeiro	62594000
6	1278	Cascavel	62850000
6	1279	Castanhão	62975000
6	1280	Catarina	63595000
6	1281	Catolé	63613000
6	1282	Catuana	61680000
6	1283	Catunda	62297000
6	1284	Caucaia	00000000
6	1285	Caxitoré	62614000
6	1286	Caxitoré	62664000
6	1287	Cedro	63400000
6	1288	Cemoaba	62657000
6	1289	Chaval	62420000
6	1290	Choró	63950000
6	1291	Chorozinho	62875000
6	1292	Cipó Dos Anjos	63925000
6	1293	Cococi	63685000
6	1294	Codiá	63603000
6	1295	Coité	63212000
6	1296	Colina	62774000
6	1297	Conceição	62275000
6	1298	Coreaú	62160000
6	1299	Córrego Dos Fernandes	62807000
6	1300	Crateús	63700000
6	1301	Crato	00000000
6	1302	Crioulos	63465000
6	1303	Cristais	62859000
6	1304	Croatá	62390000
6	1305	Croatá	62676000
6	1306	Croatá	62269000
6	1307	Cruxati	62525000
6	1308	Cruz	62595000
6	1309	Cruz	62603000
6	1310	Cruz de Pedra	63513000
6	1311	Cruzeirinho	63440000
6	1312	Cuncas	63395000
6	1313	Curatis	63755000
6	1314	Curupira	62758000
6	1315	Custódio	63915000
6	1316	Daniel de Queirós	63930000
6	1317	Delmiro Gouveia	62258000
6	1318	Deputado Irapuan Pinheiro	63645000
6	1319	Deserto	62502000
6	1320	Dom Leme	63191000
6	1321	Dom Maurício	63945000
6	1322	Dom Quintino	63137000
6	1323	Domingos da Costa	63880000
6	1324	Donato	62259000
6	1325	Dourados	62884000
6	1326	Ebron	63567000
6	1327	Ema	62988000
6	1328	Ematuba	63641000
6	1329	Encantado	63810000
6	1330	Engenheiro João Tomé	62233000
6	1331	Engenheiro José Lopes	63602000
6	1332	Engenho Velho	63383000
6	1333	Ererê	63470000
6	1334	Espacinha	62207000
6	1335	Esperança	62708000
6	1336	Espinho	62388000
6	1337	Eusébio	61760000
6	1338	Farias Brito	63185000
6	1339	Fátima	62772000
6	1340	Feiticeiro	63477000
6	1341	Feitosa	63225000
6	1342	Felizardo	63345000
6	1343	Flamengo	63592000
6	1344	Flores	62253000
6	1345	Flores	62903000
6	1346	Forquilha	62115000
6	1347	Fortaleza	00000000
6	1348	Fortim	62815000
6	1349	Frecheirinha	62340000
6	1350	Gado	62782000
6	1351	Gado Dos Rodrigues	62784000
6	1352	Gameleira de São Sebastião	63208000
6	1353	Garças	62541000
6	1354	Gázea	62235000
6	1355	General Sampaio	62738000
6	1356	General Tibúrcio	62305000
6	1357	Genipapeiro	62754100
6	1358	Gereraú	61887000
6	1359	Giqui	62830000
6	1360	Girau	62807500
6	1361	Graça	62365000
6	1362	Granja	62430000
6	1363	Granjeiro	63230000
6	1364	Groairas	62190000
6	1365	Guaiúba	61890000
6	1366	Guajiru	62818000
6	1367	Guanacés	62856000
6	1368	Guaraciaba do Norte	62380000
6	1369	Guaramiranga	62766000
6	1370	Guararu	61690000
6	1371	Guassi	62794000
6	1372	Guassossé	63527000
6	1373	Guia	63885000
6	1374	Guriú	62408000
6	1375	Hidrolândia	62270000
6	1376	Holanda	63760000
6	1377	Horizonte	62880000
6	1378	Iapi	63643000
6	1379	Iara	63390000
6	1380	Ibaretama	63970000
6	1381	Ibiapaba	63725000
6	1382	Ibiapina	62360000
6	1383	Ibicatu	63558000
6	1384	Ibicuã	63608000
6	1385	Ibicuitaba	62813000
6	1386	Ibicuitinga	62955000
6	1387	Iborepi	63303000
6	1388	Ibuaçu	63890000
6	1389	Ibuguaçu	62448000
6	1390	Icapuí	62810000
6	1391	Icaraí	62545000
6	1392	Icó	63430000
6	1393	Icozinho	63445000
6	1394	Ideal	62754000
6	1395	Igaroi	63528000
6	1396	Iguatu	63500000
6	1397	Independência	63640000
6	1398	Ingazeiras	63370000
6	1399	Inhamuns	63666000
6	1400	Inhuçu	62373000
6	1401	Inhuporanga	62734000
6	1402	Ipaporanga	62215000
6	1403	Ipaumirim	63340000
6	1404	Ipu	62250000
6	1405	Ipueiras	62230000
6	1406	Ipueiras Dos Gomes	62715000
6	1407	Iracema	62980000
6	1408	Irajá	62278000
6	1409	Irapuã	63728000
6	1410	Iratinga	62608000
6	1411	Irauçuba	62620000
6	1412	Isidoro	63563000
6	1413	Itacima	61893000
6	1414	Itaguá	63152000
6	1415	Itaiçaba	62820000
6	1416	Itaipaba	62872000
6	1417	Itaitinga	61880000
6	1418	Itans	62746000
6	1419	Itapagé	62600000
6	1420	Itapebussu	61988000
6	1421	Itapeim	62843000
6	1422	Itapipoca	62500000
6	1423	Itapiúna	62740000
6	1424	Itapó	61877000
6	1425	Itarema	62590000
6	1426	Itatira	62720000
6	1427	Jaburuna	62354000
6	1428	Jacampari	63895000
6	1429	Jacarecoara	62855000
6	1430	Jacaúna	61752000
6	1431	Jaguarão	62754050
6	1432	Jaguaretama	63480000
6	1433	Jaguaribara	63490000
6	1434	Jaguaribe	63475000
6	1435	Jaguaruana	62823000
6	1436	Jaibaras	62107000
6	1437	Jamacaru	63207000
6	1438	Jandrangoeira	63642000
6	1439	Jardim	63290000
6	1440	Jardim	62684000
6	1441	Jardimirim	63295000
6	1442	Jati	63275000
6	1443	Jijoca de Jericoacoara	62598000
6	1444	João Cordeiro	62158000
6	1445	Jordão	62108000
6	1446	José de Alencar	63505000
6	1447	Juá	62628000
6	1448	Juá	63940000
6	1449	Juatama	63910000
6	1450	Juazeiro de Baixo	62945000
6	1451	Juazeiro do Norte	00000000
6	1452	Jubaia	61955000
6	1453	Jucás	63580000
6	1454	Jurema	00000000
6	1455	Justiniano Serpa	61751000
6	1456	Lacerda	63820000
6	1457	Ladeira Grande	61953000
6	1458	Lagoa de São José	62754150
6	1459	Lagoa do Juvenal	61991000
6	1460	Lagoa do Mato	62725000
6	1461	Lagoa Dos Crioulos	63158000
6	1462	Lagoa Grande	62542000
6	1463	Lagoa Grande	62942000
6	1464	Lagoa Grande	62902000
6	1465	Lagoinha	62922000
6	1466	Lambedouro	62308000
6	1467	Lameiro	63134000
6	1468	Lavras da Mangabeira	63300000
6	1469	Lima Campos	63435000
6	1470	Limoeiro do Norte	62930000
6	1471	Lisieux	62293000
6	1472	Livramento	62238000
6	1473	Logradouro	62292000
6	1474	Macambira	62225000
6	1475	Macaóca	63865000
6	1476	Macaraú	62285000
6	1477	Maceió	62819000
6	1478	Madalena	63860000
6	1479	Major Simplício	62208000
6	1480	Majorlândia	62809000
6	1481	Malhada Grande	62294000
6	1482	Mangabeira	63307000
6	1483	Manibu	62814000
6	1484	Manituba	63830000
6	1485	Mapuá	63476000
6	1486	Maracanaú	00000000
6	1487	Maraguá	63218000
6	1488	Maranguape	00000000
6	1489	Mararupá	63216000
6	1490	Marco	62560000
6	1491	Marinheiros	62520000
6	1492	Marrecas	63664000
6	1493	Marrocos	63084000
6	1494	Marruás	63665000
6	1495	Martinópole	62450000
6	1496	Massapê	62140000
6	1497	Mata Fresca	62808000
6	1498	Matias	62645000
6	1499	Matriz	62232000
6	1500	Mauriti	63210000
6	1501	Mel	63587000
6	1502	Meruoca	62130000
6	1503	Messejana	00000000
6	1504	Miguel Xavier	63228000
6	1505	Milagres	63250000
6	1506	Milhã	63635000
6	1507	Milton Belo	62754200
6	1508	Mineirolândia	63632000
6	1509	Miragem	63223000
6	1510	Miraíma	62530000
6	1511	Mirambé	61685000
6	1512	Missão Nova	63203000
6	1513	Missão Velha	63200000
6	1514	Missi	62625000
6	1515	Moitas	62543000
6	1516	Mombaça	63610000
6	1517	Mondubim	00000000
6	1518	Monguba	61860000
6	1519	Monsenhor Tabosa	63780000
6	1520	Monte Alegre	63389000
6	1521	Monte Alegre	62703000
6	1522	Monte Castelo	63154100
6	1523	Monte Grave	63639000
6	1524	Monte Sion	63695000
6	1525	Montenebo	63715000
6	1526	Morada Nova	62940000
6	1527	Moraújo	62480000
6	1528	Morrinhos	62550000
6	1529	Morrinhos Novos	62386000
6	1530	Morro Branco	62727000
6	1531	Mucambo	62170000
6	1532	Mulungu	62764000
6	1533	Mulungu	63606000
6	1534	Mumbaba	62142000
6	1535	Mundau	62695000
6	1536	Muribeca	62296000
6	1537	Muriti	00000000
6	1538	Mutambeiras	62154000
6	1539	Naraniu	63550000
6	1540	Nascente	62544000
6	1541	Nenenlândia	63814000
6	1542	Nossa Senhora do Livramento	63790000
6	1543	Nova Betânia	63187000
6	1544	Nova Betânia	62205000
6	1545	Nova Fátima	62245000
6	1546	Nova Floresta	63478000
6	1547	Nova Olinda	63165000
6	1548	Nova Russas	62200000
6	1549	Nova Vida	63980000
6	1550	Novo Assis	63690000
6	1551	Novo Oriente	63740000
6	1552	Novo Oriente	62759100
6	1553	Ocara	62755000
6	1554	Oiticica	63730000
6	1555	Oiticica	63984000
6	1556	Olho-d Água	62113000
6	1557	Olho-d Água da Bica	62964000
6	1558	Oliveiras	63775000
6	1559	Orós	63520000
6	1560	Pacajus	62870000
6	1561	Pacatuba	61800000
6	1562	Pacoti	62770000
6	1563	Pacujá	62180000
6	1564	Padre Cícero	63082000
6	1565	Padre Linhares	62146000
6	1566	Padre Vieira	62315000
6	1567	Pajeú	63172000
6	1569	Palestina	63215000
6	1570	Palestina	63525000
6	1571	Palestina do Norte	62134000
6	1572	Palhano	62910000
6	1573	Palmácia	62780000
6	1574	Palmatória	62744000
6	1575	Panacuí	62565000
6	1576	Paracuá	62465000
6	1577	Paracuru	62680000
6	1578	Paraipaba	62685000
6	1579	Parajuru	62848000
6	1580	Parambu	63680000
6	1581	Paramoti	62736000
6	1582	Parangaba	00000000
6	1583	Parapuí	62156000
6	1584	Parazinho	62437000
6	1585	Paripueira	62844000
6	1586	Passagem	62425000
6	1587	Passagem	63835000
6	1588	Passagem Funda	62754350
6	1589	Pasta	63622000
6	1590	Patacas	61756000
6	1591	Patriarca	62104000
6	1592	Pavuna	61870000
6	1593	Pecém	62674000
6	1594	Pedra Branca	63630000
6	1595	Pedra Branca	62754250
6	1596	Pedras	62943000
6	1597	Pedrinhas	63455000
6	1598	Peixe	62907000
6	1599	Peixe Gordo	62962000
6	1600	Penaforte	63280000
6	1601	Pentecoste	62640000
6	1602	Pereiro	63460000
6	1603	Pernambuquinho	62768000
6	1604	Pessoa Anta	62445000
6	1605	Pindoguaba	62330000
6	1606	Pindoretama	62860000
6	1607	Pio X	63315000
6	1608	Piquet Carneiro	63605000
6	1609	Pirabibu	63802000
6	1610	Pirangi	63982000
6	1611	Pires Ferreira	62255000
6	1612	Pitombeira	62606000
6	1613	Pitombeiras	62858000
6	1614	Plácido Martins	62754300
6	1615	Poço	63268000
6	1616	Poço Comprido	62546000
6	1617	Poço Comprido	63495000
6	1618	Poço Grande	63588000
6	1619	Podimirim	63255000
6	1620	Ponta da Serra	63138000
6	1621	Poranga	62220000
6	1622	Porfirio Sampaio	62648000
6	1623	Porteiras	63270000
6	1624	Potengi	63160000
6	1625	Poti	63720000
6	1626	Potiretama	62990000
6	1627	Prata	62575000
6	1628	Prudente de Morais	63815000
6	1629	Quatiguaba	62310000
6	1630	Queimadas	62886000
6	1631	Quimami	63205000
6	1632	Quincoé	63562000
6	1633	Quincuncá	63188000
6	1634	Quitaiús	63308000
6	1635	Quiterianópolis	63650000
6	1636	Quixadá	63900000
6	1637	Quixariú	63154000
6	1638	Quixelô	63515000
6	1639	Quixeramobim	63800000
6	1640	Quixeré	62920000
6	1641	Quixoá	63502000
6	1642	Raimundo Martins	62295000
6	1643	Redenção	62790000
6	1644	Reriutaba	62260000
6	1645	Riachão do Banabuiú	63631000
6	1646	Riacho Grande	63178000
6	1647	Riacho Verde	63548000
6	1648	Riacho Vermelho	63511000
6	1649	Rinaré	63965000
6	1650	Roldão	62948000
6	1651	Russas	62900000
6	1652	Sabiaguaba	62547000
6	1653	Saboeiro	63590000
6	1654	Sacramento	62218000
6	1655	Salão	62475000
6	1656	Salitre	63155000
6	1657	Sambaíba	62433000
6	1658	Santa Ana	62776000
6	1659	Santa Fé	63136000
6	1660	Santa Felícia	63565000
6	1661	Santa Luzia	62652000
6	1662	Santa Quitéria	62280000
6	1663	Santa Tereza	62808500
6	1664	Santa Tereza	63668000
6	1665	Santana	63735000
6	1666	Santana do Acaraú	62150000
6	1667	Santana do Cariri	63190000
6	1668	Santarém	63523000
6	1669	Santo Antônio	63561000
6	1670	Santo Antônio	62213000
6	1671	Santo Antônio	63385000
6	1672	Santo Antônio	63705000
6	1673	Santo Antônio da Pindoba	62363000
6	1674	Santo Antônio Dos Fernandes	62138000
6	1675	São Bartolomeu	63533000
6	1676	São Benedito	62370000
6	1677	São Domingos	62732000
6	1678	São Felipe	63265000
6	1679	São Francisco	63652000
6	1680	São Francisco	62136000
6	1681	São Gerardo	62792000
6	1682	São Gonçalo do Amarante	62670000
6	1683	São Gonçalo do Umari	63617000
6	1684	São João de Deus	62908000
6	1685	São João do Jaguaribe	62965000
6	1686	São João Dos Queiroz	63948000
6	1687	São Joaquim	62663000
6	1688	São Joaquim do Salgado	63604000
6	1689	São José	63245000
6	1690	São José	62984000
6	1691	São José	62825000
6	1692	São José	62913000
6	1693	São José Das Lontras	62248000
6	1694	São José de Solonópole	63621000
6	1695	São José do Torto	62105000
6	1696	São Luís do Curu	62665000
6	1697	São Miguel	63219000
6	1698	São Miguel	63825000
6	1699	São Paulo	63568000
6	1700	São Pedro	63585000
6	1701	São Pedro	62209000
6	1702	São Romão	63198000
6	1703	São Sebastião	63535000
6	1704	São Vicente	63450000
6	1705	São Vicente	63618000
6	1706	Sapo	62152000
6	1707	Sapupara	61950000
6	1708	Sebastião de Abreu	62642000
6	1709	Senador Carlos Jereissati	61865000
6	1710	Senador Pompeu	63600000
6	1711	Senador Sá	62470000
6	1712	Sereno de Cima	62759200
6	1713	Serra do Félix	62846000
6	1714	Serragem	62759300
6	1715	Serrota	63392000
6	1716	Serrota	62477000
6	1717	Serrote	63507000
6	1718	Serrote	62678000
6	1719	Sitiá	63962000
6	1720	Sítios Novos	61695000
6	1721	Siupê	62675000
6	1722	Sobral	00000000
6	1723	Soledade	62607000
6	1724	Solonópole	63620000
6	1725	Suassurana	63510000
6	1726	Sucatinga	62842000
6	1727	Sucesso	63765000
6	1728	Sussuanha	62385000
6	1729	Tabainha	62335000
6	1730	Taboleiro	63573000
6	1731	Tabuleiro do Norte	62960000
6	1732	Taíba	62677000
6	1733	Tamboril	63750000
6	1734	Tanques	61976000
6	1735	Tapera	61758000
6	1736	Taperuaba	62106000
6	1737	Tapuiara	63935000
6	1738	Targinos	62713000
6	1739	Tarrafas	63145000
6	1740	Tauá	63660000
6	1741	Tejuçuoca	62610000
6	1742	Tianguá	62320000
6	1743	Timonha	62440000
6	1744	Tipi	63365000
6	1745	Tomé	62924000
6	1746	Trairi	62690000
6	1747	Trapiá	62283000
6	1748	Trapiá	62110000
6	1749	Trici	63663000
6	1750	Tróia	63633000
6	1751	Trussu	63564000
6	1752	Tucunduba	61688000
6	1753	Tucuns	63710000
6	1754	Tuína	62141000
6	1755	Tururu	62655000
6	1756	Ubajara	62350000
6	1757	Ubaúna	62168000
6	1758	Ubiraçu	62710000
6	1759	Uiraponga	62950000
6	1760	Umari	63310000
6	1761	Umarituba	62672000
6	1762	Umburanas	63214000
6	1763	Umirim	62660000
6	1764	Uruburetama	62650000
6	1765	Uruoca	62460000
6	1766	Uruquê	63805000
6	1767	Varjota	62265000
6	1768	Várzea	63405000
6	1769	Várzea Alegre	63540000
6	1770	Várzea da Volta	62485000
6	1771	Várzea do Gilo	62254000
6	1772	Vazantes	62752000
6	1773	Ventura	62125000
6	1774	Vertentes do Lagedo	61977000
6	1775	Viçosa	62819500
6	1776	Viçosa do Ceará	62300000
6	1777	Vila Soares	62635000
6	10104	Canaúna	63342000
6	10120	Triângulo	62877000
6	10121	Cedro	62878500
6	10122	Patos Dos Liberatos	62879000
6	10123	Campestre	62879500
6	10124	Timbaúba Dos Marinheiros	62878000
6	10771	Penedo	61956000
6	10772	Umarizeiras	61959000
6	10773	Lages	61962000
6	10774	Cachoeira	61973000
6	10775	São João do Amanari	61982000
6	10776	Papara	61967000
6	10777	Jubaia	61971000
6	10778	Manoel Guedes	61984000
7	1778	Brasília	00000000
7	1779	Brazlândia	00000000
7	1780	Candangolândia	00000000
7	1781	Ceilândia	00000000
7	1782	Cruzeiro	00000000
7	1783	Gama	00000000
7	1784	Guará	00000000
7	1785	Lago Norte	00000000
7	1786	Lago Sul	00000000
7	1787	Núcleo Bandeirante	00000000
7	1788	Paranoá	00000000
7	1789	Planaltina	00000000
7	1790	Recanto Das Emas	00000000
7	1791	Riacho Fundo	00000000
7	1792	Samambaia	00000000
7	1793	Santa Maria	00000000
7	1794	São Sebastião	00000000
7	1795	Sobradinho	00000000
7	1796	Taguatinga	00000000
8	1797	Acioli	29687000
8	1798	Afonso Cláudio	29600000
8	1799	Aghá	29287000
8	1800	Água Doce do Norte	29820000
8	1801	Águia Branca	29795000
8	1802	Airituba	29477000
8	1803	Alegre	29500000
8	1804	Alfredo Chaves	29240000
8	1805	Alto Calçado	29475000
8	1806	Alto Caldeirão	29656000
8	1807	Alto Mutum Preto	29737000
8	1808	Alto Rio Novo	29760000
8	1809	Alto Santa Maria	29662000
8	1810	Anchieta	29230000
8	1811	Ângelo Frechiani	00000000
8	1812	Anutiba	29530000
8	1813	Apiacá	29450000
8	1814	Araçatiba	29138000
8	1815	Aracê	29278000
8	1816	Aracruz	00000000
8	1817	Aracui	29365000
8	1818	Araguaia	29258000
8	1819	Araraí	29535000
8	1820	Argolas	00000000
8	1821	Atílio Vivácqua	29490000
8	1822	Baía Nova	00000000
8	1823	Baixo Guandu	29730000
8	1824	Barra de Novo Brasil	29723000
8	1825	Barra de São Francisco	29800000
8	1826	Barra do Itapemirim	29349000
8	1827	Barra Nova	00000000
8	1828	Barra Seca	29954000
8	1829	Baunilha	00000000
8	1830	Bebedouro	00000000
8	1831	Boa Esperança	29845000
8	1832	Boapaba	00000000
8	1833	Bom Jesus do Norte	29460000
8	1834	Bonsucesso	29458000
8	1835	Braço do Rio	29967000
8	1836	Brejetuba	29630000
8	1837	Burarama	29327000
8	1838	Cachoeirinha de Itaúna	29805000
8	1839	Cachoeiro de Itapemirim	00000000
8	1840	Café	29515000
8	1841	Calogi	00000000
8	1842	Câmara	29485000
8	1843	Carapina	00000000
8	1844	Cariacica	00000000
8	1845	Castelo	29360000
8	1846	Celina	29510000
8	1847	Colatina	00000000
8	1848	Conceição da Barra	29960000
8	1849	Conceição do Castelo	29370000
8	1850	Conceição do Muqui	29410000
8	1851	Conduru	29329000
8	1852	Praia do Coqueiral	00000000
8	1853	Córrego Dos Monos	29328000
8	1854	Cotaxé	29855000
8	1855	Cristal do Norte	29978000
8	1856	Crubixá	29242000
8	1857	Desengano	00000000
8	1858	Divino de São Lourenço	29590000
8	1859	Divino Espírito Santo	29479000
8	1860	Djalma Coutinho	29642000
8	1861	Domingos Martins	29260000
8	1862	Dona América	29445000
8	1863	Dores do Rio Preto	29580000
8	1864	Duas Barras	29283000
8	1865	Ecoporanga	29850000
8	1866	Estrela do Norte	29367000
8	1867	Fartura	29783000
8	1868	Fazenda Guandu	29609000
8	1869	Fundão	29185000
8	1870	Garrafão	29649000
8	1871	Gironda	29326000
8	1872	Goiabeiras	00000000
8	1873	Governador Lacerda de Aguiar	29826000
8	1874	Governador Lindenberg	29720000
8	1875	Graça Aranha	00000000
8	1876	Gruta	29324000
8	1877	Guaçuí	29560000
8	1878	Vila Guaraná	00000000
8	1879	Guarapari	00000000
8	1880	Guararema	29842000
8	1881	Ibatiba	29395000
8	1882	Ibes	00000000
8	1883	Ibicaba	29612000
8	1884	Ibiraçu	29670000
8	1885	Ibitirama	29540000
8	1886	Ibitiruí	29244000
8	1887	Ibituba	29740000
8	1888	Iconha	29280000
8	1889	Imburana	29853000
8	1890	Iriritiba	29238000
8	1891	Irundi	29189000
8	1892	Irupi	29398000
8	1893	Isabel	29263000
8	1894	Itabaiana	29884000
8	1895	Itaçu	29697000
8	1896	Itaguaçu	29690000
8	1897	Itaicí	29388000
8	1898	Itaimbé	29695000
8	1899	Itaipava	29338000
8	1900	Itamira	29889000
8	1901	Itaóca	29325000
8	1902	Itapecoá	29335000
8	1903	Itapemirim	29330000
8	1904	Itaperuna	29812000
8	1905	Itapina	00000000
8	1906	Itaquari	00000000
8	1907	Itarana	29620000
8	1908	Itaúnas	29965000
8	1909	Itauninhas	29948000
8	1910	Iúna	29390000
8	1911	Jabaquara	29236000
8	1912	Jacaraipe	00000000
8	1913	Jaciguá	29297000
8	1914	Jacupemba	00000000
8	1915	Jaguaré	29950000
8	1916	Jerônimo Monteiro	29550000
8	1917	Joaçuba	29860000
8	1918	João Neiva	29680000
8	1919	Joatuba	29617000
8	1920	José Carlos	29455000
8	1921	Jucu	00000000
8	1922	Lajinha	29755000
8	1923	Laranja da Terra	29615000
8	1924	Limoeiro	29369000
8	1925	Linhares	00000000
8	1926	Mangaraí	29644000
8	1927	Mantenópolis	29770000
8	1928	Marataízes	29345000
8	1929	Marechal Floriano	29255000
8	1930	Marilândia	29725000
8	1931	Matilde	29248000
8	1932	Melgaço	29276000
8	1933	Menino Jesus	29384000
8	1934	Mimoso do Sul	29400000
8	1935	Montanha	29890000
8	1936	Monte Carmelo do Rio Novo	29767000
8	1937	Monte Pio	29368000
8	1938	Monte Sinai	29807000
8	1939	Mucurici	29880000
8	1940	Mundo Novo	29585000
8	1941	Muniz Freire	29380000
8	1942	Muqui	29480000
8	1943	Nestor Gomes	29949000
8	1944	Nova Almeida	00000000
8	1945	Nova Canaã	29333000
8	1946	Nova Venécia	29830000
8	1947	Nova Verona	29947000
8	1948	Novo Brasil	29724000
8	1949	Novo Horizonte	29852000
8	1950	Pacotuba	29323000
8	1951	Paineiras	29342000
8	1952	Palmeira	29699000
8	1953	Palmerino	29764000
8	1954	Pancas	29750000
8	1955	Paraju	29273000
8	1956	Paulista	29815000
8	1957	Pedro Canário	29970000
8	1958	Pendanga	29675000
8	1959	Pequiá	29392000
8	1960	Perdição	29394000
8	1961	Piaçu	29386000
8	1962	Pinheiros	29980000
8	1963	Piracema	29607000
8	1964	Piúma	29285000
8	1965	Ponte de Itabapoana	29440000
8	1966	Ponto Belo	29885000
8	1967	Pontões	29604000
8	1968	Porangá	29817000
8	1969	Barra do Riacho	00000000
8	1970	Praia Grande	29187000
8	1971	Presidente Kennedy	29350000
8	1972	Princesa	29293000
8	1973	Queimado	00000000
8	1974	Quilômetro 14 do Mutum	29735000
8	1975	Regência	00000000
8	1976	Riacho	00000000
8	1977	Ribeirão do Cristo	29250000
8	1978	Rio Bananal	29920000
8	1979	Rio Calçado	00000000
8	1980	Rio Muqui	29340000
8	1981	Rio Novo do Sul	29290000
8	1982	Rio Preto	29841000
8	1983	Rive	29520000
8	1984	Sagrada Família	29253000
8	1985	Santa Angélica	29525000
8	1986	Santa Cruz	00000000
8	1987	Santa Júlia	29669000
8	1988	Santa Leopoldina	29640000
8	1989	Santa Luzia de Mantenópolis	29772000
8	1990	Santa Luzia do Azul	29823000
8	1991	Santa Luzia do Norte	29856000
8	1992	Santa Maria de Jetibá	29645000
8	1993	Santa Marta	29545000
8	1994	Santa Teresa	29650000
8	1995	Santa Terezinha	29875000
8	1996	Santíssima Trindade	29393000
8	1997	Santo Agostinho	29824000
8	1998	Santo Antônio	29810000
8	1999	Santo Antônio do Canaã	29654000
8	2000	Santo Antônio do Muqui	29407000
8	2001	Santo Antônio do Pousalegre	29848000
8	2002	Santo Antônio do Quinze	29839000
8	2003	São Domingos do Norte	29745000
8	2004	São Francisco	29748000
8	2005	São Francisco Xavier do Guandu	29613000
8	2006	São Gabriel da Palha	29780000
8	2007	São Geraldo	29776000
8	2008	São Jacinto	29667000
8	2009	São João de Petrópolis	29660000
8	2010	São João de Viçosa	29378000
8	2011	São João do Sobrado	29985000
8	2013	São Jorge do Oliveira	29635000
8	2014	São Jorge do Tiradentes	29925000
8	2015	São José Das Torres	29420000
8	2016	São José de Mantenópolis	29778000
8	2017	São José do Calçado	29470000
8	2018	São José do Sobradinho	29847000
8	2019	São Mateus	00000000
8	2020	São Pedro	29389000
8	2021	São Pedro de Itabapoana	29405000
8	2022	São Pedro de Rates	29564000
8	2023	São Rafael	29918000
8	2024	São Roque do Canaã	29665000
8	2025	São Tiago	29562000
8	2026	São Torquato	00000000
8	2027	Sapucaia	29728000
8	2028	Serra	00000000
8	2029	Serra Pelada	29603000
8	2030	Sobreiro	29619000
8	2031	Sooretama	29927000
8	2032	Timbuí	29188000
8	2033	Todos Os Santos	29228000
8	2034	Urânia	29246000
8	2035	Vargem Alta	29295000
8	2036	Vargem Grande do Soturno	29321000
8	2037	Venda Nova do Imigrante	29375000
8	2038	Viana	29135000
8	2039	Vieira Machado	29383000
8	2040	Vila Nelita	29822000
8	2041	Vila Nova de Bananal	29742000
8	2042	Vila Pavão	29843000
8	2043	Vila Valério	29785000
8	2044	Vila Velha	00000000
8	2045	Vila Verde	29752000
8	2046	Vinhático	29894000
8	2047	Vinte E Cinco de Julho	29652000
8	2048	Vitória	00000000
8	10105	São João do Norte	29537000
8	10106	São Raimundo da Pedra Menina	29588000
8	10107	Santa Cruz de Irupi	29399000
8	10108	São João do Príncipe	29391000
8	10109	Nossa Senhora de Fátima	29957000
8	10110	Santa Maria de Marechal	29259000
8	10111	Alto Castelinho	29296000
8	10112	Prosperidade	29299000
8	10113	São José de Fruteiras	29298000
8	10114	São Jorge da Barra Seca	29790000
8	10115	Jurama	29793000
8	10711	Barra do Sahy	00000000
9	7373	Alto Alegre	69350000
9	7374	Amajari	69343000
9	7375	Boa Vista	00000000
9	7376	Bonfim	69380000
9	7377	Cantá	69390000
9	7378	Caracaraí	69360000
9	7379	Caroebe	69378000
9	7380	Iracema	69348000
9	7381	Mucajaí	69340000
9	7382	Normandia	69355000
9	7383	Pacaraima	69345000
9	7384	Rorainópolis	69373000
9	7385	São João da Baliza	69375000
9	7386	São Luiz	69370000
9	7387	Uiramutã	69358000
9	10861	Santa Cecília	69395000
9	10862	Félix Pinto	69397000
9	10863	Taboca	69399000
9	10864	Novo Paraíso	69365000
10	2049	Abadia de Goiás	75345000
10	2050	Abadiânia	72940000
10	2051	Acreúna	75960000
10	2052	Adelândia	76155000
10	2053	Água Fria de Goiás	73780000
10	2054	Água Limpa	75665000
10	2055	Águas Lindas de Goiás	72910000
10	2056	Alexânia	72920000
10	2057	Aloândia	75615000
10	2058	Alto Alvorada	75283000
10	2059	Alto Horizonte	76560000
10	2060	Alto Paraíso de Goiás	73770000
10	2061	Alvorada do Norte	73950000
10	2062	Amaralina	76493000
10	2063	Americano do Brasil	76165000
10	2064	Amorinópolis	76140000
10	2065	Anápolis	00000000
10	2066	Anhangüera	75770000
10	2067	Anicuns	76170000
10	2068	Aparecida	76163000
10	2069	Aparecida de Goiânia	00000000
10	2070	Aparecida de Goiás	76363000
10	2071	Aparecida do Rio Claro	76256000
10	2072	Aparecida do Rio Doce	75827000
10	2073	Aporé	75825000
10	2074	Araçu	75410000
10	2075	Aragarças	76240000
10	2076	Aragoiânia	75360000
10	2077	Araguapaz	76720000
10	2078	Arenópolis	76235000
10	2079	Aruanã	76710000
10	2080	Aurilândia	76120000
10	2081	Auriverde	76513000
10	2082	Avelinópolis	75395000
10	2083	Bacilândia	76222000
10	2084	Baliza	76250000
10	2085	Bandeirantes	76523000
10	2086	Barbosilândia	73907000
10	2087	Barro Alto	76390000
10	2088	Bela Vista de Goiás	75240000
10	2089	Bom Jardim de Goiás	76245000
10	2090	Bom Jesus de Goiás	75570000
10	2091	Bonfinópolis	75195000
10	2092	Bonópolis	76555000
10	2093	Brazabrantes	75440000
10	2094	Britânia	76280000
10	2095	Buenolândia	76606000
10	2096	Buriti Alegre	75660000
10	2097	Buriti de Goiás	76152000
10	2098	Buritinópolis	73975000
10	2099	Cabeceiras	73870000
10	2100	Cachoeira Alta	75870000
10	2101	Cachoeira de Goiás	76125000
10	2102	Cachoeira Dourada	75560000
10	2103	Caçu	75813000
10	2104	Caiapônia	75850000
10	2105	Caiçara	76742000
10	2106	Calcilândia	76604000
10	2107	Caldas Novas	75690000
10	2108	Caldazinha	75245000
10	2109	Calixto	75158000
10	2110	Campestre de Goiás	75385000
10	2111	Campinaçu	76440000
10	2112	Campinorte	76410000
10	2113	Campo Alegre de Goiás	75795000
10	2114	Campo Limpo	75545000
10	2115	Campolândia	76133000
10	2116	Campos Belos	73840000
10	2117	Campos Verdes	76515000
10	2118	Cana Brava	76458000
10	2119	Canadá	76274000
10	2120	Capelinha	76174000
10	2121	Caraíba	75263000
10	2122	Carmo do Rio Verde	76340000
10	2123	Castelândia	75925000
10	2124	Castrinópolis	76313000
10	2125	Catalão	00000000
10	2126	Caturaí	75430000
10	2127	Cavalcante	73790000
10	2128	Cavalheiro	75783000
10	2129	Cebrasa	75156000
10	2130	Ceres	76300000
10	2131	Cezarina	76195000
10	2132	Chapadão do Céu	75828000
10	2133	Choupana	76172000
10	2134	Cibele	76682000
10	2135	Cidade Ocidental	72880000
10	2136	Cirilândia	76323000
10	2137	Cocalzinho de Goiás	72975000
10	2138	Colinas do Sul	73740000
10	2139	Córrego do Ouro	76145000
10	2140	Córrego Rico	73759000
10	2141	Corumbá de Goiás	72960000
10	2142	Corumbaíba	75680000
10	2143	Cristalina	73850000
10	2144	Cristianópolis	75230000
10	2145	Crixás	76510000
10	2146	Cromínia	75635000
10	2147	Cruzeiro do Norte	76554000
10	2148	Cumari	75760000
10	2149	Damianópolis	73980000
10	2150	Damolândia	75420000
10	2151	Davidópolis	76602000
10	2152	Davinópolis	75730000
10	2153	Diolândia	76683000
10	2154	Diorama	76260000
10	2155	Divinópolis de Goiás	73865000
10	2156	Domiciano Ribeiro	75784000
10	2157	Doverlândia	75855000
10	2158	Edealina	75945000
10	2159	Edéia	75940000
10	2160	Estrela do Norte	76485000
10	2161	Faina	76740000
10	2162	Fazenda Nova	76220000
10	2163	Firminópolis	76105000
10	2164	Flores de Goiás	73890000
10	2165	Formosa	00000000
10	2166	Formoso	76470000
10	2167	Forte	73764000
10	2168	Gameleira de Goiás	75184000
10	2169	Geriaçu	76402000
10	2170	Goialândia	75151000
10	2171	Goianápolis	75170000
10	2172	Goiandira	75740000
10	2173	Goianésia	76380000
10	2174	Goiânia	00000000
10	2175	Goianira	75370000
10	2176	Goiás	76600000
10	2177	Goiatuba	75600000
10	2178	Gouvelândia	75865000
10	2179	Guapó	75350000
10	2180	Guaraíta	76690000
10	2181	Guarani de Goiás	73910000
10	2182	Guarinos	76385000
10	2183	Heitoraí	76670000
10	2184	Hidrolândia	75340000
10	2185	Hidrolina	76375000
10	2186	Iaciara	73920000
10	2187	Inaciolândia	75550000
10	2188	Indiara	75955000
10	2189	Inhumas	75400000
10	2190	Interlândia	75152000
10	2191	Ipameri	75780000
10	2192	Iporá	76200000
10	2193	Israelândia	76205000
10	2194	Itaberaí	76630000
10	2195	Itaguaçu	75893000
10	2196	Itaguari	76650000
10	2197	Itaguaru	76660000
10	2198	Itajá	75815000
10	2199	Itapaci	76360000
10	2200	Itapirapuã	76290000
10	2201	Itapuranga	76680000
10	2202	Itarumã	75810000
10	2203	Itauçu	75450000
10	2204	Itumbiara	00000000
10	2205	Ivolândia	76130000
10	2206	Jacilândia	76293000
10	2207	Jandaia	75950000
10	2208	Jaraguá	76330000
10	2209	Jataí	00000000
10	2210	Jaupaci	76210000
10	2211	Jeroaquara	76744000
10	2212	Jesúpolis	75495000
10	2213	Joanápolis	75157000
10	2214	Joviânia	75610000
10	2216	Juscelino Kubitschek	76478000
10	2217	Jussara	76270000
10	2218	Lagoa do Bauzinho	75912000
10	2219	Lagolândia	72984000
10	2220	Leopoldo de Bulhões	75190000
10	2221	Lucilândia	76257000
10	2222	Luziânia	00000000
10	2223	Mairipotaba	75630000
10	2224	Mambaí	73970000
10	2225	Mara Rosa	76490000
10	2226	Marcianópolis	75574000
10	2227	Marzagão	75670000
10	2228	Matrinchã	76730000
10	2229	Maurilândia	75930000
10	2230	Meia Ponte	75547000
10	2231	Messianópolis	76138000
10	2232	Mimoso de Goiás	73730000
10	2233	Minaçu	76450000
10	2234	Mineiros	75830000
10	2235	Moiporá	76135000
10	2236	Monte Alegre de Goiás	73830000
10	2237	Montes Claros de Goiás	76255000
10	2238	Montividiu	75915000
10	2239	Montividiu do Norte	76465000
10	2240	Morrinhos	75650000
10	2241	Morro Agudo de Goiás	76355000
10	2242	Mossâmedes	76150000
10	2243	Mozarlândia	76700000
10	2244	Mundo Novo	76530000
10	2245	Mutunópolis	76540000
10	2246	Natinópolis	76383000
10	2247	Nazário	76180000
10	2248	Nerópolis	75460000
10	2249	Niquelândia	76420000
10	2250	Nova América	76345000
10	2251	Nova Aurora	75750000
10	2252	Nova Crixás	76520000
10	2253	Nova Glória	76305000
10	2254	Nova Iguaçu de Goiás	76495000
10	2255	Nova Roma	73820000
10	2256	Nova Veneza	75470000
10	2257	Novo Brasil	76285000
10	2258	Novo Gama	00000000
10	2259	Novo Planalto	76580000
10	2260	Olaria do Angico	75812000
10	2261	Olhos D Água	75714100
10	2262	Orizona	75280000
10	2263	Ouro Verde de Goiás	75165000
10	2264	Ouroana	75911000
10	2265	Ouvidor	75715000
10	2266	Padre Bernardo	73700000
10	2267	Palestina de Goiás	75845000
10	2268	Palmeiras de Goiás	76190000
10	2269	Palmelo	75210000
10	2270	Palminópolis	75990000
10	2271	Panamá	75580000
10	2272	Paranaiguara	75880000
10	2273	Paraúna	75980000
10	2274	Pau-terra	76412000
10	2275	Pedra Branca	75714200
10	2276	Perolândia	75823000
10	2277	Petrolina de Goiás	75480000
10	2278	Pilar de Goiás	76370000
10	2279	Piloândia	76208000
10	2280	Piracanjuba	75640000
10	2281	Piranhas	76230000
10	2282	Pirenópolis	72980000
10	2283	Pires Belo	75714300
10	2284	Pires do Rio	75200000
10	2285	Planaltina de Goiás	00000000
10	2286	Pontalina	75620000
10	2287	Porangatu	76550000
10	2288	Porteirão	75603000
10	2289	Portelândia	75835000
10	2290	Posse	73900000
10	2291	Posse D Abadia	72944000
10	2292	Professor Jamil	75645000
10	2293	Quirinópolis	75860000
10	2294	Registro do Araguaia	76258000
10	2295	Rianápolis	76315000
10	2297	Rio Quente	75695000
10	2298	Rio Verde	00000000
10	2299	Riverlândia	75914000
10	2300	Campo Limpo de Goiás	75160000
10	2301	Rosalândia	76103000
10	2302	Rubiataba	76350000
10	2303	Sanclerlândia	76160000
10	2304	Santa Bárbara de Goiás	75390000
10	2305	Santa Cruz Das Lajes	75913000
10	2306	Santa Cruz de Goiás	75220000
10	2307	Santa Fé de Goiás	76265000
10	2308	Santa Helena de Goiás	75920000
10	2309	Santa Isabel	76320000
10	2310	Santa Rita do Araguaia	75840000
10	2311	Santa Rita do Novo Destino	76395000
10	2312	Santa Rosa	73819000
10	2313	Santa Rosa de Goiás	75455000
10	2314	Santa Tereza de Goiás	76480000
10	2315	Santa Terezinha de Goiás	76500000
10	2316	Santo Antônio da Barra	75935000
10	2317	Santo Antônio de Goiás	75375000
10	2318	Santo Antônio do Descoberto	72900000
10	2319	Santo Antônio do Rio Verde	75714000
10	2320	São Domingos	73860000
10	2321	São Francisco de Goiás	75490000
10	2322	São Gabriel de Goiás	73758000
10	2323	São João	76610000
10	2324	São João D Aliança	73760000
10	2325	São João da Paraúna	75985000
10	2326	São Luís de Montes Belos	76100000
10	2327	São Luiz do Norte	76365000
10	2328	São Luiz do Tocantins	76422000
10	2329	São Miguel do Araguaia	76590000
10	2330	São Miguel do Passa Quatro	75185000
10	2331	São Patrício	76343000
10	2332	São Sebastião do Rio Claro	76278000
10	2333	São Simão	75890000
10	2334	São Vicente	75159000
10	2335	Sarandi	75549000
10	2336	Senador Canedo	75250000
10	2337	Serra Dourada	76224000
10	2338	Serranópolis	75820000
10	2339	Silvânia	75180000
10	2340	Simolândia	73930000
10	2341	Sítio D Abadia	73990000
10	2342	Sousânia	75154000
10	2343	Taquaral de Goiás	76640000
10	2344	Taveira	76423000
10	2345	Teresina de Goiás	73795000
10	2346	Terezópolis de Goiás	75175000
10	2347	Lagoa Santa	75819000
10	2348	Três Ranchos	75720000
10	2349	Trindade	75380000
10	2350	Trombas	76460000
10	2351	Tupiracaba	76424000
10	2352	Turvânia	76110000
10	2353	Turvelândia	75970000
10	2354	Uirapuru	76525000
10	2355	Uruaçu	76400000
10	2356	Uruana	76335000
10	2357	Uruita	76338000
10	2358	Urutaí	75790000
10	2359	Uvá	76608000
10	2360	Valdelândia	76352000
10	2361	Valparaíso de Goiás	00000000
10	2362	Varjão	75355000
10	2363	Vianópolis	75260000
10	2364	Vicentinópolis	75555000
10	2365	Vila Boa	73825000
10	2367	Vila Propício	76393000
10	2368	Vila Sertaneja	76528000
10	10090	Ipiranga de Goiás	76304000
10	10144	Rialma	76310000
10	10206	Jk	73818000
10	10207	Bezerra	73817000
10	10237	São Jorge	73778000
10	10238	Campo Lindo	73858000
10	10469	Girassol	72979000
10	10470	Edilândia	72978000
10	10591	Juscelândia	76384000
10	10691	Jardim Abc de Goiás	72889000
10	10819	Olhos D Água	72935000
10	10979	Planalmira	72950000
11	2369	Açailândia	65930000
11	2370	Afonso Cunha	65505000
11	2371	Água Doce do Maranhão	65578000
11	2372	Alcântara	65250000
11	2373	Aldeias Altas	65610000
11	2374	Altamira do Maranhão	65310000
11	2375	Alto Alegre do Maranhão	65413000
11	2376	Alto Alegre do Pindaré	65398000
11	2377	Alto Parnaíba	65810000
11	2378	Amapá do Maranhão	65293000
11	2379	Amarante do Maranhão	65923000
11	2380	Anajatuba	65490000
11	2381	Anapurus	65525000
11	2382	Anil	00000000
11	2383	Apicum-açu	65275000
11	2384	Araguanã	65368000
11	2385	Araióses	65570000
11	2386	Arame	65945000
11	2387	Arari	65480000
11	2388	Aurizona	65287000
11	2389	Axixá	65108000
11	2390	Bacabal	65700000
11	2391	Bacabeira	65103000
11	2392	Bacatuba	65688000
11	2393	Bacuri	65270000
11	2394	Bacurituba	65233000
11	2395	Balsas	65800000
11	2396	Barão de Grajaú	65660000
11	2397	Barão de Tromai	65281000
11	2398	Barra do Corda	65950000
11	2399	Barreirinhas	65590000
11	2400	Barro Duro	65582000
11	2401	Bela Vista do Maranhão	65335000
11	2402	Belágua	65535000
11	2403	Benedito Leite	65885000
11	2404	Bequimão	65248000
11	2405	Bernardo do Mearim	65723000
11	2406	Boa Vista do Gurupi	65292000
11	2407	Boa Vista do Pindaré	65211000
11	2408	Bom Jardim	65380000
11	2409	Bom Jesus Das Selvas	65395000
11	2410	Bom Lugar	65704000
11	2411	Bonfim do Arari	65483000
11	2412	Brejo	65520000
11	2413	Brejo de Areia	65315000
11	2414	Brejo de São Félix	65643000
11	2415	Buriti	65515000
11	2416	Buriti Bravo	65685000
11	2417	Buriti Cortado	65639000
11	2418	Buriticupu	65393000
11	2419	Buritirama	65935500
11	2420	Cachoeira Grande	65165000
11	2421	Cajapió	65230000
11	2422	Cajari	65210000
11	2423	Campestre do Maranhão	65968000
11	2424	Cândido Mendes	65280000
11	2425	Cantanhede	65465000
11	2426	Capinzal do Norte	65735000
11	2427	Caraíba do Norte	65655000
11	2428	Carolina	65980000
11	2429	Carutapera	65295000
11	2430	Caxias	00000000
11	2431	Cedral	65260000
11	2432	Central do Maranhão	65267000
11	2433	Centro do Guilherme	65288000
11	2434	Centro Novo do Maranhão	65299000
11	2435	Chapadinha	65500000
11	2436	Cidelândia	65921000
11	2437	Codó	65400000
11	2438	Codozinho	65405000
11	2439	Coelho Neto	65620000
11	2440	Colinas	65690000
11	2441	Conceição do Lago-açu	65340000
11	2442	Coroatá	65415000
11	2443	Curupa	65815000
11	2444	Cururupu	65268000
11	2445	Curva Grande	65209000
11	2446	Custódio Lima	65565000
11	2447	Davinópolis	65927000
11	2448	Dom Pedro	65765000
11	2449	Duque Bacelar	65625000
11	2450	Esperantinópolis	65750000
11	2451	Estandarte	65282000
11	2452	Estreito	65975000
11	2453	Feira Nova do Maranhão	65995000
11	2454	Fernando Falcão	65964000
11	2455	Formosa da Serra Negra	65943000
11	2456	Fortaleza Dos Nogueiras	65805000
11	2457	Fortuna	65695000
11	2458	Frecheiras	65575000
11	2459	Godofredo Viana	65285000
11	2460	Gonçalves Dias	65775000
11	2461	Governador Archer	65770000
11	2462	Governador Edson Lobão	65928000
11	2463	Governador Eugênio Barros	65780000
11	2464	Governador Luiz Rocha	65795000
11	2465	Governador Newton Bello	65363000
11	2466	Governador Nunes Freire	65284000
11	2467	Graça Aranha	65785000
11	2468	Grajaú	65940000
11	2469	Guimarães	65255000
11	2470	Humberto de Campos	65180000
11	2471	Ibipira	65855000
11	2472	Icatu	65170000
11	2473	Igarapé do Meio	65345000
11	2474	Igarapé Grande	65720000
11	2475	Imperatriz	00000000
11	2476	Itaipava do Grajaú	65948000
11	2477	Itamataré	65298000
11	2478	Itapecuru Mirim	65485000
11	2479	Itapera	65175000
11	2480	Itinga do Maranhão	65939000
11	2481	Jatobá	65693000
11	2482	Jenipapo Dos Vieiras	65962000
11	2483	João Lisboa	65922000
11	2484	Joselândia	65755000
11	2485	Junco do Maranhão	65294000
11	2486	Lago da Pedra	65715000
11	2487	Lago do Junco	65710000
11	2488	Lago Dos Rodrigues	65712000
11	2489	Lago Verde	65705000
11	2490	Lagoa do Mato	65683000
11	2491	Lagoa Grande do Maranhão	65718000
11	2492	Lajeado Novo	65937000
11	2493	Lapela	65355000
11	2494	Leandro	65957000
11	2495	Lima Campos	65728000
11	2496	Loreto	65895000
11	2497	Luís Domingues	65290000
11	2498	Magalhães de Almeida	65560000
11	2499	Maioba	65137000
11	2500	Maracaçumé	65289000
11	2501	Marajá do Sena	65714000
11	2502	Maranhãozinho	65283000
11	2503	Marianópolis	65726000
11	2504	Mata	65115000
11	2505	Mata Roma	65510000
11	2506	Matinha	65218000
11	2507	Matões	65645000
11	2508	Matões do Norte	65468000
11	2509	Milagres do Maranhão	65545000
11	2510	Mirador	65850000
11	2511	Miranda do Norte	65495000
11	2512	Mirinzal	65265000
11	2513	Monção	65360000
11	2514	Montes Altos	65936000
11	2515	Morros	65160000
11	2516	Nina Rodrigues	65450000
11	2517	Nova Colinas	65808000
11	2518	Nova Iorque	65880000
11	2519	Nova Olinda do Maranhão	65274000
11	2520	Olho D Água Das Cunhãs	65706000
11	2521	Olinda Nova do Maranhão	65223000
11	2522	Paço do Lumiar	65130000
11	2523	Palmeirândia	65238000
11	2524	Papagaio	65955000
11	2525	Paraibano	65670000
11	2526	Parnarama	65640000
11	2527	Passagem Franca	65680000
11	2528	Pastos Bons	65870000
11	2529	Paulino Neves	65585000
11	2530	Paulo Ramos	65716000
11	2531	Pedreiras	65725000
11	2532	Pedro do Rosário	65206000
11	2533	Penalva	65213000
11	2534	Peri Mirim	65245000
11	2535	Peritoró	65418000
11	2536	Pimentel	65375000
11	2537	Pindaré Mirim	65370000
11	2538	Pinheiro	65200000
11	2539	Pio Xii	65707000
11	2540	Pirapemas	65460000
11	2541	Poção de Pedras	65740000
11	2542	Porto Das Gabarras	65493000
11	2543	Porto Franco	65970000
11	2544	Porto Rico do Maranhão	65263000
11	2545	Presidente Dutra	65760000
11	2546	Presidente Juscelino	65140000
11	2547	Presidente Médici	65279000
11	2548	Presidente Sarney	65204000
11	2549	Presidente Vargas	65455000
11	2550	Primeira Cruz	65190000
11	2551	Raposa	65138000
11	2552	Resplandes	65959000
11	2553	Riachão	65990000
11	2554	Ribamar Fiquene	65938000
11	2555	Ribeirão Azul	65658000
11	2556	Rocado	65875000
11	2557	Roque	65202000
11	2558	Rosário	65100000
11	2559	Sambaíba	65830000
11	2560	Santa Filomena do Maranhão	65768000
11	2561	Santa Helena	65208000
11	2562	Santa Inês	65300000
11	2563	Santa Luzia	65390000
11	2564	Santa Luzia do Paruá	65272000
11	2565	Santa Quitéria do Maranhão	65540000
11	2566	Santa Rita	65105000
11	2567	Santana do Maranhão	65555000
11	2568	Santo Amaro	65195000
11	2569	Santo Antônio Dos Lopes	65730000
11	2570	São Benedito do Rio Preto	65440000
11	2571	São Bento	65235000
11	2572	São Bernardo	65550000
11	2573	São Domingos do Azeitão	65888000
11	2574	São Domingos do Maranhão	65790000
11	2575	São Félix de Balsas	65890000
11	2576	São Francisco do Brejão	65929000
11	2577	São Francisco do Maranhão	65650000
11	2578	São João Batista	65225000
11	2579	São João de Cortes	65253000
11	2580	São João do Carú	65385000
11	2581	São João do Paraíso	65973000
11	2582	São João do Sóter	65615000
11	2583	São João Dos Patos	65665000
11	2584	São Joaquim Dos Melos	65764000
11	2585	São José de Ribamar	65110000
11	2586	São José Dos Basílios	65762000
11	2587	São Luís	00000000
11	2588	São Luís Gonzaga do Maranhão	65708000
11	2589	São Mateus do Maranhão	65470000
11	2590	São Pedro da Água Branca	65920000
11	2591	São Pedro Dos Crentes	65978000
11	2592	São Raimundo Das Mangabeiras	65840000
11	2593	São Raimundo de Codó	65410000
11	2594	São Raimundo do Doca Bezerra	65753000
11	2595	São Roberto	65758000
11	2596	São Vicente Ferrer	65220000
11	2597	Satubinha	65709000
11	2598	Senador Alexandre Costa	65783000
11	2599	Senador La Roque	65935000
11	2600	Serrano do Maranhão	65269000
11	2601	Sítio Novo	65925000
11	2602	Sucupira do Norte	65860000
11	2603	Sucupira do Riachão	65668000
11	2604	Tasso Fragoso	65820000
11	2605	Timbiras	65420000
11	2606	Timon	00000000
11	2607	Trizidela do Vale	65727000
11	2608	Tufilândia	65378000
11	2609	Tuntum	65763000
11	2610	Turiaçu	65278000
11	2611	Turilândia	65276000
11	2612	Tutóia	65580000
11	2613	Urbano Santos	65530000
11	2614	Vargem Grande	65430000
11	2615	Viana	65215000
11	2616	Vila Nova Dos Martírios	65924000
11	2617	Vitória do Mearim	65350000
11	2618	Vitorino Freire	65320000
11	2619	Zé Doca	65365000
12	4272	Acorizal	78480000
12	4273	Água Boa	78635000
12	4274	Água Fria	78197000
12	4275	Aguaçu	78108000
12	4276	Aguapeí	78248000
12	4277	Águas Claras	78572000
12	4278	Ainhumas	78751000
12	4279	Alcantilado	78762000
12	4280	Alta Floresta	78580000
12	4281	Alto Araguaia	78780000
12	4282	Alto Boa Vista	78665000
12	4283	Alto Coité	78803000
12	4284	Alto Garças	78770000
12	4285	Alto Juruena	78318000
12	4286	Alto Paraguai	78410000
12	4287	Alto Paraíso	78584000
12	4288	Alto Taquari	78785000
12	4289	Analândia do Norte	78534000
12	4290	Apiacás	78595000
12	4291	Araguaiana	78685000
12	4292	Araguainha	78615000
12	4293	Araputanga	78260000
12	4294	Arenápolis	78420000
12	4295	Aripuanã	78325000
12	4296	Arruda	78473000
12	4297	Assari	78394000
12	4298	Barão de Melgaço	78190000
12	4299	Barra do Bugres	78390000
12	4300	Barra do Garças	78600000
12	4301	Batovi	78776000
12	4302	Baús	78481000
12	4303	Bauxi	78474000
12	4304	Bel Rios	78401000
12	4305	Bezerro Branco	78234000
12	4306	Boa Esperança	78896000
12	4307	Boa União	78277000
12	4308	Boa Vista	78752000
12	4309	Bom Sucesso	78166000
12	4310	Brasnorte	78350000
12	4311	Buriti	78782000
12	4312	Buriti	78764000
12	4313	Cáceres	78200000
12	4314	Caite	78186000
12	4315	Campinápolis	78630000
12	4316	Campo Novo do Parecis	78360000
12	4317	Campo Verde	78840000
12	4318	Campos de Júlio	78307000
12	4319	Campos Novos	78411000
12	4320	Canabrava do Norte	78658000
12	4321	Canarana	78640000
12	4322	Cangas	78178000
12	4323	Capão Grande	78164000
12	4324	Capão Verde	78413000
12	4325	Caramujo	78236000
12	4326	Caravagio	78894000
12	4327	Carlinda	78587000
12	4328	Cassununga	78778000
12	4329	Castanheira	78345000
12	4330	Catuai	78437000
12	4331	Chapada Dos Guimarães	78195000
12	4332	Cidade Morena	78326000
12	4333	Cláudia	78540000
12	4334	Cocalinho	78680000
12	4335	Colíder	78500000
12	4336	Colorado do Norte	78518000
12	4337	Comodoro	78310000
12	4338	Confresa	78652000
12	4339	Coronel Ponce	78843000
12	4340	Cotrel	78522000
12	4341	Cotriguaçu	78330000
12	4342	Coxipó Açu	78101000
12	4343	Coxipó da Ponte	00000000
12	4344	Coxipó do Ouro	78102000
12	4345	Cristinópolis	78272000
12	4346	Cristo Rei	00000000
12	4347	Cuiabá	00000000
12	4348	Curvelândia	78237000
12	4349	Del Rios	78405000
12	4350	Denise	78380000
12	4351	Diamantino	78400000
12	4352	Dom Aquino	78830000
12	4353	Engenho	78483000
12	4354	Engenho Velho	78182000
12	4355	Entre Rios	78833000
12	4356	Estrela do Leste	78768000
12	4357	Faval	78171000
12	4358	Fazenda de Cima	78176000
12	4359	Feliz Natal	78885000
12	4360	Figueirópolis D Oeste	78290000
12	4361	Filadélfia	78321000
12	4362	Flor da Serra	78524000
12	4363	Fontanilhas	78348000
12	4364	Gaúcha do Norte	78875000
12	4365	General Carneiro	78620000
12	4366	Glória D Oeste	78293000
12	4367	Guarantã do Norte	78520000
12	4368	Guarita	78169000
12	4369	Guiratinga	78760000
12	4370	Horizonte do Oeste	78235000
12	4371	Indianápolis	78603000
12	4372	Indiavaí	78295000
12	4373	Irenópolis	78813000
12	4374	Itamarati Norte	78361000
12	4375	Itaúba	78510000
12	4376	Itiquira	78790000
12	4377	Jaciara	78820000
12	4378	Jangada	78490000
12	4379	Jarudore	78806000
12	4380	Jatobá	78823000
12	4381	Jauru	78255000
12	4382	Joselândia	78192000
12	4383	Juara	78575000
12	4384	Juína	78320000
12	4385	Juruena	78340000
12	4386	Juscimeira	78810000
12	4387	Lambari D Oeste	78278000
12	4388	Lavouras	78414000
12	4389	Lucas do Rio Verde	78455000
12	4390	Lucialva	78258000
12	4391	Luciara	78660000
12	4392	Machado	78103000
12	4393	Marcelândia	78535000
12	4394	Marzagão	78478000
12	4395	Mata Dentro	78107000
12	4396	Matupá	78525000
12	4397	Mimoso	78188000
12	4398	Mirassol D Oeste	78280000
12	4399	Nobres	78460000
12	4400	Nonoai do Norte	78502000
12	4401	Nortelândia	78430000
12	4402	Nossa Senhora da Guia	78104000
12	4403	Nossa Senhora do Livramento	78170000
12	4404	Nova Alvorada	78314000
12	4405	Nova Bandeirantes	78565000
12	4406	Nova Brasilândia	78860000
12	4407	Nova Brasília	78691000
12	4408	Nova Canãa do Norte	78515000
12	4409	Nova Catanduva	78755000
12	4410	Nova Galileia	78754000
12	4411	Nova Guarita	78508000
12	4412	Nova Lacerda	78243000
12	4413	Nova Marilândia	78415000
12	4414	Nova Maringá	78445000
12	4415	Nova Monte Verde	78593000
12	4416	Nova Mutum	78450000
12	4417	Nova Olímpia	78370000
12	4418	Nova Ubiratã	78888000
12	4419	Nova Xavantina	78690000
12	4420	Novo Diamantino	78402000
12	4421	Novo Eldorado	78574000
12	4422	Novo Horizonte do Norte	78570000
12	4423	Novo Mundo	78528000
12	4424	Novo Paraná	78562000
12	4425	Novo São Joaquim	78625000
12	4426	Padronal	78316000
12	4427	Pai André	78167000
12	4428	Paraíso do Leste	78808000
12	4429	Paranaitá	78590000
12	4430	Paranatinga	78870000
12	4431	Passagem da Conceição	78168000
12	4432	Pedra Preta	78795000
12	4433	Peixoto de Azevedo	78530000
12	4434	Pirizal	78172000
12	4435	Placa de Santo Antônio	78811000
12	4436	Planalto da Serra	78855000
12	4437	Poconé	78175000
12	4438	Pombas	78834000
12	4439	Pontal do Araguaia	78698000
12	4440	Ponte Branca	78610000
12	4441	Ponte de Pedra	78759000
12	4442	Pontes E Lacerda	78250000
12	4443	Pontinópolis	78672000
12	4444	Porto Alegre do Norte	78655000
12	4445	Porto Dos Gaúchos	78560000
12	4446	Porto Esperidião	78240000
12	4447	Porto Estrela	78398000
12	4448	Poxoréo	78800000
12	4449	Praia Rica	78198000
12	4450	Primavera	78898000
12	4451	Primavera do Leste	78850000
12	4452	Progresso	78305000
12	4453	Querência	78643000
12	4454	Rancharia	78868000
12	4455	Reserva do Cabaçal	78265000
12	4456	Ribeirão Cascalheira	78675000
12	4457	Ribeirão Dos Cocais	78173000
12	4458	Ribeirãozinho	78613000
12	4459	Rio Branco	78275000
12	4460	Rio Manso	78863000
12	4461	Riolândia	78866000
12	4462	Rondonópolis	00000000
12	4463	Rosário Oeste	78470000
12	4464	Salto do Céu	78270000
12	4465	Sangradouro	78623000
12	4466	Santa Carmem	78545000
12	4467	Santa Elvira	78816000
12	4468	Santa Fé	78288000
12	4469	Santa Rita	78463000
12	4470	Santa Terezinha	78650000
12	4471	Santaninha	78648000
12	4472	Santo Afonso	78425000
12	4473	Santo Antônio do Leverger	78180000
12	4474	Santo Antônio do Rio Bonito	78891000
12	4475	São Cristovão	78551000
12	4476	Vale de São Domingos	78253000
12	4477	São Félix do Araguaia	78670000
12	4478	São Joaquim	78306000
12	4479	São Jorge	78311000
12	4480	São José	78313000
12	4481	São José do Apuí	78583000
12	4482	São José do Planalto	78798000
12	4483	São José do Povo	78773000
12	4484	São José do Rio Claro	78435000
12	4485	São José do Xingu	78663000
12	4486	São José Dos Quatro Marcos	78285000
12	4487	São Lourenço de Fátima	78818000
12	4488	São Pedro da Cipa	78835000
12	4489	São Vicente	78106000
12	4490	Sapezal	78365000
12	4491	Selma	78828000
12	4492	Serra Nova Dourada	78668000
12	4493	Sinop	78550000
12	4494	Sonho Azul	78284000
12	4495	Sorriso	78890000
12	4496	Sumidouro	78404000
12	4497	Tabaporã	78563000
12	4498	Tangará da Serra	78300000
12	4499	Tapirapua	78396000
12	4500	Tapurah	78573000
12	4501	Terra Nova do Norte	78505000
12	4502	Terra Roxa	78322000
12	4503	Tesouro	78775000
12	4504	Toricueyje	78606000
12	4505	Torixoréu	78695000
12	4506	Três Pontes	78756000
12	4507	União do Sul	78543000
12	4508	Vale Dos Sonhos	78608000
12	4509	Vale Rico	78766000
12	4510	Varginha	78184000
12	4511	Várzea Grande	00000000
12	4512	Vera	78880000
12	4513	Vila Atlântica	78536000
12	4514	Vila Bela da Santíssima Trindade	78245000
12	4515	Vila Bueno	78757000
12	4516	Vila Mutum	78585000
12	4517	Vila Operária	78758000
12	4518	Vila Paulista	78753000
12	4519	Vila Progresso	78274000
12	4520	Vila Rica	78645000
12	4521	Novo Santo Antônio	78674000
12	10091	Conquista D Oeste	78254000
12	10092	Colniza	78335000
12	10093	Rondolândia	78338000
12	10094	Santa Rita do Trivelato	78453000
12	10095	Nova Santa Helena	78548000
12	10096	Santo Antônio do Leste	78628000
12	10097	Nova Nazaré	78638000
12	10098	Santa Cruz do Xingu	78664000
12	10099	Bom Jesus do Araguaia	78678000
12	11020	Ipiranga do Norte	78578000
12	11021	Itanhangá	78579000
13	4102	Água Boa	79452000
13	4103	Água Clara	79680000
13	4104	Albuquerque	79362000
13	4105	Alcinópolis	79530000
13	4106	Alto Sucuriú	79682000
13	4107	Amambaí	79990000
13	4108	Amandina	79742000
13	4109	Amolar	79357000
13	4110	Anastácio	79210000
13	4111	Anaurilândia	79770000
13	4112	Angélica	79785000
13	4113	Anhandui	79125000
13	4114	Antônio João	79910000
13	4115	Aparecida do Taboado	79570000
13	4116	Aquidauana	79200000
13	4117	Aral Moreira	79930000
13	4118	Arapuã	79654000
13	4119	Areado	79492000
13	4120	Árvore Grande	79502000
13	4121	Baianópolis	79462000
13	4122	Bálsamo	79182000
13	4123	Bandeirantes	79430000
13	4124	Bataguassu	79780000
13	4125	Bataiporã	79760000
13	4126	Baús	79554000
13	4127	Bela Vista	79260000
13	4128	Bocajá	79886000
13	4129	Bocajá	79923000
13	4130	Bodoquena	79390000
13	4131	Bom Fim	79442000
13	4132	Bonito	79290000
13	4133	Boqueirão	79242000
13	4134	Brasilândia	79670000
13	4135	Caarapó	79940000
13	4136	Cabeceira do Apá	79908000
13	4137	Cachoeira	79504000
13	4138	Camapuã	79420000
13	4139	Camisão	79202000
13	4140	Campestre	79912000
13	4141	Campo Grande	00000000
13	4142	Capão Seco	79174000
13	4143	Caracol	79270000
13	4144	Carumbé	79892000
13	4145	Cassilândia	79540000
13	4146	Chapadão do Sul	79560000
13	4147	Cipolândia	79208000
13	4148	Coimbra	79368000
13	4149	Congonhas	79432000
13	4150	Corguinho	79460000
13	4151	Coronel Sapucaia	79995000
13	4152	Corumbá	00000000
13	4153	Costa Rica	79550000
13	4154	Coxim	79400000
13	4155	Cristalina	79944000
13	4156	Cruzaltina	79883000
13	4157	Culturama	79702000
13	4158	Cupins	79573000
13	4159	Debrasa	79677000
13	4160	Deodápolis	79790000
13	4161	Dois Irmãos do Buriti	79215000
13	4162	Douradina	79880000
13	4163	Dourados	00000000
13	4164	Eldorado	79970000
13	4165	Fátima do Sul	79700000
13	4166	Figueirão	79428000
13	4167	Garcias	79656000
13	4168	Glória de Dourados	79730000
13	4169	Guaçu	79874000
13	4170	Guaçulândia	79734000
13	4171	Guadalupe do Alto Paraná	79658000
13	4172	Guia Lopes da Laguna	79230000
13	4173	Iguatemi	79960000
13	4174	Ilha Comprida	79652000
13	4175	Ilha Grande	79578000
13	4176	Indaiá do Sul	79542000
13	4177	Indaiá Grande	79506000
13	4178	Indápolis	79868000
13	4179	Inocência	79580000
13	4180	Ipezal	79787000
13	4181	Itahum	79864000
13	4182	Itaporã	79890000
13	4183	Itaquiraí	79965000
13	4184	Ivinhema	79740000
13	4185	Jabuti	79292000
13	4186	Jacareí	79988000
13	4187	Japorã	79985000
13	4188	Jaraguari	79440000
13	4189	Jardim	79240000
13	4190	Jateí	79720000
13	4191	Jauru	79406000
13	4192	Juscelândia	79482000
13	4193	Jutí	79955000
13	4194	Ladário	79370000
13	4195	Lagoa Bonita	79792000
13	4196	Laguna Carapã	79920000
13	4197	Maracaju	79150000
13	4198	Miranda	79380000
13	4199	Montese	79896000
13	4200	Morangas	79584000
13	4201	Morraria do Sul	79392000
13	4202	Morumbi	79972000
13	4203	Mundo Novo	79980000
13	4204	Naviraí	79950000
13	4205	Nhecolândia	79364000
13	4206	Nioaque	79220000
13	4207	Nossa Senhora de Fátima	79262000
13	4208	Nova Alvorada do Sul	79140000
13	4209	Nova América	79942000
13	4210	Nova Andradina	79750000
13	4211	Nova Esperança	79722000
13	4212	Nova Esperança	79472000
13	4213	Nova Jales	79508000
13	4214	Novo Horizonte do Sul	79745000
13	4215	Oriente	79576000
13	4216	Paiaguás	79359000
13	4217	Palmeiras	79217000
13	4218	Panambi	79876000
13	4219	Paraíso	79552000
13	4220	Paranaíba	79500000
13	4221	Paranhos	79925000
13	4222	Pedro Gomes	79410000
13	4223	Picadinha	79866000
13	4224	Pirapora	79894000
13	4225	Piraputanga	79204000
13	4226	Ponta Porã	79900000
13	4227	Ponte Vermelha	79494000
13	4228	Pontinha do Cocho	79424000
13	4229	Porto Esperança	79366000
13	4230	Porto Murtinho	79280000
13	4231	Porto Vilma	79794000
13	4232	Porto Xv de Novembro	79782000
13	4233	Presidente Castelo	79798000
13	4234	Prudêncio Thomaz	79134000
13	4235	Quebra Côco	79173000
13	4236	Quebracho	79774000
13	4237	Ribas do Rio Pardo	79180000
13	4238	Rio Brilhante	79130000
13	4239	Rio Negro	79470000
13	4240	Rio Verde de Mato Grosso	79480000
13	4241	Rochedinho	79127000
13	4242	Rochedo	79450000
13	4243	Sanga Puitã	79902000
13	4244	Santa Rita do Pardo	79690000
13	4245	Santa Terezinha	79898000
13	4246	São Gabriel do Oeste	79490000
13	4247	São João do Apore	79512000
13	4248	São José	79712000
13	4249	São José do Sucuriú	79586000
13	4250	São Pedro	79862000
13	4251	São Pedro	79582000
13	4252	São Romão	79402000
13	4253	Selvíria	79590000
13	4254	Sete Quedas	79935000
13	4255	Sidrolândia	79170000
13	4256	Sonora	79415000
13	4257	Tacuru	79975000
13	4258	Tamandaré	79514000
13	4259	Taquari	79405000
13	4260	Taquarussu	79765000
13	4261	Taunay	79206000
13	4262	Terenos	79190000
13	4263	Três Lagoas	00000000
13	4264	Velhacaria	79516000
13	4265	Vicentina	79710000
13	4266	Vila Formosa	79872000
13	4267	Vila Marques	79932000
13	4268	Vila Rica	79714000
13	4269	Vila União	79796000
13	4270	Vila Vargas	79878000
13	4271	Vista Alegre	79152000
14	2620	Abadia Dos Dourados	38540000
14	2621	Abaeté	35620000
14	2622	Abaeté Dos Mendes	38812000
14	2623	Abaíba	36704000
14	2624	Abre Campo	35365000
14	2625	Abreus	36263000
14	2626	Acaiaca	35438000
14	2627	Açucena	35150000
14	2628	Acuruí	35451000
14	2629	Adão Colares	39597000
14	2630	Água Boa	39790000
14	2631	Água Branca de Minas	39629000
14	2632	Água Comprida	38110000
14	2633	Água Viva	36728000
14	2634	Aguanil	37273000
14	2635	Águas de Araxá	00000000
14	2636	Águas de Contendas	37435000
14	2637	Águas Férreas	35362000
14	2638	Águas Formosas	39880000
14	2639	Águas Vermelhas	39990000
14	2640	Aimorés	35200000
14	2641	Aiuruoca	37450000
14	2642	Alagoa	37458000
14	2643	Albertina	37596000
14	2644	Alberto Isaacson	35608000
14	2645	Albertos	35576000
14	2646	Aldeia	35245000
14	2647	Alegre	38560000
14	2648	Alegria	36935000
14	2649	Além Paraíba	36660000
14	2650	Alexandrita	38282000
14	2651	Alfenas	37130000
14	2652	Alfredo Vasconcelos	36272000
14	2653	Almeida	35835000
14	2654	Almenara	39900000
14	2655	Alpercata	35138000
14	2656	Alpinópolis	37940000
14	2657	Alterosa	37145000
14	2658	Alto Caparaó	36979000
14	2659	Alto Capim	35210000
14	2660	Alto de Santa Helena	35102000
14	2661	Alto Jequitibá	36976000
14	2662	Alto Maranhão	36417000
14	2663	Alto Rio Doce	36260000
14	2664	Altolândia	38985000
14	2665	Alvação	39347000
14	2666	Alvarenga	35249000
14	2667	Alvinópolis	35950000
14	2668	Alvorada	36803000
14	2669	Alvorada de Minas	39140000
14	2670	Amanda	35708000
14	2671	Amanhece	38455000
14	2672	Amarantina	35412000
14	2673	Amparo da Serra	35444000
14	2674	Andiroba	35745000
14	2675	Andradas	37795000
14	2676	Andrelândia	37300000
14	2677	Andrequicé	39207000
14	2678	Angaturama	36746000
14	2679	Angelândia	39685000
14	2680	Angicos de Minas	39332000
14	2681	Angueretá	35793000
14	2682	Angustura	36664000
14	2683	Antônio Carlos	36220000
14	2684	Antônio Dias	35177000
14	2685	Antônio Dos Santos	34960000
14	2686	Antônio Ferreira	39697000
14	2687	Antônio Pereira	35411000
14	2688	Antônio Prado de Minas	36850000
14	2689	Antunes	35698000
14	2690	Aparecida de Minas	38205000
14	2691	Araçaí	35777000
14	2692	Aracati de Minas	36776000
14	2693	Aracitaba	36255000
14	2694	Araçuaí	39600000
14	2695	Araguari	00000000
14	2696	Aramirim	35151000
14	2697	Aranha	35462000
14	2698	Arantina	37360000
14	2699	Araponga	36594000
14	2700	Araporã	38435000
14	2701	Arapuá	38860000
14	2702	Araújos	35603000
14	2703	Araúna	37180000
14	2704	Araxá	00000000
14	2705	Arcângelo	36318000
14	2706	Arceburgo	37820000
14	2707	Arcos	35588000
14	2708	Areado	37140000
14	2709	Argenita	38955000
14	2710	Argirita	36710000
14	2711	Aricanduva	39678000
14	2712	Arinos	38680000
14	2713	Aristides Batista	39341000
14	2714	Ascenção	35665000
14	2715	Assaraí	36966000
14	2716	Astolfo Dutra	36780000
14	2717	Ataléia	39850000
14	2718	Augusto de Lima	39220000
14	2719	Avaí do Jacinto	39931000
14	2720	Azurita	35672000
14	2721	Babilônia	37915000
14	2722	Bação	35453000
14	2723	Baependi	37443000
14	2724	Baguari	35105000
14	2725	Baiões	35575000
14	2726	Baixa	38101000
14	2727	Balbinópolis	39877000
14	2728	Baldim	35706000
14	2729	Bambuí	38900000
14	2730	Bandeira	39917000
14	2731	Bandeira do Sul	37740000
14	2732	Bandeirantes	35423000
14	2733	Barão de Cocais	35970000
14	2734	Barão de Monte Alto	36870000
14	2735	Barbacena	00000000
14	2736	Barra Alegre	35165000
14	2737	Barra da Figueira	36963000
14	2738	Barra do Ariranha	35295000
14	2739	Barra do Cuieté	35243000
14	2740	Barra Feliz	35963000
14	2741	Barra Longa	35447000
14	2742	Barranco Alto	37131000
14	2743	Barreiro	00000000
14	2744	Barreiro Branco	39526700
14	2745	Barreiro da Raiz	39442000
14	2746	Barreiro do Rio Verde	39441000
14	2747	Barretos de Alvinópolis	35952000
14	2748	Barrocão	39572000
14	2749	Barroso	36212000
14	2750	Baú	35615000
14	2751	Bela Vista de Minas	35938000
14	2752	Belisário	36888000
14	2753	Belmiro Braga	36126000
14	2754	Belo Horizonte	00000000
14	2755	Belo Oriente	35195000
14	2756	Belo Oriente	39806000
14	2757	Belo Vale	35473000
14	2758	Bentópolis de Minas	39325000
14	2759	Berilo	39640000
14	2760	Berizal	39555000
14	2761	Bertópolis	39875000
14	2762	Betim	00000000
14	2763	Bias Fortes	36230000
14	2764	Bicas	36600000
14	2765	Bicuíba	35352000
14	2766	Biquinhas	35621000
14	2767	Bituri	35497000
14	2768	Boa Esperança	37170000
14	2769	Boa Família	36891000
14	2770	Boa União de Itabirinha	35285000
14	2771	Boa Vista de Minas	35517000
14	2772	Bocaina de Minas	37340000
14	2773	Bocaiúva	39390000
14	2774	Bom Despacho	35600000
14	2775	Bom Jardim de Minas	37310000
14	2776	Bom Jesus da Cachoeira	36892000
14	2777	Bom Jesus da Penha	37948000
14	2778	Bom Jesus de Cardosos	35381000
14	2779	Bom Jesus do Amparo	35908000
14	2780	Bom Jesus do Divino	36825000
14	2781	Bom Jesus do Galho	35340000
14	2782	Bom Jesus do Madeira	36817000
14	2783	Bom Pastor	35233000
14	2784	Bom Repouso	37610000
14	2785	Bom Retiro	36218000
14	2786	Bom Sucesso	37220000
14	2787	Bom Sucesso de Patos	38712000
14	2788	Bonança	39456000
14	2789	Bonfim	35521000
14	2790	Bonfinópolis de Minas	38650000
14	2791	Bonito de Minas	39490000
14	2792	Borba Gato	35803000
14	2793	Borda da Mata	37564000
14	2794	Botelhos	37720000
14	2795	Botumirim	39596000
14	2796	Brás Pires	36542000
14	2797	Brasilândia de Minas	38779000
14	2798	Brasília de Minas	39330000
14	2799	Brasópolis	37530000
14	2800	Braúnas	35169000
14	2801	Brejaúba	35858000
14	2802	Brejaubinha	35106000
14	2803	Brejo Bonito	38738000
14	2804	Brejo do Amparo	39482000
14	2805	Brumadinho	35460000
14	2806	Brumal	35966000
14	2807	Buarque de Macedo	36413000
14	2808	Bueno	35244000
14	2809	Bueno Brandão	37578000
14	2810	Buenópolis	39230000
14	2811	Bugre	35193000
14	2812	Buritis	38660000
14	2813	Buritizeiro	39280000
14	2814	Caatinga	38778000
14	2815	Cabeceira Grande	38625000
14	2816	Cabo Verde	37880000
14	2817	Caburu	36317000
14	2818	Caçaratiba	39662000
14	2819	Caçarema	39448000
14	2820	Cachoeira Alegre	36876000
14	2821	Cachoeira da Prata	35765000
14	2822	Cachoeira de Minas	37545000
14	2823	Cachoeira de Pajeú	39980000
14	2824	Cachoeira de Santa Cruz	36574000
14	2825	Cachoeira do Brumado	35424000
14	2826	Cachoeira do Campo	35410000
14	2827	Cachoeira do Manteiga	39288000
14	2828	Cachoeira do Vale	00000000
14	2829	Cachoeira Dos Antunes	35523000
14	2830	Cachoeira Dourada	38370000
14	2831	Cachoeirinha	38995000
14	2832	Caetano Lopes	35499000
14	2833	Caetanópolis	35770000
14	2834	Caeté	34800000
14	2835	Caeté	36102000
14	2836	Caiana	36832000
14	2837	Caiapó	36735000
14	2838	Cajuri	36560000
14	2839	Caldas	37780000
14	2840	Calixto	35232000
14	2841	Camacho	35555000
14	2842	Camanducaia	37650000
14	2843	Camargos	35427000
14	2844	Cambuí	37600000
14	2845	Cambuquira	37420000
14	2846	Campanário	39835000
14	2847	Campanha	37400000
14	2848	Campestre	37730000
14	2849	Campestrinho	37797000
14	2850	Campina Verde	38270000
14	2851	Campo Alegre de Minas	39457000
14	2852	Campo Alegre de Minas	35238000
14	2853	Campo Azul	39338000
14	2854	Campo Belo	37270000
14	2855	Campo do Meio	37165000
14	2856	Campo Florido	38130000
14	2857	Campo Redondo	39452000
14	2858	Campolide	36237000
14	2859	Campos Altos	38970000
14	2860	Campos Gerais	37160000
14	2861	Cana Verde	37267000
14	2862	Canaã	36592000
14	2863	Canabrava	39581000
14	2864	Canabrava	38773000
14	2865	Canápolis	38380000
14	2866	Canastrão	38890000
14	2867	Candeias	37280000
14	2868	Canoeiros	38792000
14	2869	Cantagalo	39703000
14	2870	Caparaó	36834000
14	2871	Capela Nova	36290000
14	2872	Capelinha	39680000
14	2873	Capetinga	37993000
14	2874	Capim Branco	35730000
14	2875	Capinópolis	38360000
14	2876	Capitânia	39499000
14	2877	Capitão Andrade	35123000
14	2878	Capitão Enéas	39445000
14	2879	Capitólio	37930000
14	2880	Caputira	36925000
14	2881	Caraí	39810000
14	2882	Caranaíba	36428000
14	2883	Carandaí	36280000
14	2884	Carangola	36800000
14	2885	Caratinga	00000000
14	2886	Carbonita	39665000
14	2887	Cardeal Mota	35847000
14	2888	Careaçu	37556000
14	2889	Carioca	35665300
14	2890	Carlos Alves	36686000
14	2891	Carlos Chagas	39864000
14	2892	Carmésia	35878000
14	2893	Carmo da Cachoeira	37225000
14	2894	Carmo da Mata	35547000
14	2895	Carmo de Minas	37472000
14	2896	Carmo do Cajuru	35510000
14	2897	Carmo do Paranaíba	38840000
14	2898	Carmo do Rio Claro	37150000
14	2899	Carmópolis de Minas	35534000
14	2900	Carneirinho	38290000
14	2901	Carrancas	37245000
14	2902	Carvalho de Brito	00000000
14	2903	Carvalhópolis	37760000
14	2904	Carvalhos	37456000
14	2905	Casa Grande	36422000
14	2906	Cascalho Rico	38460000
14	2907	Cássia	37980000
14	2908	Cataguarino	36779000
14	2909	Cataguases	00000000
14	2910	Catajás	39937000
14	2911	Catas Altas	35969000
14	2912	Catas Altas da Noruega	36450000
14	2913	Catiara	38762000
14	2914	Catuji	39816000
14	2915	Catuné	36846000
14	2916	Catuni	39585000
14	2917	Catuti	39526000
14	2918	Caxambu	37440000
14	2919	Cedro do Abaeté	35624000
14	2920	Centenário	36957000
14	2921	Central de Minas	35260000
14	2922	Central de Santa Helena	35267000
14	2923	Centralina	38390000
14	2924	Cervo	37565000
14	2925	Chácara	36110000
14	2926	Chalé	36985000
14	2927	Chapada de Minas	38528000
14	2928	Chapada do Norte	39648000
14	2929	Chapada Gaúcha	39314000
14	2930	Chaveslândia	38325000
14	2931	Chiador	36630000
14	2932	Chonim	35109000
14	2933	Chumbo	38713000
14	2934	Cipotânea	36265000
14	2935	Cisneiros	36753000
14	2936	Citrolândia	32800000
14	2937	Claraval	37997000
14	2938	Claro de Minas	38782000
14	2939	Claro Dos Poções	39380000
14	2940	Cláudio	35530000
14	2941	Cláudio Manuel	35429000
14	2942	Cocais	35975000
14	2943	Coco	35472000
14	2944	Coimbra	36550000
14	2945	Coluna	39770000
14	2946	Comendador Gomes	38250000
14	2947	Comercinho	39628000
14	2948	Conceição da Aparecida	37148000
14	2949	Conceição da Barra de Minas	36360000
14	2950	Conceição da Boa Vista	36743000
14	2951	Conceição da Brejaúba	39721000
14	2952	Conceição da Ibitipoca	36144000
14	2953	Conceição Das Alagoas	38120000
14	2954	Conceição Das Pedras	37527000
14	2955	Conceição de Ipanema	36947000
14	2956	Conceição de Itaguá	35466000
14	2957	Conceição de Minas	35985000
14	2958	Conceição de Piracicaba	35943000
14	2959	Conceição de Tronqueiras	39711000
14	2960	Conceição do Capim	35202000
14	2961	Conceição do Formoso	36248000
14	2962	Conceição do Mato Dentro	35860000
14	2963	Conceição do Pará	35668000
14	2964	Conceição do Rio Acima	35968000
14	2965	Conceição do Rio Verde	37430000
14	2966	Conceição Dos Ouros	37548000
14	2967	Concórdia de Mucuri	39826000
14	2968	Condado do Norte	39435000
14	2969	Cônego João Pio	35993000
14	2970	Cônego Marinho	39489000
14	2971	Confins	33500000
14	2972	Congonhal	37557000
14	2973	Congonhas	36415000
14	2974	Congonhas do Norte	35850000
14	2975	Conquista	38195000
14	2976	Conselheiro Lafaiete	36400000
14	2977	Conselheiro Mata	39106000
14	2978	Conselheiro Pena	35240000
14	2979	Consolação	37670000
14	2980	Contagem	00000000
14	2981	Contrato	39676000
14	2982	Contria	39202000
14	2983	Coqueiral	37235000
14	2984	Coração de Jesus	39340000
14	2985	Cordisburgo	35780000
14	2986	Cordislândia	37498000
14	2987	Corinto	39200000
14	2988	Coroaci	39710000
14	2989	Coromandel	38550000
14	2990	Coronel Fabriciano	00000000
14	2991	Coronel Murta	39635000
14	2992	Coronel Pacheco	36155000
14	2993	Coronel Xavier Chaves	36330000
14	2994	Córrego Danta	38990000
14	2995	Córrego do Barro	35665200
14	2996	Córrego do Bom Jesus	37605000
14	2997	Córrego do Ouro	37163000
14	2998	Córrego Fundo	35578000
14	2999	Córrego Novo	35345000
14	3000	Córregos	35864000
14	3001	Correia de Almeida	36208000
14	3002	Correntinho	39741000
14	3003	Costa Sena	35859000
14	3004	Costas	37665000
14	3005	Costas da Mantiqueira	36206000
14	3006	Couto de Magalhães de Minas	39188000
14	3007	Crisólia	37572000
14	3008	Crisólita	39885000
14	3009	Crispim Jaques	39809000
14	3010	Cristais	37275000
14	3011	Cristália	39598000
14	3012	Cristiano Otoni	36426000
14	3013	Cristina	37476000
14	3014	Crucilândia	35520000
14	3015	Cruzeiro da Fortaleza	38735000
14	3016	Cruzeiro Dos Peixotos	38416000
14	3017	Cruzília	37445000
14	3018	Cubas	35806000
14	3019	Cuité Velho	35242000
14	3020	Cuparaque	35246000
14	3021	Curimataí	39235000
14	3022	Curral de Dentro	39998000
14	3023	Curvelo	35790000
14	3024	Datas	39130000
14	3025	Delfim Moreira	37514000
14	3026	Delfinópolis	37910000
14	3027	Delta	38108000
14	3028	Deputado Augusto Clementino	39152000
14	3029	Derribadinha	35103000
14	3030	Descoberto	36690000
14	3031	Desembargador Otoni	39113000
14	3032	Desemboque	38193000
14	3033	Desterro de Entre Rios	35494000
14	3034	Desterro do Melo	36210000
14	3035	Diamante de Ubá	36506000
14	3036	Diamantina	39100000
14	3037	Dias	37532000
14	3038	Dias Tavares/siderúrgica	36105000
14	3039	Diogo de Vasconcelos	35437000
14	3040	Dionísio	35984000
14	3041	Divinésia	36546000
14	3042	Divino	36820000
14	3043	Divino Das Laranjeiras	35265000
14	3044	Divino de Virgolândia	39716000
14	3045	Divino Espírito Santo	37147000
14	3046	Divinolândia de Minas	39735000
14	3047	Divinópolis	00000000
14	3048	Divisa Alegre	39995000
14	3049	Divisa Nova	37134000
14	3050	Divisópolis	39912000
14	3051	Dois de Abril	39948000
14	3052	Dom Bosco	38654000
14	3053	Dom Cavati	35148000
14	3054	Dom Joaquim	35865000
14	3055	Dom Lara	35314000
14	3056	Dom Modesto	35313000
14	3057	Dom Silvério	35440000
14	3058	Dom Viçoso	37474000
14	3059	Dona Euzébia	36784000
14	3060	Dores da Vitória	36792000
14	3061	Dores de Campos	36213000
14	3062	Dores de Guanhães	35894000
14	3063	Dores do Indaiá	35610000
14	3064	Dores do Paraibuna	36243000
14	3065	Dores do Turvo	36513000
14	3066	Doresópolis	37926000
14	3067	Douradinho	37755000
14	3068	Douradoquara	38530000
14	3069	Doutor Campolina	35768000
14	3070	Doutor Lund	33650000
14	3071	Durandé	36974000
14	3072	Edgard Melo	35122000
14	3073	Elói Mendes	37110000
14	3074	Emboabas	36319000
14	3075	Engenheiro Caldas	35130000
14	3076	Engenheiro Correia	35416000
14	3077	Engenheiro Navarro	39417000
14	3078	Engenheiro Schnoor	39602000
14	3079	Engenho do Ribeiro	35602000
14	3080	Engenho Novo	36643000
14	3081	Entre Folhas	35324000
14	3082	Entre Rios de Minas	35490000
14	3083	Epaminondas Otoni	39866000
14	3084	Ermidinha	39410000
14	3085	Ervália	36555000
14	3086	Esmeraldas	35740000
14	3087	Esmeraldas de Ferros	35804000
14	3088	Espera Feliz	36830000
14	3089	Espinosa	39510000
14	3090	Espírito Santo do Dourado	37566000
14	3091	Esteios	35596000
14	3092	Estevão de Araújo	36596000
14	3093	Estiva	37542000
14	3094	Estrela da Barra	38294000
14	3095	Estrela Dalva	36725000
14	3096	Estrela de Jordânia	39923000
14	3097	Estrela do Indaiá	35613000
14	3098	Estrela do Sul	38525000
14	3099	Eugenópolis	36855000
14	3100	Euxenita	39751000
14	3101	Ewbank da Câmara	36108000
14	3102	Expedicionário Alício	35204000
14	3103	Extração	39105000
14	3104	Extrema	37640000
14	3105	Fama	37138000
14	3106	Faria Lemos	36840000
14	3107	Farias	39744000
14	3108	Fechados	35788000
14	3109	Felicina	35152000
14	3110	Felício Dos Santos	39180000
14	3111	Felisburgo	39895000
14	3112	Felixlândia	35794000
14	3113	Fernandes Tourinho	35135000
14	3114	Fernão Dias	39334000
14	3115	Ferreiras	37493000
14	3116	Ferreirópolis	39562000
14	3117	Ferros	35800000
14	3118	Ferruginha	35245500
14	3119	Fervedouro	36815000
14	3120	Fidalgo	33620000
14	3121	Fidelândia	39851000
14	3122	Flor de Minas	38315000
14	3123	Florália	35961000
14	3124	Floresta	35263000
14	3125	Florestal	35690000
14	3126	Florestina	38450000
14	3127	Fonseca	35955000
14	3128	Formiga	35570000
14	3129	Formoso	38690000
14	3130	Fortaleza de Minas	37905000
14	3131	Fortuna de Minas	35760000
14	3132	Francisco Badaró	39644000
14	3133	Francisco Dumont	39387000
14	3134	Francisco Sá	39580000
14	3135	Franciscópolis	39695000
14	3136	Frei Eustáquio	37237000
14	3137	Frei Gaspar	39840000
14	3138	Frei Inocêncio	35112000
14	3139	Frei Lagonegro	39708000
14	3140	Frei Orlando	35629000
14	3141	Frei Serafim	39832000
14	3142	Freire Cardoso	39637000
14	3143	Fronteira	38230000
14	3144	Fronteira Dos Vales	39870000
14	3145	Fruta de Leite	39558000
14	3146	Frutal	38200000
14	3147	Funchal	38802000
14	3148	Funilândia	35709000
14	3149	Furnas	37943000
14	3150	Furquim	35426000
14	3151	Galego	36206100
14	3152	Galena	38753000
14	3153	Galiléia	35250000
14	3154	Gama	35153000
14	3155	Gameleiras	39505000
14	3156	Garapuava	38615000
14	3157	Gavião	36858000
14	3158	Glaucilândia	39592000
14	3159	Glaura	35408000
14	3160	Glucínio	39782000
14	3161	Goiabeira	35248000
14	3162	Goianá	36152000
14	3163	Goianases	37994000
14	3164	Gonçalves	37680000
14	3165	Gonzaga	39720000
14	3166	Gororós	35868000
14	3167	Gorutuba	39522500
14	3168	Gouvea	39120000
14	3169	Governador Valadares	00000000
14	3170	Gramínea	37796000
14	3171	Granada	35365700
14	3172	Grão Mogol	39570000
14	3173	Grota	35395000
14	3174	Grupiara	38470000
14	3175	Guaçuí	39265000
14	3176	Guaipava	37125000
14	3177	Guanhães	39740000
14	3178	Guapé	37177000
14	3179	Guaraciaba	35436000
14	3180	Guaraciama	39397000
14	3181	Guaranésia	37810000
14	3182	Guarani	36160000
14	3183	Guaranilândia	39965000
14	3184	Guarará	36606000
14	3185	Guarataia	39833000
14	3186	Guarda Dos Ferreiros	38803000
14	3187	Guarda-mor	38570000
14	3188	Guardinha	37952000
14	3189	Guaxima	38198000
14	3190	Guaxupé	37800000
14	3191	Guidoval	36515000
14	3192	Guimarânia	38730000
14	3193	Guinda	39103000
14	3194	Guiricema	36525000
14	3195	Gurinhatã	38310000
14	3196	Heliodora	37484000
14	3197	Hematita	35178000
14	3198	Hermilo Alves	36285000
14	3199	Honorópolis	38272000
14	3200	Iapu	35190000
14	3201	Ibertioga	36225000
14	3202	Ibiá	38950000
14	3203	Ibiaí	39350000
14	3204	Ibiracatu	39455000
14	3205	Ibiraci	37990000
14	3206	Ibirité	32400000
14	3207	Ibitira	35607000
14	3208	Ibitiúra de Minas	37790000
14	3209	Ibituruna	37223000
14	3210	Icaraí de Minas	39318000
14	3211	Igarapé	32900000
14	3212	Igaratinga	35695000
14	3213	Iguatama	38910000
14	3214	Ijaci	37205000
14	3215	Ilhéus do Prata	35994000
14	3216	Ilicínea	37175000
14	3217	Imbé de Minas	35323000
14	3218	Inconfidentes	37576000
14	3219	Indaiabira	39536000
14	3220	Independência	35236000
14	3221	Indianópolis	38490000
14	3222	Ingaí	37215000
14	3223	Inhaí	39111000
14	3224	Inhapim	35330000
14	3225	Inhaúma	35710000
14	3226	Inimutaba	35796000
14	3227	Ipaba	35198000
14	3228	Ipanema	36950000
14	3229	Ipatinga	00000000
14	3230	Ipiaçu	38350000
14	3231	Ipoema	35905000
14	3232	Ipuiúna	37559000
14	3233	Iraí de Minas	38510000
14	3234	Itabira	00000000
14	3235	Itabirinha	35280000
14	3236	Itabirito	35450000
14	3237	Itaboca	36138000
14	3238	Itacambira	39594000
14	3239	Itacarambi	39470000
14	3240	Itaci	37155000
14	3241	Itacolomi	35861000
14	3242	Itaguara	35514000
14	3243	Itaim	37546000
14	3244	Itaipé	39815000
14	3245	Itajubá	00000000
14	3246	Itajutiba	35331000
14	3247	Itamarandiba	39670000
14	3248	Itamarati	39993000
14	3249	Itamarati de Minas	36788000
14	3250	Itambacuri	39830000
14	3251	Itambé do Mato Dentro	35820000
14	3252	Itamirim	39515000
14	3253	Itamogi	37955000
14	3254	Itamonte	37466000
14	3255	Itamuri	36886000
14	3256	Itanhandu	37464000
14	3257	Itanhomi	35120000
14	3258	Itaobim	39625000
14	3259	Itapagipe	38240000
14	3260	Itapanhoacanga	39145000
14	3261	Itapecerica	35550000
14	3262	Itapeva	37655000
14	3263	Itapiru	39955000
14	3264	Itapirucu	36756000
14	3265	Itatiaiuçu	35685000
14	3266	Itaú de Minas	37975000
14	3267	Itaúna	00000000
14	3268	Itauninha	35915000
14	3269	Itaverava	36440000
14	3270	Itererê	37513000
14	3271	Itinga	39610000
14	3272	Itira	39605000
14	3273	Itueta	35220000
14	3274	Ituí	36684000
14	3275	Ituiutaba	00000000
14	3276	Itumirim	37210000
14	3277	Iturama	38280000
14	3278	Itutinga	36390000
14	3279	Jaboticatubas	35830000
14	3280	Jacarandira	36342000
14	3281	Jacaré	39613000
14	3282	Jacinto	39930000
14	3283	Jacuí	37965000
14	3284	Jacutinga	37590000
14	3285	Jaguaraçu	35188000
14	3286	Jaguarão	39933000
14	3287	Jaguaritira	39692000
14	3288	Jaíba	39508000
14	3289	Jampruca	39837000
14	3290	Janaúba	39440000
14	3291	Januária	39480000
14	3292	Japaraíba	35580000
14	3293	Japonvar	39335000
14	3294	Jardinésia	38142000
14	3295	Jeceaba	35498000
14	3296	Jenipapo de Minas	39645000
14	3297	Jequeri	35390000
14	3298	Jequitaí	39370000
14	3299	Jequitibá	35767000
14	3300	Jequitinhonha	39960000
14	3301	Jesuânia	37485000
14	3302	Joaíma	39890000
14	3303	Joanésia	35168000
14	3304	João Monlevade	00000000
14	3305	João Pinheiro	38770000
14	3306	Joaquim Felício	39240000
14	3307	Jordânia	39920000
14	3308	José Gonçalves de Minas	39642000
14	3309	José Raydan	39775000
14	3310	Joselândia	36435000
14	3311	Josenópolis	39575000
14	3312	Juatuba	35675000
14	3313	Jubaí	38196000
14	3314	Juiraçu	35996000
14	3315	Juiz de Fora	00000000
14	3316	Junco de Minas	39693500
14	3317	Juramento	39590000
14	3318	Juréia	37117000
14	3319	Juruaia	37805000
14	3320	Jurumirim	35375000
14	3321	Justinópolis	00000000
14	3322	Juvenília	39467000
14	3323	Lacerdinha	36802000
14	3324	Ladainha	39825000
14	3325	Lagamar	38785000
14	3326	Lagoa Bonita	35782000
14	3327	Lagoa da Prata	35590000
14	3328	Lagoa Dos Patos	39360000
14	3329	Lagoa Dourada	36345000
14	3330	Lagoa Formosa	38720000
14	3331	Lagoa Grande	38755000
14	3332	Lagoa Santa	33400000
14	3333	Lajinha	36980000
14	3334	Lambari	37480000
14	3335	Lamim	36455000
14	3336	Lamounier	35551000
14	3337	Lapinha	33450000
14	3338	Laranjal	36760000
14	3339	Laranjeiras de Caldas	37782000
14	3340	Lassance	39250000
14	3341	Lavras	37200000
14	3342	Leandro Ferreira	35657000
14	3343	Leme do Prado	39655000
14	3344	Leopoldina	36700000
14	3345	Levinópolis	39485000
14	3346	Liberdade	37350000
14	3347	Lima Duarte	36140000
14	3348	Limeira do Oeste	38295000
14	3349	Limeira de Mantena	35296000
14	3350	Lobo Leite	36419000
14	3351	Lontra	39437000
14	3352	Lourenço Velho	37507000
14	3353	Lufa	39824000
14	3354	Luisburgo	36923000
14	3355	Luislândia	39336000
14	3356	Luiz Pires de Minas	39344000
14	3357	Luizlândia do Oeste	38776000
14	3358	Luminárias	37240000
14	3359	Luminosa	37535000
14	3360	Luz	35595000
14	3361	Macaia	37221000
14	3362	Machacalis	39873000
14	3363	Machado	37750000
14	3364	Macuco	36891500
14	3365	Macuco de Minas	37212000
14	3366	Madre de Deus de Minas	37305000
14	3367	Mãe Dos Homens	39797000
14	3368	Major Ezequiel	35953000
14	3369	Major Porto	38710000
14	3370	Malacacheta	39690000
14	3371	Mamonas	39516000
14	3372	Manga	39460000
14	3373	Manhuaçu	36900000
14	3374	Manhumirim	36970000
14	3375	Mantena	35290000
14	3376	Mantiqueira	36242000
14	3377	Mantiqueira do Palmital	36206300
14	3378	Mar de Espanha	36640000
14	3379	Marambainha	39813000
14	3380	Maravilhas	35666000
14	3381	Maria da Fé	37517000
14	3382	Mariana	35420000
14	3383	Marilac	35115000
14	3384	Marilândia	35553000
14	3385	Mário Campos	32470000
14	3386	Maripá de Minas	36608000
14	3387	Marliéria	35185000
14	3388	Marmelópolis	37516000
14	3389	Martinésia	38419000
14	3390	Martinho Campos	35606000
14	3391	Martins Guimarães	35593000
14	3392	Martins Soares	36972000
14	3393	Mata Verde	39915000
14	3394	Materlândia	39755000
14	3395	Mateus Leme	35670000
14	3396	Mathias Lobato	35110000
14	3397	Matias Barbosa	36120000
14	3398	Matias Cardoso	39478000
14	3399	Matipó	35367000
14	3400	Mato Verde	39527000
14	3401	Matozinhos	35720000
14	3402	Matutina	38870000
14	3403	Medeiros	38930000
14	3404	Medina	39620000
14	3405	Melo Viana	35750000
14	3406	Mendanha	39101000
14	3407	Mendes Pimentel	35270000
14	3408	Mendonça	39664000
14	3409	Mercês	36190000
14	3410	Mercês de Água Limpa	36352000
14	3411	Mesquita	35166000
14	3412	Mestre Caetano	34750000
14	3413	Miguel Burnier	35414000
14	3414	Milagre	37959000
14	3415	Milho Verde	39155000
14	3416	Minas Novas	39650000
14	3417	Minduri	37447000
14	3418	Mirabela	39420000
14	3419	Miradouro	36893000
14	3420	Miragaia	36507000
14	3421	Miraí	36790000
14	3422	Miralta	39415000
14	3423	Mirantão	37345000
14	3424	Miraporanga	38418000
14	3425	Miravânia	39465000
14	3426	Missionário	36262000
14	3427	Mocambeiro	35725000
14	3428	Mocambinho	39524000
14	3429	Moeda	35470000
14	3430	Moema	35604000
14	3431	Monjolinho de Minas	38722000
14	3432	Monjolos	39215000
14	3433	Monsenhor Horta	35425000
14	3434	Monsenhor Isidro	36445000
14	3435	Monsenhor João Alexandre	35532000
14	3436	Monsenhor Paulo	37405000
14	3437	Montalvânia	39495000
14	3438	Monte Alegre de Minas	38420000
14	3439	Monte Azul	39500000
14	3440	Monte Belo	37115000
14	3441	Monte Carmelo	38500000
14	3442	Monte Celeste	36532000
14	3443	Monte Formoso	39893000
14	3444	Monte Rei	39468000
14	3445	Monte Santo de Minas	37958000
14	3446	Monte Sião	37580000
14	3447	Monte Verde	37653000
14	3448	Montes Claros	00000000
14	3449	Montezuma	39547000
14	3450	Morada Nova de Minas	35628000
14	3451	Morro	39313000
14	3452	Morro da Garça	35798000
14	3453	Morro do Ferro	35541000
14	3454	Morro do Pilar	35875000
14	3455	Morro Vermelho	34940000
14	3456	Mucuri	39809800
14	3457	Mundo Novo de Minas	35208000
14	3458	Munhoz	37620000
14	3459	Muquém	39423000
14	3460	Muriaé	36880000
14	3461	Mutum	36955000
14	3462	Muzambinho	37890000
14	3463	Nacip Raydan	39718000
14	3464	Nanuque	39860000
14	3465	Naque	35157000
14	3466	Naque-nanuque	35149000
14	3467	Natalândia	38658000
14	3468	Natércia	37524000
14	3469	Nazaré de Minas	37253000
14	3470	Nazareno	36370000
14	3471	Nelson de Sena	39706000
14	3472	Neolândia	35552000
14	3473	Nepomuceno	37250000
14	3474	Nhandutiba	39463000
14	3475	Nicolândia	35235000
14	3476	Ninheira	39553000
14	3477	Nova Belém	35298000
14	3478	Nova Era	35920000
14	3479	Nova Esperança	39414000
14	3480	Nova Lima	34000000
14	3481	Nova Minda	39335700
14	3482	Nova Módica	35113000
14	3483	Nova Ponte	38160000
14	3484	Nova Porteirinha	39525000
14	3485	Nova Resende	37860000
14	3486	Nova Serrana	35519000
14	3487	Nova União	34990000
14	3488	Novilhona	39821000
14	3489	Novo Cruzeiro	39820000
14	3490	Novo Horizonte	39853000
14	3491	Novo Oriente de Minas	39817000
14	3492	Novorizonte	39568000
14	3493	Ocidente	36959000
14	3494	Olaria	36145000
14	3495	Olegário Maciel	37509000
14	3496	Olhos D Água do Oeste	38772000
14	3497	Olhos D Água	39398000
14	3498	Olímpio Campos	39433000
14	3499	Olímpio Noronha	37488000
14	3500	Oliveira	35540000
14	3501	Oliveira Fortes	36250000
14	3502	Onça de Pitangui	35655000
14	3503	Oratórios	35439000
14	3504	Orizânia	36828000
14	3505	Ouro Branco	36420000
14	3506	Ouro Fino	37570000
14	3507	Ouro Preto	35400000
14	3508	Ouro Verde de Minas	39855000
14	3509	Paciência	39524500
14	3510	Padre Brito	36209000
14	3511	Padre Carvalho	39573000
14	3512	Padre Felisberto	35445000
14	3513	Padre Fialho	35367700
14	3514	Padre João Afonso	39672000
14	3515	Padre Júlio Maria	36978000
14	3516	Padre Paraíso	39818000
14	3517	Padre Pinto	35945000
14	3518	Padre Viegas	35422000
14	3519	Pai Pedro	39517000
14	3520	Paineiras	35622000
14	3521	Pains	35582000
14	3522	Paiolinho	37758000
14	3523	Paiva	36195000
14	3524	Palma	36750000
14	3525	Palmeiral	37725000
14	3526	Palmeirinha	38613000
14	3527	Palmital Dos Carvalhos	36278000
14	3528	Palmópolis	39945000
14	3529	Pântano	37543000
14	3530	Papagaios	35669000
14	3531	Pará de Minas	00000000
14	3532	Paracatu	38600000
14	3533	Paraguaçu	37120000
14	3534	Paraguai	36565000
14	3535	Paraíso Garcia	36236000
14	3536	Paraisópolis	37660000
14	3537	Paraopeba	35774000
14	3538	Paredão de Minas	39285000
14	3539	Parque Durval de Barros	32440000
14	3540	Parque Industrial	00000000
14	3541	Passa Dez	35343000
14	3542	Passa Quatro	37460000
14	3543	Passa Tempo	35537000
14	3544	Passa Vinte	37330000
14	3545	Passabém	35810000
14	3546	Passagem de Mariana	35421000
14	3547	Passos	00000000
14	3548	Patis	39425000
14	3549	Patos de Minas	00000000
14	3550	Patrimônio	38145000
14	3551	Patrocínio	38740000
14	3552	Patrocínio do Muriaé	36860000
14	3553	Paula Cândido	36544000
14	3554	Paula Lima	36103000
14	3555	Paulistas	39765000
14	3556	Pavão	39814000
14	3557	Pé do Morro	37462000
14	3558	Peçanha	39700000
14	3559	Pedra Azul	39970000
14	3560	Pedra Bonita	35364000
14	3561	Pedra Corrida	35155000
14	3562	Pedra do Anta	36585000
14	3563	Pedra do Indaiá	35565000
14	3564	Pedra do Sino	36282000
14	3565	Pedra Dourada	36847000
14	3566	Pedra Grande	39910000
14	3567	Pedra Menina	39175000
14	3568	Pedralva	37520000
14	3569	Pedras de Maria da Cruz	39492000
14	3570	Pedrinópolis	38178000
14	3571	Pedro Leopoldo	33600000
14	3572	Pedro Lessa	39158000
14	3573	Pedro Teixeira	36148000
14	3574	Pedro Versiani	39809300
14	3575	Penédia	34930000
14	3576	Penha de França	39675000
14	3577	Penha do Capim	35212000
14	3578	Penha do Cassiano	35107000
14	3579	Penha do Norte	35241000
14	3580	Penha Longa	36635000
14	3581	Pequeri	36610000
14	3582	Pequi	35667000
14	3583	Perdigão	35515000
14	3584	Perdilândia	38328000
14	3585	Perdizes	38170000
14	3586	Perdões	37260000
14	3587	Pereirinhas	35492000
14	3588	Periquito	35156000
14	3589	Perpétuo Socorro	35196000
14	3590	Pescador	35114000
14	3591	Petúnia	37865000
14	3592	Piacatuba	36708000
14	3593	Pião	37776000
14	3594	Piau	36157000
14	3595	Pic Sagarana	38686000
14	3596	Piedade de Caratinga	35325000
14	3597	Piedade de Ponte Nova	35382000
14	3598	Piedade do Paraopeba	35464000
14	3599	Piedade do Rio Grande	36227000
14	3600	Piedade Dos Gerais	35526000
14	3601	Pilar	38717000
14	3602	Pimenta	35585000
14	3603	Pindaíbas	38715000
14	3604	Pingo-d Água	35348000
14	3605	Pinheirinhos	37461000
14	3606	Pinheiros Altos	36490000
14	3607	Pinhotiba	36857000
14	3608	Pintópolis	39317000
14	3609	Pintos Negreiros	37518000
14	3610	Piracaiba	38452000
14	3611	Piracema	35536000
14	3612	Pirajuba	38210000
14	3613	Piranga	36480000
14	3614	Piranguçu	37511000
14	3615	Piranguinho	37508000
14	3616	Piranguita	36462000
14	3617	Pirapanema	36889000
14	3618	Pirapetinga	36730000
14	3619	Pirapora	39270000
14	3620	Piraúba	36170000
14	3621	Pires E Albuquerque	39394000
14	3622	Piscamba	35393000
14	3623	Pitangui	35650000
14	3624	Pitarana	39498000
14	3625	Piumhi	37925000
14	3626	Planalto de Minas	39114000
14	3627	Planura	38220000
14	3628	Plautino Soares	35144000
14	3629	Poaia	39783000
14	3630	Poço Fundo	37757000
14	3631	Poções de Paineiras	35623000
14	3632	Poços de Caldas	00000000
14	3633	Pocrane	36960000
14	3634	Pompéu	35640000
14	3635	Poncianos	38126000
14	3636	Pontalete	37192000
14	3637	Ponte Alta	38106000
14	3638	Ponte Alta de Minas	36805000
14	3639	Ponte Dos Ciganos	39343000
14	3640	Ponte Firme	38754000
14	3641	Ponte Nova	00000000
14	3642	Ponte Segura	37618000
14	3643	Pontevila	35577000
14	3644	Ponto Chique	39328000
14	3645	Ponto Chique do Martelo	36206500
14	3646	Ponto do Marambaia	39812000
14	3647	Ponto Dos Volantes	39615000
14	3648	Porteirinha	39520000
14	3649	Porto Agrário	39469000
14	3650	Porto Das Flores	36128000
14	3651	Porto Dos Mendes	37271000
14	3652	Porto Firme	36576000
14	3653	Poté	39827000
14	3654	Pouso Alegre	37550000
14	3655	Pouso Alto	37468000
14	3656	Prados	36320000
14	3657	Prata	38140000
14	3658	Pratápolis	37970000
14	3659	Pratinha	38960000
14	3660	Presidente Bernardes	36475000
14	3661	Presidente Juscelino	35797000
14	3662	Presidente Kubitschek	39135000
14	3663	Presidente Olegário	38750000
14	3664	Presidente Pena	39865000
14	3665	Professor Sperber	36988000
14	3666	Providência	36706000
14	3667	Prudente de Morais	35715000
14	3668	Quartel de São João	35626000
14	3669	Quartel do Sacramento	35342000
14	3670	Quartel Geral	35625000
14	3671	Quatituba	35222000
14	3672	Queixada	39823000
14	3673	Queluzita	36424000
14	3674	Quem-quem	39443000
14	3675	Quilombo	39753000
14	3676	Quintinos	38845000
14	3677	Raposos	34400000
14	3678	Raul Soares	35350000
14	3679	Ravena	34740000
14	3680	Realeza	36905000
14	3681	Recreio	36740000
14	3682	Reduto	36920000
14	3683	Resende Costa	36340000
14	3684	Resplendor	35230000
14	3685	Ressaquinha	36270000
14	3686	Riachinho	38640000
14	3687	Riacho da Cruz	39483000
14	3688	Riacho Dos Machados	39529000
14	3689	Ribeirão Das Neves	00000000
14	3690	Ribeirão de São Domingos	36915000
14	3691	Ribeirão Vermelho	37264000
14	3692	Ribeiro Junqueira	36707000
14	3693	Ribeiros	37492000
14	3694	Rio Acima	34300000
14	3695	Rio Casca	35370000
14	3696	Rio Das Mortes	36315000
14	3697	Rio do Prado	39940000
14	3698	Rio Doce	35442000
14	3699	Rio Espera	36460000
14	3700	Rio Manso	35525000
14	3701	Rio Melo	36465000
14	3702	Rio Novo	36150000
14	3703	Rio Paranaíba	38810000
14	3704	Rio Pardo de Minas	39530000
14	3705	Rio Piracicaba	35940000
14	3706	Rio Pomba	36180000
14	3707	Rio Pretinho	39808000
14	3708	Rio Preto	36130000
14	3709	Rio Vermelho	39170000
14	3710	Ritápolis	36335000
14	3711	Roça Grande	36682000
14	3712	Roças Novas	34950000
14	3713	Rochedo de Minas	36604000
14	3714	Rodeador	39218000
14	3715	Rodeiro	36510000
14	3716	Rodrigo Silva	35407000
14	3717	Romaria	38520000
14	3718	Rosário da Limeira	36878000
14	3719	Rosário de Minas	36106000
14	3720	Rosário do Pontal	35435500
14	3721	Roseiral	36958000
14	3722	Rubelita	39565000
14	3723	Rubim	39950000
14	3724	Sabará	00000000
14	3725	Sabinópolis	39750000
14	3726	Sacramento	38190000
14	3727	Salinas	39560000
14	3728	Salitre de Minas	38743000
14	3729	Salto da Divisa	39925000
14	3730	Sanatório Santa Fé	37412000
14	3731	Santa Bárbara	35960000
14	3732	Santa Bárbara do Leste	35328000
14	3733	Santa Bárbara do Monte Verde	36132000
14	3734	Santa Bárbara do Tugúrio	36215000
14	3735	Santa Cruz da Aparecida	37119000
14	3736	Santa Cruz de Botumirim	39595000
14	3737	Santa Cruz de Minas	36328000
14	3738	Santa Cruz de Salinas	39563000
14	3739	Santa Cruz do Escalvado	35384000
14	3740	Santa Cruz do Prata	37815000
14	3741	Santa da Pedra	39368000
14	3742	Santa Efigênia	35319000
14	3743	Santa Efigênia de Minas	39725000
14	3744	Santa Fé de Minas	39295000
14	3745	Santa Filomena	36945000
14	3746	Santa Helena de Minas	39874000
14	3748	Santa Juliana	38175000
14	3749	Santa Luzia	00000000
14	3750	Santa Luzia da Serra	38774000
14	3751	Santa Margarida	36910000
14	3752	Santa Maria de Itabira	35910000
14	3753	Santa Maria do Salto	39928000
14	3754	Santa Maria do Suaçuí	39780000
14	3755	Santa Rita da Estrela	38526000
14	3756	Santa Rita de Caldas	37775000
14	3757	Santa Rita de Jacutinga	36135000
14	3758	Santa Rita de Minas	35326000
14	3759	Santa Rita de Ouro Preto	35409000
14	3760	Santa Rita do Cedro	35791000
14	3761	Santa Rita do Ibitipoca	36235000
14	3762	Santa Rita do Itueto	35225000
14	3763	Santa Rita do Rio do Peixe	35807000
14	3764	Santa Rita do Sapucaí	37540000
14	3765	Santa Rita Durão	35428000
14	3766	Santa Rosa da Serra	38805000
14	3767	Santa Rosa de Lima	39412000
14	3768	Santa Rosa Dos Dourados	38555000
14	3769	Santa Teresa do Bonito	39702000
14	3770	Santa Terezinha de Minas	35688000
14	3771	Santa Vitória	38320000
14	3772	Santana da Vargem	37195000
14	3773	Santana de Caldas	37785000
14	3774	Santana de Cataguases	36795000
14	3775	Santana de Patos	38711000
14	3776	Santana de Pirapama	35785000
14	3777	Santana do Alfié	35997000
14	3778	Santana do Araçuaí	39618000
14	3779	Santana do Campestre	36783000
14	3780	Santana do Capivari	37469000
14	3781	Santana do Deserto	36620000
14	3782	Santana do Garambéu	36146000
14	3783	Santana do Jacaré	37278000
14	3784	Santana do Manhuaçu	36940000
14	3785	Santana do Paraíso	35167000
14	3786	Santana do Paraopeba	35475000
14	3787	Santana do Riacho	35845000
14	3788	Santana do Tabuleiro	35358000
14	3789	Santana Dos Montes	36430000
14	3790	Santo Antônio da Boa Vista	39434000
14	3791	Santo Antônio da Fortaleza	35801000
14	3792	Santo Antônio da Vargem Alegre	35522000
14	3793	Santo Antônio do Amparo	37262000
14	3794	Santo Antônio do Aventureiro	36670000
14	3795	Santo Antônio do Boqueirão	38620000
14	3796	Santo Antônio do Cruzeiro	37255000
14	3797	Santo Antônio do Glória	36897000
14	3798	Santo Antônio do Grama	35388000
14	3799	Santo Antônio do Itambé	39160000
14	3800	Santo Antônio do Jacinto	39935000
14	3801	Santo Antônio do Leite	35413000
14	3802	Santo Antônio do Manhuaçu	35321000
14	3803	Santo Antônio do Monte	35560000
14	3804	Santo Antônio do Mucuri	39691000
14	3805	Santo Antônio do Norte	35863000
14	3806	Santo Antônio do Pirapetinga	36485000
14	3807	Santo Antônio do Retiro	39538000
14	3808	Santo Antônio do Rio Abaixo	35880000
14	3809	Santo Antônio Dos Araújos	39796000
14	3810	Santo Antônio Dos Campos	35505000
14	3811	Santo Hilário	35586000
14	3812	Santo Hipólito	39210000
14	3813	Santos Dumont	36240000
14	3814	São Bartolomeu	35406000
14	3815	São Benedito	00000000
14	3816	São Bento Abade	37414000
14	3817	São Bento de Caldas	37778000
14	3818	São Brás do Suaçuí	35495000
14	3819	São Braz	38788000
14	3820	São Cândido	35320000
14	3821	São Domingos	36675000
14	3822	São Domingos da Bocaina	36142000
14	3823	São Domingos Das Dores	35335000
14	3824	São Domingos do Prata	35995000
14	3825	São Félix de Minas	35275000
14	3826	São Francisco	39300000
14	3827	São Francisco de Paula	35543000
14	3828	São Francisco de Sales	38260000
14	3829	São Francisco do Glória	36810000
14	3830	São Francisco do Humaitá	36956000
14	3831	São Geraldo	36530000
14	3832	São Geraldo	39342000
14	3833	São Geraldo da Piedade	39723000
14	3834	São Geraldo de Tumiritinga	35126000
14	3835	São Geraldo do Baguari	39704000
14	3836	São Geraldo do Baixio	35258000
14	3837	São Gonçalo de Botelhos	37723000
14	3838	São Gonçalo do Abaeté	38790000
14	3839	São Gonçalo do Monte	35455000
14	3840	São Gonçalo do Pará	35516000
14	3841	São Gonçalo do Rio Abaixo	35935000
14	3842	São Gonçalo do Rio Das Pedras	39153000
14	3843	São Gonçalo do Rio Preto	39185000
14	3844	São Gonçalo do Sapucaí	37490000
14	3845	São Gotardo	38800000
14	3846	São Jerônimo Dos Poções	38975000
14	3847	São João Batista do Glória	37920000
14	3848	São João da Chapada	39110000
14	3849	São João da Lagoa	39355000
14	3850	São João da Mata	37568000
14	3851	São João da Ponte	39430000
14	3852	São João da Sapucaia	36765000
14	3853	São João da Serra	36245000
14	3854	São João da Serra Negra	38748000
14	3855	São João da Vereda	39413000
14	3856	São João Das Missões	39475000
14	3857	São João Del Rei	00000000
14	3858	São João do Bonito	39528000
14	3859	São João do Jacutinga	35322000
14	3860	São João do Manhuaçu	36918000
14	3861	São João do Manteninha	35277000
14	3862	São João do Oriente	35146000
14	3863	São João do Pacuí	39365000
14	3864	São João do Paraíso	39540000
14	3865	São João Evangelista	39705000
14	3866	São João Nepomuceno	36680000
14	3867	São Joaquim	39348000
14	3868	São Joaquim	39488000
14	3869	São Joaquim de Bicas	32920000
14	3870	São José da Barra	37945000
14	3871	São José da Bela Vista	38804000
14	3872	São José da Lapa	33350000
14	3873	São José da Pedra Menina	36831000
14	3874	São José da Safira	39785000
14	3875	São José da Varginha	35694000
14	3876	São José Das Tronqueiras	35108000
14	3877	São José do Acácio	35133000
14	3878	São José do Alegre	37510000
14	3879	São José do Barreiro	37927000
14	3880	São José do Batatal	35339000
14	3881	São José do Buriti	35795000
14	3882	São José do Divino	39848000
14	3883	São José do Goiabal	35986000
14	3884	São José do Itueto	35228000
14	3885	São José do Jacuri	39707000
14	3886	São José do Mantimento	36990000
14	3887	São José do Mato Dentro	37574000
14	3888	São José do Pântano	37549000
14	3889	São José do Paraopeba	35468000
14	3890	São José Dos Lopes	36141000
14	3891	São José Dos Salgados	35512000
14	3892	São Lourenço	37470000
14	3893	São Manoel do Guaiaçu	36787000
14	3894	São Mateus de Minas	37652000
14	3895	São Miguel do Anta	36590000
14	3896	São Pedro da Garça	39411000
14	3897	São Pedro da União	37855000
14	3898	São Pedro Das Tabocas	39494000
14	3899	São Pedro de Caldas	37787000
14	3900	São Pedro do Avaí	36906000
14	3901	São Pedro do Glória	36819000
14	3902	São Pedro do Jequitinhonha	39961000
14	3903	São Pedro do Suaçuí	39784000
14	3904	São Pedro Dos Ferros	35360000
14	3905	São Roberto	39358000
14	3906	São Romão	39290000
14	3907	São Roque de Minas	37928000
14	3908	São Sebastião da Barra	35192000
14	3909	São Sebastião da Bela Vista	37567000
14	3910	São Sebastião da Vala	35215000
14	3911	São Sebastião da Vargem Alegre	36793000
14	3912	São Sebastião da Vitória	36316000
14	3913	São Sebastião de Braúnas	35197000
14	3914	São Sebastião do Anta	35334000
14	3915	São Sebastião do Baixio	35154000
14	3916	São Sebastião do Barreado	36131000
14	3917	São Sebastião do Barreiro	39839000
14	3918	São Sebastião do Bonsucesso	35862000
14	3919	São Sebastião do Bugre	39712000
14	3920	São Sebastião do Gil	35493000
14	3921	São Sebastião do Maranhão	39795000
14	3922	São Sebastião do Óculo	35356000
14	3923	São Sebastião do Oeste	35506000
14	3924	São Sebastião do Paraíso	37950000
14	3925	São Sebastião do Pontal	38292000
14	3926	São Sebastião do Rio Preto	35815000
14	3927	São Sebastião do Rio Verde	37467000
14	3928	São Sebastião do Sacramento	36908000
14	3929	São Sebastião do Soberbo	35387000
14	3930	São Sebastião Dos Poções	39497000
14	3931	São Sebastião Dos Robertos	37592000
14	3932	São Sebastião Dos Torres	36206700
14	3933	São Tiago	36350000
14	3934	São Tomás de Aquino	37960000
14	3935	São Thomé Das Letras	37418000
14	3936	São Vicente	35707000
14	3937	São Vicente da Estrela	35355000
14	3938	São Vicente de Minas	37370000
14	3939	São Vicente do Grama	35398000
14	3940	São Vicente do Rio Doce	35143000
14	3941	São Vítor	35104000
14	3942	Sapucaí	37594000
14	3943	Sapucaí-mirim	37690000
14	3944	Sapucaia	35311000
14	3945	Sapucaia de Guanhães	39742000
14	3946	Sapucaia do Norte	35255000
14	3947	Sarandira	36104000
14	3948	Sardoá	39728000
14	3949	Sarzedo	32450000
14	3950	Saudade	36645000
14	3951	Sem Peixe	35441000
14	3952	Senador Amaral	37615000
14	3953	Senador Cortes	36650000
14	3954	Senador Firmino	36540000
14	3955	Senador José Bento	37558000
14	3956	Senador Melo Viana	00000000
14	3957	Senador Modestino Gonçalves	39190000
14	3958	Senador Mourão	39112000
14	3959	Senhora da Glória	39212000
14	3960	Senhora da Penha	35136000
14	3961	Senhora Das Dores	36207000
14	3962	Senhora de Oliveira	36470000
14	3963	Senhora do Carmo	35907000
14	3964	Senhora do Porto	39745000
14	3965	Senhora Dos Remédios	36275000
14	3966	Sereno	36777000
14	3967	Sericita	35368000
14	3968	Seritinga	37454000
14	3969	Serra Azul	35674000
14	3970	Serra Azul de Minas	39165000
14	3971	Serra Bonita	38665000
14	3972	Serra da Canastra	37929000
14	3973	Serra da Saudade	35617000
14	3974	Serra Das Araras	39310000
14	3975	Serra do Camapuã	35491000
14	3976	Serra do Salitre	38760000
14	3977	Serra Dos Aimorés	39868000
14	3978	Serra Dos Lemes	37885000
14	3979	Serra Nova	39532000
14	3980	Serrania	37136000
14	3981	Serranópolis de Minas	39518000
14	3982	Serranos	37452000
14	3983	Serro	39150000
14	3984	Sertãozinho	37565500
14	3985	Sete Cachoeiras	35802000
14	3986	Sete Lagoas	00000000
14	3987	Setubinha	39688000
14	3988	Silva Campos	35645000
14	3989	Silva Xavier	35705000
14	3990	Silvano	38744000
14	3991	Silveira Carvalho	36873000
14	3992	Silveirânia	36185000
14	3993	Silvestre	36572000
14	3994	Silvianópolis	37560000
14	3995	Simão Campos	39432000
14	3996	Simão Pereira	36123000
14	3997	Simonésia	36930000
14	3998	Sobral Pinto	36782000
14	3999	Sobrália	35145000
14	4000	Soledade de Minas	37478000
14	4001	Sopa	39102000
14	4002	Tabajara	35333000
14	4003	Tabaúna	35206000
14	4004	Tabuão	37315000
14	4005	Tabuleiro	36165000
14	4006	Taiobeiras	39550000
14	4007	Taparuba	36953000
14	4008	Tapira	38185000
14	4009	Tapiraí	38980000
14	4010	Tapuirama	38417000
14	4011	Taquaraçu de Minas	33980000
14	4012	Taruaçu	36688000
14	4013	Tarumirim	35140000
14	4014	Tebas	36702000
14	4015	Teixeiras	36580000
14	4016	Tejuco	39484000
14	4017	Teófilo Otoni	00000000
14	4018	Terra Branca	39393000
14	4019	Timóteo	00000000
14	4020	Tiradentes	36325000
14	4021	Tiros	38880000
14	4022	Tobati	38953000
14	4023	Tocandira	39523000
14	4024	Tocantins	36512000
14	4025	Tocos do Moji	37563000
14	4026	Toledo	37630000
14	4027	Tomás Gonzaga	35789000
14	4028	Tombos	36844000
14	4029	Topázio	39807000
14	4030	Torneiros	35665100
14	4031	Torreões	36107000
14	4032	Três Corações	37410000
14	4033	Três Ilhas	36127000
14	4034	Três Marias	39205000
14	4035	Três Pontas	37190000
14	4036	Trimonte	36723000
14	4037	Tuiutinga	36528000
14	4038	Tumiritinga	35125000
14	4039	Tupaciguara	38430000
14	4040	Tuparecê	39623000
14	4041	Turmalina	39660000
14	4042	Turvolândia	37496000
14	4043	Ubá	36500000
14	4044	Ubaí	39320000
14	4045	Ubaporanga	35338000
14	4046	Ubari	36508000
14	4047	Uberaba	00000000
14	4048	Uberlândia	00000000
14	4049	Umburatiba	39878000
14	4050	Umbuzeiro	39439000
14	4051	Unaí	38610000
14	4052	União de Minas	38288000
14	4053	Uruana de Minas	38630000
14	4054	Urucânia	35380000
14	4055	Urucuia	39315000
14	4056	Usina Monte Alegre	37118000
14	4057	Vai-volta	35142000
14	4058	Valadares	36101000
14	4059	Valão	39829000
14	4060	Vale Verde de Minas	35198500
14	4061	Valo Fundo	39213000
14	4062	Vargem Alegre	35199000
14	4063	Vargem Bonita	37922000
14	4064	Vargem Grande do Rio Pardo	39535000
14	4065	Vargem Linda	35998000
14	4066	Varginha	00000000
14	4067	Varjão de Minas	38794000
14	4068	Várzea da Palma	39260000
14	4069	Varzelândia	39450000
14	4070	Vau-açu	35435000
14	4071	Vazante	38780000
14	4072	Vera Cruz de Minas	33680000
14	4073	Verdelândia	39458000
14	4074	Vereda do Paraíso	39545000
14	4075	Veredas	38775000
14	4076	Veredinha	39663000
14	4077	Veríssimo	38150000
14	4078	Vermelho	36890000
14	4079	Vermelho Novo	35359000
14	4080	Vermelho Velho	35354000
14	4081	Vespasiano	33200000
14	4082	Viçosa	36570000
14	4083	Vieiras	36895000
14	4084	Vila Bom Jesus	38688000
14	4085	Vila Costina	35583000
14	4086	Vila Nova de Minas	39416000
14	4087	Vila Nova Dos Poções	39444000
14	4088	Vila Pereira	39862000
14	4089	Vilas Boas	36526000
14	4090	Virgem da Lapa	39630000
14	4091	Virgínia	37465000
14	4092	Virginópolis	39730000
14	4093	Virgolândia	39715000
14	4094	Visconde do Rio Branco	36520000
14	4095	Vista Alegre	36778000
14	4096	Vista Alegre	39385000
14	4097	Vitorinos	36264000
14	4098	Volta Grande	36720000
14	4099	Wenceslau Braz	37512000
14	4100	Zelândia	38176000
14	4101	Zito Soares	35383000
14	10117	Sucanga	39828000
14	10205	Chonin de Baixo	35109500
14	10236	Taquaral de Guanhães	39743000
15	4522	Abaetetuba	68440000
15	4523	Abel Figueiredo	68527000
15	4524	Acará	68690000
15	4525	Afuá	68890000
15	4526	Agrópolis Bela Vista	68111000
15	4527	Água Azul do Norte	68533000
15	4528	Água Fria	68559300
15	4529	Alenquer	68200000
15	4530	Algodoal	68712000
15	4531	Almeirim	68230000
15	4532	Almoço	68608000
15	4533	Alta Pará	68112000
15	4534	Altamira	00000000
15	4535	Alter do Chão	68109000
15	4536	Alvorada	68191700
15	4537	Americano	68792000
15	4538	Anajás	68810000
15	4539	Ananindeua	00000000
15	4540	Anapu	68365000
15	4541	Antônio Lemos	68803000
15	4542	Apeú	68747000
15	4544	Apinagés	68519000
15	4545	Arapixuna	68128000
15	4546	Araquaim	68752000
15	4547	Arco-íris	68631200
15	4548	Areias	68495000
15	4549	Arumanduba	68235000
15	4550	Aruri	68191500
15	4551	Aturiaí	68612000
15	4552	Augusto Corrêa	68610000
15	4553	Aurora do Pará	68658000
15	4554	Aveiro	68150000
15	4555	Bagre	68475000
15	4556	Baião	68465000
15	4557	Bannach	68388000
15	4558	Barcarena	68445000
15	4559	Barreira Branca	68568000
15	4560	Barreira Dos Campos	68562000
15	4561	Barreiras	68192000
15	4562	Baturité	68892000
15	4563	Beja	68444000
15	4564	Bela Vista do Caracol	68191600
15	4565	Belém	00000000
15	4566	Belterra	68143000
15	4567	Benevides	68795000
15	4568	Benfica	68797000
15	4569	Boa Esperança	68718000
15	4570	Boa Esperança	68113000
15	4571	Boa Fé	68114000
15	4572	Boa Sorte	68549100
15	4573	Boa Vista do Iririteua	68751000
15	4574	Boim	68115000
15	4575	Bom Jardim	68713000
15	4576	Bom Jesus do Tocantins	68525000
15	4577	Bonito	68645000
15	4578	Bragança	68600000
15	4579	Brasil Novo	68148000
15	4580	Brasília Legal	68160000
15	4581	Brejo do Meio	68514200
15	4582	Brejo Grande do Araguaia	68521000
15	4583	Breu Branco	68488000
15	4584	Breves	68800000
15	4585	Bujaru	68670000
15	4586	Cachoeira do Piriá	68617000
15	4587	Cachoeira do Arari	68840000
15	4588	Cafezal	68723000
15	4589	Cairari	68453000
15	4590	Caju	68661000
15	4591	Câmara do Marajó	68845000
15	4592	Cambuquira	68116000
15	4593	Cametá	68400000
15	4594	Camiranga	68624000
15	4595	Canaã Dos Carajás	68537000
15	4596	Capanema	00000000
15	4597	Capitão Poço	68650000
15	4598	Caracará do Arari	68848000
15	4599	Carajás	68516000
15	4600	Carapajó	68404000
15	4601	Caraparu	68791000
15	4602	Caratateua	68609000
15	4603	Caripi	68726000
15	4604	Carrazedo	68310000
15	4605	Castanhal	00000000
15	4606	Castelo Dos Sonhos	68379200
15	4607	Chaves	68880000
15	4608	Colares	68785000
15	4609	Conceição	68631400
15	4610	Conceição do Araguaia	68540000
15	4611	Concórdia do Pará	68685000
15	4612	Condeixa	68862000
15	4613	Coqueiro	67000000
15	4614	Cripurizão	68192200
15	4615	Cripurizinho	68192300
15	4616	Cuiú-cuiú	68192400
15	4617	Cumaru do Norte	68398000
15	4618	Curionópolis	68523000
15	4619	Curralinho	68815000
15	4620	Curuá	68210000
15	4621	Curuaí	68125000
15	4622	Curuçá	68750000
15	4623	Curuçambaba	68406000
15	4624	Curumu	68805000
15	4625	Dom Eliseu	68633000
15	4626	Eldorado Dos Carajás	68524000
15	4627	Emboraí	68614000
15	4628	Espírito Santo do Tauá	68787000
15	4629	Faro	68280000
15	4630	Fernandes Belo	68622000
15	4631	Flexal	68260000
15	4632	Floresta	68192500
15	4633	Floresta do Araguaia	68543000
15	4634	Garrafão do Norte	68665000
15	4635	Goianésia do Pará	68639000
15	4636	Gradaus	68394000
15	4637	Guajará-açú	68672000
15	4638	Guajará-miri	68692000
15	4639	Gurupá	68300000
15	4640	Gurupizinho	68631000
15	4641	Hidrelétrica Tucuruí	68464000
15	4642	Iataí	68379100
15	4643	Icoaraci	00000000
15	4644	Igarapé da Lama	68117000
15	4645	Igarapé-açu	68725000
15	4646	Igarapé-miri	68430000
15	4647	Inanu	68118000
15	4648	Inhangapi	68770000
15	4649	Ipixuna do Pará	68637000
15	4650	Irituia	68655000
15	4651	Itaituba	00000000
15	4652	Itapixuna	68615000
15	4653	Itatupã	68320000
15	4654	Itupiranga	68580000
15	4655	Jacareacanga	68195000
15	4656	Jacundá	68590000
15	4657	Jaguarari	68693000
15	4658	Jamanxinzinho	68192600
15	4659	Jambuaçu	68749000
15	4660	Jandiaí	68772000
15	4661	Japerica	68708000
15	4662	Joana Coeli	68412000
15	4663	Joana Peres	68468000
15	4664	Joanes	68864000
15	4665	Juabá	68402000
15	4666	Jubim	68866000
15	4667	Juruti	68170000
15	4668	Km 19	68714000
15	4669	Km 26	68715000
15	4670	Lauro Sodré	68753000
15	4671	Ligação do Pará	68631600
15	4672	Limoeiro do Ajuru	68415000
15	4673	Mãe do Rio	68675000
15	4674	Magalhães Barata	68722000
15	4675	Maiauata	68435000
15	4676	Manjeiro	68425000
15	4677	Marabá	00000000
15	4678	Maracanã	68710000
15	4679	Marajoara	68549300
15	4680	Marapanim	68760000
15	4681	Marituba	67200000
15	4682	Marudá	68768000
15	4683	Mata Geral	68549200
15	4684	Matapiquara	68762000
15	4685	Medicilândia	68145000
15	4686	Melgaço	68490000
15	4687	Menino Deus do Anapu	68433000
15	4688	Meruú	68438000
15	4689	Mirasselvas	68706000
15	4690	Miritituba	68191400
15	4691	Mocajuba	68420000
15	4692	Moiraba	68408000
15	4693	Moju	68450000
15	4694	Monsaras	68868000
15	4695	Monte Alegre	68220000
15	4696	Monte Alegre do Mau	68764000
15	4697	Monte Dourado	68240000
15	4698	Morada Nova	68514300
15	4699	Mosqueiro	00000000
15	4700	Muaná	68825000
15	4701	Mujuí Dos Campos	68120000
15	4702	Murajá	68754000
15	4703	Murucupi	68448000
15	4704	Murumuru	68514400
15	4705	Muta	68835000
15	4706	Mutucal	68755000
15	4707	Nazaré de Mocajuba	68756000
15	4708	Nazaré Dos Patos	68462000
15	4709	Nova Esperança do Piriá	68618000
15	4710	Nova Ipixuna	68585000
15	4711	Nova Mocajuba	68604000
15	4712	Nova Timboteua	68730000
15	4713	Novo Planalto	68549400
15	4714	Novo Progresso	68193000
15	4715	Novo Repartimento	68473000
15	4716	Núcleo Urbano Quilômetro 30	68192700
15	4717	Óbidos	68250000
15	4718	Oeiras do Pará	68470000
15	4719	Oriximiná	68270000
15	4720	Osvaldilândia	68549500
15	4721	Otelo	66000000
15	4722	Ourém	68640000
15	4723	Ourilândia do Norte	68390000
15	4724	Outeiro	00000000
15	4725	Pacajá	68485000
15	4726	Pacoval	68135000
15	4727	Palestina do Pará	68535000
15	4728	Paragominas	00000000
15	4729	Paratins	68514500
15	4730	Parauapebas	68515000
15	4731	Pau D Arco	68545000
15	4732	Pedreira	68478000
15	4733	Peixe-boi	68734000
15	4734	Penhalonga	68781000
15	4735	Perseverança	68776000
15	4736	Pesqueiro	68875000
15	4737	Piabas	68607000
15	4738	Piçarra	68575000
15	4739	Piçarra	68559400
15	4740	Pinhal	68155000
15	4741	Piraquara	68119000
15	4742	Piriá	68818000
15	4743	Placas	68138000
15	4744	Ponta de Pedras	68830000
15	4745	Ponta de Ramos	68758000
15	4746	Portel	68480000
15	4747	Porto de Moz	68330000
15	4748	Porto Salvo	68782000
15	4749	Porto Trombetas	68275000
15	4750	Prainha	68130000
15	4751	Primavera	68707000
15	4752	Quatipuru	68709000
15	4753	Quatro Bocas	68682000
15	4754	Redenção	00000000
15	4755	Remansão	68461000
15	4756	Repartimento	68463000
15	4757	Rio Maria	68530000
15	4758	Rio Vermelho	68559500
15	4759	Riozinho	68191300
15	4760	Rondon do Pará	68638000
15	4761	Rurópolis	68165000
15	4762	Salinópolis	68721000
15	4763	Salvaterra	68860000
15	4764	Santa Bárbara do Pará	68798000
15	4765	Santa Cruz do Arari	68850000
15	4766	Santa Isabel do Pará	68790000
15	4767	Santa Luzia do Pará	68644000
15	4768	Santa Maria	68716000
15	4769	Santa Maria Das Barreiras	68565000
15	4770	Santa Maria do Pará	68738000
15	4771	Santa Rosa da Vigia	68783000
15	4772	Santa Terezinha	68747500
15	4773	Santana do Araguaia	68560000
15	4774	Santarém	00000000
15	4775	Santarém Novo	68720000
15	4776	Santo Antônio	68549000
15	4777	Santo Antônio do Tauá	68786000
15	4778	São Caetano de Odivelas	68775000
15	4779	São Domingos do Araguaia	68520000
15	4780	São Domingos do Capim	68635000
15	4781	São Félix do Xingu	68380000
15	4782	São Francisco	68559600
15	4783	São Francisco da Jararaca	68828000
15	4784	São Francisco do Pará	68748000
15	4785	São Geraldo do Araguaia	68570000
15	4786	São João da Ponta	68774000
15	4787	São João de Pirabas	68719000
15	4788	São João do Acangata	68482000
15	4789	São João do Araguaia	68518000
15	4790	São João do Piriá	68631800
15	4791	São João Dos Ramos	68778000
15	4792	São Joaquim do Tapará	68124000
15	4793	São Jorge	68126000
15	4794	São José do Gurupi	68623000
15	4795	São José do Piriá	68621000
15	4796	São Luiz do Tapajós	68190000
15	4797	São Miguel do Guamá	68660000
15	4798	São Miguel Dos Macacos	68808000
15	4799	São Pedro de Viseu	68428000
15	4800	São Pedro do Capim	68636000
15	4801	São Raimundo de Borralhos	68788000
15	4802	São Raimundo do Araguaia	68522000
15	4803	São Raimundo Dos Furtados	68410000
15	4804	São Roberto	68711000
15	4805	São Sebastião da Boa Vista	68820000
15	4806	São Sebastião de Viçosa	68885000
15	4807	Sapucaia	68548000
15	4808	Senador José Porfírio	68360000
15	4809	Serra Pelada	68514000
15	4810	Soure	68870000
15	4811	Tailândia	68695000
15	4812	Tatuteua	68717000
15	4813	Tauari	68705000
15	4814	Tauarizinho	68735000
15	4815	Tentugal	68642000
15	4816	Terra Alta	68773000
15	4817	Terra Santa	68285000
15	4818	Tijoca	68606000
15	4819	Timboteua	68732000
15	4820	Tomé-açú	68680000
15	4821	Tracuateua	68647000
15	4822	Trairão	68198000
15	4823	Tucumã	68385000
15	4824	Tucuruí	00000000
15	4825	Ulianópolis	68632000
15	4826	Uruará	68140000
15	4827	Urucuri	68663000
15	4828	Urucuriteua	68662000
15	4829	Val-de-cães	00000000
15	4830	Veiros	68350000
15	4831	Vigia	68780000
15	4832	Vila do Carmo do Tocantins	68409000
15	4833	Vila Dos Cabanos	68447000
15	4834	Vila França	68121000
15	4835	Vila Goreth	68122000
15	4836	Vila Isol	68191200
15	4837	Vila Nova	68779000
15	4838	Vila Planalto	68191000
15	4839	Vila Santa Fé	68514100
15	4840	Vila Socorro	68123000
15	4841	Vilarinho do Monte	68340000
15	4842	Viseu	68620000
15	4843	Vista Alegre	68759000
15	4844	Vista Alegre do Pará	68765000
15	4845	Vitória do Xingu	68383000
15	4846	Xinguara	00000000
15	4847	Xinguarinha	68559200
16	4848	Água Branca	58748000
16	4849	Aguiar	58778000
16	4850	Alagoa Grande	58388000
16	4851	Alagoa Nova	58125000
16	4852	Alagoinha	58390000
16	4853	Alcantil	58460000
16	4854	Algodão de Jandaíra	58399000
16	4855	Alhandra	58320000
16	4856	Amparo	58548000
16	4857	Aparecida	58823000
16	4858	Araçagi	58270000
16	4859	Arara	58396000
16	4860	Araruna	58233000
16	4861	Areia	58397000
16	4862	Areia de Baraúnas	58732000
16	4863	Areial	58140000
16	4864	Areias	58916000
16	4865	Aroeiras	58400000
16	4866	Riachão do Bacamarte	58382000
16	4867	Assunção	58685000
16	4868	Baía da Traição	58295000
16	4869	Balanços	58937000
16	4870	Bananeiras	58220000
16	4871	Baraúna	58188000
16	4872	Barra de Santa Rosa	58170000
16	4873	Barra de Santana	58458000
16	4874	Barra de São Miguel	58470000
16	4875	Barra do Camaratuba	58293000
16	4876	Bayeux	00000000
16	4877	Belém	58255000
16	4878	Belém do Brejo do Cruz	58895000
16	4879	Bernardino Batista	58922000
16	4880	Boa Ventura	58993000
16	4881	Boa Vista	58123000
16	4882	Bom Jesus	58930000
16	4883	Bom Sucesso	58887000
16	4884	Bom Sucesso	58156000
16	4885	Bonito de Santa Fé	58960000
16	4886	Boqueirão	58450000
16	4887	Borborema	58394000
16	4888	Brejo do Cruz	58890000
16	4889	Brejo Dos Santos	58880000
16	4890	Caaporã	58326000
16	4891	Cabaceiras	58480000
16	4892	Cabedelo	58310000
16	4893	Cachoeira	58205000
16	4894	Cachoeira Dos Índios	58935000
16	4895	Cachoeirinha	58983000
16	4896	Cacimba de Areia	58730000
16	4897	Cacimba de Dentro	58230000
16	4898	Cacimbas	58698000
16	4899	Caiçara	58253000
16	4900	Cajazeiras	58900000
16	4901	Cajazeirinhas	58855000
16	4902	Caldas Brandão	58350000
16	4903	Camalaú	58530000
16	4904	Campina Grande	00000000
16	4905	Campo Alegre	58813000
16	4906	Campo Grande	58362000
16	4907	Camurupim	58299000
16	4908	Capim	58287000
16	4909	Caraúbas	58595000
16	4910	Cardoso	58973000
16	4911	Carrapateira	58945000
16	4912	Casinha do Homem	58826000
16	4913	Casserengue	58238000
16	4914	Catingueira	58715000
16	4915	Catolé	58114000
16	4916	Catolé do Rocha	58884000
16	4917	Caturité	58455000
16	4918	Cepilho	58397500
16	4919	Conceição	58970000
16	4920	Condado	58714000
16	4921	Conde	58322000
16	4922	Congo	58535000
16	4923	Coremas	58770000
16	4924	Coronel Maia	58885000
16	4925	Coxixola	58588000
16	4926	Cruz do Espírito Santo	58337000
16	4927	Cubati	58167000
16	4928	Cuité	58175000
16	4929	Cuité de Mamanguape	58289000
16	4930	Cuitegi	58208000
16	4931	Cupissura	58327000
16	4932	Curral de Cima	58291000
16	4933	Curral Velho	58990000
16	4934	Damião	58173000
16	4935	Desterro	58695000
16	4936	Diamante	58994000
16	4937	Dona Inês	58228000
16	4938	Duas Estradas	58265000
16	4939	Emas	58763000
16	4940	Engenheiro Ávidos	58905000
16	4941	Esperança	58135000
16	4942	Fagundes	58430000
16	4943	Fátima	58936000
16	4944	Fazenda Nova	58918000
16	4945	Forte Velho	58304300
16	4946	Frei Martinho	58195000
16	4947	Gado Bravo	58405000
16	4948	Galante	58110000
16	4949	Guarabira	58200000
16	4950	Guarita	58364000
16	4951	Gurinhém	58356000
16	4952	Gurjão	58670000
16	4953	Ibiara	58980000
16	4954	Igaracy	58775000
16	4955	Imaculada	58745000
16	4956	Ingá	58380000
16	4957	Itabaiana	58360000
16	4958	Itajubatiba	58718000
16	4959	Itaporanga	58780000
16	4960	Itapororoca	58275000
16	4961	Itatuba	58378000
16	4962	Jacaraú	58278000
16	4963	Jericó	58830000
16	4964	João Pessoa	00000000
16	4965	Juarez Távora	58387000
16	4966	Juazeirinho	58660000
16	4967	Junco do Seridó	58640000
16	4968	Juripiranga	58330000
16	4969	Juru	58750000
16	4970	Lagoa	58835000
16	4971	Lagoa de Dentro	58250000
16	4972	Lagoa de Dentro	58114200
16	4973	Lagoa Seca	58117000
16	4974	Lastro	58820000
16	4975	Lerolândia	58304400
16	4976	Livramento	58690000
16	4977	Logradouro	58254000
16	4978	Lucena	58315000
16	4979	Mãe D Água	58740000
16	4980	Maia	58222000
16	4981	Malta	58713000
16	4982	Mamanguape	58280000
16	4983	Manaíra	58995000
16	4984	Marcação	58294000
16	4985	Mari	58345000
16	4986	Marizópolis	58819000
16	4987	Massaranduba	58120000
16	4988	Mata Limpa	58397600
16	4989	Mata Virgem	58425000
16	4990	Mataraca	58292000
16	4991	Matinhas	58128000
16	4992	Mato Grosso	58832000
16	4993	Maturéia	58737000
16	4994	Melo	58176000
16	4995	Mogeiro	58375000
16	4996	Montadas	58145000
16	4997	Monte Horebe	58950000
16	4998	Monteiro	58500000
16	4999	Montevidéu	58975000
16	5000	Mulungu	58354000
16	5001	Muquém	58397700
16	5002	Natuba	58410000
16	5003	Nazaré	58152000
16	5004	Nazarezinho	58817000
16	5005	Nossa Senhora do Livramento	58304000
16	5006	Nova Floresta	58178000
16	5007	Nova Olinda	58798000
16	5008	Nova Palmeira	58184000
16	5009	Núcleo N 2	58814500
16	5010	Núcleo N 3	58814600
16	5011	Odilândia	58304600
16	5012	Olho D Água	58760000
16	5013	Olivedos	58160000
16	5014	Ouro Velho	58560000
16	5015	Parari	58575000
16	5016	Passagem	58734000
16	5017	Patos	00000000
16	5018	Paulista	58860000
16	5019	Pedra Branca	58790000
16	5020	Pedra Lavrada	58180000
16	5021	Pedras de Fogo	58328000
16	5022	Pedro Régis	58273000
16	5023	Pelo Sinal	58996000
16	5024	Pereiros	58814700
16	5025	Piancó	58765000
16	5026	Picuí	58187000
16	5027	Pilar	58338000
16	5028	Pilões	58393000
16	5029	Pilõezinhos	58210000
16	5030	Pindurão	58533000
16	5031	Pio X	58545000
16	5032	Pirauá	58415000
16	5033	Pirpirituba	58213000
16	5034	Pitanga de Estrada	58286000
16	5035	Pitimbu	58324000
16	5036	Pocinhos	58150000
16	5037	Poço Dantas	58933000
16	5038	Poço de José de Moura	58908000
16	5039	Pombal	58840000
16	5040	Porteirinha de Pedra	58114400
16	5041	Prata	58550000
16	5042	Princesa Isabel	58755000
16	5043	Puxinanã	58115000
16	5044	Queimadas	58440000
16	5045	Quixabá	58733000
16	5046	Quixadá	58917000
16	5047	Remígio	58398000
16	5048	Riachão	58235000
16	5049	Riachão do Poço	58348000
16	5050	Riacho de Santo Antônio	58465000
16	5051	Riacho Dos Cavalos	58870000
16	5052	Ribeira	58304700
16	5053	Rio Tinto	58297000
16	5054	Rua Nova	58257000
16	5055	Salema	58298000
16	5056	Salgadinho	58650000
16	5057	Salgado de São Félix	58370000
16	5058	Santa Cecília de Umbuzeiro	58428000
16	5059	Santa Cruz	58824000
16	5060	Santa Gertrudes	58709000
16	5061	Santa Helena	58925000
16	5062	Santa Inês	58978000
16	5063	Santa Luzia	58600000
16	5064	Santa Luzia do Cariri	58582000
16	5065	Santa Maria	58525000
16	5066	Santa Rita	00000000
16	5067	Santa Rita	58919000
16	5068	Santa Teresinha	58720000
16	5069	Santa Terezinha	58114600
16	5070	Santana de Mangueira	58985000
16	5071	Santana Dos Garrotes	58795000
16	5072	Santarém	58928000
16	5073	Santo André	58675000
16	5074	São Bento	58865000
16	5075	São Bentinho	58857000
16	5076	São Domingos de Pombal	58853000
16	5077	São Domingos do Cariri	58485000
16	5078	São Francisco	58818000
16	5079	São Gonçalo	58814000
16	5080	São João Bosco	58916500
16	5081	São João do Cariri	58590000
16	5082	São João do Rio do Peixe	58910000
16	5083	São João do Tigre	58520000
16	5084	São José da Lagoa Tapada	58815000
16	5085	São José da Mata	58113000
16	5086	São José de Caiana	58784000
16	5087	São José de Espinharas	58723000
16	5088	São José de Marimbas	58938000
16	5089	São José de Piranhas	58940000
16	5090	São José de Princesa	58758000
16	5091	São José do Bonfim	58725000
16	5092	São José do Brejo do Cruz	58893000
16	5093	São José do Sabugi	58610000
16	5094	São José Dos Cordeiros	58570000
16	5095	São José Dos Ramos	58339000
16	5096	São Mamede	58625000
16	5097	São Miguel de Taipu	58334000
16	5098	São Pedro	58828000
16	5099	São Sebastião de Lagoa de Roça	58119000
16	5100	São Sebastião do Umbuzeiro	58510000
16	5101	Sapé	58340000
16	5102	Seridó	58159000
16	5103	São Vicente do Seridó	58158000
16	5104	Serra Branca	58580000
16	5105	Serra da Raiz	58260000
16	5106	Serra Grande	58955000
16	5107	Serra Redonda	58385000
16	5108	Serraria	58395000
16	5109	Sertãozinho	58268000
16	5110	Sobrado	58342000
16	5111	Solânea	58225000
16	5112	Soledade	58155000
16	5113	Sossego	58177000
16	5114	Sousa	00000000
16	5115	Sucuru	58586000
16	5116	Sumé	58540000
16	5117	Campo de Santana	58240000
16	5119	Tambauzinho	58304800
16	5120	Taperoá	58680000
16	5121	Tavares	58753000
16	5122	Teixeira	58735000
16	5123	Tenório	58665000
16	5124	Triunfo	58920000
16	5125	Uiraúna	58915000
16	5126	Umari	58913000
16	5127	Umbuzeiro	58420000
16	5128	Várzea	58620000
16	5129	Várzea Comprida	58850000
16	5130	Várzea Nova	58304500
16	5131	Vazante	58997000
16	5132	Vieirópolis	58822000
16	5133	Vista Serrana	58710000
16	5134	Zabelê	58515000
17	5730	Abapã	84185000
17	5731	Abatiá	86460000
17	5732	Acampamento Das Minas	84277500
17	5733	Açungui	83550000
17	5734	Adhemar de Barros	87895000
17	5735	Adrianópolis	83490000
17	5736	Agostinho	84194200
17	5737	Água Azul	83770000
17	5738	Água Boa	87145000
17	5739	Água Branca	85139500
17	5741	Água Mineral	85126000
17	5742	Água Vermelha	84197700
17	5743	Agudos do Sul	83850000
17	5744	Alecrim	84284000
17	5745	Alexandra	83250000
17	5746	Almirante Tamandaré	00000000
17	5747	Altamira do Paraná	85280000
17	5748	Altaneira	87108000
17	5749	Alto Alegre	86695000
17	5750	Alto Alegre	87523200
17	5751	Alto Alegre do Iguaçu	85794000
17	5752	Alto Amparo	84277700
17	5753	Alto do Amparo	84305000
17	5754	Alto Pará	85823950
17	5755	Alto Paraná	87750000
17	5756	Alto Piquiri	87580000
17	5757	Alto Porã	86875000
17	5758	Alto Sabiá	85138400
17	5759	Alto Santa Fé	85931000
17	5760	Alto São João	87323000
17	5761	Altônia	87550000
17	5762	Alvorada do Iguaçu	85872000
17	5763	Alvorada do Sul	86150000
17	5764	Amaporã	87850000
17	5765	Amorinha	84910000
17	5766	Ampére	85640000
17	5767	Anahy	85425000
17	5768	Andirá	86380000
17	5769	Andorinhas	84194500
17	5770	Angai	84538000
17	5771	Ângulo	86755000
17	5772	Antas	85322000
17	5773	Antas	84277000
17	5774	Antonina	83370000
17	5775	Antônio Brandão de Oliveira	86213000
17	5776	Antônio Olinto	83980000
17	5777	Anunciação	85654000
17	5778	Aparecida do Oeste	87455000
17	5779	Apiaba	84433000
17	5780	Apucarana	00000000
17	5781	Aquidaban	86995000
17	5782	Aranha	83419000
17	5783	Arapongas	00000000
17	5784	Arapoti	84990000
17	5785	Arapuã	86884000
17	5786	Arapuan	87385000
17	5787	Ararapira	83393000
17	5788	Araruna	87260000
17	5789	Araucária	00000000
17	5790	Areia Branca Dos Assis	83810000
17	5791	Areias	84198400
17	5792	Aricanduva	86719000
17	5793	Ariranha do Ivaí	86880000
17	5794	Aroeira	85822800
17	5795	Arquimedes	85824750
17	5796	Assaí	86220000
17	5797	Assis Chateaubriand	85935000
17	5798	Astorga	86730000
17	5799	Atalaia	87630000
17	5800	Aurora do Iguaçu	85878000
17	5801	Bairro Cachoeira	85137600
17	5802	Bairro do Felisberto	84277300
17	5803	Bairro Limoeiro	86102000
17	5804	Balsa Nova	83650000
17	5805	Bandeirantes	86360000
17	5806	Bandeirantes D Oeste	87368000
17	5807	Banhado	85138700
17	5808	Barão de Lucena	87610000
17	5809	Barbosa Ferraz	86960000
17	5810	Barra Bonita	85609100
17	5811	Barra Bonita	85245000
17	5812	Barra do Jacaré	86385000
17	5813	Barra Grande	85584000
17	5815	Barra Grande	85752000
17	5816	Barra Grande	84125900
17	5818	Barra Santa Salete	85265000
17	5819	Barracão	85700000
17	5820	Barras	87316600
17	5821	Barreiro	85822950
17	5822	Barreiro	85136000
17	5823	Barreiro	84380000
17	5824	Barreiro Das Frutas	87315600
17	5825	Barreiros	86817500
17	5826	Barrinha	84197200
17	5827	Barro Preto	85822700
17	5828	Barro Preto	86119000
17	5829	Barro Preto	83153000
17	5830	Bateias	83648000
17	5831	Baulândia	85613000
17	5832	Bela Vista	85406000
17	5833	Bela Vista	85267000
17	5834	Bela Vista do Caroba	85745000
17	5835	Bela Vista do Ivaí	86953000
17	5836	Bela Vista do Paraíso	86130000
17	5837	Bela Vista do Piquiri	87347000
17	5838	Bela Vista do Tapiracui	87440000
17	5839	Bentópolis	86625000
17	5840	Bernardelli	87805000
17	5841	Betaras	83531000
17	5842	Bituruna	84640000
17	5843	Boa Esperança	87390000
17	5844	Boa Esperança	87317000
17	5845	Boa Esperança do Iguaçu	85680000
17	5846	Boa Ventura de São Roque	85225000
17	5847	Boa Vista	83649000
17	5848	Boa Vista	85514400
17	5849	Boa Vista	84125400
17	5850	Boa Vista	85926850
17	5851	Boa Vista	85258000
17	5852	Boa Vista da Aparecida	85780000
17	5853	Bocaina	84125200
17	5854	Bocaiúva do Sul	83450000
17	5855	Bom Jardim do Sul	84465000
17	5856	Bom Jesus do Sul	85708000
17	5857	Bom Progresso	86728000
17	5858	Bom Retiro	85823700
17	5859	Bom Retiro	85122000
17	5860	Bom Retiro	85514250
17	5861	Bom Retiro	85175000
17	5862	Bom Sucesso	86940000
17	5863	Bom Sucesso	85139900
17	5864	Bom Sucesso do Sul	85515000
17	5865	Borda do Campo	83425000
17	5867	Borman	85405000
17	5868	Borrazópolis	86925000
17	5869	Botuquara	84126600
17	5870	Bourbonia	86963000
17	5871	Braganey	85430000
17	5872	Bragantina	85937000
17	5873	Brasilândia do Sul	87595000
17	5874	Bugre	83660000
17	5875	Bulcão	84193800
17	5876	Cabrito	87729800
17	5877	Cacatu	83375000
17	5878	Cachoeira	85823750
17	5879	Cachoeira de Cima	83380000
17	5880	Cachoeira de São José	83181000
17	5881	Cachoeira do Espírito Santo	86415000
17	5882	Cachoeirinha	85139300
17	5883	Cachoeirinha	85514500
17	5884	Cadeadinho	84518000
17	5885	Caetano Mendes	84315000
17	5886	Cafeara	86640000
17	5887	Cafeeiros	87405000
17	5888	Cafelândia	85415000
17	5889	Cafezal do Sul	87565000
17	5890	Caitá	83920000
17	5892	Califórnia	86820000
17	5893	Calógeras	84995000
17	5894	Cambará	86390000
17	5895	Cambé	00000000
17	5896	Cambiju	84127700
17	5897	Cambira	86890000
17	5898	Campestrinho	83729900
17	5899	Campina	83649350
17	5900	Campina	85107000
17	5901	Campina	83159000
17	5902	Campina da Lagoa	87345000
17	5903	Campina do Miranguava	83154000
17	5904	Campina do Simão	85148000
17	5905	Campina Dos Furtados	83161000
17	5906	Campina Grande do Sul	83430000
17	5907	Campinas	83649900
17	5908	Campo Bonito	85450000
17	5909	Campo do Meio	84128400
17	5910	Campo do Tenente	83870000
17	5911	Campo Largo	00000000
17	5912	Campo Largo da Roseira	83183000
17	5913	Campo Magro	83535000
17	5914	Campo Mourão	00000000
17	5915	Cândido de Abreu	84470000
17	5916	Candói	85140000
17	5917	Canela	85612000
17	5918	Cantagalo	85160000
17	5919	Canzianópolis	85735000
17	5920	Capanema	85760000
17	5921	Capão Alto	84196000
17	5922	Capão Alto	85138800
17	5923	Capão Bonito	85138500
17	5924	Capão da Lagoa	85120000
17	5925	Capão Grande	84127500
17	5926	Capão Rico	85121000
17	5927	Capitão Leônidas Marques	85790000
17	5928	Capivara	83534000
17	5929	Capoeirinha	84199400
17	5930	Cara Pintado	85106000
17	5931	Cará-cará	84126900
17	5932	Carajá	85837000
17	5933	Carambeí	84145000
17	5934	Caramuru	86199600
17	5935	Caratuva	84998000
17	5936	Carazinho	84127200
17	5937	Carbonera	87483000
17	5938	Carlópolis	86420000
17	5939	Casa Nova	84194400
17	5940	Cascatinha	86199400
17	5941	Cascavel	00000000
17	5942	Castro	00000000
17	5943	Catanduvas	85470000
17	5944	Catanduvas	84199800
17	5945	Catanduvas do Sul	83740000
17	5946	Catarinenses	87724000
17	5947	Caxambu	84194300
17	5948	Centenário	84126200
17	5949	Centenário do Sul	86630000
17	5950	Central Lupion	85823600
17	5951	Centralito	85823500
17	5952	Centro Novo	85754000
17	5953	Cerne	83649450
17	5954	Cerrado Grande	84126400
17	5955	Cerro Azul	83570000
17	5956	Cerro Velho	84127300
17	5957	Céu Azul	85840000
17	5958	Chopinzinho	85560000
17	5959	Cianorte	87200000
17	5960	Cidade Gaúcha	87820000
17	5961	Cintra Pimentel	87975000
17	5962	Clevelândia	85530000
17	5963	Coitinho	85137500
17	5964	Colombo	00000000
17	5965	Colônia Acioli	83151000
17	5966	Colônia Castelhanos	83165000
17	5967	Colônia Castrolânda	84196200
17	5968	Colônia Centenário	85822550
17	5969	Colônia Cristina	83729000
17	5970	Colônia Dom Carlos	85514100
17	5971	Colônia Esperança	85822900
17	5972	Colônia General Carneiro	84662000
17	5973	Colônia Iapó	84193500
17	5974	Colônia Melissa	85822650
17	5975	Colônia Murici	83185000
17	5976	Colônia Padre Paulo	83855000
17	5977	Colônia Pereira	83251850
17	5978	Colônia Santos Andrade	83162000
17	5979	Colônia São José	85823650
17	5980	Colônia Sapucaí	85822750
17	5981	Colônia Saúde	86118000
17	5982	Colônia Tapera	84127100
17	5983	Colorado	86690000
17	5984	Comur	87870000
17	5986	Conceição	84196500
17	5987	Conchas Velhas	84126000
17	5988	Conciolândia	85743000
17	5989	Congonhas	86305000
17	5990	Congonhinhas	86320000
17	5991	Conselheiro Mairinck	86480000
17	5992	Conselheiro Zacarias	86440000
17	5993	Contenda	83730000
17	5994	Copacabana do Norte	87195000
17	5995	Corbélia	85420000
17	5996	Cornélio Procópio	86300000
17	5997	Coronel Domingos Soares	85557000
17	5998	Coronel Firmino Martins	85536000
17	5999	Coronel Vivida	85550000
17	6000	Correia de Freitas	86816000
17	6001	Corumbataí do Sul	86970000
17	6002	Corvo	85111000
17	6003	Costeira	83729700
17	6004	Covó	85545000
17	6005	Coxilha Rica	85582000
17	6006	Cristo Rei	85763000
17	6007	Cristo Rei	87728000
17	6008	Cruz Machado	84620000
17	6009	Cruzeiro do Iguaçu	85598000
17	6010	Cruzeiro do Norte	86285000
17	6011	Cruzeiro do Oeste	87400000
17	6012	Cruzeiro do Sul	87650000
17	6013	Cruzmaltina	86855000
17	6014	Cunhaporanga	84193900
17	6015	Curitiba	00000000
17	6016	Curiúva	84280000
17	6017	Curucaca	85138200
17	6018	Deputado José Afonso	87726000
17	6019	Despique	83158000
17	6021	Dez de Maio	85920000
17	6023	Diamante D Oeste	85896000
17	6024	Diamante do Norte	87990000
17	6025	Diamante do Sul	85408000
17	6026	Doce Grande	83843000
17	6027	Dois Irmãos	85571000
17	6028	Dois Irmãos	85923000
17	6029	Dois Marcos	85926550
17	6030	Dois Vizinhos	85660000
17	6031	Dom Rodrigo	83649650
17	6032	Dorizon	84574000
17	6033	Douradina	87485000
17	6034	Doutor Antônio Paranhos	85579000
17	6035	Doutor Camargo	87155000
17	6036	Doutor Ernesto	85926500
17	6037	Doutor Oliveira Castro	85985000
17	6038	Doutor Ulysses	83590000
17	6039	Eduardo Xavier da Silva	84210000
17	6040	Emboguaçu	83251250
17	6041	Emboque	83319600
17	6042	Emboque	83150000
17	6043	Encantado D Oeste	85936000
17	6044	Encruzilhada	85138900
17	6045	Encruzilhada	85514900
17	6046	Enéas Marques	85630000
17	6047	Engenheiro Beltrão	87270000
17	6048	Entre Rios	85108000
17	6049	Entre Rios do Oeste	85988000
17	6050	Esperança do Norte	86155000
17	6051	Esperança Nova	87545000
17	6052	Espigão Alto do Iguaçu	85465000
17	6053	Espírito Santo	86106000
17	6054	Estação General Lúcio	83729500
17	6055	Estação Roça Nova	83319000
17	6056	Europa	83251400
17	6057	Euzébio de Oliveira	84912000
17	6058	Faisqueira	84279800
17	6059	Farol	87325000
17	6060	Faxina	83163000
17	6061	Faxinal	86840000
17	6062	Faxinal do Céu	85180000
17	6063	Faxinal Dos Elias	85124000
17	6064	Faxinal Santa Cruz	84128600
17	6065	Fazenda do Brigadeiro	85824850
17	6066	Fazenda Dos Barbosas	85137200
17	6067	Fazenda Jangada	85824800
17	6068	Fazenda Rio Grande	83820000
17	6069	Fazenda Salmo 23	87523700
17	6070	Fazendinha	85609700
17	6071	Felpudo	83649700
17	6072	Fênix	86950000
17	6073	Fernandes Pinheiro	84535000
17	6074	Fernão Dias	86765000
17	6075	Ferraria	83644000
17	6076	Ferreiras	84125700
17	6077	Figueira	84285000
17	6078	Figueira do Oeste	87277000
17	6079	Fiusas	85123000
17	6080	Flor da Serra	85886000
17	6081	Flor da Serra do Sul	85618000
17	6082	Floraí	87185000
17	6083	Floresta	87120000
17	6084	Florestópolis	86165000
17	6085	Floriano	87105000
17	6086	Flórida	86780000
17	6087	Florópolis	87668000
17	6088	Fluviópolis	83930000
17	6089	Formigone	87523300
17	6090	Formosa do Oeste	85830000
17	6091	Foz do Iguaçu	00000000
17	6092	Foz do Jordão	85145000
17	6093	Francisco Alves	87570000
17	6094	Francisco Beltrão	00000000
17	6095	Francisco Frederico Teixeira Guimarães	85556000
17	6096	Frei Timóteo	86215000
17	6097	Fueros	85116000
17	6098	Fundão	84194900
17	6099	Gamadinho	85824600
17	6100	Gamela	83156000
17	6101	Gaúcha	85609500
17	6102	Gavião	85325000
17	6103	Gavião	85678000
17	6104	General Carneiro	84660000
17	6105	General Osório	85927550
17	6106	Geremia Lunardelli	87333000
17	6107	Godoy Moreira	86938000
17	6108	Goioerê	87360000
17	6109	Goioxim	85162000
17	6110	Góis	85103000
17	6111	Gonçalves Júnior	84507000
17	6112	Graciosa	87722000
17	6113	Grandes Rios	86845000
17	6114	Guaiporã	87567000
17	6115	Guaíra	85980000
17	6116	Guairaçá	87880000
17	6117	Guairaçá	85113000
17	6118	Guairaçá	86114000
17	6119	Guajuvira	83725000
17	6120	Guamiranga	84435000
17	6121	Guamirim	84510000
17	6122	Guapirama	86465000
17	6123	Guaporé	85407000
17	6124	Guaporema	87810000
17	6125	Guará	85110000
17	6126	Guaraci	86620000
17	6127	Guaragi	84120000
17	6128	Guaraituba	83418000
17	6129	Guarani	85380000
17	6130	Guaraniaçu	85400000
17	6131	Guarapuava	00000000
17	6132	Guarapuavinha	85609150
17	6133	Guaraqueçaba	83390000
17	6134	Guararema	84193300
17	6135	Guaratuba	83280000
17	6136	Guaraúna	84534000
17	6137	Guaravera	86120000
17	6138	Guardamoria	84277800
17	6139	Harmonia	84275000
17	6140	Herculândia	87527000
17	6141	Herval Grande	85326000
17	6142	Herveira	87348000
17	6143	Herveira	85360000
17	6144	Hidrelétrica Itaipu	85873000
17	6145	Honório Serpa	85548000
17	6146	Iarama	87523600
17	6147	Ibaiti	84900000
17	6148	Ibema	85478000
17	6149	Ibiaci	86143000
17	6150	Ibiporã	86200000
17	6151	Içara	86744000
17	6152	Icaraíma	87530000
17	6153	Icatu	87935000
17	6154	Igrejinha	85127000
17	6155	Iguaraçu	86750000
17	6156	Iguatemi	87103000
17	6157	Iguatu	85423000
17	6158	Iguiporã	85972000
17	6159	Ilha do Mel	83251000
17	6160	Ilha Dos Valadares	83252000
17	6161	Imbaú	84250000
17	6162	Imbauzinho	84279300
17	6163	Imbituva	84430000
17	6164	Inácio Martins	85155000
17	6165	Inajá	87670000
17	6166	Independência	85514600
17	6167	Indianópolis	87210000
17	6168	Inspetor Carvalho	83155000
17	6169	Invernada	84197900
17	6170	Invernadinha	85129000
17	6171	Iolópolis	85578000
17	6172	Ipiranga	84450000
17	6173	Ipiranga	83729300
17	6174	Ipiranga	85926750
17	6175	Iporã	87560000
17	6176	Iracema do Oeste	85833000
17	6177	Irapuan	87267000
17	6178	Irati	84500000
17	6179	Irerê	86115000
17	6180	Iretama	87280000
17	6181	Itaguajé	86670000
17	6182	Itaiacoca	84110000
17	6183	Itaipulândia	85880000
17	6184	Itambaracá	86375000
17	6185	Itambé	87175000
17	6186	Itambé	83649150
17	6187	Itapanhacanga	84196900
17	6188	Itapara	84515000
17	6189	Itapejara D Oeste	85580000
17	6190	Itaperuçu	83560000
17	6191	Itaqui	83649800
17	6192	Itaúna do Sul	87980000
17	6193	Itinga	83251350
17	6194	Ivaí	84460000
17	6195	Ivailândia	87275000
17	6196	Ivaiporã	86870000
17	6197	Ivaitinga	87620000
17	6198	Ivaté	87525000
17	6199	Ivatuba	87130000
17	6200	Jaborandi	87523400
17	6201	Jaboti	84930000
17	6202	Jaboticabal	84128000
17	6203	Jaburu	84126500
17	6204	Jacaré	85609450
17	6205	Jacarezinho	86400000
17	6206	Jaciaba	84420000
17	6207	Jacutinga	85607000
17	6208	Jacutinga	85164000
17	6209	Jacutinga	86878000
17	6210	Jacutinga	85653000
17	6211	Jaguapitã	86610000
17	6212	Jaguariaíva	84200000
17	6213	Jandaia do Sul	86900000
17	6214	Jangada	87569000
17	6215	Jangada do Sul	84664000
17	6216	Janiópolis	87380000
17	6217	Japira	84920000
17	6218	Japurá	87225000
17	6219	Jaracatiá	87364000
17	6220	Jardim	86107000
17	6221	Jardim Alegre	86860000
17	6222	Jardim Olinda	87690000
17	6223	Jardim Paredão	87552000
17	6225	Jardinópolis	86335000
17	6226	Jataizinho	86210000
17	6227	Javacaé	83649400
17	6228	Jesuítas	85835000
17	6229	Joá	86457000
17	6230	Joaquim Távora	86455000
17	6231	Jordãozinho	85138600
17	6232	José Lacerda	84330000
17	6233	Juciara	86923000
17	6234	Jundiaí do Sul	86470000
17	6235	Juranda	87355000
17	6236	Jussara	87230000
17	6237	Juvinópolis	85821000
17	6238	Kaloré	86920000
17	6239	Km 30	84279100
17	6240	Lagoa	84193100
17	6241	Lagoa	84279000
17	6242	Lagoa Bonita	84196400
17	6243	Lagoa Dos Ribas	84197300
17	6244	Lagoa Dourada	84127800
17	6245	Lagoa Seca	85137400
17	6246	Lagoa Verde	83848000
17	6247	Lagoinha	84279200
17	6248	Lajeado	84198700
17	6249	Lajeado	84125300
17	6250	Lajeado	83910000
17	6251	Lajeado Bonito	84360000
17	6252	Lajeado Grande	85132000
17	6253	Lambari	84295000
17	6254	Lapa	83750000
17	6255	Laranja Azeda	84277400
17	6256	Laranjal	85275000
17	6257	Laranjeiras do Sul	00000000
17	6258	Lavra	83649300
17	6259	Lavrinha	85102000
17	6260	Lavrinha	84928000
17	6261	Leópolis	86330000
17	6262	Lerroville	86123000
17	6263	Lidianópolis	86865000
17	6264	Lindoeste	85826000
17	6265	Linha Giacomini	85926650
17	6266	Loanda	87900000
17	6267	Lobato	86790000
17	6268	Londrina	00000000
17	6269	Lopei	85927800
17	6270	Lovat	87520000
17	6271	Luar	86931000
17	6272	Luiziana	87290000
17	6273	Lunardelli	86935000
17	6274	Lupionópolis	86635000
17	6275	Macaco	84198600
17	6276	Macucos	85134000
17	6277	Mairá	86638000
17	6278	Maitá	85137100
17	6279	Mallet	84570000
17	6280	Malu	87245000
17	6281	Mamborê	87340000
17	6282	Mandaçaia	85138000
17	6283	Mandaguaçu	87160000
17	6284	Mandaguari	86975000
17	6285	Mandiocaba	87729400
17	6286	Mandirituba	83800000
17	6287	Manfrinópolis	85628000
17	6288	Mangueirinha	85540000
17	6289	Manoel Ribas	85260000
17	6290	Marabá	87458000
17	6291	Maracanã	84197500
17	6292	Marajó	85412000
17	6293	Maravilha	86110000
17	6294	Maravilha	85775000
17	6295	Marcelino	83168000
17	6296	Marcionópolis	85720000
17	6297	Marechal Cândido Rondon	85960000
17	6298	Margarida	85974000
17	6299	Maria Helena	87480000
17	6300	Maria Luiza	83251750
17	6301	Marialva	86990000
17	6302	Mariental	83760000
17	6303	Marilândia do Sul	86825000
17	6304	Marilena	87960000
17	6305	Marilu	87282000
17	6306	Mariluz	87470000
17	6307	Marimbondo	84943000
17	6308	Maringá	00000000
17	6309	Mariópolis	85525000
17	6310	Maripá	85955000
17	6311	Maristela	87753000
17	6312	Mariza	86947000
17	6313	Marmelândia	85778000
17	6314	Marmeleiro	85615000
17	6315	Marquês de Abrantes	83485000
17	6316	Marquinho	85168000
17	6317	Marrecas	85112000
17	6318	Martins	83729800
17	6319	Marumbi	86910000
17	6320	Matelândia	85887000
17	6321	Matinhos	83260000
17	6322	Matinhos	85117000
17	6323	Mato Queimado	84127400
17	6324	Mato Rico	85240000
17	6325	Mauá da Serra	86828000
17	6326	Medianeira	85884000
17	6327	Meia-lua	83533000
17	6328	Memória	85927700
17	6329	Mendeslândia	86685000
17	6330	Mercedes	85998000
17	6331	Mirador	87840000
17	6332	Miranda	84279600
17	6333	Mirante do Piquiri	87590000
17	6334	Miraselva	86615000
17	6335	Missal	85890000
17	6336	Monjolinho	84370000
17	6337	Monte Real	86435000
17	6338	Moreira Sales	87370000
17	6339	Morretes	83350000
17	6340	Morro Alto	83157000
17	6341	Morro Inglês	83251650
17	6342	Munhoz de Melo	86760000
17	6343	Natingui	84390000
17	6344	Nilza	87562000
17	6345	Nordestina	87855000
17	6346	Nossa Senhora Aparecida	86383000
17	6347	Nossa Senhora da Aparecida	86607000
17	6348	Nossa Senhora da Candelária	86365000
17	6349	Nossa Senhora Das Graças	86680000
17	6350	Nossa Senhora de Lourdes	85824650
17	6351	Nossa Senhora do Carmo	85514550
17	6352	Nova Aliança do Ivaí	87790000
17	6353	Nova Altamira	86842000
17	6354	Nova América da Colina	86230000
17	6355	Nova Amoreira	86826000
17	6356	Nova Aurora	85410000
17	6357	Nova Bilac	87188000
17	6358	Nova Brasília	87262000
17	6359	Nova Brasília	85926600
17	6360	Nova Brasília do Itararé	86425000
17	6361	Nova Cantu	87330000
17	6362	Nova Concórdia	85609000
17	6363	Nova Concórdia	85927500
17	6364	Nova Esperança	87600000
17	6365	Nova Esperança do Sudoeste	85635000
17	6366	Nova Fátima	86310000
17	6367	Nova Laranjeiras	85350000
17	6368	Nova Londrina	87970000
17	6369	Nova Lourdes	85572000
17	6370	Nova Olímpia	87490000
17	6371	Nova Prata do Iguaçu	85685000
17	6372	Nova Riqueza	85729000
17	6373	Nova Santa Bárbara	86250000
17	6374	Nova Santa Rosa	85930000
17	6375	Nova Tebas	85250000
17	6376	Nova Tirol	83319300
17	6377	Nova Videira	85926950
17	6378	Novo Horizonte	85822600
17	6379	Novo Horizonte	85978000
17	6380	Novo Itacolomi	86895000
17	6381	Novo Jardim	84923000
17	6382	Novo Sarandi	85927000
17	6383	Novo Sobradinho	85925000
17	6384	Novo Três Passos	85975000
17	6385	Olaria	85824500
17	6386	Olaria	84277900
17	6387	Olho Agudo	83160000
17	6388	Olho D Água	84198300
17	6389	Oroité	87564000
17	6390	Ortigueira	84350000
17	6391	Ourilândia	86968000
17	6392	Ourizona	87170000
17	6393	Ouro Verde do Oeste	85933000
17	6394	Ouro Verde do Piquiri	85422000
17	6395	Padre Ponciano	85559000
17	6396	Paiçandu	87140000
17	6397	Paiol de Baixo	83440000
17	6398	Paiol Queimado	84197000
17	6400	Paiquerê	86112000
17	6401	Palmas	85555000
17	6402	Palmeira	84130000
17	6403	Palmeirinha	84196800
17	6404	Palmeirinha	85118000
17	6405	Palmira	84155000
17	6406	Palmital	85270000
17	6407	Palmital	84196700
17	6408	Palmital de São Silvestre	83646000
17	6409	Palmitópolis	85413000
17	6410	Palotina	85950000
17	6411	Panema	86358000
17	6412	Pangaré	83845000
17	6413	Papagaios Novos	84135000
17	6414	Paraíso do Norte	87780000
17	6415	Paraná D Oeste	87375000
17	6416	Paranacity	87660000
17	6417	Paranagi	86345000
17	6418	Paranaguá	00000000
17	6419	Paranapoema	87680000
17	6420	Paranavaí	00000000
17	6421	Passa Una	83729200
17	6422	Passo da Ilha	85514700
17	6423	Passo Dos Pupos	84126300
17	6424	Passo Fundo	83649600
17	6425	Passo Liso	85330000
17	6426	Pato Bragado	85948000
17	6427	Pato Branco	00000000
17	6428	Patos Velhos	84410000
17	6429	Pau D Alho do Sul	86224000
17	6430	Paula Freitas	84630000
17	6431	Paulistânia	87588000
17	6432	Paulo Frontin	84635000
17	6433	Peabiru	87250000
17	6434	Pedra Branca do Araraquara	83290000
17	6435	Pedras	84193700
17	6436	Pedro Lustosa	85198000
17	6437	Pelado	85128000
17	6438	Perobal	87538000
17	6439	Pérola	87540000
17	6440	Pérola D Oeste	85740000
17	6441	Pérola Independente	85958000
17	6442	Piassuguera	83251500
17	6443	Piên	83860000
17	6444	Pinaré	84625000
17	6445	Pinhais	00000000
17	6446	Pinhal de São Bento	85727000
17	6448	Pinhalão	84925000
17	6449	Pinhalzinho	86818500
17	6450	Pinhalzinho	85824700
17	6451	Pinhalzinho	85634000
17	6452	Pinhalzinho	85167000
17	6453	Pinhalzinho	85190000
17	6454	Pinhão	85170000
17	6455	Pinheiro	85767000
17	6456	Piquirivaí	87318000
17	6457	Piracema	87729200
17	6458	Piraí do Sul	84240000
17	6459	Pirapó	86818000
17	6460	Piraquara	00000000
17	6461	Piriquitos	84105000
17	6462	Pitanga	85200000
17	6463	Pitangueiras	86613000
17	6464	Pitangui	84125500
17	6465	Planaltina do Paraná	87860000
17	6466	Planalto	85750000
17	6467	Pocinho	86962000
17	6468	Pocinho	84125800
17	6469	Poema	85255000
17	6470	Ponta do Pasto	83251300
17	6471	Ponta Grossa	00000000
17	6472	Pontal do Paraná	83255000
17	6473	Porecatu	86160000
17	6474	Portão	85824900
17	6475	Porteira Preta	86955000
17	6476	Porto Amazonas	84140000
17	6477	Porto Barreiro	85345000
17	6478	Porto Belo	85874000
17	6479	Porto Brasílio	87940000
17	6480	Porto Camargo	87532000
17	6481	Porto de Cima	83360000
17	6482	Porto Meira	85874400
17	6483	Porto Mendes	85976000
17	6484	Porto Rico	87950000
17	6485	Porto San Juan	85874700
17	6486	Porto Santana	85348000
17	6487	Porto São Carlos	87775000
17	6488	Porto São José	87957000
17	6489	Porto Vitória	84610000
17	6490	Prado Ferreira	86618000
17	6491	Pranchita	85730000
17	6492	Prata	86198000
17	6493	Prata Um	84277200
17	6494	Presidente Castelo Branco	87180000
17	6495	Presidente Kennedy	85587000
17	6496	Primeiro de Maio	86140000
17	6497	Progresso	85609400
17	6498	Prudentópolis	84400000
17	6499	Pulinópolis	87165000
17	6500	Quatiguá	86450000
17	6501	Quatro Barras	83420000
17	6502	Quatro Pontes	85940000
17	6503	Quebra Freio	85514000
17	6504	Quedas do Iguaçu	85460000
17	6505	Queimados	85137900
17	6506	Querência do Norte	87930000
17	6507	Quinta do Sol	87265000
17	6508	Quinzópolis	86355000
17	6509	Quitandinha	83840000
17	6510	Ramilândia	85888000
17	6511	Rancho Alegre	86290000
17	6512	Rancho Alegre D Oeste	87395000
17	6513	Realeza	85770000
17	6514	Rebouças	84550000
17	6515	Região Dos Valos	84279500
17	6516	Reianópolis	84230000
17	6517	Renascença	85610000
17	6518	Reserva	84320000
17	6519	Reserva do Iguaçu	85195000
17	6520	Retiro	84197800
17	6521	Retiro Grande	83649500
17	6522	Ribeirão Bonito	86847000
17	6523	Ribeirão Claro	86410000
17	6524	Ribeirão do Pinhal	86490000
17	6525	Ribeirão do Pinheiro	84194700
17	6526	Rio Abaixo	84193600
17	6527	Rio Azul	84560000
17	6528	Rio Bom	86830000
17	6529	Rio Bonito	87575000
17	6530	Rio Bonito do Iguaçu	85340000
17	6531	Rio Branco do Ivaí	86848000
17	6532	Rio Branco do Sul	83540000
17	6533	Rio Claro do Sul	84577000
17	6534	Rio da Prata	85655000
17	6535	Rio da Prata	85370000
17	6536	Rio Das Antas	85823550
17	6537	Rio Das Mortes	85130000
17	6538	Rio Das Pedras	85131000
17	6539	Rio Das Pedras	83251550
17	6540	Rio Das Pombas	83251800
17	6541	Rio do Mato	85609200
17	6542	Rio do Salto	85824000
17	6543	Rio Negro	83880000
17	6544	Rio Novo	85822850
17	6545	Rio Novo	84340000
17	6546	Rio Pinheiro	85526000
17	6547	Rio Quatorze	85609600
17	6548	Rio Saltinho	85823900
17	6549	Rio Saudade	85609800
17	6550	Rio Verde	87357000
17	6551	Roberto Silveira	87524000
17	6552	Roça Velha	84126700
17	6553	Roça Velha	83164000
17	6554	Rolândia	86600000
17	6555	Romeópolis	86887000
17	6556	Roncador	87320000
17	6557	Rondinha	85119000
17	6558	Rondon	87800000
17	6559	Rosário do Ivaí	86850000
17	6560	Sabáudia	86720000
17	6561	Sagrada Família	85756000
17	6562	Salgado Filho	85620000
17	6563	Salles de Oliveira	87349000
17	6564	Saltinho do Oeste	87585000
17	6565	Salto do Itararé	84945000
17	6566	Salto do Lontra	85670000
17	6567	Salto Portão	85823800
17	6568	Samambaia	85138300
17	6569	Santa Amélia	86370000
17	6570	Santa Cecília do Pavão	86225000
17	6571	Santa Clara	84194600
17	6572	Santa Cruz de Monte Castelo	87920000
17	6573	Santa Eliza	87521000
17	6574	Santa Esmeralda	87925000
17	6575	Santa Fé	86770000
17	6576	Santa Fé do Pirapó	86994000
17	6577	Santa Helena	85892000
17	6578	Santa Inês	86660000
17	6579	Santa Isabel do Ivaí	87910000
17	6580	Santa Izabel do Oeste	85650000
17	6581	Santa Lúcia	85795000
17	6582	Santa Lurdes	86199200
17	6583	Santa Luzia da Alvorada	86934000
17	6584	Santa Margarida	86135000
17	6585	Santa Margarida	86104000
17	6586	Santa Maria	87755000
17	6587	Santa Maria do Oeste	85230000
17	6588	Santa Maria do Rio do Peixe	86323000
17	6589	Santa Mariana	86350000
17	6590	Santa Mônica	87915000
17	6591	Santa Quitéria	83649100
17	6592	Santa Quitéria	84194000
17	6593	Santa Rita	84197600
17	6594	Santa Rita	85514300
17	6595	Santa Rita do Oeste	85995000
17	6596	Santa Rosa	85609300
17	6597	Santa Tereza do Oeste	85825000
17	6598	Santa Terezinha de Itaipu	85875000
17	6599	Santa Zélia	86742000
17	6600	Santana	84623000
17	6601	Santana do Itararé	84970000
17	6602	Santo Antônio	84194800
17	6603	Santo Antônio	85323000
17	6604	Santo Antônio da Platina	86430000
17	6605	Santo Antônio do Caiuá	87730000
17	6606	Santo Antônio do Iratim	84650000
17	6607	Santo Antônio do Palmital	86835000
17	6608	Santo Antônio do Paraíso	86315000
17	6609	Santo Antônio do Sudoeste	85710000
17	6610	Santo Inácio	86650000
17	6611	Santo Rei	87335000
17	6612	São Bento	87316000
17	6613	São Braz	85823850
17	6614	São Braz	85514450
17	6615	São Camilo	85952000
17	6616	São Carlos do Ivaí	87770000
17	6617	São Cirilo	84193200
17	6618	São Clemente	85894000
17	6619	São Cristovão	87729600
17	6620	São Cristovão	84609000
17	6621	São Domingos	86819500
17	6622	São Domingos	86859000
17	6623	São Domingos	84608000
17	6624	São Francisco	85562000
17	6625	São Francisco	85101000
17	6626	São Francisco	87523800
17	6627	São Francisco de Imbaú	86325000
17	6628	São Francisco de Sales	85534000
17	6629	São Gabriel	86199000
17	6630	São Gabriel	83419200
17	6631	São Gotardo	85514150
17	6632	São Jerônimo da Serra	86270000
17	6633	São João	85570000
17	6634	São João	87553000
17	6635	São João	87317600
17	6636	São João	85324000
17	6637	São João D Oeste	85823000
17	6638	São João da Boa Vista	87523100
17	6639	São João do Caiuá	87740000
17	6640	São João do Ivaí	86930000
17	6641	São João do Pinhal	86273000
17	6642	São João do Triunfo	84150000
17	6643	São Joaquim	86718000
17	6644	São Joaquim	85139700
17	6645	São Joaquim do Pontal	86378000
17	6646	São Jorge D Oeste	85575000
17	6647	São Jorge do Ivaí	87190000
17	6648	São Jorge do Patrocínio	87555000
17	6649	São José	86905000
17	6650	São José	85235000
17	6651	São José da Boa Vista	84980000
17	6652	São José Das Palmeiras	85898000
17	6653	São José do Iguaçu	85879000
17	6654	São José do Itavo	85883000
17	6655	São José do Ivaí	87913000
17	6656	São José Dos Pinhais	00000000
17	6657	São Judas Tadeu	86318000
17	6658	São Leonardo	86103000
17	6659	São Lourenço	84196600
17	6660	São Lourenço	87205000
17	6661	São Luiz	87317300
17	6662	São Luiz	85765000
17	6663	São Luiz	85563000
17	6664	São Luiz	85538000
17	6665	São Luiz	86117000
17	6666	São Luiz	86998000
17	6667	São Luiz	87475000
17	6668	São Luiz	83251700
17	6669	São Luiz do Purunã	83670000
17	6670	São Manoel do Paraná	87215000
17	6671	São Marcos	86101000
17	6672	São Marcos	83175000
17	6673	São Martinho	86609000
17	6674	São Mateus do Sul	83900000
17	6675	São Miguel	83729100
17	6676	São Miguel	85609350
17	6677	São Miguel	85924000
17	6678	São Miguel do Cambui	86996000
17	6679	São Miguel do Iguaçu	85877000
17	6680	São Paulo	85926800
17	6681	São Pedro	85645000
17	6682	São Pedro	86817000
17	6683	São Pedro	83649050
17	6684	São Pedro	85109000
17	6685	São Pedro	87729000
17	6686	São Pedro do Florido	85725000
17	6687	São Pedro do Iguaçu	85929000
17	6688	São Pedro do Ivaí	86945000
17	6689	São Pedro do Paraná	87955000
17	6690	São Pedro Lopei	85822500
17	6691	São Pio X	85608000
17	6692	São Roque	85667000
17	6693	São Roque	85977000
17	6694	São Roque	85773000
17	6695	São Roque do Pinhal	86458000
17	6696	São Salvador	85643000
17	6697	São Sebastião	84198200
17	6698	São Sebastião	83580000
17	6699	São Sebastião	85139200
17	6700	São Sebastião	83152000
17	6701	São Sebastião	84277600
17	6702	São Sebastião da Amoreira	86240000
17	6703	São Silvestre	87408000
17	6704	São Tomé	87220000
17	6705	São Valentim	85668000
17	6706	São Vicente	87263000
17	6707	Sapé	84938000
17	6708	Sapopema	84290000
17	6709	Sarandi	00000000
17	6710	Sarandi	85652000
17	6711	Saudade do Iguaçu	85568000
17	6712	Sede Alvorada	85822000
17	6713	Sede Chaparral	85927900
17	6714	Sede Nova Sant Ana	85577000
17	6715	Sede Progresso	85609250
17	6716	Sede Progresso	85588000
17	6717	Selva	86108000
17	6718	Sengés	84220000
17	6719	Senhor Bom Jesus Dos Gramados	85528000
17	6720	Serra Dos Dourados	87518000
17	6721	Serra Negra	83395000
17	6722	Serranópolis do Iguaçu	85885000
17	6723	Serraria Klas	84128800
17	6724	Serrinha	86199800
17	6725	Serrinha	87316800
17	6726	Serrinha	84199000
17	6727	Sertaneja	86340000
17	6728	Sertanópolis	86170000
17	6729	Sertãozinho	87272000
17	6731	Sete Saltos de Cima	84127600
17	6732	Silvolândia	87315000
17	6733	Siqueira Belo	85705000
17	6734	Siqueira Campos	84940000
17	6735	Socavão	84190000
17	6736	Socorro	85139000
17	6737	Sulina	85565000
17	6738	Sumaré	87720000
17	6739	Sussui	87274000
17	6740	Sutis	86122000
17	6741	Taipa	85115000
17	6742	Tamarana	86125000
17	6743	Tambarutaca	83251450
17	6744	Tamboara	87760000
17	6745	Tanque Grande	84196100
17	6746	Tapejara	87430000
17	6747	Tapira	87830000
17	6748	Tapui	85927850
17	6749	Taquara	84193000
17	6750	Taquari Dos Polacos	84126100
17	6751	Taquari Dos Russos	84126800
17	6752	Taquaruna	86113000
17	6753	Teixeira Soares	84530000
17	6754	Telêmaco Borba	00000000
17	6755	Teolândia	85514350
17	6756	Tereza Breda	86964000
17	6757	Tereza Cristina	84490000
17	6758	Terra Boa	87240000
17	6759	Terra Nova	86275000
17	6760	Terra Rica	87890000
17	6761	Terra Roxa	85990000
17	6762	Tibagi	84300000
17	6763	Tijucas do Sul	83190000
17	6764	Tijuco Preto	83532000
17	6765	Tijuco Preto	84193400
17	6766	Timbu Velho	83419700
17	6767	Tindiquera	83729600
17	6768	Tiradentes	85514200
17	6769	Tiradentes	85625000
17	6770	Toledo	00000000
17	6771	Tomaz Coelho	83729400
17	6772	Tomazina	84935000
17	6774	Três Barras do Paraná	85485000
17	6775	Três Bicos	84480000
17	6776	Três Bocas	85926900
17	6777	Três Capões	85137000
17	6778	Três Córregos	83642000
17	6779	Três Lagoas	85874200
17	6780	Três Pinheiros	85137300
17	6781	Três Placas	87523000
17	6782	Triângulo	87276000
17	6783	Trindade	84125600
17	6784	Triolândia	86495000
17	6785	Tronco	84197400
17	6786	Tunas do Paraná	83480000
17	6787	Tuneiras do Oeste	87450000
17	6788	Tupãssi	85945000
17	6789	Tupinambá	86746000
17	6790	Turvo	85150000
17	6791	Ubaldino Taques	85558000
17	6792	Ubauna	86932000
17	6793	Ubiratã	85440000
17	6794	Umuarama	00000000
17	6795	União	85321000
17	6796	União da Vitória	84600000
17	6797	União do Oeste	85656000
17	6798	Uniflor	87640000
17	6799	Uraí	86280000
17	6800	Usina	87316300
17	6801	Uvaia	84115000
17	6802	Valentins	84127000
17	6803	Valério	85758000
17	6804	Vargeado	84198000
17	6805	Vassoural	84916000
17	6806	Ventania	84345000
17	6807	Vera Cruz do Oeste	85845000
17	6808	Vera Guarani	84638000
17	6809	Verê	85585000
17	6810	Vida Nova	84293000
17	6811	Vidigal	87208000
17	6812	Alto Paraíso	87528000
17	6813	Vila Diniz	86857000
17	6814	Vila Dos Roldos	85514800
17	6815	Vila Flórida	85926700
17	6816	Vila Gandhi	86142000
17	6817	Vila Guay	84914000
17	6818	Vila Nova	85218000
17	6819	Vila Nova	85926000
17	6820	Vila Nova de Florença	86278000
17	6821	Vila Paraíso	85573000
17	6822	Vila Reis	86819000
17	6823	Vila Rica do Ivaí	87534000
17	6824	Vila Roberto Brzezinski	87315300
17	6825	Vila Silva Jardim	87665000
17	6826	Vila Velha	84128200
17	6827	Virmond	85390000
17	6828	Vista Alegre	85554000
17	6829	Vista Alegre	85633000
17	6830	Vista Bonita	83649250
17	6831	Vitória	85139400
17	6832	Vitorino	85520000
17	6833	Warta	86105000
17	6834	Wenceslau Braz	84950000
17	6835	Xambrê	87535000
17	6836	Xaxim	85927600
17	6837	Yolanda	85445000
17	6838	4º Centenário	87365000
17	10389	Jordão	85100000
17	10390	Biscaia	84106000
17	10391	Campo do Bugre	85320000
17	10429	Santa Cruz	83643000
17	10430	Caiva	83645000
17	10431	Itambezinho	83647000
17	10731	Bananas	85385000
17	10732	Candeia	85957000
17	10733	Guaraí	85365000
17	10734	Ouro Verde	84235000
17	10735	São Roque do Chopim	85514650
18	5135	Abreu E Lima	00000000
18	5136	Afogados da Ingazeira	56800000
18	5137	Afrânio	56360000
18	5138	Agrestina	55495000
18	5139	Água Fria	55168000
18	5140	Água Preta	55550000
18	5141	Águas Belas	55340000
18	5142	Airi	56410000
18	5143	Alagoinha	55260000
18	5144	Albuquerque Né	56610000
18	5145	Algodões	56625000
18	5146	Aliança	55890000
18	5147	Altinho	55490000
18	5148	Amaraji	55515000
18	5149	Ameixas	55658000
18	5150	Angelim	55430000
18	5151	Apoti	55625000
18	5152	Araçoiaba	53690000
18	5153	Araripina	56280000
18	5154	Arcoverde	00000000
18	5155	Aripibu	55524000
18	5156	Arizona	56365000
18	5157	Barra de Farias	55172000
18	5158	Barra de Guabiraba	55690000
18	5159	Barra de São Pedro	56205000
18	5160	Barra do Brejo	55332000
18	5161	Barra do Chata	55498000
18	5162	Barra do Jardim	55496000
18	5163	Barra do Riachão	55672000
18	5164	Barra do Sirinhaém	55585000
18	5165	Barreiros	55560000
18	5166	Batateira	55445000
18	5167	Belém de Maria	55440000
18	5168	Belém de São Francisco	56440000
18	5169	Belo Jardim	00000000
18	5170	Bengalas	55652000
18	5171	Bentivi	55685000
18	5172	Bernardo Vieira	56922000
18	5173	Betânia	56670000
18	5174	Bezerros	55660000
18	5175	Bizarra	55735000
18	5176	Boas Novas	55662000
18	5177	Bodocó	56220000
18	5178	Bom Conselho	55330000
18	5179	Bom Jardim	55730000
18	5180	Bom Nome	56970000
18	5181	Bonfim	56710000
18	5182	Bonito	55680000
18	5183	Brejão	55325000
18	5184	Brejinho	56740000
18	5185	Brejo da Madre de Deus	55170000
18	5186	Buenos Aires	55845000
18	5187	Buíque	56520000
18	5188	Cabanas	55383000
18	5189	Cabo de Santo Agostinho	00000000
18	5190	Cabrobó	56180000
18	5191	Cachoeira do Roberto	56370000
18	5192	Cachoeirinha	55380000
18	5193	Caetés	55360000
18	5194	Caiçarinha da Penha	56916000
18	5195	Calçado	55375000
18	5196	Caldeirões	55338000
18	5197	Calumbi	56930000
18	5198	Camaragibe	00000000
18	5199	Camela	55595000
18	5200	Camocim de São Félix	55665000
18	5201	Camutanga	55930000
18	5202	Canaã	56880000
18	5203	Canhotinho	55420000
18	5204	Capoeiras	55365000
18	5205	Caraíba	56393000
18	5206	Caraibeiras	56485000
18	5207	Carapotos	55110000
18	5208	Carice	55928000
18	5209	Carima	55564000
18	5210	Caririmirim	56155000
18	5211	Carnaíba	56820000
18	5212	Carnaubeira da Penha	56420000
18	5213	Carneiro	56533000
18	5214	Carpina	00000000
18	5215	Carqueja	56415000
18	5216	Caruaru	00000000
18	5217	Casinhas	55755000
18	5218	Catende	55400000
18	5219	Catimbaú	56537000
18	5220	Catolé	55759000
18	5222	Cedro	56130000
18	5223	Chã de Alegria	55835000
18	5224	Chã do Rocha	55748000
18	5225	Chã Grande	55636000
18	5226	Cimbres	55205000
18	5227	Clarana	56227000
18	5228	Cocau	56223000
18	5229	Cocau	55575000
18	5230	Conceição Das Crioulas	56115000
18	5231	Condado	55940000
18	5232	Correntes	55315000
18	5233	Cortês	55525000
18	5234	Couro D Antas	55121000
18	5235	Cristália	56340000
18	5236	Cruanji	55875000
18	5237	Cruzes	55473000
18	5238	Cuiambuca	55533000
18	5239	Cumaru	55655000
18	5240	Cupira	55460000
18	5241	Curral Queimado	56335000
18	5242	Custódia	56640000
18	5243	Dois Leões	55633000
18	5244	Dormentes	56355000
18	5245	Entroncamento	55453000
18	5246	Escada	55500000
18	5247	Espírito Santo	55374000
18	5248	Exu	56230000
18	5249	Fazenda Nova	55175000
18	5250	Feira Nova	55715000
18	5251	Feitoria	56228000
18	5252	Fernando de Noronha	53990000
18	5253	Ferreiros	55880000
18	5254	Flores	56850000
18	5255	Floresta	56400000
18	5256	Frei Miguelinho	55780000
18	5257	Frexeiras	55505000
18	5258	Gameleira	55530000
18	5259	Garanhuns	00000000
18	5260	Glória do Goitá	55620000
18	5261	Goiana	55900000
18	5262	Gonçalves Ferreira	55105000
18	5263	Granito	56160000
18	5264	Gravatá	00000000
18	5265	Gravatá do Ibiapina	55795000
18	5266	Grotão	55275000
18	5267	Guanumbi	56535000
18	5268	Henrique Dias	56620000
18	5269	Iateca	55353000
18	5270	Iati	55345000
18	5271	Ibimirim	56580000
18	5272	Ibirajuba	55390000
18	5273	Ibiranga	55929000
18	5274	Ibiratinga	55588000
18	5275	Ibitiranga	56825000
18	5276	Ibó	56450000
18	5277	Icaiçara	56165000
18	5278	Igapó	55322000
18	5279	Igarapeassu	55455000
18	5280	Igarapeba	55412000
18	5281	Igarassu	00000000
18	5282	Iguaraci	56840000
18	5283	Inajá	56560000
18	5284	Ingazeira	56830000
18	5285	Ipojuca	55590000
18	5286	Ipubi	56260000
18	5287	Ipuera	56145000
18	5288	Iraguaçu	56890000
18	5289	Irajaí	56845000
18	5290	Iratama	55304000
18	5291	Itacuruba	56430000
18	5292	Itaíba	56550000
18	5293	Ilha de Itamaracá	53900000
18	5294	Itambé	55920000
18	5295	Itapetim	56720000
18	5296	Itapissuma	53700000
18	5297	Itaquitinga	55950000
18	5298	Ituguaçu	55493000
18	5299	Iuiteporã	55682000
18	5300	Jabitaca	56848000
18	5302	Jaboatão Dos Guararapes	00000000
18	5303	Japecanga	55287000
18	5304	Jaqueira	55409000
18	5305	Jataúba	55180000
18	5306	Jatiúca	56885000
18	5307	Jatobá	56470000
18	5308	Jenipapo	55258000
18	5309	João Alfredo	55720000
18	5310	Joaquim Nabuco	55535000
18	5311	José da Costa	55534000
18	5312	José Mariano	55522000
18	5313	Juçaral	54570000
18	5314	Jucati	55398000
18	5315	Jupi	55395000
18	5316	Jurema	55480000
18	5317	Jutaí	56390000
18	5318	Lagoa	56350000
18	5319	Lagoa de São José	55336000
18	5320	Lagoa do Barro	56284000
18	5321	Lagoa do Carro	55820000
18	5322	Lagoa do Itaenga	55840000
18	5323	Lagoa do Ouro	55320000
18	5324	Lagoa do Souza	55458000
18	5325	Lagoa Dos Gatos	55450000
18	5326	Lagoa Grande	56395000
18	5327	Laje de São José	55465000
18	5328	Laje Grande	55402000
18	5329	Lajedo	55385000
18	5330	Lajedo do Cedro	55108000
18	5331	Limoeiro	55700000
18	5332	Livramento do Tiúma	55878000
18	5333	Luanda	56918000
18	5334	Macaparana	55865000
18	5335	Machados	55740000
18	5336	Macujé	55898000
18	5337	Manari	56565000
18	5338	Mandacaia	55174000
18	5339	Mandacaru	55646000
18	5340	Maniçoba	55135000
18	5341	Maraial	55405000
18	5342	Maravilha	56650000
18	5343	Mimoso	55225000
18	5344	Miracica	55303000
18	5345	Mirandiba	56980000
18	5346	Morais	56287000
18	5347	Moreilândia	56150000
18	5348	Moreno	54800000
18	5349	Moxotó	56585000
18	5350	Mulungu	55255000
18	5351	Murupé	55855000
18	5352	Mutuca	55210000
18	5353	Nascente	56285000
18	5355	Nazaré da Mata	55800000
18	5356	Negras	56555000
18	5357	Nossa Senhora da Luz	54749000
18	5358	Nossa Senhora do Carmo	55634000
18	5359	Nossa Senhora do Ó	55592000
18	5360	Nova Cruz	53660000
18	5361	Olho D Água de Dentro	55423000
18	5362	Olinda	00000000
18	5363	Oratório	55758000
18	5364	Ori	56148000
18	5365	Orobó	55745000
18	5366	Orocó	56170000
18	5367	Ouricuri	56200000
18	5368	Pajeú	56920000
18	5369	Palmares	55540000
18	5370	Palmeirina	55310000
18	5371	Panelas	55470000
18	5372	Pão de Açúcar	55798000
18	5373	Pão de Açúcar do Poção	55245000
18	5374	Papagaio	55215000
18	5375	Paquevira	55425000
18	5376	Pará	55198000
18	5377	Paranatama	55355000
18	5379	Parnamirim	56163000
18	5380	Passagem do Tó	55185000
18	5381	Passira	55650000
18	5382	Pau Ferro	55418000
18	5383	Paudalho	55825000
18	5384	Paulista	00000000
18	5385	Pedra	55280000
18	5386	Perpétuo Socorro	55265000
18	5387	Pesqueira	55200000
18	5388	Petrolândia	56460000
18	5389	Petrolina	00000000
18	5390	Pirituba	55618000
18	5391	Poção	55240000
18	5392	Poção de Afrânio	56375000
18	5393	Poço Comprido	55317000
18	5394	Poço Fundo	55195000
18	5395	Pombos	55630000
18	5396	Pontas de Pedra	55908000
18	5397	Ponte Dos Carvalhos	54580000
18	5399	Primavera	55510000
18	5400	Quipapá	55415000
18	5401	Quitimbu	56660000
18	5402	Quixabá	56828000
18	5403	Rainha Isabel	55334000
18	5404	Rajada	56345000
18	5405	Rancharia	56282000
18	5406	Recife	00000000
18	5407	Riacho Das Almas	55120000
18	5408	Riacho do Meio	56705000
18	5409	Riacho Fechado	55145000
18	5410	Riacho Pequeno	56445000
18	5411	Ribeirão	55520000
18	5412	Rio da Barra	56615000
18	5413	Rio Formoso	55570000
18	5414	Sairé	55695000
18	5415	Salgadinho	55675000
18	5416	Salgueiro	56000000
18	5417	Saloá	55350000
18	5418	Salobro	55220000
18	5419	Sanharó	55250000
18	5420	Santa Cruz	56215000
18	5421	Santa Cruz da Baixa Verde	56895000
18	5422	Santa Cruz do Capibaribe	55190000
18	5423	Santa Filomena	56210000
18	5424	Santa Maria da Boa Vista	56380000
18	5425	Santa Maria do Cambucá	55765000
18	5426	Santa Rita	56770000
18	5427	Santa Terezinha	56750000
18	5428	Santa Terezinha	55552000
18	5429	Santana de São Joaquim	55674000
18	5430	Santo Agostinho	54590000
18	5431	Santo Antônio Das Queimadas	55485000
18	5432	Santo Antônio Dos Palmares	55548000
18	5433	São Benedito do Sul	55410000
18	5434	São Bento do Una	55370000
18	5435	São Caetano do Navio	56680000
18	5436	São Caitano	55130000
18	5437	São Domingos	55178000
18	5438	São João	55435000
18	5439	São Joaquim do Monte	55670000
18	5440	São José	55475000
18	5441	São José da Coroa Grande	55565000
18	5442	São José do Belmonte	56950000
18	5443	São José do Egito	56700000
18	5444	São Lázaro	55478000
18	5445	São Lourenço da Mata	00000000
18	5446	São Pedro	55302000
18	5447	São Vicente	56730000
18	5448	São Vicente Ferrer	55860000
18	5449	Sapucarana	55661000
18	5450	Saué	55572000
18	5451	Serra Branca	56265000
18	5452	Serra do Vento	55160000
18	5453	Serra Talhada	00000000
18	5454	Serrita	56140000
18	5455	Serrolândia	56270000
18	5456	Sertânia	56600000
18	5457	Sertãozinho de Baixo	55408000
18	5458	Siriji	55863000
18	5459	Sirinhaém	55580000
18	5460	Sítio Dos Nunes	56860000
18	5461	Solidão	56795000
18	5462	Surubim	55750000
18	5463	Tabira	56780000
18	5464	Tabocas	56240000
18	5465	Tacaimbó	55140000
18	5466	Tacaratu	56480000
18	5467	Tamandaré	55578000
18	5468	Tamboatá	55733000
18	5469	Tapiraim	55138000
18	5470	Taquaritinga do Norte	55790000
18	5471	Tara	55285000
18	5472	Tauapiranga	56925000
18	5473	Tejucupapo	55905000
18	5474	Terezinha	55305000
18	5475	Terra Nova	56190000
18	5476	Timbaúba	55870000
18	5477	Timorante	56234000
18	5478	Toritama	55125000
18	5479	Tracunhaém	55805000
18	5480	Trapiá	55122000
18	5481	Três Ladeiras	53670000
18	5482	Trindade	56250000
18	5483	Triunfo	56870000
18	5484	Tupanaci	56990000
18	5485	Tupanatinga	56540000
18	5486	Tupaóca	55895000
18	5487	Tuparetama	56760000
18	5488	Umãs	56105000
18	5489	Umburetama	55746000
18	5490	Upatininga	55896000
18	5491	Urimama	56386000
18	5492	Uruçu-mirim	55648000
18	5493	Urucubá	55705000
18	5494	Vasques	56110000
18	5495	Veneza	56168000
18	5496	Venturosa	55270000
18	5497	Verdejante	56120000
18	5498	Vertente do Lério	55760000
18	5499	Vertentes	55770000
18	5500	Vicência	55850000
18	5501	Vila Nova	55757000
18	5502	Viração	56236000
18	5503	Vitória de Santo Antão	00000000
18	5504	Volta do Moxotó	56475000
18	5505	Xexéu	55555000
18	5506	Xucuru	55165000
18	5507	Zé Gomes	56245000
18	10164	Jaboatão	00000000
18	10184	Navarro	00000000
18	10185	Cavaleiro	00000000
18	10186	Praia da Conceição	00000000
18	10187	Paratibe	00000000
19	5508	Acauã	64748000
19	5509	Agricolândia	64440000
19	5510	Água Branca	64460000
19	5511	Alagoinha do Piauí	64655000
19	5512	Alegrete do Piauí	64675000
19	5513	Alto Longá	64360000
19	5514	Altos	64290000
19	5515	Alvorada do Gurguéia	64923000
19	5516	Amarante	64400000
19	5517	Angical do Piauí	64410000
19	5518	Anísio de Abreu	64780000
19	5519	Antônio Almeida	64855000
19	5520	Aroazes	64310000
19	5521	Arraial	64480000
19	5522	Assunção do Piauí	64333000
19	5523	Avelino Lopes	64965000
19	5524	Baixa Grande do Ribeiro	64868000
19	5525	Barra D Alcântara	64528000
19	5526	Barras	64100000
19	5527	Barreiras do Piauí	64990000
19	5528	Barro Duro	64455000
19	5529	Batalha	64190000
19	5530	Bela Vista do Piauí	64705000
19	5531	Belém do Piauí	64678000
19	5532	Beneditinos	64380000
19	5533	Bertolínia	64870000
19	5534	Betânia do Piauí	64753000
19	5535	Boa Hora	64108000
19	5536	Bocaina	64630000
19	5537	Bom Jesus	64900000
19	5538	Bom Princípio do Piauí	64225000
19	5539	Bonfim do Piauí	64775000
19	5540	Boqueirão do Piauí	64283000
19	5541	Brasileira	64265000
19	5542	Brejo do Piauí	64895000
19	5543	Buriti Dos Lopes	64230000
19	5544	Buriti Dos Montes	64345000
19	5545	Cabeceiras do Piauí	64105000
19	5546	Cajazeiras do Piauí	64514000
19	5547	Cajueiro da Praia	64222000
19	5548	Caldeirão Grande do Piauí	64695000
19	5549	Campinas do Piauí	64730000
19	5550	Campo Alegre do Fidalgo	64767000
19	5551	Campo Grande do Piauí	64578000
19	5552	Campo Largo do Piauí	64148000
19	5553	Campo Maior	64280000
19	5554	Canavieira	64833000
19	5555	Canto do Buriti	64890000
19	5556	Capitão de Campos	64270000
19	5557	Capitão Gervásio Oliveira	64763000
19	5558	Caracol	64795000
19	5559	Caraúbas do Piauí	64233000
19	5560	Caridade do Piauí	64590000
19	5561	Castelo do Piauí	64340000
19	5562	Caxingó	64228000
19	5563	Cocal	64235000
19	5564	Cocal de Telha	64278000
19	5565	Cocal Dos Alves	64238000
19	5566	Coivaras	64335000
19	5567	Colônia do Gurguéia	64885000
19	5568	Colônia do Piauí	64516000
19	5569	Conceição do Canindé	64740000
19	5570	Coronel José Dias	64793000
19	5571	Corrente	64980000
19	5572	Cristalândia do Piauí	64995000
19	5573	Cristino Castro	64920000
19	5574	Curimatá	64960000
19	5575	Currais	64905000
19	5576	Curral Novo do Piauí	64595000
19	5577	Curralinhos	64453000
19	5578	Demerval Lobão	64390000
19	5579	Dirceu Arcoverde	64785000
19	5580	Dom Expedito Lopes	64620000
19	5581	Dom Inocêncio	64790000
19	5582	Domingos Mourão	64250000
19	5583	Elesbão Veloso	64325000
19	5584	Eliseu Martins	64880000
19	5585	Esperantina	64180000
19	5586	Fartura do Piauí	64788000
19	5587	Flores do Piauí	64815000
19	5588	Floresta do Piauí	64563000
19	5589	Floriano	64800000
19	5590	Francinópolis	64520000
19	5591	Francisco Ayres	64475000
19	5592	Francisco Macedo	64683000
19	5593	Francisco Santos	64645000
19	5594	Fronteiras	64690000
19	5595	Geminiano	64613000
19	5596	Gilbués	64930000
19	5597	Guadalupe	64840000
19	5598	Guaribas	64798000
19	5599	Hugo Napoleão	64470000
19	5600	Ilha Grande	64224000
19	5601	Inhuma	64535000
19	5602	Ipiranga do Piauí	64540000
19	5603	Isaías Coelho	64570000
19	5604	Itainópolis	64565000
19	5605	Itaueira	64820000
19	5606	Jacobina do Piauí	64755000
19	5607	Jaicós	64575000
19	5608	Jardim do Mulato	64495000
19	5609	Jatobá do Piauí	64275000
19	5610	Jerumenha	64830000
19	5611	João Costa	64765000
19	5612	Joaquim Pires	64170000
19	5613	Joca Marques	64165000
19	5614	José de Freitas	64110000
19	5615	Juazeiro do Piauí	64343000
19	5616	Júlio Borges	64963000
19	5617	Jurema	64782000
19	5618	Lagoa Alegre	64138000
19	5619	Lagoa de São Francisco	64258000
19	5620	Lagoa do Barro do Piauí	64768000
19	5621	Lagoa do Piauí	64388000
19	5622	Lagoa do Sítio	64308000
19	5623	Lagoinha do Piauí	64465000
19	5624	Landri Sales	64850000
19	5625	Luís Correia	64220000
19	5626	Luzilândia	64160000
19	5627	Madeiro	64168000
19	5628	Manoel Emídio	64875000
19	5629	Marcolândia	64685000
19	5630	Marcos Parente	64845000
19	5631	Massapê do Piauí	64573000
19	5632	Matias Olímpio	64150000
19	5633	Miguel Alves	64130000
19	5634	Miguel Leão	64445000
19	5635	Milton Brandão	64253000
19	5636	Monsenhor Gil	64450000
19	5637	Monsenhor Hipólito	64650000
19	5638	Monte Alegre do Piauí	64940000
19	5639	Morro Cabeça No Tempo	64968000
19	5640	Morro do Chapéu do Piauí	64178000
19	5641	Murici Dos Portelas	64175000
19	5642	Nazaré do Piauí	64825000
19	5643	Nossa Senhora de Nazaré	64288000
19	5644	Nossa Senhora Dos Remédios	64140000
19	5645	Nova Santa Rita	64764000
19	5646	Novo Nilo	64125000
19	5647	Novo Oriente do Piauí	64530000
19	5648	Novo Santo Antônio	64365000
19	5649	Oeiras	64500000
19	5650	Olho D Água do Piauí	64468000
19	5651	Padre Marcos	64680000
19	5652	Paes Landim	64710000
19	5653	Pajeú do Piauí	64898000
19	5654	Palmeira do Piauí	64925000
19	5655	Palmeirais	64420000
19	5656	Paquetá	64618000
19	5657	Parnaguá	64970000
19	5658	Parnaíba	00000000
19	5659	Passagem Franca do Piauí	64395000
19	5660	Patos do Piauí	64580000
19	5661	Paulistana	64750000
19	5662	Pavussu	64838000
19	5663	Pedro Ii	64255000
19	5664	Pedro Laurentino	64728000
19	5665	Picos	64600000
19	5666	Pimenteiras	64320000
19	5667	Pio Ix	64660000
19	5668	Piracuruca	64240000
19	5669	Piripiri	64260000
19	5670	Porto	64145000
19	5671	Porto Alegre do Piauí	64858000
19	5672	Prata do Piauí	64370000
19	5673	Queimada Nova	64758000
19	5674	Redenção do Gurguéia	64915000
19	5675	Regeneração	64490000
19	5676	Riacho Frio	64975000
19	5677	Ribeira do Piauí	64725000
19	5678	Ribeiro Gonçalves	64865000
19	5679	Rio Grande do Piauí	64835000
19	5680	Santa Cruz do Piauí	64545000
19	5681	Santa Cruz Dos Milagres	64315000
19	5682	Santa Filomena	64945000
19	5683	Santa Luz	64910000
19	5684	Santa Rosa do Piauí	64518000
19	5685	Santana do Piauí	64615000
19	5686	Santo Antônio de Lisboa	64640000
19	5687	Santo Antônio Dos Milagres	64438000
19	5688	Santo Inácio do Piauí	64560000
19	5689	São Braz do Piauí	64783000
19	5690	São Félix do Piauí	64375000
19	5691	São Francisco de Assis do Piauí	64745000
19	5692	São Francisco do Piauí	64550000
19	5693	São Gonçalo do Gurguéia	64993000
19	5694	São Gonçalo do Piauí	64435000
19	5695	São João da Canabrava	64635000
19	5696	São João da Fronteira	64243000
19	5697	São João da Serra	64350000
19	5698	São João da Varjota	64510000
19	5699	São João do Arraial	64155000
19	5700	São João do Piauí	64760000
19	5701	São José do Divino	64245000
19	5702	São José do Peixe	64555000
19	5703	São José do Piauí	64625000
19	5704	São Julião	64670000
19	5705	São Lourenço do Piauí	64778000
19	5706	São Luís do Piauí	64638000
19	5707	São Miguel da Baixa Grande	64378000
19	5708	São Miguel do Fidalgo	64558000
19	5709	São Miguel do Tapuio	64330000
19	5710	São Pedro do Piauí	64430000
19	5711	São Raimundo Nonato	64770000
19	5712	Sebastião Barros	64985000
19	5713	Sebastião Leal	64873000
19	5714	Sigefredo Pacheco	64285000
19	5715	Simões	64585000
19	5716	Simplício Mendes	64700000
19	5717	Socorro do Piauí	64720000
19	5718	Sussuapara	64610000
19	5719	Tamboril do Piauí	64893000
19	5720	Tanque do Piauí	64512000
19	5721	Teresina	00000000
19	5722	União	64120000
19	5723	Uruçuí	64860000
19	5724	Valença do Piauí	64300000
19	5725	Várzea Branca	64773000
19	5726	Várzea Grande	64525000
19	5727	Vera Mendes	64568000
19	5728	Vila Nova do Piauí	64688000
19	5729	Wall Ferraz	64548000
19	10100	Pau D Arco do Piauí	64295000
19	11019	Aroeiras do Itaim	64612000
20	6839	Abarracamento	27670000
20	6840	Ilha Grande	23968000
20	6841	Afonso Arinos	25875000
20	6842	Agulhas Negras	00000000
20	6843	Amparo	00000000
20	6844	Andrade Pinto	27770000
20	6845	Angra Dos Reis	00000000
20	6846	Anta	25882000
20	6847	Aperibé	28495000
20	6848	Araruama	28970000
20	6849	Areal	25845000
20	6850	Armação Dos Búzios	28950000
20	6851	Arraial do Cabo	28930000
20	6852	Arrozal	27185000
20	6853	Avelar	26980000
20	6854	Bacaxá	28993000
20	6855	Baltazar	28473000
20	6856	Banquete	28662000
20	6857	Barão de Juparana	27640000
20	6858	Barcelos	28220000
20	6859	Barra Alegre	28666000
20	6860	Barra de Macaé	00000000
20	6861	Barra de São João	28880000
20	6862	Barra do Piraí	00000000
20	6863	Barra Mansa	00000000
20	6864	Barra Seca	28240000
20	6865	Belford Roxo	00000000
20	6866	Bemposta	25840000
20	6867	Boa Esperança	28810000
20	6868	Boa Sorte	28525000
20	6869	Boa Ventura	28340000
20	6870	Bom Jardim	28660000
20	6871	Bom Jesus do Itabapoana	28360000
20	6872	Bom Jesus do Querendo	28388000
20	6873	Cabo Frio	00000000
20	6874	Cabuçu	24860000
20	6875	Cachoeiras de Macacu	28680000
20	6876	Cachoeiros	27990000
20	6877	Calheiros	28368000
20	6878	Cambiasca	28425000
20	6879	Cambuci	28430000
20	6880	Campo do Coelho	00000000
20	6881	Campos Dos Goytacazes	00000000
20	6882	Campos Elíseos	00000000
20	6883	Cantagalo	28500000
20	6884	Carabuçu	28372000
20	6885	Carapebus	27998000
20	6886	Cardoso Moreira	28180000
20	6887	Carmo	28640000
20	6888	Cascatinha	00000000
20	6889	Casimiro de Abreu	28860000
20	6890	Cava	00000000
20	6891	Coelho da Rocha	00000000
20	6892	Colônia	28420000
20	6893	Comendador Levy Gasparian	25870000
20	6894	Comendador Venâncio	28348000
20	6895	Conceição de Jacareí	23885000
20	6896	Conceição de Macabu	28740000
20	6897	Conrado	26920000
20	6898	Conselheiro Paulino	00000000
20	6899	Conservatória	27655000
20	6900	Cordeiro	28540000
20	6901	Coroa Grande	00000000
20	6902	Correas	00000000
20	6903	Córrego da Prata	28642000
20	6904	Córrego do Ouro	27980000
20	6905	Correntezas	28830000
20	6906	Cunhambebe	00000000
20	6907	Dorândia	27160000
20	6908	Dores de Macabu	28115000
20	6909	Doutor Elias	28757000
20	6910	Doutor Loreti	28772000
20	6911	Duas Barras	28650000
20	6912	Duque de Caxias	00000000
20	6913	Engenheiro Passos	27555000
20	6914	Engenheiro Paulo de Frontin	26650000
20	6915	Engenheiro Pedreira	00000000
20	6916	Estrada Nova	28590000
20	6917	Euclidelândia	28520000
20	6918	Falcão	00000000
20	6919	Floriano	00000000
20	6920	Fumaça	27550000
20	6921	Funil	28440000
20	6922	Gaviões	28825000
20	6923	Getulândia	27465000
20	6924	Glicério	27985000
20	6925	Goitacazes	28110000
20	6926	Governador Portela	26910000
20	6927	Guapimirim	25940000
20	6928	Guia de Pacobaíba	25930000
20	6929	Ibitiguaçu	28485000
20	6930	Ibitioca	28120000
20	6931	Ibituporanga	00000000
20	6932	Iguaba Grande	28960000
20	6933	Imbariê	00000000
20	6934	Inconfidência	25865000
20	6935	Inhomirim	25935000
20	6936	Inoã	24910000
20	6937	Ipiabás	27170000
20	6938	Ipiiba	00000000
20	6939	Ipuca	28405000
20	6940	Itabapoana	28245000
20	6941	Itaboraí	24800000
20	6942	Itacurussá	23880000
20	6943	Itaguaí	00000000
20	6944	Itaipava	00000000
20	6945	Itaipu	00000000
20	6946	Itajara	28345000
20	6947	Italva	28250000
20	6948	Itambi	24850000
20	6949	Itaocara	28570000
20	6950	Itaperuna	28300000
20	6951	Itatiaia	27580000
20	6953	Jaguarembé	28575000
20	6954	Jamapará	25887000
20	6955	Japeri	00000000
20	6956	Japuíba	28685000
20	6957	Laje do Muriaé	28350000
20	6958	Laranjais	28580000
20	6959	Lídice	27475000
20	6960	Lumiar	00000000
20	6961	Macabuzinho	28745000
20	6962	Macaé	00000000
20	6963	Macuco	28545000
20	6964	Magé	25900000
20	6965	Mambucaba	00000000
20	6966	Mangaratiba	23860000
20	6967	Maniva	28235000
20	6968	Manoel Ribeiro	24920000
20	6969	Manuel Duarte	27690000
20	6970	Marangatu	28476000
20	6971	Maricá	24900000
20	6972	Mendes	26700000
20	6973	Mesquita	00000000
20	6974	Miguel Pereira	26900000
20	6975	Miracema	28460000
20	6976	Monnerat	28655000
20	6977	Monjolo	00000000
20	6978	Monte Alegre	28490000
20	6979	Monte Verde	28445000
20	6980	Monumento	27190000
20	6981	Morangaba	28125000
20	6982	Morro do Côco	28178000
20	6983	Morro Grande	28975000
20	6984	Mussurepe	28143000
20	6985	Natividade	28380000
20	6986	Neves	00000000
20	6987	Nhunguaçu	25998000
20	6988	Nilópolis	00000000
20	6989	Niterói	00000000
20	6990	Nossa Senhora da Aparecida	25886000
20	6991	Nossa Senhora da Penha	28335000
20	6992	Nossa Senhora do Amparo	00000000
20	6993	Nova Friburgo	00000000
20	6994	Nova Iguaçu	00000000
20	6995	Olinda	00000000
20	6996	Ourânia	28383000
20	6997	Papucaia	28695000
20	6998	Paquequer Pequeno	25996000
20	6999	Paracambi	26600000
20	7000	Paraíba do Sul	25850000
20	7001	Paraíso do Tobias	28463000
20	7002	Paraoquena	28483000
20	7003	Parapeúna	27650000
20	7004	Parati	23970000
20	7005	Parati Mirim	23972000
20	7006	Passa Três	27470000
20	7007	Paty do Alferes	26950000
20	7008	Pedra Selada	27560000
20	7009	Pedro do Rio	00000000
20	7010	Penedo	00000000
20	7011	Pentagna	27645000
20	7012	Petrópolis	00000000
20	7013	Piabetá	25915000
20	7014	Pião	25884000
20	7015	Pinheiral	27197000
20	7016	Pipeiras	28225000
20	7017	Piraí	27175000
20	7018	Pirangaí	27565000
20	7019	Pirapetinga de Bom Jesus	28365000
20	7020	Porciúncula	28390000
20	7021	Portela	28595000
20	7022	Porto Das Caixas	24870000
20	7023	Porto Real	27570000
20	7024	Porto Velho do Cunha	28644000
20	7025	Posse	00000000
20	7027	Pureza	28415000
20	7028	Purilândia	28396000
20	7029	Quartéis	28835000
20	7030	Quatis	00000000
20	7031	Queimados	00000000
20	7032	Quissamã	28735000
20	7033	Raposo	28333000
20	7034	Renascença	28774000
20	7035	Resende	00000000
20	7036	Retiro do Muriaé	28330000
20	7037	Rialto	00000000
20	7038	Ribeirão de São Joaquim	00000000
20	7039	Rio Bonito	28800000
20	7040	Rio Claro	27460000
20	7041	Rio Das Flores	27660000
20	7042	Rio Das Ostras	28890000
20	7043	Rio de Janeiro	00000000
20	7044	Riograndina	00000000
20	7045	Rosal	28370000
20	7046	Sacra Família do Tinguá	26660000
20	7047	Salutaris	25855000
20	7048	Sambaetiba	24880000
20	7049	Sampaio Correia	28997000
20	7050	Sana	27995000
20	7051	Santa Clara	28398000
20	7052	Santa Cruz	28480000
20	7053	Santa Cruz da Serra	00000000
20	7054	Santa Isabel	00000000
20	7055	Santa Isabel do Rio Preto	27657000
20	7056	Santa Maria	28155000
20	7057	Santa Maria Madalena	28770000
20	7058	Santa Rita da Floresta	28510000
20	7059	Santanésia	27195000
20	7060	Santo Aleixo	25920000
20	7061	Santo Amaro de Campos	28140000
20	7062	Santo Antônio de Pádua	28470000
20	7063	Santo Antônio do Imbé	28778000
20	7064	Santo Eduardo	28160000
20	7065	São Fidélis	28400000
20	7066	São Francisco de Itabapoana	28230000
20	7067	São Gonçalo	00000000
20	7068	São João da Barra	28200000
20	7069	São João de Meriti	00000000
20	7070	São João do Paraíso	28450000
20	7071	São João Marcos	27472000
20	7072	São Joaquim	28195000
20	7073	São José de Ubá	28455000
20	7074	São José do Ribeirão	28664000
20	7075	São José do Turvo	27165000
20	7076	São José do Vale do Rio Preto	25780000
20	7077	São Mateus	00000000
20	7078	São Pedro da Aldeia	28940000
20	7079	São Sebastião de Campos	28145000
20	7080	São Sebastião do Alto	28550000
20	7081	São Sebastião do Paraíba	28530000
20	7082	São Sebastião Dos Ferreiros	27705000
20	7083	São Vicente de Paula	28980000
20	7084	Sapucaia	25880000
20	7085	Saquarema	28990000
20	7086	Saracuruna	00000000
20	7087	Sebastião de Lacerda	27720000
20	7088	Seropédica	23890000
20	7089	Serrinha	28118000
20	7090	Sete Pontes	00000000
20	7091	Silva Jardim	28820000
20	7092	Sodrelândia	28760000
20	7093	Sossego	28777000
20	7094	Subaio	28690000
20	7095	Sumidouro	28637000
20	7096	Suruí	25925000
20	7097	Taboas	27665000
20	7098	Tamoios	28927000
20	7099	Tanguá	24890000
20	7100	Tapera	28767000
20	7101	Tarituba	23975000
20	7102	Teresópolis	00000000
20	7103	Tocos	28148000
20	7104	Trajano de Morais	28750000
20	7105	Travessão	28175000
20	7106	Três Irmãos	28435000
20	7107	Três Rios	00000000
20	7108	Triunfo	28779000
20	7109	Valão do Barro	28555000
20	7110	Valença	27600000
20	7111	Vargem Alegre	27155000
20	7112	Varre-sai	28375000
20	7113	Vassouras	27700000
20	7114	Venda Das Flores	28466000
20	7115	Venda Das Pedras	24885000
20	7116	Vila da Grama	28765000
20	7118	Vila Muriqui	23870000
20	7119	Vila Nova de Campos	28165000
20	7120	Visconde de Imbé	28755000
20	7121	Volta Redonda	00000000
20	7122	Werneck	25860000
20	7123	Xerém	00000000
20	10208	São Pedro da Serra	00000000
20	10369	Batatal	28585000
20	10409	Serrinha	28374000
20	10491	Ipituna	28557000
21	7124	Acari	59370000
21	7125	Açu	59650000
21	7126	Afonso Bezerra	59510000
21	7127	Água Nova	59995000
21	7128	Alexandria	59965000
21	7129	Almino Afonso	59760000
21	7130	Alto do Rodrigues	59507000
21	7131	Angicos	59515000
21	7132	Antônio Martins	59870000
21	7133	Apodi	59700000
21	7134	Areia Branca	59655000
21	7135	Arez	59170000
21	7136	Baía Formosa	59194000
21	7137	Barão de Serra Branca	59522000
21	7138	Baraúna	59695000
21	7139	Barcelona	59410000
21	7140	Belo Horizonte	59558000
21	7141	Bento Fernandes	59555000
21	7142	Boa Saúde	59260000
21	7143	Bodó	59528000
21	7144	Bom Jesus	59270000
21	7145	Brejinho	59219000
21	7146	Caiçara do Norte	59592000
21	7147	Caiçara do Rio do Vento	59540000
21	7148	Caicó	59300000
21	7149	Campo Grande	59680000
21	7150	Campo Redondo	59230000
21	7151	Canguaretama	59190000
21	7152	Caraúbas	59780000
21	7153	Carnaúba Dos Dantas	59374000
21	7154	Carnaubais	59665000
21	7155	Ceará-mirim	59570000
21	7156	Cerro Corá	59395000
21	7157	Coronel Ezequiel	59220000
21	7158	Coronel João Pessoa	59930000
21	7159	Córrego de São Mateus	59265000
21	7160	Cruzeta	59375000
21	7161	Currais Novos	59380000
21	7162	Doutor Severiano	59910000
21	7163	Encanto	59905000
21	7164	Equador	59355000
21	7165	Espírito Santo	59180000
21	7166	Espírito Santo do Oeste	59660000
21	7167	Extremoz	59575000
21	7168	Felipe Guerra	59795000
21	7169	Fernando Pedroza	59517000
21	7170	Firmamento	59538000
21	7171	Florânia	59335000
21	7172	Francisco Dantas	59902000
21	7173	Frutuoso Gomes	59890000
21	7174	Galinhos	59596000
21	7175	Gameleira	59568000
21	7176	Goianinha	59173000
21	7177	Governador Dix-sept Rosado	59790000
21	7178	Grossos	59675000
21	7179	Guamaré	59598000
21	7180	Ielmo Marinho	59490000
21	7181	Igreja Nova	59299000
21	7182	Ipanguaçu	59508000
21	7183	Ipiranga	59275500
21	7184	Ipueira	59315000
21	7185	Itajá	59513000
21	7186	Itaú	59855000
21	7187	Jaçanã	59225000
21	7188	Jandaíra	59594000
21	7189	Janduís	59690000
21	7190	Japi	59213000
21	7191	Jardim de Angicos	59544000
21	7192	Jardim de Piranhas	59324000
21	7193	Jardim do Seridó	59343000
21	7194	João Câmara	59550000
21	7195	João Dias	59880000
21	7196	José da Penha	59980000
21	7197	Jucurutu	59330000
21	7198	Jundiá	59188000
21	7199	Lagoa D Anta	59227000
21	7200	Lagoa de Pedras	59244000
21	7201	Lagoa de Velhos	59430000
21	7202	Lagoa Nova	59390000
21	7203	Lagoa Salgada	59247000
21	7204	Lajes	59535000
21	7205	Lajes Pintadas	59235000
21	7206	Lucrécia	59805000
21	7207	Luís Gomes	59940000
21	7208	Macaíba	59280000
21	7209	Macau	59500000
21	7210	Major Felipe	59985000
21	7211	Major Sales	59945000
21	7212	Marcelino Vieira	59970000
21	7213	Martins	59800000
21	7214	Mata de São Braz	59958000
21	7215	Maxaranguape	59580000
21	7216	Messias Targino	59775000
21	7217	Montanhas	59198000
21	7218	Monte Alegre	59182000
21	7219	Monte Das Gameleiras	59217000
21	7220	Mossoró	00000000
21	7221	Natal	00000000
21	7222	Nísia Floresta	59164000
21	7223	Nova Cruz	59215000
21	7224	Olho-d Água do Borges	59730000
21	7225	Ouro Branco	59347000
21	7226	Paraná	59950000
21	7227	Parazinho	59586000
21	7228	Parelhas	59360000
21	7229	Parnamirim	00000000
21	7230	Passa E Fica	59218000
21	7231	Passagem	59259000
21	7232	Patu	59770000
21	7233	Pau Dos Ferros	59900000
21	7234	Pedra Grande	59588000
21	7235	Pedra Preta	59547000
21	7236	Pedro Avelino	59530000
21	7237	Pedro Velho	59196000
21	7238	Pendências	59504000
21	7239	Pilões	59960000
21	7240	Poço Branco	59560000
21	7241	Portalegre	59810000
21	7242	Porto do Mangue	59668000
21	7243	Pureza	59582000
21	7244	Rafael Fernandes	59990000
21	7245	Rafael Godeiro	59740000
21	7246	Riacho da Cruz	59820000
21	7247	Riacho de Santana	59987000
21	7248	Riachuelo	59470000
21	7249	Rio do Fogo	59578000
21	7250	Rodolfo Fernandes	59830000
21	7251	Rosário	59885000
21	7252	Ruy Barbosa	59420000
21	7253	Salva Vida	59803000
21	7254	Santa Cruz	59200000
21	7255	Santa Fé	59189000
21	7256	Santa Maria	59464000
21	7257	Santa Teresa	59526000
21	7258	Santana do Matos	59520000
21	7259	Santana do Seridó	59350000
21	7260	Santo Antônio	59255000
21	7261	Santo Antônio do Potengi	59298000
21	7262	São Bento do Norte	59590000
21	7263	São Bento do Trairi	59210000
21	7264	São Bernardo	59943000
21	7265	São Fernando	59327000
21	7266	São Francisco do Oeste	59908000
21	7267	São Geraldo	59785000
21	7268	São Gonçalo do Amarante	59290000
21	7269	São João do Sabugi	59310000
21	7270	São José da Passagem	59524000
21	7271	São José de Mipibu	59162000
21	7272	São José do Campestre	59275000
21	7273	São José do Seridó	59378000
21	7274	São Miguel	59920000
21	7275	São Miguel de Touros	59585000
21	7276	São Paulo do Potengi	59460000
21	7277	São Pedro	59480000
21	7278	São Rafael	59518000
21	7279	São Tomé	59400000
21	7280	São Vicente	59340000
21	7281	Senador Elói de Souza	59250000
21	7282	Senador Georgino Avelino	59168000
21	7283	Serra Caiada	59245000
21	7284	Serra da Tapuia	59445000
21	7285	Serra de São Bento	59214000
21	7286	Serra do Mel	59663000
21	7287	Serra Negra do Norte	59318000
21	7288	Serrinha	59258000
21	7289	Serrinha Dos Pintos	59808000
21	7290	Severiano Melo	59856000
21	7291	Sítio Novo	59440000
21	7292	Taboleiro Grande	59840000
21	7293	Taipu	59565000
21	7294	Tangará	59240000
21	7295	Tenente Ananias	59955000
21	7296	Tenente Laurentino Cruz	59338000
21	7297	Tibau	59678000
21	7298	Tibau do Sul	59178000
21	7299	Timbaúba Dos Batistas	59320000
21	7300	Touros	59584000
21	7301	Trairi	59242000
21	7302	Triunfo Potiguar	59685000
21	7303	Umarizal	59865000
21	7304	Upanema	59670000
21	7305	Várzea	59185000
21	7306	Venha-ver	59925000
21	7307	Vera Cruz	59184000
21	7308	Viçosa	59815000
21	7309	Vila Flor	59192000
22	7388	Aceguá	96445000
22	7389	Afonso Rodrigues	97825000
22	7390	Água Santa	99965000
22	7391	Águas Claras	94760000
22	7392	Agudo	96540000
22	7393	Ajuricaba	98750000
22	7394	Albardão	96670000
22	7395	Alecrim	98950000
22	7396	Alegrete	00000000
22	7397	Alegria	98905000
22	7398	Alfredo Brenner	98210000
22	7399	Almirante Tamandaré do Sul	99523000
22	7400	Alpestre	98480000
22	7401	Alto Alegre	99430000
22	7402	Alto Alegre	96380000
22	7403	Alto da União	98713000
22	7404	Alto Feliz	95773000
22	7405	Alto Paredão	96853000
22	7406	Alto Recreio	99673000
22	7407	Alto Uruguai	98630000
22	7408	Alvorada	00000000
22	7409	Amaral Ferrador	96635000
22	7410	Ametista do Sul	98465000
22	7411	André da Rocha	95310000
22	7412	Anta Gorda	95980000
22	7413	Antônio Kerpel	98583000
22	7414	Antônio Prado	95250000
22	7415	Arambaré	96178000
22	7416	Araricá	93880000
22	7417	Aratiba	99770000
22	7418	Arco Verde	95186000
22	7419	Arco-íris	98393000
22	7420	Arroio Canoas	95733000
22	7421	Arroio do Meio	95940000
22	7422	Arroio do Padre	96155000
22	7423	Arroio do Sal	95585000
22	7424	Arroio do Só	97165000
22	7425	Arroio do Tigre	96950000
22	7426	Arroio Dos Ratos	96740000
22	7427	Arroio Grande	96330000
22	7428	Arroio Grande	97120000
22	7429	Arroio Grande	99455000
22	7430	Árvore Só	96240000
22	7431	Arvorezinha	95995000
22	7432	Atafona	98830000
22	7433	Atiaçu	99565000
22	7434	Augusto Pestana	98740000
22	7435	Áurea	99835000
22	7436	Avelino Paranhos	99425000
22	7437	Azevedo Sodré	97330000
22	7438	Bacupari	95549000
22	7439	Bagé	00000000
22	7440	Baliza	99833000
22	7441	Balneário Pinhal	95599000
22	7442	Banhado do Colégio	96188000
22	7443	Barão	95730000
22	7444	Barão de Cotegipe	99740000
22	7445	Barão do Triunfo	96735000
22	7446	Barra do Guarita	98530000
22	7447	Barra do Ouro	95532000
22	7448	Barra do Quaraí	97538000
22	7449	Barra do Ribeiro	96790000
22	7450	Barra do Rio Azul	99795000
22	7451	Barra Funda	99585000
22	7452	Barracão	95370000
22	7453	Barreirinho	99575000
22	7454	Barreiro	98712000
22	7455	Barro Preto	98753000
22	7456	Barro Vermelho	96526000
22	7457	Barro Vermelho	94340000
22	7458	Barros Cassal	99360000
22	7459	Basílio	96320000
22	7460	Bela Vista	99885000
22	7461	Bela Vista	99135000
22	7462	Bela Vista	96912000
22	7463	Bela Vista	98605000
22	7464	Beluno	97620000
22	7465	Benjamin Constant do Sul	99650000
22	7466	Bento Gonçalves	95700000
22	7467	Bexiga	96680000
22	7468	Boa Esperança	95693000
22	7469	Boa Vista	95751000
22	7470	Boa Vista	96850000
22	7471	Boa Vista	96177000
22	7472	Boa Vista Das Missões	98335000
22	7473	Boa Vista do Buricá	98918000
22	7474	Boa Vista do Cadeado	98118000
22	7475	Boa Vista do Incra	98120000
22	7476	Boa Vista do Sul	95727000
22	7477	Boca do Monte	97170000
22	7478	Boi Preto	99555000
22	7479	Bojuru	96228000
22	7480	Bom Jardim	96578000
22	7481	Bom Jesus	95290000
22	7482	Bom Princípio	95765000
22	7483	Bom Progresso	98575000
22	7484	Bom Retiro	95495000
22	7485	Bom Retiro do Guaíba	92800000
22	7486	Bom Retiro do Sul	95870000
22	7487	Bonito	96181000
22	7488	Boqueirão	95830000
22	7489	Boqueirão	96175000
22	7490	Boqueirão do Leão	95920000
22	7491	Bororé	97653000
22	7492	Bossoroca	97850000
22	7493	Botucaraí	96935000
22	7494	Braga	98560000
22	7495	Brochier	95790000
22	7496	Buriti	98825000
22	7497	Butiá	96750000
22	7498	Butiás	96293000
22	7499	Caçapava do Sul	96570000
22	7500	Cacequi	97450000
22	7501	Cachoeira do Sul	00000000
22	7502	Cachoeirinha	00000000
22	7503	Cacique Doble	99860000
22	7504	Cadorna	95987000
22	7505	Caibaté	97930000
22	7506	Caiçara	98440000
22	7507	Camaquã	96180000
22	7508	Camargo	99165000
22	7509	Cambará do Sul	95480000
22	7510	Camobi	00000000
22	7511	Campestre Baixo	95752000
22	7512	Campestre da Serra	95255000
22	7513	Campina Das Missões	98975000
22	7514	Campina Redonda	99405000
22	7515	Campinas	98255000
22	7516	Campinas do Sul	99660000
22	7517	Campo Bom	93700000
22	7518	Campo Branco	95926000
22	7519	Campo do Meio	99185000
22	7520	Campo Novo	98570000
22	7521	Campo Novo	99372000
22	7522	Campo Santo	98585000
22	7523	Campo Seco	97592000
22	7524	Campo Vicente	93893000
22	7525	Campos Borges	99435000
22	7526	Candelária	96930000
22	7527	Cândido Freire	98880000
22	7528	Cândido Godói	98970000
22	7529	Candiota	96495000
22	7530	Canela	95680000
22	7531	Canguçu	96600000
22	7532	Canhembora	97270000
22	7533	Canoas	00000000
22	7534	Canudos do Vale	95933000
22	7535	Capané	96524000
22	7536	Capão Bonito do Sul	95308000
22	7537	Capão Bonito	99447000
22	7538	Capão Comprido	96295000
22	7539	Capão da Canoa	95555000
22	7540	Capão da Porteira	94770000
22	7541	Capão do Cedro	95304500
22	7542	Capão do Cipó	97753000
22	7543	Capão do Leão	96160000
22	7544	Capela de Santana	95745000
22	7545	Capela Velha	96183000
22	7546	Capinzal	99686000
22	7547	Capitão	95935000
22	7548	Capivari do Sul	95552000
22	7549	Capivarita	96695000
22	7550	Capo-erê	99717000
22	7551	Capoeira Grande	98525000
22	7552	Caraá	95515000
22	7553	Carajá Seival	96580000
22	7554	Carazinho	99500000
22	7555	Carlos Barbosa	95185000
22	7556	Carlos Gomes	99825000
22	7557	Carovi	97733000
22	7558	Casca	99260000
22	7559	Cascata	98922000
22	7560	Cascata	96140000
22	7561	Caseiros	95315000
22	7562	Castelinho	98405000
22	7563	Catuípe	98770000
22	7564	Cavajureta	97440000
22	7565	Caverá	97594000
22	7566	Caxias do Sul	00000000
22	7567	Cazuza Ferreira	95450000
22	7568	Cedro Marcado	98520000
22	7569	Centenário	99838000
22	7570	Centenário	98313000
22	7571	Centro Linha Brasil	95808000
22	7572	Cerrito	96395000
22	7573	Cerrito Alegre	96105000
22	7574	Cerrito do Ouro Ou Vila do Cerrito	97370000
22	7575	Cerro Alto	98943000
22	7576	Cerro Branco	96535000
22	7577	Cerro Claro	97403000
22	7578	Cerro do Martins	96575000
22	7579	Cerro do Roque	96753000
22	7580	Cerro Grande	98340000
22	7581	Cerro Grande do Sul	96770000
22	7582	Cerro Largo	97900000
22	7583	Chapada	99530000
22	7584	Chapada	95425000
22	7585	Charqueadas	96745000
22	7586	Charrua	99960000
22	7587	Chiapetta	98760000
22	7588	Chicolomã	95508000
22	7589	Chimarrão	95312000
22	7590	Chorão	98720000
22	7591	Chuí	96255000
22	7592	Chuvisca	96193000
22	7593	Cidreira	95595000
22	7594	Cinqüentenário	98946000
22	7595	Ciríaco	99970000
22	7596	Clara	97415000
22	7597	Clemente Argolo	95302000
22	7598	Coimbra	98868000
22	7599	Colinas	95895000
22	7600	Colônia Das Almas	98775000
22	7601	Colônia Medeiros	98916000
22	7602	Colônia Municipal	98844000
22	7603	Colônia Nova	96439000
22	7604	Colônia São João	98122000
22	7605	Colônia Z-3	96130000
22	7606	Coloninha	96980000
22	7607	Colorado	99460000
22	7608	Comandai	98841000
22	7609	Condor	98290000
22	7610	Consolata	98914000
22	7611	Constantina	99680000
22	7612	Coqueiro Baixo	95955000
22	7613	Coqueiros do Sul	99528000
22	7614	Cordilheira	96528000
22	7615	Coroados	98598000
22	7616	Coronel Barros	98735000
22	7617	Coronel Bicaco	98580000
22	7618	Coronel Finzito	98395000
22	7619	Coronel Pilar	95726000
22	7620	Coronel Teixeira	99805000
22	7621	Cortado	96550000
22	7622	Costa da Cadeia	95855000
22	7623	Costão	95882000
22	7624	Cotiporã	95335000
22	7625	Coxilha	99145000
22	7626	Coxilha Grande	95223000
22	7627	Cr-1	95547000
22	7628	Crissiumal	98640000
22	7629	Cristal	96195000
22	7630	Cristal do Sul	98368000
22	7631	Criúva	95143000
22	7632	Cruz Alta	00000000
22	7633	Cruzaltense	99665000
22	7634	Cruzeiro	98478000
22	7635	Cruzeiro do Sul	95930000
22	7636	Curral Alto	96245000
22	7637	Curumim	95558000
22	7638	Daltro Filho	95888000
22	7639	Daltro Filho	95724000
22	7640	Daltro Filho	98515000
22	7641	Dário Lassance	96444000
22	7642	David Canabarro	99980000
22	7643	Delfina	95884000
22	7644	Deodoro	95810000
22	7645	Depósito	99420000
22	7646	Derrubadas	98528000
22	7647	Dezesseis de Novembro	97845000
22	7648	Dilermando de Aguiar	97180000
22	7649	Divino	98474000
22	7650	Dois Irmãos	93950000
22	7651	Dois Irmãos Das Missões	98385000
22	7652	Dois Lajeados	99220000
22	7653	São José do Sul	95748000
22	7654	Dom Feliciano	96190000
22	7655	Dom Feliciano	94350000
22	7656	Dom Pedrito	96450000
22	7657	Dom Pedro de Alcântara	95568000
22	7658	Dona Francisca	97280000
22	7659	Dona Otília	97973000
22	7660	Dourado	99775000
22	7661	Bozano	98733000
22	7662	Doutor Edgardo Pereira Velho	96280000
22	7663	Doutor Maurício Cardoso	98925000
22	7664	Doutor Ricardo	95967000
22	7665	Eldorado do Sul	92990000
22	7666	Eletra	95435000
22	7667	Encantado	95960000
22	7668	Encruzilhada	97665000
22	7669	Encruzilhada do Sul	96610000
22	7670	Engenho Velho	99698000
22	7671	Entre Rios do Sul	99645000
22	7672	Entre-ijuís	98855000
22	7673	Entrepelado	95605000
22	7674	Erebango	99920000
22	7675	Erechim	99700000
22	7676	Ernestina	99140000
22	7677	Ernesto Alves	97750000
22	7678	Erval Grande	99750000
22	7679	Erval Seco	98390000
22	7680	Erveiras	96868000
22	7681	Esmeralda	95380000
22	7682	Esperança do Sul	98635000
22	7683	Espigão	94740000
22	7684	Espigão Alto	95375000
22	7685	Espinilho Grande	98173000
22	7686	Espírito Santo	98907000
22	7687	Espumoso	99400000
22	7688	Esquina Araújo	98917000
22	7689	Esquina Bom Sucesso	98777000
22	7690	Esquina Gaúcha	98655000
22	7691	Esquina Gaúcha	98857000
22	7692	Esquina Ipiranga	98885000
22	7693	Esquina Piratini	97865000
22	7694	Estação	99930000
22	7695	Estância Grande	94890000
22	7696	Estância Velha	93600000
22	7697	Esteio	00000000
22	7698	Esteira	95218000
22	7699	Estreito	96227000
22	7700	Estrela	95880000
22	7701	Estrela	95227000
22	7702	Estrela Velha	96990000
22	7703	Eugênio de Castro	98860000
22	7704	Evangelista	99262000
22	7705	Fagundes Varela	95333000
22	7706	Fão	95914000
22	7707	Faria Lemos	95713000
22	7708	Farinhas	98490000
22	7709	Farrapos	99872000
22	7710	Farroupilha	95180000
22	7711	Faxinal	99357000
22	7712	Faxinal do Soturno	97220000
22	7713	Faxinalzinho	99655000
22	7714	Fazenda Fialho	95608000
22	7715	Fazenda Souza	95125000
22	7716	Fazenda Vilanova	95875000
22	7717	Feliz	95770000
22	7718	Ferreira	96521000
22	7719	Flores da Cunha	95270000
22	7720	Floresta	98710000
22	7721	Floresta	98613000
22	7722	Floriano Peixoto	99910000
22	7723	Flórida	97725000
22	7724	Fontoura Xavier	99370000
22	7725	Formigueiro	97210000
22	7726	Formosa	96871000
22	7727	Forninho	96583000
22	7728	Forquetinha	95937000
22	7729	Fortaleza Dos Valos	98125000
22	7730	Frederico Westphalen	98400000
22	7731	Frei Sebastião	95551000
22	7732	Freire	96390000
22	7733	Garibaldi	95720000
22	7734	Garibaldina	95723000
22	7735	Garruchos	97690000
22	7736	Gaurama	99830000
22	7737	General Câmara	95820000
22	7738	Gentil	99160000
22	7739	Getúlio Vargas	99900000
22	7740	Giruá	98870000
22	7741	Glória	95565000
22	7742	Glorinha	94380000
22	7743	Goio-en	99752000
22	7744	Gramado	95670000
22	7745	Gramado Dos Loureiros	99605000
22	7746	Gramado São Pedro	99375000
22	7747	Gramado Xavier	96875000
22	7748	Gravataí	00000000
22	7749	Guabiju	95355000
22	7750	Guaíba	92500000
22	7751	Guajuviras	92455000
22	7752	Guaporé	99200000
22	7753	Guarani Das Missões	97950000
22	7754	Guassupi	97408000
22	7755	Harmonia	95785000
22	7756	Herval	96310000
22	7757	Herveiras	96888000
22	7758	Hidráulica	96163000
22	7759	Horizontina	98920000
22	7760	Hulha Negra	96460000
22	7761	Humaitá	98670000
22	7762	Ibarama	96925000
22	7763	Ibaré	97395000
22	7764	Ibiaçá	99940000
22	7765	Ibiraiaras	95305000
22	7766	Ibirapuitã	99320000
22	7767	Ibirubá	98200000
22	7768	Igrejinha	95650000
22	7769	Igrejinha	99515000
22	7770	Ijucapirama	97763000
22	7771	Ijuí	98700000
22	7772	Ilha Dos Marinheiros	96223000
22	7773	Ilópolis	95990000
22	7774	Imbé	95625000
22	7775	Imigrante	95885000
22	7776	Independência	98915000
22	7777	Inhacorá	98765000
22	7778	Ipê	95240000
22	7779	Ipiranga	94370000
22	7780	Ipiranga do Sul	99925000
22	7781	Ipuaçu	98445000
22	7782	Iraí	98460000
22	7783	Iruí	96655000
22	7784	Itaara	97185000
22	7785	Itacolomi	94330000
22	7786	Itacurubi	97685000
22	7787	Itacurubi	97720000
22	7788	Itaí	98717000
22	7789	Itaimbezinho	95296000
22	7790	Itão	97660000
22	7791	Itapuã	94750000
22	7792	Itapucá	95997000
22	7793	Itapucá	95983000
22	7794	Itaqui	97650000
22	7795	Itati	95538000
22	7796	Itatiba do Sul	99760000
22	7797	Itaúba	96960000
22	7798	Ituim	95225000
22	7799	Ivaí	97855000
22	7800	Ivorá	98160000
22	7801	Ivoti	93900000
22	7802	Jaboticaba	98350000
22	7803	Jacuizinho	99457000
22	7804	Jacutinga	99730000
22	7805	Jaguarão	96300000
22	7806	Jaguarete	99715000
22	7807	Jaguari	97760000
22	7808	Jansen	95181000
22	7809	Jaquirana	95420000
22	7810	Jari	98175000
22	7811	Jazidas Ou Capela São Vicente	97380000
22	7812	João Arregui	97530000
22	7813	João Rodrigues	96665000
22	7814	Joça Tavares	96435000
22	7815	Jóia	98180000
22	7816	José Otávio	96431000
22	7817	Juá	95430000
22	7818	Júlio de Castilhos	98130000
22	7819	Lagoa Bonita do Sul	96920000
22	7820	Lagoa Dos Três Cantos	99495000
22	7821	Lagoa Vermelha	95300000
22	7822	Lagoão	99340000
22	7823	Lajeado	95900000
22	7824	Lajeado Bonito	95338000
22	7825	Lajeado Bonito	98685000
22	7826	Lajeado Cerne	98845000
22	7827	Lajeado do Bugre	98320000
22	7828	Lajeado Grande	98650000
22	7829	Lajeado Grande	95440000
22	7830	Lara	98603000
22	7831	Laranjeira	98455000
22	7832	Lava-pés	97735000
22	7833	Lavras do Sul	97390000
22	7834	Leonel Rocha	98333000
22	7835	Liberato Salzano	99690000
22	7836	Lindolfo Collor	93940000
22	7837	Linha Comprida	95754000
22	7838	Linha Nova	95768000
22	7839	Linha Vitória	99513000
22	7840	Loreto	97430000
22	7841	Maçambará	97645000
22	7842	Machadinho	99880000
22	7843	Magistério	95597000
22	7844	Mampituba	95572000
22	7845	Manchinha	98912000
22	7846	Mangueiras	97596000
22	7847	Manoel Viana	97640000
22	7848	Maquiné	95530000
22	7849	Maratá	95793000
22	7850	Marau	99150000
22	7851	Marcelino Ramos	99800000
22	7852	Marcorama	95725000
22	7853	Mariana Pimentel	92900000
22	7854	Mariano Moro	99790000
22	7855	Mariante	95815000
22	7856	Mariápolis	95527000
22	7857	Marques de Souza	95923000
22	7858	Mata	97410000
22	7859	Matarazzo	96370000
22	7860	Mato Castelhano	99180000
22	7861	Mato Grande	98890000
22	7862	Mato Leitão	95835000
22	7863	Mato Queimado	97935000
22	7864	Mauá	96335000
22	7865	Mauá	98730000
22	7866	Maximiliano de Almeida	99890000
22	7867	Medianeira	98755000
22	7868	Minas do Leão	96755000
22	7869	Miraguaí	98540000
22	7870	Miraguaia	95510000
22	7871	Mirim	96250000
22	7872	Mirim	99815000
22	7873	Montauri	99255000
22	7874	Monte Alegre	95828000
22	7875	Monte Alegre	97730000
22	7876	Monte Alegre Dos Campos	95236000
22	7877	Monte Alverne	96859000
22	7878	Monte Belo do Sul	95718000
22	7879	Monte Bonito	96115000
22	7880	Montenegro	95780000
22	7881	Mormaço	99315000
22	7882	Morrinhos	96720000
22	7883	Morrinhos do Sul	95577000
22	7884	Morro Alto	95534000
22	7885	Morro Azul	95583000
22	7886	Morro Redondo	96150000
22	7887	Morro Reuter	93990000
22	7888	Morungava	94360000
22	7889	Mostardas	96270000
22	7890	Muçum	95970000
22	7891	Muitos Capões	95230000
22	7892	Muliterno	99990000
22	7893	Não-me-toque	99470000
22	7894	Nazaré	97745000
22	7895	Nicolau Vergueiro	99175000
22	7896	Nonoai	99600000
22	7897	Nossa Senhora Aparecida	98260000
22	7898	Nossa Senhora da Conceição	95763000
22	7899	Nova Alvorada	95985000
22	7900	Nova Araçá	95350000
22	7901	Nova Bassano	95340000
22	7902	Nova Boa Vista	99580000
22	7903	Nova Bréscia	95950000
22	7904	Nova Candelária	98919000
22	7905	Nova Esperança do Sul	97770000
22	7906	Nova Hartz	93890000
22	7907	Nova Milano	95182000
22	7908	Nova Pádua	95275000
22	7909	Nova Palma	97250000
22	7910	Nova Petrópolis	95150000
22	7911	Nova Prata	95320000
22	7912	Nova Ramada	98758000
22	7913	Nova Roma do Sul	95260000
22	7914	Nova Santa Rita	92480000
22	7915	Nova Sardenha	95183000
22	7916	Novo Barreiro	98338000
22	7917	Novo Cabrais	96545000
22	7918	Novo Hamburgo	00000000
22	7919	Novo Horizonte	99448000
22	7920	Novo Machado	98955000
22	7921	Novo Planalto	98688000
22	7922	Novo Tiradentes	98370000
22	7923	Vila Oliva	95135000
22	7924	Oralina	99449000
22	7925	Osório	95520000
22	7926	Osvaldo Cruz	98403000
22	7927	Osvaldo Kroeff	95485000
22	7928	Otávio Rocha	95272000
22	7929	Pacheca	96185000
22	7930	Padilha	95610000
22	7931	Padre Gonzales	98620000
22	7932	Paim Filho	99850000
22	7933	Palmares do Sul	95540000
22	7934	Palmas	96437000
22	7935	Palmeira Das Missões	98300000
22	7936	Palmitinho	98430000
22	7937	Pampeiro	97585000
22	7938	Panambi	98280000
22	7939	Pântano Grande	96690000
22	7940	Paraí	95360000
22	7941	Paraíso do Sul	96530000
22	7942	Pareci Novo	95783000
22	7943	Parobé	95630000
22	7944	Passa Sete	96908000
22	7945	Passinhos	95525000
22	7946	Passo Burmann	98776000
22	7947	Passo da Areia	94780000
22	7948	Passo da Caveira	94335000
22	7949	Passo Das Pedras	96165000
22	7950	Passo do Adão	96675000
22	7951	Passo do Sabão	94730000
22	7952	Passo do Sobrado	96685000
22	7953	Passo Fundo	00000000
22	7954	Passo Novo	97555000
22	7955	Passo Raso	95850000
22	7956	Paulo Bento	99718000
22	7957	Pavão	96168000
22	7958	Paverama	95865000
22	7959	Pedras Altas	96487000
22	7960	Pedreiras	96340000
22	7961	Pedro Garcia	98565000
22	7962	Pedro Osório	96360000
22	7963	Pedro Paiva	98593000
22	7964	Pejuçara	98270000
22	7965	Pelotas	00000000
22	7966	Picada Café	95175000
22	7967	Pinhal	98345000
22	7968	Pinhal	95873000
22	7969	Pinhal	96898000
22	7970	Pinhal	99307000
22	7971	Pinhal Alto	95160000
22	7972	Pinhal da Serra	95390000
22	7973	Pinhal Grande	98150000
22	7974	Pinhalzinho	99754000
22	7975	Pinhalzinho	99695000
22	7976	Pinheirinho do Vale	98435000
22	7977	Pinheiro Machado	96470000
22	7978	Pinheiro Machado	97990000
22	7979	Pinheiro Marcado	99520000
22	7980	Pinto Bandeira	95712000
22	7981	Piraí	96443000
22	7982	Pirapó	97885000
22	7983	Piratini	96490000
22	7984	Pitanga	98926000
22	7985	Planalto	98470000
22	7986	Planalto	98645000
22	7987	Plano Alto	97515000
22	7988	Poço Das Antas	95740000
22	7989	Polígono do Erval	99353000
22	7990	Pólo Petroquímico de Triunfo	95853000
22	7991	Pontão	99190000
22	7992	Ponte Preta	99735000
22	7993	Portão	93180000
22	7994	Porto Alegre	00000000
22	7995	Porto Batista	95845000
22	7996	Porto Lucena	98980000
22	7997	Porto Mauá	98947000
22	7998	Porto Vera Cruz	98985000
22	7999	Porto Xavier	98995000
22	8000	Pouso Novo	95945000
22	8001	Povo Novo	96224000
22	8002	Povoado Tozzo	99763000
22	8003	Pranchada	98928000
22	8004	Pratos	98936000
22	8005	Presidente Lucena	93945000
22	8006	Progresso	95925000
22	8007	Progresso	96970000
22	8008	Progresso	98911000
22	8009	Progresso	99678000
22	8010	Protásio Alves	95345000
22	8011	Pulador	99130000
22	8012	Putinga	95975000
22	8013	Quaraí	97560000
22	8014	Quaraim	98913000
22	8015	Quatro Irmãos	99720000
22	8016	Quevedos	98140000
22	8017	Quilombo	96145000
22	8018	Quinta	96222000
22	8019	Quintão	95548000
22	8020	Quinze de Novembro	98230000
22	8021	Quitéria	96730000
22	8022	Rancho Velho	95543000
22	8023	Redentora	98550000
22	8024	Refugiado	95215000
22	8025	Relvado	95965000
22	8026	Restinga Seca	97200000
22	8027	Restinga Seca	98829000
22	8028	Rincão de São Pedro	97815000
22	8029	Rincão Del Rei	96660000
22	8030	Rincão do Cristóvão Pereira	96275000
22	8031	Rincão do Meio	97680000
22	8032	Rincão do Segredo	99510000
22	8033	Rincão Doce	99475000
22	8034	Rincão Dos Kroeff	95410000
22	8035	Rincão Dos Mendes	98832000
22	8036	Rincão Vermelho	97975000
22	8037	Rio Azul	99773000
22	8038	Rio Branco	95322000
22	8039	Rio da Ilha	95614000
22	8040	Rio Dos Índios	99610000
22	8041	Rio Grande	00000000
22	8042	Rio Pardinho	96856000
22	8043	Rio Pardo	96640000
22	8044	Rio Telha	99943000
22	8045	Rio Tigre	99845000
22	8046	Rio Toldo	99904000
22	8047	Riozinho	95695000
22	8048	Roca Sales	95735000
22	8049	Rodeio Bonito	98360000
22	8050	Rolador	97843000
22	8051	Rolante	95690000
22	8052	Rolantinho da Figueira	95692000
22	8053	Ronda Alta	99670000
22	8054	Rondinha	99590000
22	8055	Roque Gonzales	97970000
22	8056	Rosário	98745000
22	8057	Rosário do Sul	97590000
22	8058	Sagrada Família	98330000
22	8059	Saicã	97455000
22	8060	Saldanha Marinho	98250000
22	8061	Saltinho	99765000
22	8062	Saltinho	98365000
22	8063	Salto	98725000
22	8064	Salto do Jacuí	99440000
22	8065	Salvador Das Missões	97940000
22	8066	Salvador do Sul	95750000
22	8067	Sananduva	99840000
22	8068	Sant Auta	96186000
22	8069	Santa Bárbara	96585000
22	8070	Santa Bárbara	99245000
22	8071	Santa Bárbara do Sul	98240000
22	8072	Santa Catarina	97945000
22	8073	Santa Cecília do Sul	99952000
22	8074	Santa Clara do Ingaí	98234000
22	8075	Santa Clara do Sul	95915000
22	8076	Santa Cristina	95640000
22	8077	Santa Cruz	98476000
22	8078	Santa Cruz da Concórdia	95620000
22	8079	Santa Cruz do Sul	00000000
22	8080	Santa Flora	97160000
22	8081	Santa Inês	97820000
22	8082	Santa Izabel do Sul	96350000
22	8083	Santa Lúcia	98722000
22	8084	Santa Lúcia do Piaí	95130000
22	8085	Santa Luíza	95187000
22	8086	Santa Luzia	95301000
22	8087	Santa Maria	00000000
22	8088	Santa Maria do Herval	93995000
22	8089	Santa Rita do Sul	96187000
22	8090	Santa Rosa	98900000
22	8091	Santa Rosa	95544000
22	8092	Santa Silvana	96110000
22	8093	Santa Teresinha	98319000
22	8094	Santa Tereza	95715000
22	8095	Santa Tereza	98778000
22	8096	Santa Vitória do Palmar	96230000
22	8097	Santana	99550000
22	8098	Santana	99756000
22	8099	Santana	98728000
22	8100	Santana da Boa Vista	96590000
22	8101	Santana do Livramento	00000000
22	8102	Santiago	97700000
22	8103	Santo Amaro do Sul	95823000
22	8104	Santo Ângelo	00000000
22	8105	Santo Antônio	97915000
22	8106	Santo Antônio	98718000
22	8107	Santo Antônio	98594000
22	8108	Santo Antônio da Patrulha	95500000
22	8109	Santo Antônio Das Missões	97870000
22	8110	Santo Antônio de Castro	95188000
22	8111	Santo Antônio do Bom Retiro	98220000
22	8112	Santo Antônio do Palma	99265000
22	8113	Santo Antônio do Planalto	99525000
22	8114	Santo Augusto	98590000
22	8115	Santo Cristo	98960000
22	8116	Santo Expedito do Sul	99895000
22	8117	Santo Inácio	95298000
22	8118	São Bento	99518000
22	8119	São Bom Jesus	98394000
22	8120	São Borja	97670000
22	8121	São Carlos	97598000
22	8122	São Domingos do Sul	99270000
22	8123	São Francisco	97913000
22	8124	São Francisco de Assis	97610000
22	8125	São Francisco de Paula	95400000
22	8126	São Gabriel	97300000
22	8127	São Jerônimo	96700000
22	8128	São João	98555000
22	8129	São João Batista	98853000
22	8130	São João Bosco	99975000
22	8131	São João da Urtiga	99855000
22	8132	São João do Polesine	97230000
22	8133	São Jorge	95365000
22	8134	São José	98477000
22	8135	São José	97875000
22	8136	São José da Glória	99355000
22	8137	São José Das Missões	98325000
22	8138	São José de Castro	95722000
22	8139	São José do Centro	99480000
22	8140	São José do Herval	99380000
22	8141	São José do Hortêncio	95755000
22	8142	São José do Inhacorá	98958000
22	8143	São José do Norte	96225000
22	8144	São José do Ouro	99870000
22	8145	São José Dos Ausentes	95280000
22	8146	São Leopoldo	00000000
22	8147	São Lourenço Das Missões	97840000
22	8148	São Lourenço do Sul	96170000
22	8149	São Luís Rei	99865000
22	8150	São Luiz	98472000
22	8151	São Luiz Gonzaga	97800000
22	8152	São Manuel	95220000
22	8153	São Marcos	95190000
22	8154	São Marcos	97535000
22	8155	São Martinho	98690000
22	8156	São Martinho da Serra	97190000
22	8157	São Miguel	99540000
22	8158	São Miguel Das Missões	98865000
22	8159	São Nicolau	97880000
22	8160	São Paulo	95244000
22	8161	São Paulo Das Missões	97980000
22	8162	São Pedro	95714000
22	8163	São Pedro Das Missões	98323000
22	8164	São Pedro da Serra	95758000
22	8165	São Pedro do Butiá	97920000
22	8166	São Pedro do Iraxim	99875000
22	8167	São Pedro do Sul	97400000
22	8168	São Roque	99125000
22	8169	São Sebastião	95385000
22	8170	São Sebastião	95307000
22	8171	São Sebastião do Caí	95760000
22	8172	São Sepé	97340000
22	8173	São Simão	96285000
22	8174	São Valentim	99640000
22	8175	São Valentim	98917500
22	8176	São Valentim do Sul	99240000
22	8177	São Valério do Sul	98595000
22	8178	São Vendelino	95795000
22	8179	São Vicente do Sul	97420000
22	8180	Sapiranga	93800000
22	8181	Sapucaia do Sul	00000000
22	8182	Sarandi	99560000
22	8183	Scharlau	00000000
22	8184	Seberi	98380000
22	8185	Vila Seca	95140000
22	8186	Sede Aurora	98232000
22	8187	Sede Nova	98675000
22	8188	Segredo	96910000
22	8189	Segredo	95242000
22	8190	Seival	96441000
22	8191	Selbach	99450000
22	8192	Senador Salgado Filho	98895000
22	8193	Sentinela do Sul	96765000
22	8194	Serafim Schmidt	96894000
22	8195	Serafina Corrêa	99250000
22	8196	Sério	95918000
22	8197	Serra Dos Gregórios	95388000
22	8198	Serrinha	97810000
22	8199	Sertão	99170000
22	8200	Sertão Santana	92850000
22	8201	Sertãozinho	98485000
22	8202	Sete de Setembro	97960000
22	8203	Sete de Setembro	99758000
22	8204	Sete de Setembro	98903000
22	8205	Sete Lagoas	99768000
22	8206	Severiano de Almeida	99810000
22	8207	Silva Jardim	99253000
22	8208	Silveira	95285000
22	8209	Silveira Martins	97195000
22	8210	Sinimbu	96890000
22	8211	Sírio	98962000
22	8212	Sítio Gabriel	98543000
22	8213	Sobradinho	96900000
22	8214	Soledade	99300000
22	8215	Souza Ramos	99908000
22	8216	Suspiro	97320000
22	8217	Tabaí	95863000
22	8218	Tabajara	99445000
22	8219	Taim	96221000
22	8220	Tainhas	95405000
22	8221	Tamanduá	96915000
22	8222	Tanque	99876000
22	8223	Tapejara	99950000
22	8224	Tapera	99490000
22	8225	Tapera	96297000
22	8226	Tapes	96760000
22	8227	Taquara	95600000
22	8228	Taquari	95860000
22	8229	Taquarichim	97765000
22	8230	Taquaruçu do Sul	98410000
22	8231	Tavares	96290000
22	8232	Tenente Portela	98500000
22	8233	Terra de Areia	95535000
22	8234	Tesouras	99535000
22	8235	Teutônia	95890000
22	8236	Tiaraju	97310000
22	8237	Timbaúva	97860000
22	8238	Tiradentes do Sul	98680000
22	8239	Toropi	97418000
22	8240	Toroquá	97630000
22	8241	Torquato Severo	96455000
22	8242	Torres	95560000
22	8243	Torrinhas	96485000
22	8244	Touro Passo	97595000
22	8245	Tramandaí	95590000
22	8246	Travesseiro	95948000
22	8247	Trentin	98355000
22	8248	Três Arroios	99725000
22	8249	Três Barras	99778000
22	8250	Três Cachoeiras	95580000
22	8251	Três Coroas	95660000
22	8252	Três de Maio	98910000
22	8253	Três Forquilhas	95575000
22	8254	Três Palmeiras	99675000
22	8255	Três Passos	98600000
22	8256	Três Vendas	96511000
22	8257	Trindade do Sul	99615000
22	8258	Triunfo	95840000
22	8259	Tronqueiras	98545000
22	8260	Tucunduva	98930000
22	8261	Tuiuti	95710000
22	8262	Tunas	99330000
22	8263	Túnel Verde	95598000
22	8264	Tupanci do Sul	99878000
22	8265	Tupanciretã	98170000
22	8266	Tupancy Ou Vila Block	97350000
22	8267	Tupandi	95775000
22	8268	Tupantuba	97743000
22	8269	Tuparendi	98940000
22	8270	Tupi Silveira	96465000
22	8271	Tupinambá	95304000
22	8272	Turuçu	96148000
22	8273	Turvinho	98588000
22	8274	Ubiretama	98898000
22	8275	Umbu	97460000
22	8276	União da Serra	99215000
22	8277	Unistalda	97755000
22	8278	Uruguaiana	00000000
22	8279	Vacacai	97305000
22	8280	Vacaria	95200000
22	8281	Valdástico	95964000
22	8282	Vale do Rio Cai	95170000
22	8283	Vale do Sol	96878000
22	8284	Vale Real	95778000
22	8285	Vale Veneto	97235000
22	8286	Vale Verde	95833000
22	8287	Vanini	99290000
22	8288	Venâncio Aires	95800000
22	8289	Vera Cruz	96880000
22	8290	Veranópolis	95330000
22	8291	Vertentes	97520000
22	8292	Vespasiano Correa	95972000
22	8293	Viadutos	99820000
22	8294	Viamão	00000000
22	8295	Vicente Dutra	98450000
22	8296	Victor Graeff	99350000
22	8297	Vila Bender	98660000
22	8298	Vila Cruz	97260000
22	8299	Vila Flores	95334000
22	8300	Vila Langaro	99955000
22	8301	Vila Laranjeira	98968000
22	8302	Vila Maria	99155000
22	8303	Vila Nova do Sul	97385000
22	8304	Vila Rica	99545000
22	8305	Vila Seca	98847000
22	8306	Vila Turvo	98573000
22	8307	Vista Alegre	98415000
22	8308	Vista Alegre	99465000
22	8309	Vista Alegre do Prata	95325000
22	8310	Vista Gaúcha	98535000
22	8311	Vitória	99945000
22	8312	Vitória Das Missões	98850000
22	8313	Volta Alegre	99410000
22	8314	Volta Fechada	99785000
22	8315	Volta Grande	98495000
22	8316	Xadrez	99522000
22	8317	Xangri-lá	95588000
22	8318	Novo Xingu	99687000
22	10101	Westfália	95893000
22	10102	Santa Margarida do Sul	97335000
22	10103	Tio Hugo	99345000
22	10652	Passo do Verde	97150000
22	10839	Mato Perso	95274000
23	7310	Abunã	78929000
23	7311	Alto Alegre Dos Parecis	78994800
23	7312	Alta Floresta do Oeste	78994000
23	7313	Alto Paraíso	78956000
23	7314	Alvorada D Oeste	78969000
23	7315	Ariquemes	00000000
23	7316	Buritis	78967800
23	7317	Cabixi	78999000
23	7318	Cacaulândia	78944000
23	7319	Cacoal	00000000
23	7320	Calama	78925000
23	7321	Campo Novo de Rondônia	78967000
23	7322	Candeias do Jamari	78938000
23	7323	Castanheiras	78992000
23	7324	Cerejeiras	78997000
23	7325	Chupinguaia	78995800
23	7326	Colorado do Oeste	78996000
23	7327	Corumbiara	78966000
23	7328	Costa Marques	78971000
23	7329	Cujubim	78945800
23	7330	Espigão D Oeste	78983000
23	7331	Governador Jorge Teixeira	78946000
23	7332	Guajará-mirim	78957000
23	7333	Jaci Paraná	78927000
23	7334	Itapuã do Oeste	78937000
23	7335	Jaru	78940000
23	7336	Ji-paraná	00000000
23	7337	Machadinho D Oeste	78948000
23	7338	Marco Rondon	78985000
23	7339	Ministro Andreazza	78981000
23	7340	Mirante da Serra	78949000
23	7341	Monte Negro	78965000
23	7342	Nova Brasilândia D Oeste	78974000
23	7343	Nova Mamoré	78939000
23	7344	Nova União	78953000
23	7345	Nova Vida	78935000
23	7346	Novo Horizonte do Oeste	78991000
23	7347	Ouro Preto do Oeste	78950000
23	7348	Parecis	78989000
23	7349	Pedras Negras	78972500
23	7350	Pimenta Bueno	78984000
23	7351	Pimenteiras do Oeste	78998000
23	7352	Porto Velho	00000000
23	7353	Presidente Médici	78968000
23	7354	Primavera de Rondônia	78988000
23	7355	Príncipe da Beira	78972000
23	7356	Rio Crespo	78945000
23	7357	Riozinho	78980000
23	7358	Rolim de Moura	78987000
23	7359	Santa Luzia D Oeste	78993000
23	7360	São Felipe D Oeste	78986000
23	7361	São Francisco do Guaporé	78973000
23	7362	São Miguel do Guaporé	78970000
23	7363	Seringueiras	78990000
23	7364	Tabajara	78936000
23	7365	Teixeirópolis	78954000
23	7366	Theobroma	78947000
23	7367	Urupá	78955000
23	7368	Vale do Anari	78948800
23	7369	Vale do Paraíso	78959000
23	7370	Vila Extrema	78928000
23	7371	Vilhena	78995000
23	7372	Vista Alegre do Abunã	78926000
24	9791	Abreulândia	77693000
24	9792	Aguiarnópolis	77908000
24	9793	Aliança do Tocantins	77455000
24	9794	Almas	77310000
24	9795	Alvorada	77480000
24	9796	Anajanópolis	77712000
24	9797	Ananás	77890000
24	9798	Angico	77905000
24	9799	Aparecida do Rio Negro	77620000
24	9800	Apinajé	77393000
24	9801	Aragaçuí	77683000
24	9802	Aragominas	77845000
24	9803	Araguacema	77690000
24	9804	Araguaçu	77475000
24	9805	Araguaína	00000000
24	9806	Araguanã	77855000
24	9807	Araguatins	77950000
24	9808	Arapoema	77780000
24	9809	Arraias	77330000
24	9810	Augustinópolis	77960000
24	9811	Aurora do Tocantins	77325000
24	9812	Axixá do Tocantins	77930000
24	9813	Babaçulândia	77870000
24	9814	Bandeirantes do Tocantins	77783000
24	9815	Barra do Grota	77835600
24	9816	Barra do Ouro	77765000
24	9817	Barrolândia	77665000
24	9818	Bernardo Sayão	77755000
24	9819	Bom Jesus do Tocantins	77714000
24	9820	Brasilândia	77837400
24	9821	Brasilândia do Tocantins	77735000
24	9822	Brejinho de Nazaré	77560000
24	9823	Buriti do Tocantins	77995000
24	9824	Cachoeirinha	77915000
24	9825	Campos Lindos	77777000
24	9826	Cana Brava	77333000
24	9827	Cariri do Tocantins	77453000
24	9828	Carmolândia	77840000
24	9829	Carrasco Bonito	77985000
24	9830	Cartucho	77772000
24	9831	Caseara	77680000
24	9832	Centenário	77723000
24	9833	Chapada de Areia	77575000
24	9834	Chapada da Natividade	77378000
24	9835	Cocalândia	77836000
24	9836	Cocalinho	77839000
24	9837	Colinas do Tocantins	77760000
24	9838	Colméia	77725000
24	9839	Combinado	77350000
24	9840	Conceição do Tocantins	77305000
24	9841	Correinha	77836200
24	9842	Couto de Magalhães	77750000
24	9843	Craolândia	77774000
24	9844	Cristalândia	77490000
24	9845	Crixás	77449000
24	9846	Crixás do Tocantins	77463000
24	9847	Darcinópolis	77910000
24	9848	Dianópolis	77300000
24	9849	Divinópolis do Tocantins	77670000
24	9850	Dois Irmãos do Tocantins	77685000
24	9851	Duerê	77485000
24	9852	Escondido	77836600
24	9853	Esperantina	77993000
24	9854	Fátima	77555000
24	9855	Figueirópolis	77465000
24	9856	Filadélfia	77795000
24	9857	Formoso do Araguaia	77470000
24	9858	Fortaleza do Tabocão	77708000
24	9859	Goianorte	77695000
24	9860	Goiatins	77770000
24	9861	Guaraí	77700000
24	9862	Gurupi	00000000
24	9863	Ilha Barreira Branca	77837000
24	9864	Ipueiras	77553000
24	9865	Itacajá	77720000
24	9866	Itaguatins	77920000
24	9867	Itapiratins	77718000
24	9868	Itaporã do Tocantins	77740000
24	9869	Jaú do Tocantins	77450000
24	9870	Juarina	77753000
24	9871	Jussara	77837100
24	9872	Lagoa da Confusão	77493000
24	9873	Lagoa do Tocantins	77613000
24	9874	Lajeado	77645000
24	9875	Lavandeira	77328000
24	9876	Lizarda	77630000
24	9877	Luzinópolis	77903000
24	9878	Marianópolis do Tocantins	77675000
24	9879	Mateiros	77593000
24	9880	Maurilândia do Tocantins	77918000
24	9881	Miracema do Tocantins	77650000
24	9882	Mirandópolis	77702000
24	9883	Miranorte	77660000
24	9884	Monte do Carmo	77585000
24	9885	Monte Lindo	77776000
24	9886	Monte Santo do Tocantins	77673000
24	9887	Palmeiras do Tocantins	77913000
24	9888	Muricilândia	77850000
24	9889	Natal	77953000
24	9890	Natividade	77370000
24	9891	Nazaré	77895000
24	9892	Nova Olinda	77790000
24	9893	Nova Rosalândia	77495000
24	9894	Novo Acordo	77610000
24	9895	Novo Alegre	77353000
24	9896	Novo Horizonte	77839200
24	9897	Novo Jardim	77318000
24	9898	Oliveira de Fátima	77558000
24	9899	Palmas	00000000
24	9900	Palmeirante	77798000
24	9901	Palmeirópolis	77365000
24	9902	Paraíso do Tocantins	77600000
24	9903	Paranã	77360000
24	9904	Pau D Arco	77785000
24	9905	Pé da Serra	77839400
24	9906	Pedro Afonso	77710000
24	9907	Pedro Ludovico	77835400
24	9908	Peixe	77460000
24	9909	Peixe	77835200
24	9910	Pequizeiro	77730000
24	9911	Pilões	77836400
24	9912	Pindorama do Tocantins	77380000
24	9913	Piraquê	77888000
24	9914	Pium	77570000
24	9915	Ponte Alta do Bom Jesus	77315000
24	9916	Ponte Alta do Tocantins	77590000
24	9917	Pontes	77838200
24	9918	Porãozinho	77837200
24	9919	Porto Alegre do Tocantins	77395000
24	9920	Porto Lemos	77837600
24	9921	Porto Nacional	77500000
24	9922	Praia Norte	77970000
24	9923	Presidente Kennedy	77745000
24	9924	Príncipe	77373000
24	9925	Pugmil	77603000
24	9926	Recursolândia	77733000
24	9927	Riachinho	77893000
24	9928	Rio da Conceição	77303000
24	9929	Rio Dos Bois	77655000
24	9930	Rio Sono	77635000
24	9931	Sampaio	77980000
24	9932	Sandolândia	77478000
24	9933	Santa Fé do Araguaia	77848000
24	9934	Santa Maria do Tocantins	77716000
24	9935	Santa Rita do Tocantins	77565000
24	9936	Santa Rosa do Tocantins	77375000
24	9937	Santa Tereza do Tocantins	77615000
24	9938	Santa Terezinha do Tocantins	77885000
24	9939	São Bento do Tocantins	77958000
24	9940	São Félix do Tocantins	77605000
24	9941	São Miguel do Tocantins	77925000
24	9942	São Salvador do Tocantins	77368000
24	9943	São Sebastião do Tocantins	77990000
24	9944	São Valério da Natividade	77390000
24	9945	Silvanópolis	77580000
24	9946	Sítio Novo do Tocantins	77940000
24	9947	Sucupira	77458000
24	9948	Taguatinga	77320000
24	9949	Taipas do Tocantins	77308000
24	9950	Talismã	77483000
24	9951	Tamboril	77898000
24	9952	Taquaralto	77270000
24	9953	Taquarussu do Tocantins	77260000
24	9954	Tocantínia	77640000
24	9955	Tocantinópolis	77900000
24	9956	Tupirama	77704000
24	9957	Tupiratã	77748000
24	9958	Tupiratins	77743000
24	9959	Vênus	77838600
24	9960	Wanderlândia	77860000
24	9961	Xambioá	77880000
25	8319	Abdon Batista	89636000
25	8320	Abelardo Luz	89830000
25	8321	Agrolândia	88420000
25	8322	Agronômica	89188000
25	8323	Água Doce	89654000
25	8324	Águas Brancas	88655000
25	8325	Águas Claras	89320000
25	8326	Águas de Chapecó	89883000
25	8327	Águas Frias	89843000
25	8328	Águas Mornas	88150000
25	8329	Aguti	88280000
25	8330	Aiurê	88892000
25	8331	Alfredo Wagner	88450000
25	8332	Alto Alegre	89666000
25	8333	Alto Bela Vista	89730000
25	8334	Alto da Serra	89816300
25	8335	Anchieta	89970000
25	8336	Angelina	88460000
25	8337	Anita Garibaldi	88590000
25	8338	Anitápolis	88475000
25	8339	Anta Gorda	89564000
25	8340	Antônio Carlos	88180000
25	8341	Apiúna	89135000
25	8342	Arabutã	89740000
25	8343	Araquari	89245000
25	8344	Araranguá	88900000
25	8345	Armazém	88740000
25	8346	Arnópolis	88452000
25	8347	Arroio Trinta	89590000
25	8348	Arvoredo	89778000
25	8349	Ascurra	89138000
25	8350	Atalanta	88410000
25	8351	Aterrado Torto	89173000
25	8352	Aurora	89186000
25	8353	Azambuja	88725000
25	8354	Baia Alta	89685000
25	8355	Balneário Arroio do Silva	88914000
25	8356	Balneário Barra do Sul	89247000
25	8357	Balneário Camboriú	00000000
25	8358	Balneário Gaivota	88955000
25	8359	Balneário Morro Dos Conventos	88911000
25	8360	Bandeirante	89905000
25	8361	Barra Bonita	89909000
25	8362	Barra Clara	88465000
25	8363	Barra da Lagoa	00000000
25	8364	Barra da Prata	89149000
25	8365	Barra Fria	89615000
25	8366	Barra Grande	89696000
25	8367	Barra Velha	88390000
25	8368	Barreiros	00000000
25	8369	Barro Branco	88882000
25	8370	Bateias de Baixo	89294600
25	8371	Bela Vista	89628000
25	8372	Bela Vista do Sul	89310000
25	8373	Bela Vista do Toldo	89478000
25	8374	Belmonte	89925000
25	8375	Benedito Novo	89124000
25	8376	Biguaçu	88160000
25	8377	Blumenau	00000000
25	8378	Bocaína do Sul	88538000
25	8379	Boiteuxburgo	88265000
25	8380	Bom Jardim da Serra	88640000
25	8381	Bom Jesus	89824000
25	8382	Bom Jesus do Oeste	89873000
25	8383	Bom Retiro	88680000
25	8384	Bom Sucesso	89566000
25	8385	Bombinhas	88215000
25	8386	Botuverá	88370000
25	8387	Braço do Norte	88750000
25	8388	Braço do Trombudo	89178000
25	8389	Brunópolis	89634000
25	8390	Brusque	00000000
25	8391	Caçador	89500000
25	8392	Cachoeira de Fátima	88993000
25	8393	Cachoeira do Bom Jesus	00000000
25	8394	Caibi	89888000
25	8395	Calmon	89430000
25	8396	Camboriú	88340000
25	8397	Cambuinzal	89822000
25	8398	Campeche	00000000
25	8399	Campinas	00000000
25	8400	Campo Alegre	89294000
25	8401	Campo Belo do Sul	88580000
25	8402	Campo Erê	89980000
25	8403	Campos Novos	89620000
25	8404	Canasvieiras	00000000
25	8405	Canelinha	88230000
25	8406	Canoas	88688000
25	8407	Canoinhas	89460000
25	8408	Capão Alto	88548000
25	8409	Capinzal	89665000
25	8410	Capivari de Baixo	88745000
25	8411	Caraíba	89772000
25	8412	Catanduvas	89670000
25	8413	Catuíra	88453000
25	8414	Caxambu do Sul	89880000
25	8415	Cedro Alto	89122000
25	8416	Celso Ramos	88598000
25	8417	Cerro Negro	88585000
25	8418	Chapadão do Lageado	88407000
25	8419	Chapecó	00000000
25	8420	Claraíba	88275000
25	8421	Cocal do Sul	88845000
25	8422	Colônia Santa Tereza	00000000
25	8424	Concórdia	89700000
25	8425	Cordilheira Alta	89819000
25	8426	Coronel Freitas	89840000
25	8427	Coronel Martins	89837000
25	8428	Correia Pinto	88535000
25	8429	Corupá	89278000
25	8430	Criciúma	00000000
25	8431	Cunha Porã	89890000
25	8432	Cunhataí	89886000
25	8433	Curitibanos	89520000
25	8434	Dal Pai	89626000
25	8435	Dalbérgia	89143000
25	8436	Descanso	89910000
25	8437	Dionísio Cerqueira	89950000
25	8438	Dona Emma	89155000
25	8439	Doutor Pedrinho	89126000
25	8440	Engenho Velho	89720000
25	8441	Enseada de Brito	88139000
25	8442	Entre Rios	89862000
25	8443	Ermo	88935000
25	8444	Erval Velho	89613000
25	8445	Espinilho	89622000
25	8446	Estação Cocal	88835000
25	8447	Faxinal Dos Guedes	89694000
25	8448	Fazenda Zandavalli	89817500
25	8449	Felipe Schmidt	89473000
25	8450	Figueira	89816400
25	8451	Flor do Sertão	89878000
25	8452	Florianópolis	00000000
25	8453	Formosa do Sul	89859000
25	8454	Forquilhinha	88850000
25	8455	Fragosos	89294800
25	8456	Fraiburgo	89580000
25	8457	Frederico Wastner	89994000
25	8458	Frei Rogério	89530000
25	8459	Galvão	89838000
25	8460	Garcia	88463000
25	8461	Garopaba	88495000
25	8462	Garuva	89248000
25	8463	Gaspar	89110000
25	8464	Goio-en	89816200
25	8465	Governador Celso Ramos	88190000
25	8466	Grão Pará	88890000
25	8467	Grápia	89907000
25	8468	Gravatal	88735000
25	8469	Guabiruba	88360000
25	8470	Guaporanga	88165000
25	8471	Guaraciaba	89920000
25	8472	Guaramirim	89270000
25	8473	Guarujá do Sul	89940000
25	8474	Guatá	88884000
25	8475	Guatambú	89817000
25	8476	Hercílio Luz	88913000
25	8477	Herciliópolis	89657000
25	8478	Herval D Oeste	89610000
25	8479	Ibiam	89652000
25	8480	Ibicaré	89640000
25	8481	Ibicuí	89631000
25	8482	Ibirama	89140000
25	8483	Içara	88820000
25	8484	Ilhota	88320000
25	8485	Imaruí	88770000
25	8486	Imbituba	88780000
25	8487	Imbuia	88440000
25	8488	Indaial	89130000
25	8489	Índios	88533000
25	8490	Ingleses do Rio Vermelho	00000000
25	8491	Invernada	88895000
25	8492	Iomerê	89558000
25	8493	Ipira	89669000
25	8494	Ipoméia	89555000
25	8495	Iporã do Oeste	89899000
25	8496	Ipuaçu	89832000
25	8497	Ipumirim	89790000
25	8498	Iraceminha	89891000
25	8499	Irakitan	89646000
25	8500	Irani	89680000
25	8501	Iraputã	89344000
25	8502	Irati	89856000
25	8503	Irineópolis	89440000
25	8504	Itá	89760000
25	8505	Itaió	89348000
25	8506	Itaiópolis	89340000
25	8507	Itajaí	00000000
25	8508	Itajubá	89913000
25	8509	Itapema	88220000
25	8510	Itapiranga	89896000
25	8511	Itapoá	89249000
25	8512	Itapocu	89246000
25	8513	Itoupava	00000000
25	8514	Ituporanga	88400000
25	8515	Jaborá	89677000
25	8516	Jacinto Machado	88950000
25	8517	Jaguaruna	88715000
25	8518	Jaraguá do Sul	00000000
25	8519	Jardinópolis	89848000
25	8520	Joaçaba	89600000
25	8521	Joinville	00000000
25	8522	José Boiteux	89145000
25	8523	Jupiá	89839000
25	8524	Lacerdópolis	89660000
25	8525	Lages	00000000
25	8526	Lagoa	00000000
25	8527	Lagoa da Estiva	88595000
25	8528	Laguna	88790000
25	8529	Lajeado Grande	89828000
25	8530	Laurentino	89170000
25	8531	Lauro Müller	88880000
25	8532	Leão	89632000
25	8533	Lebon Régis	89515000
25	8534	Leoberto Leal	88445000
25	8535	Lindóia do Sul	89735000
25	8536	Linha Das Palmeiras	89785000
25	8537	Lontras	89182000
25	8538	Lourdes	89568000
25	8539	Luiz Alves	89115000
25	8540	Luzerna	89609000
25	8541	Machados	88378000
25	8542	Macieira	89518000
25	8543	Mafra	89300000
25	8544	Major Gercino	88260000
25	8545	Major Vieira	89480000
25	8546	Maracajá	88915000
25	8547	Marari	89648000
25	8548	Maratá	89836000
25	8549	Maravilha	89874000
25	8550	Marcílio Dias	89465000
25	8551	Marechal Bormann	89816100
25	8552	Marema	89860000
25	8553	Mariflor	89933000
25	8554	Marombas	89635000
25	8555	Marombas Bossardi	89528000
25	8556	Massaranduba	89108000
25	8557	Matos Costa	89420000
25	8558	Meleiro	88920000
25	8559	Mirador	89153000
25	8560	Mirim	88787000
25	8561	Mirim Doce	89194000
25	8562	Modelo	89872000
25	8563	Mondaí	89893000
25	8564	Monte Alegre	88348000
25	8565	Monte Carlo	89618000
25	8566	Monte Castelo	89380000
25	8567	Morro Chato	88934000
25	8568	Morro da Fumaça	88830000
25	8570	Morro Grande	88925000
25	8571	Navegantes	88375000
25	8572	Nossa Senhora de Caravaggio	88868000
25	8573	Nova Cultura	89375000
25	8574	Nova Erechim	89865000
25	8575	Nova Guarita	88964000
25	8576	Nova Itaberaba	89818000
25	8577	Nova Petrópolis	89607000
25	8578	Nova Teutônia	89775000
25	8579	Nova Trento	88270000
25	8580	Nova Veneza	88865000
25	8581	Novo Horizonte	89998000
25	8582	Orleans	88870000
25	8583	Otacílio Costa	88540000
25	8584	Ouro	89663000
25	8585	Ouro Verde	89834000
25	8586	Ouro Verde	89923000
25	8587	Paial	89765000
25	8588	Painel	88543000
25	8589	Palhoça	00000000
25	8590	Palma Sola	89985000
25	8591	Palmeira	88545000
25	8592	Palmitos	89887000
25	8593	Pântano do Sul	00000000
25	8594	Papanduva	89370000
25	8595	Paraíso	89906000
25	8596	Passo de Torres	88980000
25	8597	Passo Manso	89192000
25	8598	Passos Maia	89687000
25	8599	Paula Pereira	89470000
25	8600	Paulo Lopes	88490000
25	8601	Pedras Grandes	88720000
25	8602	Penha	88385000
25	8603	Pericó	88615000
25	8604	Peritiba	89750000
25	8605	Pescaria Brava	88798000
25	8606	Petrolândia	88430000
25	8607	Balneário Piçarras	88380000
25	8608	Pindotiba	88873000
25	8609	Pinhalzinho	89870000
25	8610	Pinheiral	88268000
25	8611	Pinheiro Preto	89570000
25	8612	Pinheiros	89476000
25	8613	Pirabeiraba	00000000
25	8614	Piratuba	89667000
25	8615	Planalto	89728000
25	8616	Planalto Alegre	89882000
25	8617	Poço Preto	89450000
25	8618	Pomerode	89107000
25	8619	Ponte Alta	88550000
25	8620	Ponte Alta do Norte	89535000
25	8621	Ponte Serrada	89683000
25	8622	Porto Belo	88210000
25	8623	Porto União	89400000
25	8624	Pouso Redondo	89172000
25	8625	Praia Grande	88990000
25	8626	Prata	89904000
25	8627	Presidente Castelo Branco	89745000
25	8628	Presidente Getúlio	89150000
25	8629	Presidente Juscelino	89992000
25	8630	Presidente Kennedy	89725000
25	8631	Presidente Nereu	89184000
25	8632	Princesa	89935000
25	8633	Quarta Linha	00000000
25	8634	Quilombo	89850000
25	8635	Quilômetro Doze	00000000
25	8636	Rancho Queimado	88470000
25	8637	Ratones	00000000
25	8638	Residência Fuck	89384000
25	8639	Ribeirão da Ilha	00000000
25	8640	Ribeirão Pequeno	88794000
25	8641	Rio Antinha	88435000
25	8642	Rio Bonito	88405000
25	8643	Rio D Una	88775000
25	8644	Rio da Anta	89346000
25	8645	Rio da Luz	00000000
25	8646	Rio Das Antas	89550000
25	8647	Rio Das Furnas	88872000
25	8648	Rio do Campo	89198000
25	8649	Rio do Oeste	89180000
25	8650	Rio do Sul	89160000
25	8651	Rio Dos Bugres	88403000
25	8652	Rio Dos Cedros	89121000
25	8653	Rio Fortuna	88760000
25	8654	Rio Maina	00000000
25	8655	Rio Negrinho	89295000
25	8656	Rio Preto do Sul	89315000
25	8657	Rio Rufino	88658000
25	8658	Riqueza	89895000
25	8659	Rodeio	89136000
25	8660	Romelândia	89908000
25	8661	Sai	89243000
25	8662	Salete	89196000
25	8663	Saltinho	89981000
25	8664	Salto Veloso	89595000
25	8665	Sanga da Toca	88912000
25	8666	Sangão	88717000
25	8667	Santa Cecília	89540000
25	8668	Santa Cruz do Timbó	89410000
25	8669	Santa Helena	89915000
25	8670	Santa Helena	89608000
25	8671	Santa Izabel	88620000
25	8672	Santa Lúcia	89664000
25	8673	Santa Lúcia	89887500
25	8674	Santa Maria	89125000
25	8675	Santa Rosa de Lima	88763000
25	8676	Santa Rosa do Sul	88965000
25	8677	Santa Terezinha	89199000
25	8678	Santa Terezinha do Progresso	89983000
25	8679	Santa Terezinha do Salto	88531000
25	8680	Santiago do Sul	89854000
25	8681	Santo Amaro da Imperatriz	88140000
25	8682	Santo Antônio de Lisboa	00000000
25	8683	São Bento Baixo	88867000
25	8684	São Bento do Sul	89290000
25	8685	São Bernardino	89982000
25	8686	São Bonifácio	88485000
25	8687	São Carlos	89885000
25	8688	São Cristóvão	89495000
25	8689	São Cristóvão do Sul	89533000
25	8690	São Defende	00000000
25	8691	São Domingos	89835000
25	8692	São Francisco do Sul	89240000
25	8693	São Gabriel	88712000
25	8694	São João Batista	88240000
25	8695	São João do Itaperiú	88395000
25	8696	São João do Oeste	89897000
25	8697	São João do Rio Vermelho	00000000
25	8698	São João do Sul	88970000
25	8699	São Joaquim	88600000
25	8700	São José	00000000
25	8701	São José do Cedro	89930000
25	8702	São José do Cerrito	88570000
25	8703	São José do Laranjal	89892000
25	8704	São Leonardo	88455000
25	8705	São Lourenço do Oeste	89990000
25	8706	São Ludgero	88730000
25	8707	São Martinho	88765000
25	8708	São Miguel do Oeste	89900000
25	8709	São Miguel da Boa Vista	89879000
25	8710	São Miguel da Serra	89415000
25	8711	São Pedro de Alcântara	88125000
25	8712	São Pedro Tobias	89960000
25	8713	São Roque	89996000
25	8714	São Sebastião do Arvoredo	88610000
25	8715	São Sebastião do Sul	89517000
25	8716	Sapiranga	88923000
25	8717	Saudades	89868000
25	8718	Schroeder	89275000
25	8719	Seara	89770000
25	8720	Sede Oldemburg	89887700
25	8721	Serra Alta	89871000
25	8723	Siderópolis	88860000
25	8724	Sombrio	88960000
25	8725	Sorocaba do Sul	88170000
25	8726	Sul Brasil	89855000
25	8727	Taió	89190000
25	8728	Tangará	89642000
25	8729	Taquara Verde	89513000
25	8730	Taquaras	88474000
25	8731	Tigipió	88245000
25	8732	Tigrinhos	89875000
25	8733	Tijucas	88200000
25	8734	Timbé do Sul	88940000
25	8735	Timbó	89120000
25	8736	Timbó Grande	89545000
25	8737	Três Barras	89490000
25	8738	Treviso	88862000
25	8739	Treze de Maio	88710000
25	8740	Treze Tílias	89650000
25	8741	Trombudo Central	89176000
25	8742	Tubarão	00000000
25	8743	Tunápolis	89898000
25	8744	Tupitinga	89630000
25	8745	Turvo	88930000
25	8746	União do Oeste	89845000
25	8747	Urubici	88650000
25	8748	Uruguai	89668000
25	8749	Urupema	88625000
25	8750	Urussanga	88840000
25	8751	Vargeão	89690000
25	8752	Vargem	89638000
25	8753	Vargem Bonita	89675000
25	8754	Vargem do Cedro	88766000
25	8755	Vidal Ramos	88443000
25	8756	Videira	89560000
25	8757	Vila Conceição	88975000
25	8758	Vila de Volta Grande	89298000
25	8759	Vila Milani	89836500
25	8760	Vila Nova	88782000
25	8761	Vítor Meireles	89148000
25	8762	Witmarsum	89157000
25	8763	Xanxerê	89820000
25	8764	Xavantina	89780000
25	8765	Xaxim	89825000
25	8766	Zortéa	89633000
25	10751	Jorge Lacerda	89968000
25	10752	Idamar	89969000
26	8853	Adamantina	17800000
26	8854	Adolfo	15230000
26	8855	Agisse	19610000
26	8856	Água Vermelha	13578000
26	8857	Aguaí	13860000
26	8858	Águas da Prata	13890000
26	8859	Águas de Lindóia	13940000
26	8860	Águas de Santa Bárbara	18770000
26	8861	Águas de São Pedro	13525000
26	8862	Agudos	17120000
26	8863	Agulha	15945000
26	8864	Ajapi	13508000
26	8865	Alambari	18220000
26	8866	Alberto Moreira	14788000
26	8867	Aldeia	00000000
26	8868	Aldeia de Carapicuíba	00000000
26	8869	Alfredo Guedes	18688000
26	8870	Alfredo Marcondes	19180000
26	8871	Altair	15430000
26	8872	Altinópolis	14350000
26	8873	Alto Alegre	16310000
26	8874	Alto Porã	14480000
26	8875	Alumínio	18125000
26	8876	Álvares Florence	15540000
26	8877	Álvares Machado	19160000
26	8878	Álvaro de Carvalho	17410000
26	8879	Alvinlândia	17430000
26	8880	Amadeu Amaral	17530000
26	8881	Amandaba	16820000
26	8882	Ameliópolis	19140000
26	8883	Americana	00000000
26	8884	Américo Brasiliense	14820000
26	8885	Américo de Campos	15550000
26	8886	Amparo	00000000
26	8887	Ana Dias	11770000
26	8888	Analândia	13550000
26	8889	Anápolis	17685000
26	8890	Andes	14715000
26	8891	Andradina	00000000
26	8892	Angatuba	18240000
26	8893	Anhembi	18620000
26	8894	Anhumas	19580000
26	8895	Anhumas	13435000
26	8896	Aparecida	12570000
26	8897	Aparecida D Oeste	15735000
26	8898	Aparecida de Monte Alto	15915000
26	8899	Aparecida de São Manuel	18655000
26	8900	Aparecida do Bonito	15783000
26	8901	Apiaí	18320000
26	8902	Apiaí-mirim	18309000
26	8903	Arabela	17925000
26	8904	Aracaçu	18295000
26	8905	Araçaíba	18323000
26	8906	Araçariguama	18147000
26	8907	Araçatuba	00000000
26	8908	Araçoiaba da Serra	18190000
26	8909	Aramina	14550000
26	8910	Arandu	18710000
26	8911	Arapeí	12870000
26	8912	Araraquara	00000000
26	8913	Araras	00000000
26	8914	Araxás	19310000
26	8915	Arcadas	00000000
26	8916	Arco-íris	17630000
26	8917	Arealva	17160000
26	8918	Areias	12820000
26	8919	Areiópolis	18670000
26	8920	Ariranha	15960000
26	8921	Ariri	11995000
26	8922	Artemis	13432000
26	8923	Artur Nogueira	13160000
26	8924	Arujá	07400000
26	8925	Aspásia	15763000
26	8926	Assis	00000000
26	8927	Assistência	13509000
26	8928	Atibaia	00000000
26	8929	Atlântida	17840000
26	8930	Auriflama	15350000
26	8931	Avaí	16680000
26	8932	Avanhandava	16360000
26	8933	Avaré	00000000
26	8934	Avencas	17532000
26	8935	Bacaetava	18565000
26	8936	Bacuriti	16520000
26	8937	Bady Bassitt	15115000
26	8938	Baguaçu	15405000
26	8939	Bairro Alto	12190000
26	8940	Balbinos	16640000
26	8941	Bálsamo	15140000
26	8942	Bananal	12850000
26	8943	Bandeirantes D Oeste	15367000
26	8944	Barão Ataliba Nogueira	13986000
26	8945	Barão de Antonina	18490000
26	8946	Barão de Geraldo	00000000
26	8947	Barbosa	16350000
26	8948	Bariri	17250000
26	8949	Barra Bonita	17340000
26	8950	Barra do Chapéu	18325000
26	8951	Barra do Turvo	11955000
26	8952	Barra Dourada	15125000
26	8953	Barrânia	13775000
26	8954	Barretos	00000000
26	8955	Barrinha	14860000
26	8956	Barueri	00000000
26	8957	Bastos	17690000
26	8958	Batatais	14300000
26	8959	Batatuba	12975000
26	8960	Batista Botelho	18794000
26	8961	Bauru	00000000
26	8962	Bebedouro	00000000
26	8963	Bela Floresta	15374000
26	8964	Bela Vista São-carlense	00000000
26	8965	Bento de Abreu	16790000
26	8966	Bernardino de Campos	18960000
26	8967	Bertioga	11250000
26	8968	Bilac	16210000
26	8969	Birigüi	00000000
26	8970	Biritiba-mirim	08940000
26	8971	Biritiba-ussu	08890000
26	8972	Boa Esperança do Sul	14930000
26	8973	Boa Vista Dos Andradas	15545000
26	8974	Boa Vista Paulista	00000000
26	8975	Bocaina	17240000
26	8976	Bofete	18590000
26	8977	Boituva	18550000
26	8978	Bom Fim do Bom Jesus	13319000
26	8979	Bom Jesus Dos Perdões	12955000
26	8980	Bom Retiro da Esperança	18243000
26	8981	Bom Sucesso de Itararé	18475000
26	8982	Bonfim Paulista	14110000
26	8983	Borá	19740000
26	8984	Boracéia	17270000
26	8985	Borborema	14955000
26	8986	Borebi	18675000
26	8987	Botafogo	14718000
26	8988	Botelho	15953000
26	8989	Botucatu	00000000
26	8990	Botujuru	00000000
26	8991	Braço	11980000
26	8992	Bragança Paulista	00000000
26	8993	Brás Cubas	00000000
26	8994	Brasitânia	15617000
26	8995	Braúna	16290000
26	8996	Brejo Alegre	16265000
26	8997	Brodowski	14340000
26	8998	Brotas	17380000
26	8999	Bueno de Andrada	14812000
26	9000	Buri	18290000
26	9001	Buritama	15290000
26	9002	Buritizal	14570000
26	9003	Cabrália Paulista	17480000
26	9004	Cabreúva	13315000
26	9005	Caçapava	00000000
26	9006	Cachoeira de Emas	13645000
26	9007	Cachoeira Paulista	12630000
26	9008	Caconde	13770000
26	9009	Cafelândia	16500000
26	9010	Cafesópolis	16530000
26	9011	Caiabu	19530000
26	9012	Caibura	11210000
26	9013	Caieiras	07700000
26	9014	Caiuá	19450000
26	9015	Cajamar	07750000
26	9016	Cajati	11950000
26	9017	Cajobi	15410000
26	9018	Cajuru	14240000
26	9019	Cambaquara	11640000
26	9020	Cambaratiba	14945000
26	9021	Campestrinho	13785000
26	9022	Campina de Fora	18434000
26	9023	Campina do Monte Alegre	18245000
26	9024	Campinal	19490000
26	9025	Campinas	00000000
26	9026	Campo Limpo Paulista	00000000
26	9027	Campos de Cunha	12540000
26	9028	Campos do Jordão	12460000
26	9029	Campos Novos Paulista	19960000
26	9030	Cananéia	11990000
26	9031	Canas	12615000
26	9032	Candia	14185000
26	9033	Cândido Mota	19880000
26	9034	Cândido Rodrigues	15930000
26	9035	Canguera	18145000
26	9036	Canitar	18990000
26	9037	Capão Bonito	00000000
26	9038	Capela do Alto	18195000
26	9039	Capivari	13360000
26	9040	Capivari da Mata	14508000
26	9041	Caporanga	18915000
26	9042	Capuava	00000000
26	9043	Caraguatatuba	00000000
26	9044	Carapicuíba	00000000
26	9045	Cardeal	13355000
26	9046	Cardoso	15570000
26	9047	Cardoso	15843000
26	9048	Caruara	11200000
26	9049	Casa Branca	13700000
26	9050	Cássia Dos Coqueiros	14260000
26	9051	Castilho	16920000
26	9052	Catanduva	00000000
26	9053	Catiguá	15870000
26	9054	Catucaba	12150000
26	9055	Caucaia do Alto	00000000
26	9056	Cedral	15895000
26	9057	Cerqueira César	18760000
26	9058	Cerquilho	18520000
26	9059	Cesário Lange	18285000
26	9060	Cezar de Souza	00000000
26	9061	Charqueada	13515000
26	9062	Chavantes	18970000
26	9063	Cipó-guaçu	06930000
26	9064	Clarinia	18905000
26	9065	Clementina	16250000
26	9066	Cocaes	18227000
26	9067	Colina	14770000
26	9068	Colômbia	14795000
26	9069	Conceição de Monte Alegre	19710000
26	9070	Conchal	13835000
26	9071	Conchas	18570000
26	9072	Cordeirópolis	13490000
26	9073	Coroados	16260000
26	9074	Coronel Goulart	19165000
26	9075	Coronel Macedo	18745000
26	9076	Corredeira	16610000
26	9077	Córrego Rico	14896000
26	9078	Corumbataí	13540000
26	9079	Cosmópolis	13150000
26	9080	Cosmorama	15530000
26	9081	Costa Machado	19265000
26	9082	Cotia	00000000
26	9083	Cravinhos	14140000
26	9084	Cristais Paulista	14460000
26	9085	Cruz Das Posses	14179000
26	9086	Cruzália	19860000
26	9087	Cruzeiro	00000000
26	9088	Cubatão	00000000
26	9089	Cuiabá Paulista	19270000
26	9090	Cunha	12530000
26	9091	Curupá	14915000
26	9092	Dalas	15725000
26	9093	Descalvado	13690000
26	9094	Diadema	00000000
26	9095	Dirce Reis	15715000
26	9096	Dirceu	17537000
26	9097	Divinolândia	13780000
26	9098	Dobrada	15980000
26	9099	Dois Córregos	17300000
26	9100	Dolcinópolis	15740000
26	9101	Domélia	17123000
26	9102	Dourado	13590000
26	9103	Dracena	17900000
26	9104	Duartina	17470000
26	9105	Dumont	14120000
26	9106	Duplo Céu	15472000
26	9107	Echaporã	19830000
26	9108	Eldorado	11960000
26	9109	Eleutério	13988000
26	9110	Elias Fausto	13350000
26	9111	Elisiário	15823000
26	9112	Embaúba	15425000
26	9113	Embu	00000000
26	9114	Embu-guaçu	06900000
26	9115	Emilianópolis	19350000
26	9116	Eneida	19130000
26	9117	Engenheiro Balduíno	15154000
26	9118	Engenheiro Coelho	13165000
26	9119	Engenheiro Maia	18445000
26	9120	Engenheiro Schmidt	15104000
26	9121	Esmeralda	15795000
26	9122	Esperança D Oeste	19535000
26	9123	Espigão	19575000
26	9124	Espírito Santo do Pinhal	13990000
26	9125	Espírito Santo do Turvo	18935000
26	9126	Estiva Gerbi	13857000
26	9127	Estrela D Oeste	15650000
26	9128	Estrela do Norte	19230000
26	9129	Euclides da Cunha Paulista	19275000
26	9130	Eugênio de Melo	00000000
26	9131	Fartura	18870000
26	9132	Fátima	16490000
26	9133	Fátima Paulista	15757000
26	9134	Fazenda Velha	18288000
26	9135	Fernando Prestes	15940000
26	9136	Fernandópolis	15600000
26	9137	Fernão	17455000
26	9138	Ferraz de Vasconcelos	00000000
26	9139	Flora Rica	17870000
26	9140	Floreal	15320000
26	9141	Floresta do Sul	19120000
26	9142	Flórida Paulista	17830000
26	9143	Florínia	19870000
26	9144	Franca	00000000
26	9145	Francisco Morato	00000000
26	9146	Franco da Rocha	00000000
26	9147	Frutal do Campo	19885000
26	9148	Gabriel Monteiro	16220000
26	9149	Gália	17450000
26	9150	Garça	17400000
26	9151	Gardênia	19620000
26	9152	Gastão Vidigal	15330000
26	9153	Gavião Peixoto	14813000
26	9154	General Salgado	15300000
26	9155	Getulina	16450000
26	9156	Glicério	16270000
26	9157	Gramadinho	18218000
26	9158	Guachos	19510000
26	9159	Guaianas	17285000
26	9160	Guaiçara	16430000
26	9161	Guaimbê	16480000
26	9162	Guaíra	14790000
26	9163	Guamium	13431000
26	9164	Guapiaçu	15110000
26	9165	Guapiara	18310000
26	9166	Guapiranga	16420000
26	9167	Guará	14580000
26	9168	Guaraçaí	16980000
26	9169	Guaraci	15420000
26	9170	Guaraciaba D Oeste	17935000
26	9171	Guarani D Oeste	15680000
26	9172	Guarantã	16570000
26	9173	Guarapiranga	13585000
26	9174	Guarapuá	17310000
26	9175	Guararapes	16700000
26	9176	Guararema	08900000
26	9177	Guaratinguetá	00000000
26	9178	Guareí	18250000
26	9179	Guariba	14840000
26	9180	Guariroba	15903000
26	9181	Guarizinho	18420000
26	9182	Guarujá	00000000
26	9183	Guarulhos	00000000
26	9184	Guatapará	14115000
26	9185	Guzolândia	15355000
26	9186	Herculândia	17650000
26	9187	Holambra	13825000
26	9188	Holambra Ii	18725000
26	9189	Hortolândia	00000000
26	9190	Iacanga	17180000
26	9191	Iacri	17680000
26	9192	Iaras	18775000
26	9193	Ibaté	14815000
26	9194	Ibiporanga	15175000
26	9195	Ibirá	15860000
26	9196	Ibirarema	19940000
26	9197	Ibitinga	14940000
26	9198	Ibitiruna	13434000
26	9199	Ibitiúva	14760000
26	9200	Ibitu	14789000
26	9201	Ibiúna	18150000
26	9202	Icém	15460000
26	9203	Ida Iolanda	15195000
26	9204	Iepê	19640000
26	9205	Igaçaba	14475000
26	9206	Igaraçu do Tietê	17350000
26	9207	Igaraí	13750000
26	9208	Igarapava	14540000
26	9209	Igaratá	12350000
26	9210	Iguape	11920000
26	9211	Ilha Comprida	11925000
26	9212	Ilha Diana	11230000
26	9213	Ilha Solteira	15385000
26	9214	Ilhabela	11630000
26	9215	Indaiá do Aguapeí	17835000
26	9216	Indaiatuba	00000000
26	9217	Indiana	19560000
26	9218	Indiaporã	15690000
26	9219	Ingás	15448000
26	9220	Inúbia Paulista	17760000
26	9221	Ipaussu	18950000
26	9222	Iperó	18560000
26	9223	Ipeúna	13537000
26	9224	Ipiguá	15108000
26	9225	Iporanga	18330000
26	9226	Ipuã	14610000
26	9227	Iracemápolis	13495000
26	9228	Irapé	18980000
26	9229	Irapuã	14990000
26	9230	Irapuru	17880000
26	9231	Itaberá	18440000
26	9232	Itaboa	18433000
26	9233	Itaí	18730000
26	9234	Itaiuba	15153000
26	9235	Itajobi	15840000
26	9236	Itaju	17260000
26	9237	Itanhaém	11740000
26	9238	Itaóca	18360000
26	9239	Itapecerica da Serra	00000000
26	9240	Itapetininga	00000000
26	9241	Itapeuna	11970000
26	9242	Itapeva	00000000
26	9243	Itapevi	00000000
26	9244	Itapira	00000000
26	9245	Itapirapuã Paulista	18385000
26	9246	Itápolis	14900000
26	9247	Itaporanga	18480000
26	9248	Itapuí	17230000
26	9249	Itapura	15390000
26	9250	Itaquaquecetuba	00000000
26	9251	Itaqueri da Serra	13535000
26	9252	Itararé	18460000
26	9253	Itariri	11760000
26	9254	Itatiba	00000000
26	9255	Itatinga	18690000
26	9256	Itirapina	13530000
26	9257	Itirapuã	14420000
26	9258	Itobi	13715000
26	9259	Itororó do Paranapanema	19208000
26	9260	Itu	00000000
26	9261	Itupeva	13295000
26	9262	Ituverava	14500000
26	9263	Iubatinga	19540000
26	9264	Jaborandi	14775000
26	9265	Jaboticabal	00000000
26	9266	Jacaré	13318000
26	9267	Jacareí	00000000
26	9268	Jaci	15155000
26	9269	Jaciporã	17910000
26	9270	Jacuba	17170000
26	9271	Jacupiranga	11940000
26	9272	Jafa	17405000
26	9273	Jaguariúna	13820000
26	9274	Jales	15700000
26	9275	Jamaica	17905000
26	9276	Jambeiro	12270000
26	9277	Jandira	00000000
26	9278	Jardim Belval	00000000
26	9279	Jardim Presidente Dutra	00000000
26	9280	Jardim Santa Luzia	00000000
26	9281	Jardim Silveira	00000000
26	9282	Jardinópolis	14680000
26	9283	Jarinu	13240000
26	9284	Jatobá	16330000
26	9285	Jaú	00000000
26	9286	Jeriquara	14450000
26	9287	Joanópolis	12980000
26	9288	João Ramalho	19680000
26	9289	Joaquim Egídio	00000000
26	9290	Jordanésia	07760000
26	9291	José Bonifácio	15200000
26	9292	Juliânia	17660000
26	9293	Júlio Mesquita	17550000
26	9294	Jumirim	18535000
26	9295	Jundiaí	00000000
26	9296	Jundiapeba	00000000
26	9297	Junqueira	15152000
26	9298	Junqueirópolis	17890000
26	9299	Juquiá	11800000
26	9300	Juquiratiba	18575000
26	9301	Juquitiba	06950000
26	9302	Juritis	16280000
26	9303	Jurucê	14690000
26	9304	Jurupeba	15475000
26	9305	Jurupema	15905000
26	9306	Lácio	17539000
26	9307	Lagoa Azul	17705000
26	9308	Lagoa Branca	13705000
26	9309	Lagoinha	12130000
26	9310	Laranjal Paulista	18500000
26	9311	Laras	18505000
26	9312	Lauro Penteado	16255000
26	9313	Lavínia	16850000
26	9314	Lavrinhas	12760000
26	9315	Leme	00000000
26	9316	Lençóis Paulista	00000000
26	9317	Limeira	00000000
26	9318	Lindóia	13950000
26	9319	Lins	00000000
26	9320	Lobo	18695000
26	9321	Lorena	00000000
26	9322	Lourdes	15285000
26	9323	Louveira	13290000
26	9324	Lucélia	17780000
26	9325	Lucianópolis	17475000
26	9326	Luís Antônio	14210000
26	9327	Luiziânia	16340000
26	9328	Lupércio	17420000
26	9329	Lusitânia	14898000
26	9330	Lutécia	19750000
26	9331	Macatuba	17290000
26	9332	Macaubal	15270000
26	9333	Macedônia	15620000
26	9334	Macucos	16460000
26	9335	Mágda	15310000
26	9336	Mailasqui	18143000
26	9337	Mairinque	18120000
26	9338	Mairiporã	07600000
26	9339	Major Prado	16150000
26	9340	Manduri	18780000
26	9341	Mangaratu	15442000
26	9342	Marabá Paulista	19430000
26	9343	Maracaí	19840000
26	9344	Marapoama	15845000
26	9345	Marcondésia	14733000
26	9346	Maresias	11620000
26	9347	Mariápolis	17810000
26	9348	Marília	00000000
26	9349	Marinópolis	15730000
26	9350	Maristela	18510000
26	9351	Martim Francisco	00000000
26	9352	Martinho Prado Júnior	13855000
26	9353	Martinópolis	19500000
26	9354	Matão	00000000
26	9355	Mauá	00000000
26	9356	Mendonça	15220000
26	9357	Meridiano	15625000
26	9358	Mesópolis	15748000
26	9359	Miguelópolis	14530000
26	9360	Mineiros do Tietê	17320000
26	9361	Mira Estrela	15580000
26	9362	Miracatu	11850000
26	9363	Miraluz	15128000
26	9364	Mirandópolis	16800000
26	9365	Mirante do Paranapanema	19260000
26	9366	Mirassol	15130000
26	9367	Mirassolândia	15145000
26	9368	Mococa	00000000
26	9369	Mogi Das Cruzes	00000000
26	9370	Mogi Guaçu	00000000
26	9371	Mogi Mirim	00000000
26	9372	Mombuca	13380000
26	9373	Monções	15275000
26	9374	Mongaguá	11730000
26	9375	Montalvão	19110000
26	9376	Monte Alegre do Sul	13910000
26	9377	Monte Alto	15910000
26	9378	Monte Aprazível	15150000
26	9379	Monte Azul Paulista	14730000
26	9380	Monte Cabrão	11220000
26	9381	Monte Castelo	17960000
26	9382	Monte Mor	13190000
26	9383	Monte Verde Paulista	15417000
26	9384	Monteiro Lobato	12250000
26	9385	Moreira César	00000000
26	9386	Morro Agudo	14640000
26	9387	Morro do Alto	18219000
26	9388	Morungaba	13260000
26	9389	Mostardas	13915000
26	9390	Motuca	14835000
26	9391	Mourão	17815000
26	9392	Murutinga do Sul	16950000
26	9393	Nantes	19645000
26	9394	Narandiba	19220000
26	9395	Natividade da Serra	12180000
26	9396	Nazaré Paulista	12960000
26	9397	Neves Paulista	15120000
26	9398	Nhandeara	15190000
26	9399	Nipoã	15240000
26	9400	Nogueira	16690000
26	9401	Nossa Senhora do Remédio	08980000
26	9402	Nova Alexandria	19882000
26	9403	Nova Aliança	15210000
26	9404	Nova América	14904000
26	9405	Nova Aparecida	00000000
26	9406	Nova Campina	18435000
26	9407	Nova Canaã Paulista	15773000
26	9408	Nova Castilho	15313000
26	9409	Nova Europa	14920000
26	9410	Nova Granada	15440000
26	9411	Nova Guataporanga	17950000
26	9412	Nova Independência	16940000
26	9413	Nova Itapirema	15215000
26	9414	Nova Luzitânia	15340000
26	9415	Nova Odessa	13460000
26	9416	Nova Pátria	19330000
26	9417	Nova Veneza	00000000
26	9418	Novais	15885000
26	9419	Novo Cravinhos	17585000
26	9420	Novo Horizonte	14960000
26	9421	Nuporanga	14670000
26	9422	Oásis	17932000
26	9423	Ocauçu	17540000
26	9424	Óleo	18790000
26	9425	Olímpia	15400000
26	9426	Oliveira Barros	11860000
26	9427	Onda Branca	15445000
26	9428	Onda Verde	15450000
26	9429	Oriente	17570000
26	9430	Orindiúva	15480000
26	9431	Orlândia	14620000
26	9432	Osasco	00000000
26	9433	Oscar Bressane	19770000
26	9434	Osvaldo Cruz	17700000
26	9435	Ourinhos	00000000
26	9436	Ouro Fino Paulista	00000000
26	9437	Ouro Verde	17920000
26	9438	Ouroeste	15685000
26	9439	Pacaembu	17860000
26	9440	Padre Nóbrega	17533000
26	9441	Palestina	15470000
26	9442	Palmares Paulista	15828000
26	9443	Palmeira D Oeste	15720000
26	9444	Palmeiras de São Paulo	00000000
26	9445	Palmital	19970000
26	9446	Panorama	17980000
26	9447	Paraguaçu Paulista	19700000
26	9448	Paraibuna	12260000
26	9449	Paraíso	15825000
26	9450	Paraisolândia	13517000
26	9451	Paranabi	11650000
26	9452	Paranapanema	18720000
26	9453	Paranapiacaba	00000000
26	9454	Paranapuã	15745000
26	9455	Parapuã	17730000
26	9456	Pardinho	18640000
26	9457	Pariquera-açu	11930000
26	9458	Parisi	15525000
26	9459	Parnaso	17620000
26	9460	Parque Meia Lua	00000000
26	9461	Paruru	18155000
26	9462	Patrocínio Paulista	14415000
26	9463	Paulicéia	17990000
26	9464	Paulínia	13140000
26	9465	Paulistânia	17150000
26	9466	Paulo de Faria	15490000
26	9467	Paulópolis	17583000
26	9468	Pederneiras	17280000
26	9469	Pedra Bela	12990000
26	9470	Pedra Branca de Itararé	18465000
26	9471	Pedranópolis	15630000
26	9472	Pedregulho	14470000
26	9473	Pedreira	13920000
26	9474	Pedrinhas Paulista	19865000
26	9475	Pedro Barros	11855000
26	9476	Pedro de Toledo	11790000
26	9477	Penápolis	16300000
26	9478	Pereira Barreto	15370000
26	9479	Pereiras	18580000
26	9480	Peruíbe	11750000
26	9481	Piacatu	16230000
26	9482	Picinguaba	11690000
26	9483	Piedade	18170000
26	9484	Pilar do Sul	18185000
26	9485	Pindamonhangaba	00000000
26	9486	Pindorama	15830000
26	9487	Pinhalzinho	12995000
26	9488	Pinheiros	12770000
26	9489	Pioneiros	14590000
26	9490	Piquerobi	19410000
26	9491	Piquete	12620000
26	9492	Piracaia	12970000
26	9493	Piracicaba	00000000
26	9494	Piraju	18800000
26	9495	Pirajuí	16600000
26	9496	Pirambóia	18630000
26	9497	Pirangi	15820000
26	9498	Pirapitingui	00000000
26	9499	Pirapora do Bom Jesus	06550000
26	9500	Pirapozinho	19200000
26	9501	Pirassununga	00000000
26	9502	Piratininga	17490000
26	9503	Pitangueiras	14750000
26	9504	Planalto	15260000
26	9505	Planalto	16915000
26	9506	Planalto do Sul	19295000
26	9507	Platina	19990000
26	9508	Poá	00000000
26	9509	Poloni	15160000
26	9510	Polvilho	07770000
26	9511	Pompéia	17580000
26	9512	Pongaí	16660000
26	9513	Pontal	14180000
26	9514	Pontalinda	15718000
26	9515	Pontes Gestal	15560000
26	9516	Populina	15670000
26	9517	Porangaba	18260000
26	9518	Porto Feliz	18540000
26	9519	Porto Ferreira	13660000
26	9520	Porto Novo	00000000
26	9521	Potim	12525000
26	9522	Potirendaba	15105000
26	9523	Potunduva	17220000
26	9524	Pracinha	17790000
26	9525	Pradínia	16606000
26	9526	Pradópolis	14850000
26	9527	Praia Grande	00000000
26	9528	Pratânia	18660000
26	9529	Presidente Alves	16670000
26	9530	Presidente Bernardes	19300000
26	9531	Presidente Epitácio	19470000
26	9532	Presidente Prudente	00000000
26	9533	Presidente Venceslau	19400000
26	9534	Primavera	19274000
26	9535	Promissão	16370000
26	9536	Prudêncio E Moraes	15307000
26	9537	Quadra	18255000
26	9538	Quatá	19780000
26	9539	Queiroz	17590000
26	9540	Queluz	12800000
26	9541	Quintana	17670000
26	9542	Quiririm	00000000
26	9543	Rafard	13370000
26	9544	Rancharia	19600000
26	9545	Rechan	18217000
26	9546	Redenção da Serra	12170000
26	9547	Regente Feijó	19570000
26	9548	Reginópolis	17190000
26	9549	Registro	11900000
26	9550	Restinga	14430000
26	9551	Riacho Grande	00000000
26	9552	Ribeira	18380000
26	9553	Ribeirão Bonito	13580000
26	9554	Ribeirão Branco	18430000
26	9555	Ribeirão Corrente	14445000
26	9556	Ribeirão do Sul	19930000
26	9557	Ribeirão Dos Índios	19380000
26	9558	Ribeirão Grande	18315000
26	9559	Ribeirão Pires	00000000
26	9560	Ribeirão Preto	00000000
26	9561	Ribeiro do Vale	16710000
26	9562	Ribeiro Dos Santos	15408000
26	9563	Rifaina	14490000
26	9564	Rincão	14830000
26	9565	Rinópolis	17740000
26	9566	Rio Claro	00000000
26	9567	Rio Das Pedras	13390000
26	9568	Rio Grande da Serra	09450000
26	9569	Riolândia	15495000
26	9570	Riversul	18470000
26	9571	Roberto	15835000
26	9572	Rosália	17535000
26	9573	Rosana	19273000
26	9574	Roseira	12580000
26	9575	Rubiácea	16750000
26	9576	Rubião Júnior	18618000
26	9577	Rubinéia	15790000
26	9578	Ruilândia	15135000
26	9579	Sabaúna	00000000
26	9580	Sabino	16440000
26	9581	Sagres	17710000
26	9582	Sales	14980000
26	9583	Sales Oliveira	14660000
26	9584	Salesópolis	08970000
26	9585	Salmourão	17720000
26	9586	Saltinho	13440000
26	9587	Salto	00000000
26	9588	Salto de Pirapora	18160000
26	9589	Salto do Avanhandava	15208000
26	9590	Salto Grande	19920000
26	9591	Sandovalina	19250000
26	9592	Santa Adélia	15950000
26	9593	Santa Albertina	15750000
26	9594	Santa América	16455000
26	9595	Santa Bárbara D Oeste	00000000
26	9596	Santa Branca	12380000
26	9597	Santa Clara D Oeste	15785000
26	9598	Santa Cruz da Conceição	13625000
26	9599	Santa Cruz da Esperança	14250000
26	9600	Santa Cruz da Estrela	13675000
26	9601	Santa Cruz Das Palmeiras	13650000
26	9602	Santa Cruz do Rio Pardo	18900000
26	9603	Santa Cruz Dos Lopes	18468000
26	9604	Santa Ernestina	15970000
26	9605	Santa Eudóxia	13579000
26	9606	Santa Fé do Sul	15775000
26	9607	Santa Gertrudes	13510000
26	9608	Santa Isabel	07500000
26	9609	Santa Isabel do Marinheiro	15635000
26	9610	Santa Lúcia	14825000
26	9611	Santa Margarida Paulista	00000000
26	9612	Santa Maria da Serra	17370000
26	9613	Santa Maria do Gurupá	16380000
26	9614	Santa Mercedes	17940000
26	9615	Santa Rita D Oeste	15780000
26	9616	Santa Rita do Passa Quatro	13670000
26	9617	Santa Rita do Ribeira	11870000
26	9618	Santa Rosa de Viterbo	14270000
26	9619	Santa Salete	15768000
26	9620	Santa Teresinha de Piracicaba	00000000
26	9621	Santana da Ponte Pensa	15765000
26	9622	Santana de Parnaíba	00000000
26	9623	Santelmo	17288000
26	9624	Santo Anastácio	19360000
26	9625	Santo André	00000000
26	9626	Santo Antônio da Alegria	14390000
26	9627	Santo Antônio da Estiva	16603000
26	9628	Santo Antônio de Posse	13830000
26	9629	Santo Antônio do Aracanguá	16130000
26	9630	Santo Antônio do Jardim	13995000
26	9631	Santo Antônio do Paranapanema	19890000
26	9632	Santo Antônio do Pinhal	12450000
26	9633	Santo Antônio Paulista	00000000
26	9634	Santo Expedito	19190000
26	9635	Santópolis do Aguapeí	16240000
26	9636	Santos	00000000
26	9637	São Benedito da Cachoeirinha	14505000
26	9638	São Benedito Das Areias	13755000
26	9639	São Bento do Sapucaí	12490000
26	9640	São Bernardo do Campo	00000000
26	9641	São Berto	18785000
26	9642	São Caetano do Sul	00000000
26	9643	São Carlos	00000000
26	9644	São Francisco	15710000
26	9645	São Francisco da Praia	11610000
26	9646	São Francisco Xavier	12249000
26	9647	São João da Boa Vista	00000000
26	9648	São João Das Duas Pontes	15640000
26	9649	São João de Iracema	15315000
26	9650	São João de Itaguaçu	15855000
26	9651	São João do Marinheiro	15575000
26	9652	São João do Pau D Alho	17970000
26	9653	São João Novo	18140000
26	9654	São Joaquim da Barra	14600000
26	9655	São José da Bela Vista	14440000
26	9656	São José Das Laranjeiras	19845000
26	9657	São José do Barreiro	12830000
26	9658	São José do Rio Pardo	13720000
26	9659	São José do Rio Preto	00000000
26	9660	São José Dos Campos	00000000
26	9661	São Lourenço da Serra	06890000
26	9662	São Lourenço do Turvo	15999000
26	9663	São Luiz do Paraitinga	12140000
26	9664	São Luiz do Guaricanga	16675000
26	9665	São Manuel	18650000
26	9666	São Martinho D Oeste	16320000
26	9667	São Miguel Arcanjo	18230000
26	9668	São Paulo	00000000
26	9669	São Pedro	13520000
26	9670	São Pedro do Turvo	18940000
26	9671	São Roque	00000000
26	9672	São Roque da Fartura	13895000
26	9673	São Sebastião	11600000
26	9674	São Sebastião da Grama	13790000
26	9675	São Sebastião da Serra	17390000
26	9676	São Silvestre de Jacareí	00000000
26	9677	São Simão	14200000
26	9678	São Vicente	00000000
26	9679	Sapezal	19720000
26	9680	Sarapuí	18225000
26	9681	Sarutaiá	18840000
26	9682	Sebastianópolis do Sul	15180000
26	9683	Serra Azul	14230000
26	9684	Serra Negra	13930000
26	9685	Serrana	14150000
26	9686	Sertãozinho	00000000
26	9687	Sete Barras	11910000
26	9688	Severínia	14735000
26	9689	Silvânia	15999500
26	9690	Silveiras	12690000
26	9691	Simões	16510000
26	9692	Simonsen	15515000
26	9693	Socorro	13960000
26	9694	Sodrélia	18910000
26	9695	Solemar	00000000
26	9696	Sorocaba	00000000
26	9697	Sousas	00000000
26	9698	Sud Mennucci	15360000
26	9699	Suinana	15437000
26	9700	Sumaré	00000000
26	9701	Sussui	19975000
26	9702	Suzanápolis	15380000
26	9703	Suzano	00000000
26	9704	Tabajara	16855000
26	9705	Tabapuã	15880000
26	9706	Tabatinga	14910000
26	9707	Taboão da Serra	00000000
26	9708	Taciba	19590000
26	9709	Taguaí	18890000
26	9710	Taiaçu	14725000
26	9711	Taiacupeba	00000000
26	9712	Taiúva	14720000
26	9713	Talhado	15102000
26	9714	Tambaú	13710000
26	9715	Tanabi	15170000
26	9716	Tapinas	14907000
26	9717	Tapiraí	18180000
26	9718	Tapiratiba	13760000
26	9719	Taquaral	14765000
26	9720	Taquaritinga	15900000
26	9721	Taquarituba	18740000
26	9722	Taquarivaí	18425000
26	9723	Tarabai	19210000
26	9724	Tarumã	19820000
26	9725	Tatuí	00000000
26	9726	Taubaté	00000000
26	9727	Tecainda	19505000
26	9728	Tejupá	18830000
26	9729	Teodoro Sampaio	19280000
26	9730	Termas de Ibirá	15868000
26	9731	Terra Nova D Oeste	17945000
26	9732	Terra Roxa	14745000
26	9733	Tibiriçá	17110000
26	9734	Tibiriçá do Paranapanema	18810000
26	9735	Tietê	18530000
26	9736	Timburi	18860000
26	9737	Toledo	17627000
26	9738	Torre de Pedra	18265000
26	9739	Torrinha	17360000
26	9740	Trabiju	14935000
26	9741	Tremembé	12120000
26	9742	Três Alianças	16830000
26	9743	Três Fronteiras	15770000
26	9744	Três Pontes	00000000
26	9745	Três Vendas	17621000
26	9746	Tuiuti	12930000
26	9747	Tujuguaba	13839000
26	9748	Tupã	00000000
26	9749	Tupi	13428000
26	9750	Tupi Paulista	17930000
26	9751	Turiba do Sul	18450000
26	9752	Turiúba	15280000
26	9753	Turmalina	15755000
26	9754	Turvínia	14716000
26	9755	Ubarana	15225000
26	9756	Ubatuba	11680000
26	9757	Ubirajara	17440000
26	9758	Uchoa	15890000
26	9759	União Paulista	15250000
26	9760	Universo	17623000
26	9761	Urânia	15760000
26	9762	Uru	16650000
26	9763	Urupês	15850000
26	9764	Ururai	15955000
26	9765	Utinga	00000000
26	9766	Vale Formoso	14970000
26	9767	Valentim Gentil	15520000
26	9768	Valinhos	00000000
26	9769	Valparaíso	16880000
26	9770	Vanglória	17282000
26	9771	Vargem	12935000
26	9772	Vargem Grande do Sul	13880000
26	9773	Vargem Grande Paulista	06730000
26	9774	Varpa	17625000
26	9775	Várzea Paulista	00000000
26	9776	Venda Branca	13707000
26	9777	Vera Cruz	17560000
26	9778	Vicente de Carvalho	00000000
26	9779	Vicentinópolis	16140000
26	9780	Vila Dirce	00000000
26	9781	Vila Nery	00000000
26	9782	Vila Xavier	00000000
26	9783	Vinhedo	13280000
26	9784	Viradouro	14740000
26	9785	Vista Alegre do Alto	15920000
26	9786	Vitória Brasil	15705000
26	9787	Vitoriana	18619000
26	9788	Votorantim	00000000
26	9789	Votuporanga	00000000
26	9790	Zacarias	15265000
27	8767	Altos Verdes	49555000
27	8768	Amparo de São Francisco	49920000
27	8769	Aquidabã	49790000
27	8770	Aracaju	00000000
27	8771	Arauá	49220000
27	8772	Areia Branca	49580000
27	8773	Areia Branca	49099400
27	8774	Barra Dos Coqueiros	49140000
27	8775	Barracas	49710000
27	8776	Boquim	49360000
27	8777	Brejo Grande	49995000
27	8778	Campo do Brito	49520000
27	8779	Canhoba	49880000
27	8780	Canindé de São Francisco	49820000
27	8781	Capela	49700000
27	8782	Carira	49550000
27	8783	Carmópolis	49740000
27	8784	Cedro de São João	49930000
27	8785	Cristinápolis	49270000
27	8786	Cumbe	49660000
27	8787	Divina Pastora	49650000
27	8788	Estância	49200000
27	8789	Feira Nova	49670000
27	8790	Frei Paulo	49514000
27	8791	Gararu	49830000
27	8792	General Maynard	49750000
27	8793	Graccho Cardoso	49860000
27	8794	Ilha Das Flores	49990000
27	8795	Indiaroba	49250000
27	8796	Itabaiana	49500000
27	8797	Itabaianinha	49290000
27	8798	Itabi	49870000
27	8799	Itaporanga D Ajuda	49120000
27	8800	Japaratuba	49960000
27	8801	Japoatã	49950000
27	8802	Lagarto	49400000
27	8803	Lagoa Funda	49835000
27	8804	Laranjeiras	49170000
27	8805	Macambira	49565000
27	8806	Malhada Dos Bois	49940000
27	8807	Malhador	49570000
27	8808	Maruim	49770000
27	8809	Miranda	49702000
27	8810	Moita Bonita	49560000
27	8811	Monte Alegre de Sergipe	49690000
27	8812	Mosqueiro	49099700
27	8813	Muribeca	49780000
27	8814	Neópolis	49980000
27	8815	Nossa Senhora Aparecida	49540000
27	8816	Nossa Senhora da Glória	49680000
27	8817	Nossa Senhora Das Dores	49600000
27	8818	Nossa Senhora de Lourdes	49890000
27	8819	Nossa Senhora do Socorro	49160000
27	8820	Pacatuba	49970000
27	8821	Palmares	49325000
27	8822	Pedra Mole	49512000
27	8823	Pedras	49704000
27	8824	Pedrinhas	49350000
27	8825	Pinhão	49517000
27	8826	Pirambu	49190000
27	8827	Poço Redondo	49810000
27	8828	Poço Verde	49490000
27	8829	Porto da Folha	49800000
27	8830	Propriá	49900000
27	8831	Riachão do Dantas	49320000
27	8832	Riachuelo	49130000
27	8833	Ribeirópolis	49530000
27	8834	Rosário do Catete	49760000
27	8835	Salgado	49390000
27	8836	Samambaia	49310000
27	8837	Santa Luzia do Itanhy	49230000
27	8838	Santa Rosa de Lima	49640000
27	8839	Santana do São Francisco	49985000
27	8840	Santo Amaro Das Brotas	49180000
27	8841	São Cristóvão	49100000
27	8842	São Domingos	49525000
27	8843	São Francisco	49945000
27	8844	São José	49099000
27	8845	São Mateus da Palestina	49840000
27	8846	São Miguel do Aleixo	49535000
27	8847	Simão Dias	49480000
27	8848	Siriri	49630000
27	8849	Telha	49910000
27	8850	Tobias Barreto	49300000
27	8851	Tomar do Geru	49280000
27	8852	Umbaúba	49260000
\.


--
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estados (cod_regiao, cod_estados, sigla, nome) FROM stdin;
1	1	AC	Acre
2	2	AL	Alagoas
1	3	AP	Amapá
1	4	AM	Amazonas
2	5	BA	Bahia
2	6	CE	Ceará
3	7	DF	Distrito Federal
4	8	ES	Espírito Santo
1	9	RR	Roraima
3	10	GO	Goiás
2	11	MA	Maranhão
3	12	MT	Mato Grosso
3	13	MS	Mato Grosso Do Sul
4	14	MG	Minas Gerais
1	15	PA	Pará
2	16	PB	Paraíba
5	17	PR	Paraná
2	18	PE	Pernambuco
2	19	PI	Piauí
4	20	RJ	Rio De Janeiro
2	21	RN	Rio Grande Do Norte
5	22	RS	Rio Grande Do Sul
1	23	RO	Rondônia
1	24	TO	Tocantins
5	25	SC	Santa Catarina
4	26	SP	São Paulo
2	27	SE	Sergipe
6	28		El Beni
6	29		Chuquisaca
6	30		Cochabamba
6	31		La Paz
6	32		Oruro
6	33		Pando
6	34		Potosí
6	35		Santa Cruz
6	36		Tarija
7	37		Alto Paraguay
7	38		Alto Paraná
7	39		Amambay
7	40		Boquerón
7	41		Caaguazú
7	42		Caazapá
7	43		Canindeyú
7	44		Central
7	45		Concepción
7	56		Cordillera
7	47		Guairá
7	48		Itapúa
7	49		Misiones
7	50		Ñeembucú
7	51		Paraguarí
7	52		Presidente Hayes
7	53		San Pedro
7	54		Distrito Capital
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY migrations (id, migration, batch) FROM stdin;
25	2014_10_12_000000_create_users_table	1
26	2014_10_12_100000_create_password_resets_table	1
27	2017_06_06_112515_create_table_fazenda	1
28	2017_06_07_140512_create_table_clima	1
29	2017_06_23_174712_create_table_log	1
30	2017_06_25_132503_create_table_confinamento	1
31	2017_06_25_132519_create_table_desmame	1
32	2017_06_25_132527_create_table_equipe	1
33	2017_06_25_132556_create_table_estoque_pecuaria_area	1
34	2017_06_25_132619_create_table_financeiro_despesa	1
35	2017_06_25_132629_create_table_financeiro_receita	1
36	2017_06_25_132636_create_table_maquina	1
37	2017_06_25_132643_create_table_morte	1
38	2017_06_25_132700_create_table_mov_entrada_rebanho	1
39	2017_06_25_132713_create_table_mov_saida_rebanho	1
40	2017_06_25_132725_create_table_nascimento	1
41	2017_06_25_132736_create_table_estoque	1
42	2017_06_25_132749_create_table_descricao_volumoso	1
43	2017_06_25_132750_create_table_controle_despesa_volumoso	1
44	2017_06_25_132751_create_table_controle_producao_volumoso	1
45	2017_06_25_132800_create_table_reproducao	1
46	2017_06_26_190443_create_table_estoque_pecuaria_area_area	1
47	2017_06_27_194831_create_table_patrimonio_estoque_area_valor_terra	1
48	2017_11_23_121838_add_column_table_estoque_pecuaria_area	1
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('migrations_id_seq', 48, true);


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pais (cod_pais, nome) FROM stdin;
1	Brasil
2	Bolívia
3	Paraguay
\.


--
-- Data for Name: regiao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY regiao (cod_pais, cod_regiao, nome) FROM stdin;
1	1	Norte
1	2	Nordeste
1	3	Centro-Oeste
1	4	Sudeste
1	5	Sul
2	6	Bolívia
3	7	Paraguay
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, name, email, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: benchmarking_clima benchmarking_clima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_clima
    ADD CONSTRAINT benchmarking_clima_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_confinamento benchmarking_confinamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_confinamento
    ADD CONSTRAINT benchmarking_confinamento_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_controle_despesa_volumoso benchmarking_controle_despesa_volumoso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_despesa_volumoso
    ADD CONSTRAINT benchmarking_controle_despesa_volumoso_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_controle_producao_volumoso benchmarking_controle_producao_volumoso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_producao_volumoso
    ADD CONSTRAINT benchmarking_controle_producao_volumoso_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_descricao_volumoso benchmarking_descricao_volumoso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_descricao_volumoso
    ADD CONSTRAINT benchmarking_descricao_volumoso_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_desmame benchmarking_desmame_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_desmame
    ADD CONSTRAINT benchmarking_desmame_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_equipe benchmarking_equipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_equipe
    ADD CONSTRAINT benchmarking_equipe_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_estoque_pecuario_area_area benchmarking_estoque_pecuario_area_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area_area
    ADD CONSTRAINT benchmarking_estoque_pecuario_area_area_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_estoque_pecuario_area benchmarking_estoque_pecuario_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area
    ADD CONSTRAINT benchmarking_estoque_pecuario_area_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_estoque benchmarking_estoque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque
    ADD CONSTRAINT benchmarking_estoque_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_fazenda benchmarking_fazenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_fazenda
    ADD CONSTRAINT benchmarking_fazenda_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_financeiro_despesa benchmarking_financeiro_despesa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_despesa
    ADD CONSTRAINT benchmarking_financeiro_despesa_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_financeiro_receita benchmarking_financeiro_receita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_receita
    ADD CONSTRAINT benchmarking_financeiro_receita_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_log benchmarking_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_log
    ADD CONSTRAINT benchmarking_log_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_maquina benchmarking_maquina_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_maquina
    ADD CONSTRAINT benchmarking_maquina_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_morte benchmarking_morte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_morte
    ADD CONSTRAINT benchmarking_morte_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_mov_entrada_rebanho benchmarking_mov_entrada_rebanho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_entrada_rebanho
    ADD CONSTRAINT benchmarking_mov_entrada_rebanho_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_mov_saida_rebanho benchmarking_mov_saida_rebanho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_saida_rebanho
    ADD CONSTRAINT benchmarking_mov_saida_rebanho_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_nascimento benchmarking_nascimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_nascimento
    ADD CONSTRAINT benchmarking_nascimento_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra benchmarking_patrimonio_estoque_area_valor_terra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_patrimonio_estoque_area_valor_terra
    ADD CONSTRAINT benchmarking_patrimonio_estoque_area_valor_terra_pkey PRIMARY KEY (id);


--
-- Name: benchmarking_reproducao benchmarking_reproducao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_reproducao
    ADD CONSTRAINT benchmarking_reproducao_pkey PRIMARY KEY (id);


--
-- Name: cidades cidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (cod_cidades);


--
-- Name: estados estados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (cod_estados);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (cod_pais);


--
-- Name: regiao regiao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regiao
    ADD CONSTRAINT regiao_pkey PRIMARY KEY (cod_regiao);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: fk__cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk__cliente_idx ON benchmarking_maquina USING btree (cli_codigo);


--
-- Name: fk__fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk__fazenda_idx ON benchmarking_maquina USING btree (fazenda_id);


--
-- Name: fk__safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk__safra_idx ON benchmarking_maquina USING btree (safra_id);


--
-- Name: fk_clima_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_clima_cliente_idx ON benchmarking_clima USING btree (cli_codigo);


--
-- Name: fk_clima_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_clima_fazenda_idx ON benchmarking_clima USING btree (fazenda_id);


--
-- Name: fk_clima_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_clima_safra_idx ON benchmarking_clima USING btree (safra_id);


--
-- Name: fk_confinamento_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_confinamento_cliente_idx ON benchmarking_confinamento USING btree (cli_codigo);


--
-- Name: fk_confinamento_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_confinamento_fazenda_idx ON benchmarking_confinamento USING btree (fazenda_id);


--
-- Name: fk_confinamento_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_confinamento_safra_idx ON benchmarking_confinamento USING btree (safra_id);


--
-- Name: fk_controle_despesa_volumoso_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_despesa_volumoso_cliente_idx ON benchmarking_controle_despesa_volumoso USING btree (cli_codigo);


--
-- Name: fk_controle_despesa_volumoso_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_despesa_volumoso_fazenda_idx ON benchmarking_controle_despesa_volumoso USING btree (fazenda_id);


--
-- Name: fk_controle_despesa_volumoso_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_despesa_volumoso_safra_idx ON benchmarking_controle_despesa_volumoso USING btree (safra_id);


--
-- Name: fk_controle_producao_volumoso_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_producao_volumoso_cliente_idx ON benchmarking_controle_producao_volumoso USING btree (cli_codigo);


--
-- Name: fk_controle_producao_volumoso_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_producao_volumoso_fazenda_idx ON benchmarking_controle_producao_volumoso USING btree (fazenda_id);


--
-- Name: fk_controle_producao_volumoso_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_controle_producao_volumoso_safra_idx ON benchmarking_controle_producao_volumoso USING btree (safra_id);


--
-- Name: fk_descricao_volumoso_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_descricao_volumoso_cliente_idx ON benchmarking_descricao_volumoso USING btree (cli_codigo);


--
-- Name: fk_descricao_volumoso_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_descricao_volumoso_fazenda_idx ON benchmarking_descricao_volumoso USING btree (fazenda_id);


--
-- Name: fk_descricao_volumoso_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_descricao_volumoso_safra_idx ON benchmarking_descricao_volumoso USING btree (safra_id);


--
-- Name: fk_desmame_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_desmame_cliente_idx ON benchmarking_desmame USING btree (cli_codigo);


--
-- Name: fk_desmame_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_desmame_fazenda_idx ON benchmarking_desmame USING btree (fazenda_id);


--
-- Name: fk_desmame_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_desmame_safra_idx ON benchmarking_desmame USING btree (safra_id);


--
-- Name: fk_equipe_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_equipe_cliente_idx ON benchmarking_equipe USING btree (cli_codigo);


--
-- Name: fk_equipe_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_equipe_fazenda_idx ON benchmarking_equipe USING btree (fazenda_id);


--
-- Name: fk_equipe_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_equipe_safra_idx ON benchmarking_equipe USING btree (safra_id);


--
-- Name: fk_estoque_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_cliente_idx ON benchmarking_estoque USING btree (cli_codigo);


--
-- Name: fk_estoque_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_fazenda_idx ON benchmarking_estoque USING btree (fazenda_id);


--
-- Name: fk_estoque_pecuario_area_area_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_area_cliente_idx ON benchmarking_estoque_pecuario_area_area USING btree (cli_codigo);


--
-- Name: fk_estoque_pecuario_area_area_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_area_fazenda_idx ON benchmarking_estoque_pecuario_area_area USING btree (fazenda_id);


--
-- Name: fk_estoque_pecuario_area_area_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_area_safra_idx ON benchmarking_estoque_pecuario_area_area USING btree (safra_id);


--
-- Name: fk_estoque_pecuario_area_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_cliente_idx ON benchmarking_estoque_pecuario_area USING btree (cli_codigo);


--
-- Name: fk_estoque_pecuario_area_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_fazenda_idx ON benchmarking_estoque_pecuario_area USING btree (fazenda_id);


--
-- Name: fk_estoque_pecuario_area_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_pecuario_area_safra_idx ON benchmarking_estoque_pecuario_area USING btree (safra_id);


--
-- Name: fk_estoque_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_estoque_safra_idx ON benchmarking_estoque USING btree (safra_id);


--
-- Name: fk_fazenda_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_fazenda_cliente_idx ON benchmarking_fazenda USING btree (cli_codigo);


--
-- Name: fk_fazenda_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_fazenda_safra_idx ON benchmarking_fazenda USING btree (safra_id);


--
-- Name: fk_financeiro_despesa_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_despesa_cliente_idx ON benchmarking_financeiro_despesa USING btree (cli_codigo);


--
-- Name: fk_financeiro_despesa_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_despesa_fazenda_idx ON benchmarking_financeiro_despesa USING btree (fazenda_id);


--
-- Name: fk_financeiro_despesa_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_despesa_safra_idx ON benchmarking_financeiro_despesa USING btree (safra_id);


--
-- Name: fk_financeiro_receita_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_receita_cliente_idx ON benchmarking_financeiro_receita USING btree (cli_codigo);


--
-- Name: fk_financeiro_receita_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_receita_fazenda_idx ON benchmarking_financeiro_receita USING btree (fazenda_id);


--
-- Name: fk_financeiro_receita_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_financeiro_receita_safra_idx ON benchmarking_financeiro_receita USING btree (safra_id);


--
-- Name: fk_log_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_log_cliente_idx ON benchmarking_log USING btree (cli_codigo);


--
-- Name: fk_log_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_log_fazenda_idx ON benchmarking_log USING btree (fazenda_id);


--
-- Name: fk_log_pessoa_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_log_pessoa_idx ON benchmarking_log USING btree (id_pessoa);


--
-- Name: fk_log_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_log_safra_idx ON benchmarking_log USING btree (safra_id);


--
-- Name: fk_morte_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_morte_cliente_idx ON benchmarking_morte USING btree (cli_codigo);


--
-- Name: fk_morte_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_morte_fazenda_idx ON benchmarking_morte USING btree (fazenda_id);


--
-- Name: fk_morte_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_morte_safra_idx ON benchmarking_morte USING btree (safra_id);


--
-- Name: fk_mov_entrada_rebanho_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_entrada_rebanho_cliente_idx ON benchmarking_mov_entrada_rebanho USING btree (cli_codigo);


--
-- Name: fk_mov_entrada_rebanho_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_entrada_rebanho_fazenda_idx ON benchmarking_mov_entrada_rebanho USING btree (fazenda_id);


--
-- Name: fk_mov_entrada_rebanho_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_entrada_rebanho_safra_idx ON benchmarking_mov_entrada_rebanho USING btree (safra_id);


--
-- Name: fk_mov_saida_rebanho_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_saida_rebanho_cliente_idx ON benchmarking_mov_saida_rebanho USING btree (cli_codigo);


--
-- Name: fk_mov_saida_rebanho_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_saida_rebanho_fazenda_idx ON benchmarking_mov_saida_rebanho USING btree (fazenda_id);


--
-- Name: fk_mov_saida_rebanho_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_mov_saida_rebanho_safra_idx ON benchmarking_mov_saida_rebanho USING btree (safra_id);


--
-- Name: fk_nascimento_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_nascimento_cliente_idx ON benchmarking_nascimento USING btree (cli_codigo);


--
-- Name: fk_nascimento_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_nascimento_fazenda_idx ON benchmarking_nascimento USING btree (fazenda_id);


--
-- Name: fk_nascimento_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_nascimento_safra_idx ON benchmarking_nascimento USING btree (safra_id);


--
-- Name: fk_patrimonio_estoque_area_valor_terra_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_patrimonio_estoque_area_valor_terra_cliente_idx ON benchmarking_patrimonio_estoque_area_valor_terra USING btree (cli_codigo);


--
-- Name: fk_patrimonio_estoque_area_valor_terra_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_patrimonio_estoque_area_valor_terra_fazenda_idx ON benchmarking_patrimonio_estoque_area_valor_terra USING btree (fazenda_id);


--
-- Name: fk_patrimonio_estoque_area_valor_terra_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_patrimonio_estoque_area_valor_terra_safra_idx ON benchmarking_patrimonio_estoque_area_valor_terra USING btree (safra_id);


--
-- Name: fk_reproducao_cliente_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_reproducao_cliente_idx ON benchmarking_reproducao USING btree (cli_codigo);


--
-- Name: fk_reproducao_fazenda_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_reproducao_fazenda_idx ON benchmarking_reproducao USING btree (fazenda_id);


--
-- Name: fk_reproducao_safra_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_reproducao_safra_idx ON benchmarking_reproducao USING btree (safra_id);


--
-- Name: cidades cidades_cod_estados_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cidades
    ADD CONSTRAINT cidades_cod_estados_fkey FOREIGN KEY (cod_estados) REFERENCES estados(cod_estados);


--
-- Name: estados estados_cod_regiao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estados
    ADD CONSTRAINT estados_cod_regiao_fkey FOREIGN KEY (cod_regiao) REFERENCES regiao(cod_regiao);


--
-- Name: benchmarking_controle_despesa_volumoso fk_descricao_volumoso_controle_despesa_volumoso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_despesa_volumoso
    ADD CONSTRAINT fk_descricao_volumoso_controle_despesa_volumoso FOREIGN KEY (descricao_volumoso) REFERENCES benchmarking_descricao_volumoso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_controle_producao_volumoso fk_descricao_volumoso_controle_producao_volumoso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_producao_volumoso
    ADD CONSTRAINT fk_descricao_volumoso_controle_producao_volumoso FOREIGN KEY (descricao_volumoso) REFERENCES benchmarking_descricao_volumoso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_clima fk_fazenda_clima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_clima
    ADD CONSTRAINT fk_fazenda_clima FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_confinamento fk_fazenda_confinamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_confinamento
    ADD CONSTRAINT fk_fazenda_confinamento FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_controle_despesa_volumoso fk_fazenda_controle_despesa_volumoso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_despesa_volumoso
    ADD CONSTRAINT fk_fazenda_controle_despesa_volumoso FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_controle_producao_volumoso fk_fazenda_controle_producao_volumoso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_controle_producao_volumoso
    ADD CONSTRAINT fk_fazenda_controle_producao_volumoso FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_desmame fk_fazenda_desmame; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_desmame
    ADD CONSTRAINT fk_fazenda_desmame FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_equipe fk_fazenda_equipe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_equipe
    ADD CONSTRAINT fk_fazenda_equipe FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_estoque fk_fazenda_estoque; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque
    ADD CONSTRAINT fk_fazenda_estoque FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_estoque_pecuario_area fk_fazenda_estoque_pecuario_area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area
    ADD CONSTRAINT fk_fazenda_estoque_pecuario_area FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_estoque_pecuario_area_area fk_fazenda_estoque_pecuario_area_area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_estoque_pecuario_area_area
    ADD CONSTRAINT fk_fazenda_estoque_pecuario_area_area FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_financeiro_despesa fk_fazenda_financeiro_despesa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_despesa
    ADD CONSTRAINT fk_fazenda_financeiro_despesa FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_financeiro_receita fk_fazenda_financeiro_receita; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_financeiro_receita
    ADD CONSTRAINT fk_fazenda_financeiro_receita FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_log fk_fazenda_log; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_log
    ADD CONSTRAINT fk_fazenda_log FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_maquina fk_fazenda_maquina; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_maquina
    ADD CONSTRAINT fk_fazenda_maquina FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_morte fk_fazenda_morte; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_morte
    ADD CONSTRAINT fk_fazenda_morte FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_mov_entrada_rebanho fk_fazenda_mov_entrada_rebanho; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_entrada_rebanho
    ADD CONSTRAINT fk_fazenda_mov_entrada_rebanho FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_mov_saida_rebanho fk_fazenda_mov_saida_rebanho; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_mov_saida_rebanho
    ADD CONSTRAINT fk_fazenda_mov_saida_rebanho FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_nascimento fk_fazenda_nascimento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_nascimento
    ADD CONSTRAINT fk_fazenda_nascimento FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_patrimonio_estoque_area_valor_terra fk_fazenda_patrimonio_estoque_area_valor_terra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_patrimonio_estoque_area_valor_terra
    ADD CONSTRAINT fk_fazenda_patrimonio_estoque_area_valor_terra FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_descricao_volumoso fk_fazenda_producao_volumoso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_descricao_volumoso
    ADD CONSTRAINT fk_fazenda_producao_volumoso FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: benchmarking_reproducao fk_fazenda_reproducao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY benchmarking_reproducao
    ADD CONSTRAINT fk_fazenda_reproducao FOREIGN KEY (fazenda_id) REFERENCES benchmarking_fazenda(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: regiao regiao_cod_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regiao
    ADD CONSTRAINT regiao_cod_pais_fkey FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais);


--
-- PostgreSQL database dump complete
--

