import { MigrationInterface, QueryRunner } from 'typeorm';

export class trackOrderDestination1687333204169 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` ADD `destinationArrivedTo` TINYINT NOT NULL DEFAULT 0'
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` DROP `destinationArrivedTo`'
      );
    } catch (error) {}
  }
}
