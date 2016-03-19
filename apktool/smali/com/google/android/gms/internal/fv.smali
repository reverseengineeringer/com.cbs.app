.class public final Lcom/google/android/gms/internal/fv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/fv;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 34

    .prologue
    .line 0
    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->m:I

    if-eqz v4, :cond_1

    const/16 v27, 0x1

    :goto_0
    if-eqz v27, :cond_2

    const-string v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-wide/16 v20, -0x1

    const-string v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v0, v8

    move-wide/from16 v16, v0

    :goto_2
    const-string v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gx;->b()I

    move-result v18

    :cond_0
    :goto_3
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 24000
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_4
    return-object v4

    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-wide/16 v16, -0x1

    goto :goto_2

    :cond_4
    const-string v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gx;->a()I

    move-result v18

    goto :goto_3

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/fu;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ft;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move-wide/from16 v20, v0

    move-object v10, v4

    :goto_5
    const-string v4, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v10, :cond_9

    const/4 v4, 0x0

    :goto_6
    if-eqz v8, :cond_16

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_6
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_a

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse the mediation config: Missing required "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v27, :cond_8

    const-string v4, "ad_json"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or ad_url field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25000
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse the mediation config: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26000
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_4

    :cond_8
    :try_start_1
    const-string v4, "ad_html"

    goto :goto_8

    :cond_9
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object v8, v4

    :goto_9
    const-string v4, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v10, :cond_c

    const/4 v4, 0x0

    :goto_a
    if-eqz v9, :cond_15

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_d

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_c
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    goto :goto_a

    :cond_d
    move-object v9, v4

    :goto_c
    const-string v4, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_f

    const/4 v4, 0x0

    :goto_d
    if-eqz v11, :cond_14

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_e
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_10

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_f
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:Ljava/util/List;

    goto :goto_d

    :cond_10
    move-object v15, v4

    :goto_f
    if-eqz v10, :cond_13

    iget v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    iget v0, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move/from16 v18, v0

    :cond_11
    iget-wide v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_13

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    :goto_10
    const-string v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_12
    const-string v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "oauth2_token_status"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    const-string v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v4, "gws_query_id"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v4, "height"

    const-string v5, "fluid"

    const-string v33, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->p:Z

    move/from16 v28, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v33}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILjava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_13
    move-wide/from16 v10, v16

    goto/16 :goto_10

    :cond_14
    move-object v15, v4

    goto/16 :goto_f

    :cond_15
    move-object v9, v4

    goto/16 :goto_c

    :cond_16
    move-object v8, v4

    goto/16 :goto_9

    :cond_17
    move-object v10, v4

    move-object v7, v5

    goto/16 :goto_5
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/appdatasearch/a;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->c()V

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;->a()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;->b()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/appdatasearch/a;->c:Lcom/google/android/gms/appdatasearch/k;

    invoke-interface {v3, v2, v0}, Lcom/google/android/gms/appdatasearch/k;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/c;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 21000
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->d()V

    :goto_0
    return-object v1

    :cond_1
    :try_start_2
    iget-object v3, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->b:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22000
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->d()V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/UsageInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->d()V

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 23000
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const/4 v2, 0x5

    :try_start_4
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->d()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 23000
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/gd$a;Lcom/google/android/gms/internal/aq;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/fz;",
            "Lcom/google/android/gms/internal/gd$a;",
            "Lcom/google/android/gms/internal/aq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "eid"

    const-string v3, ","

    move-object/from16 v0, p7

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v2, "ad_pos"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/gq;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "abf"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v6, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    const-string v2, "cust_age"

    sget-object v5, Lcom/google/android/gms/internal/fv;->a:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v2, "extras"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    const-string v2, "cust_gender"

    iget v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_6

    const-string v2, "kw"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    const-string v2, "tag_for_child_directed_treatment"

    iget v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    if-eqz v2, :cond_8

    const-string v2, "adtest"

    const-string v5, "on"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    const/4 v5, 0x2

    if-lt v2, v5, :cond_15

    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->h:Z

    if-eqz v2, :cond_9

    const-string v2, "d_imp_hdr"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "ppid"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->i:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->j:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v2, :cond_15

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->j:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    .line 2000
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->b:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "acolor"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->b:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->c:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "bgcolor"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->c:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "gradientto"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->d:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gradientfrom"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->e:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->f:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "bcolor"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->f:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v2, "bthick"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->h:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_f

    const-string v6, "btype"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->i:I

    packed-switch v2, :pswitch_data_1

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_10

    const-string v6, "callbuttoncolor"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->j:Ljava/lang/String;

    if-eqz v2, :cond_11

    const-string v2, "channel"

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->j:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->k:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "dcolor"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->k:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->l:Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string v2, "font"

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->l:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->m:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "hcolor"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->m:I

    invoke-static {v6}, Lcom/google/android/gms/internal/fv;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v2, "headersize"

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->o:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v2, "q"

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->o:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_15
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    const/4 v5, 0x3

    if-lt v2, v5, :cond_16

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->l:Ljava/lang/String;

    if-eqz v2, :cond_16

    const-string v2, "url"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->l:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_19

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->n:Landroid/os/Bundle;

    if-eqz v2, :cond_17

    const-string v2, "custom_targeting"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->n:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->o:Ljava/util/List;

    if-eqz v2, :cond_18

    const-string v2, "category_exclusions"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->o:Ljava/util/List;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->p:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v2, "request_agent"

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->p:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    const/4 v5, 0x6

    if-lt v2, v5, :cond_1a

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->q:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v2, "request_pkg"

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->q:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_1a
    const-string v2, "format"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1c

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-eqz v2, :cond_1d

    const-string v2, "fluid"

    const-string v3, "height"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_21

    aget-object v8, v6, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "|"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_1f

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    int-to-float v2, v2

    iget v9, p2, Lcom/google/android/gms/internal/fz;->r:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    const/4 v9, -0x2

    if-ne v2, v9, :cond_20

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    int-to-float v2, v2

    iget v8, p2, Lcom/google/android/gms/internal/fz;->r:F

    div-float/2addr v2, v8

    float-to-int v2, v2

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 2000
    :pswitch_0
    const-string v2, "none"

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "dashed"

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "dotted"

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "solid"

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "dark"

    goto/16 :goto_1

    :pswitch_5
    const-string v2, "light"

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "medium"

    goto/16 :goto_1

    .line 0
    :cond_1f
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    goto :goto_3

    :cond_20
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    goto :goto_4

    :cond_21
    const-string v2, "sz"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->m:I

    if-eqz v2, :cond_23

    const-string v2, "native_version"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->n:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "native_image_orientation"

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    .line 3000
    if-eqz v2, :cond_34

    iget v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->c:I

    :goto_5
    packed-switch v2, :pswitch_data_2

    const-string v2, "any"

    .line 0
    :goto_6
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "native_custom_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->A:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const-string v2, "slotname"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_24

    const-string v2, "vc"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    const-string v2, "ms"

    move-object/from16 v0, p6

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seq_num"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->j:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    const-string v2, "am"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cog"

    iget-boolean v3, p2, Lcom/google/android/gms/internal/fz;->b:Z

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->a(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "coh"

    iget-boolean v3, p2, Lcom/google/android/gms/internal/fz;->c:Z

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->a(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/fz;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "carrier"

    iget-object v3, p2, Lcom/google/android/gms/internal/fz;->d:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string v2, "gl"

    iget-object v3, p2, Lcom/google/android/gms/internal/fz;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p2, Lcom/google/android/gms/internal/fz;->f:Z

    if-eqz v2, :cond_26

    const-string v2, "simulator"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-boolean v2, p2, Lcom/google/android/gms/internal/fz;->g:Z

    if-eqz v2, :cond_27

    const-string v2, "is_sidewinder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v2, "ma"

    iget-boolean v3, p2, Lcom/google/android/gms/internal/fz;->h:Z

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->a(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sp"

    iget-boolean v3, p2, Lcom/google/android/gms/internal/fz;->i:Z

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->a(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hl"

    iget-object v3, p2, Lcom/google/android/gms/internal/fz;->j:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/fz;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "mv"

    iget-object v3, p2, Lcom/google/android/gms/internal/fz;->k:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-string v2, "muv"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p2, Lcom/google/android/gms/internal/fz;->m:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_29

    const-string v2, "cnt"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    const-string v2, "gnt"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pt"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rm"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "riv"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "build"

    iget-object v5, p2, Lcom/google/android/gms/internal/fz;->y:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "is_charging"

    iget-boolean v6, p2, Lcom/google/android/gms/internal/fz;->v:Z

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "battery_level"

    iget-wide v6, p2, Lcom/google/android/gms/internal/fz;->u:D

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v5, "battery"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "active_network_state"

    iget v6, p2, Lcom/google/android/gms/internal/fz;->x:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "active_network_metered"

    iget-boolean v6, p2, Lcom/google/android/gms/internal/fz;->w:Z

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "network"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "device"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    const-string v2, "fdz"

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/aq;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    if-eqz v2, :cond_2a

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    .line 5000
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v8, "radius"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "lat"

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "long"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uule"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_2a
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2b

    const-string v2, "quality_signals"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2c

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->p:Z

    if-eqz v2, :cond_2c

    const-string v2, "forceHttps"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_35

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->o:Landroid/os/Bundle;

    if-eqz v2, :cond_35

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->o:Landroid/os/Bundle;

    move-object v3, v2

    .line 6000
    :goto_7
    sget-object v2, Lcom/google/android/gms/internal/ax;->P:Lcom/google/android/gms/internal/at;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 6000
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_36

    .line 8000
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_2d
    :goto_8
    const-string v2, "content_info"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3d

    const-string v2, "u_sd"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->t:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2f

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2e

    :try_start_1
    const-string v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->u:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2e
    :goto_a
    :try_start_2
    const-string v2, "correlation_id"

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->v:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_30

    const-string v2, "request_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_31

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->C:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    if-eqz v2, :cond_31

    const-string v2, "capability"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->C:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    .line 17000
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "iap_supported"

    iget-boolean v7, v3, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->b:Z

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "default_iap_supported"

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->c:Z

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 0
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_32

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "anchor"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->D:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gw;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Ad Request JSON: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19000
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_33
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gw;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_b
    return-object v2

    .line 3000
    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_5

    :pswitch_7
    const-string v2, "portrait"

    goto/16 :goto_6

    :pswitch_8
    const-string v2, "landscape"

    goto/16 :goto_6

    .line 0
    :cond_35
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v3, v2

    goto/16 :goto_7

    .line 6000
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/jt;->a()Z

    move-result v2

    if-nez v2, :cond_37

    .line 9000
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 0
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem serializing ad request to JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v2, 0x0

    goto :goto_b

    .line 6000
    :cond_37
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/a;->b()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 10000
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_8

    .line 6000
    :cond_38
    if-eqz p1, :cond_39

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_3a

    .line 11000
    :cond_39
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_8

    .line 6000
    :cond_3a
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 12000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    .line 6000
    :cond_3b
    :try_start_4
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/fv;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v5

    .line 13000
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/DocumentContents;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "web_url"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3c
    :try_start_5
    const-string v6, "intent_data"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/appdatasearch/DocumentContents;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v5

    if-eqz v5, :cond_2d

    iget-object v6, v5, Lcom/google/android/gms/appdatasearch/DocumentSection;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    iget-object v5, v5, Lcom/google/android/gms/appdatasearch/DocumentSection;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/appindexing/a;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/a;

    move-result-object v2

    const-string v5, "app_uri"

    invoke-virtual {v2}, Lcom/google/android/gms/appindexing/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_8

    .line 14000
    :catch_1
    move-exception v2

    const/4 v2, 0x5

    :try_start_6
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    .line 15000
    :catch_2
    move-exception v2

    const/4 v2, 0x4

    :try_start_7
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_8

    .line 0
    :cond_3d
    const-string v2, "u_sd"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->r:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p2, Lcom/google/android/gms/internal/fz;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 16000
    :catch_3
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_a

    .line 2000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    .line 3000
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
