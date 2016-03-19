.class final Lcom/github/amlcurran/showcaseview/ShowcaseView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;->a:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setVisibility(I)V

    .line 324
    return-void
.end method
