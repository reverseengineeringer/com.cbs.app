.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$8;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 525
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$8;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/cbs/app/cast/VolumeDialogFragment;

    invoke-direct {v1}, Lcom/cbs/app/cast/VolumeDialogFragment;-><init>()V

    .line 528
    const-string v2, "fragment_volume"

    invoke-virtual {v1, v0, v2}, Lcom/cbs/app/cast/VolumeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 529
    return-void
.end method
