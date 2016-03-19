.class public Lcom/cbs/app/androiddata/LG;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    .line 14
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_0
    return-void
.end method
