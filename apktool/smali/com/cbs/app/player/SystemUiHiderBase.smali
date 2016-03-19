.class public Lcom/cbs/app/player/SystemUiHiderBase;
.super Lcom/cbs/app/player/SystemUiHider;
.source "SourceFile"


# instance fields
.field private e:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/player/SystemUiHider;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->e:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x300

    .line 26
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 34
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 43
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v1}, Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;->a(Z)V

    .line 49
    iput-boolean v1, p0, Lcom/cbs/app/player/SystemUiHiderBase;->e:Z

    .line 50
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderBase;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v3}, Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;->a(Z)V

    .line 60
    iput-boolean v3, p0, Lcom/cbs/app/player/SystemUiHiderBase;->e:Z

    .line 61
    return-void
.end method
