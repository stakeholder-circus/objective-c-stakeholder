#import <ctype.h>
#import <stdint.h>
#import <stdio.h>
#import <stdlib.h>
#import <string.h>

typedef struct {
  const char *id;
  const char *renderer;
  const char *tranche;
  const char *context_key;
  const char *context_value;
} Family;

static const Family families[] = {
    {"code_analyzer", "classic-six.code_analyzer", "classic-six", "analysisFocus", "message-dispatch-audit"},
    {"data_processing", "classic-six.data_processing", "classic-six", "dataWindow", "csv-nsarray-reconciliation"},
    {"jargon", "classic-six.jargon", "classic-six", "languagePolicy", "objective-c-runtime-glossary"},
    {"metrics", "classic-six.metrics", "classic-six", "signalBlend", "latency-error-retain-cycle"},
    {"network_activity", "classic-six.network_activity", "classic-six", "transportMix", "urlsession-socket-sse"},
    {"system_monitoring", "classic-six.system_monitoring", "classic-six", "telemetryScope", "darwin-clang-runtime"},
    {"agent_workflows", "modern-core.agent_workflows", "modern-core", "coordinationMode", "delegate-protocol-handshake"},
    {"platform_engineering", "modern-core.platform_engineering", "modern-core", "platformSurface", "xcode-clang-release-lane"},
    {"observability_ai_runtime", "modern-core.observability_ai_runtime", "modern-core", "runtimeSignals", "logs-metrics-provider-boundary"},
    {"delivery_preview_ops", "modern-core.delivery_preview_ops", "modern-core", "deliveryGuardrail", "codesign-preview-checkpoints"},
    {"supply_chain_security", "modern-core.supply_chain_security", "modern-core", "supplyChainPosture", "binary-signature-attestation"},
    {"ai_inference_ops", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"evaluation_and_guardrails", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"knowledge_retrieval", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"edge_client_runtime", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"identity_and_trust", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"aibom_provenance", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"agent_boundary_security", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"embedded_agentic_pipeline", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"data_governance_compliance", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"finops_capacity", "fallback.ai_governance", "fallback-ai_governance", "fallbackFamily", "ai_governance"},
    {"blockchain_protocol_ops", "fallback.security_blockchain", "fallback-security_blockchain", "fallbackFamily", "security_blockchain"},
    {"cross_chain_interop", "fallback.security_blockchain", "fallback-security_blockchain", "fallbackFamily", "security_blockchain"},
    {"proof_and_sequencer_ops", "fallback.security_blockchain", "fallback-security_blockchain", "fallbackFamily", "security_blockchain"},
    {"hybrid_runtime_ops", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"capacity_cost_controller", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"batch_execution_tuner", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"compiler_maintainer", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"interop_adapter_engineer", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"preflight_capacity_planner", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"simulator_performance_engineer", "fallback.overlay_quantum", "fallback-overlay_quantum", "fallbackFamily", "overlay_quantum"},
    {"fhir_profile_generator", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"smart_launch_oauth", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"bulk_fhir_population_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"hl7v2_feed_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"clinical_workflow_events", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"dicomweb_imaging_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"openehr_semantic_record_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"device_telemetry_clinical", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"emr_vendor_adapter", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"ocpp_chargepoint_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"ocpi_roaming_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"mcp_a2a_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"streaming_bus_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
    {"service_mesh_rpc_ops", "fallback.health_protocol", "fallback-health_protocol", "fallbackFamily", "health_protocol"},
};

static const size_t family_count = sizeof(families) / sizeof(families[0]);

static uint32_t hash_value(const char *value) {
  uint32_t hash = 2166136261u;
  for (const unsigned char *p = (const unsigned char *)value; *p; ++p) {
    hash ^= *p;
    hash *= 16777619u;
  }
  return hash;
}

static void registry_id(const char *id, char *out, size_t size) {
  size_t j = 0;
  for (size_t i = 0; id[i] && j + 1 < size; ++i) {
    out[j++] = id[i] == '_' ? '-' : id[i];
  }
  out[j] = '\0';
}

static void normalize(const char *value, char *out, size_t size) {
  size_t j = 0;
  while (*value && isspace((unsigned char)*value)) {
    ++value;
  }
  for (size_t i = 0; value[i] && j + 1 < size; ++i) {
    if (isspace((unsigned char)value[i])) {
      break;
    }
    out[j++] = value[i] == '-' ? '_' : (char)tolower((unsigned char)value[i]);
  }
  out[j] = '\0';
}

static const Family *find_family(const char *value) {
  char normalized[128];
  normalize(value, normalized, sizeof normalized);
  for (size_t i = 0; i < family_count; ++i) {
    if (strcmp(families[i].id, normalized) == 0) {
      return &families[i];
    }
  }
  return NULL;
}

static void print_registry_array(size_t start, size_t end) {
  for (size_t i = start; i < end; ++i) {
    char registry[128];
    registry_id(families[i].id, registry, sizeof registry);
    printf("%s\"%s\"", i == start ? "" : ",", registry);
  }
}

static void print_list_values(void) {
  printf("{\"outputFormats\":[\"text\",\"json\"],");
  printf("\"flags\":[\"list-values\",\"focus-family\",\"output-format\",\"seed\",\"experimental-provider\"],");
  printf("\"generatorFamilies\":[");
  for (size_t i = 0; i < family_count; ++i) {
    char registry[128];
    registry_id(families[i].id, registry, sizeof registry);
    printf("%s{\"id\":\"%s\",\"registryId\":\"%s\",\"rendererKey\":\"%s\",\"tranche\":\"%s\"}",
           i == 0 ? "" : ",", families[i].id, registry, families[i].renderer, families[i].tranche);
  }
  printf("],\"classicSix\":[");
  print_registry_array(0, 6);
  printf("],\"modernCore\":[");
  print_registry_array(6, 11);
  printf("],\"fallbackFamilies\":[");
  print_registry_array(11, family_count);
  printf("],\"implementationMode\":\"family-focus-deterministic\"}\n");
}

static void print_payload(const Family *family, const char *seed, const char *output_format) {
  char material[256];
  char registry[128];
  snprintf(material, sizeof material, "%s::%s", seed, family->id);
  registry_id(family->id, registry, sizeof registry);
  uint32_t hash = hash_value(material);
  uint32_t seconds = hash % 86400u;
  unsigned hour = seconds / 3600u;
  unsigned minute = (seconds % 3600u) / 60u;
  unsigned second = seconds % 60u;

  if (strcmp(output_format, "json") == 0) {
    printf("{\"eventType\":\"stakeholder.generator.output\",\"sequence\":%u,\"family\":\"%s\",",
           1000u + (hash % 9000u), family->id);
    printf("\"message\":\"Deterministic objective-c tranche for %s\",", family->id);
    printf("\"timestamp\":\"2026-01-01T%02u:%02u:%02uZ\",", hour, minute, second);
    printf("\"context\":{\"rendererKey\":\"%s\",\"%s\":\"%s\",\"seedFingerprint\":\"%s-%x\",\"tranche\":\"%s\",\"objectiveCProfile\":\"apple-clang-foundation-free\"},",
           family->renderer, family->context_key, family->context_value, registry, hash, family->tranche);
    printf("\"generationProvenance\":{\"sourceRepo\":\"objective-c-stakeholder\",\"baseline\":\"local-small-tranche-family-focus\",\"experimental\":false,\"adapterType\":\"static-catalog\",\"promptVersion\":null},");
    printf("\"outputFormat\":\"json\"}\n");
    return;
  }

  printf("family: %s\n", family->id);
  printf("renderer: %s\n", family->renderer);
  printf("tranche: %s\n", family->tranche);
  printf("sequence: %u\n", 1000u + (hash % 9000u));
  printf("timestamp: 2026-01-01T%02u:%02u:%02uZ\n", hour, minute, second);
  printf("message: Deterministic objective-c tranche for %s\n", family->id);
}

int main(int argc, char **argv) {
  const char *focus_family = NULL;
  const char *seed = "default-seed";
  const char *output_format = "text";
  int list_values = 0;

  for (int i = 1; i < argc; ++i) {
    if (strcmp(argv[i], "--list-values") == 0) {
      list_values = 1;
    } else if (strcmp(argv[i], "--focus-family") == 0) {
      if (++i >= argc) {
        fprintf(stderr, "missing value for --focus-family\n");
        return 2;
      }
      focus_family = argv[i];
    } else if (strcmp(argv[i], "--seed") == 0) {
      if (++i >= argc) {
        fprintf(stderr, "missing value for --seed\n");
        return 2;
      }
      seed = argv[i];
    } else if (strcmp(argv[i], "--output-format") == 0) {
      if (++i >= argc) {
        fprintf(stderr, "missing value for --output-format\n");
        return 2;
      }
      output_format = argv[i];
      if (strcmp(output_format, "text") != 0 && strcmp(output_format, "json") != 0) {
        fprintf(stderr, "invalid --output-format: %s\n", output_format);
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

  if (list_values) {
    print_list_values();
    return 0;
  }

  if (focus_family == NULL) {
    fprintf(stderr, "focus-family is required and must be a known generator family\n");
    return 2;
  }

  const Family *family = find_family(focus_family);
  if (family == NULL) {
    fprintf(stderr, "invalid --focus-family: %s\n", focus_family);
    return 2;
  }

  print_payload(family, seed, output_format);
  return 0;
}
