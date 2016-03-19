.class public final Lcom/cbs/app/analytics/impl/KochavaService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/analytics/impl/KochavaService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/kochava/android/tracker/b;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/cbs/app/analytics/impl/KochavaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->a:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    .line 37
    sput-object v1, Lcom/cbs/app/analytics/impl/KochavaService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/cbs/app/analytics/impl/KochavaService;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/kochava/android/tracker/b;->c()V

    .line 149
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->b(Landroid/content/Context;)Lcom/kochava/android/tracker/b;

    .line 117
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->b(Landroid/content/Context;)Lcom/kochava/android/tracker/b;

    .line 121
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    invoke-virtual {v0}, Lcom/kochava/android/tracker/b;->b()V

    .line 122
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {v1}, Lcom/kochava/android/tracker/b;->a(Z)V

    .line 124
    invoke-static {v1}, Lcom/kochava/android/tracker/b;->b(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 5
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
    .line 130
    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->b(Landroid/content/Context;)Lcom/kochava/android/tracker/b;

    .line 133
    const-string v0, "{}"

    .line 134
    if-eqz p2, :cond_0

    .line 136
    :try_start_0
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    sget-object v1, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    invoke-virtual {v1, v2, v0}, Lcom/kochava/android/tracker/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    sget-object v3, Lcom/cbs/app/analytics/impl/KochavaService;->a:Ljava/lang/String;

    const-string v4, "processing exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/kochava/android/tracker/b;
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "kochava_app_id"

    const-string v2, "kocbs-video-amazon-dev55fb483bd06f2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    new-instance v1, Lcom/cbs/app/analytics/impl/KochavaService$a;

    invoke-direct {v1, p0}, Lcom/cbs/app/analytics/impl/KochavaService$a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/kochava/android/tracker/b;->a(Landroid/os/Handler;)V

    .line 104
    const-string v1, "flush_rate"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "request_attribution"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Lcom/kochava/android/tracker/b;

    invoke-direct {v1, p0, v0}, Lcom/kochava/android/tracker/b;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    sput-object v1, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    .line 108
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->b:Lcom/kochava/android/tracker/b;

    return-object v0

    .line 94
    :cond_1
    const-string v1, "kochava_app_id"

    const-string v2, "kocbs-video-android-dev55fb4942b4eb4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string v1, "kochava_app_id"

    const-string v2, "kocbs-kindle53beedea5da14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_3
    const-string v1, "kochava_app_id"

    const-string v2, "kocbsandroid87551e6d35e072ae"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/KochavaService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "click"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAttributionData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/analytics/impl/KochavaService;->c:Ljava/lang/String;

    return-object v0
.end method
