.class final Lru/truba/touchgallery/TouchView/TouchImageView$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/truba/touchgallery/TouchView/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lru/truba/touchgallery/TouchView/TouchImageView;


# direct methods
.method private constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$b;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;B)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lru/truba/touchgallery/TouchView/TouchImageView$b;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$b;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->g(Lru/truba/touchgallery/TouchView/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method
