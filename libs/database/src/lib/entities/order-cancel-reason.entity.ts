import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { RequestEntity } from './request.entity';
import { AnnouncementUserType } from './enums/anouncement-user-type.enum';

@Entity('order_cancel_reason')
export class OrderCancelReasonEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: string;

  @OneToMany(() => RequestEntity, (request) => request.cancelReason)
  orders!: RequestEntity[];

  @Column({
    default: true,
  })
  isEnabled!: boolean;

  @Column('enum', {
    enum: AnnouncementUserType,
    default: AnnouncementUserType.Rider,
    //nullable: true,
  })
  userType!: AnnouncementUserType;
}
