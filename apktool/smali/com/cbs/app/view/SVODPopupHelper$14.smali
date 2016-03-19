.class final Lcom/cbs/app/view/SVODPopupHelper$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 842
    iput-boolean p1, p0, Lcom/cbs/app/view/SVODPopupHelper$14;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 845
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 846
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upsell_dialog_seen"

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/SVODPopupHelper$14;->a:Z

    if-nez v0, :cond_0

    .line 848
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->j()Z

    goto :goto_0
.end method
