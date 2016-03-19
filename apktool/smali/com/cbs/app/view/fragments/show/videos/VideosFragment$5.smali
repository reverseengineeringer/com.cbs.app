.class final Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/model/VideoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V
    .locals 4

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 907
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->J(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 912
    :cond_0
    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->K(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getPosition()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V

    .line 916
    sget-object v0, Lcom/cbs/app/analytics/Action;->bY:Lcom/cbs/app/analytics/Action;

    .line 917
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 918
    const-string v2, "events"

    const-string v3, "event91"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v2, "appState"

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v2, "ChromecastVideoTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 922
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 937
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->L(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g()V

    .line 927
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/model/VideoData;IJ)V

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;Lcom/cbs/app/view/model/VideoData;)Lcom/cbs/app/view/model/VideoData;

    .line 930
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0, p3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;I)I

    .line 931
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0, p4, p5}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;J)J

    .line 932
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i()V

    goto :goto_0
.end method
