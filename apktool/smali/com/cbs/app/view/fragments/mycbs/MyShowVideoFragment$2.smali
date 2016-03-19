.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;
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
    .line 517
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 558
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 560
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "CBS"

    const-string v2, "Unable to retrieve favorite list from CBS Server. Please try again later."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 520
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->e(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_5

    .line 522
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 523
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 524
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 525
    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;

    .line 527
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    if-eqz v0, :cond_2

    .line 531
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    const-string v2, "mycbs_show_count"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShowList;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;J)J

    .line 537
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a()V

    .line 554
    :cond_1
    :goto_1
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "mycbs_show_count"

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_1

    .line 541
    const-string v1, "mycbs_show_count"

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 542
    new-instance v1, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v1}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 543
    const-string v2, "favorite-shows"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->n:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_1

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 548
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "CBS"

    const-string v2, "Unable to retrieve favorite list from CBS Server. Please try again later."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 552
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "CBS"

    const-string v2, "Unable to retrieve favorite list from CBS Server. Please try again later."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
