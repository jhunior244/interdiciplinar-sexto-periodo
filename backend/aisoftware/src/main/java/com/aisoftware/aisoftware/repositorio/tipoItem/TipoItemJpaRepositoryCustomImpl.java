package com.aisoftware.aisoftware.repositorio.tipoItem;

import com.aisoftware.aisoftware.entidade.*;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;

import java.util.List;

/**
 *
 */
public class TipoItemJpaRepositoryCustomImpl implements TipoItemJpaRepositoryCustom {

    @Autowired
    private JPAQueryFactory jpaQueryFactory;

}
