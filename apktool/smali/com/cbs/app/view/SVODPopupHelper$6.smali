.class final Lcom/cbs/app/view/SVODPopupHelper$6;
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
    .line 653
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 657
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Z)Z

    .line 658
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 659
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "svod_launch_upsell_product_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "product id not found"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
