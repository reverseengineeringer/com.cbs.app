.class Lcom/mdialog/android/stream/ClickThroughActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdialog/android/stream/ClickThroughActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/stream/ClickThroughActivity;


# direct methods
.method constructor <init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->g(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    const-string v2, "md_and_btn_forward_focus.png"

    invoke-static {v1, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 299
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->g(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity$8;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    const-string v2, "md_and_btn_forward.png"

    invoke-static {v1, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
