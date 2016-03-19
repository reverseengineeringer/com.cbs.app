.class Lcom/mdialog/android/stream/ClickThroughActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/stream/ClickThroughActivity;
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
    iput-object p1, p0, Lcom/mdialog/android/stream/ClickThroughActivity$5;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$5;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 358
    return-void
.end method
