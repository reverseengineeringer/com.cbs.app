.class final Lcom/github/amlcurran/showcaseview/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/b;->a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/a$a;

.field final synthetic b:Lcom/github/amlcurran/showcaseview/b;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/b;Lcom/github/amlcurran/showcaseview/a$a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/b$2;->b:Lcom/github/amlcurran/showcaseview/b;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/b$2;->a:Lcom/github/amlcurran/showcaseview/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/b$2;->a:Lcom/github/amlcurran/showcaseview/a$a;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/a$a;->a()V

    .line 73
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
