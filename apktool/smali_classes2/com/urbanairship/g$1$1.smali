.class final Lcom/urbanairship/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/g$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/g$1;


# direct methods
.method constructor <init>(Lcom/urbanairship/g$1;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/urbanairship/g$1$1;->a:Lcom/urbanairship/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/urbanairship/g$1$1;->a:Lcom/urbanairship/g$1;

    iget-object v0, v0, Lcom/urbanairship/g$1;->a:Lcom/urbanairship/g;

    invoke-static {v0}, Lcom/urbanairship/g;->a(Lcom/urbanairship/g;)V

    .line 122
    return-void
.end method
