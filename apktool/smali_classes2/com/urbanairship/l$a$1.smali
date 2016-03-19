.class final Lcom/urbanairship/l$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/urbanairship/l$a;


# direct methods
.method constructor <init>(Lcom/urbanairship/l$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/urbanairship/l$a$1;->b:Lcom/urbanairship/l$a;

    iput-object p2, p0, Lcom/urbanairship/l$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/urbanairship/l$a$1;->b:Lcom/urbanairship/l$a;

    iget-object v1, p0, Lcom/urbanairship/l$a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/l$a;->a(Lcom/urbanairship/l$a;Ljava/lang/String;)Z

    .line 388
    return-void
.end method
