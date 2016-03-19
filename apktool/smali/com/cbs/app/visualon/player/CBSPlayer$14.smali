.class final Lcom/cbs/app/visualon/player/CBSPlayer$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ay()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->o()V

    .line 1229
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1226
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->q()V

    goto :goto_0
.end method
