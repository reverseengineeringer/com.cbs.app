.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0, p2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Landroid/view/View;)Landroid/view/View;

    .line 111
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 112
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/fragments/show/model/ShowItem;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 115
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 121
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 122
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/FavoriteShow;

    .line 124
    iget-wide v4, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 125
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 126
    const/4 v1, 0x1

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 133
    if-eqz v1, :cond_3

    .line 134
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 135
    new-instance v1, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v1}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 136
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->c(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-string v3, "favorite-shows"

    iget-wide v4, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    iget-object v4, v4, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/cbs/app/service/MyCBSService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 139
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 140
    new-instance v1, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v1}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-string v3, "favorite-shows"

    iget-wide v4, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    iget-object v4, v4, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method
