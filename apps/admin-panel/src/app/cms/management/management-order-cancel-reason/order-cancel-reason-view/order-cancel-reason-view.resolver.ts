import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  OrderCancelReasonViewGQL,
  OrderCancelReasonViewQuery,
} from '@ridy/admin-panel/generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class OrderCancelReasonViewResolver {
  constructor(private gql: OrderCancelReasonViewGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ): Observable<ApolloQueryResult<OrderCancelReasonViewQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
