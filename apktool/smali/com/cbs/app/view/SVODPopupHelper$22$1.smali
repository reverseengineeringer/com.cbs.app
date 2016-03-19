.class final Lcom/cbs/app/view/SVODPopupHelper$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper$22;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SVODPopupHelper$22;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SVODPopupHelper$22;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$22$1;->a:Lcom/cbs/app/view/SVODPopupHelper$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$22$1;->a:Lcom/cbs/app/view/SVODPopupHelper$22;

    iget-object v0, v0, Lcom/cbs/app/view/SVODPopupHelper$22;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 372
    return-void
.end method
