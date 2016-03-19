.class final Lcom/cbs/app/view/NielsenDialogActivity$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/NielsenDialogActivity$a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/cbs/app/view/NielsenDialogActivity$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NielsenDialogActivity$a;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cbs/app/view/NielsenDialogActivity$a$1;->b:Lcom/cbs/app/view/NielsenDialogActivity$a;

    iput-object p2, p0, Lcom/cbs/app/view/NielsenDialogActivity$a$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$a$1;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$a$1;->b:Lcom/cbs/app/view/NielsenDialogActivity$a;

    iget-object v0, v0, Lcom/cbs/app/view/NielsenDialogActivity$a;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    iget-object v0, v0, Lcom/cbs/app/view/NielsenDialogActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    return-void
.end method
