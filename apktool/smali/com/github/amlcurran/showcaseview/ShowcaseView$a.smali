.class public final Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->b:Landroid/app/Activity;

    .line 396
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 397
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    sget-object v1, Lcom/github/amlcurran/showcaseview/a/a;->a:Lcom/github/amlcurran/showcaseview/a/a;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/a/a;)V

    .line 398
    return-void
.end method


# virtual methods
.method public final a(Lcom/github/amlcurran/showcaseview/a/a;)Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/a/a;)V

    .line 448
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 437
    return-object p0
.end method

.method public final a()Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V

    .line 407
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object v0
.end method

.method public final b()Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setStyle(I)V

    .line 456
    return-object p0
.end method

.method public final c()Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 487
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 488
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setHideOnTouchOutside(Z)V

    .line 489
    return-object p0
.end method
