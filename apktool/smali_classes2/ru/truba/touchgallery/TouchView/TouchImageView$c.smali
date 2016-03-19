.class final Lru/truba/touchgallery/TouchView/TouchImageView$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/truba/touchgallery/TouchView/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lru/truba/touchgallery/TouchView/TouchImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 511
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$c;->a:Ljava/lang/ref/WeakReference;

    .line 513
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->performClick()Z

    .line 518
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->h(Lru/truba/touchgallery/TouchView/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->h(Lru/truba/touchgallery/TouchView/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 519
    :cond_0
    return-void
.end method
