import { NgModule } from '@angular/core';
import { ManagementOrderCancelReasonRoutingModule } from './order-cancel-reason-routing.module';
import { OrderCancelReasonListComponent } from './order-cancel-reason-list/order-cancel-reason-list.component';
import { OrderCancelReasonViewComponent } from './order-cancel-reason-view/order-cancel-reason-view.component';
import { TagColorService } from '@ridy/admin-panel/src/app/@services/tag-color/tag-color.service';
import { SharedModule } from '@ridy/admin-panel/src/app/@components/shared.module';

@NgModule({
  declarations: [
    OrderCancelReasonListComponent,
    OrderCancelReasonViewComponent,
  ],
  imports: [ManagementOrderCancelReasonRoutingModule, SharedModule],
  providers: [TagColorService],
})
export class ManagementOrderCancelReasonModule {}
