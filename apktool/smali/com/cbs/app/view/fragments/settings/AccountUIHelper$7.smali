.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 531
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 532
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 533
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setLoginIsShowing(Z)V

    .line 534
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 535
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$7;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Z)V

    .line 536
    return-void
.end method
