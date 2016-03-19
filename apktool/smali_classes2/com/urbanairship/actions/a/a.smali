.class public final Lcom/urbanairship/actions/a/a;
.super Lcom/urbanairship/actions/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/urbanairship/actions/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 63
    invoke-static {p1}, Lcom/urbanairship/actions/a/a;->d(Lcom/urbanairship/actions/b;)Ljava/util/Set;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AddTagsAction - Adding tags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/urbanairship/push/j;->l()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2050
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/urbanairship/push/j;->a(Ljava/util/Set;)V

    .line 69
    invoke-static {}, Lcom/urbanairship/actions/e;->a()Lcom/urbanairship/actions/e;

    move-result-object v0

    return-object v0
.end method
