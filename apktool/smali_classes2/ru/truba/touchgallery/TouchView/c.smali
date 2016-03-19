.class public Lru/truba/touchgallery/TouchView/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    .line 30
    return-void
.end method

.method public static a(Landroid/view/MotionEvent;)Lru/truba/touchgallery/TouchView/c;
    .locals 1

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Lru/truba/touchgallery/TouchView/a;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/a;-><init>(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lru/truba/touchgallery/TouchView/c;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/c;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private static c(I)V
    .locals 2

    .prologue
    .line 74
    if-lez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pointer index for Donut/Cupcake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lru/truba/touchgallery/TouchView/c;->c(I)V

    .line 1047
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 52
    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public b(I)F
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lru/truba/touchgallery/TouchView/c;->c(I)V

    .line 1056
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 61
    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/c;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method
