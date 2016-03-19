.class public Lcom/adobe/b/c/a/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/a/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/adobe/b/c/a/b/a/b/a;


# direct methods
.method public constructor <init>(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    const-class v0, Lcom/adobe/b/c/a/b/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/b/c;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/b/c;->a:Lcom/adobe/b/a/c;

    .line 23
    if-nez p1, :cond_1

    .line 24
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the context object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/c;->c:Lcom/adobe/b/c/a/b/a/b/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/adobe/b/c/a/b/a/d/b/b;)Lcom/adobe/b/c/a/b/a/d/b/a;
    .locals 6

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/c;->a:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating report for item: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/c;->c:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/b/a;->f:Lcom/adobe/b/c/a/b/a/d/a/b;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/c;->c:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->g:Lcom/adobe/b/c/a/b/a/d/a/k;

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/c;->c:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/c;->c:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v4, Lcom/adobe/b/c/a/b/a/b/a;->c:Lcom/adobe/b/c/a/b/a/d/a/i;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/b/c/a/b/a/d/b/a;-><init>(Lcom/adobe/b/c/a/b/a/d/a/b;Lcom/adobe/b/c/a/b/a/d/a/k;Lcom/adobe/b/c/a/b/a/d/a/h;Lcom/adobe/b/c/a/b/a/d/a/i;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 38
    return-object v0
.end method
