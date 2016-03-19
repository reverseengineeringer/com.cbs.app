.class final Lcom/cbs/app/view/fragments/HomeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a()V

    .line 124
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->f()Ljava/lang/String;

    .line 84
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_3

    .line 85
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 86
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->f()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video list size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/VideoData;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a([Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 94
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->f()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "video list size2: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->g()Z

    .line 96
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 100
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getMycbsShows()Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Ljava/util/List;)V

    .line 116
    :goto_2
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a()V

    goto :goto_2

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
