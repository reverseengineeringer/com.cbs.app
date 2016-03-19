.class Lcom/mdialog/android/stream/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/stream/a;

.field private final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/mdialog/android/stream/a;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/stream/a$3;->a:Lcom/mdialog/android/stream/a;

    iput-object p2, p0, Lcom/mdialog/android/stream/a$3;->b:Landroid/view/ViewGroup;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mdialog/android/stream/a$3;->a:Lcom/mdialog/android/stream/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mdialog/android/stream/a;->a(Lcom/mdialog/android/stream/a;Z)V

    .line 229
    iget-object v0, p0, Lcom/mdialog/android/stream/a$3;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/stream/a$3;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/stream/a$3;->b:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mdialog/android/stream/a$3;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$3;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_0
    return-void
.end method
