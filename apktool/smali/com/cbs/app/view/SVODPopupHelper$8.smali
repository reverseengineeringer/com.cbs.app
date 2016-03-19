.class final Lcom/cbs/app/view/SVODPopupHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/cbs/app/view/SVODPopupHelper$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 709
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 710
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->k()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 711
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 712
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upsell_dialog_seen"

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/SVODPopupHelper$8;->a:Z

    if-nez v0, :cond_0

    .line 714
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->j()Z

    goto :goto_0
.end method
