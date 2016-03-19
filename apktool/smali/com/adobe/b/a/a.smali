.class public final Lcom/adobe/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/adobe/b/a/a;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/adobe/b/a/a;->b:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/b/a/a;->b:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/b/a/a;->b:Ljava/lang/Object;

    return-object v0
.end method
