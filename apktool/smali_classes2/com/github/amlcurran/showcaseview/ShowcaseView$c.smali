.class final Lcom/github/amlcurran/showcaseview/ShowcaseView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method private constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;B)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 618
    :cond_0
    return-void
.end method
