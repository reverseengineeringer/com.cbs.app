.class public Lcom/adobe/b/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/a/d;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/adobe/b/c/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/adobe/b/c/a/a/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/b/c/a/a/b;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/a/a/b;->b:Z

    return-void
.end method
