.class public Lcom/cbs/app/widget/ChannelTapImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/ChannelTapImageView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/GestureDetector;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/cbs/app/widget/ChannelTapImageView;->b:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/cbs/app/widget/ChannelTapImageView;->b:Landroid/content/Context;

    new-instance v2, Lcom/cbs/app/widget/ChannelTapImageView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/widget/ChannelTapImageView$a;-><init>(Lcom/cbs/app/widget/ChannelTapImageView;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/cbs/app/widget/ChannelTapImageView;->a:Landroid/view/GestureDetector;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/ChannelTapImageView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cbs/app/widget/ChannelTapImageView;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/widget/ChannelTapImageView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
