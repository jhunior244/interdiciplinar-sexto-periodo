package com.aisoftware.aisoftware.repositorio.kit;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.QKit;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.core.util.ArrayUtils;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.math.BigDecimal;
import java.util.List;

/**
 *
 */
public class KitJpaRepositoryCustomImpl implements KitJpaRepositoryCustom {

    @Autowired
    private JPAQueryFactory jpaQueryFactory;

    @Override
    public Page<Kit> lista(Long[] listaIdTipoKit, BigDecimal valorMinimo, BigDecimal valorMaximo, Pageable pagina) {

        QKit kit = QKit.kit;

        JPQLQuery<Kit> query = jpaQueryFactory.selectFrom(kit);

        BooleanExpression predicado = kit.id.isNotNull();

        if(!ArrayUtils.isEmpty(listaIdTipoKit)){
            predicado = predicado.and(kit.tipoKit.id.in(listaIdTipoKit));
        }

        if(!ObjectUtils.isEmpty(valorMaximo)){
            predicado = predicado.and(kit.preco.loe(valorMaximo));
        }

        if(!ObjectUtils.isEmpty(valorMinimo)){
            predicado = predicado.and(kit.preco.goe(valorMinimo));
        }

        query.where(predicado);

        query.limit(pagina.getPageSize());

        query.offset(pagina.getOffset());

        List<Kit> lista = query.fetch();

        return new PageImpl<>(lista, pagina, query.fetchCount());
    }
}
