.class final Lcom/urbanairship/analytics/e;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/analytics/h;-><init>(J)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "app_background"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :try_start_0
    const-string v0, "connection_type"

    invoke-static {}, Lcom/urbanairship/analytics/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-static {}, Lcom/urbanairship/analytics/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "connection_subtype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    const-string v0, "push_id"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/analytics/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v2, "AppBackgroundEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
