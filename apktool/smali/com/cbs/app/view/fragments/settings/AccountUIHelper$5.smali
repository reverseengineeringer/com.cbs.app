.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$5;
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
    .line 509
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 513
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setLoginIsShowing(Z)V

    .line 514
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 515
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e(Landroid/content/Context;)V

    .line 516
    return-void
.end method
