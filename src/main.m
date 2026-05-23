#import <Foundation/Foundation.h>
#import <stdint.h>
#import <stdio.h>
#import <string.h>

static NSArray<NSDictionary<NSString *, NSString *> *> *Families(void) {
  return @[
    @{@"id": @"code_analyzer", @"renderer": @"classic-six.code_analyzer", @"tranche": @"classic-six", @"contextKey": @"analysisFocus", @"contextValue": @"message-dispatch-audit"},
    @{@"id": @"data_processing", @"renderer": @"classic-six.data_processing", @"tranche": @"classic-six", @"contextKey": @"dataWindow", @"contextValue": @"csv-nsarray-reconciliation"},
    @{@"id": @"jargon", @"renderer": @"classic-six.jargon", @"tranche": @"classic-six", @"contextKey": @"languagePolicy", @"contextValue": @"objective-c-runtime-glossary"},
    @{@"id": @"metrics", @"renderer": @"classic-six.metrics", @"tranche": @"classic-six", @"contextKey": @"signalBlend", @"contextValue": @"latency-error-retain-cycle"},
    @{@"id": @"network_activity", @"renderer": @"classic-six.network_activity", @"tranche": @"classic-six", @"contextKey": @"transportMix", @"contextValue": @"urlsession-socket-sse"},
    @{@"id": @"system_monitoring", @"renderer": @"classic-six.system_monitoring", @"tranche": @"classic-six", @"contextKey": @"telemetryScope", @"contextValue": @"darwin-clang-runtime"},
    @{@"id": @"agent_workflows", @"renderer": @"modern-core.agent_workflows", @"tranche": @"modern-core", @"contextKey": @"coordinationMode", @"contextValue": @"delegate-protocol-handshake"},
    @{@"id": @"platform_engineering", @"renderer": @"modern-core.platform_engineering", @"tranche": @"modern-core", @"contextKey": @"platformSurface", @"contextValue": @"xcode-clang-release-lane"},
    @{@"id": @"observability_ai_runtime", @"renderer": @"modern-core.observability_ai_runtime", @"tranche": @"modern-core", @"contextKey": @"runtimeSignals", @"contextValue": @"logs-metrics-provider-boundary"},
    @{@"id": @"delivery_preview_ops", @"renderer": @"modern-core.delivery_preview_ops", @"tranche": @"modern-core", @"contextKey": @"deliveryGuardrail", @"contextValue": @"codesign-preview-checkpoints"},
    @{@"id": @"supply_chain_security", @"renderer": @"modern-core.supply_chain_security", @"tranche": @"modern-core", @"contextKey": @"supplyChainPosture", @"contextValue": @"binary-signature-attestation"},
    @{@"id": @"ai_inference_ops", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"evaluation_and_guardrails", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"knowledge_retrieval", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"edge_client_runtime", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"identity_and_trust", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"aibom_provenance", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"agent_boundary_security", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"embedded_agentic_pipeline", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"data_governance_compliance", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"finops_capacity", @"renderer": @"fallback.ai_governance", @"tranche": @"fallback-ai_governance", @"contextKey": @"fallbackFamily", @"contextValue": @"ai_governance"},
    @{@"id": @"blockchain_protocol_ops", @"renderer": @"fallback.security_blockchain", @"tranche": @"fallback-security_blockchain", @"contextKey": @"fallbackFamily", @"contextValue": @"security_blockchain"},
    @{@"id": @"cross_chain_interop", @"renderer": @"fallback.security_blockchain", @"tranche": @"fallback-security_blockchain", @"contextKey": @"fallbackFamily", @"contextValue": @"security_blockchain"},
    @{@"id": @"proof_and_sequencer_ops", @"renderer": @"fallback.security_blockchain", @"tranche": @"fallback-security_blockchain", @"contextKey": @"fallbackFamily", @"contextValue": @"security_blockchain"},
    @{@"id": @"hybrid_runtime_ops", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"capacity_cost_controller", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"batch_execution_tuner", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"compiler_maintainer", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"interop_adapter_engineer", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"preflight_capacity_planner", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"simulator_performance_engineer", @"renderer": @"fallback.overlay_quantum", @"tranche": @"fallback-overlay_quantum", @"contextKey": @"fallbackFamily", @"contextValue": @"overlay_quantum"},
    @{@"id": @"fhir_profile_generator", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"smart_launch_oauth", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"bulk_fhir_population_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"hl7v2_feed_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"clinical_workflow_events", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"dicomweb_imaging_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"openehr_semantic_record_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"device_telemetry_clinical", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"emr_vendor_adapter", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"ocpp_chargepoint_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"ocpi_roaming_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"mcp_a2a_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"streaming_bus_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
    @{@"id": @"service_mesh_rpc_ops", @"renderer": @"fallback.health_protocol", @"tranche": @"fallback-health_protocol", @"contextKey": @"fallbackFamily", @"contextValue": @"health_protocol"},
  ];
}

static NSString *RegistryId(NSString *identifier) {
  return [identifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
}

static NSString *StringValue(NSDictionary<NSString *, NSString *> *dictionary, NSString *key) {
  NSString *value = dictionary[key];
  return value == nil ? @"" : value;
}

static NSString *NormalizeFamily(NSString *value) {
  NSString *trimmed = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  NSString *first = [[trimmed componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] firstObject];
  if (first == nil) {
    first = @"";
  }
  return [[first stringByReplacingOccurrencesOfString:@"-" withString:@"_"] lowercaseString];
}

static NSDictionary<NSString *, NSString *> *FindFamily(NSArray<NSDictionary<NSString *, NSString *> *> *families, NSString *value) {
  NSString *normalized = NormalizeFamily(value);
  for (NSDictionary<NSString *, NSString *> *family in families) {
    if ([family[@"id"] isEqualToString:normalized]) {
      return family;
    }
  }
  return nil;
}

static uint32_t HashValue(NSString *value) {
  uint32_t hash = 2166136261u;
  const char *bytes = [value UTF8String];
  for (const unsigned char *p = (const unsigned char *)bytes; *p; ++p) {
    hash ^= *p;
    hash *= 16777619u;
  }
  return hash;
}

static void PrintFoundationJSON(id object) {
  NSError *error = nil;
  NSData *data = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingSortedKeys error:&error];
  if (data == nil) {
    fprintf(stderr, "failed to serialize Foundation JSON: %s\n", [[error localizedDescription] UTF8String]);
    exit(2);
  }
  fwrite([data bytes], 1, [data length], stdout);
  fputc('\n', stdout);
}

static NSArray<NSString *> *RegistrySlice(NSArray<NSDictionary<NSString *, NSString *> *> *families, NSUInteger start, NSUInteger end) {
  NSMutableArray<NSString *> *items = [NSMutableArray array];
  for (NSUInteger i = start; i < end; ++i) {
    [items addObject:RegistryId(StringValue(families[i], @"id"))];
  }
  return items;
}

static void PrintListValues(NSArray<NSDictionary<NSString *, NSString *> *> *families) {
  NSMutableArray<NSDictionary<NSString *, NSString *> *> *generatorFamilies = [NSMutableArray array];
  for (NSDictionary<NSString *, NSString *> *family in families) {
    [generatorFamilies addObject:@{
      @"id": StringValue(family, @"id"),
      @"registryId": RegistryId(StringValue(family, @"id")),
      @"rendererKey": StringValue(family, @"renderer"),
      @"tranche": StringValue(family, @"tranche")
    }];
  }
  PrintFoundationJSON(@{
    @"classicSix": RegistrySlice(families, 0, 6),
    @"fallbackFamilies": RegistrySlice(families, 11, [families count]),
    @"flags": @[@"list-values", @"focus-family", @"output-format", @"seed", @"experimental-provider"],
    @"generatorFamilies": generatorFamilies,
    @"implementationMode": @"family-focus-deterministic",
    @"modernCore": RegistrySlice(families, 6, 11),
    @"outputFormats": @[@"text", @"json"]
  });
}

static void PrintPayload(NSDictionary<NSString *, NSString *> *family, NSString *seed, NSString *outputFormat) {
  NSString *identifier = StringValue(family, @"id");
  NSString *registry = RegistryId(identifier);
  uint32_t hash = HashValue([NSString stringWithFormat:@"%@::%@", seed, identifier]);
  uint32_t seconds = hash % 86400u;
  unsigned hour = seconds / 3600u;
  unsigned minute = (seconds % 3600u) / 60u;
  unsigned second = seconds % 60u;
  NSNumber *sequence = @(1000u + (hash % 9000u));
  NSString *timestamp = [NSString stringWithFormat:@"2026-01-01T%02u:%02u:%02uZ", hour, minute, second];

  if ([outputFormat isEqualToString:@"json"]) {
    NSMutableDictionary<NSString *, id> *context = [@{
      @"foundationProfile": @"nsstring-nsarray-nsdictionary-nsjsonserialization",
      @"rendererKey": StringValue(family, @"renderer"),
      @"seedFingerprint": [NSString stringWithFormat:@"%@-%x", registry, hash],
      @"tranche": StringValue(family, @"tranche")
    } mutableCopy];
    NSString *contextKey = StringValue(family, @"contextKey");
    if ([contextKey length] == 0) {
      contextKey = @"context";
    }
    context[contextKey] = StringValue(family, @"contextValue");
    PrintFoundationJSON(@{
      @"context": context,
      @"eventType": @"stakeholder.generator.output",
      @"family": identifier,
      @"generationProvenance": @{
        @"adapterType": @"foundation-static-catalog",
        @"baseline": @"local-small-tranche-family-focus",
        @"experimental": @NO,
        @"promptVersion": [NSNull null],
        @"sourceRepo": @"objective-c-stakeholder"
      },
      @"message": [NSString stringWithFormat:@"Deterministic objective-c tranche for %@", identifier],
      @"outputFormat": @"json",
      @"sequence": sequence,
      @"timestamp": timestamp
    });
    return;
  }

  printf("family: %s\n", [identifier UTF8String]);
  printf("renderer: %s\n", [family[@"renderer"] UTF8String]);
  printf("tranche: %s\n", [family[@"tranche"] UTF8String]);
  printf("sequence: %u\n", [sequence unsignedIntValue]);
  printf("timestamp: %s\n", [timestamp UTF8String]);
  printf("message: Deterministic objective-c tranche for %s\n", [identifier UTF8String]);
}

int main(int argc, char **argv) {
  @autoreleasepool {
    NSArray<NSDictionary<NSString *, NSString *> *> *families = Families();
    NSString *focusFamily = nil;
    NSString *seed = @"default-seed";
    NSString *outputFormat = @"text";
    BOOL listValues = NO;

    for (int i = 1; i < argc; ++i) {
      if (strcmp(argv[i], "--list-values") == 0) {
        listValues = YES;
      } else if (strcmp(argv[i], "--focus-family") == 0) {
        if (++i >= argc) {
          fprintf(stderr, "missing value for --focus-family\n");
          return 2;
        }
        focusFamily = [NSString stringWithUTF8String:argv[i]];
      } else if (strcmp(argv[i], "--seed") == 0) {
        if (++i >= argc) {
          fprintf(stderr, "missing value for --seed\n");
          return 2;
        }
        seed = [NSString stringWithUTF8String:argv[i]];
      } else if (strcmp(argv[i], "--output-format") == 0) {
        if (++i >= argc) {
          fprintf(stderr, "missing value for --output-format\n");
          return 2;
        }
        outputFormat = [NSString stringWithUTF8String:argv[i]];
        if (![outputFormat isEqualToString:@"text"] && ![outputFormat isEqualToString:@"json"]) {
          fprintf(stderr, "invalid --output-format: %s\n", argv[i]);
          return 2;
        }
      } else if (strcmp(argv[i], "--experimental-provider") == 0) {
        if (++i >= argc) {
          fprintf(stderr, "missing value for --experimental-provider\n");
          return 2;
        }
        fprintf(stderr, "experimental provider '%s' is not enabled in the deterministic first tranche\n", argv[i]);
        return 2;
      } else if (strncmp(argv[i], "--experimental-", 15) == 0) {
        fprintf(stderr, "experimental flags require --experimental-provider\n");
        return 2;
      } else {
        fprintf(stderr, "unknown argument: %s\n", argv[i]);
        return 2;
      }
    }

    if (listValues) {
      PrintListValues(families);
      return 0;
    }

    if (focusFamily == nil) {
      fprintf(stderr, "focus-family is required and must be a known generator family\n");
      return 2;
    }

    NSDictionary<NSString *, NSString *> *family = FindFamily(families, focusFamily);
    if (family == nil) {
      fprintf(stderr, "invalid --focus-family: %s\n", [focusFamily UTF8String]);
      return 2;
    }

    PrintPayload(family, seed, outputFormat);
    return 0;
  }
}
