.class final Lcom/github/amlcurran/showcaseview/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/b;->a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/a$b;

.field final synthetic b:Lcom/github/amlcurran/showcaseview/b;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/b;Lcom/github/amlcurran/showcaseview/a$b;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/b$1;->b:Lcom/github/amlcurran/showcaseview/b;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/b$1;->a:Lcom/github/amlcurran/showcaseview/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/b$1;->a:Lcom/github/amlcurran/showcaseview/a$b;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/a$b;->a()V

    .line 45
    return-void
.end method
