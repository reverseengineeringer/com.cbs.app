.class final Lcom/github/amlcurran/showcaseview/ShowcaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/a/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/a/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/a/a;Z)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->a:Lcom/github/amlcurran/showcaseview/a/a;

    iput-boolean p3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 166
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->a:Lcom/github/amlcurran/showcaseview/a/a;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/a/a;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z

    .line 169
    iget-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->b:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/a;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-interface {v1, v2, v0}, Lcom/github/amlcurran/showcaseview/a;->a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->c:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Landroid/graphics/Point;)V

    goto :goto_0
.end method
