.class final Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/player/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-static {v0}, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->a(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 45
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 46
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v2}, Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;->a(Z)V

    .line 54
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-static {v0, v2}, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->a(Lcom/cbs/app/player/SystemUiHiderHoneycomb;Z)Z

    .line 72
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-static {v1}, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->b(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    .line 61
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 62
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v4}, Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;->a:Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-static {v0, v4}, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->a(Lcom/cbs/app/player/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0
.end method
