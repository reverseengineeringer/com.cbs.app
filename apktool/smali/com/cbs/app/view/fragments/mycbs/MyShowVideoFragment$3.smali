.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;


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
    .line 566
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 600
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 601
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->e(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 573
    if-eqz p1, :cond_4

    .line 574
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;

    .line 575
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/FavoriteShowList;->getId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;J)J

    .line 576
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "list id: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->H(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 579
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "showList.size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 583
    :goto_1
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 584
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->w(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 585
    :goto_2
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 586
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user had local data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->K(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 587
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user was logged in: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->K(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    .line 589
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const-string v1, "Update to My CBS"

    const-string v2, "Good news! We\'ve improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com."

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->M(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->setUserHasSeenDialog(Landroid/content/Context;)V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a()V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 584
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method
