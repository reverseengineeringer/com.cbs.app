.class final Lcom/cbs/app/service/ButtonServiceHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;


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
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->k()Z

    .line 197
    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p1}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    const/4 v2, 0x0

    .line 200
    if-eqz v0, :cond_8

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/FavoriteShow;

    .line 202
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->f()Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 208
    :goto_0
    if-eqz v0, :cond_1

    .line 209
    invoke-static {v1}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Z)Z

    .line 212
    :cond_1
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->a()V

    .line 229
    :cond_2
    :goto_1
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->c()V

    .line 231
    :cond_3
    return-void

    .line 216
    :cond_4
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    const-string v2, "You already had this show added to My CBS"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 219
    :cond_5
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->b()V

    goto :goto_1

    .line 222
    :cond_6
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    const-string v2, "You already had this show added to My CBS"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 226
    :cond_7
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->b()V

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_0
.end method
