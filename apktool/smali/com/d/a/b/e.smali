.class public final Lcom/d/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/d/a/b/e$1;,
        Lcom/d/a/b/e$c;,
        Lcom/d/a/b/e$b;,
        Lcom/d/a/b/e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lcom/d/a/b/g/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lcom/d/a/b/a/g;

.field final n:Lcom/d/a/a/b/a;

.field final o:Lcom/d/a/a/a/b;

.field final p:Lcom/d/a/b/d/b;

.field final q:Lcom/d/a/b/b/b;

.field final r:Lcom/d/a/b/c;

.field final s:Lcom/d/a/b/d/b;

.field final t:Lcom/d/a/b/d/b;


# direct methods
.method private constructor <init>(Lcom/d/a/b/e$a;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/d/a/b/e$a;->a(Lcom/d/a/b/e$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->a:Landroid/content/res/Resources;

    .line 80
    invoke-static {p1}, Lcom/d/a/b/e$a;->b(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->b:I

    .line 81
    invoke-static {p1}, Lcom/d/a/b/e$a;->c(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->c:I

    .line 82
    invoke-static {p1}, Lcom/d/a/b/e$a;->d(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->d:I

    .line 83
    invoke-static {p1}, Lcom/d/a/b/e$a;->e(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->e:I

    .line 84
    invoke-static {p1}, Lcom/d/a/b/e$a;->f(Lcom/d/a/b/e$a;)Lcom/d/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->f:Lcom/d/a/b/g/a;

    .line 85
    invoke-static {p1}, Lcom/d/a/b/e$a;->g(Lcom/d/a/b/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->g:Ljava/util/concurrent/Executor;

    .line 86
    invoke-static {p1}, Lcom/d/a/b/e$a;->h(Lcom/d/a/b/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->h:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {p1}, Lcom/d/a/b/e$a;->i(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->k:I

    .line 88
    invoke-static {p1}, Lcom/d/a/b/e$a;->j(Lcom/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/e;->l:I

    .line 89
    invoke-static {p1}, Lcom/d/a/b/e$a;->k(Lcom/d/a/b/e$a;)Lcom/d/a/b/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->m:Lcom/d/a/b/a/g;

    .line 90
    invoke-static {p1}, Lcom/d/a/b/e$a;->l(Lcom/d/a/b/e$a;)Lcom/d/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->o:Lcom/d/a/a/a/b;

    .line 91
    invoke-static {p1}, Lcom/d/a/b/e$a;->m(Lcom/d/a/b/e$a;)Lcom/d/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->n:Lcom/d/a/a/b/a;

    .line 92
    invoke-static {p1}, Lcom/d/a/b/e$a;->n(Lcom/d/a/b/e$a;)Lcom/d/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->r:Lcom/d/a/b/c;

    .line 93
    invoke-static {p1}, Lcom/d/a/b/e$a;->o(Lcom/d/a/b/e$a;)Lcom/d/a/b/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->p:Lcom/d/a/b/d/b;

    .line 94
    invoke-static {p1}, Lcom/d/a/b/e$a;->p(Lcom/d/a/b/e$a;)Lcom/d/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e;->q:Lcom/d/a/b/b/b;

    .line 96
    invoke-static {p1}, Lcom/d/a/b/e$a;->q(Lcom/d/a/b/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/b/e;->i:Z

    .line 97
    invoke-static {p1}, Lcom/d/a/b/e$a;->r(Lcom/d/a/b/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/b/e;->j:Z

    .line 99
    new-instance v0, Lcom/d/a/b/e$b;

    iget-object v1, p0, Lcom/d/a/b/e;->p:Lcom/d/a/b/d/b;

    invoke-direct {v0, v1}, Lcom/d/a/b/e$b;-><init>(Lcom/d/a/b/d/b;)V

    iput-object v0, p0, Lcom/d/a/b/e;->s:Lcom/d/a/b/d/b;

    .line 100
    new-instance v0, Lcom/d/a/b/e$c;

    iget-object v1, p0, Lcom/d/a/b/e;->p:Lcom/d/a/b/d/b;

    invoke-direct {v0, v1}, Lcom/d/a/b/e$c;-><init>(Lcom/d/a/b/d/b;)V

    iput-object v0, p0, Lcom/d/a/b/e;->t:Lcom/d/a/b/d/b;

    .line 102
    invoke-static {p1}, Lcom/d/a/b/e$a;->s(Lcom/d/a/b/e$a;)Z

    move-result v0

    invoke-static {v0}, Lcom/d/a/c/c;->a(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/d/a/b/e$a;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/d/a/b/e;-><init>(Lcom/d/a/b/e$a;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/d/a/b/a/e;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 133
    iget v0, p0, Lcom/d/a/b/e;->b:I

    .line 134
    if-gtz v0, :cond_0

    .line 135
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lcom/d/a/b/e;->c:I

    .line 138
    if-gtz v1, :cond_1

    .line 139
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v2, Lcom/d/a/b/a/e;

    invoke-direct {v2, v0, v1}, Lcom/d/a/b/a/e;-><init>(II)V

    return-object v2
.end method
