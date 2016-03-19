.class public final Lcom/adobe/b/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/a/c;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/a/b/d;->a:Lcom/adobe/b/a/c;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/b/d;->b:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/adobe/b/a/b/a;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/b/a/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/adobe/b/a/b/d;->b:Ljava/util/Map;

    new-instance v1, Lcom/adobe/b/a/b/a;

    iget-object v2, p0, Lcom/adobe/b/a/b/d;->a:Lcom/adobe/b/a/c;

    invoke-direct {v1, p1, v2}, Lcom/adobe/b/a/b/a;-><init>(Ljava/lang/String;Lcom/adobe/b/a/c;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b/a;

    return-object v0
.end method
