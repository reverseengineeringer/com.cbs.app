.class final Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;->a:Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;B)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;-><init>(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 109
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;->a:Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->a(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;)Landroid/view/View;

    move-result-object v1

    if-lez p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
