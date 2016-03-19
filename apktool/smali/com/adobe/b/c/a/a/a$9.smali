.class final Lcom/adobe/b/c/a/a/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/a/a;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$9;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lcom/adobe/mobile/j;->a()Ljava/lang/String;

    .line 1039
    invoke-static {}, Lcom/adobe/mobile/b;->a()Ljava/lang/String;

    .line 1043
    invoke-static {}, Lcom/adobe/mobile/an;->a()Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$9;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->t(Lcom/adobe/b/c/a/a/a;)V

    .line 625
    const/4 v0, 0x0

    return-object v0
.end method
