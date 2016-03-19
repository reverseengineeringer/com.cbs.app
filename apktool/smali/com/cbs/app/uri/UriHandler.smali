.class public final Lcom/cbs/app/uri/UriHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/uri/UriHandler$GetShowIdAsyncTask;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/cbs/app/uri/UriHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/uri/UriHandler;->a:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/uri/UriHandler;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/cbs/app/uri/UriHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 638
    .line 639
    if-eqz p0, :cond_0

    .line 640
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 642
    const-string v4, "outside_campaign_last_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 644
    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 645
    const-string v2, "outside_campaign"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 584
    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 585
    check-cast p0, Lcom/cbs/app/view/NavigationActivity;

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;ZZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 565
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;-><init>()V

    .line 566
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 567
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 568
    const-string v2, "isClassic"

    iget-object v3, p1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    const-string v4, "Classic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    if-eqz p2, :cond_1

    .line 570
    const-string v2, "selectedVideoId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 579
    const-string v1, "fragment_show_home"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 581
    return-void

    .line 571
    :cond_1
    if-eqz p5, :cond_2

    .line 572
    const-string v2, "showCast"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 573
    :cond_2
    if-eqz p3, :cond_3

    .line 574
    const-string v2, "showPhotos"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 575
    :cond_3
    if-eqz p4, :cond_0

    .line 576
    const-string v2, "tvPlus"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 69
    .line 70
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deep link: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_f

    const-string v1, "cbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1123
    const-string v0, "campaign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1125
    invoke-static {p0, v11}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Z)V

    .line 1427
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_2a

    .line 1429
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1430
    array-length v1, v0

    if-lez v1, :cond_2a

    .line 1431
    array-length v1, v0

    if-le v1, v4, :cond_0

    .line 1432
    array-length v1, v0

    invoke-static {v0, v7, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1127
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1128
    aget-object v1, v0, v3

    .line 1129
    if-eqz v1, :cond_d

    .line 1130
    const-string v2, "connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, v0

    if-le v2, v11, :cond_4

    .line 1131
    aget-object v1, v0, v11

    .line 1133
    const-string v2, "shows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-le v1, v4, :cond_3

    .line 1134
    aget-object v0, v0, v4

    .line 1139
    :goto_1
    invoke-static {p0, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 1213
    :goto_2
    sput-object v6, Lcom/cbs/app/uri/UriHandler;->b:Ljava/lang/String;

    .line 1625
    if-eqz p0, :cond_1

    .line 1626
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1627
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1629
    const-string v1, "outside_campaign"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1630
    const-string v1, "outside_campaign_last_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1632
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    move v3, v11

    .line 90
    :cond_2
    :goto_3
    invoke-static {p0, v10}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return v3

    :cond_3
    move-object v0, v10

    .line 1136
    goto :goto_1

    .line 1140
    :cond_4
    const-string v2, "shows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    array-length v2, v0

    if-le v2, v11, :cond_a

    .line 1143
    aget-object v1, v0, v11

    .line 1149
    array-length v2, v0

    if-le v2, v4, :cond_27

    .line 1151
    aget-object v2, v0, v4

    .line 1153
    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1156
    array-length v2, v0

    if-le v2, v7, :cond_29

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "path[3]:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    aget-object v0, v0, v7

    .line 1160
    :goto_4
    if-eqz v0, :cond_28

    .line 1165
    :goto_5
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v10

    :cond_5
    move-object v2, v0

    move v4, v3

    move v5, v3

    :goto_6
    move-object v0, p0

    .line 1178
    invoke-static/range {v0 .. v5}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v11

    goto :goto_2

    .line 1169
    :cond_6
    const-string v0, "photos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v2, v10

    move v4, v3

    move v5, v3

    move v3, v11

    .line 1170
    goto :goto_6

    .line 1171
    :cond_7
    const-string v0, "connect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Live Feeds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v2, v10

    move v4, v11

    move v5, v3

    .line 1172
    goto :goto_6

    .line 1173
    :cond_9
    const-string v0, "cast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move-object v2, v10

    move v4, v3

    move v5, v11

    .line 1174
    goto :goto_6

    .line 1179
    :cond_a
    const-string v0, "live-tv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1180
    if-eqz p0, :cond_d

    .line 1181
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;-><init>()V

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b()Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    move-result-object v0

    .line 1182
    const-string v1, "fragment_live_tv"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1186
    :cond_b
    const-string v0, "all-access"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1188
    if-eqz p0, :cond_d

    .line 1189
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1190
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1191
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1192
    invoke-static {v11}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1193
    invoke-static {p0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1199
    :cond_c
    sget-object v0, Lcom/cbs/app/analytics/Action;->bt:Lcom/cbs/app/analytics/Action;

    .line 1200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1201
    const-string v2, "events"

    const-string v4, "event19"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    :cond_d
    move v11, v3

    .line 1206
    goto/16 :goto_2

    .line 1207
    :cond_e
    sget-object v0, Lcom/cbs/app/analytics/Action;->bt:Lcom/cbs/app/analytics/Action;

    .line 1208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1209
    const-string v2, "events"

    const-string v4, "event19"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move v11, v3

    goto/16 :goto_2

    .line 76
    :cond_f
    if-eqz v0, :cond_22

    const-string v1, "cbs-svod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2237
    invoke-static {p0, v11}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Z)V

    .line 2239
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2241
    if-eqz v0, :cond_18

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2243
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    if-eqz v0, :cond_10

    .line 2246
    new-instance v1, Lcom/cbs/app/uri/UriHandler$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/uri/UriHandler$1;-><init>(Landroid/content/Context;)V

    .line 2269
    new-instance v2, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 2270
    invoke-interface {v2, p0, v0, v1}, Lcom/cbs/app/service/AuthService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 2272
    :cond_10
    const-string v0, "showId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2274
    const-string v1, "demoContentId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2275
    const-string v4, "page"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2276
    if-eqz v4, :cond_16

    .line 2277
    const-string v1, "livetv"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2279
    if-eqz p0, :cond_11

    .line 2280
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;-><init>()V

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b()Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    move-result-object v0

    .line 2281
    const-string v1, "fragment_live_tv"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_11
    move v3, v11

    .line 2283
    goto/16 :goto_3

    .line 2284
    :cond_12
    const-string v1, "home"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2286
    if-eqz p0, :cond_13

    .line 2592
    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_13

    move-object v0, p0

    .line 2593
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2594
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    :cond_13
    move v3, v11

    .line 2289
    goto/16 :goto_3

    .line 2290
    :cond_14
    const-string v1, "svod-login"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2292
    if-eqz p0, :cond_2

    .line 2294
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 2295
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 2296
    invoke-static {v11}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 2298
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 2299
    const-string v0, "CBS ALL ACCESS Sign In"

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2302
    :cond_15
    const-string v1, "show"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2304
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 2305
    if-eqz v1, :cond_26

    move-object v0, p0

    move-object v2, v10

    move v4, v3

    move v5, v3

    .line 2306
    invoke-static/range {v0 .. v5}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;ZZZ)V

    :goto_7
    move v3, v11

    .line 2309
    goto/16 :goto_3

    .line 2312
    :cond_16
    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    .line 2314
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 2315
    if-eqz v1, :cond_25

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2316
    invoke-static/range {v0 .. v5}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;ZZZ)V

    :goto_8
    move v3, v11

    .line 2319
    goto/16 :goto_3

    :cond_17
    if-eqz v1, :cond_2

    .line 2320
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 2321
    new-instance v2, Lcom/cbs/app/uri/UriHandler$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/uri/UriHandler$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto/16 :goto_3

    .line 2341
    :cond_18
    if-eqz v0, :cond_19

    const-string v1, "svod-login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2343
    if-eqz p0, :cond_2

    .line 2345
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 2346
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 2347
    invoke-static {v11}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 2349
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 2350
    const-string v0, "CBS ALL ACCESS Sign In"

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2352
    :cond_19
    if-eqz v0, :cond_1b

    const-string v1, "livetv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2354
    if-eqz p0, :cond_1a

    .line 2355
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;-><init>()V

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b()Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    move-result-object v0

    .line 2356
    const-string v1, "fragment_live_tv"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_1a
    move v3, v11

    .line 2358
    goto/16 :goto_3

    .line 2359
    :cond_1b
    if-eqz v0, :cond_1d

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2361
    if-eqz p0, :cond_1c

    .line 2362
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/HomeFragment;-><init>()V

    .line 2363
    new-instance v1, Lcom/cbs/app/service/HomeServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/HomeServiceImpl;-><init>()V

    .line 2365
    invoke-interface {v1}, Lcom/cbs/app/service/HomeService;->getHomePhotoData()[Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v1

    .line 2366
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2367
    const-string v3, "homeMarquee"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2369
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2370
    const-string v1, "fragment_cbs_home"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_1c
    move v3, v11

    .line 2372
    goto/16 :goto_3

    .line 2373
    :cond_1d
    if-eqz v0, :cond_1f

    const-string v1, "showhome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2375
    if-eqz p0, :cond_1e

    .line 2376
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2377
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2378
    array-length v1, v0

    if-lez v1, :cond_1e

    .line 2379
    aget-object v5, v0, v11

    .line 2382
    array-length v1, v0

    if-le v1, v11, :cond_24

    .line 2383
    aget-object v6, v0, v4

    .line 2385
    :goto_9
    array-length v1, v0

    if-le v1, v4, :cond_23

    .line 2386
    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2388
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vals:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object v4, p0

    move v8, v3

    move v9, v3

    .line 2389
    invoke-static/range {v4 .. v9}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    :cond_1e
    move v3, v11

    .line 2392
    goto/16 :goto_3

    .line 2393
    :cond_1f
    if-eqz v0, :cond_2

    const-string v1, "tos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2395
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2396
    if-eqz v0, :cond_2

    .line 2398
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://cbsi.secure.force.com/CBSi/articles/FAQ/mThird-Party-Social-Networking-Services?template=template_mobilepp&referer=mobilepp.com&data=&cfs=default"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2402
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2403
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 2405
    :cond_20
    const-string v1, "terms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://cbsi.secure.force.com/CBSi/articles/FAQ/CBSi-Terms-of-Use?template=template_tougl&referer=tougl.com&data=&cfs=default"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2409
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2410
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 2412
    :cond_21
    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://cbsi.secure.force.com/CBSi/articles/FAQ/Privacy-Policy?categories=CBS_Interactive%3AmPrivacy&template=template_mobilePrivacy&referer=mobileprivacy.com&data=&cfs=default"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2416
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2417
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 81
    :cond_22
    sget-object v0, Lcom/cbs/app/analytics/Action;->bt:Lcom/cbs/app/analytics/Action;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    const-string v2, "events"

    const-string v4, "event19"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "error"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_23
    move v7, v3

    goto/16 :goto_a

    :cond_24
    move-object v6, v10

    goto/16 :goto_9

    :cond_25
    move v11, v3

    goto/16 :goto_8

    :cond_26
    move v11, v3

    goto/16 :goto_7

    :cond_27
    move-object v2, v10

    move v4, v3

    move v5, v3

    goto/16 :goto_6

    :cond_28
    move-object v0, v10

    goto/16 :goto_5

    :cond_29
    move-object v0, v10

    goto/16 :goto_4

    :cond_2a
    move-object v0, v10

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 497
    .line 498
    if-eqz p1, :cond_0

    .line 502
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 506
    :goto_0
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 508
    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 509
    if-eqz p1, :cond_0

    move-object v0, p0

    move v5, v3

    .line 510
    invoke-static/range {v0 .. v5}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;ZZZ)V

    .line 512
    sget-object v0, Lcom/cbs/app/analytics/Action;->bt:Lcom/cbs/app/analytics/Action;

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 514
    const-string v3, "events"

    const-string v5, "event19"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v3, "Connect"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v3, "ShowTitle"

    iget-object v5, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v3, "showId"

    iget-wide v6, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "cbscom:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static {p0, v0, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move v3, v4

    .line 531
    :cond_0
    return v3

    .line 504
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 442
    .line 443
    if-eqz p1, :cond_4

    .line 444
    invoke-static {p0, p1}, Lcom/cbs/app/uri/UriHandler;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 447
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 451
    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showItem: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 454
    invoke-static/range {v0 .. v5}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;ZZZ)V

    .line 456
    sget-object v0, Lcom/cbs/app/analytics/Action;->bt:Lcom/cbs/app/analytics/Action;

    .line 457
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 458
    const-string v3, "appState"

    const-string v4, "cbscom:Splash Page"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v3, "events"

    const-string v4, "event19"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v3, "ShowTitle"

    iget-object v4, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v3, "showId"

    iget-wide v4, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    if-eqz p4, :cond_1

    .line 463
    const-string v3, "TvPlus"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_0
    if-eqz p3, :cond_2

    .line 468
    const-string v3, "Photos"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :goto_1
    if-eqz p5, :cond_3

    .line 474
    const-string v3, "showCast"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :goto_2
    if-eqz p2, :cond_0

    .line 479
    const-string v3, "cid"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_0
    const-string v3, "seoTitle"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {p0, v0, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move v0, v6

    .line 492
    :goto_3
    return v0

    .line 465
    :cond_1
    const-string v3, "TvPlus"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_2
    const-string v3, "Photos"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 476
    :cond_3
    const-string v3, "showCast"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 535
    const-wide/16 v2, 0x0

    .line 537
    new-instance v0, Lcom/cbs/app/uri/UriHandler$GetShowIdAsyncTask;

    invoke-direct {v0, p0}, Lcom/cbs/app/uri/UriHandler$GetShowIdAsyncTask;-><init>(Landroid/content/Context;)V

    .line 538
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/cbs/app/uri/UriHandler$GetShowIdAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 550
    const/4 v1, 0x0

    .line 552
    const-wide/16 v4, 0x1770

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/cbs/app/uri/UriHandler$GetShowIdAsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :goto_0
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 560
    :goto_1
    return-wide v0

    .line 554
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    .line 556
    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_0
    move-wide v0, v2

    goto :goto_1
.end method

.method public static getTrackThroughCampaign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/cbs/app/uri/UriHandler;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setTrackThroughCampaign(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    sput-object p0, Lcom/cbs/app/uri/UriHandler;->b:Ljava/lang/String;

    .line 621
    return-void
.end method
