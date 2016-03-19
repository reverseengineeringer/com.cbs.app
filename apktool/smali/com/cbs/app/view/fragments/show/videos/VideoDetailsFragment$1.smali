.class final Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 74
    return-void
.end method
