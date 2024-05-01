import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { ForbiddenError } from 'apollo-server-fastify';
import {
  CurrentConfiguration,
  UpdateConfigResult,
  UpdatePurchaseCodeResult,
} from './config.dto';
import { ConfigurationService } from './configuration.service';
import { Logger } from '@nestjs/common';

@Resolver()
export class ConfigurationResolver {
  constructor(private configurationService: ConfigurationService) {}
  // @Mutation(() => UploadResult)
  // async uploads(@Args('input', { type: () => GraphQLUpload }) {createReadStream,filename}): Promise<{url: string}> {
  //     return {url: filename};
  // }

  @Query(() => CurrentConfiguration)
  async currentConfiguration() {
    const currentConfig = await this.configurationService.getConfiguration();
    // if (currentConfig.purchaseCode == 'RESTRICTED') {
    //   throw new ForbiddenError('Already Configured');
    // }
    return currentConfig;
  }

  @Mutation(() => UpdatePurchaseCodeResult)
  async updatePurchaseCode(
    @Args('purchaseCode', { type: () => String }) purchaseCode: string,
    @Args('email', { type: () => String, nullable: true }) email?: string
  ): Promise<UpdatePurchaseCodeResult> {
    return this.configurationService.updatePurchaseCode(purchaseCode, email);
  }

  @Mutation(() => UpdateConfigResult)
  async updateMapsAPIKey(
    @Args('backend', { type: () => String }) backend: string,
    @Args('adminPanel', { type: () => String }) adminPanel: string
  ): Promise<UpdateConfigResult> {
    return this.configurationService.updateMapsAPIKey(backend, adminPanel);
  }

  @Mutation(() => UpdateConfigResult)
  async updateFirebase(
    @Args('keyFileName', { type: () => String }) keyFileName: string
  ): Promise<UpdateConfigResult> {
    return this.configurationService.updateFirebase(keyFileName);
  }

  @Mutation(() => UpdateConfigResult)
  async disablePreviousServer(
    @Args('ip', { type: () => String }) ip: string
  ): Promise<UpdateConfigResult> {
    return this.configurationService.disablePreviousServer(ip);
  }
}
