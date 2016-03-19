.class final Lcom/cbs/app/service/LiveFyreService$5;
.super Lcom/c/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/LiveFyreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/LiveFyreService;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/LiveFyreService;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-direct {p0}, Lcom/c/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;)V

    .line 237
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iput-object p1, v2, Lcom/cbs/app/service/LiveFyreService;->b:Lorg/json/JSONObject;

    .line 191
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    const-string v3, "collectionSettings"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/service/LiveFyreService;->d:Lorg/json/JSONObject;

    .line 195
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v2, v2, Lcom/cbs/app/service/LiveFyreService;->d:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->d:Lorg/json/JSONObject;

    const-string v4, "collectionId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/service/LiveFyreService;->a(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v2}, Lcom/cbs/app/service/LiveFyreService;->a(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collectionId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v3}, Lcom/cbs/app/service/LiveFyreService;->a(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->d:Lorg/json/JSONObject;

    const-string v4, "archiveInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;

    .line 205
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v2, v2, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 207
    :try_start_1
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v3, v3, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;

    const-string v4, "nPages"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/cbs/app/service/LiveFyreService;->f:I

    .line 208
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v3, v3, Lcom/cbs/app/service/LiveFyreService;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    .line 214
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v4, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v4, v4, Lcom/cbs/app/service/LiveFyreService;->d:Lorg/json/JSONObject;

    const-string v5, "event"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v2}, Lcom/cbs/app/service/LiveFyreService;->a(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_2
    move v1, v0

    .line 224
    :goto_3
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 225
    if-nez v1, :cond_3

    .line 226
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;)V

    .line 232
    :goto_4
    return-void

    .line 200
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "collectionSettings not found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 211
    :catch_1
    move-exception v2

    :try_start_4
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nPages not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    goto :goto_1

    .line 219
    :cond_2
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 229
    :cond_3
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$5;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->getPageContent()V

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_2
.end method
