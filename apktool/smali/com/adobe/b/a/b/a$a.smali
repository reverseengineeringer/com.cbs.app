.class final Lcom/adobe/b/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/adobe/b/a/b;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Event handler callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/a/b/a$a;->a:Lcom/adobe/b/a/b;

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Event handler context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p2, p0, Lcom/adobe/b/a/b/a$a;->b:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/b/a/b/a$a;->a:Lcom/adobe/b/a/b;

    return-object v0
.end method
