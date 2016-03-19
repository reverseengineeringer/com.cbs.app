.class final Lcom/urbanairship/actions/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/o;->c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/urbanairship/actions/o;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/o;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/urbanairship/actions/o$2;->c:Lcom/urbanairship/actions/o;

    iput-object p2, p0, Lcom/urbanairship/actions/o$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/urbanairship/actions/o$2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/urbanairship/actions/o$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/urbanairship/actions/o$2;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
