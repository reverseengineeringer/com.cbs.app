.class final Lcom/urbanairship/widget/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/actions/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/widget/a;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/a;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/urbanairship/widget/a$1;->a:Lcom/urbanairship/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/e;)V
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/widget/a$1;->a:Lcom/urbanairship/widget/a;

    invoke-static {v0}, Lcom/urbanairship/widget/a;->a(Lcom/urbanairship/widget/a;)Lcom/urbanairship/actions/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/urbanairship/widget/a$1;->a:Lcom/urbanairship/widget/a;

    invoke-static {v0}, Lcom/urbanairship/widget/a;->a(Lcom/urbanairship/widget/a;)Lcom/urbanairship/actions/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/actions/c;->a(Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/e;)V

    .line 280
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
