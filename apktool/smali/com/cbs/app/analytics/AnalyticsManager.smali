.class public final Lcom/cbs/app/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    const-string v1, "network"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v2, "campaign"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 340
    const-string v0, "na"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 256
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->getTrackThroughCampaign()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "events"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const-string v1, "campaign"

    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->getTrackThroughCampaign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    invoke-static {p0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "thirdPartyCampaign"

    invoke-static {p0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_1
    invoke-static {}, Lcom/cbs/app/analytics/impl/KochavaService;->getAttributionData()Ljava/lang/String;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 269
    invoke-static {v1}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v4, "eVar73"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v4, "eVar74"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v4, "evar_73"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "evar_74"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    :goto_0
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->getMvpdIdForTracking()Ljava/lang/String;

    move-result-object v1

    .line 1312
    if-eqz v1, :cond_2

    .line 1313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|mvpd"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    const-string v3, "evar_45"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string v3, "eVar45"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_2
    const-string v1, "mycbs_show_count"

    const/4 v3, -0x1

    invoke-static {p0, v1, v3}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1379
    if-nez v1, :cond_a

    .line 1380
    const-string v1, "evar_61"

    const-string v3, "No Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v1, "prop_61"

    const-string v3, "No Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string v1, "eVar61"

    const-string v3, "No Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v1, "eProp61"

    const-string v3, "No Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1400
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    const-string v3, "evar_69"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    const-string v3, "prop_69"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const-string v3, "eVar69"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    const-string v3, "eProp69"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string v3, "UserId"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    const-string v3, "\'evar_15"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string v3, "prop_15"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const-string v3, "eVar15"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string v3, "eProp15"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string v3, "LoginStatus"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CBS_U"

    invoke-static {p0, v1, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    if-eqz v1, :cond_f

    .line 1432
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1433
    array-length v3, v1

    if-le v3, v5, :cond_f

    .line 1434
    aget-object v0, v1, v2

    .line 1435
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1436
    array-length v4, v3

    if-le v4, v5, :cond_4

    .line 1437
    aget-object v0, v3, v5

    .line 1438
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_4
    aget-object v1, v1, v5

    .line 1441
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1442
    array-length v3, v3

    if-le v3, v5, :cond_e

    .line 1443
    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1447
    :goto_2
    const-string v3, ""

    .line 1448
    if-eqz v1, :cond_d

    .line 1452
    :goto_3
    if-eqz v0, :cond_6

    .line 1453
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1460
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1461
    const-string v0, "eVar16"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    const-string v0, "eProp16"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    const-string v0, "evar_16"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string v0, "prop_16"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    :cond_7
    :goto_4
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2366
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 2367
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 2369
    :goto_5
    if-eqz v0, :cond_8

    .line 2370
    const-string v0, "evar_75"

    const-string v1, "chromecast:on"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    const-string v0, "prop_75"

    const-string v1, "chromecast:on"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    const-string v0, "eVar75"

    const-string v1, "chromecast:on"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    const-string v0, "eProp75"

    const-string v1, "chromecast:on"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_8
    return-object p1

    .line 280
    :cond_9
    const-string v1, "eVar73"

    const-string v3, "na"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "eVar74"

    const-string v3, "na"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "evar_73"

    const-string v3, "na"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "evar_74"

    const-string v3, "na"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1386
    :cond_a
    if-lez v1, :cond_3

    .line 1387
    const-string v1, "evar_61"

    const-string v3, "Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string v1, "prop_61"

    const-string v3, "Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string v1, "eVar61"

    const-string v3, "Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string v1, "eProp61"

    const-string v3, "Shows Added"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1417
    :cond_b
    const-string v0, ";"

    .line 1418
    const-string v1, "\'evar_15"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anon"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const-string v1, "prop_15"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anon"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    const-string v1, "eVar15"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anon"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    const-string v1, "eProp15"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anon"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_5

    :cond_d
    move-object v1, v3

    goto/16 :goto_3

    :cond_e
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_f
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    invoke-static {}, Lcom/cbs/app/analytics/impl/OmnitureService;->a()V

    .line 91
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Landroid/app/Application;)V

    .line 92
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Landroid/app/Application;)V

    .line 93
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/FlurryService;->a(Landroid/app/Application;)V

    .line 94
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/NewHockeyAppService;->a(Landroid/app/Application;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/OmnitureService;->a(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->a()V

    .line 110
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Landroid/content/Context;)V

    .line 111
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/FlurryService;->a(Landroid/content/Context;)V

    move-object v0, p0

    .line 112
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/urbanairship/analytics/c;->a(Landroid/app/Activity;)V

    .line 113
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/NewHockeyAppService;->a(Landroid/content/Context;)V

    .line 115
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    const-string v0, "show_events"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p0, p2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 152
    invoke-static {p0, p1, v0}, Lcom/cbs/app/analytics/impl/OmnitureService;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 153
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->b()V

    .line 154
    invoke-static {p1, v0}, Lcom/cbs/app/analytics/impl/FlurryService;->a(Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 157
    sget-object v1, Lcom/cbs/app/analytics/Action;->S:Lcom/cbs/app/analytics/Action;

    invoke-virtual {p1, v1}, Lcom/cbs/app/analytics/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/cbs/app/analytics/Action;->T:Lcom/cbs/app/analytics/Action;

    invoke-virtual {p1, v1}, Lcom/cbs/app/analytics/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {p0, p1, v0}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 164
    :cond_0
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->getTrackThroughCampaign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "events"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/uri/UriHandler;->setTrackThroughCampaign(Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-static {p0, p1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;)V

    .line 170
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v1, "install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 351
    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 352
    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v2, "device_id_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 358
    const-string v0, "na"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 234
    if-eqz p0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/OmnitureService;->b(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->c()V

    .line 238
    invoke-static {}, Lcom/cbs/app/analytics/impl/KochavaService;->a()V

    .line 239
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/FlurryService;->b(Landroid/content/Context;)V

    .line 240
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/NewHockeyAppService;->b(Landroid/content/Context;)V

    .line 242
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/urbanairship/analytics/c;->b(Landroid/app/Activity;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 184
    invoke-static {p0, p1, v0}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 185
    invoke-static {p1, v0}, Lcom/cbs/app/analytics/impl/FlurryService;->a(Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 187
    invoke-static {p0, p1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;)V

    .line 188
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 474
    const/4 v1, 0x0

    .line 475
    if-eqz p0, :cond_2

    .line 476
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CBS_U"

    invoke-static {p0, v0, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_2

    .line 480
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 481
    array-length v0, v2

    if-le v0, v5, :cond_2

    .line 482
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 483
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 484
    array-length v4, v3

    if-le v4, v5, :cond_0

    .line 485
    aget-object v0, v3, v5

    .line 486
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    aget-object v2, v2, v5

    .line 490
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 491
    array-length v4, v3

    if-le v4, v5, :cond_1

    .line 492
    aget-object v2, v3, v5

    .line 493
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 494
    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 497
    new-instance v1, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;

    invoke-direct {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 502
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p0, p2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 207
    invoke-static {p1, v0}, Lcom/cbs/app/analytics/impl/FlurryService;->a(Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 209
    invoke-static {p0, p1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;)V

    .line 211
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p0, p1, p2}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 226
    invoke-static {p0, p1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;)V

    .line 228
    return-void
.end method
