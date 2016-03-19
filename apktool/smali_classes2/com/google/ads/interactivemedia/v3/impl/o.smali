.class public final Lcom/google/ads/interactivemedia/v3/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/o$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private c:Lcom/google/ads/interactivemedia/v3/b/b;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/ads/interactivemedia/v3/impl/c/c;

.field private h:Lcom/google/ads/interactivemedia/v3/impl/o$a;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/ac;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    if-eq v0, v1, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->c:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    .line 49
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AdsManagerUi is used for an unsupported UI style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    .line 52
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 53
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->f:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->a:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->c:Lcom/google/ads/interactivemedia/v3/b/b;

    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/o$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/o;B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->h:Lcom/google/ads/interactivemedia/v3/impl/o$a;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/o;)Lcom/google/ads/interactivemedia/v3/impl/aa;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    .line 2264
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->c:Lcom/google/ads/interactivemedia/v3/b/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->g:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    .line 88
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/f;->b()V

    .line 85
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    goto :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->g:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/o;->a()V

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->g:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    .line 1111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    if-ne v0, v1, :cond_2

    .line 1112
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/a/d;->a(Lcom/google/ads/interactivemedia/v3/b/a;)Lcom/google/ads/interactivemedia/v3/impl/a/d;

    move-result-object v0

    .line 1113
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/a/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    .line 1115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$d;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->h:Lcom/google/ads/interactivemedia/v3/impl/o$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/impl/a/e$a;)V

    .line 1117
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->c:Lcom/google/ads/interactivemedia/v3/b/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1118
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/b/a;)V

    .line 1119
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->c:Lcom/google/ads/interactivemedia/v3/b/b;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/a/f;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    .line 1122
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/f;->a()V

    goto :goto_0
.end method
