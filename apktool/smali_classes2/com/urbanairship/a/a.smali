.class public final Lcom/urbanairship/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/urbanairship/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 76
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/urbanairship/a/a;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/urbanairship/a/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 51
    :cond_0
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/a/a;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    sget-object v0, Lcom/urbanairship/a/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/a/a;->a:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/urbanairship/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
