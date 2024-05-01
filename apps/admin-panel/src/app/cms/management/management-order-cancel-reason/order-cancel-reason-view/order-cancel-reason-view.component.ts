import { AfterViewInit, Component } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CreateOrderCancelReasonGQL,
  CreateReviewParameterGQL,
  OrderCancelReasonViewQuery,
  ReviewParameterViewQuery,
  UpdateOrderCancelReasonGQL,
  UpdateReviewParameterGQL,
} from '@ridy/admin-panel/generated/graphql';
import { NzMessageService } from 'ng-zorro-antd/message';
import { firstValueFrom } from 'rxjs';

@Component({
  selector: 'app-review-parameter-view',
  templateUrl: './order-cancel-reason-view.component.html',
})
export class OrderCancelReasonViewComponent implements AfterViewInit {
  form = this.fb.group({
    id: [null],
    title: [null, Validators.required],
    userType: [null, Validators.required],
    isEnabled: [true, Validators.required],
  });

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private fb: UntypedFormBuilder,
    private createGQL: CreateOrderCancelReasonGQL,
    private updateGQL: UpdateOrderCancelReasonGQL,
    private msg: NzMessageService
  ) {}

  ngAfterViewInit(): void {
    this.initializeDrawingManager();
  }

  initializeDrawingManager() {
    this.route.data.subscribe((data) => {
      if (data.orderCancelReason != null) {
        const val: OrderCancelReasonViewQuery = data.orderCancelReason.data;
        const orderCancelReason = val.orderCancelReason;
        if (orderCancelReason != null) {
          this.form.patchValue(orderCancelReason);
        }
      }
    });
  }

  async onSubmit() {
    try {
      const { id, ...update } = this.form.value;
      if (id == null) {
        await firstValueFrom(this.createGQL.mutate({ input: update }));
      } else {
        await firstValueFrom(this.updateGQL.mutate({ id, update }));
      }
      this.router.navigate(['management/order-cancel-reasons'], {
        relativeTo: this.route.root,
      });
    } catch (error: any) {
      this.msg.error(error.message);
    }
  }
}
