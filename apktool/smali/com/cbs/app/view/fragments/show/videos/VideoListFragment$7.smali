.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/model/VideoData;)V
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
    .line 593
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    .line 598
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 603
    :goto_0
    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p1, p4, p5, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V

    .line 612
    :goto_1
    return-void

    .line 607
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->e()Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0, p1, p3, p4, p5}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Lcom/cbs/app/view/model/VideoData;IJ)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
