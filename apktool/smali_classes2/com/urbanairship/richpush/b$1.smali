.class final Lcom/urbanairship/richpush/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/b;->a(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/urbanairship/richpush/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/b;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/urbanairship/richpush/b$1;->b:Lcom/urbanairship/richpush/b;

    iput-object p2, p0, Lcom/urbanairship/richpush/b$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/urbanairship/richpush/b$1;->b:Lcom/urbanairship/richpush/b;

    invoke-static {v0}, Lcom/urbanairship/richpush/b;->a(Lcom/urbanairship/richpush/b;)Lcom/urbanairship/richpush/d;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/b$1;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/d;->a(Ljava/util/Set;)I

    .line 244
    return-void
.end method
