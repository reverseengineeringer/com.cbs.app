.class final Lcom/cbs/app/view/SVODPopupHelper$5;
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
    .line 636
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 640
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Z)Z

    .line 641
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 642
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CBS ALL ACCESS Sign In"

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    return-void
.end method
