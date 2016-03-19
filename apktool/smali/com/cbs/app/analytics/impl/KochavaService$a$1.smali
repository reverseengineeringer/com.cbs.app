.class final Lcom/cbs/app/analytics/impl/KochavaService$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/analytics/impl/KochavaService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/analytics/impl/KochavaService$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/analytics/impl/KochavaService$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/analytics/impl/KochavaService$a$1;->b:Lcom/cbs/app/analytics/impl/KochavaService$a;

    iput-object p2, p0, Lcom/cbs/app/analytics/impl/KochavaService$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/analytics/impl/KochavaService$a$1;->b:Lcom/cbs/app/analytics/impl/KochavaService$a;

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/KochavaService$a;->a(Lcom/cbs/app/analytics/impl/KochavaService$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/analytics/impl/KochavaService$a$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 62
    return-void
.end method
