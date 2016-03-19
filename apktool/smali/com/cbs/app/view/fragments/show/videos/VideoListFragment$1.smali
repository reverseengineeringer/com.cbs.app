.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d()V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a()V

    .line 139
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/support/v7/app/AppCompatActivity;)Landroid/support/v7/app/AppCompatActivity;

    .line 104
    :cond_0
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->b(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->c(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 106
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 109
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 110
    if-eqz v0, :cond_2

    .line 111
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 113
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "videoList clip response size :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/cbs/app/view/model/VideoData;

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 118
    aput-object v0, v2, v1

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a([Lcom/cbs/app/view/model/VideoData;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 130
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d()V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a()V

    .line 132
    return-void

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    goto :goto_1
.end method
