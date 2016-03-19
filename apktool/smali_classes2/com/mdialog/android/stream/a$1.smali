.class Lcom/mdialog/android/stream/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/stream/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/stream/a;


# direct methods
.method constructor <init>(Lcom/mdialog/android/stream/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdialog/android/stream/a;->a(Lcom/mdialog/android/stream/a;Z)V

    .line 160
    iget-object v0, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->a(Lcom/mdialog/android/stream/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->b(Lcom/mdialog/android/stream/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 161
    iget-object v0, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    sput-object v0, Lcom/mdialog/android/stream/ClickThroughActivity;->a:Lcom/mdialog/android/stream/a;

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->d(Lcom/mdialog/android/stream/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const-string v1, "com.mdialog.android.stream.ClickThroughActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "clickThroughUrl"

    iget-object v2, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v2}, Lcom/mdialog/android/stream/a;->e(Lcom/mdialog/android/stream/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/mdialog/android/stream/a$1;->a:Lcom/mdialog/android/stream/a;

    invoke-static {v1}, Lcom/mdialog/android/stream/a;->d(Lcom/mdialog/android/stream/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method
