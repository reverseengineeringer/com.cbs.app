.class final Lcom/cbs/app/service/LiveFyreService$a;
.super Lcom/c/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/LiveFyreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/LiveFyreService;


# direct methods
.method public constructor <init>(Lcom/cbs/app/service/LiveFyreService;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-direct {p0}, Lcom/c/a/a/e;-><init>()V

    .line 831
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 921
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure3: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 923
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 917
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 927
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure5: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 928
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 929
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 835
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "streamer onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 840
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    .line 844
    :goto_0
    if-eqz v5, :cond_6

    .line 845
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :try_start_1
    const-string v0, "states"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    .line 852
    :goto_1
    if-eqz v4, :cond_5

    .line 853
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "states: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    .line 855
    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 857
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 860
    :try_start_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 864
    :goto_3
    if-eqz v0, :cond_0

    instance-of v7, v0, Lorg/json/JSONObject;

    if-eqz v7, :cond_0

    .line 865
    check-cast v0, Lorg/json/JSONObject;

    .line 866
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "comment222: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v1}, Lcom/cbs/app/service/LiveFyreService;->g(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 868
    :try_start_3
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v8, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v8, v8, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v1, v8, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v8

    .line 869
    const/4 v1, 0x1

    .line 870
    if-nez v8, :cond_1

    .line 871
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 872
    iget-object v8, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v8, v8, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 874
    :cond_1
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 842
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    goto/16 :goto_0

    .line 850
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "states not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto :goto_1

    .line 862
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v7, "key not found"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_3

    :cond_2
    move v0, v1

    .line 880
    :goto_4
    :try_start_4
    const-string v1, "authors"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 881
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v3, v1}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 887
    :goto_5
    :try_start_5
    const-string v1, "maxEventId"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 888
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;

    .line 889
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-----------> lastEventId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v3}, Lcom/cbs/app/service/LiveFyreService;->h(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 894
    :goto_6
    if-eqz v0, :cond_4

    .line 895
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->g(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 897
    :try_start_6
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v4}, Lcom/cbs/app/service/LiveFyreService;->c(Lcom/cbs/app/service/LiveFyreService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    move v0, v2

    .line 899
    :goto_7
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-ge v0, v3, :cond_3

    .line 901
    :try_start_7
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 902
    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 899
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 883
    :catch_3
    move-exception v1

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "authors not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 891
    :catch_4
    move-exception v1

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "maxEventId not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 904
    :catch_5
    move-exception v3

    :try_start_8
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 907
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_3
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 908
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->d(Lcom/cbs/app/service/LiveFyreService;)V

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$a;->a:Lcom/cbs/app/service/LiveFyreService;

    iput-boolean v2, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 911
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto :goto_6
.end method
