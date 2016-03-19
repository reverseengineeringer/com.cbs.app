.class final Lcom/adobe/b/c/a/b/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a$15;->a:Lcom/adobe/b/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Lcom/adobe/b/c/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
