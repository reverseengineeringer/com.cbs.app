.class final Lcom/urbanairship/analytics/l;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/urbanairship/analytics/h;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/urbanairship/analytics/l;->a:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "install_attribution"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    const-string v0, "google_play_referrer"

    iget-object v2, p0, Lcom/urbanairship/analytics/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v2, "InstallAttributionEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
