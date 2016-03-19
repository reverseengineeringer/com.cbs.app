.class final Lcom/adobe/mobile/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/e;->a:Ljava/lang/Object;

    return-void
.end method

.method protected static a()Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 67
    sget-object v1, Lcom/adobe/mobile/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ADB_LIFETIME_VALUE"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    :try_start_1
    monitor-exit v1

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    :try_start_2
    const-string v2, "Analytics - Error getting current lifetime value:(%s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method
