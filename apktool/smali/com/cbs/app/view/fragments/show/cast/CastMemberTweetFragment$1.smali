.class final Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->f()V

    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->h:Z

    .line 73
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;

    .line 53
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->getRecentTweetList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->getRecentTweetList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->getRecentTweetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/RecentTweet;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/RecentTweet;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;[Lcom/cbs/app/view/model/RecentTweet;)[Lcom/cbs/app/view/model/RecentTweet;

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->h:Z

    .line 65
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->e()V

    .line 66
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/cbs/app/view/model/RecentTweet;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;[Lcom/cbs/app/view/model/RecentTweet;)[Lcom/cbs/app/view/model/RecentTweet;

    goto :goto_0
.end method
