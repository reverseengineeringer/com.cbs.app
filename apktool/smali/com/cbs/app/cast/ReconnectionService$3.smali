.class final Lcom/cbs/app/cast/ReconnectionService$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/ReconnectionService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/ReconnectionService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cbs/app/cast/ReconnectionService$3;->a:Lcom/cbs/app/cast/ReconnectionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/cbs/app/cast/ReconnectionService;->a()Ljava/lang/String;

    const-string v0, "setUpEndTimer(): stopping ReconnectionService since reached the end of allotted time"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService$3;->a:Lcom/cbs/app/cast/ReconnectionService;

    invoke-static {v0}, Lcom/cbs/app/cast/ReconnectionService;->b(Lcom/cbs/app/cast/ReconnectionService;)V

    .line 176
    return-void
.end method
