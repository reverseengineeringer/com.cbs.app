.class final Lcom/comscore/utils/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/c/b;

.field final synthetic b:Lcom/comscore/utils/i;


# direct methods
.method constructor <init>(Lcom/comscore/utils/i;Lcom/comscore/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/i;

    iput-object p2, p0, Lcom/comscore/utils/r;->a:Lcom/comscore/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/i;

    iget-object v1, p0, Lcom/comscore/utils/r;->a:Lcom/comscore/c/b;

    iget-object v2, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/i;

    iget-object v2, v2, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->R()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comscore/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/utils/i;->a(Ljava/lang/String;)V

    return-void
.end method
