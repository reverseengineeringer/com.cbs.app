.class public Lcom/adobe/b/c/a/b/a/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/c/a/b/a/d/a/e$a;,
        Lcom/adobe/b/c/a/b/a/d/a/e$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/c/a/b/a/d/a/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->b:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/adobe/b/c/a/b/a/d/a/e$a;

    invoke-direct {v2, p2, p3}, Lcom/adobe/b/c/a/b/a/d/a/e$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/c/a/b/a/d/a/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/e;->b:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
