.class final Lcom/cbs/app/service/ButtonServiceHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/ButtonServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 242
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_3

    .line 243
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 244
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 245
    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_6

    .line 250
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/FavoriteShow;

    .line 253
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->f()Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 258
    :goto_0
    if-eqz v0, :cond_1

    .line 259
    invoke-static {v1}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Z)Z

    .line 261
    :cond_1
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->a()V

    .line 272
    :cond_2
    :goto_1
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->k()Z

    .line 279
    :cond_3
    :goto_2
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->c()V

    .line 280
    return-void

    .line 265
    :cond_4
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    const-string v2, "You already had this show added to My CBS"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 268
    :cond_5
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->b()V

    goto :goto_1

    .line 274
    :cond_6
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 275
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "favorite-shows"

    sget-object v3, Lcom/cbs/app/service/ButtonServiceHelper;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method
