.class final Lcom/cbs/app/view/SVODPopupHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 600
    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 601
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Z)Z

    .line 602
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->j()Z

    .line 603
    return-void
.end method
