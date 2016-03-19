.class final Lcom/comscore/streaming/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/c;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/c;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/c;

    invoke-static {v0}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/c;)V

    return-void
.end method
