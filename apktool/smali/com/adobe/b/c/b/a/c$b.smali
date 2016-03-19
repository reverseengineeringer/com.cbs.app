.class final Lcom/adobe/b/c/b/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b/a/c;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:I


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b/a/c;Ljava/lang/String;DI)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Lcom/adobe/b/c/b/a/c$b;->a:Lcom/adobe/b/c/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/adobe/b/c/b/a/c$b;->b:Ljava/lang/String;

    .line 219
    iput-wide p3, p0, Lcom/adobe/b/c/b/a/c$b;->c:D

    .line 220
    iput p5, p0, Lcom/adobe/b/c/b/a/c$b;->d:I

    .line 221
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b()D
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/adobe/b/c/b/a/c$b;->c:D

    return-wide v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/adobe/b/c/b/a/c$b;->d:I

    return v0
.end method
