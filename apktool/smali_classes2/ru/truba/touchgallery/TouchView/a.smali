.class public final Lru/truba/touchgallery/TouchView/a;
.super Lru/truba/touchgallery/TouchView/c;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lru/truba/touchgallery/TouchView/c;-><init>(Landroid/view/MotionEvent;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final b(I)F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
