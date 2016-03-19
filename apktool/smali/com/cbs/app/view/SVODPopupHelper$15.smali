.class final Lcom/cbs/app/view/SVODPopupHelper$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 855
    iput-boolean p1, p0, Lcom/cbs/app/view/SVODPopupHelper$15;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 858
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 859
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->c:Z

    if-nez v0, :cond_2

    .line 860
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 861
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->k()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 862
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/view/SVODPopupHelper$15;->a:Z

    if-nez v0, :cond_1

    .line 863
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    .line 871
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upsell_dialog_seen"

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    const/4 v0, 0x1

    return v0

    .line 865
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->j()Z

    goto :goto_0

    .line 868
    :cond_2
    sput-boolean v1, Lcom/cbs/app/GlobalConstants;->c:Z

    goto :goto_0
.end method
