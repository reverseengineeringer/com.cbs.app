package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.o;
import java.util.List;

@fs
public final class ax
{
  public static final at<Boolean> A = at.a("gads:looper_for_gms_client:enabled", Boolean.valueOf(true));
  public static final at<Boolean> B = at.a("gads:sw_ad_request_service:enabled", Boolean.valueOf(true));
  public static final at<Boolean> C = at.a("gads:sw_dynamite:enabled", Boolean.valueOf(true));
  public static final at<String> D = at.a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
  public static final at<String> E = at.a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
  public static final at<String> F = at.a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
  public static final at<Boolean> G = at.a("gads:enabled_sdk_csi", Boolean.valueOf(false));
  public static final at<String> H = at.a("gads:sdk_csi_server", "https://csi.gstatic.com/csi");
  public static final at<Boolean> I = at.a("gads:sdk_csi_write_to_file", Boolean.valueOf(false));
  public static final at<Boolean> J = at.a("gads:enable_content_fetching", Boolean.valueOf(true));
  public static final at<Integer> K = at.a("gads:content_length_weight", 1);
  public static final at<Integer> L = at.a("gads:content_age_weight", 1);
  public static final at<Integer> M = at.a("gads:min_content_len", 11);
  public static final at<Integer> N = at.a("gads:fingerprint_number", 10);
  public static final at<Integer> O = at.a("gads:sleep_sec", 10);
  public static final at<Boolean> P = at.a("gad:app_index_enabled", Boolean.valueOf(true));
  public static final at<String> Q = at.a("gads:kitkat_interstitial_workaround:experiment_id");
  public static final at<Boolean> R = at.a("gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
  public static final at<Boolean> S = at.a("gads:interstitial_follow_url", Boolean.valueOf(true));
  public static final at<Boolean> T = at.a("gads:interstitial_follow_url:register_click", Boolean.valueOf(true));
  public static final at<String> U = at.a("gads:interstitial_follow_url:experiment_id");
  public static final at<Boolean> V = at.a("gads:analytics_enabled", Boolean.valueOf(true));
  public static final at<Boolean> W = at.a("gads:ad_key_enabled", Boolean.valueOf(false));
  public static final at<Integer> X = at.a("gads:webview_cache_version", 0);
  public static final at<String> Y = at.b("gads:pan:experiment_id");
  public static final at<String> Z = at.a("gads:native:engine_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
  public static final at<String> a = at.a("gads:sdk_core_experiment_id");
  public static final at<Boolean> aa = at.a("gads:ad_manager_creator:enabled", Boolean.valueOf(true));
  public static final at<Boolean> ab = at.a("gads:log:verbose_enabled", Boolean.valueOf(false));
  public static final at<Boolean> ac = at.a("gads:device_info_caching:enabled", Boolean.valueOf(true));
  public static final at<Long> ad = at.a("gads:device_info_caching_expiry_ms:expiry", 300000L);
  public static final at<Boolean> ae = at.a("gads:gen204_signals:enabled", Boolean.valueOf(false));
  public static final at<Boolean> af = at.a("gads:webview:error_reporting_enabled", Boolean.valueOf(false));
  public static final at<Boolean> ag = at.a("gads:adid_reporting:enabled", Boolean.valueOf(false));
  public static final at<Boolean> ah = at.a("gads:request_pkg:enabled", Boolean.valueOf(true));
  public static final at<Boolean> ai = at.a("gads:gmsg:disable_back_button:enabled", Boolean.valueOf(false));
  public static final at<Long> aj = at.a("gads:network:cache_prediction_duration_s", 300L);
  public static final at<Boolean> ak = at.a("gads:mediation:dynamite_first", Boolean.valueOf(true));
  public static final at<Long> al = at.a("gads:ad_loader:timeout_ms", 60000L);
  public static final at<Long> am = at.a("gads:rendering:timeout_ms", 60000L);
  public static final at<Boolean> an = at.a("gads:adshield:enable_adshield_instrumentation", Boolean.valueOf(false));
  public static final at<Boolean> ao = at.a("gads:adid_notification:first_party_check:enabled", Boolean.valueOf(true));
  public static final at<Boolean> ap = at.a("gads:support_screen_shot", Boolean.valueOf(true));
  public static final at<String> b = at.a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
  public static final at<Boolean> c = at.a("gads:request_builder:singleton_webview", Boolean.valueOf(false));
  public static final at<String> d = at.a("gads:request_builder:singleton_webview_experiment_id");
  public static final at<Boolean> e = at.a("gads:sdk_use_dynamic_module", Boolean.valueOf(false));
  public static final at<String> f = at.a("gads:sdk_use_dynamic_module_experiment_id");
  public static final at<Boolean> g = at.a("gads:sdk_crash_report_enabled", Boolean.valueOf(false));
  public static final at<Boolean> h = at.a("gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
  public static final at<Boolean> i = at.a("gads:block_autoclicks", Boolean.valueOf(false));
  public static final at<String> j = at.a("gads:block_autoclicks_experiment_id");
  public static final at<String> k = at.b("gads:prefetch:experiment_id");
  public static final at<String> l = at.a("gads:spam_app_context:experiment_id");
  public static final at<Boolean> m = at.a("gads:spam_app_context:enabled", Boolean.valueOf(false));
  public static final at<String> n = at.a("gads:video_stream_cache:experiment_id");
  public static final at<Integer> o = at.a("gads:video_stream_cache:limit_count", 5);
  public static final at<Integer> p = at.a("gads:video_stream_cache:limit_space", 8388608);
  public static final at<Integer> q = at.a("gads:video_stream_exo_cache:buffer_size", 8388608);
  public static final at<Long> r = at.a("gads:video_stream_cache:limit_time_sec", 300L);
  public static final at<Long> s = at.a("gads:video_stream_cache:notify_interval_millis", 1000L);
  public static final at<Integer> t = at.a("gads:video_stream_cache:connect_timeout_millis", 10000);
  public static final at<Boolean> u = at.a("gads:video:metric_reporting_enabled", Boolean.valueOf(false));
  public static final at<String> v = at.a("gads:video:metric_frame_hash_times", "");
  public static final at<Long> w = at.a("gads:video:metric_frame_hash_time_leniency", 500L);
  public static final at<String> x = at.b("gads:spam_ad_id_decorator:experiment_id");
  public static final at<Boolean> y = at.a("gads:spam_ad_id_decorator:enabled", Boolean.valueOf(false));
  public static final at<String> z = at.b("gads:looper_for_gms_client:experiment_id");
  
  public static List<String> a()
  {
    return o.m().a();
  }
  
  public static void a(Context paramContext)
  {
    o.n().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */