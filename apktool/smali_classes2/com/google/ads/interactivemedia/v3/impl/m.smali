.class public final Lcom/google/ads/interactivemedia/v3/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/ads/interactivemedia/v3/impl/e;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/c/c;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/v;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/ads/interactivemedia/v3/impl/w;

.field private h:Z

.field private final i:Lcom/google/ads/interactivemedia/v3/impl/z$a;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private l:Lcom/google/ads/interactivemedia/v3/impl/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/b/b;Lcom/google/ads/interactivemedia/v3/b/a/b;Ljava/util/List;Ljava/util/SortedSet;Landroid/content/Context;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa;",
            "Lcom/google/ads/interactivemedia/v3/impl/ac;",
            "Lcom/google/ads/interactivemedia/v3/b/b;",
            "Lcom/google/ads/interactivemedia/v3/b/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/m;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/b/b;Lcom/google/ads/interactivemedia/v3/b/a/b;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/e;Landroid/content/Context;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/b/b;Lcom/google/ads/interactivemedia/v3/b/a/b;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/e;Landroid/content/Context;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa;",
            "Lcom/google/ads/interactivemedia/v3/impl/ac;",
            "Lcom/google/ads/interactivemedia/v3/b/b;",
            "Lcom/google/ads/interactivemedia/v3/b/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/impl/e;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->h:Z

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->j:Ljava/util/List;

    .line 54
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/impl/x;-><init>()V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->k:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 96
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 98
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->i:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 99
    if-eqz p8, :cond_0

    .line 100
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V

    .line 123
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Ljava/util/List;

    .line 127
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/b;

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Lcom/google/ads/interactivemedia/v3/impl/b;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->l:Lcom/google/ads/interactivemedia/v3/impl/b;

    .line 129
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->l:Lcom/google/ads/interactivemedia/v3/impl/b;

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/b;->a(Z)V

    .line 131
    if-eqz p7, :cond_3

    invoke-interface/range {p7 .. p7}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    if-nez p5, :cond_2

    .line 133
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/c$b;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/c$a;->s:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v5, "Unable to handle cue points, no content progress provider configured."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/m$1;->a:[I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->i:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 117
    new-instance v3, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/c$b;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v6, "UI style not supported: "

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$a;->a:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 118
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/z$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v3

    .line 104
    :pswitch_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/google/ads/interactivemedia/v3/impl/f;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ad;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    move-object v7, p4

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ad;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/m;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    .line 140
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a()J

    move-result-wide v4

    invoke-direct {v2, p5, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/b/a/b;J)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    .line 142
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/v;

    move-object/from16 v0, p7

    invoke-direct {v2, p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/v;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->e:Lcom/google/ads/interactivemedia/v3/impl/v;

    .line 143
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->e:Lcom/google/ads/interactivemedia/v3/impl/v;

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/impl/c$b;)V

    .line 144
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a()V

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {p2, v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/e;Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/ads/interactivemedia/v3/impl/m$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/m;B)V

    invoke-virtual {p2, v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->l:Lcom/google/ads/interactivemedia/v3/impl/b;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/b;->a()V

    .line 150
    return-void

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/m;)Lcom/google/ads/interactivemedia/v3/impl/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/m;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 294
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/m;)Lcom/google/ads/interactivemedia/v3/impl/w;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/m;)Lcom/google/ads/interactivemedia/v3/impl/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->l:Lcom/google/ads/interactivemedia/v3/impl/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/m;)Z
    .locals 1

    .prologue
    .line 41
    .line 1319
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/impl/d;

    .line 41
    return v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/m;)V
    .locals 2

    .prologue
    .line 41
    .line 2280
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->c()V

    .line 2282
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/w;->b()V

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->l:Lcom/google/ads/interactivemedia/v3/impl/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/b;->b()V

    .line 2288
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->c(Ljava/lang/String;)V

    .line 2289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    .line 41
    return-void
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/impl/m;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/impl/m;)Lcom/google/ads/interactivemedia/v3/impl/aa;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->Q:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    .line 191
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->k:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V

    .line 246
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->k:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    .line 312
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/e$a;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/b/e$b;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/b/e$b;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/e$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/i;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/i;-><init>(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/b/a;Ljava/util/Map;)V

    .line 304
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/e$a;

    .line 305
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/e$a;->onAdEvent(Lcom/google/ads/interactivemedia/v3/b/e;)V

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/j;)V
    .locals 6

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-string v1, "adsRenderingSettings"

    if-nez p1, :cond_0

    .line 169
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/q;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/impl/q;-><init>()V

    .line 168
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/w;->c()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    if-eq v1, v2, :cond_1

    .line 174
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v1

    float-to-double v2, v1

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x44

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AdsManager.init -> Setting contentStartTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "contentStartTime"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/impl/e;->a()V

    .line 181
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->w:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 182
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    .line 316
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->o:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    .line 223
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/b/a;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    return-object v0
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v0

    return-object v0
.end method
