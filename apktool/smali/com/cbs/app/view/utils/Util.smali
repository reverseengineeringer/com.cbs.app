.class public Lcom/cbs/app/view/utils/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/cbs/app/view/utils/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/Util;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 759
    const-string v1, "lastName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    if-eqz p0, :cond_0

    .line 773
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 774
    const-string v1, "cbs_base_uri"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    :cond_0
    return-object v0
.end method

.method public static C(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 795
    const-string v0, "TwitterConnectPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 797
    return-void
.end method

.method public static D(Landroid/content/Context;)Lcom/cbs/app/service/social/TwitterOAuthTokens;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 806
    const-string v1, "TwitterConnectPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 807
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    if-nez v2, :cond_0

    .line 814
    :goto_0
    return-object v0

    .line 811
    :cond_0
    const-string v3, "oauth_token_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 812
    const-string v4, "user_id"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 813
    const-string v5, "screen_name"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    new-instance v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/cbs/app/service/social/TwitterOAuthTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 818
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 819
    const-string v1, "facebook_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 832
    const-string v1, "google_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1092
    if-eqz p0, :cond_0

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1094
    if-eqz v1, :cond_0

    .line 1095
    const-string v2, "com.cbs.app"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    if-eqz v1, :cond_1

    .line 1100
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "com.amazon.venezia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    const/4 v0, 0x1

    .line 1105
    :cond_0
    return v0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public static H(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    if-eqz p0, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_0

    .line 1113
    const-string v2, "com.cbs.app"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    if-eqz v1, :cond_1

    .line 1118
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const/4 v0, 0x1

    .line 1123
    :cond_0
    return v0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1127
    const-string v1, "none"

    .line 1128
    if-eqz p0, :cond_0

    .line 1129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    const-string v2, "com.cbs.app"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_0

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static J(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1143
    const-string v0, "https://play.google.com/store/apps/details?id=com.cbs.app"

    .line 1145
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app"

    .line 1150
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1151
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1153
    return-void
.end method

.method public static K(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1471
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->R(Landroid/content/Context;)I

    move-result v0

    .line 1472
    sparse-switch v0, :sswitch_data_0

    .line 1483
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1474
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1480
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1472
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
        0x9 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1488
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->R(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static M(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1496
    if-eqz p0, :cond_0

    .line 1497
    const-string v0, "previousSeasonSelection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1499
    :cond_0
    return-void
.end method

.method public static N(Landroid/content/Context;)Landroid/location/Location;
    .locals 6

    .prologue
    .line 1544
    const/4 v0, 0x0

    .line 1546
    new-instance v1, Lcom/cbs/app/service/LocationServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/LocationServiceImpl;-><init>()V

    .line 1547
    check-cast p0, Landroid/app/Activity;

    .line 1548
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1550
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1551
    const-string v2, "cbsDebugUserLocationLatitude"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1552
    const-string v3, "cbsDebugUserLocationLongitude"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1554
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1556
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1557
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 1558
    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 1559
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1560
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1565
    :cond_0
    :goto_0
    return-object v0

    .line 1562
    :cond_1
    invoke-interface {v1, p0}, Lcom/cbs/app/service/LocationService;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public static O(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1595
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/view/DeepLinkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1596
    const-string v1, "mustfinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1597
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1598
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1600
    return-void
.end method

.method public static P(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1912
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    const-string v0, "cbs_amazon_phone_app"

    .line 1923
    :goto_0
    return-object v0

    .line 1914
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    const-string v0, "cbs_amazon_tablet_app"

    goto :goto_0

    .line 1916
    :cond_1
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1917
    const-string v0, "cbs_android_tablet_app"

    goto :goto_0

    .line 1919
    :cond_2
    const-string v0, "cbs_android_phone_app"

    goto :goto_0
.end method

.method public static Q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1927
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 1928
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static R(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 1457
    const/4 v1, -0x1

    .line 1458
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1459
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1464
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0xa0

    .line 137
    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 143
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;D)I
    .locals 5

    .prologue
    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 127
    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 132
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 112
    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    .line 118
    :cond_0
    return p1
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;ZJZ)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;ZJZ)",
            "Lcom/cbs/app/androiddata/ResponseModel;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1871
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v0

    .line 1873
    new-instance v1, Lcom/cbs/app/androiddata/RequestHelper;

    invoke-direct {v1, p0, p4, p3}, Lcom/cbs/app/androiddata/RequestHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1878
    invoke-virtual {v1, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setIsCbsEndpont(Z)V

    .line 1880
    if-eqz p1, :cond_0

    .line 1882
    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getCbsAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/androiddata/RequestHelper;->setCbsAppSecret(Ljava/lang/String;)V

    .line 1890
    :goto_0
    invoke-virtual {v1, v4}, Lcom/cbs/app/androiddata/RequestHelper;->setStaleOk(Z)V

    .line 1891
    const-wide/16 v2, 0xe10

    invoke-virtual {v1, v2, v3}, Lcom/cbs/app/androiddata/RequestHelper;->setTtl(J)V

    .line 1892
    invoke-virtual {v1, p5}, Lcom/cbs/app/androiddata/RequestHelper;->setUseCache(Z)V

    .line 1893
    invoke-virtual {v1, v4}, Lcom/cbs/app/androiddata/RequestHelper;->setShouldWeLogThisRequest(Z)V

    .line 1895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1896
    const-string v2, "GET"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1897
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1903
    invoke-virtual {v1, v0}, Lcom/cbs/app/androiddata/RequestHelper;->a([Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 1905
    return-object v0

    .line 1884
    :cond_0
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManager;->getDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;

    move-result-object v2

    .line 1885
    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getSyncbakAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakKey(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getSyncbakAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakSecret(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v1, v2}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    .line 1221
    rem-long v0, p0, v6

    .line 1222
    sub-long v2, p0, v0

    .line 1223
    div-long/2addr v2, v6

    .line 1224
    rem-long v4, v2, v6

    .line 1225
    sub-long/2addr v2, v4

    .line 1226
    div-long/2addr v2, v6

    .line 1227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/cbs/app/view/utils/Util;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/cbs/app/view/utils/Util;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCookieValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    const/4 v1, 0x0

    .line 1044
    if-eqz p0, :cond_2

    .line 1046
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1051
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 1052
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getCookieStore()Lcom/cbs/app/androiddata/PersistentCookieStore;

    move-result-object v0

    .line 1055
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/cbs/app/androiddata/PersistentCookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cookies size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1058
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 1059
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1060
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1061
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getCookieValue: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    .line 1063
    goto :goto_0

    .line 1066
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getCookieValue: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found nothing."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1087
    :cond_2
    :goto_2
    return-object v1

    .line 1069
    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/Episode;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 885
    const-string v0, ""

    .line 886
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t Miss "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getDisplay_airdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br/><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 889
    :cond_1
    if-eqz p0, :cond_2

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Watch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on CBS!<br/><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_2
    if-eqz p1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t Miss "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getDisplay_airdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 923
    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 924
    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v4

    .line 925
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;

    move-result-object v5

    .line 926
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getFacebookLink()Ljava/lang/String;

    move-result-object v6

    .line 927
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getTwitterLink()Ljava/lang/String;

    move-result-object v7

    .line 928
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getGooglePlusOne()Ljava/lang/String;

    move-result-object v8

    .line 929
    const-string v9, "Watch "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v9, " on CBS!"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    if-eqz v4, :cond_0

    .line 933
    const-string v9, "<br/><br/>"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :cond_0
    if-eqz v5, :cond_1

    .line 937
    const-string v4, "<br/><br/>Buy "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v4, "!<br/><br/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_1
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-eqz v8, :cond_4

    .line 943
    :cond_2
    const-string v4, "<br/><br/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    const-string v4, "See "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v3, " on social platforms!<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    if-eqz v6, :cond_3

    .line 949
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 953
    :cond_3
    if-eqz v7, :cond_f

    .line 954
    if-eqz v1, :cond_5

    .line 955
    const-string v1, "<br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :goto_1
    if-eqz v8, :cond_4

    .line 963
    if-eqz v0, :cond_6

    .line 964
    const-string v0, "<br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 957
    :cond_5
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 966
    :cond_6
    const-string v0, "<br/><br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 971
    :cond_7
    if-eqz p0, :cond_8

    .line 972
    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 974
    const-string v3, " Watch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v0, " on CBS!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    if-eqz v1, :cond_4

    .line 978
    const-string v0, "<br/><br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 981
    :cond_8
    if-eqz p1, :cond_4

    .line 982
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;

    move-result-object v4

    .line 984
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getFacebookLink()Ljava/lang/String;

    move-result-object v5

    .line 985
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getTwitterLink()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getGooglePlusOne()Ljava/lang/String;

    move-result-object v7

    .line 987
    if-eqz v4, :cond_9

    .line 988
    const-string v8, "<br/><br/>Buy "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v8, "!<br/><br/>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :cond_9
    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-eqz v7, :cond_4

    .line 994
    :cond_a
    const-string v4, "<br/><br/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v4, "See "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v3, " on social platforms!<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    if-eqz v5, :cond_b

    .line 1000
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 1004
    :cond_b
    if-eqz v6, :cond_e

    .line 1005
    if-eqz v1, :cond_c

    .line 1006
    const-string v1, "<br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :goto_5
    if-eqz v7, :cond_4

    .line 1014
    if-eqz v0, :cond_d

    .line 1015
    const-string v0, "<br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1008
    :cond_c
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1017
    :cond_d
    const-string v0, "<br/><br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method private static a(Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/cbs/app/view/model/ShowConfig;->getAmazonBuyLink()Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {p0}, Lcom/cbs/app/view/model/ShowConfig;->getVuduBuyLink()Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-virtual {p0}, Lcom/cbs/app/view/model/ShowConfig;->getItunesBuyLink()Ljava/lang/String;

    move-result-object v2

    .line 903
    const/4 v3, 0x0

    .line 904
    if-eqz v0, :cond_0

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 911
    :goto_0
    return-object v0

    .line 906
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 907
    goto :goto_0

    .line 908
    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 909
    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1027
    const-string v0, ""

    .line 1028
    if-eqz p0, :cond_1

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Watch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!<br/><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1503
    const-string v1, "0"

    .line 1504
    if-eqz p0, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1534
    const-string v1, "0"

    .line 1539
    :cond_0
    :goto_0
    return-object v1

    .line 1510
    :pswitch_0
    const-string v1, "2"

    goto :goto_0

    .line 1514
    :pswitch_1
    const-string v1, "1"

    .line 1516
    invoke-virtual {p0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getPackageInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 1517
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1518
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/registration/PackageInfo;

    .line 1519
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageStatus()Ljava/lang/String;

    move-result-object v0

    .line 1520
    const-string v2, "TRIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    const-string v0, "5"

    :goto_1
    move-object v1, v0

    .line 1523
    goto :goto_0

    .line 1527
    :pswitch_2
    const-string v1, "3"

    goto :goto_0

    .line 1531
    :pswitch_3
    const-string v1, "4"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 1507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1195
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1196
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1197
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1198
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Posted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 852
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 855
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    const/4 v0, 0x5

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 860
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 861
    return-object v0

    .line 857
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1204
    .line 1206
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1207
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1208
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1210
    :try_start_1
    const-string v1, "0 minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    const-string v0, "Just Now"
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1216
    :cond_0
    :goto_0
    return-object v0

    .line 1214
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    :goto_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1271
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 1272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1273
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1274
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1275
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1277
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 1278
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    .line 1279
    if-ltz v1, :cond_0

    const/16 v4, 0xb

    if-gt v1, v4, :cond_0

    .line 1280
    aget-object v0, v3, v1

    .line 1282
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1283
    const-string v3, "Wednes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1284
    const-string v1, "Wed"

    .line 1286
    :cond_1
    const-string v3, "Satur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1287
    const-string v1, "Sat"

    .line 1289
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1290
    const-string v4, "January"

    const-string v5, "Jan"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v4, "February"

    const-string v5, "Feb"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string v4, "March"

    const-string v5, "March"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string v4, "April"

    const-string v5, "April"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v4, "May"

    const-string v5, "May"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v4, "June"

    const-string v5, "June"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string v4, "July"

    const-string v5, "July"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string v4, "August"

    const-string v5, "Aug"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string v4, "September"

    const-string v5, "Sept"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string v4, "October"

    const-string v5, "Oct"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string v4, "November"

    const-string v5, "Nov"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string v4, "December"

    const-string v5, "Dec"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1303
    if-eqz p0, :cond_3

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tonight at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on CBS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1308
    :goto_0
    return-object v0

    .line 1306
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on CBS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1237
    if-eqz p0, :cond_0

    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0b00e9

    invoke-direct {v0, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1241
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1242
    const v3, 0x7f03005d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1243
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1245
    new-instance v0, Lcom/cbs/app/view/utils/Util$1;

    invoke-direct {v0}, Lcom/cbs/app/view/utils/Util$1;-><init>()V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1252
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1254
    new-instance v1, Lcom/cbs/app/view/utils/Util$2;

    invoke-direct {v1, v0}, Lcom/cbs/app/view/utils/Util$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1265
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 332
    sget-object v0, Lcom/cbs/app/analytics/Action;->cj:Lcom/cbs/app/analytics/Action;

    .line 334
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 335
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move-object v0, p0

    .line 339
    check-cast v0, Landroid/app/Activity;

    .line 340
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-string v2, "sku_intent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/16 v2, 0x309

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    const-string v0, "TwitterConnectPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 782
    const-string v2, "oauth_token"

    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 783
    const-string v2, "oauth_token_secret"

    const-string v0, "oauth_token_secret"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    const-string v2, "screen_name"

    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 785
    const-string v2, "user_id"

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 786
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 787
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 625
    if-eqz p0, :cond_0

    .line 626
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    const-string v1, "upgradable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 631
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;ZJZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;ZJZ)V"
        }
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v2

    .line 1816
    new-instance v3, Lcom/cbs/app/androiddata/ServerRequestTask;

    invoke-direct {v3, p0, p7, p6}, Lcom/cbs/app/androiddata/ServerRequestTask;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1821
    invoke-virtual {v3, p1}, Lcom/cbs/app/androiddata/ServerRequestTask;->setIsCbsEndpont(Z)V

    .line 1823
    if-eqz p1, :cond_0

    .line 1824
    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getCbsAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cbs/app/androiddata/ServerRequestTask;->setCbsAppSecret(Ljava/lang/String;)V

    .line 1832
    :goto_0
    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Lcom/cbs/app/androiddata/ServerRequestTask;->setTtl(J)V

    .line 1833
    move/from16 v0, p11

    invoke-virtual {v3, v0}, Lcom/cbs/app/androiddata/ServerRequestTask;->setStaleOk(Z)V

    .line 1834
    invoke-virtual {v3, p8}, Lcom/cbs/app/androiddata/ServerRequestTask;->setUseCache(Z)V

    .line 1835
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cbs/app/androiddata/ServerRequestTask;->setShouldWeLogThisRequest(Z)V

    .line 1845
    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1846
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/cbs/app/androiddata/ServerRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1860
    :goto_1
    return-void

    .line 1826
    :cond_0
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/androiddata/DataManager;->getDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;

    move-result-object v4

    .line 1827
    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getSyncbakAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cbs/app/androiddata/ServerRequestTask;->setSyncbakKey(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->getSyncbakAppSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cbs/app/androiddata/ServerRequestTask;->setSyncbakSecret(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v3, v4}, Lcom/cbs/app/androiddata/ServerRequestTask;->setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V

    goto :goto_0

    .line 1852
    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v4, 0x2

    aput-object p4, v2, v4

    const/4 v4, 0x3

    aput-object p5, v2, v4

    invoke-virtual {v3, v2}, Lcom/cbs/app/androiddata/ServerRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static a(Lcom/cbs/app/view/NavigationActivity;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;)V
    .locals 5

    .prologue
    .line 1697
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;-><init>()V

    .line 1698
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1699
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1700
    const-string v2, "isClassic"

    iget-object v3, p1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    const-string v4, "Classic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1701
    const-string v2, "selectedVideo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1702
    const-string v2, "dontShowPlayer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1703
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 1704
    const-string v1, "fragment_show_home"

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->e()V

    .line 1706
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 181
    if-eqz v1, :cond_0

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_0
    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 517
    if-eqz p0, :cond_0

    .line 518
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 522
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 523
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 801
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Configuration;)Z
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    if-eqz p0, :cond_0

    .line 445
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 449
    :cond_0
    return v0
.end method

.method private static a([B)[B
    .locals 5

    .prologue
    .line 1724
    array-length v0, p0

    new-array v1, v0, [B

    .line 1726
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1727
    sget-object v2, Lcom/cbs/app/GlobalConstants;->a:[B

    array-length v2, v2

    rem-int v2, v0, v2

    .line 1728
    aget-byte v3, p0, v0

    sget-object v4, Lcom/cbs/app/GlobalConstants;->a:[B

    aget-byte v2, v4, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_0

    .line 155
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 156
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 158
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1233
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1156
    const-string v0, ""

    .line 1157
    if-eqz p0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v0

    .line 1159
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " E"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    :cond_0
    return-object v0

    .line 1159
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1161
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 871
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 872
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 874
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 880
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 881
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 876
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 600
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 602
    const-string v1, "ab_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 603
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    return-void
.end method

.method public static b(Landroid/content/res/Configuration;)Z
    .locals 3

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    if-eqz p0, :cond_0

    .line 455
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 459
    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_0

    .line 169
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 170
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 172
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static c(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1175
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1181
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1182
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1183
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1184
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Aired "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    .line 1188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Posted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1608
    const-string v1, "fragment_cbs_home"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Home"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1609
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->d:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1639
    :cond_1
    :goto_0
    return-object v0

    .line 1610
    :cond_2
    const-string v1, "fragment_show_browse_search"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1611
    sget-object v0, Lcom/cbs/app/analytics/Action;->n:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1612
    :cond_3
    const-string v1, "ShowBrowse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1613
    sget-object v0, Lcom/cbs/app/analytics/Action;->m:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1614
    :cond_4
    const-string v1, "fragment_show_home"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Shows"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1615
    :cond_5
    sget-object v0, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1616
    :cond_6
    const-string v1, "fragment_show_videos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1617
    sget-object v0, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1618
    :cond_7
    const-string v1, "fragment_show_photos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1619
    sget-object v0, Lcom/cbs/app/analytics/Action;->k:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_8
    const-string v1, "fragment_show_cast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1621
    sget-object v0, Lcom/cbs/app/analytics/Action;->l:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1622
    :cond_9
    const-string v1, "fragment_show_connect"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1623
    sget-object v0, Lcom/cbs/app/analytics/Action;->bu:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1624
    :cond_a
    const-string v1, "fragment_live_tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1625
    sget-object v0, Lcom/cbs/app/analytics/Action;->A:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1626
    :cond_b
    const-string v1, "fragment_schedule"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Schedule"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1627
    :cond_c
    sget-object v0, Lcom/cbs/app/analytics/Action;->v:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1628
    :cond_d
    const-string v1, "fragment_my_cbs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "My CBS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1629
    :cond_e
    sget-object v0, Lcom/cbs/app/analytics/Action;->z:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1630
    :cond_f
    const-string v1, "fragment_my_shows_cbs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1631
    sget-object v0, Lcom/cbs/app/analytics/Action;->y:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1632
    :cond_10
    const-string v1, "recently_watched_fragment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1633
    sget-object v0, Lcom/cbs/app/analytics/Action;->x:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1634
    :cond_11
    const-string v1, "settings_fragment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "Settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1635
    :cond_12
    sget-object v0, Lcom/cbs/app/analytics/Action;->p:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 649
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    const-string v1, "liveFyreToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    return-void
.end method

.method public static c(Landroid/content/res/Configuration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 507
    const/4 v1, 0x0

    .line 508
    if-eqz p0, :cond_0

    .line 509
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 513
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1677
    const-string v0, "http/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fg=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    const-string v0, "http/"

    const-string v1, "http:/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1680
    :cond_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manufacturer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "codename: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 225
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "density: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 233
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 235
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 261
    invoke-static {p0, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    .line 263
    invoke-static {p0, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    .line 265
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 283
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 295
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 304
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 666
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    const-string v1, "cbs_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 669
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 670
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1719
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1720
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 718
    if-eqz p0, :cond_0

    .line 719
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    const-string v1, "installer_override"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 724
    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 311
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 739
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 741
    const-string v1, "cbs_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 742
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 319
    const/4 v1, 0x0

    .line 320
    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 322
    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_0

    .line 326
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 751
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 753
    const-string v1, "firstName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    if-eqz p0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 369
    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 373
    :cond_0
    return v0
.end method

.method public static getCurrentDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 866
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 867
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 764
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 765
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 766
    const-string v1, "lastName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 768
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 377
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 824
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 826
    const-string v1, "facebook_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 828
    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 384
    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 388
    :cond_0
    return v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 837
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 838
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    const-string v1, "google_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    return-void
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    if-eqz p0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 395
    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 399
    :cond_0
    return v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1644
    .line 1645
    if-eqz p0, :cond_0

    .line 1647
    const-string v0, "cbs_base_uri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    if-eqz p1, :cond_0

    .line 1650
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1658
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1659
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1661
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1673
    :cond_0
    :goto_0
    return-object p1

    .line 1663
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1668
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 409
    :cond_0
    return v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 413
    const/4 v1, 0x0

    .line 414
    if-eqz p0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 419
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 532
    if-eqz p0, :cond_0

    .line 533
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 538
    :cond_0
    return v0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    if-eqz p0, :cond_0

    .line 544
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v0, 0x1

    .line 549
    :cond_0
    return v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 565
    if-eqz p0, :cond_0

    .line 2607
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2608
    const-string v2, "ab_type"

    const-string v3, "A"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_0

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 571
    :cond_0
    return v0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 580
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 586
    const-string v1, "last_soft_start"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 588
    return-void
.end method

.method public static q(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 591
    .line 592
    if-eqz p0, :cond_0

    .line 593
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 594
    const-string v3, "last_soft_start"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 596
    :cond_0
    return-wide v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 620
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 621
    const-string v1, "mycbs_exported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 634
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 635
    const-string v1, "upgradable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setMyCBSExported(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 612
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    const-string v1, "mycbs_exported"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    return-void
.end method

.method public static setNielsonDialogShownParam(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 682
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 683
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    const-string v1, "nielson_dialog_already_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 686
    return-void
.end method

.method public static setUserHasSeenDialog(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 699
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    .line 701
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 702
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has_seen_dialog_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 639
    .line 640
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBS_COM"

    invoke-static {p0, v1, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    if-eqz v1, :cond_0

    .line 642
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 643
    const-string v2, "liveFyreToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    return-object v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    .line 657
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBS_COM"

    invoke-static {p0, v1, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    if-eqz v1, :cond_0

    .line 659
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 660
    const-string v2, "cbs_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_0
    return-object v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 675
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    const-string v1, "nielson_dialog_already_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 677
    return v0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 689
    .line 690
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_0

    .line 692
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "has_seen_dialog_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 695
    :cond_0
    return v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 709
    .line 710
    if-eqz p0, :cond_0

    .line 711
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 712
    const-string v2, "installer_override"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    :cond_0
    return-object v0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 727
    .line 728
    if-eqz p0, :cond_0

    .line 729
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBS_COM"

    invoke-static {p0, v1, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_0

    .line 731
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 732
    const-string v2, "cbs_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_0
    return-object v0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 746
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 747
    const-string v1, "firstName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
