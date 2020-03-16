package com.aisoftware.aisoftware.repositorio.tipoItem;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.QKit;
import com.aisoftware.aisoftware.entidade.QTipoItem;
import com.aisoftware.aisoftware.entidade.TipoItem;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.core.util.ArrayUtils;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.ObjectUtils;

import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.List;

/**
 *
 */
public class TipoItemJpaRepositoryCustomImpl implements TipoItemJpaRepositoryCustom {

    @Autowired
    private JPAQueryFactory jpaQueryFactory;
}
