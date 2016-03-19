.class final Lcom/cbs/app/cast/CBSMiniController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSMiniController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSMiniController;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSMiniController;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cbs/app/cast/CBSMiniController$2;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$2;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 181
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/cbs/app/cast/VolumeDialogFragment;

    invoke-direct {v1}, Lcom/cbs/app/cast/VolumeDialogFragment;-><init>()V

    .line 183
    const-string v2, "fragment_volume"

    invoke-virtual {v1, v0, v2}, Lcom/cbs/app/cast/VolumeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    return-void
.end method
