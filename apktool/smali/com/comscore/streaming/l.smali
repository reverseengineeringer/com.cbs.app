.class final Lcom/comscore/streaming/l;
.super Lcom/comscore/streaming/n;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/g;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/streaming/c;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/c;Lcom/comscore/streaming/g;Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lcom/comscore/streaming/l;->c:Lcom/comscore/streaming/c;

    iput-object p2, p0, Lcom/comscore/streaming/l;->a:Lcom/comscore/streaming/g;

    iput-object p3, p0, Lcom/comscore/streaming/l;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/comscore/streaming/n;-><init>(Lcom/comscore/streaming/c;B)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/streaming/l;->c:Lcom/comscore/streaming/c;

    const-string v1, "Performing delayed transition"

    invoke-static {v0, v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/l;->c:Lcom/comscore/streaming/c;

    iget-object v1, p0, Lcom/comscore/streaming/l;->a:Lcom/comscore/streaming/g;

    iget-object v2, p0, Lcom/comscore/streaming/l;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/c;Lcom/comscore/streaming/g;Ljava/util/HashMap;)V

    return-void
.end method
