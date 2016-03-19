.class final Lcom/urbanairship/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 2

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    const-string v0, "Failed to call ADM. Make sure ADM jar is not bundled with the APK."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method
