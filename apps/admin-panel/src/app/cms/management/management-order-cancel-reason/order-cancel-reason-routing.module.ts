import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { OrderCancelReasonViewResolver } from './order-cancel-reason-view/order-cancel-reason-view.resolver';
import { OrderCancelReasonListComponent } from './order-cancel-reason-list/order-cancel-reason-list.component';
import { OrderCancelReasonListResolver } from './order-cancel-reason-list/order-cancel-reason-list.resolver';
import { OrderCancelReasonViewComponent } from './order-cancel-reason-view/order-cancel-reason-view.component';

const routes: Routes = [
  {
    path: '',
    component: OrderCancelReasonListComponent,
    resolve: { orderCancelReasons: OrderCancelReasonListResolver },
    runGuardsAndResolvers: 'paramsOrQueryParamsChange',
  },
  {
    path: 'view/:id',
    component: OrderCancelReasonViewComponent,
    resolve: { orderCancelReason: OrderCancelReasonViewResolver },
  },
  { path: 'new', component: OrderCancelReasonViewComponent },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
  providers: [OrderCancelReasonViewResolver, OrderCancelReasonListResolver],
})
export class ManagementOrderCancelReasonRoutingModule {}
