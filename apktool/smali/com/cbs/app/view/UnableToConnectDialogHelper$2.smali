.class final Lcom/cbs/app/view/UnableToConnectDialogHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a()Z

    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 75
    iget-object v0, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->c:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;->a:Landroid/app/Dialog;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 77
    :cond_0
    return-void
.end method
