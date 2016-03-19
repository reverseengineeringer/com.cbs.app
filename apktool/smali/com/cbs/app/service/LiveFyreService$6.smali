.class final Lcom/cbs/app/service/LiveFyreService$6;
.super Lcom/c/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/LiveFyreService;->getPageContent()V
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
    .line 353
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-direct {p0}, Lcom/c/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 404
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

    .line 405
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;)V

    .line 406
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 355
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 358
    :try_start_0
    const-string v0, "authors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v1, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    :try_start_1
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v1, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :goto_1
    :try_start_2
    const-string v0, "meta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    .line 376
    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 377
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cbs/app/service/LiveFyreService;->b(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 383
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v1, v0, Lcom/cbs/app/service/LiveFyreService;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/cbs/app/service/LiveFyreService;->e:I

    .line 384
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsedPageCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v1, v1, Lcom/cbs/app/service/LiveFyreService;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pages: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v1, v1, Lcom/cbs/app/service/LiveFyreService;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v0, v0, Lcom/cbs/app/service/LiveFyreService;->e:I

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget v1, v1, Lcom/cbs/app/service/LiveFyreService;->f:I

    if-ne v0, v1, :cond_1

    .line 387
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageContentLength2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, v1, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, v1, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v2}, Lcom/cbs/app/service/LiveFyreService;->c(Lcom/cbs/app/service/LiveFyreService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 390
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageContentLength3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, v1, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->d(Lcom/cbs/app/service/LiveFyreService;)V

    .line 392
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->e(Lcom/cbs/app/service/LiveFyreService;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 393
    new-instance v1, Lcom/cbs/app/service/LiveFyreService$6$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/service/LiveFyreService$6$1;-><init>(Lcom/cbs/app/service/LiveFyreService$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    :cond_1
    return-void

    .line 362
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authors not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 380
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta or last not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
