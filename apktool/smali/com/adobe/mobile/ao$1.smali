.class final Lcom/adobe/mobile/ao$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/ao;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/ao;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADBMOBILE_PERSISTED_MID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/ao;->a(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADBMOBILE_PERSISTED_MID_HINT"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/ao;->b(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADBMOBILE_PERSISTED_MID_BLOB"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADBMOBILE_VISITORID_TTL"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adobe/mobile/ao;->a(Lcom/adobe/mobile/ao;J)J

    .line 95
    iget-object v0, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADBMOBILE_VISITORID_SYNC"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adobe/mobile/ao;->b(Lcom/adobe/mobile/ao;J)J
    :try_end_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {v1, v6}, Lcom/adobe/mobile/ao;->a(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {v1, v6}, Lcom/adobe/mobile/ao;->b(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/adobe/mobile/ao$1;->a:Lcom/adobe/mobile/ao;

    invoke-static {v1, v6}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    const-string v1, "Visitor - Unable to check for stored visitor ID due to context error (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
