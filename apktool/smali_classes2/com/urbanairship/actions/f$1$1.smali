.class final Lcom/urbanairship/actions/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/e;

.field final synthetic b:Lcom/urbanairship/actions/f$1;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/f$1;Lcom/urbanairship/actions/e;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/urbanairship/actions/f$1$1;->b:Lcom/urbanairship/actions/f$1;

    iput-object p2, p0, Lcom/urbanairship/actions/f$1$1;->a:Lcom/urbanairship/actions/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/urbanairship/actions/f$1$1;->b:Lcom/urbanairship/actions/f$1;

    iget-object v0, v0, Lcom/urbanairship/actions/f$1;->b:Lcom/urbanairship/actions/c;

    iget-object v1, p0, Lcom/urbanairship/actions/f$1$1;->b:Lcom/urbanairship/actions/f$1;

    iget-object v1, v1, Lcom/urbanairship/actions/f$1;->a:Lcom/urbanairship/actions/b;

    iget-object v2, p0, Lcom/urbanairship/actions/f$1$1;->a:Lcom/urbanairship/actions/e;

    invoke-interface {v0, v1, v2}, Lcom/urbanairship/actions/c;->a(Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/e;)V

    .line 268
    return-void
.end method
