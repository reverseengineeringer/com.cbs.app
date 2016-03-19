.class public final Lcom/urbanairship/push/iam/e;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/urbanairship/analytics/h;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/urbanairship/push/iam/e;->a:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/urbanairship/push/iam/e;->b:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/a/c;J)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v1, "type"

    const-string v2, "button_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "button_id"

    invoke-virtual {p2}, Lcom/urbanairship/push/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "button_group"

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "display_time"

    invoke-static {p3, p4}, Lcom/urbanairship/push/iam/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p2}, Lcom/urbanairship/push/a/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "button_description"

    invoke-virtual {p2}, Lcom/urbanairship/push/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    :goto_0
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 109
    :cond_1
    invoke-virtual {p2}, Lcom/urbanairship/push/a/c;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    const-string v1, "button_description"

    invoke-virtual {p2}, Lcom/urbanairship/push/a/c;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v1, "type"

    const-string v2, "direct_open"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static a(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v1, "type"

    const-string v2, "message_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static a(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v1, "type"

    const-string v2, "replaced"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "replacement_id"

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static b(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string v1, "type"

    const-string v2, "expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "expiry"

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/urbanairship/d/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static b(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    const-string v1, "type"

    const-string v2, "user_dismissed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static c(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/e;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v1, "type"

    const-string v2, "timed_out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Lcom/urbanairship/push/iam/e;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "in_app_resolution"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/urbanairship/push/iam/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "resolution"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/urbanairship/push/iam/e;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
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

    .line 219
    :goto_0
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v2, "ResolutionEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
