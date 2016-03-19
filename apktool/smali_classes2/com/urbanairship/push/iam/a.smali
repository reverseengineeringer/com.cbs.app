.class public final Lcom/urbanairship/push/iam/a;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/urbanairship/analytics/h;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/a;->a:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "in_app_display"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/urbanairship/push/iam/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v0, "conversion_send_id"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/analytics/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v2, "DisplayEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/urbanairship/push/iam/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
