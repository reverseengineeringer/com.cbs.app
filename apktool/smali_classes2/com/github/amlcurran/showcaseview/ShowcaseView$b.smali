.class final Lcom/github/amlcurran/showcaseview/ShowcaseView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method private constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$b;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;B)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$b;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$b;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->f(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 626
    const/4 v0, 0x1

    return v0
.end method
