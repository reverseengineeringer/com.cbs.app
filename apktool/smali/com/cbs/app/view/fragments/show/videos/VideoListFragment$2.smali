.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;
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
    .line 142
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d()V

    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a()V

    .line 212
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 149
    :cond_0
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 154
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 155
    if-eqz v0, :cond_5

    .line 158
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 164
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 165
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    .line 166
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 169
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    move-result v1

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 172
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Lcom/cbs/app/view/model/VideoData;

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 178
    aput-object v0, v3, v1

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->h(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    move-result v0

    if-le v0, v5, :cond_8

    .line 182
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a([Lcom/cbs/app/view/model/VideoData;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 192
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_7

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    .line 194
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    const/16 v1, 0x8ae

    if-ne v0, v1, :cond_7

    .line 196
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0, v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setSeasonSelection(I)V

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d()V

    .line 202
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a()V

    goto/16 :goto_0

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0, v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    goto :goto_2
.end method
