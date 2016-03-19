.class public final Lcom/urbanairship/analytics/m;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/urbanairship/analytics/h;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/m;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/m;->b:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/urbanairship/analytics/m;->c:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/urbanairship/analytics/m;->d:Ljava/lang/String;

    .line 69
    iput-boolean p4, p0, Lcom/urbanairship/analytics/m;->e:Z

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "interactive_notification_action"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string v0, "send_id"

    iget-object v2, p0, Lcom/urbanairship/analytics/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "button_group"

    iget-object v2, p0, Lcom/urbanairship/analytics/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v0, "button_id"

    iget-object v2, p0, Lcom/urbanairship/analytics/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "button_description"

    iget-object v2, p0, Lcom/urbanairship/analytics/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v0, "foreground"

    iget-boolean v2, p0, Lcom/urbanairship/analytics/m;->e:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v2, "InteractiveNotificationEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
