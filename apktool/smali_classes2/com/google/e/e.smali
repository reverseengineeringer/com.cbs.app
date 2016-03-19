.class public final Lcom/google/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/e/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/e/h;

.field final b:Lcom/google/e/p;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/e/c/a",
            "<*>;",
            "Lcom/google/e/e$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/e/c/a",
            "<*>;",
            "Lcom/google/e/s",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/e/t;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/e/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 177
    sget-object v1, Lcom/google/e/b/d;->a:Lcom/google/e/b/d;

    sget-object v2, Lcom/google/e/c;->a:Lcom/google/e/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/google/e/r;->a:Lcom/google/e/r;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/e/e;-><init>(Lcom/google/e/b/d;Lcom/google/e/d;Ljava/util/Map;Lcom/google/e/r;Ljava/util/List;)V

    .line 181
    return-void
.end method

.method private constructor <init>(Lcom/google/e/b/d;Lcom/google/e/d;Ljava/util/Map;Lcom/google/e/r;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/b/d;",
            "Lcom/google/e/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/e/f",
            "<*>;>;",
            "Lcom/google/e/r;",
            "Ljava/util/List",
            "<",
            "Lcom/google/e/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/e/e;->c:Ljava/lang/ThreadLocal;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/e;->d:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/google/e/e$1;

    invoke-direct {v0, p0}, Lcom/google/e/e$1;-><init>(Lcom/google/e/e;)V

    iput-object v0, p0, Lcom/google/e/e;->a:Lcom/google/e/h;

    .line 133
    new-instance v0, Lcom/google/e/e$2;

    invoke-direct {v0, p0}, Lcom/google/e/e$2;-><init>(Lcom/google/e/e;)V

    iput-object v0, p0, Lcom/google/e/e;->b:Lcom/google/e/p;

    .line 189
    new-instance v0, Lcom/google/e/b/c;

    invoke-direct {v0, p3}, Lcom/google/e/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    .line 190
    iput-boolean v4, p0, Lcom/google/e/e;->g:Z

    .line 191
    iput-boolean v4, p0, Lcom/google/e/e;->i:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/e/e;->h:Z

    .line 193
    iput-boolean v4, p0, Lcom/google/e/e;->j:Z

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    sget-object v0, Lcom/google/e/b/a/m;->Q:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/google/e/b/a/h;->a:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object v0, Lcom/google/e/b/a/m;->x:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/google/e/b/a/m;->m:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/google/e/b/a/m;->g:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/google/e/b/a/m;->i:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/google/e/b/a/m;->k:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    .line 1307
    sget-object v0, Lcom/google/e/r;->a:Lcom/google/e/r;

    if-ne p4, v0, :cond_0

    .line 1308
    sget-object v0, Lcom/google/e/b/a/m;->n:Lcom/google/e/s;

    .line 213
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/e/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/e/s;)Lcom/google/e/t;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    .line 2254
    new-instance v3, Lcom/google/e/e$3;

    invoke-direct {v3, p0}, Lcom/google/e/e$3;-><init>(Lcom/google/e/e;)V

    .line 215
    invoke-static {v0, v2, v3}, Lcom/google/e/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/e/s;)Lcom/google/e/t;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    .line 2278
    new-instance v3, Lcom/google/e/e$4;

    invoke-direct {v3, p0}, Lcom/google/e/e$4;-><init>(Lcom/google/e/e;)V

    .line 217
    invoke-static {v0, v2, v3}, Lcom/google/e/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/e/s;)Lcom/google/e/t;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/google/e/b/a/m;->r:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/google/e/b/a/m;->t:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/google/e/b/a/m;->z:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/google/e/b/a/m;->B:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/e/b/a/m;->v:Lcom/google/e/s;

    invoke-static {v0, v2}, Lcom/google/e/b/a/m;->a(Ljava/lang/Class;Lcom/google/e/s;)Lcom/google/e/t;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/e/b/a/m;->w:Lcom/google/e/s;

    invoke-static {v0, v2}, Lcom/google/e/b/a/m;->a(Ljava/lang/Class;Lcom/google/e/s;)Lcom/google/e/t;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/google/e/b/a/m;->D:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/google/e/b/a/m;->F:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/google/e/b/a/m;->J:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/google/e/b/a/m;->O:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/google/e/b/a/m;->H:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/google/e/b/a/m;->d:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/google/e/b/a/c;->a:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/google/e/b/a/m;->M:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/google/e/b/a/k;->a:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/google/e/b/a/j;->a:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/google/e/b/a/m;->K:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/google/e/b/a/a;->a:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/google/e/b/a/m;->b:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/google/e/b/a/b;

    iget-object v2, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    invoke-direct {v0, v2}, Lcom/google/e/b/a/b;-><init>(Lcom/google/e/b/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/google/e/b/a/g;

    iget-object v2, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    invoke-direct {v0, v2, v4}, Lcom/google/e/b/a/g;-><init>(Lcom/google/e/b/c;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/google/e/b/a/d;

    iget-object v2, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    invoke-direct {v0, v2}, Lcom/google/e/b/a/d;-><init>(Lcom/google/e/b/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/google/e/b/a/m;->R:Lcom/google/e/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/google/e/b/a/i;

    iget-object v2, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/e/b/a/i;-><init>(Lcom/google/e/b/c;Lcom/google/e/d;Lcom/google/e/b/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/e;->e:Ljava/util/List;

    .line 248
    return-void

    .line 1310
    :cond_0
    new-instance v0, Lcom/google/e/e$5;

    invoke-direct {v0, p0}, Lcom/google/e/e$5;-><init>(Lcom/google/e/e;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/google/e/d/c;
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/e/e;->i:Z

    if-eqz v0, :cond_0

    .line 650
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    :cond_0
    new-instance v0, Lcom/google/e/d/c;

    invoke-direct {v0, p1}, Lcom/google/e/d/c;-><init>(Ljava/io/Writer;)V

    .line 653
    iget-boolean v1, p0, Lcom/google/e/e;->j:Z

    if-eqz v1, :cond_1

    .line 654
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/e/d/c;->c(Ljava/lang/String;)V

    .line 656
    :cond_1
    iget-boolean v1, p0, Lcom/google/e/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/e/d/c;->d(Z)V

    .line 657
    return-object v0
.end method

.method private a(Lcom/google/e/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 806
    .line 807
    invoke-virtual {p1}, Lcom/google/e/d/a;->p()Z

    move-result v2

    .line 808
    invoke-virtual {p1, v1}, Lcom/google/e/d/a;->a(Z)V

    .line 810
    :try_start_0
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    .line 811
    const/4 v1, 0x0

    .line 812
    invoke-static {p2}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    .line 813
    invoke-virtual {p0, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    .line 814
    invoke-virtual {v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 831
    invoke-virtual {p1, v2}, Lcom/google/e/d/a;->a(Z)V

    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v0

    .line 821
    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {p1, v2}, Lcom/google/e/d/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/e/d/a;->a(Z)V

    throw v0

    .line 825
    :catch_1
    move-exception v0

    .line 826
    :try_start_2
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 827
    :catch_2
    move-exception v0

    .line 829
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(D)V
    .locals 4

    .prologue
    .line 100
    .line 3299
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/c/a",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/e/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/s;

    .line 337
    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/google/e/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 342
    const/4 v1, 0x0

    .line 343
    if-nez v0, :cond_5

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    iget-object v0, p0, Lcom/google/e/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 350
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/e$a;

    .line 351
    if-nez v0, :cond_0

    .line 356
    :try_start_0
    new-instance v3, Lcom/google/e/e$a;

    invoke-direct {v3}, Lcom/google/e/e$a;-><init>()V

    .line 357
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/google/e/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/t;

    .line 360
    invoke-interface {v0, p0, p1}, Lcom/google/e/t;->a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v3, v0}, Lcom/google/e/e$a;->a(Lcom/google/e/s;)V

    .line 363
    iget-object v3, p0, Lcom/google/e/e;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/google/e/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_4

    .line 372
    iget-object v1, p0, Lcom/google/e/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/e/t;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/t;",
            "Lcom/google/e/c/a",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 428
    const/4 v0, 0x0

    .line 432
    iget-object v2, p0, Lcom/google/e/e;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/google/e/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/t;

    .line 435
    if-nez v2, :cond_2

    .line 436
    if-ne v0, p1, :cond_1

    move v2, v1

    .line 437
    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/e/t;->a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_1

    .line 444
    return-object v0

    .line 447
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/e/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1}, Lcom/google/e/c/a;->a(Ljava/lang/Class;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lcom/google/e/d/a;

    invoke-direct {v0, p1}, Lcom/google/e/d/a;-><init>(Ljava/io/Reader;)V

    .line 779
    invoke-direct {p0, v0, p2}, Lcom/google/e/e;->a(Lcom/google/e/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 2786
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v2, Lcom/google/e/d/b;->j:Lcom/google/e/d/b;

    if-eq v0, v2, :cond_0

    .line 2787
    new-instance v0, Lcom/google/e/j;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/e/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/e/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2789
    :catch_0
    move-exception v0

    .line 2790
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2791
    :catch_1
    move-exception v0

    .line 2792
    new-instance v1, Lcom/google/e/j;

    invoke-direct {v1, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 781
    :cond_0
    return-object v1
.end method

.method public final a(Lcom/google/e/i;Ljava/lang/Appendable;)V
    .locals 6

    .prologue
    .line 638
    :try_start_0
    invoke-static {p2}, Lcom/google/e/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/e/e;->a(Ljava/io/Writer;)Lcom/google/e/d/c;

    move-result-object v1

    .line 2665
    invoke-virtual {v1}, Lcom/google/e/d/c;->g()Z

    move-result v2

    .line 2666
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/e/d/c;->b(Z)V

    .line 2667
    invoke-virtual {v1}, Lcom/google/e/d/c;->h()Z

    move-result v3

    .line 2668
    iget-boolean v0, p0, Lcom/google/e/e;->h:Z

    invoke-virtual {v1, v0}, Lcom/google/e/d/c;->c(Z)V

    .line 2669
    invoke-virtual {v1}, Lcom/google/e/d/c;->i()Z

    move-result v4

    .line 2670
    iget-boolean v0, p0, Lcom/google/e/e;->g:Z

    invoke-virtual {v1, v0}, Lcom/google/e/d/c;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2672
    :try_start_1
    invoke-static {p1, v1}, Lcom/google/e/b/j;->a(Lcom/google/e/i;Lcom/google/e/d/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2676
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/e/d/c;->b(Z)V

    .line 2677
    invoke-virtual {v1, v3}, Lcom/google/e/d/c;->c(Z)V

    .line 2678
    invoke-virtual {v1, v4}, Lcom/google/e/d/c;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2679
    return-void

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    :try_start_3
    new-instance v5, Lcom/google/e/j;

    invoke-direct {v5, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2676
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/google/e/d/c;->b(Z)V

    .line 2677
    invoke-virtual {v1, v3}, Lcom/google/e/d/c;->c(Z)V

    .line 2678
    invoke-virtual {v1, v4}, Lcom/google/e/d/c;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 640
    :catch_1
    move-exception v0

    .line 641
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 6

    .prologue
    .line 583
    :try_start_0
    invoke-static {p3}, Lcom/google/e/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/e/e;->a(Ljava/io/Writer;)Lcom/google/e/d/c;

    move-result-object v1

    .line 2597
    invoke-static {p2}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    .line 2598
    invoke-virtual {v1}, Lcom/google/e/d/c;->g()Z

    move-result v2

    .line 2599
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/e/d/c;->b(Z)V

    .line 2600
    invoke-virtual {v1}, Lcom/google/e/d/c;->h()Z

    move-result v3

    .line 2601
    iget-boolean v4, p0, Lcom/google/e/e;->h:Z

    invoke-virtual {v1, v4}, Lcom/google/e/d/c;->c(Z)V

    .line 2602
    invoke-virtual {v1}, Lcom/google/e/d/c;->i()Z

    move-result v4

    .line 2603
    iget-boolean v5, p0, Lcom/google/e/e;->g:Z

    invoke-virtual {v1, v5}, Lcom/google/e/d/c;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2605
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2609
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/e/d/c;->b(Z)V

    .line 2610
    invoke-virtual {v1, v3}, Lcom/google/e/d/c;->c(Z)V

    .line 2611
    invoke-virtual {v1, v4}, Lcom/google/e/d/c;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2612
    return-void

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    :try_start_3
    new-instance v5, Lcom/google/e/j;

    invoke-direct {v5, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2609
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/google/e/d/c;->b(Z)V

    .line 2610
    invoke-virtual {v1, v3}, Lcom/google/e/d/c;->c(Z)V

    .line 2611
    invoke-virtual {v1, v4}, Lcom/google/e/d/c;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    :catch_1
    move-exception v0

    .line 586
    new-instance v1, Lcom/google/e/j;

    invoke-direct {v1, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/e/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/e/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/e/e;->f:Lcom/google/e/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
