.class Lcom/mdialog/android/stream/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/stream/a;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/mdialog/android/stream/a;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    iput-object p2, p0, Lcom/mdialog/android/stream/a$2;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/mdialog/android/stream/a$2;->c:Ljava/lang/Integer;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    iget-object v2, p0, Lcom/mdialog/android/stream/a$2;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mdialog/android/stream/a;->a(Lcom/mdialog/android/stream/a;Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdialog/android/stream/a;->a(Lcom/mdialog/android/stream/a;Landroid/widget/Button;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$2;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/stream/a$2;->b:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/mdialog/android/stream/a$2;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$2;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
