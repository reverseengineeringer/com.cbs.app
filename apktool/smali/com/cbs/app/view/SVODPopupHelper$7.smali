.class final Lcom/cbs/app/view/SVODPopupHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$7;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 673
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Z)Z

    .line 674
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Z)Z

    .line 675
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Landroid/content/Context;)V

    .line 676
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$7;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 677
    return-void
.end method
