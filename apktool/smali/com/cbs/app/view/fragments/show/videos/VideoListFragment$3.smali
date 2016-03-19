.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;


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
    .line 214
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Lcom/cbs/app/view/model/VideoData;)V

    .line 219
    return-void
.end method
