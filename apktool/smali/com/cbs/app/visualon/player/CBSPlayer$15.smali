.class final Lcom/cbs/app/visualon/player/CBSPlayer$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 1236
    if-nez p1, :cond_1

    .line 1237
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ay()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->j()V

    .line 1241
    :cond_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->o()V

    .line 1244
    :cond_1
    return-void
.end method
