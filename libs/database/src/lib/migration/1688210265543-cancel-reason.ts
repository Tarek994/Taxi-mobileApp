import { MigrationInterface, QueryRunner } from 'typeorm';

export class cancelReason1688210265543 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        "CREATE TABLE `order_cancel_reason` (`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT, `title` varchar(255) NOT NULL, `isEnabled` tinyint NOT NULL DEFAULT 1, `userType` enum('Driver','Rider', 'Operator') NOT NULL DEFAULT 'Rider');"
      );
    } catch (error) {}
    try {
      await queryRunner.query(
        'ALTER TABLE `request` ADD `cancelReasonId` int NULL'
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `request` DROP `cancelReasonId`');
    } catch (error) {}
    try {
      await queryRunner.query('DROP TABLE `order_cancel_reason`');
    } catch (error) {}
  }
}
