.class final Lcom/adobe/b/c/a/b/a/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/a/a;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/a$3;->a:Lcom/adobe/b/c/a/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$3;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/a;->c:Ljava/lang/Double;

    return-object v0
.end method
