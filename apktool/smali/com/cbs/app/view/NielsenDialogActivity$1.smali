.class final Lcom/cbs/app/view/NielsenDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NielsenDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NielsenDialogActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NielsenDialogActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/view/NielsenDialogActivity$1;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/cbs/app/view/NielsenDialogActivity;->a()Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$1;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NielsenDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$1;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NielsenDialogActivity;->setResult(I)V

    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$1;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NielsenDialogActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method
