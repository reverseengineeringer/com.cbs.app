.class final Lcom/adobe/mobile/n;
.super Lcom/adobe/mobile/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/n$a;
    }
.end annotation


# instance fields
.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/mobile/m;-><init>()V

    .line 135
    return-void
.end method

.method protected static h()V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcom/adobe/mobile/ae;->e()Lcom/adobe/mobile/m;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/adobe/mobile/n;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, v1, Lcom/adobe/mobile/m;->g:I

    invoke-static {}, Lcom/adobe/mobile/am;->v()I

    move-result v2

    if-eq v0, v2, :cond_0

    move-object v0, v1

    .line 271
    check-cast v0, Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 272
    check-cast v0, Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 274
    :cond_2
    check-cast v1, Lcom/adobe/mobile/n;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected final b(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/mobile/m;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 67
    const-string v2, "Messages - Unable to create alert message \"%s\", payload is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    const-string v2, "Messages - Unable to create alert message \"%s\", payload is required"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_2
    :try_start_1
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/mobile/n;->k:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/adobe/mobile/n;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 79
    const-string v2, "Messages - Unable to create alert message \"%s\", title is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    const-string v2, "Messages - Unable to create alert message \"%s\", title is required"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_3
    :try_start_2
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/mobile/n;->l:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/adobe/mobile/n;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 91
    const-string v2, "Messages - Unable to create alert message \"%s\", content is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 96
    :catch_2
    move-exception v2

    const-string v2, "Messages - Unable to create alert message \"%s\", content is required"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 101
    :cond_4
    :try_start_3
    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/mobile/n;->n:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/adobe/mobile/n;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 103
    const-string v2, "Messages - Unable to create alert message \"%s\", confirm is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 108
    :catch_3
    move-exception v2

    const-string v2, "Messages - Unable to create alert message \"%s\", confirm is required"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    :cond_5
    :try_start_4
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/mobile/n;->o:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/adobe/mobile/n;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_6

    .line 115
    const-string v2, "Messages - Unable to create alert message \"%s\", cancel is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 120
    :catch_4
    move-exception v2

    const-string v2, "Messages - Unable to create alert message \"%s\", cancel is required"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    :try_start_5
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/mobile/n;->m:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_1
    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 129
    :catch_5
    move-exception v2

    const-string v2, "Messages - Tried to read url for alert message but found none.  This is not a required field"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/mobile/n;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/n;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/n;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/mobile/n;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    invoke-super {p0}, Lcom/adobe/mobile/m;->d()V

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    new-instance v1, Lcom/adobe/mobile/n$a;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/n$a;-><init>(Lcom/adobe/mobile/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
