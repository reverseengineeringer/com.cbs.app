.class public Lcom/mdialog/android/stream/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/mdialog/android/Stream$Type;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Lcom/mdialog/android/stream/c;


# direct methods
.method public constructor <init>(Lcom/mdialog/android/Stream$Type;Ljava/lang/Integer;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mdialog/android/stream/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mdialog/android/Stream$Type;",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/d;",
            ">;>;",
            "Lcom/mdialog/android/stream/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    .line 30
    iput-object p2, p0, Lcom/mdialog/android/stream/e;->b:Ljava/lang/Integer;

    .line 31
    iput-object p3, p0, Lcom/mdialog/android/stream/e;->c:Ljava/util/HashMap;

    .line 32
    iput-object p4, p0, Lcom/mdialog/android/stream/e;->d:Ljava/util/HashMap;

    .line 33
    iput-object p5, p0, Lcom/mdialog/android/stream/e;->e:Lcom/mdialog/android/stream/c;

    .line 34
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mdialog/android/stream/e;
    .locals 9

    .prologue
    .line 49
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mdialog/android/Stream$Type;->fromString(Ljava/lang/String;)Lcom/mdialog/android/Stream$Type;

    move-result-object v1

    .line 50
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 51
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v0, "events"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "events"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 56
    const-string v5, "start"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const-string v5, "start"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 58
    const-string v7, "start"

    const-string v8, "tracking"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    const-string v5, "complete"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    const-string v5, "complete"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 62
    const-string v7, "complete"

    const-string v8, "tracking"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    const-string v5, "heartbeat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    const-string v5, "heartbeat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 66
    const-string v5, "heartbeats"

    const-string v7, "tracking"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    const-string v0, "pre_roll"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const-string v0, "pre_roll"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    const-string v5, "stream_time_events"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    const-string v5, "stream_time_events"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    sget-object v5, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    invoke-static {v0, v5}, Lcom/mdialog/android/stream/c;->a(Lorg/json/JSONObject;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;

    move-result-object v5

    .line 78
    :goto_0
    new-instance v0, Lcom/mdialog/android/stream/e;

    invoke-direct/range {v0 .. v5}, Lcom/mdialog/android/stream/e;-><init>(Lcom/mdialog/android/Stream$Type;Ljava/lang/Integer;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mdialog/android/stream/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v5, v6

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 40
    const-string v2, "\nduration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/e;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 41
    const-string v2, "\ntrackingUrls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
