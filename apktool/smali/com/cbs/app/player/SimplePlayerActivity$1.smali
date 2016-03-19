.class final Lcom/cbs/app/player/SimplePlayerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/player/SimplePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/player/SimplePlayerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/player/SimplePlayerActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/player/SimplePlayerActivity$1;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$1;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$1;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-static {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->a(Lcom/cbs/app/player/SimplePlayerActivity;)V

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
