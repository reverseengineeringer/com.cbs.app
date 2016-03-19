.class final Lcom/adobe/b/c/a/c/f$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adobe/b/c/a/c/f;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/adobe/b/c/a/c/f$13;->b:Lcom/adobe/b/c/a/c/f;

    iput-object p2, p0, Lcom/adobe/b/c/a/c/f$13;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 617
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f$13;->b:Lcom/adobe/b/c/a/c/f;

    invoke-static {v0}, Lcom/adobe/b/c/a/c/f;->J(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f$13;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/c/b;

    .line 618
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adobe/b/c/a/c/b;->c:Ljava/lang/Double;

    .line 619
    :goto_0
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f$13;->b:Lcom/adobe/b/c/a/c/f;

    invoke-static {v1}, Lcom/adobe/b/c/a/c/f;->R(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f$13;->b:Lcom/adobe/b/c/a/c/f;

    invoke-static {v2}, Lcom/adobe/b/c/a/c/f;->Q(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resolving ad.length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 620
    return-object v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
