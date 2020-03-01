package com.aisoftware.aisoftware.repositorio.kit;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.QKit;
import com.aisoftware.aisoftware.entidade.TipoKit;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.math.BigDecimal;
import java.util.List;

public class KitJpaRepositoryCustomImpl implements KitJpaRepositoryCustom {

    @Autowired
    private JPAQueryFactory jpaQueryFactory;

    @Override
    public List<Kit> lista(
            List<Long> listaIdTipoKit,
            BigDecimal valorMinimo,
            BigDecimal valorMaximo) {

        QKit kit = QKit.kit;

        JPQLQuery<Kit> query = jpaQueryFactory.selectFrom(kit);

        BooleanExpression predicado = kit.id.isNotNull();

        if(!CollectionUtils.isEmpty(listaIdTipoKit)){
            predicado = predicado.and(kit.tipoKit.id.in(listaIdTipoKit));
        }

        if(!ObjectUtils.isEmpty(valorMaximo)){
        }

        return  null;
    }
}
