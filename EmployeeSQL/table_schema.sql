CREATE TABLE public.departments
(
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);


CREATE TABLE public.dept_emp
(
    emp_no integer NOT NULL,
    dept_no character varying NOT NULL,
    CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no),
    CONSTRAINT fk_departmnts FOREIGN KEY (dept_no)
	REFERENCES public.departments (dept_no) 
);

CREATE TABLE public.dept_manager
(
    dept_no character varying COLLATE pg_catalog."default",
    emp_no integer NOT NULL,
    CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no),
    CONSTRAINT fk_dept_emp FOREIGN KEY (dept_no, emp_no)
        REFERENCES public.dept_emp (dept_no, emp_no) 
);

CREATE TABLE public.employees
(
    emp_no integer NOT NULL,
    emp_title_id character varying,
    birth_date character varying,
    first_name character varying,
    last_name character varying ,
    sex character varying,
    hire_date character varying,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no),
    CONSTRAINT fk_titles FOREIGN KEY (emp_title_id)
        REFERENCES public.titles (emp_title_id) 
);

CREATE TABLE public.salaries
(
    emp_no integer NOT NULL,
    salary integer,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no),
    CONSTRAINT fk_employees FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) 
);

CREATE TABLE public.titles
(
    emp_title_id character varying NOT NULL,
    title character varying ,
    CONSTRAINT titles_pkey PRIMARY KEY (emp_title_id)
);

