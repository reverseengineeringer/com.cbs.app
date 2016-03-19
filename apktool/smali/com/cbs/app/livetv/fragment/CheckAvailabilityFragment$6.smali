.class final Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 535
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 536
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z

    .line 537
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Lcom/cbs/app/livetv/widget/ContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 538
    return-void
.end method
