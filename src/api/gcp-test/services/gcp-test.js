'use strict';

/**
 * gcp-test service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::gcp-test.gcp-test');
