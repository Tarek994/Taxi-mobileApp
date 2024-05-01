import { IDField } from '@nestjs-query/query-graphql';
import { Field, ID, ObjectType } from '@nestjs/graphql';
import { AnnouncementUserType } from '@ridy/database/enums/anouncement-user-type.enum';

@ObjectType('OrderCancelReason')
export class OrderCancelReasonDTO {
  @IDField(() => ID)
  id!: number;
  @Field()
  title!: string;
  @Field()
  isEnabled!: boolean;
  @Field(() => AnnouncementUserType)
  userType!: AnnouncementUserType;
}
