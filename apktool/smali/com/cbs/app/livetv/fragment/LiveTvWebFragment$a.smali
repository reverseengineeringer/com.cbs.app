.class final Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;->a:Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;B)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 210
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;->a:Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;)Landroid/view/View;

    move-result-object v1

    if-lez p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void

    .line 210
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
