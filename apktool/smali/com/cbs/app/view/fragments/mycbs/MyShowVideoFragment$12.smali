.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 275
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 277
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "CBS"

    const-string v2, "Unable to add show at this time, please try again later."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->e(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->f(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->f(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;

    .line 231
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 234
    new-instance v2, Lcom/cbs/app/view/model/FavoriteShow;

    invoke-direct {v2}, Lcom/cbs/app/view/model/FavoriteShow;-><init>()V

    .line 235
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v2, v4, v5}, Lcom/cbs/app/view/model/FavoriteShow;->setCbsShowId(J)V

    .line 236
    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->h(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 244
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->f()V

    .line 247
    iget-object v1, v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    sget-object v0, Lcom/cbs/app/analytics/Action;->a:Lcom/cbs/app/analytics/Action;

    .line 251
    const-string v1, "MyCBSAdd"

    invoke-virtual {v0, v1}, Lcom/cbs/app/analytics/Action;->setName(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 254
    const-string v2, "appState"

    const-string v3, "cbscom:My CBS"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "from"

    const-string v3, "My CBS"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "events"

    const-string v3, "event83"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->j(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 269
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "CBS"

    const-string v2, "Unable to add this show at this time, please try again later."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
