.class final Lcom/comscore/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/s;->c:Lcom/comscore/a/b;

    iput p2, p0, Lcom/comscore/a/s;->a:I

    iput-boolean p3, p0, Lcom/comscore/a/s;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/a/s;->c:Lcom/comscore/a/b;

    iget v1, p0, Lcom/comscore/a/s;->a:I

    iget-boolean v2, p0, Lcom/comscore/a/s;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/comscore/a/b;->b(IZ)V

    return-void
.end method
