.class final Lcom/cbs/app/view/NielsenDialogActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/NielsenDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/view/NielsenDialogActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NielsenDialogActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cbs/app/view/NielsenDialogActivity$6;->b:Lcom/cbs/app/view/NielsenDialogActivity;

    iput-object p2, p0, Lcom/cbs/app/view/NielsenDialogActivity$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    return-void
.end method
