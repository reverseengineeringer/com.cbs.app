.class final Lcom/cbs/app/view/NielsenDialogActivity$2;
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
    .line 66
    iput-object p1, p0, Lcom/cbs/app/view/NielsenDialogActivity$2;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$2;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NielsenDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/cbs/app/view/NielsenDialogActivity$2;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    const v2, 0x7f080259

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/NielsenDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/cbs/app/view/NielsenDialogActivity$2;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    const-string v3, "Terms of Service"

    invoke-virtual {v2, v0, v1, v3}, Lcom/cbs/app/view/NielsenDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
