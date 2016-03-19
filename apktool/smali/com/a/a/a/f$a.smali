.class final Lcom/a/a/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/f;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/a/a/a/f;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/a/a/a/f$a;->a:Lcom/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/a/a/a/f$a;->b:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/a/a/a/f$a;->c:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/a/a/a/f$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/a/a/a/f$a;->c:Z

    return v0
.end method
