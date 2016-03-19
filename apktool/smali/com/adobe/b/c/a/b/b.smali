.class public final Lcom/adobe/b/c/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/a/d;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/b;->a:Z

    .line 75
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adobe/b/c/a/b/b;->b:Ljava/lang/String;

    .line 81
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adobe/b/c/a/b/b;->c:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/b;->d:Z

    .line 97
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/b;->f:Z

    .line 103
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/b;->g:Z

    .line 33
    iput-object p1, p0, Lcom/adobe/b/c/a/b/b;->h:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/adobe/b/c/a/b/b;->i:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/b/c/a/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/b/c/a/b/b;->i:Ljava/lang/String;

    return-object v0
.end method
